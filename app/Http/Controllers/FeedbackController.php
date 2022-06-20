<?php

namespace App\Http\Controllers;

use App\Models\Feedback;
use Illuminate\Http\Request;

class FeedbackController extends Controller
{
    //

    public function feedback(Request $request)
    {

        $request->validate([
            'name'=>'required',
            'email'=>'required',
            'message'=>'required'
        ]);

        $feedback = new Feedback();
        $feedback->name = $request->name;
        $feedback->email = $request->email;
        $feedback->message = $request->message;
        $feedback->save();
        return back();
    }
}
