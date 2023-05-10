<?php

use App\Http\Controllers\Book\BookController;
use App\Http\Controllers\ProfileController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});
Route::get('/index',[BookController::class, 'index'])->name('index');
Route::get('/search', [BookController::class, 'show'])->name('search');
Route::post('/search', [BookController::class, 'searchBook'])->name('book.search');

Route::post('/search/{id}', [BookController::class, 'create'])->name('book.create');
Route::post('/create/{id}', [BookController::class, 'addRecord'])->name('book.record');

Route::get('/edit/{record_id}', [BookController::class, 'edit'])->name('record.edit');
Route::put('/edit/{record_id}', [BookController::class, 'update'])->name('record.update');
Route::get('/edit/{record_id}', [BookController::class, 'edit'])->name('record.edit');
Route::get('/delete/{record_id}', [BookController::class, 'check'])->name('record.check');
Route::delete('/delete/{record_id}', [BookController::class, 'delete'])->name('record.delete');

// Route::get('test', [TestController::class, 'testFunction']);

Route::get('/dashboard', function () {
    return view('dashboard');
})->middleware(['auth', 'verified'])->name('dashboard');

Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
});

require __DIR__.'/auth.php';
