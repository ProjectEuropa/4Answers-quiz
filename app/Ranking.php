<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Ranking extends Model
{

    // ランキングテーブルに正解率とユーザーIDをInsert
    public function insertScore(int $correctRatio, int $usersId) 
    {
        $ranking = new Ranking();
        $ranking->percentage_correct_answer = $correctRatio;
        $ranking->users_id = $usersId;
        $ranking->save();  
    }
}
