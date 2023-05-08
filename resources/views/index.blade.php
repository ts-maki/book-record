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
        </div>
    </div>
    @endforeach
</x-layout>
