<header class="w-full bg-emerald-200 border-t body-font">
    <div class="container flex items-center justify-between p-3 mx-auto max-w-4xl">
        <a href="{{ route('index') }}" class="flex  font-medium title-font md:mb-0 min-w-[100px]">
            <h1 class="font-bold">みんなの感想</h1>
        </a>
        <div class="flex items-center h-full">
            <div class="pr-2">
                <img src="{{ asset('images/account_circle.svg') }}"
                    class="w-8 h-8 bg-white rounded-full">
            </div>
            @auth
            <x-dropdown>
                <x-slot name="trigger">
                    <p class="pr-4 after:content-['▼']">{{ Auth::user()->name }}</p>
                </x-slot>
                <x-slot name="content">
                    <div>
                        <x-element.auth-button-link :href="route('profile.edit')">プロフィール
                        </x-element.auth-button-link>
                    </div>
                    <form method="POST" action="{{ route('logout') }}" class="pt-6">
                        @csrf
                        <x-element.auth-button-link :href="route('logout')" onclick="event.preventDefault();
                            this.closest('form').submit();">ログアウト</x-element.auth-button-link>
                    </form>
                </x-slot>
            </x-dropdown>
            <div class="flex max-sm:hidden items-center">
                <p class="max-w-[40%]">{{ Auth::user()->name }}</p>
                <x-element.auth-button-link :href="route('profile.edit')" class="ml-4">プロフィール
                </x-element.auth-button-link>
                <form method="POST" action="{{ route('logout') }}" class="translate-y-[-1px]">
                    @csrf
                    <x-element.auth-button-link :href="route('logout')" onclick="event.preventDefault();
                        this.closest('form').submit();" class="ml-4">ログアウト</x-element.auth-button-link>
                </form>
            </div>
            @else
            <x-dropdown>
                <x-slot name="trigger">
                    <p class="pr-4 after:content-['▼']">ゲスト</p>
                </x-slot>
                <x-slot name="content">
                    <div>
                        <x-element.auth-button-link :href="route('register')">ユーザー登録</x-element.auth-button-link>
                    </div>
                    <div class="pt-6">
                        <x-element.auth-button-link :href="route('login')">ログイン</x-element.auth-button-link>
                    </div>
                </x-slot>
            </x-dropdown>
            <div class="flex max-sm:hidden">
                <p class="pr-4">ゲスト</p>
                <div class="">
                    <x-element.auth-button-link :href="route('register')">ユーザー登録</x-element.auth-button-link>
                </div>
                <div class="pl-4">
                    <x-element.auth-button-link :href="route('login')">ログイン</x-element.auth-button-link>
                </div>
            </div>
            @endauth
        </div>
    </div>
</header>
