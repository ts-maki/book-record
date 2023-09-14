<?php

namespace Tests\Feature\HTTP\Controllers;

use App\Models\User;
use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Tests\TestCase;

class EditRecordControllerTest extends TestCase
{

    public function test_感想一覧から感想編集(): void
    {
        $login_user_id = User::find(3);
        $this->actingAs($login_user_id);
        $response = $this->get('edit/15');
        $response->assertStatus(200);

        $updateData = [
            'book_id' => 298,
            'user_Id' => 3,
            'category_id' => fake()->numberBetween(1, 8),
            'content' => fake()->realText(30),
            'read_date' => fake()->date("Y-m-d")
        ];

        $response = $this->put(route('record.update', ['record_id' => 15]), $updateData);
        $response->assertRedirect(route('index'));
    }

    public function test_自分の感想から感想編集(): void
    {
        $login_user_id = User::find(3);
        $this->actingAs($login_user_id);
        $response = $this->get('user/my/3/edit/15');
        $response->assertStatus(200);

        $updateData = [
            'book_id' => 298,
            'user_Id' => 3,
            'category_id' => fake()->numberBetween(1, 8),
            'content' => fake()->realText(30),
            'read_date' => fake()->date("Y-m-d")
        ];

        $response = $this->put(route('user.record.update', ['user_id' => 3,'record_id' => 15]), $updateData);
        $response->assertRedirect(route('my.record', ['user_id' => 3]));
    }
}
