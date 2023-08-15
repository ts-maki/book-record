<?php

namespace Tests\Feature\HTTP\Controllers;

use App\Models\Book;
use App\Models\BookRecord;
use App\Models\Category;
use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Tests\TestCase;
use Illuminate\Support\Str;

class CreateRecordControllerTest extends TestCase
{

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
        // $recordData = BookRecord::factory()->create();
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
}
