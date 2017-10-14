<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use Auth;
use App\Ranking;
use Illuminate\Support\Facades\Config;

class HomeController extends Controller
{

    protected $ranking;

    /**
     * 
     *
     * @return void
     */
    public function __construct(Ranking $ranking)
    {
        $this->ranking = $ranking;
    }

    /**
     * 
     * ホーム画面初期処理アクション
     * @return 
     */
    public function index()
    {
        // 出題設定カテゴリー
        $categories = DB::table('categories')->select('id', 'name')->get();

        // 総合ランキング集計データ
        $synthesisRankings = DB::table('rankings')
                    ->join('users', 'rankings.users_id', '=', 'users.id')
                    ->select(DB::raw('MAX(rankings.percentage_correct_answer) as percentage_correct_answer, users.name'))
                    ->limit(config('const.maxNumRankingDisplay'))
                    ->orderby('percentage_correct_answer', 'desc')
                    ->groupBy('rankings.users_id')
                    ->get();
        
        // 月間ランキング集計データ
        $monthRankings = DB::table('rankings')
                    ->join('users', 'rankings.users_id', '=', 'users.id')
                    ->select(DB::raw('MAX(rankings.percentage_correct_answer) as percentage_correct_answer, users.name'))
                    ->whereRaw('month(now()) = month(rankings.created_at)')
                    ->limit(config('const.maxNumRankingDisplay'))
                    ->orderby('percentage_correct_answer', 'desc')
                    ->groupBy('rankings.users_id')
                    ->get();

        // 週間ランキング集計データ
        $weekRankings = DB::table('rankings')
                    ->join('users', 'rankings.users_id', '=', 'users.id')
                    ->select(DB::raw('MAX(rankings.percentage_correct_answer) as percentage_correct_answer, users.name'))
                    ->whereRaw('week(now()) = week(rankings.created_at)')
                    ->limit(config('const.maxNumRankingDisplay'))
                    ->orderby('percentage_correct_answer', 'desc')
                    ->groupBy('rankings.users_id')
                    ->get();

        // Information最新5件取得           
        $informations = DB::table('informations')
                    ->select(DB::raw("information, DATE_FORMAT(created_at, '%Y/%m/%d') as created_at"))
                    ->limit(5)
                    ->orderby('id', 'desc')
                    ->get();

        return view('home')->with('categories', $categories)
                           ->with('synthesisRankings', $synthesisRankings)
                           ->with('monthRankings', $monthRankings)
                           ->with('weekRankings', $weekRankings)
                           ->with('informations', $informations);
    }

    /**
     * 出題ボタンクリック時アクション.
     *
     * @return 
     */
    public function post(Request $request)
    {
        $categories = $request->input('categories');
        $ids = null;
        if ($categories !== null) 
        {
            // 選択したカテゴリー内にあるクイズテーブルのidをランダムに10問（現在）取得
            $ids = DB::table('quizzes')
                    ->wherein('categories_id', $categories)
                    ->inRandomOrder()
                    ->limit(config('const.numQuizTen'))
                    ->pluck('id');       
        } else 
        {
            // 出題設定に何も設定していない場合は、home画面に戻る
            return back();
        }
        return view('quiz.index')->with('ids', json_encode($ids))
                                 ->with('quizNum', count($ids));
    }
    /**
     * 
     * クイズ終了ボタンクリック時アクション
     * @return 
     */
    public function put(Request $request)
    {
        if (Auth::check())
        {
            // ユーザーがログイン中であればスコアをInsert
            $correctRatio = $request->input('correctRatio');
            $usersId = \Auth::user()->id;
            $this->ranking->insertScore($correctRatio, $usersId);

        } 
        return redirect('/');        
    }
}
