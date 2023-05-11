{{-- お気に入りボタンの押下時の処理で名前付きのrouteを変える --}}
{{-- @php
function toggleFavorite()
{
$flag = true;
$is_toggle = 'favorite.save';
}
@endphp --}}

<x-layout>
    <h1></h1>
    <h1>登録した感想</h1>
    {{-- TODO ゲストユーザーできるようにする --}}
    @foreach ($records as $record)
    <div class="flex">
        <img src="{{ $record->book->thumbnail_path }}">
        <div>
            <h4>{{ $record->book->title }}</h4>
            <hr>
            <p>{{ $record->content }}</p>
            <button type="submit"></button>
            @if (Auth::id() === $record->user_id)
            <div>
                <a href="{{ route('record.edit', ['record_id' => $record->id]) }}">編集</a>
            </div>
            <div>
                <a href="{{ route('record.check', ['record_id' => $record->id]) }}">削除</a>
            </div>
            @endif
            @if (!Auth::user()->checkFavorite($record->id))
            <form action="{{ route('favorite.save',  ['record_id' => $record->id]) }}" method="post">
                @csrf
                <button type="submit">お気に入り登録</button>
            </form>
            @else
            <form action="{{ route('favorite.destroy', ['record_id' => $record->id]) }}" method="post">
                @csrf
                @method('DELETE')
                <button type="submit">お気に入り削除</button>
            </form>
            @endif
        </div>
    </div>
    @endforeach
</x-layout>
