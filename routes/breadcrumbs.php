<?php // routes/breadcrumbs.php

// Note: Laravel will automatically resolve `Breadcrumbs::` without
// this import. This is nice for IDE syntax and refactoring.

use App\Models\BookRecord;
use Diglactic\Breadcrumbs\Breadcrumbs;

// This import is also not required, and you could replace `BreadcrumbTrail $trail`
//  with `$trail`. This is nice for IDE type checking and completion.
use Diglactic\Breadcrumbs\Generator as BreadcrumbTrail;

// Home
Breadcrumbs::for('home', function (BreadcrumbTrail $trail) {
    $trail->push('みんなの感想', route('index'));
});

//検索
Breadcrumbs::for('search', function (BreadcrumbTrail $trail) {
    $trail->parent('home');
    $trail->push('本の検索', route('search'));
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



