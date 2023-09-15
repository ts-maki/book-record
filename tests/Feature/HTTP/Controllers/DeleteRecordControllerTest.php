<?php

namespace Tests\Feature\HTTP\Controllers;

use App\Models\BookRecord;
use App\Models\User;
use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Tests\TestCase;

class DeleteRecordControllerTest extends TestCase
{

    public function test_感想削除(): void
    {
        $login_user_id = User::find(4);
        $this->actingAs($login_user_id);

        //感想登録
        $recordData = [
            'book_id' => 289,
            'user_id' => 4,
            'category' => 'ファンタジー',
            'content' => fake()->realText(30),
            'date' => fake()->date("Y-m-d")
        ];

        $response = $this->post(route('book.record', ['id' => 289]), $recordData);
        $response->assertRedirect(route('index'));

        //感想削除
        $last_record_id = BookRecord::all()->last()->id;
        $response = $this->delete(route('record.delete', ['record_id' => $last_record_id]));
        $response->assertStatus(200);
    }
}
