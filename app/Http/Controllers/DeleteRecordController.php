<?php

namespace App\Http\Controllers;

use App\Models\BookRecord;
use App\Services\BookRecord\BookRecordService;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;

class DeleteRecordController extends Controller
{
    protected $book_record_service;

    public function __construct(BookRecordService $book_record_service)
    {
        $this->book_record_service = $book_record_service;
    }

    //削除確認
    public function check(Request $request)
    {
        $record_id = $request->route('record_id');
        Log::info('削除するrecord_idは:'.$record_id);
        $record = BookRecord::with('book', 'category')->find($record_id);
        // dd($record);
        return view('delete')->with('record', $record);
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

        $book_record = BookRecord::find($record_id);
        //本をお気に入り登録している全てのユーザーとの紐づけ解除
        $book_record->likeUsers()->detach();
        $book_record->delete();

        return to_route('index');
    }

    public function show()
    {
        return view('search');
    }
}
