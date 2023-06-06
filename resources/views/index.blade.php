<x-layout>
    <x-element.breadcrumbs>
        {{ Breadcrumbs::render('home') }}
    </x-element.breadcrumbs>
    <x-layout.container>
        <section>
            {{-- TODO ゲストユーザーできるようにする --}}
            @foreach ($records as $record)
            <article class="flex flex-col rounded-lg border sm:flex-row mt-6 bg-white drop-shadow-md relative sm:max-h-[182px]">
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
                    <div class="flex justify-between items-center">
                        @auth
                        @if (!Auth::user()->checkFavorite($record->id))
                        <form action="{{ route('favorite.save',  ['record_id' => $record->id]) }}" method="post">
                            @csrf
                            <button type="submit"
                                class="px-2 border-yellow-300 border-solid border-2 rounded-full hover:text-white hover:bg-yellow-300 duration-300">お気に入り登録</button>
                        </form>
                        @else
                        <form action="{{ route('favorite.destroy', ['record_id' => $record->id]) }}" method="post">
                            @csrf
                            @method('DELETE')
                            <button type="submit"
                                class="px-2 border-red-300 border-solid border-2 rounded-full hover:text-white hover:bg-red-300 duration-300">お気に入り削除</button>
                        </form>
                        @endif
                        @endauth
                        @auth
                        @if (Auth::id() !== $record->user_id)
                        <div>
                            <a href="{{ route('other.book.record', ['id' => $record->book->id]) }}"
                                class="px-2 border-green-300 border-solid border-2 rounded-full hover:text-white hover:bg-green-300 duration-300">この本の感想を登録する</a>
                        </div>
                        @endauth
                        @endif
                        @if (Auth::id() === $record->user_id)
                        <div class="flex">
                            <div>
                                <a href="{{ route('record.edit', ['record_id' => $record->id]) }}"
                                    class="px-2 border-blue-300 border-solid border-2 rounded-full hover:text-white hover:bg-blue-300 duration-300">編集</a>
                            </div>
                            <div class="pl-6">
                                <a href="{{ route('record.check', ['record_id' => $record->id]) }}"
                                    class="px-2 border-red-300 border-solid border-2 rounded-full hover:text-white hover:bg-red-300 duration-300">削除</a>
                            </div>
                        </div>
                        @endif
                    </div>
                </div>
            </article>
            @endforeach

        </section>
        @auth
        <div class="relative">
            <a href="{{ route('search') }}"
                class="fixed bottom-24 right-10 xl:right-1/4 xl:translate-x-40 py-2 px-4 text-white bg-blue-600 rounded-full hover:bg-blue-400 duration-300 drop-shadow-2xl">感想<span
                    class="block"></span>登録</a>
        </div>
        @endauth
    </x-layout.container>
</x-layout>
