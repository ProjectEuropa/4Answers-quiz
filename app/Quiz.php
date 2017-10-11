<?php

namespace App;

use App\Answer;
use App\Category;
use Illuminate\Database\Eloquent\Model;

class Quiz extends Model
{
    public function answer()
    {
        return $this->hasOne(Answer::class, 'id', 'answers_id');
    }

    public function category()
    {
        return $this->hasOne(Category::class, 'id', 'categories_id');
    }
}
