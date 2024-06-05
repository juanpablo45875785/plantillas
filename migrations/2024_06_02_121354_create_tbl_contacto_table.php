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
        Schema::create('tbl_contacto', function (Blueprint $table) {
            $table->id();
            $table->string('nombre_cont');
            $table->string('apellido_cont');
            $table->string('carrera1_cont');
            $table->string('carrera2_cont')->nullable();
            $table->string('telefono1_cont');
            $table->string('telefono2_cont')->nullable();
            $table->string('propietario_cont');
            $table->string('origen_cont');
            $table->string('descripcion_cont')->nullable();
            $table->boolean('estado_cont')->default(1);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('tbl_contacto');
    }
};
