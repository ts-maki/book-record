<?php

namespace App\Http\Controllers\Book;

use App\Http\Controllers\Controller;
use App\Services\Book\BookSearchService;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;

class BookController extends Controller
{
    protected $book_search_service;

    public function __construct(BookSearchService $book_search_service)
    {
        $this->book_search_service = $book_search_service;
    }

    public function create(Request $request)
    {
        $keyword = $request->input('serach_keyword');
        Log::info('入力キーワード:'. $keyword);
        $books = $this->book_search_service->readBookData($keyword);
        // Log::debug("取得取得データ:". $books[]);
        return view('search')->with('books', $books);
    }

    public function show()
    {
        return view('search');
    }
}
