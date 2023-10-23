@props([
    'category_id' => 'default',
    'user_id'
])

@php
    switch ($category_id) {
    case 1:
        $fantasy_color = 'bg-green-300 text-white';
        $love_color = 'bg-white';
        $youth_color = 'bg-white';
        $SF_color = 'bg-white';
        $mystery_color = 'bg-white';
        $horror_color = 'bg-white';
        $job_color = 'bg-white';
        $history_color = 'bg-white';
        break;
    case 2:
        $fantasy_color = 'bg-white';
        $love_color = 'bg-green-300 text-white';
        $youth_color = 'bg-white';
        $SF_color = 'bg-white';
        $mystery_color = 'bg-white';
        $horror_color = 'bg-white';
        $job_color = 'bg-white';
        $history_color = 'bg-white';
        break;
    case 3:
        $fantasy_color = 'bg-white';
        $love_color = 'bg-white';
        $youth_color = 'bg-green-300 text-white';
        $SF_color = 'bg-white';
        $mystery_color = 'bg-white';
        $horror_color = 'bg-white';
        $job_color = 'bg-white';
        $history_color = 'bg-white';
        break;
    case 4:
        $fantasy_color = 'bg-white';
        $love_color = 'bg-white';
        $youth_color = 'bg-white';
        $SF_color = 'bg-green-300 text-white';
        $mystery_color = 'bg-white';
        $horror_color = 'bg-white';
        $job_color = 'bg-white';
        $history_color = 'bg-white';
        break;
    case 5:
        $fantasy_color = 'bg-white';
        $love_color = 'bg-white';
        $youth_color = 'bg-white';
        $SF_color = 'bg-white';
        $mystery_color = 'bg-green-300 text-white';
        $horror_color = 'bg-white';
        $job_color = 'bg-white';
        $history_color = 'bg-white';
        break;
    case 6:
        $fantasy_color = 'bg-white';
        $love_color = 'bg-white';
        $youth_color = 'bg-white';
        $SF_color = 'bg-white';
        $mystery_color = 'bg-white';
        $horror_color = 'bg-green-300 text-white';
        $job_color = 'bg-white';
        $history_color = 'bg-white';
        break;
    case 7:
        $fantasy_color = 'bg-white';
        $love_color = 'bg-white';
        $youth_color = 'bg-white';
        $SF_color = 'bg-white';
        $mystery_color = 'bg-white';
        $horror_color = 'bg-white';
        $job_color = 'bg-green-300 text-white';
        $history_color = 'bg-white';
        break;
    case 8:
        $fantasy_color = 'bg-white';
        $love_color = 'bg-white';
        $youth_color = 'bg-white';
        $SF_color = 'bg-white';
        $mystery_color = 'bg-white';
        $horror_color = 'bg-white';
        $job_color = 'bg-white';
        $history_color = 'bg-green-300 text-white';
        break;
    default:
        $fantasy_color = 'bg-white';
        $love_color = 'bg-white';
        $youth_color = 'bg-white';
        $SF_color = 'bg-white';
        $mystery_color = 'bg-white';
        $horror_color = 'bg-white';
        $job_color = 'bg-white';
        $history_color = 'bg-white';
        break;
}
@endphp

<div class="flex justify-center">
    <div class=" border-green-300 border-solid border-2 rounded-l-lg hover:text-white hover:bg-green-300 duration-300 {{ $fantasy_color }}">
        <a href="{{ route('my.record.category', ['category_id' => 1, 'user_id' => $user_id]) }}" class="px-2">{{ $fantasy }}</a>
    </div>
    <div class=" border-green-300 border-solid border-t-2 border-b-2 border-r-2  hover:text-white hover:bg-green-300 duration-300 {{ $love_color }}">
        <a href="{{ route('my.record.category', ['category_id' => 2, 'user_id' => $user_id]) }}" class="px-2">{{ $love }}</a>
    </div>
    <div class=" border-green-300 border-solid border-t-2 border-b-2 border-r-2 hover:text-white hover:bg-green-300 duration-300 {{ $youth_color }}">
        <a href="{{ route('my.record.category', ['category_id' => 3, 'user_id' => $user_id]) }}" class="px-2">{{ $youth }}</a>
    </div>
    <div class=" border-green-300 border-solid border-t-2 border-b-2 border-r-2 hover:text-white hover:bg-green-300 duration-300 {{ $SF_color }}">
        <a href="{{ route('my.record.category', ['category_id' => 4, 'user_id' => $user_id]) }}" class="px-2">{{ $SF }}</a>
    </div>
    <div class=" border-green-300 border-solid border-t-2 border-b-2 border-r-2 hover:text-white hover:bg-green-300 duration-300 {{ $mystery_color }}">
        <a href="{{ route('my.record.category', ['category_id' => 5, 'user_id' => $user_id]) }}" class="px-2">{{ $mystery }}</a>
    </div>
    <div class=" border-green-300 border-solid border-t-2 border-b-2 border-r-2 hover:text-white hover:bg-green-300 duration-300 {{ $horror_color }}">
        <a href="{{ route('my.record.category', ['category_id' => 6, 'user_id' => $user_id]) }}" class="px-2">{{ $horror }}</a>
    </div>
    <div class=" border-green-300 border-solid border-t-2 border-b-2 border-r-2 hover:text-white hover:bg-green-300 duration-300 {{ $job_color }}">
        <a href="{{ route('my.record.category', ['category_id' => 7, 'user_id' => $user_id]) }}" class="px-2">{{ $job }}</a>
    </div>
    <div class=" border-green-300 border-solid border-b-2 border-r-2 border-t-2 rounded-r-lg hover:text-white hover:bg-green-300 duration-300 {{ $history_color }}">
        <a href="{{ route('my.record.category', ['category_id' => 8, 'user_id' => $user_id]) }}" class="px-2">{{ $history }}</a>
    </div>
</div>
