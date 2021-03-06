<?php

use Illuminate\Routing\Router;

Admin::registerAuthRoutes();

Route::group([
    'prefix'        => config('admin.route.prefix'),
    'namespace'     => config('admin.route.namespace'),
    'middleware'    => config('admin.route.middleware'),
], function (Router $router) {

    $router->get('/', 'HomeController@index');
    $router->resource('/generalusers', UserController::class);
    $router->resource('/quiz', QuizController::class);
    $router->resource('/information', InformationController::class);
    $router->resource('/keyword', KeywordController::class);

});
