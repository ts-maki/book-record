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
        Schema::create('book_records', function (Blueprint $table) {
            $table->comment('感想');
            $table->id()->comment('感想ID');
            $table->foreignId('book_id')->comment('本ID')->constrained();
            $table->foreignId('user_id')->comment('ユーザーID')->constrained();
            $table->foreignId('category_id')->comment('カテゴリーID')->constrained('categories');
            $table->string('content')->comment('感想');
            $table->date('read_date')->comment('読んだ日');
            $table->timestamp('created_at')->comment('作成日時');
            $table->timestamp('updated_at')->comment('更新日時');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('book_records');
    }
};
