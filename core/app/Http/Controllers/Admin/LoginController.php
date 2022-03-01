<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Auth;

use App\Models\BasicExtended as BE;
use App\Models\BasicExtended;

use App\Models\Language;


class LoginController extends Controller
{
  public function login()
  {


    if (session()->has('lang')) {
      $currentLang = Language::where('code', session()->get('lang'))->first();
    } else {
      $currentLang = Language::where('is_default', 1)->first();
    }

    $data["langs"] = Language::all();
    $data["currentLang"] = $currentLang;
    $data["rtl"] = $currentLang->rtl;


    $bs = $currentLang->basic_setting;
    $be = $currentLang->basic_extended;

    $be = BasicExtended::select('package_features')->firstOrFail();
    $data["be"] = $be;
    $data["bs"] = $bs;



    return view('admin.login', $data);
  }

  public function authenticate(Request $request)
  {
    $this->validate($request, [
      'username'   => 'required',
      'password' => 'required'
    ]);
    if (Auth::guard('admin')->attempt(['username' => $request->username, 'password' => $request->password])) {
      return redirect()->route('admin.dashboard');
    }
    return redirect()->back()->with('alert', 'Username and Password Not Matched');
  }

  public function logout()
  {
    Auth::guard('admin')->logout();
    return redirect()->route('admin.login');
  }
}
