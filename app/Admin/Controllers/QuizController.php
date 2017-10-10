<?php

namespace App\Admin\Controllers;

use App\Quiz;
use App\Category;

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
            $grid->categories_id();
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

            $form->display('id', 'ID');
            $form->text('title')->rules('required|max:190');
            $form->select('answer_id')->options(function () {
                $quiz = Quiz::latest('id')->first();
            
                if ($quiz) {
                    return [$quiz->id => $quiz->id];
                }
            });;
            $form->select('user_id')->options(function ($id) {
                $user = Quiz::find($id);
            
                if ($user) {
                    return [$user->id => $user->name];
                }
            })->ajax('/getonequiz/{id}');
            $form->display('created_at', 'Created At');
            $form->display('updated_at', 'Updated At');
        });
    }
    public function users(Request $request)
    {
        $q = $request->get('q');
    
        return User::where('name', 'like', "%$q%")->paginate(null, ['id', 'name as text']);
    }
}
