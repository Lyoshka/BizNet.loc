
<?php if(! isset($value)) $value = null ?>
<div class="form-group">
    <div class="{!! $errors->has($name) ? 'has-error' : null !!}">
        <label for="{!! $name !!}" class="col-sm-2 control-label">{{ $title }}</label>

        <div class="col-sm-6">
            {!! Form::text($name, $value, array('placeholder' =>  $placeholder, 'class' => 'form-control' )) !!}
            <p class="help-block">{!! $errors->first($name) !!}</p>
        </div>
    </div>
</div>