<header class="w-full bg-emerald-200 border-t body-font">
    <div class="container flex items-center justify-between p-3 mx-auto  max-w-4xl">
        <a class="flex  font-medium title-font md:mb-0">
            <h1 class="">みんなの感想</h1>
        </a>
        <div class="flex items-center h-full">
            <div class="pr-2">
                <img src="{{ asset('/storage/images/account_circle_black_24dp.svg') }}" class="w-8 h-8 bg-white rounded-full">
            </div>
            @auth
            <p>{{ Auth::user()->name }}</p>
            @else
            <p class="pr-4">ゲストさん</p>
            <div class="">
                <a href="{{ route('register') }}"
                    class="px-4 py-2 text-xs font-bold text-white uppercase transition-all duration-150 bg-teal-500 rounded shadow outline-none active:bg-teal-600 hover:shadow-md focus:outline-none ease">ユーザー登録</a>
            </div>
            <div class="pl-4">
                <a href="{{ route('login') }}"
                    class="px-4 py-2 text-xs font-bold text-white uppercase transition-all duration-150 bg-teal-500 rounded shadow outline-none active:bg-teal-600 hover:shadow-md focus:outline-none ease">ログイン</a>
            </div>
            @endauth
        </div>
    </div>
</header>
