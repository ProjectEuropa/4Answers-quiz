<?php

namespace App\Admin\Controllers;

use App\Keyword;
use App\Category;

use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Facades\Admin;
use Encore\Admin\Layout\Content;
use App\Http\Controllers\Controller;
use Encore\Admin\Controllers\ModelForm;

class KeywordController extends Controller
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

            $content->header('キーワード一覧');
            $content->description('キーワード一覧です');

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

            $content->header('キーワード編集');
            $content->description('キーワードを編集します');

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

            $content->header('キーワード作成');
            $content->description('キーワードを新規に作成します');

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
        return Admin::grid(Keyword::class, function (Grid $grid) {

            $grid->id('ID')->sortable();
            $grid->initial('頭文字')->sortable();
            $grid->keyword('キーワード');
            $grid->description('詳細');
            $grid->category()->name('カテゴリー')->sortable();
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
        return Admin::form(Keyword::class, function (Form $form) {

            $form->display('id', 'ID');
            $form->text('initial', '頭文字')->rules('required|max:1');
            $form->text('keyword', 'キーワード')->rules('required');
            $form->textarea('description', '詳細')->rules('required');
            $form->select('categories_id', 'カテゴリー')->options(function () {
                $this->category = new Category();
                return $this->category->findCategoryArray();
            })->rules('required');
            $form->display('created_at', 'Created At');
            $form->display('updated_at', 'Updated At');
        });
    }
}
