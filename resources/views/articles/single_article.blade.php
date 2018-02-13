@extends('layouts.app')

@section('title')

{{$article->title}}

@endsection

@section('content')

<h3>{{$article->title}}</h3>

<p>
	{{$article->content}}

</p>

	<form method="POST" action='{{url("articles/$article->id")}}'>
		{{ csrf_field() }}
  		<input type="text" name="comment_box">
  		<input type="submit" value="Add Comment">
  	</form><br>

  	@foreach($article->comment as $comment)
  			<div class="panel panel-default">
				<div class="panel-body">
					{{$comment->user->name}} 
					{{$comment->created_at}}
				</div>
				<div class="panel-footer">
					{{ $comment->content }}

				</div>
			</div>
  	@endforeach

@if($article->user->id == Auth::user()->id)
	<a href='{{url("articles/$article->id/edit")}}'><button>Edit This Article</button></a>
	<a href='{{url("articles/$article->id/delete")}}'><button>Delete This Article</button></a>
@endif
@endsection