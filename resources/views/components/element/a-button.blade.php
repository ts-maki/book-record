@props(['link', 'category'])

@php
    switch ($category) {
    case 'record':
        $style = 'border-green-300 hover:bg-green-300';
        break;
    case 'edit':
        $style = 'border-blue-300 hover:bg-blue-300';
        break;
    default:
        $style = '';
        break;
    }
@endphp

<a href="{{ $link }}" class="px-2 border-solid border-2 rounded-full hover:text-white duration-300 focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:ring-offset-2 {{ $style }}">
    {{ $slot }}
</a>
