<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Language;
use App\Models\Membership;
use App\Models\User;
use Auth;
use Carbon\Carbon;
use Illuminate\Http\Request;
use DB;

use App\Models\BasicExtended;

class DashboardController extends Controller
{
  public function dashboard()
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




    $data['incomes'] = Membership::select(DB::raw('MONTH(created_at) month'), DB::raw('sum(price) total'))->where('status', 1)->groupBy('month')->whereYear('created_at', date('Y'))->get();
    $data['users'] = User::join('memberships', 'users.id', '=', 'memberships.user_id')
      ->select(DB::raw('MONTH(users.created_at) month'), DB::raw('count(*) total'))
      ->groupBy('month')
      ->whereYear('users.created_at', date('Y'))
      ->where([
        ['memberships.status', '=', 1],
        ['memberships.start_date', '<=', Carbon::now()->format('Y-m-d')],
        ['memberships.expire_date', '>=', Carbon::now()->format('Y-m-d')]
      ])
      ->get();
    $data['defaultLang'] = Language::where('is_default', 1)->first();


    return view('admin.dashboard', $data);
  }

  public function changeTheme(Request $request)
  {
    return redirect()->back()->withCookie(cookie()->forever('admin-theme', $request->theme));
  }
}
