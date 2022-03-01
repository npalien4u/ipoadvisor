<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\EmailTemplate;
use Illuminate\Http\Request;
use Validator;
use App\Models\Language;

class MailTemplateController extends Controller
{
    public function mailTemplates()
    {
        if (session()->has('lang')) {
            $currentLang = Language::where('code', session()->get('lang'))->first();
        } else {
            $currentLang = Language::where('is_default', 1)->first();
        }
        $bs = $currentLang->basic_setting;
        $data["bs"] = $bs;

        $templates = EmailTemplate::all();

        return view('admin.basic.email.mail_templates', compact('templates'), $data);
    }

    public function editMailTemplate($id)
    {
        if (session()->has('lang')) {
            $currentLang = Language::where('code', session()->get('lang'))->first();
        } else {
            $currentLang = Language::where('is_default', 1)->first();
        }
        $bs = $currentLang->basic_setting;
        $data["bs"] = $bs;

        $templateInfo = EmailTemplate::findOrFail($id);

        return view('admin.basic.email.edit_mail_template', compact('templateInfo'), $data);
    }

    public function updateMailTemplate(Request $request, $id)
    {
        $rules = [
            'email_subject' => 'required',
            'email_body' => 'required'
        ];

        $validator = Validator::make($request->all(), $rules);

        if ($validator->fails()) {
            return redirect()->back()->withErrors($validator->errors());
        }

        EmailTemplate::findOrFail($id)->update($request->except('email_type', 'email_body') + [
            'email_body' => clean($request->email_body)
        ]);

        $request->session()->flash('success', 'Mail template updated successfully!');

        return redirect()->back();
    }
}
