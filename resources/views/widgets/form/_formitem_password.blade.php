<?php if(! isset($value)) $value = null ?>
<div class="form-group">
    <div class="{!! $errors->has($name) ? 'has-error' : null !!}">

                {!! Form::password($name, array('placeholder' =>  $placeholder, 'class' => 'form-control') ) !!}
                <p class="help-block">{!! $errors->first($name) !!}</p>

    </div>
</div>