<header class="w-full bg-emerald-200 border-t body-font">
    <div class="container flex items-center justify-between p-3 mx-auto  max-w-4xl">
        <a href="{{ route('index') }}" class="flex  font-medium title-font md:mb-0">
            <h1 class="">みんなの感想</h1>
        </a>
        <div class="flex items-center h-full">
            <div class="pr-2">
                <img src="{{ asset('/storage/images/account_circle_black_24dp.svg') }}"
                    class="w-8 h-8 bg-white rounded-full">
            </div>
            @auth
            <p>{{ Auth::user()->name }}</p>
            @else
            <p class="pr-4">ゲストさん</p>
            <div class="">
                <x-element.auth-button-link :href="route('register')">ユーザー登録</x-element.auth-button-link>
            </div>
            <div class="pl-4">
                <x-element.auth-button-link :href="route('login')">ログイン</x-element.auth-button-link>
            </div>
            @endauth
            @auth
            <x-element.auth-button-link :href="route('profile.edit')" class="ml-4">プロフィール</x-element.auth-button-link>
            <form method="POST" action="{{ route('logout') }}" class="translate-y-[-1px]">
                @csrf
                <x-element.auth-button-link :href="route('logout')" onclick="event.preventDefault();
                this.closest('form').submit();" class="ml-4">ログアウト</x-element.auth-button-link>
            </form>
            @endauth

        </div>
    </div>
</header>
