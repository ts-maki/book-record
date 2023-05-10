<x-layout>
    <h3>感想削除確認</h3>
    <h4>以下の本の感想を削除します。</h4>
    <div class="flex">
        <img src="{{ $record->book->thumbnail_path }}">
        <div>
            <p>{{ 'タイトル : '. $record->book->title }}</p>
            <p>{{ '著者 : '. $record->book->author }}</p>
            <p>{{ 'カテゴリー : '. $record->category->name }}</p>
            <p>{{ '読んだ日 : '. $record->read_date }}</p>
        </div>
    </div>
    <div>
        <p>感想</p>
        <p>{{ $record->content }}</p>
    </div>
    <form action="{{ route('record.delete', $record->id) }}" method="post">
        @method('DELETE')
        @csrf
        <div>
            <a href="{{ route('index') }}">キャンセル</a>
            <input type="submit" value="削除">
        </div>
    </form>
</x-layout>
