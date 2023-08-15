<?php

namespace Tests\Feature\HTTP\Controllers;

use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Tests\TestCase;
use Illuminate\Support\Str;

class CreateRecordControllerTest extends TestCase
{
    /**
     * A basic feature test example.
     */
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
    }
}
