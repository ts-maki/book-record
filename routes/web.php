<?php

use App\Http\Controllers\CreateRecordController;
use App\Http\Controllers\DeleteRecordController;
use App\Http\Controllers\EditRecordController;
use App\Http\Controllers\FavoriteController;
use App\Http\Controllers\ListController;
use App\Http\Controllers\ProfileController;
use App\Http\Controllers\SearchBookController;
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

Route::get('/', [ListController::class, 'index'])->name('index');
Route::get('/user/{user_id}', [ListController::class, 'showUserRecord'])->name('user.record');
Route::get('/category/{category_id}', [ListController::class, 'showCategoryRecord'])->name('category');

Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');

    //一覧
    Route::get('/user/my/{user_id}', [ListController::class, 'showMyRecord'])->name('my.record');
    Route::get('/favorite/{user_id}', [ListController::class, 'showFavorite'])->name('my.favorite');
    Route::get('/user/{user_id}/category/{category_id}', [ListController::class, 'showMyRecordCategory'])->name('my.record.category');
    Route::get('/user/{user_id}/favorite/category/{category_id}', [ListController::class, 'showMyFavoriteCategory'])->name('my.favorite.category');

    //検索
    Route::get('/search', [SearchBookController::class, 'show'])->name('search');
    Route::get('/search/book', [CreateRecordController::class, 'searchBook'])->name('book.search');

    //感想登録
    Route::get('/search/{id}', [CreateRecordController::class, 'create'])->name('book.create');
    Route::get('/create/other/{id}', [CreateRecordController::class, 'otherCreate'])->name('other.book.record');
    Route::post('/search/{id}', [CreateRecordController::class, 'create'])->name('book.create');
    Route::post('/create/{id}', [CreateRecordController::class, 'addRecord'])->name('book.record');

    //感想更新
    Route::get('/edit/{record_id}', [EditRecordController::class, 'edit'])->name('record.edit');
    Route::get('/user/my/{user_id}/edit/{record_id}', [EditRecordController::class, 'edit'])->name('user.record.edit');
    Route::get('/favorite/{user_id}/edit/{record_id}', [EditRecordController::class, 'edit'])->name('favorite.record.edit');
    Route::put('/edit/{record_id}', [EditRecordController::class, 'update'])->name('record.update');
    Route::put('/user/my/{user_id}/edit/{record_id}', [EditRecordController::class, 'update'])->name('user.record.update');
    Route::put('/favorite/{user_id}/edit/{record_id}', [EditRecordController::class, 'update'])->name('favorite.record.update');

    //お気に入り登録・削除
    Route::post('/index/{record_id}', [FavoriteController::class, 'saveFavorite'])->name('favorite.save');
    Route::delete('/index/{record_id}', [FavoriteController::class, 'destroyFavorite'])->name('favorite.destroy');

    //感想削除
    Route::delete('/delete/{record_id}', [DeleteRecordController::class, 'delete'])->name('record.delete');
});

require __DIR__ . '/auth.php';
