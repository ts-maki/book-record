<?php

namespace App\Services\BookRecord;

use App\Repositories\BookRecord\BookDeleteRepository;
use Illuminate\Support\Facades\DB;

class BookDeleteService
{
    protected $book_delete_repository;

    public function __construct(BookDeleteRepository $book_delete_repository)
    {
        $this->book_delete_repository = $book_delete_repository;
    }

    public function delete($request)
    {
        try {
            DB::transaction(function () use (&$request) {
                $this->book_delete_repository->delete($request);
            }, 2);
        } catch (\Throwable $e) {
            report($e);
            abort(500, $e->getMessage());
        }
    }
}
