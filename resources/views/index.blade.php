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
        </div>
    </div>
</x-layout>
