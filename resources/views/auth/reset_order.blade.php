@extends('layouts.master')
@section('body')
	<div class="auth_page col-sm-4 col-sm-offset-4">
		<h2><p class="text-center">Сброс пароля</p></h2>

			{!! Form::open() !!}
			@include('widgets.form._formitem_text', ['name' => 'email', 'title' => 'Email', 'placeholder' => 'Ваш Email' ])
			@include('widgets.form._formitem_btn_submit', ['title' => 'Сброс пароля'])
			{!! Form::close() !!}
	</div>
@stop