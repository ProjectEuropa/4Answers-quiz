<?php

namespace Tests\Feature;

use App\Category;
use App\Ranking;
use Tests\TestCase;
use Illuminate\Foundation\Testing\RefreshDatabase;

class UnitTest extends TestCase
{
    /**
     * カテゴリーモデルメソッドテスト
     *
     * @return void
     */
    public function testCategoryModelMethod()
    {
        $category = new Category();

        $categoryArray = $category->findCategoryArray();

        var_dump($categoryArray);

        $this->assertEquals(true, is_array($categoryArray));
    }

    /**
     * ランキングモデルメソッドテスト
     *
     * @return void
     */
    public function testRankingModelMethod()
    {
        $ranking = new Ranking();

        $randamUserId = rand(20, 100);
        $randamScore = rand(0, 100);

        var_dump($randamUserId);
        var_dump($randamScore);

        $ranking->insertScore($randamScore, $randamUserId);

        $this->assertDatabaseHas('rankings', [
            'users_id' => $randamUserId,
            'percentage_correct_answer' => $randamScore
        ]);
    }
}
