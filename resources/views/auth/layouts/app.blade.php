<!DOCTYPE html>
<html class="loading" lang="en" data-textdirection="ltr">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <meta name="description" content="">
    <meta name="keywords" content="">
    <meta name="author" content="High App Solution">

    <?php
    $Page = explode('/', $_SERVER['REQUEST_URI']);
    $Page = end($Page);
    ?>
    @if($Page == 'login')
        <title>Login - {{\App\Helpers\SiteHelper::settings()['AppName']}}</title>
    @elseif($Page == 'register')
        <title>Register - {{\App\Helpers\SiteHelper::settings()['AppName']}}</title>
    @else
        <title>{{\App\Helpers\SiteHelper::settings()['AppName']}}</title>
    @endif

    <link rel="apple-touch-icon" href="{{asset('public/app-assets/images/ico/apple-icon-120.png')}}">
    <link rel="shortcut icon" type="image/png" href="{{asset('public/app-assets/images/ico/favicon.png')}}">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i%7CQuicksand:300,400,500,700" rel="stylesheet">

    <link rel="stylesheet" type="text/css" href="{{asset('public/app-assets/vendors/css/vendors.min.css')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('public/app-assets/vendors/css/forms/icheck/icheck.css')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('public/app-assets/vendors/css/forms/icheck/custom.css')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('public/app-assets/css/bootstrap.min.css')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('public/app-assets/css/bootstrap-extended.min.css')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('public/app-assets/css/colors.min.css')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('public/app-assets/css/components.min.css')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('public/app-assets/css/core/menu/menu-types/vertical-menu-modern.css')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('public/app-assets/css/core/colors/palette-gradient.min.css')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('public/app-assets/css/pages/login-register.min.css')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('public/app-assets/css/custom.css')}}">
</head>

<body class="vertical-layout vertical-menu-modern 1-column   blank-page" data-open="click" data-menu="vertical-menu-modern" data-col="1-column">

{{-- Content --}}
@yield('content')

<script src="{{asset('public/app-assets/vendors/js/vendors.min.js')}}"></script>
<script src="{{asset('public/app-assets/vendors/js/forms/icheck/icheck.min.js')}}"></script>
<script src="{{asset('public/app-assets/vendors/js/forms/validation/jqBootstrapValidation.js')}}"></script>
<script src="{{asset('public/app-assets/js/core/app-menu.min.js')}}"></script>
<script src="{{asset('public/app-assets/js/core/app.min.js')}}"></script>
<script src="{{asset('public/app-assets/js/scripts/forms/form-login-register.min.js')}}"></script>
<script src="{{asset('public/app-assets/js/custom.js')}}"></script>

</body>
</html>
