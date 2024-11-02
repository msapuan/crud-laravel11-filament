<?php

namespace App\Filament\Resources;

use App\Filament\Resources\PembangunanResource\Pages;
use App\Filament\Resources\PembangunanResource\RelationManagers;
use App\Models\Pembangunan;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

use Barryvdh\DomPDF\Facade\Pdf;
use Illuminate\Support\Collection;
use Illuminate\Support\Facades\Blade;

use Carbon\Carbon;
use Illuminate\Validation\Rules\Unique;

use Filament\Forms\Components\FileUpload;

use Illuminate\Support\Facades\Storage;

class PembangunanResource extends Resource
{
    protected static ?string $model = Pembangunan::class;

    protected static ?string $navigationIcon = 'heroicon-o-rectangle-stack';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\TextInput::make('no_spk')
                    ->required()
                    ->maxLength(255),
                Forms\Components\TextInput::make('nama_pekerjaan')
                    ->required()
                    ->maxLength(255),
                Forms\Components\TextInput::make('nilai_pekerjaan')
                    ->required()
                    ->maxLength(255),
                
                Forms\Components\DatePicker::make('tgl_mulai')
                    ->required()
                    ->rules(['required', 'date'])
                    ->default(now())
                    ->afterStateUpdated(function ($state, callable $set, $get) {
                        if ($state && $get('tgl_selesai')) {
                            $tglMulai = Carbon::parse($state);
                            $tglSelesai = Carbon::parse($get('tgl_selesai'));
                            
                            $hariTersisa = static::hitungHariKerja($tglMulai, $tglSelesai);
                            $set('hari_tersisa', $hariTersisa);
                        }
                    }),

                Forms\Components\DatePicker::make('tgl_selesai')
                    ->required()
                    ->rules(['required', 'date', 'after_or_equal:tgl_mulai'])
                    ->default(now())
                    ->afterStateUpdated(function ($state, callable $set, $get) {
                        if ($state && $get('tgl_mulai')) {
                            $tglMulai = Carbon::parse($get('tgl_mulai'));
                            $tglSelesai = Carbon::parse($state);
                            
                            $hariTersisa = static::hitungHariKerja($tglMulai, $tglSelesai);
                            $set('hari_tersisa', $hariTersisa);
                        }
                    }),

                Forms\Components\TextInput::make('hari_tersisa')
                    ->required()
                    ->disabled()
                    ->numeric()
                    ->suffix('hari')
                    ->dehydrated(true)
                    ->helperText('Jumlah hari akan dihitung otomatis berdasarkan tanggal mulai dan selesai'),

                Forms\Components\Select::make('progress_pekerjaan')
                    ->options([
                        '10%' => '10%',
                        '25%' => '25%',
                        '50%' => '50%',
                        '75%' => '75%',
                        '85%' => '85%',
                        '100%' => '100%',
                    ])
                    ->required(),
                Forms\Components\FileUpload::make('doc_pembangunan')
                    ->label('Document')
                    ->acceptedFileTypes(['application/pdf'])
                    ->visibility('public')
                    ->uploadingMessage('Dokumen anda sedang diupload...')
                    ->preserveFilenames()
                    ->openable()
                    ->disk('public'),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('no_spk')
                    ->searchable(),
                Tables\Columns\TextColumn::make('nama_pekerjaan')
                    ->searchable(),
                Tables\Columns\TextColumn::make('nilai_pekerjaan')
                    ->searchable(),
                Tables\Columns\TextColumn::make('tgl_mulai')
                    ->date()
                    ->sortable(),
                Tables\Columns\TextColumn::make('tgl_selesai')
                    ->date()
                    ->sortable(),
                Tables\Columns\TextColumn::make('hari_tersisa')
                    ->searchable(),
                Tables\Columns\TextColumn::make('progress_pekerjaan')
                    ->searchable(),
                // Tambah kolom untuk informasi dokumen
                Tables\Columns\TextColumn::make('doc_pembangunan')
                    ->label('Document')
                    ->formatStateUsing(fn ($state) => basename($state)) // Menampilkan nama file tanpa path
                    ->url(fn (Pembangunan $record): string => Storage::url($record->doc_pembangunan))
                    ->openUrlInNewTab(),
                Tables\Columns\TextColumn::make('created_at')
                    ->dateTime()
                    ->sortable()
                    ->toggleable(isToggledHiddenByDefault: true),
                Tables\Columns\TextColumn::make('updated_at')
                    ->dateTime()
                    ->sortable()
                    ->toggleable(isToggledHiddenByDefault: true),
                Tables\Columns\TextColumn::make('deleted_at')
                    ->dateTime()
                    ->sortable()
                    ->toggleable(isToggledHiddenByDefault: true),
            ])
            ->filters([
                //
            ])
            ->actions([
                Tables\Actions\EditAction::make(),
            ])
            ->bulkActions([
                Tables\Actions\BulkActionGroup::make([
                    Tables\Actions\DeleteBulkAction::make(),
                    Tables\Actions\BulkAction::make('Export')
                        ->icon('heroicon-m-arrow-down-tray')
                        ->openUrlInNewTab()
                        ->deselectRecordsAfterCompletion()
                        ->action(function (Collection $records) {
                            return response()->streamDownload(function () use ($records) {
                                echo Pdf::loadHTML(
                                    Blade::render('pembangunan', ['records' => $records])
                                )->stream();
                            }, 'pembangunan.pdf');
                        }),
                ]),
            ]);
    }

    public static function getRelations(): array
    {
        return [
            //
        ];
    }

    public static function getPages(): array
    {
        return [
            'index' => Pages\ListPembangunans::route('/'),
            'create' => Pages\CreatePembangunan::route('/create'),
            'edit' => Pages\EditPembangunan::route('/{record}/edit'),
        ];
    }

    public static function hitungHariKerja($startDate, $endDate) {
        $startDate = Carbon::parse($startDate);
        $endDate = Carbon::parse($endDate);
    
        // Pastikan tanggal mulai lebih kecil atau sama dengan tanggal selesai
        if ($startDate->greaterThan($endDate)) {
            return 0; // Mengembalikan 0 jika tanggal mulai lebih besar dari tanggal selesai
        }
    
        // Hitung total hari termasuk tanggal mulai dan tanggal akhir
        $totalDays = $endDate->diffInDays($startDate) + 1;
    
        return $totalDays;
    }
}
