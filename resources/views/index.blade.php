<x-layout>
    <h1></h1>
    <h1>登録した感想</h1>
    @foreach ($records as $record)
    <div class="flex">
        <img src="{{ $record->book->thumbnail_path }}">
        <div>
            <h4>{{ $record->book->title }}</h4>
            <hr>
            <p>{{ $record->content }}</p>
                <button type="submit"></button>
                @if (Auth::id() === $record->user_id)
                    <div>
                        <a href="{{ route('record.edit', ['record_id' => $record->id]) }}">編集</a>
                        {{-- 削除モーダルはlaravelのInertiaでVueを使ってみる --}}
                    </div>
                @endif
        </div>
    </div>
    @endforeach
</x-layout>
