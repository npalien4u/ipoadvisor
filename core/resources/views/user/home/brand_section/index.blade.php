@extends('user.layout')

@includeIf('user.partials.rtl-style')

@section('content')
  <div class="page-header">
    <h4 class="page-title">{{ __('Brand Section') }}</h4>
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
        <a href="#">{{ __('Brand Section') }}</a>
      </li>
    </ul>
  </div>

  <div class="row">
    <div class="col-md-12">
      <div class="card">
        <div class="card-header">
          <div class="row">
            <div class="col-lg-4">
              <div class="card-title d-inline-block">{{ __('Brand Partners') }}</div>
            </div>

            <div class="col-lg-4 offset-lg-4 mt-2 mt-lg-0">
              <a
                href="#"
                data-toggle="modal"
                data-target="#createModal"
                class="btn btn-primary btn-sm float-lg-right float-left"
              ><i class="fas fa-plus"></i> {{ __('Add Brand') }}</a>
            </div>
          </div>
        </div>

        <div class="card-body">
          <div class="row">
            <div class="col-md-12">
              @if (count($brands) == 0)
                <h3 class="text-center">{{ __('NO BRAND FOUND!') }}</h3>
              @else
                <div class="row">
                  @foreach ($brands as $brand)
                    <div class="col-md-3">
                      <div class="card">
                        <div class="card-body">
                          <img
                            src="{{ asset('assets/front/img/user/brands/' . $brand->brand_img) }}"
                            alt="brand image"
                            class="w-100"
                          >
                        </div>

                        <div class="card-footer text-center">
                          <a
                            class="edit-btn btn btn-secondary btn-sm mr-2"
                            href="#"
                            data-toggle="modal"
                            data-target="#editModal"
                            data-id="{{ $brand->id }}"
                            data-brandimg="{{ asset('assets/front/img/user/brands/' . $brand->brand_img) }}"
                            data-brand_url="{{ $brand->brand_url }}"
                            data-serial_number="{{ $brand->serial_number }}"
                          >
                            <span class="btn-label">
                              <i class="fas fa-edit"></i>
                            </span>
                            {{ __('Edit') }}
                          </a>

                          <form
                            class="deleteform d-inline-block"
                            action="{{ route('user.home_page.brand_section.delete_brand') }}"
                            method="post"
                          >
                            @csrf
                            <input type="hidden" name="brand_id" value="{{ $brand->id }}">
                            <button type="submit" class="btn btn-danger btn-sm deletebtn">
                              <span class="btn-label">
                                <i class="fas fa-trash"></i>
                              </span>
                              {{ __('Delete') }}
                            </button>
                          </form>
                        </div>
                      </div>
                    </div>
                  @endforeach
                </div>
              @endif
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

  {{-- create modal --}}
  @include('user.home.brand_section.create')

  {{-- edit modal --}}
  @include('user.home.brand_section.edit')
@endsection

@section('scripts')
    <script src="{{asset('assets/admin/js/edit.js')}}"></script>
@endsection

