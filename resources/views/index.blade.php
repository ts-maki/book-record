<x-layout>
    <h1></h1>
    <h1>登録した感想</h1>
    @foreach ($records as $record)
    <img src="{{ $record->book->thumbnail_path }}">
    @endforeach
</x-layout>
