<x-layout>
    <div class="w-full bg-emerald-50 py-6">
        <div class="container mx-auto max-w-4xl">
            <section class="">
                {{-- TODO ゲストユーザーできるようにする --}}
                <div class="pt-6 px-6">
                    @foreach ($records as $record)
                    <x-article :record='$record'></x-article>
                    @endforeach
                </div>
            </section>
            <div class="relative">
                <a href="{{ route('search') }}" class="fixed bottom-24 right-10 py-2 px-4 text-white bg-blue-600 rounded-full hover:bg-blue-400 duration-300">感想<span class="block"></span>登録</a>
            </div>
        </div>
    </div>
</x-layout>
