<!DOCTYPE html>
<html lang="ja">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    @vite('resources/css/app.css')
    <title>本の感想共有アプリ</title>
</head>

<body>
    <x-header></x-header>
    {{ $slot }}
</body>

</html>
