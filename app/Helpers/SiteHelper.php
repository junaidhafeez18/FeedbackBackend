<?php

namespace App\Helpers;

use Illuminate\Support\Facades\Auth;

class SiteHelper
{
    public static function settings()
    {
        $Settings = array();
        $Settings['AppName'] = "Memboa";
        $Settings['PrimaryColor'] = '#003064'; // Blue
        $Settings['SecondaryColor'] = '#FCAF0A'; // Orange
        $Settings['Currency'] = '';
        return $Settings;
    }

    public static function GetRoute($route, $params = null)
    {
        if(Auth::user()->role_id == 1) {
            return route('admin.' . $route, $params);
        }
    }
}
