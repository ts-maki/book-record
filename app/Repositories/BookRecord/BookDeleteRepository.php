<?php

namespace App\Repositories\BookRecord;

use App\Models\BookRecord;

class BookDeleteRepository
{
    public function delete($request)
    {

        $record_id = $request->route('record_id');
        $book_record = BookRecord::findOrFail($record_id);
        //本をお気に入り登録している全てのユーザーとの紐づけ解除
        $book_record->likeUsers()->detach();
        $book_record->delete();
    }
}
