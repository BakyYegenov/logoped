<footer id="footer" style="background-color: #002D40;">


    <!-- Copyrights
    ============================================= -->
    <div id="copyrights" class="bg-color">

        <div class="container clearfix">

            <div class="row justify-content-between align-items-center">
                <div class="col-md-6">
                    Ähli Hukuklar Goralan<br>
                    <div class="copyright-links"><a href="#">Taýýarlan</a> / <a href="#">Bahar Burinowa</a></div>
                </div>

                <div class="col-md-6 d-md-flex flex-md-column align-items-md-end mt-4 mt-md-0">
                    <div class="copyrights-menu copyright-links clearfix">
                        <a href="{{ route('home') }}">Baş sahypa</a>/<a href="{{ route('about-us') }}"> Biz barada</a>/<a href="{{ route('alphabet') }}">Sapaklar</a>/<a href="{{ route('exercises') }}">Maşklar</a>
                    </div>
                </div>
            </div>

        </div>

    </div><!-- #copyrights end -->

</footer><!-- #footer end -->

<!-- Floating Contact
============================================= -->
<div class="floating-contact-wrap" >
    <div class="floating-contact-btn shadow">
        <i class="floating-contact-icon btn-unactive icon-envelope21"></i>
        <i class="floating-contact-icon btn-active icon-line-plus"></i>
    </div>
    <div class="floating-contact-box">
        <div id="q-contact" class="widget quick-contact-widget clearfix">
            <div class="floating-contact-heading bg-color p-4 rounded-top">
                <h3 class="mb-0 font-secondary h2 ls0">Habarlaşmak üçin👋</h3>
                <p class="mb-0">Biz bilen habarlaşmagyň iň aňsat ýoly</p>
            </div>
            <div class="form-widget bg-white" data-alert-type="false">
                <div class="form-result"></div>
                <div class="floating-contact-loader css3-spinner" style="position: absolute;">
                    <div class="css3-spinner-bounce1"></div>
                    <div class="css3-spinner-bounce2"></div>
                    <div class="css3-spinner-bounce3"></div>
                </div>
                <div id="floating-contact-submitted" class="p-5 center">
                    <i class="icon-line-mail h1 color"></i>
                    <h4 class="font-weight-normal mb-0 font-body">Thank You for Contact Us! Our Team will contact you asap on your email Address.</h4>
                </div>
                <form class="mb-0" id="floating-contact" action="{{ route('feedback') }}" method="POST" enctype="multipart/form-data">
                    @csrf
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text bg-transparent"><i class="icon-user-alt"></i></span>
                        </div>
                        <input type="text" name="name" id="floating-contact-name" class="form-control required" value="" placeholder="Adyňyzy doly giriziň">
                    </div>
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text bg-transparent"><i class="icon-at"></i></span>
                        </div>
                        <input type="email" name="email" id="floating-contact-email" class="form-control required" value="" placeholder="Elektron poçtaňyzy giriziň">
                    </div>
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text bg-transparent"><i class="icon-comment21"></i></span>
                        </div>
                        <textarea name="message" id="floating-contact-message" class="form-control required" cols="30" rows="4"></textarea>
                    </div>
                    <button type="submit" name="floating-contact-submit" class="btn btn-dark btn-block py-2">Ugratmak</button>
                </form>
            </div>
        </div>
    </div>
</div>
