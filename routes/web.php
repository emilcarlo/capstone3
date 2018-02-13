<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});



Route::get('/articles', 'ArticlesController@listArticles');

Route::get('/articles/new', 'ArticlesController@newArticle');

Route::post('/articles/new', 'ArticlesController@createArticle');

Route::get('/articles/{id}', 'ArticlesController@showArticle');

Route::get('/articles/{id}/edit','ArticlesController@editArticle');

Route::post('/articles/{id}/edit', 'ArticlesController@updateArticle');

Route::get('/articles/{id}/delete', 'ArticlesController@deleteArticle');

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

Route::post('/articles/{id}', 'CommentController@addComment');