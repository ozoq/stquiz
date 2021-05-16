<?php

use Illuminate\Support\Facades\Route;

use App\Http\Controllers\IndexController;
use App\Http\Controllers\TypesController;
use App\Http\Controllers\QuizController;
use App\Http\Controllers\EditorController;
use Illuminate\Http\Request;

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


// Home page
Route::get('/', function () {
  return view('home');
});

// Result prototype -> THINK WHAT TO DO
Route::get('/result', function () {
  return view('result');
});

/******** QUIZ ********/

// Gives a page of quiz - an empty page without questions or results -> those are loaded by a separate request
Route::get('/quiz', [QuizController::class, 'index']);
// Returns current question or result
Route::post('/quiz/current', [QuizController::class, 'current']);
// Submits the answer, then same as `current`
Route::post('/quiz/answer', [QuizController::class, 'answer']);
// Unsibmits last answer, then same as `current`
Route::post('/quiz/back', [QuizController::class, 'back']);
// Starts quiz from beginning, then same as `current`
Route::post('/quiz/restart', [QuizController::class, 'restart']);

/******** SESSION ********/

// Gives a dump of your session
Route::get('/ses', function (Request $request) {
  return $request->session()->all();
});

// Clears your session, redirects to /ses (to see a clear dump)
Route::get('/delses', function (Request $request) {
  $request->session()->invalidate();
  return redirect('/ses');
});

/******** EDITOR ********/
Route::get('/editor', [EditorController::class, 'index']);
