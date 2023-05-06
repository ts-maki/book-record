<!DOCTYPE html>
<html lang="ja">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>

<body>
    <h1>本検索</h1>
    <form action="{{ route('search') }}" method="post">
        @csrf
        <input type="text" name="serach_keyword" id="" placeholder="キーワードを入力してください">
        <input type="submit" value="送信">
    </form>
    <h2>検索結果</h2>
    @if (!empty($books))
        @foreach ($books as $book)
            <p>{{ $book['description'] }}</p>
        @endforeach
    @endif

</body>

</html>
