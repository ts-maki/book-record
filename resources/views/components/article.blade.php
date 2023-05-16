@props(
['record',]
)
<article class="flex flex-col rounded-lg border sm:flex-row mt-6 bg-white drop-shadow-md">
    <img src="{{ $record->book->thumbnail_path }}" class="rounded-l-lg">
    <div class="flex flex-col py-2 px-4 flex-1 justify-between">
        <div class="">
            <div class="flex justify-between items-center">
                <h3 class="text-lg font-bold text-gray-800 pt-2">
                    {{ $record->book->title }}
                </h3>
                <p>{{ $record->book->author }}</p>
            </div>
            <x-element.category :category_name="$record->category->name"></x-element.category>
            <p class="text-gray-500">
                {{ $record->content }}
            </p>
        </div>
        <div class="flex justify-between">
            @auth
            @if (!Auth::user()->checkFavorite($record->id))
            <form action="{{ route('favorite.save',  ['record_id' => $record->id]) }}" method="post">
                @csrf
                <button type="submit" class="px-2 border-yellow-300 border-solid border-2 rounded-full">お気に入り登録</button>
            </form>
            @else
            <form action="{{ route('favorite.destroy', ['record_id' => $record->id]) }}" method="post">
                @csrf
                @method('DELETE')
                <button type="submit" class="px-2 border-red-300 border-solid border-2 rounded-full">お気に入り削除</button>
            </form>
            @endif
            @endauth
            @if (Auth::id() !== $record->user_id)
            <div>
                <a href="{{ route('other.book.record', ['id' => $record->book->id]) }}"
                    class="px-2 border-green-200 border-solid border-2 rounded-full">この本を感想に登録する</a>
            </div>
            @endif
            @if (Auth::id() === $record->user_id)
            <div class="flex">
                <div>
                    <a href="{{ route('record.edit', ['record_id' => $record->id]) }}"
                        class="px-2 border-blue-300 border-solid border-2 rounded-full">編集</a>
                </div>
                <div class="pl-6">
                    <a href="{{ route('record.check', ['record_id' => $record->id]) }}"
                        class="px-2 border-red-300 border-solid border-2 rounded-full">削除</a>
                </div>
            </div>
            @endif
        </div>
    </div>
</article>
