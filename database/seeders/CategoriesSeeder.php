<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class CategoriesSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('categories')->insert([
            [
                'id' => 1,
                'name' => 'ファンタジー',
                'created_at' => date("Y-m-d"),
                'updated_at' => date("Y-m-d"),
            ],
            [
                'id' => 2,
                'name' => '恋愛',
                'created_at' => date("Y-m-d"),
                'updated_at' => date("Y-m-d"),
            ],
            [
                'id' => 3,
                'name' => '青春',
                'created_at' => date("Y-m-d"),
                'updated_at' => date("Y-m-d"),
            ],
            [
                'id' => 4,
                'name' => 'SF',
                'created_at' => date("Y-m-d"),
                'updated_at' => date("Y-m-d"),
            ],
            [
                'id' => 5,
                'name' => 'ミステリー',
                'created_at' => date("Y-m-d"),
                'updated_at' => date("Y-m-d"),
            ],
            [
                'id' => 6,
                'name' => 'ホラー',
                'created_at' => date("Y-m-d"),
                'updated_at' => date("Y-m-d"),
            ],
            [
                'id' => 7,
                'name' => '仕事',
                'created_at' => date("Y-m-d"),
                'updated_at' => date("Y-m-d"),
            ],
            [
                'id' => 8,
                'name' => '歴史',
                'created_at' => date("Y-m-d"),
                'updated_at' => date("Y-m-d"),
            ],
        ]);
    }
}
