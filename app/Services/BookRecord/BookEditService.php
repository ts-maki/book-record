<?php

namespace App\Services\BookRecord;

use App\Models\BookRecord;
use App\Repositories\BookRecord\BookEditRepository;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class BookEditService
{
    protected $book_edit_repository;

    public function __construct(BookEditRepository $book_edit_repository)
    {
        $this->book_edit_repository = $book_edit_repository;
    }

    /**
     * 感想の編集
     *
     * @param [object] $request
     * @return void
     */
    public function update($request)
    {
        DB::transaction(function () use (&$request) {
            $this->book_edit_repository->update($request);
        });
    }

    public function matchUserIdOfBookRecord($record_id)
    {
        $user_id = Auth::id();
        $record_user_id = BookRecord::find($record_id);
        if (!$record_user_id) {
            return false;
        }
        return $user_id === $record_user_id->user_id;
    }
}
