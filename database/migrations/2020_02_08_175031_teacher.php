<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class Teacher extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('teacher', function (Blueprint $table) {
            
            $table->timestamps();
			$table->bigIncrements('id');
			$table->string('name', 255)->nullable();
			$table->integer('teacher_id', 11)->nullable();
			$table->string('email', 255)->nullable();
			$table->string('phone', 11)->nullable();
			$table->string('user_name', 255)->nullable();
			$table->string('password', 255)->nullable();
			$table->string('present_address', 255)->nullable();
			$table->string('permanent_address', 255)->nullable();
			$table->string('photo', 255)->nullable();
			
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('teacher');
    }
}
