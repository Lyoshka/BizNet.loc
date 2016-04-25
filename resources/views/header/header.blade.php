<nav class="navbar navbar-default navbar-fixed-top">
  <div class="container">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-main">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#">BizNet</a>
    </div>

    <div class="collapse navbar-collapse" id="navbar-main">
      <ul class="nav navbar-nav">
        	
	    @if( !Sentinel::guest() )
        	@if( Sentinel::inRole('admin') )
			<li><a href="/public/admin" class="btn btn-default navbar-btn btn_reg">Админка</a></li>
		@endif
            @endif

      </ul>
      <ul class="nav navbar-nav navbar-right">


        <li class="active"><a href="/public/login" class="btn_login btn btn-default navbar-btn">

                    @if(Sentinel::check())
                        {{ Sentinel::check()->first_name  }}
                    @else
                        Вход
                    @endif

		</a></li>

	    @if( Sentinel::guest() )
	        <li><a href="/public/register" class="btn btn-default navbar-btn btn_reg">Регистрация</a></li>
            @else
	        <li><a href="/public/logout" class="btn btn-default navbar-btn btn_reg">Выход</a></li>
	    @endif

      </ul>
    </div>
  </div>
</nav>
