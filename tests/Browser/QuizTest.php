<?php

namespace Tests\Browser;

use Tests\DuskTestCase;
use Laravel\Dusk\Browser;
use Illuminate\Foundation\Testing\DatabaseMigrations;

class QuizTest extends DuskTestCase
{
    /**
     * 普通にクイズに答えるテスト.
     *
     * @return void
     */
    public function testQuiz()
    {
        $this->browse(function (Browser $browser) {
            $browser->visit('/')
                    ->press('出題開始')
                    ->assertPathIs('/')
                    ->press('1')
                    ->press('次の問題へ')
                    ->assertPathIs('/')
                    ->press('2')
                    ->press('次の問題へ')
                    ->assertPathIs('/')
                    ->press('3')
                    ->press('次の問題へ')
                    ->assertPathIs('/')
                    ->press('4')
                    ->press('次の問題へ')
                    ->assertPathIs('/')
                    ->press('1')
                    ->press('次の問題へ')
                    ->assertPathIs('/')
                    ->press('2')
                    ->press('次の問題へ')
                    ->assertPathIs('/')
                    ->press('3')
                    ->press('次の問題へ')
                    ->assertPathIs('/')
                    ->press('4')
                    ->press('次の問題へ')
                    ->assertPathIs('/')
                    ->press('1')
                    ->press('次の問題へ')
                    ->assertPathIs('/')
                    ->press('2')
                    ->press('結果を見る')
                    ->assertPathIs('/')
                    ->press('終了する')
                    ->assertPathIs('/');
        });
    }

    /**
     * 答えを見るのみを押し続けるテスト.
     *
     * @return void
     */
    public function testPushSeeAnswerOnly()
    {
        $this->browse(function (Browser $browser) {
            $browser->visit('/')
                    ->press('出題開始')
                    ->assertPathIs('/')
                    ->press('正解を表示する')
                    ->press('次の問題へ')
                    ->assertPathIs('/')
                    ->press('正解を表示する')
                    ->press('次の問題へ')
                    ->assertPathIs('/')
                    ->press('正解を表示する')
                    ->press('次の問題へ')
                    ->assertPathIs('/')
                    ->press('正解を表示する')
                    ->press('次の問題へ')
                    ->assertPathIs('/')
                    ->press('正解を表示する')
                    ->press('次の問題へ')
                    ->assertPathIs('/')
                    ->press('正解を表示する')
                    ->press('次の問題へ')
                    ->assertPathIs('/')
                    ->press('正解を表示する')
                    ->press('次の問題へ')
                    ->assertPathIs('/')
                    ->press('正解を表示する')
                    ->press('次の問題へ')
                    ->assertPathIs('/')
                    ->press('正解を表示する')
                    ->press('次の問題へ')
                    ->assertPathIs('/')
                    ->press('正解を表示する')
                    ->press('結果を見る')
                    ->assertPathIs('/')
                    ->press('終了する')
                    ->assertPathIs('/');
        });
    }

    /**
     * 次の問題へを押し続けるテスト.
     *
     * @return void
     */
    public function testPushNextAnswerOnly()
    {
       $this->browse(function (Browser $browser) {
            $browser->visit('/')
                    ->press('出題開始')
                    ->assertPathIs('/')
                    ->press('次の問題へ')
                    ->assertPathIs('/')
                    ->press('次の問題へ')
                    ->assertPathIs('/')
                    ->press('次の問題へ')
                    ->assertPathIs('/')
                    ->press('次の問題へ')
                    ->assertPathIs('/')
                    ->press('次の問題へ')
                    ->assertPathIs('/')
                    ->press('次の問題へ')
                    ->assertPathIs('/')
                    ->press('次の問題へ')
                    ->assertPathIs('/')
                    ->press('次の問題へ')
                    ->assertPathIs('/')
                    ->press('次の問題へ')
                    ->assertPathIs('/')
                    ->press('次の問題へ')
                    ->assertPathIs('/')
                    ->press('結果を見る')
                    ->assertPathIs('/')
                    ->press('終了する')
                    ->assertPathIs('/');
        });  
    }
}