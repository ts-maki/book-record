@php
    use App\Services\Common\Util;
@endphp
<x-layout>
    <x-layout.container>
        <h2>本の検索</h2>
        <form action="{{ route('book.search') }}" method="post">
            @csrf
            <input type="search" name="serach_keyword" placeholder="キーワードを入力してください" class="w-1/2 rounded border bg-gray-50 px-3 py-2 text-gray-800 outline-none ring-indigo-300 transition duration-100 focus:ring2" />
            <button type="submit" value="検索"><img src="{{ asset('storage/images/search_black_24dp.svg') }}"></button>
        </form>
        @if (!empty($books))
        <h2>検索結果</h2>

        @foreach ($books as $book)
        <div class="flex">
            <img src="{{ $book['thumbnail_path'] }}">
            <div>
                <h4 class="text-blue-800">{{ $book['title'] }}</h4>
                <p>{{ $book['author'] }}</p>
                <p>{{ Util::limitTextLength($book['description'], 200) }}</p>
                <p>{{ $book['published_date'] }}</p>
                <form action="{{ route('book.create', $book['id']) }}" method="post">
                    @csrf
                    <input type="hidden" name="id" value="{{ $book['id'] }}">
                    <input type="hidden" name="title" value="{{ $book['title'] }}">
                    <input type="hidden" name="author" value="{{ $book['author'] }}">
                    <input type="hidden" name="description" value="{{ $book['description'] }}">
                    <input type="hidden" name="thumbnail_path" value="{{ $book['thumbnail_path'] }}">
                    <input type="hidden" name="isbn" value="{{ $book['isbn'] }}">
                    <input type="hidden" name="published_date" value="{{ $book['published_date'] }}">
                    <input type="submit" value="登録">
                </form>
            </div>
        </div>
        @endforeach
        @endif
    </x-layout.container>
</x-layout>
