@extends('layouts.layout')
@section('content')

<section id="content">
    <div class="content-wrap">
        <div class="container clearfix">

            <div class="fancy-title title-border">
                <h3>Dil Maşklary</h3>
            </div>

            <div class="row justify-content-center col-mb-50 mb-0">
                @foreach ($exercises as $exercise)
                <div class="col-sm-6 col-lg-3">
                    <div class="feature-box text-center media-box fbox-bg">
                        <div class="fbox-media">
                            <a href="#"><img src="/upload/{{ $exercise->image }}" alt="Featured Box Image"></a>
                        </div>
                        <div class="fbox-content" >
                            <h3>{{ $exercise->title }}</h3>
                            <p>{{ $exercise->description }}</p>
                        </div>
                    </div>
                </div>
                @endforeach





            </div>
        </div>
    </div>
</section>

@stop
