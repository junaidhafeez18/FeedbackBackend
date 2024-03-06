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
                                    <h6 class="card-subtitle line-on-side text-muted text-center font-small-3 pt-2">
                                        <span>{{ __('Verify Your Email Address') }}</span>
                                    </h6>
                                </div>
                                <div class="card-content">
                                    <div class="card-body">
                                        @if (session('resent'))
                                            <div class="alert alert-success" role="alert">
                                                {{ __('A fresh verification link has been sent to your email address.') }}
                                            </div>
                                        @endif

                                        <p>
                                            {{ __('Before proceeding, please check your email for a verification link.') }}
                                        </p>
                                        <p>
                                            {{ __('If you did not receive the email') }},
                                        </p>

                                        <form class="form-horizontal form-simple"
                                              method="POST"
                                              action="{{ route('verification.resend') }}"
                                              enctype="multipart/form-data">
                                            @csrf

                                            <button type="submit" class="btn btn-info btn-lg btn-block"><i class="ft-link"></i> {{ __('click here to request another') }}</button>
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
