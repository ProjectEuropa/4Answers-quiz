<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    //

    public function findCategoryArray() 
    {
        $categories = Category::select('id', 'name')->get();
        
        $categoryArray = array();
        
        foreach($categories as $category) {
            $categoryArray[$category->id] = $category->name;
        }

        return $categoryArray;
    }
}
