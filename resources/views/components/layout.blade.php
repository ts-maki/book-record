<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <link rel="icon" href="{{ asset('./dokusyo_kids.ico') }}" />
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
