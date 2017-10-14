<?php

namespace Tests\Feature;

use App\Category;
use App\User;
use Tests\TestCase;
use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Support\Facades\Config;

class ControllerUnitTest extends TestCase
{
    /**
     * ユーザーセットアップfunction
     * ユーザーを新規に作成してログインし、作成したユーザー情報を返却する
     *
     * @return User class
     */
    private function userSetUp() : User
    {
        $user = factory(User::class)->create();
        $this->be($user);
        return $user;
    }

    /**
     * ホームコントローラーindexアクションテスト.
     *
     * @return void
     */
    public function testHomeControllerIndex()
    {
        $response = $this->call('GET', '/');

        $view = $response->original;
        $category = new Category();

        var_dump($view['synthesisRankings']->pluck('percentage_correct_answer', 'name')->toArray());
        var_dump($view['monthRankings']->pluck('percentage_correct_answer', 'name')->toArray());
        var_dump($view['weekRankings']->pluck('percentage_correct_answer', 'name')->toArray());
        var_dump($view['categories']->pluck('name', 'id')->toArray());
        var_dump($view['informations']->pluck('information', 'created_at')->toArray());
        var_dump($view['weekRankings']->pluck('percentage_correct_answer', 'name')->toArray());

        // カテゴリーの取得
        $this->assertEquals($category->findCategoryArray(), $view['categories']->pluck('name', 'id')->toArray());

        // お知らせ情報の取得
        $informationArray = $view['informations']->pluck('information', 'created_at')->toArray();
        if ($informationArray) {
            $this->assertDatabaseHas('informations', [
                'information' => $informationArray,
            ]);
        }
        
        // 総合ランキングの取得
        $synthesisRankings = $view['synthesisRankings']->pluck('percentage_correct_answer', 'name')->toArray();
        if ($synthesisRankings) {
            $this->assertDatabaseHas('rankings', [
                'percentage_correct_answer' => $synthesisRankings,
            ]);
        }
        // 週間ランキング取得
        $monthRankings = $view['monthRankings']->pluck('percentage_correct_answer', 'name')->toArray();
        if ($monthRankings) {
            $this->assertDatabaseHas('rankings', [
                'percentage_correct_answer' => $monthRankings,
            ]);
        }

        // 週間ランキング取得
        $weekRankings = $view['weekRankings']->pluck('percentage_correct_answer', 'name')->toArray();
        if ($weekRankings) {
            $this->assertDatabaseHas('rankings', [
                'percentage_correct_answer' => $weekRankings,
            ]);
        }

        $this->assertEquals(200, $response->status());
    }

    /**
     * ホームコントローラーpostアクションテスト.
     *
     * @return void
     */
    public function testHomeControllerPost()
    {
        // categoriesに配列データがあればデータを取得する
        $response = $this->call('POST', '/', ['categories' => [1]]);

        $view = $response->original;
        var_dump($view['ids']);
        var_dump($view['quizNum']);

        $idsArray = $view['ids'];

        if ($idsArray) {
            $this->assertDatabaseHas('quizzes', [
                'id' => json_decode($idsArray),
            ]);

            $this->assertEquals(config('const.numQuizTen'), $view['quizNum']);
            $this->assertEquals(200, $response->status());
        }

        // categoriesがnullの場合はリダイレクト
        $response = $this->call('POST', '/', ['categories' => null]);

        var_dump($response);
        $this->assertEquals(302, $response->status());
    }

    /**
     * ホームコントローラーputアクションテスト（ログイン中）.
     *
     * @return void
     */
    public function testHomeControllerPutAuth()
    {
        $user = $this->userSetUp();
        $randamScore = rand(0, 100);
        $response = $this->call('PUT', '/', ['correctRatio' => $randamScore]);
        $this->assertDatabaseHas('rankings', [
            'percentage_correct_answer' => $randamScore,
            'users_id' => $user->id
        ]);
        $this->assertEquals(302, $response->status());
    }

    /**
     * ホームコントローラーputアクションテスト(非ログイン).
     *
     * @return void
     */
    public function testHomeControllerPutNotAuth()
    {
        $randamScore = rand(101, 1000);
        $response = $this->call('PUT', '/', ['correctRatio' => $randamScore]);
        // 非ログイン時はデータはインサートされない
        $this->assertDatabaseMissing('rankings', [
            'percentage_correct_answer' => $randamScore
        ]);
        $this->assertEquals(302, $response->status());
    }
    /**
     * キーワードコントローラーアクションテスト.
     *
     * @return void
     */
    public function testKeywordController()
    {
        $response = $this->call('GET', '/keyword');
        $this->assertEquals(200, $response->status());
    }

    /**
     * マイページントローラーアクションテスト（ログイン中）.
     *
     * @return void
     */
    public function testMypageControllerAuth()
    {
        $user = $this->userSetUp();
        $response = $this->call('GET', '/mypage');
        $this->assertEquals(200, $response->status());
    }

    /**
     * マイページントローラーアクションテスト（非ログイン）.
     *
     * @return void
     */
    public function testMypageControllerNotAuth()
    {
        $response = $this->call('GET', '/mypage');
        $this->assertEquals(302, $response->status());
    }
}
