<?php

namespace App\Providers;

use Illuminate\Routing\UrlGenerator;
use Illuminate\Support\ServiceProvider;
use Illuminate\Pagination\Paginator;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    public function boot(UrlGenerator $url)
    {
        Paginator::useBootstrap();
        if (env('APP_ENV') == 'production') {
            $url->forceScheme('https');
        }
    }
}
