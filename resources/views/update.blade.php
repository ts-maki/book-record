<x-layout>
    <h1></h1>
    <h1>感想の編集</h1>
    <div class="flex">
        <img src="{{ $record->book->thumbnail_path }}">
        <div>
            <p>{{ $record->book->title }}</p>
            <p>{{ $record->book->author }}</p>
            <p>{{ $record->read_date }}</p>
        </div>
    </div>
    <form action="{{ route('record.update', $record->id) }}" method="post">
        @method('PUT')
        @csrf
        <label><input type="radio" name="category_id" value="1" {{ old('category_id', $record->category_id) ===
            1 ? "checked" : ""}}>ファンタジー</label>
        <label><input type="radio" name="category_id" value="2" {{ old('category_id', $record->category_id) ===
            2 ? "checked" : ""}}>恋愛</label>
        <label><input type="radio" name="category_id" value="3" {{ old('category_id', $record->category_id) ===
            3 ? "checked" : ""}}>青春</label>
        <label><input type="radio" name="category_id" value="4" {{ old('category_id', $record->category_id) ===
            4 ? "checked" : ""}}>SF</label>
        <label><input type="radio" name="category_id" value="5" {{ old('category_id', $record->category_id) ===
            5 ? "checked" : ""}}>ミステリー</label>
        <label><input type="radio" name="category_id" value="6" {{ old('category_id', $record->category_id) ===
            6 ? "checked" : ""}}>ホラー</label>
        <label><input type="radio" name="category_id" value="7" {{ old('category_id', $record->category_id) ===
            7 ? "checked" : ""}}>仕事</label>
        <label><input type="radio" name="category_id" value="8" {{ old('category_id', $record->category_id) ===
            8 ? "checked" : ""}}>歴史</label>
        <h4>感想</h4>
        <div>
            <input type="date" name="read_date" value="{{ old('read_date', $record->read_date) }}">
        </div>
        <textarea name="content" cols="30" rows="10">{{ old('content', $record->content) }}</textarea>
        <input type="submit" value="編集">
    </form>
</x-layout>
