{{ define "view" }}

<style>
    .pt-plax-lg-light {
        background: url(../public/bgcontato.jpg);
        background-size: cover;

    }
    .pt-plax-lg-light:before {
        content: '';
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        background: rgba(244, 244, 244, 0.301);
    }

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
        transition: opacity 0.5s, visibility 0.6s;}

    .footer-contact .contact-info address ul li {
        display: block;
        margin-bottom: 30px;
        padding: 7px 0 7px 20px;
        border-left: 1px solid #00AF00;
    }

    .footer-contact .contact-info address .show-map {
        display: block;
        position: absolute;
        bottom: 100px;
        color: #21519E;
    }
</style>
<header class="page-title pt-large pt-light pt-plax-lg-light" data-stellar-background-ratio="0.4">
    <div class="container">
        <div class="row">


            <div class="col-md-6">
                <h1 style="font-size:30px; color:#21519E ">Faça sua<br><b style="font-size:25px; font-weight:200"> <b>reserva!</b></b></h1>
            </div>
        </div>

    </div>
</header>

<footer class="footer-contact">
    <div class="container-fluid">
        <div class="row">


            <div class="col-lg-6 no-gap contact-info">


                <a href="#" class="show-info-link"><i class="fa fa-info"></i>Informações</a>

                <div id="map-canvas" class="footer-map"></div>

                <address class="contact-info-wrapper">

                    <ul>



                        <li class="contact-group"><a href="https://api.whatsapp.com/send?l=pt&phone=556281129670">
                            <span class="adr-heading" style="color:#21519E; font-size:23px"><b>Whatsapp</b> <i class="fa fa-whatsapp"></i></span>
                            <span class="adr-info" style="color:#21519E"><b>Faça sua reserva! <br>(62) 98112-9670</b></span></a>
                        </li>
                        <li class="contact-group">
                            <span class="adr-heading" style="color:#21519E; font-size:23px"><b>Email</b> <i class="fa fa-envelope-o"></i></span>
                            <span class="adr-info" style="color:#21519E"><b>claudinhovegeton@gmail.com</b></span>
                        </li>
                    </ul>

                    <a href="#" class="show-map"><span class="linea-basic-geolocalize-05"></span><b>Mostrar no Google Maps</b></a>
                </address>

            </div>



            <div class="col-lg-6 no-gap section contact-form">
                <header class="sec-heading">
                    <h2 style="color:#21519E; font-weight:600">Entre em contato conosco e faça sua reserva!</h2>
                </header>

                <form action="..public/assets/contact-form/contact-form.php" method="POST" class="form-ajax wow fadeInUp" data-wow-duration="1s" data-wow-delay=".1s">


                    <div class="form-group">
                        <input type="text" name="name" id="name-contact-1" class="form-control validate-locally" placeholder="Seu nome">
                        <label for="name-contact-1" style="color:#00AF00">Nome</label>
                        <span class="pull-right alert-error"></span>
                    </div>

                    <div class="form-group">
                        <input type="email" name="email" id="email-contact-1" class="form-control validate-locally" placeholder="Seu Email">
                        <label for="email-contact-1" style="color:#00AF00">Email</label>
                        <span class="pull-right alert-error"></span>
                    </div>

                    <div class="form-group">
                        <textarea class="form-control" name="message" id="message-contact-1" rows="5" placeholder="Sua mensagem"></textarea>
                        <label for="message-contact-1" style="color:#00AF00">Coloque aqui sua mensagem</label>
                    </div>
                    <input type="submit" class="btn pull-right" style="background-color:#00AF00" value="Enviar">


                    <div class="ajax-message col-md-12 no-gap"></div>

                </form>
            </div>

        </div>
    </div>
</footer>

 {{end}}
