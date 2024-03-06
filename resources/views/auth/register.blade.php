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
                                        <span>Create Account</span>
                                    </h6>
                                    @error('firstName')
                                        <div class="alert alert-danger mb-1">
                                            <strong>{{ $message }}</strong>
                                        </div>
                                    @enderror
                                    @error('lastName')
                                        <div class="alert alert-danger mb-1">
                                            <strong>{{ $message }}</strong>
                                        </div>
                                    @enderror
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
                                              action="{{ route('register') }}"
                                              enctype="multipart/form-data">
                                            @csrf

                                            <fieldset class="form-group position-relative has-icon-left mb-1">
                                                <input type="text"
                                                       class="form-control @error('firstName') input-error @enderror"
                                                       id="first-name" placeholder="First Name" name="firstName"
                                                       onchange="ResetRequiredField('first-name');"
                                                       value="{{old('firstName')}}" required>
                                                <div class="form-control-position">
                                                    <i class="la la-user"></i>
                                                </div>
                                            </fieldset>

                                            <fieldset class="form-group position-relative has-icon-left mb-1">
                                                <input type="text" class="form-control @error('lastName') input-error @enderror"
                                                       id="last-name"
                                                       placeholder="Last Name" name="lastName"
                                                       onchange="ResetRequiredField('last-name');"
                                                       value="{{old('lastName')}}" required>
                                                <div class="form-control-position">
                                                    <i class="la la-user"></i>
                                                </div>
                                            </fieldset>

                                            <fieldset class="form-group position-relative has-icon-left mb-1">
                                                <input type="email"
                                                       class="form-control @error('email') input-error @enderror"
                                                       id="user-email" name="email"
                                                       onchange="ResetRequiredField('user-email');"
                                                       value="{{old('email')}}"
                                                       placeholder="Email Address" required>
                                                <div class="form-control-position">
                                                    <i class="la la-envelope"></i>
                                                </div>
                                            </fieldset>

                                            <fieldset class="form-group position-relative has-icon-left mb-1">
                                                <input type="password"
                                                       class="form-control mb-0 @error('password') input-error @enderror"
                                                       id="user-password" name="password"
                                                       onchange="ResetRequiredField('user-password');"
                                                       placeholder="Password" required>
                                                <div class="form-control-position">
                                                    <i class="la la-key"></i>
                                                </div>
                                            </fieldset>

                                            <fieldset class="form-group position-relative has-icon-left mb-1">
                                                <input type="password"
                                                       class="form-control mb-0 @error('password_confirmation') input-error @enderror"
                                                       id="confirm-password"
                                                       name="password_confirmation"
                                                       onchange="ResetRequiredField('confirm-password');"
                                                       placeholder="Confirm Password" required>
                                                <div class="form-control-position">
                                                    <i class="la la-key"></i>
                                                </div>
                                            </fieldset>

                                            <button type="submit" class="btn btn-info btn-block"><i class="ft-unlock"></i> Register</button>
                                        </form>
                                    </div>
                                    <p class="text-center">Already have an account ? <a href="{{ url('login')  }}" class="card-link">Login</a></p>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
            </div>
        </div>
    </div>
@endsection
