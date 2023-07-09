<!DOCTYPE html>
<html lang="ja">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    @vite(['resources/css/app.css', 'resources/js/app.js'])
    <title>@yield('title')</title>
</head>

<body class="antialiased">
    <div class="relative flex items-top  min-h-screen dark:bg-gray-900">
        <div class="max-w-xl mx-auto sm:px-6 lg:px-8">
            <div class="flex flex-col items-center pt-6">
                <div class="px-4 border-gray-400 tracking-wider text-red-400">
                    @yield('code')
                </div>
                <div><img src="{{ asset('/storage/images/onegai_gomen_woman.png') }}" alt="エラーのごめんなさいの画像" class="w-40">
                </div>
                <div class="ml-4 uppercase tracking-wider">
                    @yield('message')
                </div>
                <p class="pt-2"><a href="{{ route('index') }}"
                        class="border-b-2 border-blue-500 text-blue-500 hover:text-blue-300 duration-150 hover:border-blue-300">こちら</a>からホームに戻ることができます。
                </p>
                @if (!empty($exception->getMessage()))
                <div class="mt-4 p-2 border-2 border-red-400">
                    <p class="text-center">エラーメッセージ</p>
                    <p>{{ $exception->getMessage() }}</p>
                </div>
                @endif
            </div>
        </div>
    </div>
</body>

</html>
