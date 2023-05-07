<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Book extends Model
{
    use HasFactory;
    protected $guarded = [

    ];
    /**
     * 型変換対応一覧
     * int, integer, real, float, double, string, bool, boolean, object, array, json, collection, date, datetime
     *
     * @var array
     */
    protected $casts = [
        'isbn ' => 'int',
        'isbn ' => 'int',
        'isbn ' => 'int',
    ];
}
