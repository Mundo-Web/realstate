<?php

namespace App\Http\Responses;

use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;
use Laravel\Fortify\Contracts\LoginResponse as LoginResponseContract;

class LoginResponse implements LoginResponseContract
{

    public function toResponse($request)
    {
        $roles = Auth::user()->roles->pluck('name')->all();

        if ($request->wantsJson()) {
            return response()->json(['two_factor' => false]);
        }

        $isAdmin = in_array('Root', $roles) || in_array('Admin', $roles);

        if ($isAdmin) {
            return redirect()->intended(config('fortify.home'));
        }
        
        if (in_array('Customer', $roles)) {
            return redirect()->intended(config('fortify.home_public'));
        }

        return redirect()->intended(config('fortify.home_public'));
    }

}
