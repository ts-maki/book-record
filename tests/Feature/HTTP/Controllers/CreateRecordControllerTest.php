<?php

namespace Tests\Feature\HTTP\Controllers;

use App\Models\Book;
use App\Models\BookRecord;
use App\Models\Category;
use App\Models\User;
use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Tests\TestCase;
use Illuminate\Support\Str;

class CreateRecordControllerTest extends TestCase
{
    public function test_本の検索(): void
    {
        $user = $this->login();

        $response = $this->get('search');
        $response->assertStatus(200);

        $search_keyword = Str::random(6);
        $response = $this->get('search/book?search_keyword='. $search_keyword);
        $response->assertStatus(200);
    }

    public function test_本の情報を登録(): void
    {
        $user = $this->login();

        $google_book_id = Str::random(12);
        $bookData = [
            'google_book_id' => $google_book_id,
            'title' => fake()->realText(10),
            'author' => fake()->name(),
            'description' => fake()->realText(30),
            'published_date' => fake()->date('Y-m-d')
        ];

        $response = $this->post(route('book.create', ['id' => $google_book_id]), $bookData);
        $response->assertStatus(200);
        $this->assertDatabaseHas('books', $bookData);
    }

    public function test_本の感想を登録(): void
    {
        $user = $this->login();
        $book_id = 318;
        $recordData = [
            'book_id' => $book_id,
            'user_id' => 3,
            'category' => '恋愛',
            'content' => fake()->realText(30),
            'date' => fake()->date("Y-m-d")
        ];

        $response = $this->post(route('book.record', ['id' => $book_id]), $recordData);
        $response->assertRedirect(route('index'));
    }

    /**
     * user_id[4]がuser_id[3]の感想から本の感想を登録
     */
    public function test_他の人の感想から感想登録ページに遷移して感想登録(): void
    {
        //ページ遷移
        $login_user_id = User::find(4);

        //認証されていなっかたら302リダイレクト
        $response = $this->get('create/other/289');
        $response->assertStatus(302);

        $this->actingAs($login_user_id);
        $response = $this->get('create/other/289');
        $response->assertStatus(200);

        $recordData = [
            'book_id' => 289,
            'user_id' => 4,
            'category' => 'ファンタジー',
            'content' => fake()->realText(30),
            'date' => fake()->date("Y-m-d")
        ];

        $response = $this->post(route('book.record', ['id' => 289]), $recordData);
        $response->assertRedirect(route('index'));
    }
}
