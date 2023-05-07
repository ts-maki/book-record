<x-layout>
    <h1>感想を登録する</h1>
    <div class="flex">
        <img src="{{ $book->thumbnail_path }}">
        <div>
            <p>{{ $book->title }}</p>
            <p>{{ $book->author }}</p>
        </div>
    </div>
    <h3>カテゴリーを選んでください</h3>
    <form action="{{ route('book.record', $book->id) }}" method="post">
        @csrf
        <label><input type="radio" name="category">ファンタジー</label>
        <label><input type="radio" name="category">恋愛</label>
        <label><input type="radio" name="category">青春</label>
        <label><input type="radio" name="category">SF</label>
        <label><input type="radio" name="category">ミステリー</label>
        <label><input type="radio" name="category">ホラー</label>
        <label><input type="radio" name="category">歴史</label>
        <h4>感想</h4>
        <input type="text" name="content">
        <input type="submit" value="登録">
    </form>
</x-layout>
