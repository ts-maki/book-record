{{-- お気に入りボタンの押下時の処理で名前付きのrouteを変える --}}
{{-- @php
function toggleFavorite()
{
$flag = true;
$is_toggle = 'favorite.save';
}
@endphp --}}

<x-layout>
    <div class="w-full bg-emerald-50">
        <div class="container mx-auto max-w-4xl">
            <section class=""></section>
            <h1>登録した感想</h1>
            {{-- TODO ゲストユーザーできるようにする --}}
            <div class="pt-6 px-6">
                @foreach ($records as $record)
                <x-element.article :record='$record'></x-element.article>
                @endforeach
            </div>
        </div>
    </div>
</x-layout>
