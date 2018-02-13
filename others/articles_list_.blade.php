@extends('layouts.app')

@section('title')
Articles List
@endsection


@section('content')
	<h2>
		<a href='{{url("articles/new")}}'><button>Create a New Article</button></a>
	</h2>
	<h3>List of Articles</h3>


	<ul>
		@foreach($articles as $article) {{--  --}}
			<div class="panel panel-default">
				<div class="panel-body">
	    			<a href='{{url("articles/$article->id")}}'>{{ $article->title }}</a> by {{$article->user->name}}
	  			</div> 
			</div>
		@endforeach
	</ul>

@endsection