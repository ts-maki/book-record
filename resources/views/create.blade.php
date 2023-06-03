<x-layout>
    <x-layout.container>
        <h1>感想を登録する</h1>
        <div class="flex py-4">
            <img src="{{ $book->thumbnail_path }}">
            <div class="px-4">
                <p>タイトル: {{ $book->title }}</p>
                <p>著者: {{ $book->author }}</p>
            </div>
        </div>
        <h3>近しいカテゴリーを選んでください</h3>
        <form action="{{ route('book.record', $book->id) }}" method="post" class="book__record-category pt-4">
            @csrf
            <label><input type="radio" name="category" value="ファンタジー">ファンタジー</label>
            <label><input type="radio" name="category" value="恋愛">恋愛</label>
            <label><input type="radio" name="category" value="青春">青春</label>
            <label><input type="radio" name="category" value="SF">SF</label>
            <label><input type="radio" name="category" value="ミステリー">ミステリー</label>
            <label><input type="radio" name="category" value="ホラー">ホラー</label>
            <label><input type="radio" name="category" value="仕事">仕事</label>
            <label><input type="radio" name="category" value="歴史">歴史</label>
            <h4 class="pt-4">感想</h4>
            <div class="pt-4">
                <input type="date" name="date" value="<?php echo date('Y-m-d') ?>">
            </div>
            <textarea name="content" cols="30" rows="10" class="mt-4"></textarea>
            <input type="submit" value="登録" class="block px-2 hover:border-green-200 hover:border-solid hover:border-2 hover:bg-white rounded-full border-2 border-green-300 text-white bg-green-300 duration-300 hover:text-green-300">
        </form>
    </x-layout.container>
</x-layout>
