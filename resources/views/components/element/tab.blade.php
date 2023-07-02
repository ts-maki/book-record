@props([
    'selected' => 'list'
])

@php
    switch ($selected) {
    case 'list':
        $list_color = 'bg-blue-300 text-white';
        $my_record_color = 'bg-white';
        $my_favorite_color = 'bg-white';
        break;
    case 'my_record':
        $list_color = 'bg-white';
        $my_record_color = 'bg-blue-300 text-white';
        $my_favorite_color = 'bg-white';
        break;
    case 'my_favorite':
        $list_color = 'bg-white';
        $my_record_color = 'bg-white';
        $my_favorite_color = 'bg-blue-300 text-white';
        break;
    default:
        $list_color = 'bg-white';
        $my_record_color = 'bg-white';
        $my_favorite_color = 'bg-white';
        break;
}
@endphp

<div class="flex justify-center">
    <div class="px-2 border-blue-300 border-solid border-2 rounded-l-lg hover:text-white hover:bg-blue-300 duration-300 {{ $list_color }}">
        <a href="{{ route('index') }}">{{ $index }}</a>
    </div>
    <div class="px-2 border-blue-300 border-solid border-2 hover:text-white hover:bg-blue-300 duration-300 book__list-tab {{ $my_record_color }}">
        <a href="{{ route('my.record', ['user_id' => Auth::id()]) }}">{{ $my_record }}</a>
    </div>
    <div class="px-2 border-blue-300 border-solid border-2 rounded-r-lg hover:text-white hover:bg-blue-300 duration-300 {{ $my_favorite_color }}">
        <a href="{{ route('my.favorite', ['user_id' => Auth::id()]) }}">{{ $my_favorite }}</a>
    </div>
</div>
