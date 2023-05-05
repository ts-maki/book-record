<?php

namespace App\Service\Book;

use App\Repositories\GoogleBooksAPIs\GoogleBooksAPIsRepository;
use Illuminate\Support\Facades\Log;

/**
 * 本に関するサービス
 */
class BookSearchService
{
    protected $google_books_apis_repository;

    public function __construct(GoogleBooksAPIsRepository $google_books_apis_repository)
    {
        $this->google_books_apis_repository = $google_books_apis_repository;
    }

    /**
     * 検索したキーワードを含む本のタイトル、著者、サムネイル画像のurl、ISBN番号、出版日を一覧取得
     *
     * @param string $search_keyword
     * @return array 書籍データ一覧
     */
    public function readBookData($search_keyword)
    {
        $response = $this->google_books_apis_repository->readBookInfo($search_keyword);

        Log::debug('検索キーワードで本の情報取得成功');

        $books = $response->items;
        dd($books);
    }
}
