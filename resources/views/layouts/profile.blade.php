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
          <div class="row">
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
              <h4>Обязательные поля</h4>
              <form role="form">
                  <div class="prof1">
                    <input type="text" class="form-control" id="InputFirstName" placeholder="Ваше имя">
                  </div>
                  <div class="prof1">
                    <input type="text" class="form-control" id="InputLastName" placeholder="Ваша фамилия">
                  </div>
              </form>
              <hr>
              <form role="form">
                  <div class="prof1">
                    <input type="text" class="form-control" id="InputLogin" placeholder="Ваш логин">
                  </div>
                  <div class="prof2">
                    <input type="text" class="form-control" id="InputEMail" placeholder="Ваша почта">
                  </div>
                  <hr>
                  <div class="prof2">
                    <input type="text" class="form-control" id="InputPhone" placeholder="Ваш телефон">
                  </div>
                  <div class="prof2">
                    <input type="text" class="form-control" id="InputViber" placeholder="Ваш Viber">
                  </div>
              </form>
            </div>
          </div>

          <div class="row prof">
            <div class="col-md-5">
              <p>Заполните данные своего профиля для того, чтобы участники смогли с вами связаться для регистрации в вашу команду</p>
              <h4>Воспользуйтесь инструкцией "Смотреть инструкцию"</h4>
            </div>
            <div class="col-md-7">
              <h3>Социальные сети</h3>
              <form role="form">
                <div class="form-group">
                  <div class="col-md-10">
                    <input type="text" class="form-control" id="InputSocVK" placeholder="http://vk.com/">
                    <input type="text" class="form-control" id="InputSocFaceBook" placeholder="http://facebook.com/">
                    <input type="text" class="form-control" id="InputSocOdnoklassnik" placeholder="http://odnoklassniki.ru/">
                    <input type="text" class="form-control" id="InputSocGogle" placeholder="http://plus.google.com/">
                  </div>
                </div>
              </form>

              <h3>Изменить видео на странице захвата</h3>
              <form role="form">
                <div class="form-group">
                  <div class="col-md-10">
                    <input type="text" class="form-control" id="InputYoutube" placeholder="http://youtube.com/">
                  </div>
                </div>
              </form>

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