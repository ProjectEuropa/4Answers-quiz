<?php

namespace App;

use App\Category;
use Illuminate\Database\Eloquent\Model;

class Keyword extends Model
{
    public function category()
    {
        return $this->hasOne(Category::class, 'id', 'categories_id');
    }
}
