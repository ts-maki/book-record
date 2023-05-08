<?php

namespace App\Repositories\Book;

use App\Models\Book;

/**
 * BookテーブルのDBに関わる処理をかくリポジトリ
 */
class BookRepository
{

    /**
     * 本の情報を登録する
     *
     * @param string $book_id googleAPIの本のid
     * @param string $title 本のタイトル
     * @param string $author 著者
     * @param string $description 本のあらすじ
     * @param string $thumbnail_path 表紙画像のurl
     * @param int $isbn 本のISBN番号
     * @param date $published_date 	出版日
     */
    public function addBook($book_id, $title, $author, $description, $thumbnail_path, $isbn, $published_date)
    {
        $book = Book::create([
            'google_book_id' => $book_id,
            'title' =>  $title,
            'author' => $author,
            'description' => $description,
            'thumbnail_path' => $thumbnail_path,
            'isbn' => $isbn,
            'published_date' => $published_date,
        ]);
    }
}
