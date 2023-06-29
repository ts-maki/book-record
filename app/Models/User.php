<?php

namespace App\Models;

// use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;

class User extends Authenticatable
{
    use HasApiTokens, HasFactory, Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */
    protected $guarded = ['email_verified_at'];

    /**
     * The attributes that should be hidden for serialization.
     *
     * @var array<int, string>
     */
    protected $hidden = [
        'password',
        'remember_token',
    ];

    /**
     * The attributes that should be cast.
     *
     * @var array<string, string>
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];

    //リレーション 1対多のbook_recordsテーブル
    public function bookRecords()
    {
        return $this->hasMany(BookRecord::class);
    }

    public function likes()
    {
        return $this->belongsToMany(BookRecord::class, 'likes')->withTimestamps();
    }

    //対象の本をユーザーがお気に入り登録しているかの判定
    public function checkFavorite($book_record_id)
    {
        $result = $this->likes()->where('book_record_id', $book_record_id)->exists();
        return $result;
    }
}
