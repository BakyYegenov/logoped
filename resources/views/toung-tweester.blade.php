@extends('layouts.layout')
@section('content')

    	<!-- Page Title
		============================================= -->
		<section id="page-title" class="page-title-dark page-title-parallax page-title-center" style="background: linear-gradient(to bottom, rgba(6, 54, 57,.9), rgba(6, 54, 57,.9)), url('img/cause/grid/1.jpg')}}') no-repeat center center; background-size: cover; padding: 120px 0;">

			<div class="container clearfix">
				<h1 class="mb-3">Sözleýiş ösüşiniň tapgyrlary</h1>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="{{ route('home') }}">Baş sahypa</a></li>
					<li class="breadcrumb-item"><a href="#">Sapaklar</a></li>
					<li class="breadcrumb-item active" aria-current="page">Ýaňlytmaçlar</li>
				</ol>
			</div>

		</section><!-- #page-title end -->


		<!-- Content
		============================================= -->
		<section id="content">
			<div class="content-wrap">
				<div class="container clearfix">

					<div class="fancy-title title-border">
						<h3>Toung Tweester</h3>
					</div>

					<div class="row justify-content-center col-mb-50 mb-0">
						@foreach ( $tweesters as  $tweester)
                        <div class="col-sm-4 col-lg-3">
							<div class="feature-box text-center media-box fbox-bg">
								<div class="fbox-media">
									<a href="#"><img src="/upload/{{  $tweester->image }}" alt="Featured Box Image"></a>
								</div>
								<div class="fbox-content">
									<h3>{{  $tweester->title }}</h3>
									<p >{{  $tweester->description }}</p>
								</div>
							</div>
						</div>
                        @endforeach


					</div>
				</div>
			</div>
		</section>


@stop
