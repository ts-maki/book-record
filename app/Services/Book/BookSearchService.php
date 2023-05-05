<?php

namespace App\Service\Book;

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
}
