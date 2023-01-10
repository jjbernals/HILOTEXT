<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('empresas', function (Blueprint $table) {
            $table->string('documento',20)->primary();
            $table->string('nombre');
            $table->string('direccion');
            $table->string('celular');
            $table->string('correo');   
            $table->bigInteger('idServicio')->unsigned();
            $table->string('contraseña');
            $table->string('descripcion');
            $table->string('foto');
    
            $table->timestamps();

            $table->foreign('idServicio')->references('id')->on('servicio_emps')->onDelete("cascade");
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('empresa');
    }
};
