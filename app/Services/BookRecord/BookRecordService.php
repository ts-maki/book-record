<?php

namespace App\Services\BookRecord;

use App\Repositories\BookRecord\BookRecordRepository;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;

class BookRecordService
{
    protected BookRecordRepository $book_record_repository;

    public function __construct(BookRecordRepository $book_record_repository)
    {
        $this->book_record_repository = $book_record_repository;
    }

    public function addRecord($book_id, $user_id, $category_id, $content, $read_date)
    {
        try {
            DB::transaction(function () use(&$book_id, &$user_id, &$category_id, &$content, &$read_date) {
                $this->book_record_repository->addRecord($book_id, $user_id, $category_id, $content, $read_date);
            }, 2);
        } catch (\Exception $e) {
            Log::error("本の感想登録に失敗しました。エラーメッセージは:". $e);
        }
    }
}
