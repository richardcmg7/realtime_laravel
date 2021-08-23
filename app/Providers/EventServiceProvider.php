<?php

namespace App\Providers;

use App\Listeners\BroadcastUserLoginNotification;
use App\Listeners\BroadcastUserLogoutNotification;
use App\Illuminate\Auth\Login;
use App\Illuminate\Auth\Logout;
use Illuminate\Auth\Events\Registered;
use Illuminate\Auth\Listeners\SendEmailVerificationNotification;
use Illuminate\Foundation\Support\Providers\EventServiceProvider as ServiceProvider;
use Illuminate\Support\Facades\Event;

class EventServiceProvider extends ServiceProvider
{
    /**
     * The event listener mappings for the application.
     *
     * @var array
     */
    protected $listen = [
        Registered::class => [
            SendEmailVerificationNotification::class,
        ],
        Login::class => [
            BroadcastUserLoginNotification::class, 
        ],
        Logout::class => [
            BroadcastUserLogoutNotification::class,
        ]
    ];

    /**
     * Register any events for your application.
     *
     * @return void
     */
    public function boot()
    {
        parent::boot();
    }
}
