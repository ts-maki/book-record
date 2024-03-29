<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="本の感想記録" />
    <meta name="format-detection" content="telephone=no" />
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <link rel="icon" href="{{ asset('/favicon.ico') }}" />
    <link rel="apple-touch-icon" href="{{ asset('/favicon.ico') }}" />
    <meta property="og:site_name" content="本の感想記録" />
    {{-- TODO 本番環境のURLにする --}}
    <meta property="og:url" content="URL" />
    <meta property="og:type" content="website" />
    <meta property="og:title" content="本の感想記録" />
    <meta property="og:description" content="ページの説明" />
    <meta property="og:locale" content="ja_JP" />
    {{-- TODO 本番環境のシェア用画像のURLを絶対パスで指定する --}}
    <meta property="og:image" content="URL" />
    <meta name="twitter:card" content="summary_large_image" />
    <meta name="twitter:description" content="本の感想記録" />
    {{-- TODO Twitter専用の記述です。シェアされた時に表示したい画像を絶対パスで設定 --}}
    <meta name="twitter:image:src" content="URL" />
    @vite(['resources/css/app.css', 'resources/js/app.js'])
    <title>本の感想共有アプリ</title>
</head>

<body class="bg-emerald-50">
    <x-layout.header></x-layout.header>
    <main>
        {{ $slot }}
    </main>
</body>

</html>
