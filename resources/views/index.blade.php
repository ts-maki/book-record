<x-layout>
    <div x-data="{ open : false, dialogData: {} }" class="m-0 p-0 w-screen h-screen">
        <x-element.breadcrumbs>
            {{ Breadcrumbs::render('home') }}
        </x-element.breadcrumbs>
        <x-layout.container>
            <section>
                {{-- TODO ゲストユーザーできるようにする --}}
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
                            {{-- <form action="{{ route('favorite.save',  ['record_id' => $record->id]) }}"
                                method="post">
                                @csrf --}}
                                <button @click="entryFavorite({{ $record->id }})" type="submit"
                                    class="px-2 border-yellow-300 border-solid border-2 rounded-full hover:text-white hover:bg-yellow-300 duration-300 focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:ring-offset-2">お気に入り登録</button>
                                {{--
                            </form> --}}
                            @else
                            {{-- <form action="{{ route('favorite.destroy', ['record_id' => $record->id]) }}"
                                method="post">
                                @csrf
                                @method('DELETE') --}}
                                <button @click="deleteFavorite({{ $record->id }})" type="submit"
                                    class="px-2 border-red-300 border-solid border-2 rounded-full hover:text-white hover:bg-red-300 duration-300 focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:ring-offset-2">お気に入り削除</button>
                                {{--
                            </form> --}}
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
                                <div>
                                    <a href="{{ route('record.edit', ['record_id' => $record->id]) }}"
                                        class="px-2 border-blue-300 border-solid border-2 rounded-full hover:text-white hover:bg-blue-300 duration-300 focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:ring-offset-2">編集</a>
                                </div>
                                <div class="pl-6">
                                    <button
                                        @click="open = true, dialogData = { recordId: '{{ $record->id }}', bookThumbnail: '{{ $record->book->thumbnail_path }}', bookTitle: '{{ $record->book->title }}', bookAuthor: '{{ $record->book->author }}', recordContent: '{{ $record->content }}' }"
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
        <div x-show="open" class="fixed top-0 left-0 w-screen h-screen flex justify-center items-center"
            x-transition:enter-start="opacity-0 scale-90">
            <div class="absolute w-full h-full bg-green-300 opacity-30"></div>
            <div @click.outside="open = false"
                class="relative w-5/6 max-w-xl h-1/2 m-auto bg-white border rounded-md shadow">
                <div class="px-4">
                    <x-layout.container class="bg-white rounded-lg py-4">
                        <h3 class="pb-2 border-b-2 border-green-200">感想削除確認</h3>
                        <div class="flex pt-2">
                            <img :src="dialogData.bookThumbnail" class="rounded-l-lg md:max-w-[182px]">
                            <div class="pl-2">
                                <p class="text-2xl" x-text="dialogData.bookTitle"></p>
                                <p x-text="dialogData.bookAuthor"></p>
                            </div>
                        </div>
                        <div class="pt-4">
                            <p class="sm:w-1/3">感想</p>
                            <p class="mt-2 py-2 px-4  border-2 border-gray-300 rounded-lg"
                                x-text="dialogData.recordContent"></p>
                        </div>
                        <div class="pt-4 flex justify-center">
                            <button @click="open = false"
                                class="px-2 border-blue-300 border-solid border-2 rounded-full hover:text-white hover:bg-blue-300 duration-300 focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:ring-offset-2">キャンセル</button>
                            <button @click="deleteRecord(dialogData.recordId, open)"
                                class="ml-6 px-2 border-red-300 border-solid border-2 rounded-full hover:text-white hover:bg-red-300 duration-300 focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:ring-offset-2">削除</button>
                        </div>
                    </x-layout.container>
                </div>
            </div>
        </div>

    </div>
</x-layout>
<script>
    //削除ダイアログ
    function deleteRecord(recordId, open) {
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
            console.log(open);
            open = false;
            console.log(open);
            const dialog = document.querySelector('[x-data="{ open: false }"]');
        dialog.open = false;
            // location.reload();
        })
        .catch(error => {
            console.log("エラーが発生しました:", error);
        });
    }
    window.addEventListener('DOMContentLoaded', () => {
    const dialog = document.querySelector('[x-data="{ open: false }"]');
    dialog.__x.$data.open = false;

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
