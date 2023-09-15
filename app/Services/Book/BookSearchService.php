<?php

namespace App\Services\Book;

use App\Repositories\GoogleBooksAPIs\GoogleBooksAPIsRepository;
use App\Services\Common\Util;
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
     * @param  string  $search_keyword 検索キーワード
     * @return array 書籍データ一覧 二次元配列
     */
    public function readBookData($search_keyword)
    {
        $response = $this->google_books_apis_repository->readBookInfo($search_keyword);

        Log::info('検索キーワードで本の情報取得成功');

        $books = [];

        // if (isset($response->error)) {
        //     Log::error('APIリクエスト超過');
        //     (bool)$books = true;
        //     return $books;
        // }

        if ($response->totalItems == 0) {
            Log::info('取得件数:' . 0);
            Log::debug("検索結果が0件の時:". count($books));
            (string)$books = "検索結果が0件です";
            return $books;
        }

        try {
            foreach ($response->items as $item) {

                $author = $item->volumeInfo->authors ?? '著者不明';
                if ($author !== '著者不明') {
                    $author = Util::deleteSpace($author[0]);
                }

                $book = [
                    'title' => Util::deleteSpace($item->volumeInfo->title),
                    'id' => $item->id,
                    'author' => $author,
                    'description' => $item->volumeInfo->description ?? null,
                    'thumbnail_path' => $item->volumeInfo->imageLinks->thumbnail ?? null,
                    'isbn' => $item->volumeInfo->industryIdentifiers[1]->identifier ?? null,
                    'published_date' => $item->volumeInfo->publishedDate ?? null,
                ];

                $books[] = $book;
            }

            Log::info('取得件数:' . count($books));

            return $books;
        } catch (\Throwable $e) {
            report($e);
            abort(500, $e->getMessage());
        }
    }
}
