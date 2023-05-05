<?php

namespace App\Services\Book;

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
     * 検索したキーワードを含む本のタイトル、著者、サムネイル画像のurl、説明、ISBN番号、出版日を一覧取得
     *
     * @param  string  $search_keyword
     * @return array 書籍データ一覧 二次元配列
     */
    public function readBookData($search_keyword)
    {
        $response = $this->google_books_apis_repository->readBookInfo($search_keyword);

        Log::debug('検索キーワードで本の情報取得成功');

        //必要な本情報を取得した連想配列を格納した配列を作成
        $books = [];
        foreach ($response->items as $item) {
            $book = [
                'title' => $item->volumeInfo->title,
                // 'author' => implode(',', $item->volumeInfo->authors),
                'id' => $item->id,
                'author' => $item->volumeInfo->authors[0],
                'description' => $item->volumeInfo->description ?? null,
                'thumbnail_path' => $item->volumeInfo->imageLinks->thumbnail ?? null,
                'isbn' => $item->volumeInfo->industryIdentifiers[1]->identifier ?? null,
                'published_date' => $item->volumeInfo->publishedDate ?? null,
            ];
            $books[] = $book;
        }

        return $books;
    }
}
