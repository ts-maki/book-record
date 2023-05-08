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
        //TODO DBにY/mの表記で登録できないか？　暫定として日にちが不明なデータは01日を追記
        if(mb_strlen($published_date) == 7) {
            $published_date = $published_date . '-01';
        }

        try {
            DB::transaction(function () use (&$book_id,
            &$title, &$author, &$description, &$thumbnail_path, &$isbn, &$published_date) {
                $this->book_repository->addBook($book_id, $title, $author, $description, $thumbnail_path, $isbn, $published_date);
            }, 2);
        } catch (\Exception $e) {
            Log::error("本の登録に失敗しました。エラーメッセージは:". $e);
        }
    }
}
