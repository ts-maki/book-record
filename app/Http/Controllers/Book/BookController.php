<?php

namespace App\Http\Controllers\Book;

use App\Http\Controllers\Controller;
use App\Http\Requests\RecordPostRequest;
use App\Models\Book;
use App\Models\BookRecord;
use App\Models\Category;
use App\Services\Book\BookSearchService;
use App\Services\Book\BookService;
use App\Services\BookRecord\BookRecordService;
use App\Services\Common\Util;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Log;
use Symfony\Component\Finder\Exception\AccessDeniedException;

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
        Log::info("対象の本のgoogleAPIsのid:". $request->id);
        Log::info("対象の本のtitle:". $request->title);
        Log::info("対象の本のauthor:". $request->author);
        Log::info("対象の本のdescription:". $request->description);
        Log::info("対象の本のthumbnail_path:". $request->thumbnail_path);
        Log::info("対象の本のisbn:". $request->isbn);
        Log::info("対象の本のpublished_date:".  substr($request->published_date, 0, 7));

        //既に登録されている場合は本の情報を返す
        $exist_book = Book::where('google_book_id', $request->id)->first();
        Log::info('既に登録されている本の情報？'. $exist_book);
        if ($exist_book !== null) {
            return view('create')->with('book', $exist_book);
        }

        //本情報の新規登録
        $this->book_service->addBook($request->id, $request->title, $request->author, $request->description, $request->thumbnail_path, $request->isbn, $request->published_date);

        //登録した本のIDを一意のgoogle_api_id検索でして取得する
        $book_id = Book::where('google_book_id', $request->google_api_id)->value('id');
        return view('create')
            ->with('book', $request)
            ->with('book_id', $book_id);
    }

    public function addRecord(RecordPostRequest $request)
    {

        Log::info('ユーザーIDは:'. Auth::id());
        Log::info('book_idは:'. $request->id);
        Log::info('カテゴリーは:'. $request->category);
        Log::info('読んだ日は:'. $request->date);
        Log::info('本の感想は:'. $request->content);
        // Log::info('DBの検索'. Book::where('google_book_id', $request->id)->first()->id);

        $user_id = Auth::id();
        //TODO 登録後、前のページに戻って同じ内容で登録できるので本1冊、1感想にする
        $this->book_record_service->addRecord($request->id, $user_id, $request->category, $request->content, $request->date);

        //登録後、感想一覧ページに遷移
        return to_route('index');
    }

    public function otherCreate(Request $request)
    {
        $book_id = $request->route('id');
        $book = Book::find($book_id);
        return view('create')->with('book', $book);
    }

    public function index()
    {
        $records = BookRecord::with('book')->orderBy('created_at', 'DESC')->paginate(20);
        return view('index')->with('records', $records);
    }

    public function edit(Request $request)
    {
        $record_id = $request->route('record_id');
        Log::info('record_idは:'. $record_id);
        $record = BookRecord::with('book', 'category')->find($record_id);
        // dd($record);
        return view('edit')->with('record', $record);
    }

    //変更箇所だけ更新
    public function update(Request $request)
    {
        $record_id = $request->route('record_id');
        Log::info(Auth::id());
        Log::info($request);
        Log::info(BookRecord::find($record_id)->user_id);

        //ログインユーザーIDと感想を書いたユーザーIDが一致するか確認
        $check_user_id = $this->book_record_service->matchUserIdOfBookRecord($record_id);
        Log::info($check_user_id);
        if(!$check_user_id) {
            throw new Exception('ログインユーザーIDと感想を書いたユーザーIDが異なります', );
        }
        $book_record = BookRecord::find($record_id);
        $input = $request->all();
        Log::info($book_record);
        $result = $book_record->fill($input)->save();
        return to_route('index');
    }

    //削除確認
    public function check(Request $request)
    {
        $record_id = $request->route('record_id');
        Log::info('削除するrecord_idは:'. $record_id);
        $record = BookRecord::with('book', 'category')->find($record_id);
        // dd($record);
        return view('delete')->with('record', $record);
    }

    public function delete(Request $request)
    {
        $record_id = $request->route('record_id');
        $check_user_id = $this->book_record_service->matchUserIdOfBookRecord($record_id);
        Log::info($check_user_id);
        if(!$check_user_id) {
            throw new Exception('ログインユーザーIDと感想を書いたユーザーIDが異なります', );
        }
        $result = BookRecord::destroy($record_id);
        return to_route('index');
    }


    public function show()
    {
        return view('search');
    }
}
