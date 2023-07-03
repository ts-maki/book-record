<?php

namespace App\Repositories\BookRecord;

use App\Models\Book;
use App\Models\BookRecord;
use App\Models\Category;
use Illuminate\Support\Facades\Log;

class BookRecordRepository
{
    public function addRecord($book_id, $user_id, $category_id, $content, $read_date)
    {
        //$book_idがgoogle_api_idの場合はBooksテーブルの本のIDに変換する
        Log::info('book_idは'.$book_id.'で変換前のタイプは'.gettype($book_id));
        Log::info('英数字を含むか'.ctype_alpha($book_id));
        if (mb_strlen($book_id) == 12) {
            $book_id = Book::where('google_book_id', $book_id)->value('id');
            Log::info('book_idが変換された');
        }
        Log::info('book_idは'.$book_id.'で変換後のタイプは'.gettype($book_id));
        Log::info('book_idは:'.$book_id);
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
