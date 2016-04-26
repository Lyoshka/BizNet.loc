@extends('layouts.master')
@section('body')
	<div class="auth_page col-sm-4 col-sm-offset-4">
		<h2><p class="text-center">Страница входа</p></h2>
		{!! Form::open(array('class'=> 'form-horizontal')) !!}
			@include('widgets.form._formitem_text', ['name' => 'email', 'title' => 'Email', 'placeholder' => 'Ваш Email' ])
			@include('widgets.form._formitem_password', ['name' => 'password', 'title' => 'Пароль', 'placeholder' => 'Ваш пароль' ])
			@include('widgets.form._formitem_checkbox', ['name' => 'remember', 'title' => 'Запомнить меня'] )
			@include('widgets.form._formitem_btn_submit', ['title' => 'Вход'])
		{!! Form::close() !!}
	</div>
@stop