@extends('layouts.layout')
@section('content')

    	<!-- Slider
		============================================= -->
		<section id="slider" class="slider-element swiper_wrapper min-vh-75 justify-content-start dark" style="background: #063639">

			<div class="container">
				<div class="row h-100 align-items-center justify-content-between">
					<div class="col-lg-4 col-md-6 py-5 py-md-0">
						<div class="heading-block border-bottom-0 mb-4">
							<h5 class="mb-1 text-uppercase ls2 color op-06">Biz barada</h5>
							<h2 class="mb-4 nott">Biziň Maksadymyz</h2>
						</div>
						<div class="svg-line bottommargin-sm">
							<img src="{{ asset('assets/img/divider-1.svg')}}" alt="svg divider" height="20">
						</div>
							<p class="mb-5">Bu websahypa çaganyň dogry gürlemek endigini öwredyar.Eger çagada dogry gürlemekde ejir çekyän bolsa, şu websayty kömek eder. Bu yzagalyşyk, yzygiderli gaýtalanýan kesel hökmünde tanalyar.  </p>
						<!-- <a href="demo-nonprofit-causes-single.html" class="button button-rounded button-xlarge bg-color button-light text-dark shadow nott ls0 m-0"></a> -->

					</div>
					<div class="col-lg-8 col-md-6">
						<img src="{{ asset('assets/img/about/1.png')}}" alt="Image" class="full-width-img">
					</div>
				</div>
			</div>

		</section>

		<!-- Content
		============================================= -->
		<section id="content">
			<div class="content-wrap py-0 overflow-visible">

				<div class="container">

					<div class="slider-feature">
						<div class="row gutter-10 justify-content-center">
							<!-- <div class="col-md-3">
								<div class="card center border-left-0 border-right-0 border-top-0 border-bottom border-bottom shadow py-3 rounded-0 font-weight-semibold text-uppercase ls1 h-translate-y-sm all-ts">
									<div class="card-body">
										<img src="{{ asset('assets/img/icons/breakfast.svg')}}" alt="Counter Icon" width="70" class="mb-4">
										<div class="counter font-secondary"><span data-from="100" data-to="11265" data-refresh-interval="50" data-speed="2100" data-comma="true"></span>+</div>
										<h5 class="nott ls0 mb-0 mt-2 text-muted">Meals Surved</h5>
									</div>
								</div>
							</div> -->
							<div class="col-md-3">
								<div class="card center border-left-0 border-right-0 border-top-0 border-bottom border-bottom shadow py-3 rounded-0 font-weight-semibold text-uppercase ls1 h-translate-y-sm all-ts">
									<div class="card-body">
										<img src="{{ asset('assets/img/icons/volunteers.svg')}}" alt="Counter Icon" width="70" class="mb-4">
										<div class="counter font-secondary"><span data-from="100" data-to="2500" data-refresh-interval="50" data-speed="2200" data-comma="true"></span>+</div>
										<h5 class="nott ls0 mb-0 mt-2 text-muted">Isleg bildirýänler</h5>
									</div>
								</div>
							</div>
							<div class="col-md-3">
								<div class="card center border-left-0 border-right-0 border-top-0 border-bottom border-bottom shadow py-3 rounded-0 font-weight-semibold text-uppercase ls1 h-translate-y-sm all-ts">
									<div class="card-body">
										<img src="{{ asset('assets/img/icons/educated.svg')}}" alt="Counter Icon" width="70" class="mb-4">
										<div class="counter font-secondary"><span data-from="100" data-to="17408" data-refresh-interval="25" data-speed="2300" data-comma="true"></span>+</div>
										<h5 class="nott ls0 mb-0 mt-2 text-muted">Maglumat çeşmeleri</h5>
									</div>
								</div>
							</div>
							<div class="col-md-3">
								<div class="card center border-left-0 border-right-0 border-top-0 border-bottom border-bottom shadow py-3 rounded-0 font-weight-semibold text-uppercase ls1 h-translate-y-sm all-ts">
									<div class="card-body">
										<img src="{{ asset('assets/img/icons/shelter.svg')}}" alt="Counter Icon" width="70" class="mb-4">
										<div class="counter font-secondary"><span data-from="150" data-to="13413" data-refresh-interval="50" data-speed="2100" data-comma="true"></span>+</div>
										<h5 class="nott ls0 mb-0 mt-2 text-muted">Online Hyzmatlar</h5>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

			</div>
		</section><!-- #content end -->

		<!-- Content
		============================================= -->
		<section id="content">
			<div class="content-wrap">
				<div class="container clearfix">

					<div id="side-navigation" class="row" data-plugin="tabs">

						<div class="col-md-6 col-lg-4">
							<ul class="sidenav">
								<li><a href="#snav-content1"><i class="icon-info-circle"></i>Maslahatlar<i class="icon-chevron-right"></i></a></li>
								<li><a href="#snav-content2"><i class="icon-circle"></i>Sözleýişiň bozulmagynyň sebäpleri.<i class="icon-chevron-right"></i></a></li>
								<li><a href="#snav-content3"><i class="icon-circle"></i>Organiki sebäpler<i class="icon-chevron-right"></i></a></li>
								<li><a href="#snav-content4"><i class="icon-circle"></i>Funksional gürleýiş bozulmalary<i class="icon-chevron-right"></i></a></li>
								<li><a href="#snav-content5"><i class="icon-circle"></i>Çagalaryň söz dikeldişiň esaslary<i class="icon-chevron-right"></i></a></li>
							</ul>
						</div>

						<div class="col-md-6 col-lg-8">
							<div id="snav-content1">
								<h3>Maslahatlar</h3>
								Çaganyň söz baýlygy näçe baý we dogry boldugyça, pikirlerini aýtmak aňsat bolýar, we hakykaty tanamak ukyby şonça-da giňeýar. Çagalaryň özüni alyp barşy we ulular bilen gatnaşygy, ene- atalaryna bagly bolup durýar.Çaganyň islendik gürleýiş näsazlyklar çaganyň işjeňligine we özüni alyp barşyna uly täsir edip biler.Dogry gürläp bilmeýän çagalar kem-kemden öz kemçiliklrine düşünip başlaýar:dmýarlar, keýpsiz we kararsyz bolýarlar. Kähalatlarda gürleýän sözlerine düşünilmese gaharlanyp we düýbünden lapgeç bolýarlar. Söz dikeldiş pedagogikasy çagalara söz düzüminiň we grammatiki gurluşyň emele gelmegi meselesi giňden beýan edilýär. Dogry ses aýdylyşynyň emele gelmegine az ähmiýet berilmeýär, munuň sebäbi sesli aýdylyşdaky kemçilikleriň öňüni almak üçin esasy iş görnüşleriniň biri hökmünde ses sesiniň emele gelmegine degişli meselä üns berilmeýär. Dürli sebäplere görä emele gelen nädogry ses aýdylyşyny düzetmek, esasan, terapewtler we ene-atalar tarapyndan çözülmelidir.
							</div>

							<div id="snav-content2">
								<h3>Sözleýişiň bozulmagynyň sebäpleri.</h3>
								Mekdebe  çenli çagalarda iň köp ýaýran sözleýiş bozulmalary, sesli gürleýişdäki dürli näsazlyklar, erkin gürlemek we umumy sözleýişiň gijikdirilmegi ýüze çykýar.Sebäpleri başga; psihofiziki ösüşiň yza galmagy, çagalaryň ýaş wagtynda gürleýiş ösüşine üns bermezlik, maşgalada iki dilli bolmak we ş.m.
								Periferiýa gürleýiş enjamynyň dürli kemçilikleri çagada dogry ses aýdylyşynyň emele gelmegini gijikdirip ýa-da bozup biler; gysga frenumyň üýtgemegi, gaty ýumşak mäziň ýarylmagy.
								Sözleýiş bozulmalarynyň sebäpleri organiki we funksional.

							</div>

							<div id="snav-content3">
								<h3>Organiki sebäpler,</h3>
								Organiki sebäpler, gepleýiş enjamynyň we nerw ulgamynyň sözleýiş funksiýasy bilen baglanyşykly dürli baglanyşyklaryna täsir edýän şikesler ýa-da agyryly proseslerdir.
							</div>

							<div id="snav-content4">
								<h3>Çagalaryň söz dikeldişiň esaslary</h3>
								Funksional gürleýiş bozulmalary, söz organlarynyň ýa-da nerw ulgamynyň gurluşynda organiki üýtgeşmeleri.
								Ses tanamak bozulmalary, artikulýator enjamynyň gurluşyndaky anomaliýalar, içki hereketiň dürli bozulmalary we dogry we ýeterlik bilim almazlyk bilen ýüze çykyp biler.

							</div>

							<div id="snav-content5">
								<h3>Çagalaryň söz dikeldişiň esaslary</h3>
									Ene-atalar çagalaryň sözleýişini öwrenenlerinde, olaryň aýdylyşyny we çylşyrymly harplary aýtmak ukybyny barlamalydyrlar. Çagalaryň aýdylyşyny has içgin öwrenmek üçin olara harplary tapawutlandyrmagy öwretmek zerurdyr. Mysal üçin, gykylykly harp ([c] [z] sesli harp (w, f, z, s, b, p, d, t, g, k), sonar harpy (l, r)
									Käbir çagalar käbir harplary ýalňyş aýdýarlar. Ene-atalar çagalarynyň her aýdylyşyna üns bermelidirler. Çaga tapawutlandyrylan sesleriň birini aýtmasa ýa-da başga birine çalşmasa, bu sesi tapawutlandyrmak ukyby üçin bu sesleri aýtmak zerur, diňe ony dogry eşitmek we şuňa meňzeş sesden tapawutlandyrmak ukyby bar talap edilýär. Käwagt çagalar ([sha] - [sa], [sho] - [co] arasynda sesleri bulaşdyrýarlar. [Shu] - [su], [shi] - [sy])

							</div>
						</div>

					</div>

				</div>
			</div>
		</section><!-- #content end -->


@stop
