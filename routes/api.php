<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('api')->get('/getonequiz/{id}', function ($id) {
    return json_encode(DB::table('quizzes')
    ->join('answers', 'quizzes.answers_id', '=', 'answers.id')
    ->select('quizzes.*', 'answers.*')
    ->where('quizzes.id', '=', $id)
    ->first());
});
