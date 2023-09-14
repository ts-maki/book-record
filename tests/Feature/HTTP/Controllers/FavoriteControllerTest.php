<?php

namespace Tests\Feature\HTTP\Controllers;

use App\Models\User;
use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Tests\TestCase;

class FavoriteControllerTest extends TestCase
{

    public function test_お気に入り登録(): void
    {
        $login_user_id = User::find(3);
        $this->actingAs($login_user_id);
        $response = $this->get('/');
        $response->assertStatus(200);


        $response = $this->post(route('favorite.save', ['record_id' => 15]));
        $response->assertRedirect(route('index'));
    }

    public function test_お気に入り解除(): void
    {
        $login_user_id = User::find(3);
        $this->actingAs($login_user_id);
        $response = $this->get('/');
        $response->assertStatus(200);


        $response = $this->delete(route('favorite.destroy', ['record_id' => 15]));
        $response->assertRedirect(route('index'));
    }
}
