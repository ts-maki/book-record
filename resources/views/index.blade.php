<x-layout>
    <x-layout.container>
        <section>
            {{-- TODO ゲストユーザーできるようにする --}}

                @foreach ($records as $record)
                <x-article :record='$record'></x-article>
                @endforeach

        </section>
        <div class="relative">
            <a href="{{ route('search') }}"
                class="fixed bottom-24 right-10 py-2 px-4 text-white bg-blue-600 rounded-full hover:bg-blue-400 duration-300 drop-shadow-2xl">感想<span
                    class="block"></span>登録</a>
        </div>
    </x-layout.container>
</x-layout>
