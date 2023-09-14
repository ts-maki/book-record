<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class FavoriteController extends Controller
{
    //ログインユーザーと本の感想を紐づけてお気に入り登録する
    public function saveFavorite(Request $request)
    {
        $book_record_id = $request->route('record_id');
        $user = Auth::user();
        if (! $user->checkFavorite($book_record_id)) {
            $user->likes()->syncWithoutDetaching($book_record_id);
        }

        return back();
    }

    //ログインユーザーと本の感想のお気に入り紐づけ解除
    public function destroyFavorite(Request $request)
    {
        $book_record_id = $request->route('record_id');
        $user = Auth::user();
        if ($user->checkFavorite($book_record_id)) {
            $user->likes()->detach($book_record_id);
        }

        return back();
    }
}
