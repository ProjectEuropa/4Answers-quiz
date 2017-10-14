<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    /**
     * 
     * カテゴリー配列返却メソッド
     * array([id]=> [name])の配列を返却する
     * @return array
     */
    public function findCategoryArray():array
    {
        $categories = Category::select('id', 'name')->get();
        
        $categoryArray = array();
        
        foreach($categories as $category) {
            $categoryArray[$category->id] = $category->name;
        }

        return $categoryArray;
    }
}
