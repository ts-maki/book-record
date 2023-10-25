<?php

namespace App\Services\BookRecord;

use App\Models\BookRecord;
use App\Models\Like;
use Illuminate\Support\Facades\Log;

class ListService
{
    //感想一覧
    public function index()
    {
        $records = BookRecord::with('book', 'category', 'user')->orderBy('updated_at', 'DESC')->paginate(20);

        return $records;
    }

    //指定のユーザーiDの感想一覧
    public function showRecord($user_id)
    {
        $records = BookRecord::with('book', 'user', 'category')
            ->where('user_id', $user_id)
            ->orderby('updated_at', 'DESC')
            ->paginate(20);
        return $records;
    }

    //指定のユーザーのお気に入り一覧
    public function showFavorite($user_id) {
        $records = Like::with('bookRecord', 'bookRecord.book', 'bookRecord.user', 'bookRecord.category')
            ->where('user_id', $user_id)
            ->orderby('updated_at', 'DESC')
            ->paginate(20);
        return $records;
    }

    //各カテゴリーの感想一覧
    public function showCategory($category_id)
    {
        $records = BookRecord::with('book', 'user', 'category')->where('category_id', $category_id)->orderby('updated_at', 'DESC')
            ->paginate(20);
        return $records;
    }

    //各カテゴリーの自分の感想一覧
    public function showMyRecordCategory($user_id, $category_id)
    {
        $records = BookRecord::with('book', 'user', 'category')->where('user_id', $user_id)->where('category_id', $category_id)->orderby('updated_at', 'DESC')
        ->paginate(20);

        return $records;
        return view('my-record-category')
            ->with('records', $records)
            ->with('category_id', $category_id);
    }

    public function showMyFavoriteCategory($user_id, $category_id)
    {
        $records = BookRecord::where('category_id', $category_id)->withWhereHas('likeUsers', function ($query) use ($user_id) {
            $query->where('user_id', $user_id);
        })->orderby('updated_at', 'DESC')
            ->paginate(20);

        return $records;
    }
}
