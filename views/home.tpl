{{ define "view" }}
<style>

    .ft-centered .ft-dark-spin span, .ft-x .ft-dark-spin span, .ft-y .ft-dark-spin span, .ft-centered .ft-dark-spin i, .ft-x .ft-dark-spin i, .ft-y .ft-dark-spin i {
        display: inline-block;
        color: #f8f8f8;
        border: 1px solid rgba(17, 17, 17, 0);
        background: #00AF00;
        border-radius: 100px;
        -webkit-transition: all 0.3s;
        transition: all 0.3s;
    }

    .ft-centered .ft-item span, .ft-x .ft-item span, .ft-y .ft-item span {
        padding: 0;
        width: 110px;
        height: 110px;
        font-size: 45px;
        line-height: 109px;
    }

    .section {
        padding-top: 160px;
        padding-bottom: 0px;
    }

    .clients-layout .client-item {
        background: white;
        box-shadow: 0px 1px 1px rgba(0, 0, 0, 0.2);
        -webkit-transition: all 0.3s;
        transition: all 0.3s;
    }

    .fs-video-hero, .fw-video-hero {
        background: url(../public/bgsite-compressor.jpg);
        background-size: cover;
    }


    #controlBar_fs-video-one-bg{display: none !important}

    .portfolio-filters .active a {
        background: #00AF00;
        color: #ececec;
        padding: 3px 15px;
    }



    .btn-ghost:after, .btn-ghost-light:after, .navbar .navbar-nav .dropdown .cart-dropdown .cart-btns .btn-ghost-light:after {
        content: '';
        position: absolute;
        background: #00AF00;
        left: 0;
        top: 100%;
        width: 100%;
        height: 100%;
        -webkit-transition: top 0.3s;
        transition: top 0.3s;
        z-index: -1;
    }

    .section {
        padding-top: 60px;
        padding-bottom: 60px;
    }


    .hover-default .p-hover, .hover-light .p-hover {
        display: block;
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        background: rgba(216, 243, 214, 0.8);
        overflow: hidden;
        opacity: 0;
        -webkit-transition: opacity 0.5s;
        transition: opacity 0.5s;
    }

    .btn-ghost, .btn-ghost-light, .navbar .navbar-nav .dropdown .cart-dropdown .cart-btns .btn-ghost-light {
        background: none;
        color: #21519E;
        border: 2px solid #21519E;
        overflow: hidden;
        z-index: 1;
    }

    .ft-layout-50 .ft-item .ft-content-wrapper {
        padding: 75px 15% 75px 100px;
        height: 450px;
        background: #F4FFF4;
    }

    .navbar .navbar-nav li a {
        text-transform: uppercase;
        font-size: 0.8em;
        font-weight: 400;
        letter-spacing: 2px;
        color: #21519E;
        -webkit-transition: color 0.5s;
        transition: color 0.5s;
    }

    .mfp-bg {
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        z-index: 1042;
        overflow: hidden;
        position: fixed;
        background: #00AF00;
        opacity: 0.8;
        filter: alpha(opacity=80);
    }

    .mfp-iframe-holder .mfp-content {
        line-height: 0;
        width: 100%;
        max-width: 968px;
        max-height: 1900px;
    }



</style>
<div class="fs-video-hero">

    <!-- Video Background -->
    <div id="fs-video-one-bg" class="player"
         data-property="{videoURL:'https://youtu.be/9wCGgwzpCfw',containment:'.fs-video-hero',autoPlay:true, mute:true, startAt:1, stopAt:37, opacity:1}">
    </div>

    <div class="bg-overlay">

        <!-- Hero Content -->
        <div class="hero-content-wrapper">
            <div class="hero-content">
                <img src="../public/img/introsite.png" style="width: 500px; height:auto">

                <h1 class="hero-lead wow fadeInLeft" data-wow-duration="1.5s" style="font-size: 20px">LAZER PARA SUA ALMA</h1>
                <a href="#about" class="btn btn-light wow fadeIn" style="color:#21519E !important; font-size:20px" data-wow-duration="2s" data-wow-delay="1s">Conheça!</a>

            </div>
        </div>

        <!-- Scroller -->
        <a href="#about" class="scroller">
            <span class="scroller-text">Rolar para baixo</span>
            <span class="linea-basic-magic-mouse"></span>
        </a>

    </div><!-- / .bg-overlay -->
</div><!-- / .fs-video-hero -->

<div style="background-color:#F4FFF4; padding-top:40px">
    <section id="about" class="container" >
        <div class="row section">



            <div class="">
                <blockquote style="text-align: justify;font-size:20px">Alguma vez você já entrou em um lugar e sentiu uma <b style="color:#21519E">inexplicável energia</b>? Algo que
                    ultrapassou qualquer explicação em palavras, fazendo com que você se sentisse muito em paz,
                    leve e tranquilo, conectado com você mesmo, com o universo e com a natureza de forma
                    especial? Essa é a experiência de quem vem no <b style="color:#00AF00">Espaço Quântico Vegeton</b>.
                </blockquote>
            </div>
            <h3 style="color:#21519E;"><B>Benefícios</B>:</h3>
                <ul style="font-size:18px">
                    <li>Um local para você se reconectar consigo mesmo e com a natureza; </li>
                    <li>Um lugar para você se energizar e recarregar as suas baterias; </li>
                    <li>Um lugar para você se desligar dos problemas do cotidiano, da Matrix, e se descansar; </li>
                    <li>Um Lugar para você acessar a Paz, e a Harmonia interior;</li>
                </ul>

        </div><!-- / .row -->

    </section>
</div>
<!-- ========== Team ========== -->

<div class="gray-bg" style="background-color:#F4FFF4" id="services">
    <section class="container section team-4col">
        <div class="row">

            <header class="sec-heading">
                <h2 style="color:#21519E;"><B>QUEM SOMOS</B></h2>
            </header>

            <div class="col-lg-3 col-md-6 mb-sm-50" style="text-align:justify; color:rgb(80, 80, 80)">
                <h3 style="color:#21519E;">NOSSA PROPOSTA</h3>
                <p style="font-size:18px">Oferecer um espaço de <b style="color:#00AF00">incrível beleza, energia e harmonia</b>, projetado com base em princípios da física quântica e da espiritualidade laica, sem religião, para te entregar uma profunda experiência de Paz e Conexão, abrindo caminhos para mudanças positivas em sua vida.</p>
            </div><!-- / .col-lg-3 -->

            <div class="col-lg-3 col-md-6 mb-sm-50" style="text-align:justify; color:rgb(80, 80, 80)">
                <h3 style="color:#21519E;">VISÃO E MISSÃO</h3>
                <p style="font-size:18px">Ser um espaço de Referência para a realização encontros, vivências e imersões com um propósito diferenciado, de <b style="color:#00AF00">conexão, elevação, evolução expansão da consciência</b>; potencializando todas as experiências de seus usuários, entregando uma poderosa energia que traz conexão, cura e paz interior.
                </p>
            </div><!-- / .col-lg-3 -->

            <div class="col-lg-3 col-md-6 mb-sm-50" style="text-align:justify; color:rgb(80, 80, 80)">
                <h3 style="color:#21519E;">FUNDADOR</h3>
                <p style="font-size:18px">Frederico Pfrimer, seu Idealizador, é Físico Quântico, Coach e Trainner em eventos de desenvolvimento  humano e expansão da consciência, com formações em PNL,  Hipnose e desenvolvimento pessoal. Sua missão é acelerar o processo de evolução e ascensão e assim catalisar o salto quântico do planeta e da humanidade rumo a <b style="color:#00AF00">uma nova consciência na 5ª D</b>.</p>
            </div><!-- / .col-lg-3 -->


            <div class="col-lg-3 col-md-6 mb-sm-50">
                <div class="t-item">
                    <!-- Image -->
                    <div class="t-image">
                        <img src="../public/img/fred-01.jpg" alt="Frederico Pfrimer" class="img-responsive">
                        <!-- <div class="t-description">
                            <div class="content-wrapper">
                                <h4 class="h-alt" style="color:#21519E;"></h4>
                                <p style="color:#21519E;">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud.</p>
                            </div>
                        </div> -->
                    </div>

                    <!-- Info -->
                    <div class="t-info">
                        <h4 class="t-name" style="color:#21519E;">Frederico Pfrimer</h4>
                        <span class="t-role" style="color:#00AF00">Fundador</span>
                        <ul class="social-links">
                            <li ><a href="https://www.facebook.com/frederico.pfrimer"><i  style="color:#21519E;" class="fa fa-facebook"></i></a></li>
                            <li><a href="https://www.instagram.com/fredy.pfrimer/?hl=pt-br"><i  style="color:#21519E;" class="fa fa-instagram"></i></a></li>
                        </ul>
                    </div>
                </div><!-- / .t-item -->
            </div><!-- / .col-lg-3 -->
        </div><!-- / .row -->
    </section><!-- / .contianer -->
</div><!-- / .gray-bg -->

<!-- ========== Portfolio Boxed - 4 Columns ========== -->
<div style="background-image: url(../public/img/bgprincipios1-01-compressor.jpg); background-size:cover; background-attachment:fixed">
    <section class="container portfolio-layout portfolio-columns-boxed" style="padding-top:20px;margin-top:20px; ">
        <div class="row">
            <header class="sec-heading" style="margin-top:30px">
                <h2 style="color:#21519E; font-weight:600">PRINCÍPIOS QUÂNTICOS</h2>
                <!-- <span style="color:rgb(51, 115, 189);font-weight:600" class="subheading">ENCONTRAR SUA PAZ ATRAVÉS DE PRINCÍPIOS UNIVERSAIS.</span> -->
            </header>
        </div><!-- / .row -->



        <div class="row ws-m" style="width:100%">
            <div id="pfolio" style="background-color:white; opacity:0.9;">

                <!-- Item 1 -->
                <div class="col-md-3 portfolio-item print">
                    <div class="p-wrapper hover-default">
                        <img src="../public/icons/icon1-02-compressor.jpg" alt="Project Example">
                        <div class="p-hover">
                            <div class="p-content">
                                <h6 class="subheading" style="color:#21519E !important; letter-spacing:0.5px; font-size:15px; line-height:120%; font-weight:600; text-align:center">O espaço segue princípios da geometria sagrada, como harmonia e simetria das formas, e em especial o uso da geometria hexagonal.</h6>
                            </div>
                        </div>

                    </div>
                </div><!-- / .portfolio-item -->

                <!-- Item 2 -->
                <div class="col-md-3 portfolio-item webdesing photo">
                    <div class="p-wrapper hover-default">
                        <img src="../public/icons/icon1-01-01.png" alt="Project Example">
                        <div class="p-hover">
                            <div class="p-content">
                                <h6 class="subheading" style="color:#21519E !important; letter-spacing:0.5px; font-size:15px; line-height:120%; font-weight:600; text-align:center">Os cristais marcam presença no espaço quântico, embelezando o local e trazendo uma energia especial de paz e pureza.</h6>
                            </div>
                        </div>

                    </div>
                </div><!-- / .portfolio-item -->

                <!-- Item 3 -->
                <div class="col-md-3 portfolio-item photo print">
                    <div class="p-wrapper hover-default">
                        <img src="../public/icons/icon2-01.png" alt="Project Example">
                        <div class="p-hover">
                            <div class="p-content">
                                <h6 class="subheading" style="color:#21519E !important; letter-spacing:0.5px; font-size:15px; line-height:100%; font-weight:600; text-align:center">Todo o local foi construído em meio a um bosque natural, aproveitando os espaços naturais e evitando ao máximo a derrubada da vegetação nativa.</h6>
                            </div>
                        </div>

                    </div>
                </div><!-- / .portfolio-item -->

                <!-- Item 4 -->
                <div class="col-md-3 portfolio-item webdesing print">
                    <div class="p-wrapper hover-default">
                        <img src="../public/icons/icon3-01.png" alt="Project Example">
                        <div class="p-hover">
                            <div class="p-content">
                                <h6 class="subheading" style="color:#21519E !important; letter-spacing:0.5px; font-size:15px; line-height:150%; font-weight:600; text-align:center">A reunião e integração harmônica de todos esses elementos fazem com que esse local seja realmente mágico.</h6>
                            </div>
                        </div>

                    </div>
                </div><!-- / .portfolio-item -->



            </div><!-- / #pfolio -->
        </div><!-- / .row -->
    </section><!-- / .portfolio-columns-boxed -->
</div>




<section class="container-fluid portfolio-layout portfolio-columns-fw" style="padding-top:10px;margin-top:70px">
    <div class="row">
        <header class="sec-heading">
            <h2 style="color:#21519E">Conheça o Espaço Quântico</h2>
            <span class="subheading" style="color:rgb(51, 115, 189)">E toda estrutura projetada pensando no seu bem estar.</span>
        </header>
    </div><!-- / .row -->

    <!-- Filters -->




    <div class="row">
        <div id="pfolio">

            <!-- Item 1 -->
            <div class="col-md-4 portfolio-item print">
                <div class="p-wrapper hover-default">
                    <img src="../public/img/bgs/piscinacristais-01.jpg" alt="Project Example">
                    <div class="p-hover">
                        <div class="p-content">
                            <h4 style="color:#21519E"><b>Piscina Quântica</b></h4>
                            <h6 class="" style="color:#21519E; text-transform:none; font-size:15px">Uma mágica piscina hexagonal com mais de 450 kg de cristais ativados, água quente, iluminação colorida fazendo cromoterapia, uma Cachoeira artificial, além de belos cristais iluminados em cada um dos vértices. A piscina fica totalmente integrada com o quiosque, oferecendo uma experiência única de integração e conexão.</h6>
                        </div>
                    </div>
                    <a id="modalBtn" href="../public/img/bgs/piscinacristais-01.jpg" class="open-btn popup-video"><i class="fa fa-expand"></i></a>
                </div>
            </div><!-- / .portfolio-item -->


            <!-- Item 2 -->
            <div class="col-md-4 portfolio-item webdesing photo">
                <div class="p-wrapper hover-default">
                    <img src="../public/img/bgs/cristal-01-01.jpg" alt="Project Example">
                    <div class="p-hover">
                        <div class="p-content">
                            <h4 style="color:#21519E"><b>Templo de Cristal</b></h4>
                            <h6 class="" style="color:#21519E; text-transform:none; font-size:15px">Esse é um espaço sagrado para meditação e cura interior, reservado para momentos especiais. É o mais poderoso campo de energias do local, e mais uma estrutura única construída com um propósito de elevação. Com mais de 10.000kg de cristais em sua fundação, no formado hexagonal, repleto de símbolos da geometria sagrada, e macas quânticas especialmente projetadas, esse templo tem um potencia incrível e indescritível de cura e expansão da consciência.</h6>
                        </div>
                    </div>
                    <a id="modalBtn" href="../public/img/bgs/cristal-01-01.jpg" class="open-btn popup-video"><i class="fa fa-expand"></i></a>
                </div>
            </div><!-- / .portfolio-item -->


            <!-- Item 3 -->
            <div class="col-md-4 portfolio-item photo print">
                <div class="p-wrapper hover-default">
                    <img src="../public/img/bgs/mandala-01.jpg" alt="Project Example">
                    <div class="p-hover">
                        <div class="p-content">
                            <h4 style="color:#21519E"><b>Mandala do Sol</b></h4>
                            <h6 class="" style="color:#21519E; text-transform:none; font-size:15px">Uma mágica piscina hexagonal com mais de 450 kg de cristais ativados, água quente, iluminação colorida fazendo cromoterapia, uma Cachoeira artificial, além de belos cristais iluminados em cada um dos vértices. A piscina fica totalmente integrada com o quiosque, oferecendo uma experiência única de integração e conexão.</h6>
                        </div>
                    </div>
                    <a id="modalBtn" href="../public/img/bgs/mandala-01.jpg" class="open-btn popup-video"><i class="fa fa-expand"></i></a>
                </div>
            </div><!-- / .portfolio-item -->

            <!-- Item 4 -->
            <div class="col-md-4 portfolio-item webdesing print">
                <div class="p-wrapper hover-default">
                    <img src="../public/img/bgs/palestras-01.jpg" alt="Project Example">
                    <div class="p-hover">
                        <div class="p-content">
                            <h4 style="color:#21519E"><b>Salão de Eventos</b></h4>
                            <h6 style="color:#21519E; text-transform:none; font-size:15px">Salão Hexagonal com 105m2 projetado para palestras, vivências e confraternizações. O ambiente conta com som, iluminação RGB, ar condicionado, uma excelente acústica e cristais para potencializar a sua experiência.</h6>
                        </div>
                    </div>
                    <a id="modalBtn" href="../public/img/bgs/palestras-01.jpg" class="open-btn popup-video"><i class="fa fa-expand"></i></a>
                </div>
            </div><!-- / .portfolio-item -->

            <!-- Item 5 -->
            <div class="col-md-4 portfolio-item webdesing">
                <div class="p-wrapper hover-default">
                    <img src="../public/bargourmet.jpg" alt="Project Example">
                    <div class="p-hover">
                        <div class="p-content">
                            <h4 style="color:#21519E"><b>Quiosque Gourmet</b></h4>
                            <h6 style="color:#21519E; text-transform:none; font-size:15px">Uma área de lazer e confraternização, com mesas e cadeiras, uma ambiente descontraído e conectado com a natureza. Dentro dele, temos uma cozinha/bar gourmet, com fogão industrial, geladeira, freezer e duas pias para maior comodidade, onde é possível cozinhar e apreciando a beleza da natureza ao seu redor.</h6>
                        </div>
                    </div>
                    <a id="modalBtn" href="../public/bargourmet.jpg" class="open-btn popup-video"><i class="fa fa-expand"></i></a>
                </div>
            </div><!-- / .portfolio-item -->

            <!-- Item 6 -->
            <div class="col-md-4 portfolio-item photo print webdesing">
                <div class="p-wrapper hover-default">
                    <img src="../public/img/bgs/piscinanoite-01.jpg" alt="Project Example">
                    <div class="p-hover">
                        <div class="p-content">
                            <h4 style="color:#21519E"><b>Piscina Quântica</b></h4>
                            <h6 style="color:#21519E; text-transform:none; font-size:15px">Uma mágica piscina hexagonal com mais de 450 kg de cristais ativados, água quente, iluminação colorida fazendo cromoterapia, uma Cachoeira artificial, além de belos cristais iluminados em cada um dos vértices. A piscina fica totalmente integrada com o quiosque, oferecendo uma experiência única de integração e conexão.</h6>
                        </div>
                    </div>
                    <a id="modalBtn" href="../public/img/bgs/piscinanoite-01.jpg" class="open-btn popup-video"><i class="fa fa-expand"></i></a>
                </div>
            </div><!-- / .portfolio-item -->

        </div><!-- / #pfolio -->
    </div><!-- / .row -->
</section><!-- / .portfolio-columns-fw -->

<div style="height:70px"; ></div>

<div class="container-fluid ft-layout-50" >
    <div class="row" >

        <!-- Feature 1 -->
        <div class="ft-item" >
            <div class="col-lg-6 ft-img-wrapper" >
                <img src="../public/img/bgs/acomodacoes2-01.jpg" alt="Features Image">
            </div>
            <div class="col-lg-6 ft-content-wrapper">
                <h5 style="color:#21519E">NOSSAS ACOMODAÇÕES</h5>
                <br>
                <p style="text-align:justify; font-size:20px">O espaço conta com 8 suítes principais, quartos tríplices com uma cama de casal e uma de solteiro, frigobar, televisão e ar condicionado.</p>
                <!-- <button class="btn-ghost">Clique para conhecer!</button> -->
            </div>
        </div><!-- / .ft-item -->


    </div><!-- / .row -->
</div><!-- / .ft-layout-50 -->
<div style="height:70px"; ></div>


<div class="gray-bg" style="background:url(../public/bgdepo.jpg) no-repeat center center fixed; background-size:cover; padding-bottom:90px">
    <section class="container testimonials-3col">
        <div class="row section">

            <header class="sec-heading">
                <h2 style="color:#21519E"><b>Depoimentos</b></h2>
            </header>

            <!-- Item 1 -->
            <div class="col-md-4 mb-sm-50">
                <div class="t-item">
                    <img src="../public/img/avatarjoao-01.png" alt="Testimonial">
                    <blockquote>
                        <p style="color:#00AF00">O Espaço Quântico Vegeton foi o espaço no qual pude encontrar harmonia interior e viver no presente. Recomendo para todos que querem um momento de paz com seu Eu.</p>
                        <footer>
                            <cite style="color:#21519E"><b>João Afonso Assumpção</b></cite>
                        </footer>
                    </blockquote>
                    <span class="et-quote t-icon" style="color:#00AF00"></span>
                </div><!-- / .t-item -->
            </div><!-- / .col-md-4 -->

            <!-- Item 2 -->
            <div class="col-md-4 mb-sm-50">
                <div class="t-item">
                    <img src="../public/img/avatarkarol-01.png" alt="Testimonial">
                    <blockquote>
                        <p style="color:#00AF00">No primeiro dia percebi o quanto o ambiente era diferente. Tudo é feito com muito amor, parece que todos meus problemas e preocupações ficaram do portão pra fora.</p>
                        <footer>
                            <cite style="color:#21519E"><b>Karoline Beghini</b></cite>
                        </footer>
                    </blockquote>
                    <span class="et-quote t-icon" style="color:#00AF00"></span>
                </div><!-- / .t-item -->
            </div><!-- / .col-md-4 -->

            <!-- Item 3 -->
            <div class="col-md-4">
                <div class="t-item">
                    <img src="../public/img/avatargi-01.png" alt="Testimonial">
                    <blockquote>
                        <p style="color:#00AF00">Senti uma paz muito grande ao chegar aqui e percebi um acolhimento muito grande em cada detalhe. O maior diferencial é a energia do lugar. Me senti muito bem!</p>
                        <footer>
                            <cite style="color:#21519E"><b>Giovanna Marchon</b></cite>
                        </footer>
                    </blockquote>
                    <span class="et-quote t-icon" style="color:#00AF00"></span>
                </div><!-- / .t-item -->
            </div><!-- / .col-md-4 -->

        </div><!-- / .row -->

        <!-- Client Slider -->

    </section><!-- / .container -->
</div><!-- / .gray-bg -->


<!-- <div class="grey-bg" style="background-color:#F4FFF4">
    <div class="container section clients-layout">
      <div class="row">
            <header class="sec-heading">
                    <h2 style="color:#21519E">Próximos Eventos</h2>
                    <span class="subheading" style="color:rgb(51, 115, 189)">Confira a agenda do mês no Espaço Quântico</span>
            </header>


                <div class="col-lg-4 col-md-6 ws-s">
                <div class="client-item">
                    <a href="portfolio/portfolio-single-1.html"><img class="img-responsive" src="http://placehold.it/680x490" alt="Client"></a>
                    <div class="item-content">
                    <h6 style="color:#21519E">Evento 1</h6>
                    <p class="event" style="color:#00AF00">Aqui colocamos uma descrição para o evento 1 e um link para uma página deste evento.</p>
                    <a href="portfolio/portfolio-single-1.html" class="btn-ghost btn-small cli-btn">Link para o evento</a>
                    </div>
                </div>
                </div>


                <div class="col-lg-4 col-md-6 ws-s">
                <div class="client-item">
                    <a href="portfolio/portfolio-single-1.html"><img class="img-responsive" src="http://placehold.it/680x490" alt="Client"></a>
                    <div class="item-content">
                    <h6 style="color:#21519E">Evento 2</h6>
                    <p class="event" style="color:#00AF00">Aqui colocamos uma descrição para o evento 2 e um link para uma página deste evento.</p>
                    <a href="portfolio/portfolio-single-1.html" class="btn-ghost btn-small cli-btn">Link para o evento</a>
                    </div>
                </div>
                </div>


                <div class="col-lg-4 col-md-6 ws-s">
                <div class="client-item">
                    <a href="portfolio/portfolio-single-1.html"><img class="img-responsive" src="http://placehold.it/680x490" alt="Client"></a>
                    <div class="item-content">
                    <h6 style="color:#21519E">Evento 3</h6>
                    <p class="event" style="color:#00AF00">Aqui colocamos uma descrição para o evento 3 e um link para uma página deste evento.</p>
                    <a href="portfolio/portfolio-single-1.html" class="btn-ghost btn-small cli-btn">Link para o evento</a>
                    </div>
                </div>
                </div>

      </div>
    </div>
  </div> -->


<!-- ========== Testimonials + Clients - Cards ========== -->
   {{end}}




