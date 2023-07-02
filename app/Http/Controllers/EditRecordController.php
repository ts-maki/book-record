<?php

namespace App\Http\Controllers;

use App\Http\Requests\UpdatePostRequest;
use App\Models\BookRecord;
use App\Services\BookRecord\BookEditService;
use App\Services\BookRecord\BookRecordService;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Log;

class EditRecordController extends Controller
{
    protected $book_record_service;

    protected $book_edit_service;

    public function __construct(BookRecordService $book_record_service, BookEditService $book_edit_service)
    {
        $this->book_record_service = $book_record_service;
        $this->book_edit_service = $book_edit_service;
    }

    public function edit(Request $request)
    {
        $record_id = $request->route('record_id');
        Log::info('record_idは:'.$record_id);
        $record = BookRecord::with('book', 'category')->find($record_id);

        return view('edit')->with('record', $record);
    }

    //変更箇所だけ更新
    public function update(UpdatePostRequest $request)
    {
        $record_id = $request->route('record_id');

        //ログインユーザーIDと感想を書いたユーザーIDが一致するか確認
        $check_user_id = $this->book_edit_service->matchUserIdOfBookRecord($record_id);
        Log::info($check_user_id);
        if (! $check_user_id) {
            throw new Exception('ログインユーザーIDと感想を書いたユーザーIDが異なります');

            return to_route('index');
        }

        $this->book_edit_service->update($request);

        //タブメニューの自分の感想からの編集の場合は自分の感想ページに戻る
        if(strpos(url()->current(), 'user') !== false) {
            return to_route('my.record', ['user_id' => Auth::id()]);
        }
        
        return to_route('index');
    }
}
