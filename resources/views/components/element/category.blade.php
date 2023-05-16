@props(
    ['category_name',]
)
@php
if (!function_exists('changeCategoryColor')) {
    function changeCategoryColor($category_name) {
    return match($category_name) {
    'ファンタジー' => 'bg-indigo-600',
    '恋愛' => 'bg-pink-500',
    '青春' => 'bg-cyan-300',
    'SF' => 'bg-blue-600',
    'ミステリー' => 'bg-amber-600',
    'ホラー' => 'bg-violet-600',
    '仕事' => 'bg-red-600',
    '歴史' => 'bg-orange-600',
    default => '',
    };
    }
}
@endphp
<span class="text-white text-sm px-2 rounded-full {{ changeCategoryColor($category_name) }}">{{ $category_name }}</span>
