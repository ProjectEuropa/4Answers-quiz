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

    /**
     * Index interface.
     *
     * @return Content
     */
    public function index()
    {
        return Admin::content(function (Content $content) {

            $content->header('header');
            $content->description('description');

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

            $content->header('header');
            $content->description('description');

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

            $content->header('header');
            $content->description('description');

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
            $grid->title();
            $grid->answers_id();
            $grid->category()->name('cateogry Name')->sortable();
            $grid->answer()->answer_1();
            $grid->answer()->answer_2();
            $grid->answer()->answer_3();
            $grid->answer()->answer_4();
            $grid->image_src();
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
            $form->text('title')->rules('required|max:190');
            $form->file('image_src')->removable();
            $form->select('answers_id')->options(function () {
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
                if ($answersIdsArray) {
                    return $answersIdsArray;
                }
            })->default($answersLatestNextId)->rules('required');// デフォルト値はAnswerテーブル最新IDの次のID
            $form->select('categories_id')->options(function () {
                $categories = Category::select('id', 'name')->get();

                $categoryArray = array();

                foreach($categories as $category) {
                    $categoryArray[$category->id] = $category->name;
                }
            
                if ($categoryArray) {
                    return $categoryArray;
                }
            })->rules('required');
            $form->text('answer.answer_1', 'answer_1')->rules('required');
            $form->text('answer.answer_2', 'answer_2')->rules('required');
            $form->text('answer.answer_3', 'answer_3')->rules('required');
            $form->text('answer.answer_4', 'answer_4')->rules('required');
            $form->select('answer.correct_answer_no', 'correctAnswerNo')->options(function () {
                $correctAnswerNoArray = array();
                // 4択問題なので、1-4のセレクトボックスを生成
                for($i = 1; $i <= 4; $i++) {
                    $correctAnswerNoArray[$i] = $i;
                }
                return $correctAnswerNoArray;
            })->rules('required');
            $form->textarea('answer.commentary', 'Commentary')->rules('required');
            $form->display('created_at', 'Created At');
            $form->display('updated_at', 'Updated At');
        });
    }
}
