<x-layout>
    <x-element.breadcrumbs>
        {{ Breadcrumbs::render('search') }}
    </x-element.breadcrumbs>
    <x-layout.container>
        <p>本の検索(50文字以内)</p>
        <form action="{{ route('book.search') }}" method="get">
            <input type="search" name="search_keyword" placeholder="タイトルか作者名を入力してね！"
                value="{{ request('search_keyword') }}"
                class="max-sm:w-10/12 sm:w-2/3 rounded border bg-gray-50 px-3 py-2 text-gray-800 outline-none ring-indigo-300 transition duration-100 focus:ring2"
                maxlength="50" />
            <button type="submit" value="検索" class="-translate-x-8 translate-y-2 scale-150"><img
                    src="{{ asset('storage/images/search_black_24dp.svg') }}"></button>
        </form>
        <x-input-error class="mt-2" :messages="$errors->get('search_keyword')" />
        @if (!empty($books))
        @if  (is_bool($books) !== false)
        <p class="mt-2 text-red-500">本の検索APIのリクエスト超過です。申し訳ありませんが、翌日ご利用ください。</p>
        <p class="mt-2 text-red-500">対策を現在検討中です。</p>
        @endif
        @if  (is_string($books) !== false)
        <p class="mt-2 text-red-500">検索結果が0件です</p>
        @endif
        @if (is_array($books))
        @foreach ($books as $book)
        <div class="flex flex-col rounded-lg border sm:flex-row mt-6 bg-white drop-shadow-md">
            <img src="{{ $book['thumbnail_path'] }}"
                class="rounded-l-lg md:max-w-[182px] max-sm:w-[200px] max-sm:h-[300px] max-sm:mx-auto max-sm:rounded-none max-sm:pt-2">
            <div class="px-4 grow flex flex-col justify-between py-2">
                <div>
                    <div class="flex justify-between">
                        <h3 class="text-lg font-bold text-gray-800">{{ $book['title'] }}</h3>
                        <p>{{ $book['author'] }}</p>
                    </div>
                    <p>{{ Util::limitTextLength($book['description'], 150) }}</p>
                </div>
                <div>
                    <div class="flex justify-between">
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
                            <input type="submit" value="登録"
                                class="px-2 hover:border-green-200 hover:border-solid hover:border-2 hover:bg-white rounded-full border-2 border-green-300 text-white bg-green-300 duration-300 hover:text-green-300 focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:ring-offset-2">
                        </form>
                    </div>
                </div>
            </div>
        </div>
        @endforeach
        @endif
        @endif
    </x-layout.container>
</x-layout>
