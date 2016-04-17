<?php
/**
 * Created by PhpStorm.
 * User: Dmitriy Pivovarov aka AngryDeer http://studioweb.pro
 * Date: 25.01.16
 * Time: 4:41
 */?>
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