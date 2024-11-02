<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('perencanaans', function (Blueprint $table) {
            $table->id();
            $table->string('no_spk');
            $table->string('nama_pekerjaan');
            $table->date('tgl_spk_sp');
            $table->date('tgl_mulai');
            $table->date('tgl_selesai');
            $table->int('hari_tersisa')->nullable();
            $table->string('termin')->nullable();
            $table->string('doc_perencanaan')->nullable();
            $table->timestamps();
            $table->softDeletes();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('perencanaans');
    }
};
