<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    use HasFactory;
    protected $guarded = [];

    //リレーション 1対多のbook_recordsテーブル
    public function bookRecords()
    {
        return $this->hasMany(BookRecord::class);
    }
}
