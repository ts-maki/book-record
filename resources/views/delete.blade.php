<x-layout>
    <div class="px-4">
        <x-layout.container class="bg-white rounded-lg py-4">
            <h3 class="pb-2 border-b-2 border-green-200">感想削除確認</h3>
            <div class="flex pt-2">
                <img src="{{ $record->book->thumbnail_path }}">
                <div class="pl-2">
                    <p class="text-2xl">{{ $record->book->title }}</p>
                    <p>{{ $record->book->author }}</p>
                </div>
            </div>
            <div class="pt-4">
                <p class="sm:w-1/3">感想</p>
                <p class="mt-2 py-2 px-4  border-2 border-gray-300 rounded-lg">{{ old('content', $record->content) }}</p>
            </div>
            <form action="{{ route('record.delete', $record->id) }}" method="post">
                @method('DELETE')
                @csrf
                <div class="flex justify-center pt-4">
                    <a href="{{ route('index') }}" class="px-2 border-blue-300 border-solid border-2 rounded-full hover:text-white hover:bg-blue-300 duration-300">キャンセル</a>
                    <input type="submit" value="削除" class="ml-6 px-2 border-red-300 border-solid border-2 rounded-full hover:text-white hover:bg-red-300 duration-300">
                </div>
            </form>
        </x-layout.container>
    </div>
</x-layout>
