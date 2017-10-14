<?php

namespace App\Http\Controllers;

use DB;
use Illuminate\Http\Request;

class MypageController extends Controller
{
    /**
     * 
     * マイページ画面初期処理アクション
     * @return 
     */
    public function index() {

        // ログインユーザーの最新の正解率を取得する。
        $scoreDatas = DB::table('rankings')
                ->select(DB::raw("percentage_correct_answer, DATE_FORMAT(created_at, '%Y/%m/%d') as created_at"))
                ->where('users_id', '=' , \Auth::user()->id)
                ->orderby('created_at', 'asc')
                ->limit(100)
                ->get();

        return view('mypage.index')->with('scoreDatas', $scoreDatas);
    }
}
