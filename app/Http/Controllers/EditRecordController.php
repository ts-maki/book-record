<?php

namespace App\Http\Controllers;

use App\Http\Requests\UpdatePostRequest;
use App\Models\BookRecord;
use App\Models\Like;
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
        $user_id = Auth::id();
        //ログインユーザーIDと感想を書いたユーザーIDが一致するか確認
        $check_user_id = $this->book_edit_service->matchUserIdOfBookRecord($record_id);
        Log::info($check_user_id);
        if (! $check_user_id) {
            throw new Exception('ログインユーザーIDと感想を書いたユーザーIDが異なります');

            return to_route('index');
        }

        $this->book_edit_service->update($request);

        //元のタブメニューの感想ページに戻る
        if(strpos(url()->current(), 'user/my') !== false) {
            return to_route('my.record', ['user_id' => $user_id]);
        }
        else if (strpos(url()->current(), 'favorite') !== false) {
            //likesテーブルの該当のレコードのupdated_atを更新してお気に入り一覧のTOPにくるようにする
            $update_record = Like::where('book_record_id', $record_id);
            $update_record->update([
                'updated_at' => date('Y-m-d H:i:s')
            ]);
            return to_route('my.favorite', ['user_id' => $user_id]);
        } else {
            return to_route('index');
        }
    }
}
