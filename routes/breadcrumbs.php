<?php

// routes/breadcrumbs.php

// Note: Laravel will automatically resolve `Breadcrumbs::` without
// this import. This is nice for IDE syntax and refactoring.

use App\Models\User;
use Diglactic\Breadcrumbs\Breadcrumbs;
// This import is also not required, and you could replace `BreadcrumbTrail $trail`
//  with `$trail`. This is nice for IDE type checking and completion.
use Diglactic\Breadcrumbs\Generator as BreadcrumbTrail;

// Home
Breadcrumbs::for('home', function (BreadcrumbTrail $trail) {
    $trail->push('みんなの感想', route('index'));
});

// 自分の感想
Breadcrumbs::for('my-record', function (BreadcrumbTrail $trail) {
    $trail->parent('home');
    $trail->push('自分の感想', url('user/my/{user_id}'));
});

// 指定ユーザーの感想
Breadcrumbs::for('user-record', function (BreadcrumbTrail $trail, $user_name) {
    $trail->parent('home');
    $trail->push($user_name.'さんの感想', url('user/{user_id}'));
});

// 自分のお気に入り
Breadcrumbs::for('my-favorite', function (BreadcrumbTrail $trail) {
    $trail->parent('home');
    $trail->push('お気に入り', url('favorite/{user_id}'));
});

//検索
Breadcrumbs::for('search', function (BreadcrumbTrail $trail) {
    $trail->parent('home');
    $trail->push('本の検索', route('search'));
});

//登録
Breadcrumbs::for('create', function (BreadcrumbTrail $trail) {
    $trail->parent('home');
    $trail->push('感想の登録', url('/create/{id}'));
});

// 編集
Breadcrumbs::for('edit', function (BreadcrumbTrail $trail) {
    $trail->parent('home');
    $trail->push('編集', url('/edit/{record_id}'));
});

//削除
Breadcrumbs::for('delete', function (BreadcrumbTrail $trail) {
    $trail->parent('home');
    $trail->push('感想削除', url('/delete/{record_id}'));
});

//プロフィール編集
Breadcrumbs::for('profile.edit', function (BreadcrumbTrail $trail) {
    $trail->parent('home');
    $trail->push('プロフィール編集', route('profile.edit'));
});

//ユーザー登録
Breadcrumbs::for('auth.register', function (BreadcrumbTrail $trail) {
    $trail->parent('home');
    $trail->push('ユーザー登録', route('register'));
});

//ユーザー登録
Breadcrumbs::for('auth.login', function (BreadcrumbTrail $trail) {
    $trail->parent('home');
    $trail->push('ログイン', route('login'));
});
