<?php

namespace App\Http\Controllers;

use App\Http\Requests\SearchPostRequest;
use App\Services\Book\BookSearchService;
use Illuminate\Support\Facades\Log;

class SearchBookController extends Controller
{
    protected $book_search_service;

    public function __construct(BookSearchService $book_search_service)
    {
        $this->book_search_service = $book_search_service;
    }

    //本の検索結果を返す
    public function searchBook(SearchPostRequest $request)
    {
        $keyword = $request->input('search_keyword');
        Log::info('本の検索入力キーワード:'.$keyword);
        $books = $this->book_search_service->readBookData($keyword);

        return view('search')->with('books', $books);
    }

    public function show()
    {
        return view('search');
    }
}
