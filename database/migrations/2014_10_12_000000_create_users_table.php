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
        Schema::create('users', function (Blueprint $table) {
            $table->comment('ユーザー');
            $table->id()->comment('ユーザーID');
            $table->string('name')->comment('ニックネーム');
            $table->string('email')->unique()->comment('ユーザー名');
            $table->timestamp('email_verified_at')->nullable()->comment('ユーザーID検証');
            $table->string('password')->comment('パスワード');
            $table->rememberToken()->comment('ログイン保持');
            $table->timestamp('created_at')->comment('作成日時');
            $table->timestamp('updated_at')->comment('更新日時');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('users');
    }
};
