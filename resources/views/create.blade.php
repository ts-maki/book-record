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
        <label><input type="radio" name="category" value="ファンタジー">ファンタジー</label>
        <label><input type="radio" name="category" value="恋愛">恋愛</label>
        <label><input type="radio" name="category" value="青春">青春</label>
        <label><input type="radio" name="category" value="SF">SF</label>
        <label><input type="radio" name="category" value="ミステリー">ミステリー</label>
        <label><input type="radio" name="category" value="ホラー">ホラー</label>
        <label><input type="radio" name="category" value="仕事">仕事</label>
        <label><input type="radio" name="category" value="歴史">歴史</label>
        <h4>感想</h4>
        <div>
            <input type="date" name="date" value="<?php echo date('Y-m-d') ?>">
        </div>
        <textarea name="content" cols="30" rows="10"></textarea>
        <input type="submit" value="登録">
    </form>
</x-layout>
