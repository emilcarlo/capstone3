@extends('layouts.app')
@section('title')
Create New Article
@endsection

@section('content')
<h1>New Article</h1>
<form method="POST">
	{{ csrf_field() }}
	Title: <input type="text" name="title" value=""><br>
	Content: <textarea name="content"></textarea><br>
	<input type="submit" name="submit" value="Submit">
</form>
@endsection