<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Ranking extends Model
{
    //

    public function updateScore($correctRatio, $usersId) 
    {
        Ranking::where('users_id', $usersId)
                ->update(['max_percentage_correct_answer' => $correctRatio]);    
    }

    public function insertScore($correctRatio, $usersId) 
    {
        //ユーザーがランキングになければ、スコアをInsert
        $ranking = new Ranking();
        $ranking->max_percentage_correct_answer = $correctRatio;
        $ranking->users_id = $usersId;
        $ranking->save();  
    }
}
