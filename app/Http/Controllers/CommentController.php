<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Comment;
use Auth;

class CommentController extends Controller
{
    function addComment(Request $request, $id) {

    	$validate = $request->validate([
        	'comment_box' => ['required'/*,'max:255','regex:^Task.*^'*/]
        ]);

    	$comment = new Comment();
    	$comment->content = $request->comment_box;
    	$comment->user_id = Auth::user()->id;
    	$comment->article_id = $id;
    	$comment->save();

    	return redirect("/articles/$id");
    }
}
