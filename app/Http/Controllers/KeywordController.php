<?php

namespace App\Http\Controllers;

use DB;
use Illuminate\Http\Request;

class KeywordController extends Controller
{

    /**
     * 
     * キーワードコントローラー初期処理アクション
     * 
     * @return aray
     */
    public function index(Request $request) {

        $initial = $request->input('initial');

        // 総合ランキング集計データ
        $keywords = DB::table('keywords')
                ->join('categories', 'keywords.categories_id', '=', 'categories.id')
                ->select('keywords.keyword', 'keywords.description', 'categories.name')
                ->where('keywords.initial', '=',  $initial)
                ->orderby('keywords.keyword')
                ->get();

        return view('keyword.index')->with('initial', $initial)
                                    ->with('keywordsNum', count($keywords))
                                    ->with('keywords', $keywords);
    }
}
