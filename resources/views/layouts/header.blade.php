	<!-- Header
		============================================= -->
		<header id="header" class="header-size-sm border-bottom-0" data-sticky-shrink="false">
			<div id="header-wrap">
				<div class="container">
					<div class="header-row justify-content-lg-between">

						<!-- Logo
						============================================= -->
						<div id="logo" class="mr-lg-5">
							<a href="{{ route('home') }}" class="standard-logo" data-dark-logo="assets/img/logo.png"><img src="{{ ('assets/img/logo.png') }}" alt="Bahar Project" style="opacity: 0.95;"></a>
						</div><!-- #logo end -->

						<div class="header-misc">
							<a href="#" class="button button-rounded button-light menu-link btn-contact"><div>Habarlaşmak</div></a>
						</div>

						<div id="primary-menu-trigger">
							<svg class="svg-trigger" viewBox="0 0 100 100"><path d="m 30,33 h 40 c 3.722839,0 7.5,3.126468 7.5,8.578427 0,5.451959 -2.727029,8.421573 -7.5,8.421573 h -20"></path><path d="m 30,50 h 40"></path><path d="m 70,67 h -40 c 0,0 -7.5,-0.802118 -7.5,-8.365747 0,-7.563629 7.5,-8.634253 7.5,-8.634253 h 20"></path></svg>
						</div>

						<!-- Primary Navigation
						============================================= -->
						<nav class="primary-menu with-arrows mr-lg-auto">

							<ul class="menu-container align-self-start">
								<li class="menu-item"><span class="menu-bg col-auto align-self-start d-flex"></span></li>
								<li  @if ( Route::currentRouteName()  == 'home')  class="menu-item current" @endif class="menu-item"><a class="menu-link" href="{{ route('home') }}"><div>Baş Sahypa</div></a></li>
								<li  @if ( Route::currentRouteName()  == 'about-us')  class="menu-item current" @endif class="menu-item"><a class="menu-link" href="{{ route('about-us') }}"><div>Biz Barada</div></a></li>
								<li  @if ( Route::currentRouteName()  == 'alphabet' ||  Route::currentRouteName()  == 'numbers' ||  Route::currentRouteName()  == 'toung-tweesters' ||  Route::currentRouteName()  == 'video-tutorials')  class="menu-item current" @endif class="menu-item"><a class="menu-link" href="#"><div>Sapaklar</div></a>
									<ul class="sub-menu-container">
										<li  @if ( Route::currentRouteName()  == 'alphabet')  class="menu-item current" @endif class="menu-item"><a class="menu-link" href="{{ route('alphabet') }}"><div>Harplar</div></a></li>
										<li  @if ( Route::currentRouteName()  == 'numbers')  class="menu-item current" @endif class="menu-item"><a class="menu-link" href="{{ route('numbers') }}"><div>Sanlar</div></a></li>
										<li  @if ( Route::currentRouteName()  == 'toung-tweesters')  class="menu-item current" @endif class="menu-item"><a class="menu-link" href="{{ route('toung-tweesters') }}"><div>Ýaňlytmaçlar (EN)</div></a></li>
										<li  @if ( Route::currentRouteName()  == 'video-tutorials')  class="menu-item current" @endif class="menu-item"><a class="menu-link" href="{{ route('video-tutorials') }}"><div>Wideo Sapaklar</div></a></li>
									</ul>
								</li>
								<li  @if ( Route::currentRouteName()  == 'exercises')  class="menu-item current" @endif class="menu-item"><a class="menu-link" href="{{ route('exercises') }}"><div>Maşklar</div></a></li>
							</ul>

						</nav><!-- #primary-menu end -->

					</div>
				</div>
			</div>
			<div class="header-wrap-clone"></div>
		</header>
		<!-- #header end -->
