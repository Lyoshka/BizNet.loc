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
        <div class="container-fluid">
            <div class="col-md-5">
              <div class="row">
                <img src="img/no_user.jpg" width="250" height="250" alt="">
              </div>
              <div class="row profile">
                <button type="button" class="btn btn-primary btn-group-justified" data-dismiss="modal">Изменить аватар</button>
              </div>
              <div class="row profile">
                <button type="button" class="btn btn-primary btn-group-justified" data-dismiss="modal">Изменить пароль</button>
              </div>
            </div>
            <div class="col-md-7">
              <div class="row">
                  <h4>Обязательные поля</h4>
              </div>
              <div class="row">
                1
              </div>
            </div>
        </div>
      </div>
      <!-- Футер модального окна -->
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Закрыть</button>
        <button type="button" class="btn btn-success">Сохранить изменения</button>
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