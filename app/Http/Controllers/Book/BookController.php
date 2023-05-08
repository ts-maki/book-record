<?php

namespace App\Http\Controllers\Book;

use App\Http\Controllers\Controller;
use App\Models\Book;
use App\Models\BookRecord;
use App\Models\Category;
use App\Services\Book\BookSearchService;
use App\Services\Book\BookService;
use App\Services\BookRecord\BookRecordService;
use App\Services\Common\Util;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Log;

class BookController extends Controller
{
    protected $book_search_service;
    protected $book_service;
    protected $book_record_service;

    public function __construct(BookSearchService $book_search_service, BookService $book_service, BookRecordService $book_record_service)
    {
        $this->book_search_service = $book_search_service;
        $this->book_service = $book_service;
        $this->book_record_service = $book_record_service;
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

    //感想を書く本の情報をDBに登録して感想ページに遷移する
    public function create(Request $request)
    {
        // $input = $request->all();
        Log::info("対象の本のid:". $request->id);
        Log::info("対象の本のtitle:". $request->title);
        Log::info("対象の本のauthor:". $request->author);
        Log::info("対象の本のdescription:". $request->description);
        Log::info("対象の本のthumbnail_path:". $request->thumbnail_path);
        Log::info("対象の本のisbn:". $request->isbn);
        Log::info("対象の本のpublished_date:".  substr($request->published_date, 0, 7));

        $this->book_service->addBook($request->id, $request->title, $request->author, $request->description, $request->thumbnail_path, $request->isbn, $request->published_date);
        return view('create')->with('book', $request);
    }

    public function addRecord(Request $request)
    {
        Log::info('ユーザーIDは:'. Auth::id());
        Log::info('book_idは:'. $request->id);
        Log::info('カテゴリーは:'. $request->category);
        Log::info('読んだ日は:'. $request->date);
        Log::info('本の感想は:'. $request->content);
        Log::info('DBの検索'. Book::where('google_book_id', $request->id)->first()->id);

        $user_id = Auth::id();
        // $book_id = Book::where('google_book_id', $request->id)->value('id');
        // $category_id = Category::where('category_name', $request->category)->value('id');
        // Log::info($book_id);
        // $record = BookRecord::create([
        //     'book_id' => $book_id,
        //     'user_id' => $user_id,
        //     'category_id' => $category_id,
        //     'content' => $request->content,
        //     'read_date' => $request->date,
        // ]);

        //TODO 登録後、前のページに戻って同じ内容で登録できるので本1冊、1感想にする
        $this->book_record_service->addRecord($request->id, $user_id, $request->category, $request->content, $request->date);

        //登録後、感想一覧ページに遷移
        return to_route('index');
    }

    public function index()
    {
        $records = BookRecord::with('book')->orderBy('created_at', 'DESC')->get();
        return view('index')->with('records', $records);
    }
    public function show()
    {
        return view('search');
    }
}
