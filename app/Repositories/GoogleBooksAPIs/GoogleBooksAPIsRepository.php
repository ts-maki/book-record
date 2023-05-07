<?php

namespace App\Repositories\GoogleBooksAPIs;

use Exception;
use Illuminate\Support\Facades\Http;
use Illuminate\Support\Facades\Log;

/**
 * 本の情報取得のGoogleBooksAPIs リソースにアクセスするリポジトリ
 */
class GoogleBooksAPIsRepository
{
    /**
     * 検索キーワードから本の情報を取得する
     *
     * @param  string  $search_keyword 検索キーワード
     * @return object
     */
    public function readBookInfo($search_keyword)
    {
        $search_url = 'https://www.googleapis.com/books/v1/volumes?q='.$search_keyword.'&maxResults=40';
        Log::info('検索URLは:'.$search_url);
        try {
            $response = Http::get($search_url);

            //HTTP リクエストに失敗したかチェック
            if ($response->failed()) {
                Log::error('書籍データの読み込みに失敗しました');
                throw new Exception('書籍データの読み込みに失敗しました');
            }

            //API レスポンスのボディが空がチェック
            if (empty($response->body())) {
                Log::error('レスポンスのボディが空です');
                throw new Exception('レスポンスのボディが空です');
            }

            //API レスポンスにエラー情報があるかチェック
            $error = $response->json('error');
            if (! empty($error)) {
                Log::error('レスポンスにエラー情報があります');
                throw new Exception('レスポンスにエラー情報があります');
            }

            //成功時に本のデータを取得する
            if ($response->successful()) {
                $books = json_decode($response);
                return $books;
            }
        } catch (\Exception $e) {
            report($e);
            Log::error('書籍データの読み込みに失敗しました');
            Log::error($e->getMessage());
        }
    }
}
