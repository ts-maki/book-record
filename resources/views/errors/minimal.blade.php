<!DOCTYPE html>
<html lang="ja">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    @vite(['resources/css/app.css', 'resources/js/app.js'])
    <title>@yield('title')</title>
</head>

<body class="antialiased">
    <div
        class="relative flex items-top  min-h-screen bg-gray-100 dark:bg-gray-900">
        <div class="max-w-xl mx-auto sm:px-6 lg:px-8">
            <div class="flex flex-col items-center pt-6">
                <div class="px-4 text-lg  border-gray-400 tracking-wider text-red-400">
                    @yield('code')
                </div>
                <div><img src="{{ asset('/storage/images/onegai_gomen_woman.png') }}"
                        alt="エラーのごめんなさいの画像" class="w-40"></div>
                <div class="ml-4 text-lg uppercase tracking-wider">
                    @yield('message')
                </div>
                <p><a href="{{ route('index') }}">こちら</a>からホームに戻ることができます。</p>
            </div>
        </div>
    </div>
</body>

</html>
