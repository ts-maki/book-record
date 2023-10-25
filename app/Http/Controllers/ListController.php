<?php

namespace App\Http\Controllers;

use App\Models\BookRecord;
use App\Models\Like;
use App\Services\BookRecord\ListService;
use GuzzleHttp\Psr7\Request;
use Illuminate\Support\Facades\Auth;

class ListController extends Controller
{
    protected $list_service;
    public function __construct(ListService $list_service)
    {
        $this->list_service = $list_service;
    }
    //感想一覧
    public function index()
    {
        $records = $this->list_service->index();
        return view('index')->with('records', $records);
    }

    //指定ユーザーの感想一覧
    public function showUserRecord($user_id)
    {
        $records = $this->list_service->showRecord($user_id);
        return view('user-record')->with('records', $records);
    }

    //自分の感想一覧
    public function showMyRecord($user_id)
    {
        $records = $this->list_service->showRecord($user_id);
        return view('my-record')->with('records', $records);
    }

    //自分のお気に入り一覧
    public function showFavorite($user_id)
    {
        $records = $this->list_service->showFavorite($user_id);
        return view('my-favorite')->with('records', $records);
    }

    //各カテゴリーの感想一覧
    public function showCategoryRecord($category_id)
    {
        $records = $this->list_service->showCategory($category_id);
        return view('category')
            ->with('records', $records)
            ->with('category_id', $category_id);
    }

    public function showMyRecordCategory($user_id, $category_id)
    {
        $records = $this->list_service->showMyRecordCategory($user_id, $category_id);

        return view('my-record-category')
            ->with('records', $records)
            ->with('category_id', $category_id);
    }

    //各カテゴリーの自分のお気に入り一覧
    public function showMyFavoriteCategory($user_id, $category_id)
    {
        $records = $this->list_service->showMyFavoriteCategory($user_id, $category_id);

        return view('my-favorite-category')
            ->with('records', $records)
            ->with('category_id', $category_id);
    }
}
