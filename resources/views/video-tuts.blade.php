@extends('layouts.layout')
@section('content')

	<!-- Content
		============================================= -->
		<section id="content">
			<div class="content-wrap">
				<div class="container clearfix">

					<div class="fancy-title title-border">
						<h3>Dil Maşklar</h3>
					</div>

					<div class="row justify-content-center col-mb-50 mb-0">
						@foreach ($videos as $video)
                        <div class="col-sm-6 col-lg-3">
							<div class="feature-box text-center media-box fbox-bg">
								<div class="fbox-media">
									<a href="/upload/{{ $video->video }}" data-lightbox="iframe" class="shadow-sm d-flex align-items-center justify-content-center play-video rounded position-relative bg-color left" style="height: 200px"><i class="icon-play icon-small"></i></a>
								</div>
								<div class="fbox-content" >
									<h3>{{ $video->title }}</h3>
								</div>
							</div>
						</div>
                        @endforeach


					</div>
				</div>
			</div>
		</section>

@stop
