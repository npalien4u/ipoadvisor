@extends('user.layout')

@php
    $userDefaultLang = \App\Models\User\Language::where([
        ['user_id',\Illuminate\Support\Facades\Auth::id()],
        ['is_default',1]
    ])->first();
    $userLanguages = \App\Models\User\Language::where('user_id',\Illuminate\Support\Facades\Auth::id())->get();
@endphp

@includeIf('user.partials.rtl-style')

@section('content')
    <div class="page-header">
        <h4 class="page-title">{{ __('Create Slider') }}</h4>
        <ul class="breadcrumbs">
            <li class="nav-home">
                <a href="{{route('user-dashboard')}}">
                    <i class="flaticon-home"></i>
                </a>
            </li>
            <li class="separator">
                <i class="flaticon-right-arrow"></i>
            </li>
            <li class="nav-item">
                <a href="#">{{ __('Home Page') }}</a>
            </li>
            <li class="separator">
                <i class="flaticon-right-arrow"></i>
            </li>
            <li class="nav-item">
                <a href="#">{{ __('Hero Section') }}</a>
            </li>
            <li class="separator">
                <i class="flaticon-right-arrow"></i>
            </li>
            <li class="nav-item">
                <a href="#">{{ __('Create Slider') }}</a>
            </li>
        </ul>
    </div>

    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">
                    <div class="card-title d-inline-block">{{ __('Add Slider') }}</div>

                    <a
                        class="btn btn-info btn-sm float-right d-inline-block"
                        href="{{ route('user.home_page.hero.slider_version') . '?language=' . $userDefaultLang->code }}"
                    >
            <span class="btn-label">
              <i class="fas fa-backward"></i>
            </span>
                        {{ __('Back') }}
                    </a>
                </div>

                <div class="card-body pt-5 pb-5">
                    <div class="row">
                        <div class="col-lg-8 offset-lg-2">
                            <form
                                id="sliderVersionForm"
                                action="{{ route('user.home_page.hero.store_slider_info') }}"
                                method="POST"
                                enctype="multipart/form-data"
                            >
                                @csrf
                                <div class="form-group">
                                    <label for="">{{__('Language')}} **</label>
                                    <select id="language" name="user_language_id" class="form-control">
                                        <option value="" selected disabled>{{__('Select a language')}}</option>
                                        @foreach ($userLanguages as $lang)
                                        <option value="{{$lang->id}}">{{$lang->name}}</option>
                                        @endforeach
                                    </select>
                                    <p id="erruser_language_id" class="mb-0 text-danger em"></p>
                                </div>
                                <div class="form-group">
                                    <div class="col-12 mb-2">
                                        <label for="image"><strong>{{__('Background Image')}}*</strong></label>
                                    </div>
                                    <div class="col-md-12 showImage mb-3">
                                        <img
                                            src="{{asset('assets/admin/img/noimage.jpg')}}"
                                            alt="..." class="img-thumbnail">
                                    </div>
                                    <input type="file" name="slider_img" id="image"
                                           class="form-control image">
                                    @if ($errors->has('slider_img'))
                                        <p class="mt-2 mb-0 text-danger">{{ $errors->first('slider_img') }}</p>
                                    @endif
                                </div>
                                <div class="row">
                                    <div class="col-lg-6">
                                        <div class="form-group">
                                            <label for="">{{ __('Title') }}</label>
                                            <input type="text" class="form-control" name="title"
                                                   placeholder="{{__('Enter Slider Title')}}">
                                            @if ($errors->has('title'))
                                                <p class="mt-2 mb-0 text-danger">{{ $errors->first('title') }}</p>
                                            @endif
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="form-group">
                                            <label for="">{{ __('Subtitle') }}</label>
                                            <input type="text" class="form-control" name="subtitle"
                                                   placeholder="{{__('Enter Slider Subtitle')}}">
                                            @if ($errors->has('subtitle'))
                                                <p class="mt-2 mb-0 text-danger">{{ $errors->first('subtitle') }}</p>
                                            @endif
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-lg-6">
                                        <div class="form-group">
                                            <label for="">{{ __('Button Name') }}</label>
                                            <input type="text" class="form-control" name="btn_name"
                                                   placeholder="{{__('Enter Slider Button Name')}}">
                                            @if ($errors->has('btn_name'))
                                                <p class="mt-2 mb-0 text-danger">{{ $errors->first('btn_name') }}</p>
                                            @endif
                                        </div>
                                    </div>

                                    <div class="col-lg-6">
                                        <div class="form-group">
                                            <label>{{ __('Button URL') }}</label>
                                            <input type="url" class="form-control ltr" name="btn_url"
                                                   placeholder="{{__('Enter Slider Button URL')}}">
                                            @if ($errors->has('btn_url'))
                                                <p class="mt-2 mb-0 text-danger">{{ $errors->first('btn_url') }}</p>
                                            @endif
                                        </div>
                                    </div>

                                </div>

                                <div class="row">

                                    <div class="col-lg-12">
                                        <div class="form-group">
                                            <label for="">{{ __('Serial Number*') }}</label>
                                            <input type="number" class="form-control ltr" name="serial_number"
                                                   placeholder="{{__('Enter Slider Serial Number')}}">
                                            @if ($errors->has('serial_number'))
                                                <p class="mt-2 mb-0 text-danger">{{ $errors->first('serial_number') }}</p>
                                            @endif
                                            <p class="text-warning mt-2 mb-0">{{ __('The higher the serial number is, the later the slider will be shown.') }}</p>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>

                <div class="card-footer">
                    <div class="row">
                        <div class="col-12 text-center">
                            <button type="submit" form="sliderVersionForm" class="btn btn-primary">
                                {{ __('Save') }}
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
