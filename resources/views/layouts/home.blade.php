@extends('layouts.master')
@section('body')
	<div class="col-md-4">
		<h3>Лента</h3>
	</div>
	<div class="col-md-8">
		<h2>Домашняя страница {{ Sentinel::check()->first_name  }} </h2>		
	</div>
@stop