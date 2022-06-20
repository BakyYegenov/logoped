<?php

use App\Http\Controllers\FeedbackController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', [HomeController::class, 'home'])->name('home');
Route::post('/feedback', [FeedbackController::class, 'feedback'])->name('feedback');

Route::get('/about-us', [HomeController::class, 'about'])->name('about-us');
Route::get('/alphabet', [HomeController::class, 'alphabet'])->name('alphabet');
Route::get('/exercises', [HomeController::class, 'exercises'])->name('exercises');
Route::get('/numbers', [HomeController::class, 'numbers'])->name('numbers');
Route::get('/toung-tweesters', [HomeController::class, 'toung'])->name('toung-tweesters');
Route::get('/video-tutorials', [HomeController::class, 'video'])->name('video-tutorials');


