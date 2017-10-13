<?php

namespace App\Admin\Controllers;

use App\Quiz;
use App\Category;
use App\Answer;

use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Facades\Admin;
use Encore\Admin\Layout\Content;
use App\Http\Controllers\Controller;
use Encore\Admin\Controllers\ModelForm;

class QuizController extends Controller
{
    use ModelForm;

    private $category;

    /**
     * Index interface.
     *
     * @return Content
     */
    public function index()
    {
        return Admin::content(function (Content $content) {

            $content->header('クイズ一覧');
            $content->description('クイズ一覧です');

            $content->body($this->grid());
        });
    }

    /**
     * Edit interface.
     *
     * @param $id
     * @return Content
     */
    public function edit($id)
    {
        return Admin::content(function (Content $content) use ($id) {

            $content->header('クイズ編集');
            $content->description('クイズを編集します');

            $content->body($this->form()->edit($id));
        });
    }

    /**
     * Create interface.
     *
     * @return Content
     */
    public function create()
    {
        return Admin::content(function (Content $content) {

            $content->header('クイズ作成');
            $content->description('クイズを新規に作成します');

            $content->body($this->form());
        });
    }

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        return Admin::grid(Quiz::class, function (Grid $grid) {

            $grid->id('ID')->sortable();
            $grid->title('問題文');
            $grid->category()->name('カテゴリー')->sortable();
            $grid->answer()->answer_1('答え1');
            $grid->answer()->answer_2('答え2');
            $grid->answer()->answer_3('答え3');
            $grid->answer()->answer_4('答え4');
            $grid->image_src('イメージ画像');
            $grid->created_at();
            $grid->updated_at();
        });
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {

        return Admin::form(Quiz::class, function (Form $form) {

            $answersLatestId = Answer::latest('id')->first();
            // Answerテーブル最新IDの次のID
            $answersLatestNextId = $answersLatestId->id + 1;

            $form->display('id', 'ID');
            $form->text('title', '問題文')->rules('required|max:190');
            $form->file('image_src', 'イメージ画像')->removable();
            $form->select('answers_id', 'AnswerテーブルID')->options(function () {
                $answersIds = Answer::select('id')->get();
                $answersIdsArray = array();
                $count = count($answersIds);
                foreach($answersIds as $answersId) {
                    $answersIdsArray[$answersId->id] = $answersId->id;
                    if ($count == $answersId->id) {
                        // foreachが最後であれば、Answerテーブルの最新IDの次のIDを追加する
                        $answersIdsArray[$answersId->id + 1] = $answersId->id + 1;
                    }
                }
                return $answersIdsArray;
            })->default($answersLatestNextId)->rules('required');// デフォルト値はAnswerテーブル最新IDの次のID
            $form->select('categories_id', 'カテゴリー')->options(function () {
                $this->category = new Category();
                return $this->category->findCategoryArray();
            })->rules('required');
            $form->text('answer.answer_1', '答え1')->rules('required');
            $form->text('answer.answer_2', '答え2')->rules('required');
            $form->text('answer.answer_3', '答え3')->rules('required');
            $form->text('answer.answer_4', '答え4')->rules('required');
            $form->select('answer.correct_answer_no', '正解番号')->options(function () {
                $correctAnswerNoArray = array();
                // 4択問題なので、1-4のセレクトボックスを生成
                for($i = 1; $i <= 4; $i++) {
                    $correctAnswerNoArray[$i] = $i;
                }
                return $correctAnswerNoArray;
            })->rules('required');
            $form->textarea('answer.commentary', '解説')->rules('required');
            $form->display('created_at', 'Created At');
            $form->display('updated_at', 'Updated At');
        });
    }
}
