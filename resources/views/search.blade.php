<x-layout>
    <h1>本検索</h1>
    <form action="{{ route('book.search') }}" method="post">
        @csrf
        <input type="text" name="serach_keyword" id="" placeholder="キーワードを入力してください">
        <input type="submit" value="送信">
    </form>
    <h2>検索結果</h2>
    @if (!empty($books))
    @foreach ($books as $book)
    <div class="flex">
        <img src="{{ $book['thumbnail_path'] }}">
        <div>
            <h4 class="text-blue-800">{{ $book['title'] }}</h4>
            <p>{{ $book['author'] }}</p>
            <p>{{ $book['description'] }}</p>
        </div>

    </div>
    @endforeach
    @endif

</x-layout>
