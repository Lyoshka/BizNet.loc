@extends('layouts.master')
@section('body')

<div id="myModal" class="modal fade">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <!-- Заголовок модального окна -->
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
        <h4 class="modal-title">Редактирование профиля</h4>
      </div>
      <!-- Основное содержимое модального окна -->
      <div class="modal-body">
        Содержимое модального окна...
      </div>
      <!-- Футер модального окна -->
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Закрыть</button>
        <button type="button" class="btn btn-primary">Сохранить изменения</button>
      </div>
    </div>
  </div>
</div>

<script>
  $(document).ready(function() {
    $("#myModal").modal('show');
  });
</script>

@stop