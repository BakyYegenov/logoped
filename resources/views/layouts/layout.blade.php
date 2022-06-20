<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no user-scalable=no">
	<!-- Stylesheets
	============================================= -->
	<link rel="stylesheet" href="{{ asset('assets/css/fonts/font.css')}}" type="text/css" />
	<link rel="stylesheet" href="{{ asset('assets/css/bootstrap.css')}}" type="text/css" />
	<link rel="stylesheet" href="{{ asset('assets/css/style.css')}}" type="text/css" />
	<link rel="stylesheet" href="{{ asset('assets/css/swiper.css')}}" type="text/css" />

	<link rel="stylesheet" href="{{ asset('assets/css/dark.css')}}" type="text/css" />
	<link rel="stylesheet" href="{{ asset('assets/css/font-icons.css')}}" type="text/css" />
	<link rel="stylesheet" href="{{ asset('assets/css/animate.css')}}" type="text/css" />
	<link rel="stylesheet" href="{{ asset('assets/css/magnific-popup.css')}}" type="text/css" />

	<link rel="stylesheet" href="{{ asset('assets/css/custom.css')}}" type="text/css" />
	<link rel="stylesheet" href="{{ asset('assets/css/calendar.css')}}" type="text/css" />

	<!-- NonProfit Demo Specific Stylesheet -->
	<link rel="stylesheet" href="{{ asset('assets/css/colors.php?color=C6C09C')}}" type="text/css" /> <!-- Theme Color -->
	<link rel="stylesheet" href="{{ asset('assets/css/fonts.css')}}" type="text/css" />
	<link rel="stylesheet" href="{{ asset('assets/css/nonprofit.css')}}" type="text/css" />
	<!-- / -->

    <title>Logoped</title>

</head>
<body class="stretched">

	<!-- Document Wrapper
	============================================= -->
	<div id="wrapper" class="clearfix">

        @section('header')
            @include('layouts.header')
        @show

            @yield('content')

        @section('footer')
            @include('layouts.footer')
        @show

    </div><!-- #wrapper end -->

    <div id="gotoTop" class="icon-angle-up"></div>


	<script src="{{ asset('assets/js/jquery.js')}}"></script>
	<script src="{{ asset('assets/js/plugins.min.js')}}"></script>
	<script src="{{ asset('assets/js/jquery.calendario.js')}}"></script>
	<script src="{{ asset('assets/js/events.js')}}"></script>

	<!-- Footer Scripts
	============================================= -->
	<script src="{{ asset('assets/js/functions.js')}}"></script>

	<script>
		jQuery(document).ready( function($){
			var elementParent = $('.floating-contact-wrap');
			$('.floating-contact-btn, .btn-contact').off( 'click' ).on( 'click', function(e) {
				elementParent.toggleClass('active', );
				e.preventDefault(e);
			});
		});

		var cal = $( '#calendar' ).calendario( {
			onDayClick : function( $el, $contentEl, dateProperties ) {

				for( var key in dateProperties ) {
					console.log( key + ' = ' + dateProperties[ key ] );
				}

			},
			caldata : canvasEvents
		}),
		$month = $( '#calendar-month' ).html( cal.getMonthName() ),
		$year = $( '#calendar-year' ).html( cal.getYear() );

		$( '#calendar-next' ).on( 'click', function() {
			cal.gotoNextMonth( updateMonthYear );
		} );
		$( '#calendar-prev' ).on( 'click', function() {
			cal.gotoPreviousMonth( updateMonthYear );
		} );
		$( '#calendar-current' ).on( 'click', function() {
			cal.gotoNow( updateMonthYear );
		} );

		function updateMonthYear() {
			$month.html( cal.getMonthName() );
			$year.html( cal.getYear() );
		};

	</script>


</body>
</html>
