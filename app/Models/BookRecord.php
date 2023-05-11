<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class BookRecord extends Model
{
    use HasFactory;
    protected $guarded = [];

    //リレーション
    public function user()
    {
        return $this->belongsTo(User::class);
    }

    public function book()
    {
        return $this->belongsTo(Book::class);
    }

    public function category()
    {
        return $this->belongsTo(Category::class);
    }

    public function likeUsers()
    {
        return $this->belongsToMany(User::class, 'likes')->using(User::class)->withTimestamps();
    }
}
