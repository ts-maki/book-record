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
            $table->id();
            $table->string('title', 150)->comment('本のタイトル');
            $table->string('author', 30)->comment('著者');
            $table->string('thumbnail_path')->nullable()->comment('表紙画像のurl');
            $table->char('isbn', 13)->unique()->comment('本のISBN番号');
            $table->date('published_date')->comment('出版日');
            $table->timestamps();
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
