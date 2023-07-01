<?php

namespace App\Services\Book;

use App\Repositories\Book\BookCreateRepository;
use Illuminate\Support\Facades\DB;

class BookCreateService
{
    protected BookCreateRepository $book_create_repository;

    public function __construct(BookCreateRepository $book_create_repository)
    {
        $this->book_create_repository = $book_create_repository;
    }

    public function addBook($book_id, $title, $author, $description, $thumbnail_path, $isbn, $published_date)
    {
        //日にちがない場合はnullで登録する
        if(mb_strlen($published_date) == 7) {
            $published_date = null;
        }
        DB::transaction(function () use (&$book_id,
            &$title, &$author, &$description, &$thumbnail_path, &$isbn, &$published_date) {
                $this->book_create_repository->addBook($book_id, $title, $author, $description, $thumbnail_path, $isbn, $published_date);
            });
    }
}
