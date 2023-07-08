<?php

namespace App\Services\Book;

use App\Repositories\Book\BookCreateRepository;
use Illuminate\Support\Facades\DB;

class BookCreateService
{
    protected $book_create_repository;

    public function __construct(BookCreateRepository $book_create_repository)
    {
        $this->book_create_repository = $book_create_repository;
    }

    public function addBook($book_id, $title, $author, $description, $thumbnail_path, $isbn, $published_date)
    {
        //出版日がdete型でない形の場合は暫定対応としてnullで登録する
        //TODO APIが返す色々な出版日の形に対応する
        if (mb_strlen($published_date) == 4) {
            $published_date = null;
        }
        if (mb_strlen($published_date) == 7) {
            $published_date = null;
        }

        try {
            DB::transaction(function () use (
                &$book_id,
                &$title,
                &$author,
                &$description,
                &$thumbnail_path,
                &$isbn,
                &$published_date
            ) {
                $this->book_create_repository->addBook($book_id, $title, $author, $description, $thumbnail_path, $isbn, $published_date);
            }, 2);
        } catch (\Throwable $e) {
            report($e);
            abort(500, $e->getMessage());
        }
    }
}
