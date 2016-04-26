
<?php
if(! isset($value)) $value = null;
if(! isset($checked)) $checked = null;
if(! isset($title)) $title = null;
?>
<div class="form-group">
	<div class="col-sm-6">
		<div class="{!! $errors->has($name) ? 'has-error' : null !!}">

			<label for="{!! $name !!}" class="control-label">{{ $title }}</label>
			{!! Form::checkbox($name, $value, $checked) !!}
			<p class="help-block">{!! $errors->first($name) !!}</p>
		</div>
	</div>
	<div class="col-sm-6">
			<p><a href="{{URL::to('/reset')}}">Забыли пароль?</a></p>
	</div>
	
</div>