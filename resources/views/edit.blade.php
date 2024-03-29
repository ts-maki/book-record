@php
    $user_id = Auth::id();
@endphp
<x-layout>
    <x-element.breadcrumbs>
        {{ Breadcrumbs::render('edit') }}
    </x-element.breadcrumbs>
    <div class="px-4">
        <x-layout.container class="bg-white rounded-lg py-4">
            <h3 class="pb-2 border-b-2 border-green-200">感想の編集</h3>
            <div class="flex pt-2">
                <img src="{{ $record->book->thumbnail_path }}">
                <div class="pl-2">
                    <p class="text-2xl">{{ $record->book->title }}</p>
                    <p>{{ $record->book->author }}</p>
                </div>
            </div>
            <p class="pt-4">近しいカテゴリーを選んでください</p>
            @if (strpos(url()->current(), 'user/my') !==  false)
            <form action="{{ route('user.record.update', ['user_id' => $user_id, 'record_id' => $record->id]) }}" method="post" class="book__record-category pt-1">
            @elseif (strpos(url()->current(), 'favorite') !==  false)
            <form action="{{ route('favorite.record.update', ['user_id' => $user_id, 'record_id' => $record->id]) }}" method="post" class="book__record-category pt-1">
            @else
            <form action="{{ route('record.update', $record->id) }}" method="post" class="book__record-category pt-1">
            @endif
                @method('PUT')
                @csrf
                <div class="flex flex-col md:flex-row">
                    <div>
                        <label><input type="radio" name="category_id" value="1" {{ old('category_id',
                                $record->category_id) ==
                            1 ? "checked" : ""}} class="border-gray-300"><span class="pl-1">ファンタジー</span></label>
                        <label><input type="radio" name="category_id" value="2" {{ old('category_id',
                                $record->category_id) ==
                            2 ? "checked" : ""}} class="border-gray-300"><span class="pl-1">恋愛</span></label>
                        <label><input type="radio" name="category_id" value="3" {{ old('category_id',
                                $record->category_id) ==
                            3 ? "checked" : ""}} class="border-gray-300"><span class="pl-1">青春</span></label>
                        <label><input type="radio" name="category_id" value="4" {{ old('category_id',
                                $record->category_id) ==
                            4 ? "checked" : ""}} class="border-gray-300"><span class="pl-1">SF</span></label>
                    </div>
                    <div class="md:pl-4">
                        <label><input type="radio" name="category_id" value="5" {{ old('category_id',
                                $record->category_id) ==
                            5 ? "checked" : ""}} class="border-gray-300"><span class="pl-1">ミステリー</span></label>
                        <label><input type="radio" name="category_id" value="6" {{ old('category_id',
                                $record->category_id) ==
                            6 ? "checked" : ""}} class="border-gray-300"><span class="pl-1">ホラー</span></label>
                        <label><input type="radio" name="category_id" value="7" {{ old('category_id',
                                $record->category_id) ==
                            7 ? "checked" : ""}} class="border-gray-300"><span class="pl-1">仕事</span></label>
                        <label><input type="radio" name="category_id" value="8" {{ old('category_id',
                                $record->category_id) ==
                            8 ? "checked" : ""}} class="border-gray-300"><span class="pl-1">歴史</span></label>
                    </div>
                </div>
                <x-input-error class="mt-2" :messages="$errors->get('category_id')" />
                <div class="sm:flex pt-6">
                    <p class="basis-1/3 pb-2">本を読んだ日</p>
                    <div>
                        <input type="date" name="read_date" max="<?php echo date('Y-m-d'); ?>"
                            value="{{ old('read_date', $record->read_date) }}"
                            class="border-gray-300 rounded-lg book__record-date w-40">
                        <x-input-error class="mt-2" :messages="$errors->get('read_date')" />
                    </div>
                </div>
                <div class="sm:flex pt-4">
                    <p class="basis-1/3">感想(最大255文字)</p>
                    <div class="flex flex-col sm:w-[420px]">
                        <textarea name="content" cols="120" rows="8" maxlength="255"
                            class="mt-2 border-gray-300 rounded-lg">{{ old('content', $record->content) }}</textarea>
                        <x-input-error class="mt-2" :messages="$errors->get('content')" />
                    </div>
                </div>
                <input type="submit" value="編集"
                    class="block px-2 hover:border-green-200 hover:border-solid hover:border-2 hover:bg-white rounded-full border-2 border-green-300 text-white bg-green-300 duration-300 hover:text-green-300 mx-auto mt-4 focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:ring-offset-2">
            </form>
        </x-layout.container>
    </div>
</x-layout>
