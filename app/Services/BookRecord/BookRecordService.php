<?php

namespace App\Services\BookRecord;

use App\Models\BookRecord;
use App\Repositories\BookRecord\BookRecordRepository;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class BookRecordService
{
    protected $book_record_repository;

    public function __construct(BookRecordRepository $book_record_repository)
    {
        $this->book_record_repository = $book_record_repository;
    }

    //本の感想登録
    public function addRecord($book_id, $user_id, $category_id, $content, $read_date)
    {
        try {
            DB::transaction(function () use (&$book_id, &$user_id, &$category_id, &$content, &$read_date) {
                $this->book_record_repository->addRecord($book_id, $user_id, $category_id, $content, $read_date);
            }, 2);
        } catch (\Throwable $e) {
            report($e);
            abort(500, $e->getMessage());
        }
    }

    public function matchUserIdOfBookRecord($record_id)
    {
        $user_id = Auth::id();
        $record_user_id = BookRecord::find($record_id);
        if (!$record_user_id) {
            return false;
        }

        return $user_id === $record_user_id->user_id;
    }
}
