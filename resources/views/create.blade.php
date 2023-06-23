<x-layout>
    <x-element.breadcrumbs>
        {{ Breadcrumbs::render('create') }}
    </x-element.breadcrumbs>
    <div class="px-4">
        <x-layout.container class="bg-white rounded-lg py-4">
            <h3 class="pb-2 border-b-2 border-green-200">感想を登録する</h3>
            <div class="flex pt-2">
                <img src="{{ $book->thumbnail_path }}">
                <div class="pl-2">
                    <p class="text-2xl">{{ $book->title }}</p>
                    <p>{{ $book->author }}</p>
                </div>
            </div>
            <p class="pt-4">近しいカテゴリーを選んでください</p>
            <form action="{{ route('book.record', $book->id) }}" method="post" class="book__record-category pt-1">
                @csrf
                <div class="flex flex-col md:flex-row">
                    <div>
                        <label><input type="radio" name="category" value="ファンタジー" class="border-gray-300" {{ old('category') == 'ファンタジー' ? 'checked' : '' }}><span
                                class="pl-1">ファンタジー</span></label>
                        <label><input type="radio" name="category" value="恋愛" class="border-gray-300" {{ old('category') == '恋愛' ? 'checked' : '' }}><span
                                class="pl-1">恋愛</span></label>
                        <label><input type="radio" name="category" value="青春" class="border-gray-300" {{ old('category') == '青春' ? 'checked' : '' }}><span
                                class="pl-1">青春</span></label>
                        <label><input type="radio" name="category" value="SF" class="border-gray-300" {{ old('category') == 'SF' ? 'checked' : '' }}><span
                                class="pl-1">SF</span></label>
                    </div>
                    <div class="md:pl-4">
                        <label><input type="radio" name="category" value="ミステリー" class="border-gray-300" {{ old('category') == 'ミステリー' ? 'checked' : '' }}><span
                                class="pl-1">ミステリー</span></label>
                        <label><input type="radio" name="category" value="ホラー" class="border-gray-300" {{ old('category') == 'ホラー' ? 'checked' : '' }}><span
                                class="pl-1">ホラー</span></label>
                        <label><input type="radio" name="category" value="仕事" class="border-gray-300" {{ old('category') == '仕事' ? 'checked' : '' }}><span
                                class="pl-1">仕事</span></label>
                        <label><input type="radio" name="category" value="歴史" class="border-gray-300" {{ old('category') == '歴史' ? 'checked' : '' }}><span
                                class="pl-1">歴史</span></label>
                    </div>
                </div>
                <x-input-error class="mt-2" :messages="$errors->get('category')" />
                <div class="sm:flex pt-6">
                    <p class="basis-1/3 pb-2">本を読んだ日</p>
                    <div>
                        <input type="date" name="date" max="<?php echo date('Y-m-d'); ?>"
                            value="{{ old('date', date('Y-m-d')) }}"
                            class="border-gray-300 rounded-lg book__record-date w-40">
                        <x-input-error class="mt-2" :messages="$errors->get('date')" />
                    </div>
                </div>
                <div class="sm:flex pt-4">
                    <p class="basis-1/3">感想</p>
                    <div class="flex flex-col sm:w-96">
                        <textarea name="content" cols="120" rows="3" class="mt-2 border-gray-300 rounded-lg">{{ old('content') }}</textarea>
                        <x-input-error class="mt-2" :messages="$errors->get('content')" />
                    </div>
                </div>

                <input type="submit" value="登録"
                    class="block px-2 hover:border-green-200 hover:border-solid hover:border-2 hover:bg-white rounded-full border-2 border-green-300 text-white bg-green-300 duration-300 hover:text-green-300 mx-auto mt-4">
            </form>
        </x-layout.container>
    </div>
</x-layout>
