<?php

namespace App\Http\Controllers;

use App\Models\BookRecord;
use App\Services\BookRecord\BookDeleteService;
use App\Services\BookRecord\BookRecordService;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;

class DeleteRecordController extends Controller
{
    protected $book_record_service;
    protected $book_delete_service;

    public function __construct(BookRecordService $book_record_service, BookDeleteService $book_delete_service)
    {
        $this->book_record_service = $book_record_service;
        $this->book_delete_service = $book_delete_service;
    }

    //感想削除
    public function delete(Request $request)
    {
        $record_id = $request->route('record_id');
        $check_user_id = $this->book_record_service->matchUserIdOfBookRecord($record_id);
        Log::info($check_user_id);
        if (! $check_user_id) {
            throw new Exception('ログインユーザーIDと感想を書いたユーザーIDが異なります');
        }

        $this->book_delete_service->delete($request);
    }

    public function show()
    {
        return view('search');
    }
}
