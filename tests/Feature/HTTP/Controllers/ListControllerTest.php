<?php

namespace Tests\Feature\HTTP\Controllers;

use App\Models\User;
use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Tests\TestCase;
use Illuminate\Support\Str;

class ListControllerTest extends TestCase
{

    public function test_感想一覧(): void
    {
        $response = $this->get('/');

        $response->assertStatus(200);
    }

    public function test_自分の感想一覧(): void
    {
        $user = User::factory()->create();

        //認証されていなっかたら302リダイレクト
        $response = $this->get('user/my/' . $user->id);
        $response->assertStatus(302);

        $this->actingAs($user);
        $response = $this->get('user/my/' . $user->id);
        $response->assertStatus(200);
    }

    public function test_自分のお気に入り一覧(): void
    {
        $user = User::factory()->create();

        //認証されていなっかたら302リダイレクト
        $response = $this->get('favorite/' . $user->id);
        $response->assertStatus(302);

        $this->actingAs($user);
        $response = $this->get('favorite/' . $user->id);
        $response->assertStatus(200);
    }
}
