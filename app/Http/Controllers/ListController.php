<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\BookRecord;

class ListController extends Controller
{
    public function index()
    {
        $records = BookRecord::with('book')->orderBy('created_at', 'DESC')->paginate(20);

        return view('index')->with('records', $records);
    }
}
