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
        <li>
          <a href="/public">Домой</a>
        </li>
        	
	    @if( !Sentinel::guest() )
        	@if( Sentinel::inRole('admin') )
			<li><a href="/public/admin">Админка</a></li>
		@endif
            @endif
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="/public/register">Регистрация</a></li>
        <li class="active"><a href="/public/login">


                    @if(Sentinel::check())
                        {{ Sentinel::check()->first_name  }}
                    @else
                        Вход
                    @endif

		</a></li>
      </ul>
    </div>
  </div>
</nav>
