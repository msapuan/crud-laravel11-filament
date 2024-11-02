<?php

namespace App\Filament\Resources;

use App\Filament\Resources\PerizinanResource\Pages;
use App\Filament\Resources\PerizinanResource\RelationManagers;
use App\Models\Perizinan;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use Filament\Forms\Components\Textarea;

use Barryvdh\DomPDF\Facade\Pdf;
use Illuminate\Support\Collection;
use Illuminate\Support\Facades\Blade;

use Filament\Forms\Components\FileUpload;

use Illuminate\Support\Facades\Storage;

class PerizinanResource extends Resource
{
    protected static ?string $model = Perizinan::class;

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
                Forms\Components\DatePicker::make('tgl_berita_acara')
                    ->required(),
                Forms\Components\TextInput::make('progress_berita_acara')
                    ->required()
                    ->maxLength(255),
                Forms\Components\TextInput::make('posisi_berita_acara')
                    ->required()
                    ->maxLength(255),
                Forms\Components\DatePicker::make('tgl_update')
                    ->required(),
                Forms\Components\Textarea::make('keterangan'),
                Forms\Components\FileUpload::make('doc_perizinan')
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
                Tables\Columns\TextColumn::make('tgl_berita_acara')
                    ->date()
                    ->sortable(),
                Tables\Columns\TextColumn::make('progress_berita_acara')
                    ->searchable(),
                Tables\Columns\TextColumn::make('posisi_berita_acara')
                    ->searchable(),
                Tables\Columns\TextColumn::make('tgl_update')
                    ->date()
                    ->sortable(),
                Tables\Columns\TextColumn::make('keterangan')
                    ->searchable(),
                // Tambah kolom untuk informasi dokumen
                Tables\Columns\TextColumn::make('doc_perizinan')
                    ->label('Document')
                    ->formatStateUsing(fn ($state) => basename($state)) // Menampilkan nama file tanpa path
                    ->url(fn (Perizinan $record): string => Storage::url($record->doc_perizinan))
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
                                    Blade::render('perizinan', ['records' => $records])
                                )->stream();
                            }, 'perizinan.pdf');
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
            'index' => Pages\ListPerizinans::route('/'),
            'create' => Pages\CreatePerizinan::route('/create'),
            'edit' => Pages\EditPerizinan::route('/{record}/edit'),
        ];
    }
}
