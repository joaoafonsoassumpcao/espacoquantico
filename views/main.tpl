{{ define "mainSiteLayout" }}

<!doctype html>
<html class="no-js" lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Espaço Quântico Vegeton</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Favicon -->
    <link rel="icon" type="image/png" sizes="16x16" href="../public/favicon-16x16.png">
    <!-- Bootstrap -->
    <link rel="stylesheet" href="../public/assets/styles/vendor/bootstrap.min.css">
    <!-- Fonts -->
    <link rel="stylesheet" href="../public/assets/fonts/et-lineicons/css/style.css">
    <link rel="stylesheet" href="../public/assets/fonts/linea-font/css/linea-font.css">
    <link rel="stylesheet" href="../public/assets/fonts/fontawesome/css/font-awesome.min.css">
    <!-- Slider -->
    <link rel="stylesheet" href="../public/assets/styles/vendor/slick.css">
    <!-- Lightbox -->
    <link rel="stylesheet" href="../public/assets/styles/vendor/magnific-popup.css">
    <!-- Animate.css -->
    <link rel="stylesheet" href="../public/assets/styles/vendor/animate.css">


    <!-- Definity CSS -->
    <link rel="stylesheet" href="../public/assets/styles/main.css">
    <link rel="stylesheet" href="../public/assets/styles/responsive.css">

    <link rel="stylesheet" href="../public/modal.css">


    <!-- JS -->
    <script src="../public/assets/js/vendor/modernizr-2.8.3.min.js"></script>

    <!-- ========== Preloader ========== -->
    <div class="preloader">
        <img src="../public/assets/images/loader.svg" alt="Loading...">
    </div>

</head>

<style>
    .footer-contact .contact-info address {
        position: absolute;
        margin-bottom: 0;
        padding: 280px 100px 0 130px;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        background: rgba(211, 250, 215, 0.44);
        -webkit-transition: opacity 0.05s, visibility 1s;
        transition: opacity 0.5s, visibility 0.6s;
    }

    @font-face {
        font-family: CenturyGothic;
        src: url(../public/assets/fonts/gothic.woff);
    }

    @font-face {
        font-family: Comfortaa;
        src: url(../public/assets/fonts/comfortaa.woff);
    }

    .copyright{
        background:transparent;
        font-size:20px;
    }

    .preloader {
        position: fixed;
        top: 0;
        left: 0;
        right: 0;
        bottom: 0;
        background-color: #00AF00;
        z-index: 9999;
    }

</style>

<body id="page-top">



<style>
    .navbar-nav {
        float: right;
        margin: 0;
    }
</style>
<nav class="navbar navbar-default navbar-fixed-top mega navbar-trans">

    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>

            <!-- Logo -->
            <a class="navbar-brand" href="/"><img class="" style="width:auto; height: 30px" src="../public/img/logonova.png" alt="Definity - Logo"></a>
        </div><!-- / .navbar-header -->

        <!-- Navbar Links -->
        <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav">




                <!-- <li class="dropdown mega-fw">
                    <a href="/blog" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="350" role="button" aria-haspopup="true" aria-expanded="false">BLOG<span class="caret"></span></a>
                </li> -->






                <!-- <li class="dropdown mega-fw">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="350" role="button" aria-haspopup="true" aria-expanded="false">GALERIA<span class="caret"></span></a>

                </li> -->



                <li class="dropdown mega-fw">
                    <a href="/contato" class="dropdown-toggle">CONTATO<span class="caret"></span></a>
                </li>

            </ul><!-- / .nav .navbar-nav -->




        </div><!--/.navbar-collapse -->
    </div><!-- / .container -->
</nav><!-- / .navbar -->



    {{ template "view" . }}





<!-- Social Links -->
<div class="dark-bg" style="background-image: url(../public/rp.jpg); background-size:cover; height: 350px">
    <div class="container footer-social-links">
        <div class="row">

            <ul>
                <li><a href="https://pt-br.facebook.com/Espa%C3%A7o-Qu%C3%A2ntico-Vegeton-1482525438626466/" style="font-size:20px"><i class="fa fa-facebook-square" aria-hidden="true" style="font-size:40px"></i>&nbsp;facebook</a></li>
                <li><a href="https://www.instagram.com/espacoquanticovegeton/?hl=pt-br" style="font-size:20px"><i class="fa fa-instagram" aria-hidden="true" style="font-size:40px"></i>&nbsp;Instagram</a></li>
            </ul>

        </div>

        <div class="copyright">
            <div class="row">

                <div class="col-md-6">
                    <small style="color:white">&copy; 2017 Todos direitos reservados. Designed by João Afonso Assumpção   <a class="no-style-link" href="http://www.rolleoficial.com.br/" target="_blank">(ROLLE)</a></small>
                </div>

                <div class="col-md-6">
                    <small><a href="#page-top" class="pull-right to-the-top" style="color:white">Voltar para o topo<i class="fa fa-angle-up"></i></a></small>
                </div>

            </div><!-- / .row -->
        </div>

    </div><!-- / .container -->
</div><!-- / .dark-bg -->


</footer><!-- / .footer-contact -->
<!-- / .footer-litle -->



</body>

<!-- ========== Scripts ========== -->

<script src="../public/assets/js/vendor/jquery-2.1.4.min.js"></script>
<script src="../public/assets/js/vendor/google-fonts.js"></script>
<script src="../public/assets/js/vendor/jquery.easing.js"></script>
<script src="../public/assets/js/vendor/jquery.waypoints.min.js"></script>
<script src="../public/assets/js/vendor/bootstrap.min.js"></script>
<script src="../public/assets/js/vendor/bootstrap-hover-dropdown.min.js"></script>
<script src="../public/assets/js/vendor/smoothscroll.js"></script>
<script src="../public/assets/js/vendor/jquery.localScroll.min.js"></script>
<script src="../public/assets/js/vendor/jquery.scrollTo.min.js"></script>
<script src="../public/assets/js/vendor/jquery.stellar.min.js"></script>
<script src="../public/assets/js/vendor/jquery.parallax.js"></script>
<script src="../public/assets/js/vendor/slick.min.js"></script>
<script src="../public/assets/js/vendor/jquery.easypiechart.min.js"></script>
<script src="../public/assets/js/vendor/countup.min.js"></script>
<script src="../public/assets/js/vendor/isotope.min.js"></script>
<script src="../public/assets/js/vendor/jquery.magnific-popup.min.js"></script>
<script src="../public/assets/js/vendor/wow.min.js"></script>
<script src="../public/assets/js/vendor/jquery.mb.YTPlayer.min.js"></script>
<script src="../public/assets/js/vendor/jquery.ajaxchimp.js"></script>

<script src="../public/modal.js"></script>

<!-- Google Maps -->
<script src="../public/assets/js/gmap.js"></script>
<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDOcd7o0W0r846FC_GoHSK56xeAvP8fV4s"></script>






<!-- Definity JS -->
<script src="../public/assets/js/main.js"></script>



</body>
</html>


{{ end }}
