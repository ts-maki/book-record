<?php

namespace App\Http\Controllers\Book;

use App\Http\Controllers\Controller;
use App\Models\Book;
use App\Services\Book\BookSearchService;
use App\Services\Common\Util;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;

class BookController extends Controller
{
    protected $book_search_service;

    public function __construct(BookSearchService $book_search_service)
    {
        $this->book_search_service = $book_search_service;
    }

    //本の検索結果を返す
    public function searchBook(Request $request)
    {
        $keyword = $request->input('serach_keyword');
        Log::info('入力キーワード:'. $keyword);
        $books = $this->book_search_service->readBookData($keyword);
        // Log::debug("取得取得データ:". $books[]);
        return view('search')->with('books', $books);
    }

    //感想を書く本の情報を登録して感想ページに遷移する
    public function create(Request $request)
    {
        // $input = $request->all();
        Log::info("対象の本のid:". $request->id);
        Log::info("対象の本のtitle:". $request->title);
        Log::info("対象の本のauthor:". $request->author);
        Log::info("対象の本のdescription:". $request->description);
        Log::info("対象の本のthumbnail_path:". $request->thumbnail_path);
        Log::info("対象の本のisbn:". $request->isbn);
        Log::info("対象の本のpublished_date:". $request->published_date);
        $book = Book::create([
            'google_book_id' => $request->id,
            'title' => $request->title,
            'author' => $request->author,
            'description' => $request->description,
            'thumbnail_path' => $request->thumbnail_path,
            'isbn' => $request->isbn,
            'published_date' => $request->published_date,
        ]);

        return view('index');
    }
    public function show()
    {
        return view('search');
    }
}
