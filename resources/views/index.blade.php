<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
    <h1>こんにちは</h1>
    <h1>本検索</h1>
    <form action="{{ route('index.search') }}" method="post">
        <input type="text" name="search_keyword" id="" placeholder="キーワードを入力してください">
        <input type="submit" value="送信">
    </form>
</body>
</html>
