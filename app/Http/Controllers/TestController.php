<?php

namespace App\Http\Controllers;

use App\Repositories\GoogleBooksAPIs\GoogleBooksAPIsRepository;

class TestController extends Controller
{
    protected $google_books_apis_repository;

    public function __construct(GoogleBooksAPIsRepository $google_books_apis_repository)
    {
        $this->google_books_apis_repository = $google_books_apis_repository;
    }

    public function testFunction($search_keyword)
    {
        return $this->google_books_apis_repository->readBookInfo($search_keyword);
    }
}
