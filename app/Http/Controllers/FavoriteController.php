<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class FavoriteController extends Controller
{

    //対象の本をユーザーがお気に入り登録しているか
    public static function checkFavorite(Request $request)
    {
        $book_record_id = $request->route('record_id');
        $user = Auth::id();
        $result = User::find($user)->likes()->where('book_record_id', $book_record_id)->exists();
        dd($result);
        return $result;
    }


}
