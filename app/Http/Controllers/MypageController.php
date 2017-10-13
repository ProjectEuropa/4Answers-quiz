<?php

namespace App\Http\Controllers;

use DB;
use Illuminate\Http\Request;

class MypageController extends Controller
{
    
    public function index() {

        $scoreDatas = DB::table('rankings')
                ->select('percentage_correct_answer', 'created_at')
                ->where('users_id', '=' , \Auth::user()->id)
                ->orderby('created_at', 'asc')
                ->limit(7)
                ->get();

        return view('mypage.index')->with('scoreDatas', $scoreDatas);
    }
}
