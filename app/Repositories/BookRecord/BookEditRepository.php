<?php

namespace App\Repositories\BookRecord;

use App\Models\BookRecord;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Log;

class BookEditRepository
{

    public function update($request)
    {
        $record_id = $request->route('record_id');
        Log::info(Auth::id());
        Log::info($request);
        Log::info(BookRecord::find($record_id)->user_id);

        $book_record = BookRecord::find($record_id);
        $input = $request->all();
        Log::info($book_record);
        $result = $book_record->fill($input)->save();
    }
}
