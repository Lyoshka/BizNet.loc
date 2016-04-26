@extends('layouts.master')
@section('body')
	<div class="auth_page">
		<div class="col-md-3">
			<h3>Лента</h3>
		</div>
		<div class="col-md-9">
			<h2>Домашняя страница {{ Sentinel::check()->first_name  }} </h2>		
		</div>
	</div>
@stop