<?php

namespace App\Providers;

use App\Services\Common\Util;
use Illuminate\Support\ServiceProvider;

class UtilServiceProvider extends ServiceProvider
{
    /**
     * Register services.
     */
    public function register(): void
    {
        $this->app->bind('util', 'App\Services\Common\Util');
    }

    /**
     * Bootstrap services.
     */
    public function boot(): void
    {
        //
    }
}
