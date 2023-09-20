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
        Schema::create('books', function (Blueprint $table) {
            $table->comment('本');
            $table->id()->comment('本ID');
            $table->string('title', 150)->comment('タイトル');
            $table->string('author', 30)->comment('著者');
            $table->text('description')->nullable()->comment('あらすじ');
            $table->string('thumbnail_path')->nullable()->comment('表紙画像URL');
            $table->char('isbn', 13)->unique()->comment('ISBN番号');
            $table->date('published_date')->comment('出版日');
            $table->timestamp('created_at')->comment('作成日時');
            $table->timestamp('updated_at')->comment('更新日時');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('books');
    }
};
