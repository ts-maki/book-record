<x-layout>
    <div class="w-full bg-emerald-50 py-6">
        <div class="container mx-auto max-w-4xl">
            <section class=""></section>
            <h1>登録した感想</h1>
            {{-- TODO ゲストユーザーできるようにする --}}
            <div class="pt-6 px-6">
                @foreach ($records as $record)
                <x-article :record='$record'></x-article>
                @endforeach
            </div>
        </div>
    </div>
</x-layout>
