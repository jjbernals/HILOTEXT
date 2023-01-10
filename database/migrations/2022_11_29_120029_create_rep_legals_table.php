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
        Schema::create('rep_legals', function (Blueprint $table) {
            $table->string('documento',20)->primary();
            $table->string('nombre');
            $table->string('celular');
            $table->string('correo');
            $table->string('idEmpresa');

            $table->timestamps();

            $table->foreign('idEmpresa')->references('documento')->on('empresas')->onDelete("cascade");
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('rep_legals');
    }
};
