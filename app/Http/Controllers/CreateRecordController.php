<?php

namespace App\Http\Controllers;

use App\Http\Requests\RecordPostRequest;
use App\Http\Requests\SearchPostRequest;
use App\Models\Book;
use App\Models\BookRecord;
use App\Services\Book\BookCreateService;
use App\Services\Book\BookSearchService;
use App\Services\BookRecord\BookRecordService;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Log;

class CreateRecordController extends Controller
{
    protected $book_search_service;

    protected $book_create_service;

    protected $book_record_service;

    public function __construct(BookSearchService $book_search_service, BookCreateService $book_create_service, BookRecordService $book_record_service)
    {
        $this->book_search_service = $book_search_service;
        $this->book_create_service = $book_create_service;
        $this->book_record_service = $book_record_service;
    }

    //本の検索結果を返す
    public function searchBook(SearchPostRequest $request)
    {
        $keyword = $request->input('search_keyword');
        Log::info('本の検索入力キーワード:'.$keyword);
        $books = $this->book_search_service->readBookData($keyword);
        // Log::debug("取得取得データ:". $books[]);
        return view('search')->with('books', $books);
    }

    //感想を書く本の情報をDBに登録して感想ページに遷移する
    public function create(Request $request)
    {
        // $input = $request->all();
        Log::info('対象の本のgoogleAPIsのid:'.$request->id);
        Log::info('対象の本のtitle:'.$request->title);
        Log::info('対象の本のauthor:'.$request->author);
        Log::info('対象の本のdescription:'.$request->description);
        Log::info('対象の本のthumbnail_path:'.$request->thumbnail_path);
        Log::info('対象の本のisbn:'.$request->isbn);
        Log::info('対象の本のpublished_date:'.substr($request->published_date, 0, 7));

        //既に登録されている場合は本の情報を返す
        $exist_book = Book::where('google_book_id', $request->id)->first();
        Log::info('既に登録されている本の情報？'.$exist_book);
        if ($exist_book !== null) {
            return view('create')->with('book', $exist_book);
        }

        //本情報の新規登録
        $this->book_create_service->addBook($request->id, $request->title, $request->author, $request->description, $request->thumbnail_path, $request->isbn, $request->published_date);

        //登録した本のIDを一意のgoogle_api_id検索でして取得する
        $book_id = Book::where('google_book_id', $request->google_api_id)->value('id');

        return view('create')
            ->with('book', $request)
            ->with('book_id', $book_id);
    }

    //本の感想を登録する
    public function addRecord(RecordPostRequest $request)
    {

        Log::info('ユーザーIDは:'.Auth::id());
        Log::info('book_idは:'.$request->id);
        Log::info('カテゴリーは:'.$request->category);
        Log::info('読んだ日は:'.$request->date);
        Log::info('本の感想は:'.$request->content);

        $user_id = Auth::id();

        $this->book_record_service->addRecord($request->id, $user_id, $request->category, $request->content, $request->date);

        return to_route('index');
    }

    //他の人の感想から本の感想登録ページに遷移
    public function otherCreate(Request $request)
    {
        $book_id = $request->route('id');
        $book = Book::find($book_id);

        return view('create')->with('book', $book);
    }

    //登録されている全ての感想一覧
    public function index()
    {
        $records = BookRecord::with('book')->orderBy('created_at', 'DESC')->paginate(20);

        return view('index')->with('records', $records);
    }
}
