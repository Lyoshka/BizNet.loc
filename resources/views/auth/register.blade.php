@extends('layouts.master')
@section('body')
	<div class="auth_page col-sm-4 col-sm-offset-4">
		<h2><p class="text-center">Страница регистрации</p></h2>
		{!! Form::open(array('class'=> 'form-horizontal')) !!}
		@include('widgets.form._formitem_text', ['name' => 'email', 'title' => 'Email', 'placeholder' => 'Email' ])
		@include('widgets.form._formitem_password', ['name' => 'password', 'title' => 'Пароль', 'placeholder' => 'Пароль' ])
		@include('widgets.form._formitem_password', ['name' => 'password_confirm', 'title' => 'Подтверждение пароля', 'placeholder' => 'Пароль' ])
		@include('widgets.form._formitem_btn_submit', ['title' => 'Регистрация'])
		{!! Form::close() !!}
	</div>
@stop