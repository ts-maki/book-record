<?php

namespace App\Repositories\BookRecord;

use App\Models\Book;
use App\Models\BookRecord;
use App\Models\Category;

class BookRecordRepository
{
    public function addRecord($book_id, $user_id, $category_id, $content, $read_date)
    {
        $book_id = Book::where('google_book_id', $book_id)->value('id');
        $category_id = Category::where('name', $category_id)->value('id');
        $record = BookRecord::create([
            'book_id' => $book_id,
            'user_id' => $user_id,
            'category_id' => $category_id,
            'content' => $content,
            'read_date' => $read_date,
        ]);
    }
}
