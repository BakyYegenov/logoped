@extends('layouts.layout')
@section('content')

		<!-- Slider
		============================================= -->
		<section id="slider" class="slider-element dark swiper_wrapper slider-parallax min-vh-75">
			<div class="slider-inner">

				<div class="swiper-container swiper-parent">
					<div class="swiper-wrapper">
						<div class="swiper-slide dark">
							<div class="container">
								<div class="slider-caption">
									<div>
										<h2 class="nott" data-animate="fadeInUp">Hoş geldiňiz</h2>
										<a href="about.html" data-animate="fadeInUp" data-delay="400" class="button button-rounded button-large button-light shadow nott ls0 ml-0 mt-4">Maglumat üçin</a>
									</div>
								</div>
							</div>
							<div class="swiper-slide-bg" style="background: linear-gradient(rgba(0,0,0,.3), rgba(0,0,0,.8)), url('/assets/img/slider/1.jpg') no-repeat center center; background-size: fit;"></div>
						</div>
						<div class="swiper-slide dark">
							<div class="container">
								<div class="slider-caption">
									<div>
										<h2 class="nott" data-animate="fadeInUp">Biz bilen Öwren</h2>
										<a href="#" data-animate="fadeInUp" data-delay="400" class="button button-rounded button-large button-light shadow nott ls0 ml-0 mt-4">Maglumat üçin</a>
									</div>
								</div>
							</div>
							<div class="swiper-slide-bg" style="background: linear-gradient(rgba(0,0,0,0), rgba(0,0,0,.8)), url('/assets/img/slider/2.jpg') no-repeat center center; background-size: cover;"></div>
						</div>
					</div>
					<div class="swiper-navs">
						<div class="slider-arrow-left"><i class="icon-line-arrow-left"></i></div>
						<div class="slider-arrow-right"><i class="icon-line-arrow-right"></i></div>
					</div>
					<div class="swiper-scrollbar">
						<div class="swiper-scrollbar-drag">
						<div class="slide-number"><div class="slide-number-current"></div><span>/</span><div class="slide-number-total"></div></div></div>
					</div>
				</div>

			</div>
		</section>

		<!-- Content
		============================================= -->
		<section id="content">
			<div class="content-wrap py-0" style="overflow: visible">

				<svg viewBox="0 0 1382 58" width="100%" height="60" preserveAspectRatio="none" style="position: absolute; top: -58px; left:0; z-index: 1"><path style="fill:#FFF;" d="M1.52.62s802.13,127,1380,0v56H.51Z"/></svg>

				<div class="container">

					<div class="slider-feature w-100">
						<div class="row justify-content-center">
							<div class="col-md-3 px-1">
								<a href="#aim1"  class="card center border-left-0 border-right-0 border-top-0 border-bottom border-bottom shadow py-3 rounded-0 font-weight-semibold text-uppercase ls1">
									<div class="card-body">
										<i class="icon-line-align-center"></i>Biziň Maksadymyz
									</div>
								</a>
							</div>
							<div class="col-md-3 px-1">
								<a href="#prob" class="card center border-left-0 border-right-0 border-top-0 border-bottom border-bottom shadow py-3 rounded-0 font-weight-semibold text-uppercase ls1">
									<div class="card-body">
										<i class="icon-line-umbrella"></i>Meseleler
									</div>
								</a>
							</div>
							<div class="col-md-3 px-1">
								<a href="about.html" class="card center border-left-0 border-right-0 border-top-0 border-bottom border-bottom shadow py-3 rounded-0 font-weight-semibold text-uppercase ls1">
									<div class="card-body">
										<i class="icon-line-mail"></i>Birnäçe Maglumat
									</div>
								</a>
							</div>
						</div>
					</div>

				</div>

				<div class="section mt-3" style="background: #FFF url('/assets/img/others/1.jpg') no-repeat 100% 50% / auto 100%;" id="aim1">
					<div class="container">
						<div class="row justify-content-center">
							<div class="col-md-7 center">
								<div class="heading-block border-bottom-0 mb-4">
									<h2 class="mb-4 nott">Biziň Maksadymyz?</h2>
								</div>
								<div class="svg-line bottommargin-sm">
									<img src="{{ asset('assets/img/divider-1.svg')}}" alt="svg divider" height="20">
								</div>
								<p>Bu websahypa çaganyň dogry gürlemek endigini öwredyar.Eger çagada dogry gürlemekde ejir çekyän bolsa, şu websayty kömek eder. Bu yzagalyşyk, yzygiderli gaýtalanýan kesel hökmünde tanalyar. Bu Sahypanyň esasy maksady, söz terapiýasyny öwretmek we dogry gürlemek endigini ösdürmek.</p>
							</div>
						</div>
						<div class="row mt-5 col-mb-50 mb-0">
							<div class="col-md-3">
								<div class="feature-box flex-column pl-0">
									<div class="fbox-media position-relative">
										<img src="{{ asset('assets/img/icons/donate.svg')}}" alt="Featured Icon" width="60" class="mb-3">
									</div>
									<div class="fbox-content px-0">
										<h3 class="nott ls0"><a href="#" class="text-dark">Sözleýiş ösüşiniň tapgyrlary</a></h3>
										<p class="pr-2">Ene-atalar ýadyňyzdan çykarmaň: "ýaşy uly çagalaryň" söz kemçliklerini düzetmek has kyn !!!</p>
										<a href="about.html#content" class="button button-rounded button-border nott ls0 font-weight-normal ml-0 mt-4">maglumat</a>
									</div>
								</div>
							</div>

							<div class="col-md-3">
								<div class="feature-box flex-column pl-0">
									<div class="fbox-media position-relative">
										<img src="{{ asset('assets/img/icons/volunteer.svg')}}" alt="Featured Icon" width="60" class="mb-3">
									</div>
									<div class="fbox-content px-0">
										<h3 class="nott ls0"><a href="#" class="text-dark">Gepleýişiň bozulmagy</a></h3>
										<p class="pr-2">Çaganyň söz baýlygy näçe baý we dogry boldugyça, pikirlerini aýtmak aňsat bolýar, we hakykaty tanamak ukyby şonça-da giňeýar. </p>
										<a href="about.html#content" class="button button-rounded button-border nott ls0 font-weight-normal ml-0 mt-4">maglumat</a>
									</div>
								</div>
							</div>

							<div class="col-md-3">
								<div class="feature-box flex-column pl-0">
									<div class="fbox-media position-relative">
										<img src="{{ asset('assets/img/icons/help-child.svg')}}" alt="Featured Icon" width="60" class="mb-3">
									</div>
									<div class="fbox-content px-0">
										<h3 class="nott ls0"><a href="#" class="text-dark">Sözleýiş kemçilikleriniň tapgyrlary</a></h3>
										<p>Dislalia - adaty eşidiş we artikulýator enjamynyň içerki içki sesli ses sesiniň bozulmagy.</p>
										<a href="about.html#content" class="button button-rounded button-border nott ls0 font-weight-normal ml-0 mt-4">maglumat</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<!-- <div class="clear"></div> -->

				<div class="fancy-title title-center title-border topmargin">
					<h3>Sapaklar <span>we</span> Maşklar</h3>
				</div>

				<div class="container">
						<div id="oc-portfolio" class="owl-carousel portfolio-carousel carousel-widget" data-pagi="false" data-items-xs="1" data-items-sm="2" data-items-md="3" data-items-lg="4">

						<div class="portfolio-item">
							<div class="portfolio-image">
								<a href="portfolio-single.html">
									<img src="{{ asset('assets/img/4/1.jpg')}}" alt="Open Imagination">
								</a>
								<div class="bg-overlay">
									<div class="bg-overlay-content dark" data-hover-animate="fadeIn" data-hover-speed="350">
										<a href="{{ asset('assets/img/full/1.jpg')}}" class="overlay-trigger-icon bg-light text-dark" data-hover-animate="fadeInDownSmall" data-hover-animate-out="fadeInUpSmall" data-hover-speed="350" data-lightbox="image"><i class="icon-line-plus"></i></a>
									</div>
									<div class="bg-overlay-bg dark" data-hover-animate="fadeIn" data-hover-speed="350"></div>
								</div>
							</div>
							<div class="portfolio-desc">
								<h3><a href="events.html#content">Begemot</a></h3>
								<span><a href="events.html#content">– agzy mümkin boldugyça giň, bu ýagdaýda 5 sekunt saklaň.</a></span>
							</div>
						</div>

						<div class="portfolio-item">
							<div class="portfolio-image">
								<a href="#">
									<img src="{{ asset('assets/img/4/2.jpg')}}" alt="Locked Steel Gate">
								</a>
								<div class="bg-overlay">
									<div class="bg-overlay-content dark" data-hover-animate="fadeIn" data-hover-speed="350">
										<a href="{{ asset('assets/img/full/2.jpg')}}" class="overlay-trigger-icon bg-light text-dark" data-hover-animate="fadeInDownSmall" data-hover-animate-out="fadeInUpSmall" data-hover-speed="350" data-lightbox="image"><i class="icon-line-plus"></i></a>
									</div>
									<div class="bg-overlay-bg dark" data-hover-animate="fadeIn" data-hover-speed="350"></div>
								</div>
							</div>
							<div class="portfolio-desc">
								<h3><a href="events.html#content">Dil Maşklary</a></h3>
								<span><a href="events.html#content">Ine, şu wagta çenli duşan sözleriňiz we sözlemleriňiz. Has öňe gitmezden ozal olar bilen ynamlydygyňyza göz ýetiriň. </a></span>
							</div>
						</div>
						<div class="portfolio-item">
							<div class="portfolio-image">
								<a href="#">
									<img src="{{ asset('assets/img/4/3.jpg')}}" alt="Mac Sunglasses">
								</a>
								<div class="bg-overlay">
									<div class="bg-overlay-content dark" data-hover-animate="fadeIn" data-hover-speed="350">
										<a href="https://vimeo.com/89396394" class="overlay-trigger-icon bg-light text-dark" data-hover-animate="fadeInDownSmall" data-hover-animate-out="fadeInUpSmall" data-hover-speed="350" data-lightbox="iframe"><i class="icon-line-play"></i>
										<video src="#"></video>
										<a href="#" class="overlay-trigger-icon bg-light text-dark" data-hover-animate="fadeInDownSmall" data-hover-animate-out="fadeInUpSmall" data-hover-speed="350"><i class="icon-line-ellipsis"></i></a>
									</div>
									<div class="bg-overlay-bg dark" data-hover-animate="fadeIn" data-hover-speed="350"></div>
								</div>
							</div>
							<div class="portfolio-desc">
								<h3><a href="alphabets.html#content">Gurbaga</a></h3>
								<span><a href="alphabets.html#content">- mümkin boldugyça giň ýylgyryň, dodaklaryňyzy 5-10 sekuntlap saklaň we dodaklaryňyzy öňki ýagdaýyna gaýtaryň</a></span>
							</div>
						</div>
						<div class="portfolio-item">
							<div class="portfolio-image">
								<a href="#">
									<img src="{{ asset('assets/img/4/4.jpg')}}" alt="Morning Dew">
								</a>
								<div class="bg-overlay" data-lightbox="gallery">
									<div class="bg-overlay-content dark" data-hover-animate="fadeIn">
										<a href="{{ asset('assets/img/full/4.jpg')}}" class="overlay-trigger-icon bg-light text-dark" data-hover-animate="fadeInDownSmall" data-hover-animate-out="fadeOutUpSmall" data-hover-speed="350" data-lightbox="gallery-item"><i class="icon-line-stack-2"></i></a>
										<a href="{{ asset('assets/img/full/4-1.jpg')}}" class="d-none" data-lightbox="gallery-item"></a>
									</div>
									<div class="bg-overlay-bg dark" data-hover-animate="fadeIn"></div>
								</div>
							</div>
							<div class="portfolio-desc">
								<h3><a href="events.html#content">Piljagaz</a></h3>
								<span><a href="events.html#content">- dodaklaryňyzy ýapyň, öňe we 5 sekunt saklaň.</a></span>
							</div>
						</div>
						<div class="portfolio-item">
							<div class="portfolio-image">
								<a href="#">
									<img src="{{ asset('assets/img/4/5.jpg')}}" alt="Console Activity">
								</a>
								<div class="bg-overlay">
									<div class="bg-overlay-content dark" data-hover-animate="fadeIn">
										<a href="img/full/5.jpg')}}" class="overlay-trigger-icon bg-light text-dark" data-hover-animate="fadeInDownSmall" data-hover-animate-out="fadeOutUpSmall" data-hover-speed="350" data-lightbox="image" title="Image"><i class="icon-line-plus"></i></a>
									</div>
									<div class="bg-overlay-bg dark" data-hover-animate="fadeIn"></div>
								</div>
							</div>
							<div class="portfolio-desc">
								<h3><a href="#">Unique New York</a></h3>
								<span><a href="#">“I like New York, unique New York, I like unique New York.”</a></span>
							</div>
						</div>
						<div class="portfolio-item">
							<div class="portfolio-image">
								<a href="#">
									<img src="{{ asset('assets/img/4/6.jpg')}}" alt="Shake It!">
								</a>
								<div class="bg-overlay" data-lightbox="gallery">
									<div class="bg-overlay-content dark" data-hover-animate="fadeIn">
										<a href="img/full/6-1.jpg')}}" class="overlay-trigger-icon bg-light text-dark" data-hover-animate="fadeInDownSmall" data-hover-animate-out="fadeOutUpSmall" data-hover-speed="350" data-lightbox="gallery-item"><i class="icon-line-stack-2"></i></a>
										<a href="img/full/6-2.jpg')}}" class="d-none" data-lightbox="gallery-item"></a>
										<a href="img/full/6.jpg')}}" class="d-none" data-lightbox="gallery-item"></a>
									</div>
									<div class="bg-overlay-bg dark" data-hover-animate="fadeIn"></div>
								</div>
							</div>
							<div class="portfolio-desc">
								<h3><a href="alphabets.html">Ýylan</a></h3>
								<span><a href="#">- ýylgyryň, agzyňyzy açyň, diliňizi agzyňyzdan çykaryň, soňra gizläň.</a></span>
							</div>
						</div>

					</div>
			</div>


				<div class="section" id="prob" style="background: url('/assets/img/others/section-bg.jpg') no-repeat center center / cover; padding: 80px 0;">
					<div class="container clearfix">
						<div class="row">
							<div class="col-lg-8">
								<h3 class="mb-2"> Sözleýiş  <span>ösüş</span> maslahatlary</h3>
								<div class="svg-line mb-2 clearfix">
									<img src="{{ asset('assets/img/divider-1.svg')}}" alt="svg divider" height="10">
								</div>
								<p class="mb-5">Bu sahypa  ene- atalara niyetlenip, bu yerde çagalar bilen ayratynlykda dürli maşklary bilelikde ýerine ýetirip bilersiňiz. Çaganyň dürli ýaşyndaky ýüze çykyp bilýän sebäpler bilen hem tanyşyp, gerekli maglumatlary alyp bilersiňiz. </p>
								<div class="row mission-goals gutter-30 mb-0">
									<div class="col-md-12">
										<div class="feature-box fbox-plain bg-white mx-0">
											<div class="fbox-media position-relative col-auto p-0 mr-4">
												<img src="{{ asset('assets/img/icons/education.svg')}}" alt="Featured Icon 3" width="50">
											</div>
											<div class="fbox-content">
												<h3 class="nott ls0"><a href="#" class="text-dark">Sözleýişiň bozulmagynyň sebäpleri.</a></h3>
												<p>Mekdebe  çenli çagalarda iň köp ýaýran sözleýiş bozulmalary, sesli gürleýişdäki dürli näsazlyklar, erkin gürlemek we umumy sözleýişiň gijikdirilmegi ýüze çykýar.</p>
											</div>
										</div>
									</div>
									<div class="col-md-12">
										<div class="feature-box fbox-plain bg-white mx-0">
											<div class="fbox-media position-relative col-auto p-0 mr-4">
												<img src="{{ asset('assets/img/icons/environmental.svg')}}" alt="Featured Icon 5" width="50">
											</div>
											<div class="fbox-content">
												<h3 class="nott ls0"><a href="#" class="text-dark">Organiki sebäpler</a></h3>
												<p>Gepleýiş enjamynyň we nerw ulgamynyň sözleýiş funksiýasy bilen baglanyşykly dürli baglanyşyklaryna täsir edýän şikesler ýa-da agyryly proseslerdir.</p>
											</div>
										</div>
									</div>
									<div class="col-md-12">
										<div class="feature-box fbox-plain bg-white mx-0">
											<div class="fbox-media position-relative col-auto p-0 mr-4">
												<img src="{{ asset('assets/img/icons/home.svg')}}" alt="Featured Icon 3" width="50">
											</div>
											<div class="fbox-content">
												<h3 class="nott ls0"><a href="#" class="text-dark">Funksional gürleýiş bozulmalary</a></h3>
												<p>Söz organlarynyň ýa-da nerw ulgamynyň gurluşynda organiki üýtgeşmeleri.</p>
											</div>
										</div>
									</div>

								</div>
							</div>

							<div class="col-lg-4 mt-5 mt-lg-0">
								<h3 class="mb-2">Wideo Sapaklar</h3>
								<div class="svg-line mb-2 clearfix">
									<img src="{{ asset('assets/img/divider-1.svg')}}" alt="svg divider" height="10">
								</div>
								<p class="mb-5">Bu wideo sapaklar çaganyň dogry gürlemek endigini öwredyar.</p>
								<div class="clear"></div>
									<a href="{{ asset('assets/img/video/1.mp4')}}" data-lightbox="iframe" class="shadow-sm d-flex align-items-center justify-content-center play-video rounded position-relative bg-color mt-3 clearfix" style="background: linear-gradient(rgba(0,0,0,.05), rgba(0,0,0,.01)), url('/assets/img/others/5.jpg') no-repeat center center / cover; height: 300px"><i class="icon-play"></i></a>
								<div class="row mt-4" data-lightbox="gallery">
									<div class="col-sm-6">
										<a href="{{ asset('assets/img/video/2.mp4')}}" data-lightbox="iframe" class="shadow-sm d-flex align-items-center justify-content-center play-video rounded position-relative bg-color left" style="background: url('/assets/img/others/4.jpg') no-repeat center center / cover; height: 140px"><i class="icon-play icon-small"></i></a>
									</div>

									<div class="col-sm-6 mt-4 mt-sm-0">
										<a href="{{ asset('assets/img/video/3.mp4')}}" data-lightbox="iframe" class="shadow-sm d-flex align-items-center justify-content-center play-video rounded position-relative bg-color left" style="background: url('/assets/img/others/2.jpg') no-repeat center center / cover; height: 140px"><i class="icon-play icon-small"></i></a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="bg-color subscribe-section position-relative" style="margin-top: 100px;" id="info">
					<div class="container" style="z-index: 2;">
						<div class="center collapsed subscribe-section-target" data-toggle="collapse" data-target="#target-1">
							<div class="subscribe-icon"><i class="icon-envelope21"></i></div>
							<h2 class="mb-3 mt-3 position-relative" style="z-index: 1; ">Biz bilen Habarlaşmak üçin <i class="icon-arrow-down position-relative" style="top: 5px"></i>
							</h2>
						</div>
						<div class="collapse" id="target-1">
							<div class="form-widget pb-5" data-alert-type="false">

								<div class="form-result"></div>

								<div class="nonprofit-loader css3-spinner" style="position: absolute;">
									<div class="css3-spinner-bounce1"></div>
									<div class="css3-spinner-bounce2"></div>
									<div class="css3-spinner-bounce3"></div>
								</div>
								<div id="nonprofit-submitted" class="center">
									<h4 class="font-weight-semibold mb-0">Thank You for Contact Us! Our Team will contact you asap on your email Address.</h4>
								</div>

								<form id="nonprofit" class="row mt-2" action="include/form.php" method="post" enctype="multipart/form-data">
									<div class="col-md-4 mb-4 mb-md-1">
										<label for="nonprofit-name">Adyňyz:</label>
										<input type="text" name="nonprofit-name" id="nonprofit-name" class="form-control border-form-control required" value="" placeholder="Adyňyzy giriziň">
									</div>
									<div class="col-md-4 mb-4 mb-md-1">
										<label for="nonprofit-phone">Telefon belgiňiz:</label>
										<input type="text" name="nonprofit-phone" id="nonprofit-phone" class="form-control border-form-control" value="" placeholder="Telefon Belgiňizi giriziň">
									</div>
									<div class="col-md-4 mb-4 mb-md-1">
										<label for="nonprofit-email">Email:</label>
										<input type="email" name="nonprofit-email" id="nonprofit-email" class="form-control border-form-control required" value="" placeholder="Elektron Poçtaňyzy giriziň">
									</div>
									<div class="col-12 d-none">
										<input type="text" id="nonprofit-botcheck" name="nonprofit-botcheck" value="" />
									</div>
									<button type="submit" name="nonprofit-submit" class="btn button button-rounded button-xlarge button-dark bg-dark shadow nott ls0 m-0 subscribe-button">Subscribe Now</button>
									<input type="hidden" name="prefix" value="nonprofit-">
								</form>
							</div>
						</div>
					</div>
					<div style="background-image: url('img/divider-4.svg')}}'); position: absolute; bottom: -20px; left: 0; width: 100%; height: 60px; z-index: 1;"></div>
				</div>

				<div class="section m-0 p-0 row align-items-stretch clearfix" style="background-color: rgba(198,192,156, 0.15);">
					<div class="col-lg-4 dark d-flex flex-column align-items-center center justify-content-center" style="background: linear-gradient(rgba(0,0,0,.3), rgba(0,0,0,.5)), url('/assets/img/others/event.jpg') left center no-repeat; background-size: cover; min-height: 300px;">
						<h2 class="display-4 px-4 font-weight-bold mb-4 d-block">Günlik Maşklar</h2>
					</div>
					<div class="col-lg-8 col-padding">
						<div class="events-calendar">
							<div class="events-calendar-header clearfix">
								<div class="calendar-month-year d-flex text-left justify-content-between align-items-center w-100">
									<div>
										<span id="calendar-month" class="calendar-month text-dark"></span>
										<span id="calendar-year" class="calendar-year text-dark"></span>
									</div>
									<nav>
										<span id="calendar-prev" class="calendar-prev bg-color"><i class="icon-chevron-left text-dark"></i></span>
										<span id="calendar-next" class="calendar-next bg-color"><i class="icon-chevron-right text-dark"></i></span>
										<span id="calendar-current" class="calendar-current bg-color" title="Got to current date"><i class="icon-reload text-dark"></i></span>
									</nav>
								</div>
							</div>
							<div id="calendar" class="fc-calendar-container"></div>
						</div>

					</div>
				</div>

				<div class="line line-sm my-0 clearfix"></div>
				<div class="clear"></div>
				<div class="section section-details mb-0 bg-white" style="padding: 80px 0 160px;">
					<div class="w-100 h-100 d-none d-md-block" style="position: absolute; top: 0; left: 0; background: #FFF url('/assets/img/others/6.jpg') no-repeat bottom right / cover;"></div>
					<div class="container clearfix">
						<div class="row">
							<div class="col-md-4 px-4 mb-5">
								<h4 class="font-weight-medium mb-4">Biz Barada</h4>
								<p class="mb-3">Çaganyň söz baýlygy näçe baý we dogry boldugyça, pikirlerini aýtmak aňsat bolýar, we hakykaty tanamak ukyby şonça-da giňeýar.</p>
								<abbr title="Location"><strong>Salgymyz:</strong></abbr><a href="#"> Aşgabat şäheri Köpetdag etr, 12/54 jaýy</a><br>
								<abbr title="Phone Number"><strong>Telefon:</strong></abbr> (+993) 62 632521<br>
								<abbr title="Email Address"><strong>Poçta:</strong></abbr> info@logoped.com
							</div>


							<div class="col-md-4 px-4 mb-5 mb-md-0">
								<h4 class="font-weight-medium mb-4">Habarlaşmak</h4>
								<p class="mb-3">Ähli sorag jogaplarňyz gysaga wagta jogap beriler.</p>
								<a href="#" class="mb-1 d-block"><i class="icon-envelope21 position-relative" style="top: 1px;"></i> bahar@info.com</a>
								<div class="font-weight-medium mb-2 d-block">Duşenbe - Anna 10:30 -18:00</div>
								<a href="#" class="social-icon si-dark si-small si-facebook" title="Facebook">
									<i class="icon-line-mail"></i>
									<i class="icon-line-mail"></i>
								</a>

								<a href="#" class="social-icon si-dark si-small si-delicious" title="Delicious">
									<i class="icon-facebook"></i>
									<i class="icon-facebook"></i>
								</a>

								<a href="#" class="social-icon si-dark si-small si-paypal" title="Paypal">
									<i class="icon-instagram"></i>
									<i class="icon-instagram"></i>
								</a>

								<a href="#" class="social-icon si-dark si-small si-flattr" title="Flattr">
									<i class="icon-twitter"></i>
									<i class="icon-twitter"></i>
								</a>

								<a href="#" class="social-icon si-dark si-small si-android" title="Android">
									<i class="icon-google"></i>
									<i class="icon-google"></i>
								</a>

								<a href="#" class="social-icon si-dark si-small si-smashmag" title="Smashmag">
									<i class="icon-youtube"></i>
									<i class="icon-youtube"></i>
								</a>
							</div>


						</div>
					</div>
				</div>
			</div>
		</section><!-- #content end -->

@stop
