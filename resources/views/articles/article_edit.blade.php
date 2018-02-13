@extends('layouts.app')
@section('title')
Create New Article
@endsection

@section('content')
<h1>Edit Article</h1>
<form method="POST">
	{{ csrf_field() }}
	Title: <input type="text" name="title" value="{{$article->title}}"><br>
	Content: <textarea name="content">{{$article->content}}</textarea><br>
	<input type="submit" name="submit" value="Submit">
</form>
@endsection