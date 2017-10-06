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
     *
     * @return 
     */
    public function index()
    {
        $categories = DB::table('categories')->select('id', 'name')->get();
        $rankings = DB::table('rankings')
                    ->join('users', 'rankings.users_id', '=', 'users.id')
                    ->select('rankings.max_percentage_correct_answer', 'users.name')
                    ->limit(config('const.maxNumRankingDisplay'))
                    ->orderby('rankings.max_percentage_correct_answer', 'desc')
                    ->get();

        return view('home')->with('categories', $categories)
                           ->with('rankings', $rankings);
    }

    /**
     * Show the application dashboard.
     *
     * @return 
     */
    public function post(Request $request)
    {
        $categories = $request->input('categories');
        $ids = null;
        if ($categories !== null) 
        {
            $ids = DB::table('quizzes')
                ->wherein('categories_id', $categories)
                ->inRandomOrder()
                ->limit(config('const.numQuizTen'))
                ->pluck('id');       
        } else 
        {
            return back();
        }
        return view('quiz.index')->with('ids', json_encode($ids))
                                 ->with('quizNum', count($ids));
    }
    /**
     * Show the application dashboard.
     *
     * @return 
     */
    public function put(Request $request)
    {
        if (Auth::check())
        {
            $correctRatio = $request->input('correctRatio');
            $usersId = \Auth::user()->id;
            $scores = DB::table('rankings')
                        ->where('users_id', $usersId)
                        ->select('max_percentage_correct_answer')
                        ->first();
            
            if ($scores) 
            {
                // ユーザーがランキングにいて、なおかつ最大スコアを上回ったら、最大スコアを更新
                if ($correctRatio > $scores->max_percentage_correct_answer)
                {
                    $this->ranking->updateScore($correctRatio, $usersId);
                }
            } else 
            {
                //ユーザーがランキングになければ、スコアをInsert
                $this->ranking->insertScore($correctRatio, $usersId);
            }
        } 
        return redirect('/');        
    }
}
