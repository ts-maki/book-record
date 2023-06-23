<x-layout>
    <div x-cloak x-data="{ dialogOpen : false, dialogData: {} }" class="m-0 p-0 w-screen h-screen">
        <x-element.breadcrumbs>
            {{ Breadcrumbs::render('home') }}
        </x-element.breadcrumbs>
        <x-layout.container>
            <section>
                @foreach ($records as $record)
                <article
                    class="flex flex-col rounded-lg border sm:flex-row mt-6 bg-white drop-shadow-md relative sm:max-h-[182px]">
                    <img src="{{ $record->book->thumbnail_path }}" class="rounded-l-lg md:max-w-[182px]">
                    <div class="flex flex-col py-2 px-4 flex-1 justify-between">
                        <div class="">
                            <div class="flex justify-between">
                                <h3 class="text-lg font-bold text-gray-800 w-2/3">
                                    {{ $record->book->title }}
                                </h3>
                                <p>投稿者: {{ $record->user->name }}さん</p>
                            </div>
                            <x-element.category :category_name="$record->category->name"></x-element.category>
                            <p class="text-gray-500">
                                {{ $record->content }}
                            </p>
                        </div>
                        <div class="flex justify-between items-center" x-data="{ favorite: {} }">
                            @auth
                            @if (!Auth::user()->checkFavorite($record->id))
                                <button @click="entryFavorite({{ $record->id }})" type="submit"
                                    class="px-2 border-yellow-300 border-solid border-2 rounded-full hover:text-white hover:bg-yellow-300 duration-300 focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:ring-offset-2">お気に入り登録</button>
                            @else
                            <button @click="deleteFavorite({{ $record->id }})" type="submit"
                                class="px-2 border-red-300 border-solid border-2 rounded-full hover:text-white hover:bg-red-300 duration-300 focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:ring-offset-2">お気に入り削除</button>
                            @endif
                            @endauth
                            @auth
                            @if (Auth::id() !== $record->user_id)
                            <div>
                                <a href="{{ route('other.book.record', ['id' => $record->book->id]) }}"
                                    class="px-2 border-green-300 border-solid border-2 rounded-full hover:text-white hover:bg-green-300 duration-300 focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:ring-offset-2">この本の感想を登録する</a>
                            </div>
                            @endauth
                            @endif
                            @if (Auth::id() === $record->user_id)
                            <div class="flex">
                                <div class="translate-y-[2px]">
                                    <a href="{{ route('record.edit', ['record_id' => $record->id]) }}"
                                        class="px-2 border-blue-300 border-solid border-2 rounded-full hover:text-white hover:bg-blue-300 duration-300 focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:ring-offset-2">編集</a>
                                </div>
                                <div class="pl-6">
                                    <button
                                        @click="dialogOpen = true, dialogData = { recordId: '{{ $record->id }}', bookThumbnail: '{{ $record->book->thumbnail_path }}', bookTitle: '{{ $record->book->title }}', bookAuthor: '{{ $record->book->author }}', recordContent: '{{ $record->content }}' }"
                                        class="px-2 border-red-300 border-solid border-2 rounded-full hover:text-white hover:bg-red-300 duration-300 focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:ring-offset-2">削除</button>
                                </div>
                            </div>
                            @endif
                        </div>
                    </div>
                </article>
                @endforeach
            </section>
            <div class="mx-auto pt-4">
                {{ $records->links() }}
            </div>
            @auth
            <div class="relative">
                <a href="{{ route('search') }}"
                    class="fixed bottom-24 right-10 xl:right-1/4 xl:translate-x-40 py-2 px-4 text-white bg-blue-600 rounded-full hover:bg-blue-400 duration-300 shadow-xl shadow-gray-400">感想<span
                        class="block"></span>登録</a>
            </div>
            @endauth
        </x-layout.container>

        <!-- ダイアログ -->
        @include('delete')

    </div>
</x-layout>
<script>
    // 削除ダイアログ
    function deleteRecord(recordId) {
        console.log("IDは" + recordId);
        const url = '/delete/' + recordId;
        fetch(url, {
            method: 'DELETE',
            headers: {
                'X-CSRF-TOKEN': '{{ csrf_token() }}',
            },
        })
        .then(response => {
            console.log('削除成功');
            console.log(Alpine.store('dialogOpen'))
            Alpine.store('dialogOpen', false);
            console.log(Alpine.store('dialogOpen'))
            location.reload();
            // return dialogOpen;
        })
        .catch(error => {
            console.log("エラーが発生しました:", error);
        });
    }

    //お気に入り登録
    function entryFavorite(recordId) {
        console.log(`お気に入り登録のIDは:${recordId}`);
        const url = '/index/' + recordId;
        fetch(url, {
            method: 'POST',
            headers: {
                'X-CSRF-TOKEN': '{{ csrf_token() }}',
            },
        })
        .then(response => {
            console.log(response);
            console.log('お気に入り登録成功');
            location.reload();
        })
        .catch(error => {
            console.log("エラーが発生しました:", error);
        });
    }

    //お気に入り削除
    function deleteFavorite(recordId) {
        console.log(`お気に入り登録のIDは:${recordId}`);
        const url = '/index/' + recordId;
        fetch(url, {
            method: 'DELETE',
            headers: {
                'X-CSRF-TOKEN': '{{ csrf_token() }}',
            },
        })
        .then(response => {
            console.log(response);
            console.log('お気に入り削除成功');
            location.reload();
        })
        .catch(error => {
            console.log("エラーが発生しました:", error);
        });
    }
</script>
