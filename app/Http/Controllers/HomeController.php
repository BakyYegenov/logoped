<?php

namespace App\Http\Controllers;

use App\Models\Exercise;
use App\Models\Tweester;
use App\Models\Video;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    //

    public function home()
    {
        return view('home');
    }


    public function about()
    {
        return view('about-us');
    }


    public function alphabet()
    {
        return view('alphabet');
    }


    public function exercises()
    {
        $exercises = Exercise::orderByDesc('created_at')->where('status', 1 )->get()->take(16);
        return view('exercises' ,compact('exercises'));
    }


    public function numbers()
    {
        return view('numbers');
    }


    public function toung()
    {
        $tweesters = Tweester::orderByDesc('created_at')->where('status', 1 )->get()->take(16);

        return view('toung-tweester' ,compact('tweesters'));
    }


    public function video()
    {
        $videos = Video::orderByDesc('created_at')->where('status', 1 )->get()->take(16);
        return view('video-tuts',compact('videos'));
    }
}
