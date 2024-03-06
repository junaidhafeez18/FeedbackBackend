@extends('auth.layouts.app')
@section('content')
    <div class="app-content content">
        <div class="content-overlay"></div>
        <div class="content-wrapper">
            <div class="content-header row">
            </div>
            <div class="content-body">
                <section class="row flexbox-container">
                    <div class="col-12 d-flex align-items-center justify-content-center">
                        <div class="col-lg-4 col-md-8 col-10 box-shadow-2 p-0">
                            <div class="card border-grey border-lighten-3 m-0">
                                <div class="card-header border-0">
                                    <div class="card-title text-center">
                                        <img src="{{asset('public/app-assets/images/logo/logo.png')}}"
                                             class="img-fluid logo-md"
                                             alt="branding logo">
                                    </div>

                                    <h6 class="card-subtitle line-on-side text-muted text-center font-small-3 pt-2 m-1">
                                        <span>Login with {{\App\Helpers\SiteHelper::settings()['AppName']}}</span>
                                    </h6>

                                    @error('email')
                                        <div class="alert alert-danger mb-1">
                                            <strong>{{ $message }}</strong>
                                        </div>
                                    @enderror
                                    @error('password')
                                        <div class="alert alert-danger mb-1">
                                            <strong>{{ $message }}</strong>
                                        </div>
                                    @enderror
                                    @if(session()->has('error'))
                                        <div class="alert alert-danger m-0">
                                            <strong>{{ session()->get('error') }}</strong>
                                        </div>
                                    @endif
                                </div>
                                <div class="card-content">
                                    <div class="card-body">
                                        <form class="form-horizontal form-simple"
                                              method="POST"
                                              id="user-login-form"
                                              action="{{ route('login') }}"
                                              enctype="multipart/form-data">
                                            @csrf

                                            <fieldset class="form-group position-relative has-icon-left mb-1">
                                                <input type="text" class="form-control @error('email') input-error @enderror" id="user-email"
                                                       name="email" placeholder="Your Username" value="{{old('email')}}" onchange="ResetRequiredField('user-email');" required>
                                                <div class="form-control-position">
                                                    <i class="la la-user"></i>
                                                </div>
                                            </fieldset>
                                            <fieldset class="form-group position-relative has-icon-left">
                                                <input type="password" class="form-control @error('password') input-error @enderror" id="user-password"
                                                       name="password" placeholder="Enter Password" onchange="ResetRequiredField('user-password');" required>
                                                <div class="form-control-position">
                                                    <i class="la la-key"></i>
                                                </div>
                                            </fieldset>
                                            <div class="form-group row">
                                                <div class="col-sm-6 col-12 text-center text-sm-left">
                                                    <fieldset>
                                                        <input type="checkbox" id="remember-me" class="chk-remember">
                                                        <label for="remember-me"> Remember Me</label>
                                                    </fieldset>
                                                </div>
                                                <div class="col-sm-6 col-12 text-center text-sm-right">
                                                    @if (\Illuminate\Support\Facades\Route::has('password.request'))
                                                        <a href="{{ route('password.request') }}"
                                                           class="card-link">Forgot Password?</a>
                                                    @endif
                                                </div>
                                            </div>
                                            <button type="submit" class="btn btn-info btn-block"><i
                                                        class="ft-unlock"></i> Login
                                            </button>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
            </div>
        </div>
    </div>
@endsection
