<?php

namespace App\Services\BookRecord;

use App\Models\BookRecord;

class ListService
{
    //感想一覧
    public function index()
    {
        $records = BookRecord::with('book')->orderBy('updated_at', 'DESC')->paginate(20);

        return $records;
    }

    //指定のユーザーiDの感想一覧
    public function showRecord($user_id)
    {
        $records = BookRecord::with('book', 'user')
            ->where('user_id', $user_id)
            ->orderby('updated_at', 'DESC')
            ->paginate(20);
        return $records;
    }
}
