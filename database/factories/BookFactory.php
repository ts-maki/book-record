<?php

namespace Database\Factories;

use App\Models\Book;
use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Str;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Book>
 */
class BookFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'google_book_id' => Str::random(12),
            'title' => fake()->realText(10),
            'author' => fake()->name(),
            'description' => fake()->realText(30),
            'published_date' => fake()->date('Y-m-d')
        ];
    }
}
