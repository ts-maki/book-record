<div x-show="dialogOpen" class="fixed top-0 left-0 w-screen h-screen flex justify-center items-center"
x-transition:enter-start="opacity-0 scale-90">
<div class="absolute w-full h-full bg-green-300 opacity-30"></div>
<div @click.outside="dialogOpen = false"
    class="relative w-5/6 max-w-xl h-1/2 m-auto bg-white border rounded-md shadow">
    <div class="px-4">
        <x-layout.container class="bg-white rounded-lg py-4">
            <h3 class="pb-2 border-b-2 border-green-200">感想削除確認</h3>
            <div class="flex pt-2">
                <img :src="dialogData.bookThumbnail" class="rounded-l-lg md:max-w-[182px]">
                <div class="pl-2">
                    <p class="text-2xl" x-text="dialogData.bookTitle"></p>
                    <p x-text="dialogData.bookAuthor"></p>
                </div>
            </div>
            <div class="pt-4">
                <p class="sm:w-1/3">感想</p>
                <p class="mt-2 py-2 px-4  border-2 border-gray-300 rounded-lg"
                    x-text="dialogData.recordContent"></p>
            </div>
            <div class="pt-4 flex justify-center">
                <button @click="dialogOpen = false" class="px-2 border-blue-300 border-solid border-2 rounded-full hover:text-white hover:bg-blue-300 duration-300 focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:ring-offset-2">キャンセル</button>
                <button @click="deleteRecord(dialogData.recordId)"
                    class="ml-6 px-2 border-red-300 border-solid border-2 rounded-full hover:text-white hover:bg-red-300 duration-300 focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:ring-offset-2">削除</button>
            </div>
        </x-layout.container>
    </div>
</div>
</div>
