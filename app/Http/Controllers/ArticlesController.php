<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Article;
use Auth;

class ArticlesController extends Controller
{
    
    public function __construct()
    {
        $this->middleware('auth');
    }

    function listArticles(){
    	$articles = Article::all(); /*Value of Article::all() [SEELCT*from DB] is stored in $articles*/
       /* $articles = Auth::user()->articles; */
    	return view('articles', compact('articles'));
    }

    function showArticle($id){
    	$article = Article::find($id);
    	return view('articles.single_article', compact ('article'));
    }

    function newArticle() {
        return view('articles.article_new');
    }

    function createArticle(Request $request) {
        $new_article = new Article();
        $new_article->title = $request->title;
        $new_article->content = $request->content;
        $new_article->user_id = Auth::user()->id;
        $new_article->save();

        return redirect('/articles');
    }

    function deleteArticle($id) {
        $article = Article::find($id);
        $article->delete();

        return redirect('/articles');
    }

    function editArticle($id) {
        $article = Article::find($id);
        return view('articles.article_edit', compact('article'));

    }

    function updateArticle(Request $update, $id) {
    	$article = Article::find($id);
    	$article->title = $update->title;
    	$article->content = $update->content;
    	$article->save();

    	return redirect("/articles/$id");
    }








}
