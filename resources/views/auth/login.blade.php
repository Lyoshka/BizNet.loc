<?php
/**
 * Created by PhpStorm.
 * User: Dmitriy Pivovarov aka AngryDeer http://studioweb.pro
 * Date: 25.01.16
 * Time: 4:38
 */?>
@extends('layouts.master')
@section('body')
    <h2><p class="text-center">Страница входа</p></h2>
    {!! Form::open(array('class'=> 'form-horizontal')) !!}
        @include('widgets.form._formitem_text', ['name' => 'email', 'title' => 'Email', 'placeholder' => 'Ваш Email' ])
        @include('widgets.form._formitem_password', ['name' => 'password', 'title' => 'Пароль', 'placeholder' => 'Пароль' ])
        @include('widgets.form._formitem_checkbox', ['name' => 'remember', 'title' => 'Запомнить меня'] )
        @include('widgets.form._formitem_btn_submit', ['title' => 'Вход'])
    {!! Form::close() !!}
<p class="col-sm-6 col-sm-offset-2"><a href="{{URL::to('/reset')}}">Забыли пароль?</a></p>
@stop