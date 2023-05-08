<x-layout>
    <h1></h1>
    <h1>感想の編集</h1>
    <div class="flex">
        <img src="{{ $record->book->thumbnail_path }}">
        <div>
            <p>{{ $record->book->title }}</p>
            <p>{{ $record->book->author }}</p>
            <p>{{ $record->read_date }}</p>
            <p>{{ $record->category->name }}</p>
        </div>
    </div>
    <form action="{{ route('record.update', $record->id) }}" method="post">
        @method('PUT')
        @csrf
        @for ($i = 1; $i <= $record->category->count(); $i++)
            <label><input type="radio" name="category_id" value="{{ $i }}" {{ old('category_id', $record->category_id)
                ===
                $i ? "checked" : ""}}>{{ $record->category->find($i)->name }}</label>
            @endfor
            <h4>感想</h4>
            <div>
                <input type="date" name="read_date" value="{{ old('read_date', $record->read_date) }}">
            </div>
            <textarea name="content" cols="30" rows="10">{{ old('content', $record->content) }}</textarea>
            <input type="submit" value="編集">
    </form>
</x-layout>
