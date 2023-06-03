<?php

namespace App\Services\Book;

use App\Repositories\Book\BookRepository;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;

class BookService
{
    protected BookRepository $book_repository;

    public function __construct(BookRepository $book_repository)
    {
        $this->book_repository = $book_repository;
    }

    public function addBook($book_id, $title, $author, $description, $thumbnail_path, $isbn, $published_date)
    {
        //日にちがない場合はnullで登録する
        if(mb_strlen($published_date) == 7) {
            $published_date = null;
        }
        DB::transaction(function () use (&$book_id,
            &$title, &$author, &$description, &$thumbnail_path, &$isbn, &$published_date) {
                $this->book_repository->addBook($book_id, $title, $author, $description, $thumbnail_path, $isbn, $published_date);
            });
    }
}
