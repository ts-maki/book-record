<?php

namespace Tests\Feature;

// use Illuminate\Foundation\Testing\RefreshDatabase;

use App\Models\User;
use Tests\TestCase;

class ExampleTest extends TestCase
{
    /**
     * A basic test example.
     */
    public function test_sample1(): void
    {
        $response = $this->get('/');

        $response->assertStatus(200);
    }

    public function test_sample2(): void
    {
        $response = $this->get('/');

        $response->assertStatus(200);
        $response->assertStatus(200);
    }

    function test_aaa()
    {
        // Arrange（準備）
        $user = User::factory()->create();

        // Act（実行）
        $response = $this
            ->actingAs($user)
            ->get('/');

        // Assert（検証）
        $response->assertStatus(200);
    }
}
