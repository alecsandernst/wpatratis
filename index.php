<?php get_header(); ?>

<?php

$banArgs = array(
  'post_type' => 'banner',
  'order' => 'ASC',
  'tax_query' => array(
    array(
      'taxonomy' => 'posicoes',
      'field' => 'slug',
      'terms' => 'desktop',
    ),
  ),
);

$banQuery = new WP_Query($banArgs);
?>

<?php if ($banQuery->have_posts()): ?>

  <div class="owl-banner-principal">
    <div class="owl-carousel owl-theme owl-topo">
      <?php while ($banQuery->have_posts()):
        $banQuery->the_post();

        $img_url = get_the_post_thumbnail_url();
        $titulo = get_field('titulo');
        $link = get_field('link_banner');
        $botao = get_field('texto_botao');
        $descricao = get_field('descricao_banner');
        
        ?>
        <div class="item" style="background-image: url(<?php echo $img_url; ?>);">
          <!-- Texto principal do cabeçalho -->
          <div class="container">
            <div class="row">
              <div class="col-lg-6 texto">
                <h1 class="h11">
                  <?php echo $titulo; ?>
                </h1>
                <p class="lorem">
                  <?php echo $descricao; ?>
                </p>
                <a href="<?php echo $link; ?>" class="b1"><?php echo $botao; ?></a>
              </div>
            </div>
          </div>
        </div>
      <?php endwhile; ?>
    </div>
  </div>
<?php endif; ?>

<!-- Seção "Quem Somos" -->
<section class="quem-somos">
  <div class="container">
    <div class="row">
      <div class="col-lg-6 texto">
        <h3></h3>
        <h2 id="h200">
         
        </h2>
        <p class="lorem">
          
        </p>
        <div class="linha-quem-somos">
          <svg width="664" height="14" viewBox="0 0 664 14" fill="none" xmlns="http://www.w3.org/2000/svg">
            <rect x="-10" y="5.00012" width="667" height="4" fill="url(#paint0_linear_6696_286)" />
            <path d="M650 0.00012207H664V14.0001H650V0.00012207Z" fill="#520660" />
            <defs>
              <linearGradient id="paint0_linear_6696_286" x1="-10" y1="7.00012" x2="657" y2="7.00012"
                gradientUnits="userSpaceOnUse">
                <stop stop-color="#520660" stop-opacity="0" />
                <stop offset="1" stop-color="#520660" />
              </linearGradient>
            </defs>
          </svg>
        </div>
      </div>
      <div class="col-lg-6 imagem">
        <div class="caixa">
          <img src="http://localhost/wpatratis/wp-content/uploads/2024/11/imagem.png" alt="Imagem" class="img-fluid" />
          <div class="marca">
            BIOLABS
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

<!-- Seção "O Que Fazemos" -->
<section class="que-fazemos" id="que-fazemos" style="background-color: #520660;">
  <div class="container">
    <div class="row">
      <div class="col-lg-6 imagem-que-fazemos">
        <img src="http://localhost/wpatratis/wp-content/uploads/2024/11/imagemtime.png" alt="Imagem do time sentado"
          id="img" class="img-fluid" />
      </div>
      <div class="col-lg-6">
        <div class="content-texto">
          <div class="titulo-texto">
            O QUE FAZEMOS
          </div>
          <h2>
            Lorem ipsum dolor sit amet <span><br />consectetur. Ut amet.</span>
          </h2>
          <ul>
            <li>
              <h4>Programa de aceleração e incubação de startups</h4>
            </li>
          </ul>
          <p>
            Apoio ao desenvolvimento de negócios inovadores em saúde, através
            do acompanhamento de todas as fases da criação de uma startup e da
            assistência às necessidades do empreendedor.
          </p>

          <ul>
            <li>
              <h4>Inovação aberta</h4>
            </li>
          </ul>
          <p>
            Aproximar soluções de mercado para resolver desafios dentro do
            Grupo ICC.
          </p>

          <ul>
            <li>
              <h4>Cultura da inovação</h4>
            </li>
          </ul>
          <p>
            Disseminação da cultura de inovação dentro de todos os negócios do
            Grupo ICC.
          </p>
        </div>
      </div>
    </div>

    <!-- Seção "Números" -->
    <div class="row numeros">
      <div class="col-lg-12">
        <div data-aos="fade-right" data-aos-duration="1500">
          <h2>
            <span>Números</span> que demonstram o <br />nosso
            <span>impacto no mundo</span>
          </h2>
        </div>
      </div>
      <div class="col-lg-12">
        <img src="http://localhost/wpatratis/wp-content/uploads/2024/11/linhanumeros.png" alt="Linha de separação"
          class="img-fluid" />
      </div>

      <div class="col-lg-12 estatistica d-flex justify-content-around flex-wrap">
        <div class="owl-carousel owl-theme owl-numeros">
          <div class="item">
            <span>+46</span>
            <p>Meses de <br />operações</p>
          </div>
          <div class="item">
            <span>+31</span>
            <p>Startups<br />Investidas</p>
          </div>
          <div class="item">
            <span>+10.1</span>
            <p>Milhões investidos <br />em bionegócios</p>
          </div>
          <div class="item">
            <span>+4k</span>
            <p>Horas de mentorias,<br />conteúdos e interações</p>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>


<section class="nosso-time" id="time">
  <div class="container">
    <div class="row">
      <div class="col-12 titulo">
        <div class="titulo-pequeno" data-aos="fade-left" data-aos-duration="2000">
          <svg width="25" height="2" viewBox="0 0 25 2" fill="none" xmlns="http://www.w3.org/2000/svg">
            <rect width="25" height="2" rx="1" fill="#E413C6" />
          </svg>
          <h3><span>NOSSO TIME</span></h3>
        </div>
        <div class="texto-seta">
          <h2 data-aos="fade-left" data-aos-duration="2000">Apaixonados por inovação e crescimento</h2>
          <div class="setas">
            <button onclick="prevTime()"><img src="http://localhost/wpatratis/wp-content/uploads/2024/11/left.png"
                alt="Esquerda" /></button>
            <button onclick="nextTime()"><img src="http://localhost/wpatratis/wp-content/uploads/2024/11/right.png"
                alt="Direita" /></button>
          </div>
        </div>
      </div>
    </div>

    <!-- Imagens do time -->
    <div class="row">
      <div class="col-12 imagens">
        <div class="pessoas">
          <div class="owl-carousel owl-theme owl-time">
            <div class="imagem-container">
              <img src="http://localhost/wpatratis/wp-content/uploads/2024/11/gabriela.png" alt="">
              <div class="texto-sobre-imagem">
                <h3>Gabriella Bruno</h3>
                <p>Manager ICC<br>Biolabs
                </p>
              </div>
              <div class="overlay">
                <div class="haverText">
                  <h3>Lorem</h3>
                  <p>
                    Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam voluptate molestiae libero rem
                    temporibus.
                  </p>
                </div>
              </div>
            </div>
            <div class="imagem-container">
              <img src="http://localhost/wpatratis/wp-content/uploads/2024/11/albery.png" alt="Albery"
                style="align-self: start;" />
              <div class="texto-sobre-imagem">
                <h3>Albery Dias</h3>
                <p style="padding-bottom: 1.5em;">Advisor</p>
              </div>
              <div class="overlay">
                <div class="haverText">
                  <h3>Lorem</h3>
                  <p>
                    Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam voluptate molestiae libero rem
                    temporibus.
                  </p>
                </div>
              </div>
            </div>
            <div class="imagem-container">
              <img src="http://localhost/wpatratis/wp-content/uploads/2024/11/leticia.png" alt="Letícia" />
              <div class="texto-sobre-imagem">
                <h3>Letícia Tomé</h3>
                <p style="padding-bottom: 1.5em;">Apoio à gestão</p>
              </div>
              <div class="overlay">
                <div class="haverText">
                  <h3>Lorem</h3>
                  <p>
                    Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam voluptate molestiae libero rem
                    temporibus.
                  </p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>


<!-- Startups e Mentores -->
<section class="startups" id="startup">
  <div class="container">
    <div class="row">
      <div class="col-12">
        <div class="tituloStartup">
          <h2>Startups</h2>
          <h3>Empresas que caminham com a gente</h3>
        </div>
      </div>
    </div>
    <!-- Container das tabs -->
    <div class="d-flex justify-content-center mb-4">
      <!-- Botões das tabs -->
      <button class="btn btn-outline-primary tab-button active" id="aceleradasBtn">Aceleradas</button>
      <button class="btn btn-outline-primary tab-button" id="aquisoesBtn">Aquisições</button>
    </div>

    <!-- Conteúdo da tab 'Aceleradas' -->
    <div id="aceleradas" class="tab-content">
      <div class="col-12">
        <div class="content imagens  custom-flex">
          <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 row-cols-lg-4 g-2">
            <div class="col imagensJornada d-flex justify-content-center">
              <div class="p-3">
                <a href="/Startups.html" target="_parent">
                  <img src="http://localhost/wpatratis/wp-content/uploads/2024/11/amarelocard.png" alt=""
                    class="image-zoom img-fluid"></a>
              </div>
            </div>
            <div class="col imagensJornada d-flex justify-content-center">
              <div class="p-3">
                <img src="http://localhost/wpatratis/wp-content/uploads/2024/11/plantaocard.png" alt=""
                  class="image-zoom img-fluid">
              </div>
            </div>
            <div class="col imagensJornada d-flex justify-content-center">
              <div class="p-3">
                <img src="http://localhost/wpatratis/wp-content/uploads/2024/11/amarelocard.png" alt=""
                  class="image-zoom img-fluid">
              </div>
            </div>
            <div class="col imagensJornada d-flex justify-content-center">
              <div class="p-3">
                <img src="http://localhost/wpatratis/wp-content/uploads/2024/11/plantaocard.png" alt=""
                  class="image-zoom img-fluid">
              </div>
            </div>
            <div class="col imagensJornada d-flex justify-content-center">
              <div class="p-3">
                <img src="http://localhost/wpatratis/wp-content/uploads/2024/11/amarelocard.png" alt=""
                  class="image-zoom img-fluid">
              </div>
            </div>
            <div class="col imagensJornada d-flex justify-content-center">
              <div class="p-3">
                <img src="http://localhost/wpatratis/wp-content/uploads/2024/11/plantaocard.png" alt=""
                  class="image-zoom img-fluid">
              </div>
            </div>
            <div class="col imagensJornada d-flex justify-content-center">
              <div class="p-3">
                <img src="http://localhost/wpatratis/wp-content/uploads/2024/11/amarelocard.png" alt=""
                  class="image-zoom img-fluid">
              </div>
            </div>
            <div class="col imagensJornada d-flex justify-content-center">
              <div class="p-3">
                <img src="http://localhost/wpatratis/wp-content/uploads/2024/11/plantaocard.png" alt=""
                  class="image-zoom img-fluid">
              </div>
            </div>
            <div class="col imagensJornada d-flex justify-content-center">
              <div class="p-3">
                <img src="http://localhost/wpatratis/wp-content/uploads/2024/11/amarelocard.png" alt=""
                  class="image-zoom img-fluid">
              </div>
            </div>
            <div class="col imagensJornada d-flex justify-content-center">
              <div class="p-3">
                <img src="http://localhost/wpatratis/wp-content/uploads/2024/11/plantaocard.png" alt=""
                  class="image-zoom img-fluid">
              </div>
            </div>
            <div class="col imagensJornada d-flex justify-content-center">
              <div class="p-3">
                <img src="http://localhost/wpatratis/wp-content/uploads/2024/11/amarelocard.png" alt=""
                  class="image-zoom img-fluid">
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

  <!-- Conteúdo da tab 'Aquisições' -->
  <div id="aquisoes" class="tab-content" style="display: none;">
    <div class="col-12">
      <div class="content imagens  custom-flex">
        <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 row-cols-lg-4 g-2">
          <div class="col imagensJornada d-flex justify-content-center">
            <div class="p-3">
              <a href="/Startups.html" target="_parent">
                <img src="http://localhost/wpatratis/wp-content/uploads/2024/11/amarelocard.png" alt=""
                  class="image-zoom img-fluid"></a>
            </div>
          </div>
          <div class="col imagensJornada d-flex justify-content-center">
            <div class="p-3">
              <img src="http://localhost/wpatratis/wp-content/uploads/2024/11/plantaocard.png" alt=""
                class="image-zoom img-fluid">
            </div>
          </div>
          <div class="col imagensJornada d-flex justify-content-center">
            <div class="p-3">
              <img src="http://localhost/wpatratis/wp-content/uploads/2024/11/amarelocard.png" alt=""
                class="image-zoom img-fluid">
            </div>
          </div>
          <div class="col imagensJornada d-flex justify-content-center">
            <div class="p-3">
              <img src="http://localhost/wpatratis/wp-content/uploads/2024/11/plantaocard.png" alt=""
                class="image-zoom img-fluid">
            </div>
          </div>
          <div class="col imagensJornada d-flex justify-content-center">
            <div class="p-3">
              <img src="http://localhost/wpatratis/wp-content/uploads/2024/11/amarelocard.png" alt=""
                class="image-zoom img-fluid">
            </div>
          </div>
          <div class="col imagensJornada d-flex justify-content-center">
            <div class="p-3">
              <img src="http://localhost/wpatratis/wp-content/uploads/2024/11/plantaocard.png" alt=""
                class="image-zoom img-fluid">
            </div>
          </div>
          <div class="col imagensJornada d-flex justify-content-center">
            <div class="p-3">
              <img src="http://localhost/wpatratis/wp-content/uploads/2024/11/amarelocard.png" alt=""
                class="image-zoom img-fluid">
            </div>
          </div>
          <div class="col imagensJornada d-flex justify-content-center">
            <div class="p-3">
              <img src="http://localhost/wpatratis/wp-content/uploads/2024/11/plantaocard.png" alt=""
                class="image-zoom img-fluid">
            </div>
          </div>
          <div class="col imagensJornada d-flex justify-content-center">
            <div class="p-3">
              <img src="http://localhost/wpatratis/wp-content/uploads/2024/11/amarelocard.png" alt=""
                class="image-zoom img-fluid">
            </div>
          </div>
          <div class="col imagensJornada d-flex justify-content-center">
            <div class="p-3">
              <img src="http://localhost/wpatratis/wp-content/uploads/2024/11/plantaocard.png" alt=""
                class="image-zoom img-fluid">
            </div>
          </div>
          <div class="col imagensJornada d-flex justify-content-center">
            <div class="p-3">
              <img src="http://localhost/wpatratis/wp-content/uploads/2024/11/amarelocard.png" alt=""
                class="image-zoom img-fluid">
            </div>
          </div>
          <div class="col imagensJornada d-flex justify-content-center">
            <div class="p-3">
              <img src="http://localhost/wpatratis/wp-content/uploads/2024/11/plantaocard.png" alt=""
                class="image-zoom img-fluid">
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

  </div>
  </div>
</section>

<section class="mentores" id="mentores">
  <div class="container">
    <div class="row">
      <div class="col-12 text-center">
        <div class="tituloMentores">
          <h3>MENTORES</h3>
          <h2 data-aos="zoom-in" data-aos-duration="2000">
            Especialistas que apoiam o <br> seu crescimento
          </h2>
        </div>
      </div>
    </div>
    <div class="row justify-content-center g-2">
      <!-- Cada mentor -->
      <div class="owl-carousel owl-theme owl-mentores">
        <div class="col d-flex justify-content-center">
          <div class="p-3">
            <img src="http://localhost/wpatratis/wp-content/uploads/2024/11/claudio.png" alt="Mentor Cláudio">
          </div>
        </div>
        <div class="col d-flex justify-content-center">
          <div class="p-3">
            <img src="http://localhost/wpatratis/wp-content/uploads/2024/11/cristiano.png" alt="Mentor Cristiano">
          </div>
        </div>
        <div class="col d-flex justify-content-center">
          <div class="p-3">
            <img src="http://localhost/wpatratis/wp-content/uploads/2024/11/diana.png" alt="Mentora Diana">
          </div>
        </div>
        <div class="col d-flex justify-content-center">
          <div class="p-3">
            <img src="http://localhost/wpatratis/wp-content/uploads/2024/11/joao-andre.png" alt="Mentor João André">
          </div>
        </div>
      </div>
    </div>
  </div>
</section>


<section class="jornada" id="jornada">
  <div class="container">
    <div class="row">
      <div class="col-12">
        <div class="tituloJornada text-center">
          <h3><span>JORNADA ICC BIOLABS</span></h3>
          <h2 data-aos="zoom-in" data-aos-duration="2000">Como as startups evoluem conosco</h2>
        </div>
      </div>
      <!-- Container das tabs -->
      <div class="d-flex justify-content-center mb-4">
        <!-- Botões das tabs -->
        <button class="btn btn-outline-primary tab-button active" id="incubacaoBtn">Jornada de incubação</button>
        <button class="btn btn-outline-primary tab-button" id="aceleracaoBtn">Jornada de aceleração</button>
      </div>

      <!-- Conteúdo da tab 'Aceleradas' -->
      <div id="incubacao" class="tab-content">
        <div class="content-one">
          <div class="item">
            <div class="elipse-container d-flex justify-content-center align-items-center">
              <svg width="36" height="36" viewBox="0 0 36 36" fill="none" xmlns="http://www.w3.org/2000/svg">
                <path
                  d="M17.7856 6.01828C11.5072 6.12173 6.21765 11.3043 5.99406 17.5693C5.86201 21.2093 7.36559 24.6648 10.1207 27.053C11.3076 28.0829 11.9874 29.666 11.9874 31.5025C11.9874 33.9821 14.0072 36 16.4891 36H19.4903C21.9722 36 23.992 33.9821 23.992 31.5025V30.9403C23.992 29.4921 24.6748 28.0949 25.9158 27.0035C28.5088 24.7278 29.9943 21.4506 29.9943 18.0101C29.9943 14.7704 28.7203 11.7331 26.4079 9.46036C24.0956 7.18763 21.0314 5.94483 17.7856 6.01828ZM20.9909 31.5025C20.9909 32.3301 20.3186 33.0017 19.4903 33.0017H16.4891C15.6608 33.0017 14.9885 32.3301 14.9885 31.3991C14.9885 30.9253 14.942 30.4606 14.873 30.0034H21.0524C21.0149 30.3122 20.9909 30.6255 20.9909 30.9403V31.5025ZM23.935 24.7518C23.1682 25.4249 22.55 26.1865 22.0743 27.005H19.4903V20.7325C21.2324 20.1119 22.4914 18.4628 22.4914 16.5109C22.4914 15.6819 21.8207 15.0117 20.9909 15.0117C20.161 15.0117 19.4903 15.6819 19.4903 16.5109C19.4903 17.3399 18.818 18.0101 17.9897 18.0101C17.1614 18.0101 16.4891 17.3384 16.4891 16.5109C16.4891 15.6834 15.8184 15.0117 14.9885 15.0117C14.1587 15.0117 13.488 15.6819 13.488 16.5109C13.488 18.4628 14.7469 20.1119 16.4891 20.7325V27.005H13.8691C13.4039 26.1685 12.8082 25.4159 12.0864 24.7893C10.0216 22.9978 8.89318 20.4057 8.99222 17.6773C9.16028 12.9789 13.1278 9.09306 17.8366 9.01661C17.8877 9.01661 17.9372 9.01661 17.9897 9.01661C20.3696 9.01661 22.607 9.92959 24.3041 11.5997C26.0388 13.3042 26.9947 15.5814 26.9947 18.0116C26.9947 20.5901 25.8797 23.0457 23.9365 24.7533L23.935 24.7518ZM25.17 3.72907L27.0232 0.715753C27.4553 0.00814897 28.3797 -0.212228 29.0865 0.224028C29.7933 0.657286 30.0138 1.57927 29.5787 2.28537L27.7255 5.29869C27.4433 5.76043 26.9497 6.01379 26.4455 6.01379C26.1769 6.01379 25.9068 5.94183 25.6622 5.79191C24.9554 5.35865 24.7348 4.43517 25.17 3.72907ZM35.1158 9.94759L32.2152 11.2549C32.0156 11.3463 31.8055 11.3883 31.5999 11.3883C31.0267 11.3883 30.482 11.06 30.2314 10.5053C29.8893 9.75119 30.2254 8.86219 30.9817 8.52338L33.8823 7.21611C34.6416 6.87281 35.527 7.21162 35.8661 7.96569C36.2082 8.71977 35.8721 9.60878 35.1158 9.94759ZM6.27617 2.28387C5.8425 1.57777 6.06459 0.654287 6.77136 0.222529C7.48114 -0.209229 8.40249 0.0126464 8.83466 0.717252L10.6834 3.73206C11.117 4.43817 10.895 5.36165 10.1882 5.79341C9.94359 5.94333 9.67198 6.01379 9.40638 6.01379C8.90068 6.01379 8.40849 5.75893 8.12488 5.29719L6.27617 2.28238V2.28387ZM5.55139 10.6057C5.29479 11.1439 4.75758 11.4572 4.19787 11.4572C3.98028 11.4572 3.7597 11.4108 3.55112 11.3088L0.853077 10.018C0.105788 9.66125 -0.210834 8.76625 0.147804 8.01966C0.503442 7.27158 1.40379 6.95226 2.14808 7.31506L4.84612 8.60584C5.59341 8.96264 5.91003 9.85913 5.55139 10.6057Z"
                  fill="#520660" />
              </svg>

            </div>
            <div class="text-container">
              <h3>Ideação</h3>
              <ul>
                <li>Pesquisa e Validação</li>
                <li>Modelo de Negócios</li>
                <li>Teste de Hipóteses</li>
                <li>Pitch</li>
              </ul>
            </div>
          </div>
          <div class="item">
            <div class="elipse-container d-flex justify-content-center align-items-center">
              <svg width="34" height="31" viewBox="0 0 34 31" fill="none" xmlns="http://www.w3.org/2000/svg">
                <path
                  d="M19.8333 12.6818C19.8333 14.1177 19.397 15.4493 18.6547 16.5625L14.5817 12.5113C14.3154 12.2464 14.1667 11.8885 14.1667 11.5151V5.77868C17.3995 6.43109 19.8333 9.27323 19.8333 12.6818ZM11.3333 12.0985V5.77868C7.72083 6.50859 5.10567 9.97214 5.77008 13.9049C6.2305 16.6301 8.34842 18.8973 11.0528 19.53C13.1353 20.0161 15.1045 19.5765 16.6515 18.5563L12.1621 14.0909C11.6308 13.5625 11.3333 12.8453 11.3333 12.0985ZM26.9167 5.63636H24.0833C23.2999 5.63636 22.6667 6.26764 22.6667 7.04545C22.6667 7.82327 23.2999 8.45455 24.0833 8.45455H26.9167C27.7001 8.45455 28.3333 7.82327 28.3333 7.04545C28.3333 6.26764 27.7001 5.63636 26.9167 5.63636ZM26.9167 11.2727H24.0833C23.2999 11.2727 22.6667 11.904 22.6667 12.6818C22.6667 13.4596 23.2999 14.0909 24.0833 14.0909H26.9167C27.7001 14.0909 28.3333 13.4596 28.3333 12.6818C28.3333 11.904 27.7001 11.2727 26.9167 11.2727ZM26.9167 16.9091H24.0833C23.2999 16.9091 22.6667 17.5404 22.6667 18.3182C22.6667 19.096 23.2999 19.7273 24.0833 19.7273H26.9167C27.7001 19.7273 28.3333 19.096 28.3333 18.3182C28.3333 17.5404 27.7001 16.9091 26.9167 16.9091ZM34 7.04545V18.3182C34 22.203 30.8224 25.3636 26.9167 25.3636H18.4167V28.1818H24.0833C24.8667 28.1818 25.5 28.8131 25.5 29.5909C25.5 30.3687 24.8667 31 24.0833 31H9.91667C9.13325 31 8.5 30.3687 8.5 29.5909C8.5 28.8131 9.13325 28.1818 9.91667 28.1818H15.5833V25.3636H7.08333C3.17758 25.3636 0 22.203 0 18.3182V7.04545C0 3.16059 3.17758 0 7.08333 0H26.9167C30.8224 0 34 3.16059 34 7.04545ZM31.1667 7.04545C31.1667 4.71482 29.2598 2.81818 26.9167 2.81818H7.08333C4.74017 2.81818 2.83333 4.71482 2.83333 7.04545V18.3182C2.83333 20.6488 4.74017 22.5455 7.08333 22.5455H26.9167C29.2598 22.5455 31.1667 20.6488 31.1667 18.3182V7.04545Z"
                  fill="#520660" />
              </svg>

            </div>
            <div class="text-container">
              <h3>Prototipagem</h3>
              <ul>
                <li>Aspectos jurídicos iniciais</li>
                <li>MVP média fidelidade</li>
                <li>Validação do MVP</li>
                <li>Estratégia de vendas</li>
              </ul>
            </div>
          </div>
          <div class="item">
            <div class="elipse-container d-flex justify-content-center align-items-center">
              <svg width="29" height="29" viewBox="0 0 29 29" fill="none" xmlns="http://www.w3.org/2000/svg">
                <path
                  d="M21.7136 19.3333C21.7136 19.7913 22.0427 20.1768 22.4969 20.2529L26.1886 20.8643C27.8184 21.135 29 22.5245 29 24.1667C29 26.1653 27.3654 27.7917 25.3568 27.7917V29H22.928V27.7917C20.9193 27.7917 19.2848 26.1653 19.2848 24.1667H21.7136C21.7136 24.8337 22.2576 25.375 22.928 25.375H25.3568C26.0271 25.375 26.5712 24.8337 26.5712 24.1667C26.5712 23.7087 26.2421 23.3232 25.7879 23.2471L22.0961 22.6357C20.4664 22.365 19.2848 20.9755 19.2848 19.3333C19.2848 17.3348 20.9193 15.7083 22.928 15.7083V14.5H25.3568V15.7083C27.3654 15.7083 29 17.3348 29 19.3333H26.5712C26.5712 18.6663 26.0271 18.125 25.3568 18.125H22.928C22.2576 18.125 21.7136 18.6663 21.7136 19.3333ZM26.5712 0H20.4992V2.41667H24.854L18.6776 8.56225L11.3911 1.31225L0 12.6464L1.71717 14.355L11.3911 4.72942L18.6776 11.9794L26.5712 4.12525V8.45833H29V2.41667C29 1.08388 27.9107 0 26.5712 0ZM1.06868 29H3.49749V16.0007L1.06868 18.4174V29ZM13.2127 29H15.6415V12.377L13.2127 9.96029V29ZM7.1407 29H9.56951V9.96029L7.1407 12.377V29Z"
                  fill="#520660" />
              </svg>

            </div>
            <div class="text-container">
              <h3>Go-To-Market</h3>
              <ul>
                <li>Estratégias de entrada no mercado</li>
                <li>Vendas e Precificação</li>
                <li>Conexões com parceiros estratégicos</li>
                <li>Posicionamentos de marketing</li>
              </ul>
            </div>
          </div>
          <div class="item">
            <div class="elipse-container d-flex justify-content-center align-items-center">
              <svg width="28" height="28" viewBox="0 0 28 28" fill="none" xmlns="http://www.w3.org/2000/svg">
                <path
                  d="M22.1667 0H5.83333C2.61683 0 0 2.61683 0 5.83333V22.1667C0 25.3832 2.61683 28 5.83333 28H22.1667C25.3832 28 28 25.3832 28 22.1667V5.83333C28 2.61683 25.3832 0 22.1667 0ZM25.6667 22.1667C25.6667 24.0963 24.0963 25.6667 22.1667 25.6667H5.83333C3.90367 25.6667 2.33333 24.0963 2.33333 22.1667V5.83333C2.33333 3.90367 3.90367 2.33333 5.83333 2.33333H22.1667C24.0963 2.33333 25.6667 3.90367 25.6667 5.83333V22.1667ZM22.1667 7V10.5C22.1667 11.7868 21.1202 12.8333 19.8333 12.8333H16.3333C15.6882 12.8333 15.1667 12.3107 15.1667 11.6667C15.1667 11.0227 15.6882 10.5 16.3333 10.5H18.648C17.5583 9.05917 15.8492 8.16667 14 8.16667C11.5313 8.16667 9.3205 9.72883 8.49917 12.0552C8.32883 12.5347 7.87967 12.8333 7.399 12.8333C7.27067 12.8333 7.13883 12.8112 7.0105 12.7657C6.40267 12.551 6.08417 11.8848 6.29883 11.277C7.44917 8.01967 10.5455 5.83217 14.0012 5.83217C16.233 5.83217 18.3202 6.76667 19.8345 8.31367V6.99883C19.8345 6.35483 20.356 5.83217 21.0012 5.83217C21.6463 5.83217 22.1678 6.35483 22.1678 6.99883L22.1667 7ZM21.7023 16.7218C20.552 19.9792 17.4557 22.1667 14 22.1667C11.7682 22.1667 9.681 21.2322 8.16667 19.6852V21C8.16667 21.644 7.64517 22.1667 7 22.1667C6.35483 22.1667 5.83333 21.644 5.83333 21V17.5C5.83333 16.2132 6.87983 15.1667 8.16667 15.1667H11.6667C12.3118 15.1667 12.8333 15.6893 12.8333 16.3333C12.8333 16.9773 12.3118 17.5 11.6667 17.5H9.352C10.4417 18.9408 12.1508 19.8333 14 19.8333C16.4687 19.8333 18.6795 18.2712 19.5008 15.9448C19.7167 15.337 20.3817 15.0185 20.9895 15.2332C21.5973 15.4478 21.917 16.114 21.7023 16.7218Z"
                  fill="#520660" />
              </svg>
            </div>
            <div class="text-container">
              <h3>Encerramento do ciclo</h3>
              <ul>
                <li>Evento de Graduação</li>
                <li>DemoDay</li>
              </ul>
            </div>
          </div>
        </div>
      </div>

      <!-- Conteúdo da tab 'Aquisições' -->
      <div id="aceleracao" class="tab-content" style="display: none;">
        <div class="content-one">
          <div class="item">
            <div class="elipse-container d-flex justify-content-center align-items-center">
              <svg width="36" height="36" viewBox="0 0 36 36" fill="none" xmlns="http://www.w3.org/2000/svg">
                <path
                  d="M17.7856 6.01828C11.5072 6.12173 6.21765 11.3043 5.99406 17.5693C5.86201 21.2093 7.36559 24.6648 10.1207 27.053C11.3076 28.0829 11.9874 29.666 11.9874 31.5025C11.9874 33.9821 14.0072 36 16.4891 36H19.4903C21.9722 36 23.992 33.9821 23.992 31.5025V30.9403C23.992 29.4921 24.6748 28.0949 25.9158 27.0035C28.5088 24.7278 29.9943 21.4506 29.9943 18.0101C29.9943 14.7704 28.7203 11.7331 26.4079 9.46036C24.0956 7.18763 21.0314 5.94483 17.7856 6.01828ZM20.9909 31.5025C20.9909 32.3301 20.3186 33.0017 19.4903 33.0017H16.4891C15.6608 33.0017 14.9885 32.3301 14.9885 31.3991C14.9885 30.9253 14.942 30.4606 14.873 30.0034H21.0524C21.0149 30.3122 20.9909 30.6255 20.9909 30.9403V31.5025ZM23.935 24.7518C23.1682 25.4249 22.55 26.1865 22.0743 27.005H19.4903V20.7325C21.2324 20.1119 22.4914 18.4628 22.4914 16.5109C22.4914 15.6819 21.8207 15.0117 20.9909 15.0117C20.161 15.0117 19.4903 15.6819 19.4903 16.5109C19.4903 17.3399 18.818 18.0101 17.9897 18.0101C17.1614 18.0101 16.4891 17.3384 16.4891 16.5109C16.4891 15.6834 15.8184 15.0117 14.9885 15.0117C14.1587 15.0117 13.488 15.6819 13.488 16.5109C13.488 18.4628 14.7469 20.1119 16.4891 20.7325V27.005H13.8691C13.4039 26.1685 12.8082 25.4159 12.0864 24.7893C10.0216 22.9978 8.89318 20.4057 8.99222 17.6773C9.16028 12.9789 13.1278 9.09306 17.8366 9.01661C17.8877 9.01661 17.9372 9.01661 17.9897 9.01661C20.3696 9.01661 22.607 9.92959 24.3041 11.5997C26.0388 13.3042 26.9947 15.5814 26.9947 18.0116C26.9947 20.5901 25.8797 23.0457 23.9365 24.7533L23.935 24.7518ZM25.17 3.72907L27.0232 0.715753C27.4553 0.00814897 28.3797 -0.212228 29.0865 0.224028C29.7933 0.657286 30.0138 1.57927 29.5787 2.28537L27.7255 5.29869C27.4433 5.76043 26.9497 6.01379 26.4455 6.01379C26.1769 6.01379 25.9068 5.94183 25.6622 5.79191C24.9554 5.35865 24.7348 4.43517 25.17 3.72907ZM35.1158 9.94759L32.2152 11.2549C32.0156 11.3463 31.8055 11.3883 31.5999 11.3883C31.0267 11.3883 30.482 11.06 30.2314 10.5053C29.8893 9.75119 30.2254 8.86219 30.9817 8.52338L33.8823 7.21611C34.6416 6.87281 35.527 7.21162 35.8661 7.96569C36.2082 8.71977 35.8721 9.60878 35.1158 9.94759ZM6.27617 2.28387C5.8425 1.57777 6.06459 0.654287 6.77136 0.222529C7.48114 -0.209229 8.40249 0.0126464 8.83466 0.717252L10.6834 3.73206C11.117 4.43817 10.895 5.36165 10.1882 5.79341C9.94359 5.94333 9.67198 6.01379 9.40638 6.01379C8.90068 6.01379 8.40849 5.75893 8.12488 5.29719L6.27617 2.28238V2.28387ZM5.55139 10.6057C5.29479 11.1439 4.75758 11.4572 4.19787 11.4572C3.98028 11.4572 3.7597 11.4108 3.55112 11.3088L0.853077 10.018C0.105788 9.66125 -0.210834 8.76625 0.147804 8.01966C0.503442 7.27158 1.40379 6.95226 2.14808 7.31506L4.84612 8.60584C5.59341 8.96264 5.91003 9.85913 5.55139 10.6057Z"
                  fill="#520660" />
              </svg>
            </div>
            <div class="text-container">
              <h3>Ideação</h3>
              <ul>
                <li>Pesquisa e Validação</li>
                <li>Modelo de Negócios</li>
                <li>Teste de Hipóteses</li>
                <li>Pitch</li>
              </ul>
            </div>
          </div>
          <div class="item">
            <div class="elipse-container d-flex justify-content-center align-items-center">
              <svg width="34" height="31" viewBox="0 0 34 31" fill="none" xmlns="http://www.w3.org/2000/svg">
                <path
                  d="M19.8333 12.6818C19.8333 14.1177 19.397 15.4493 18.6547 16.5625L14.5817 12.5113C14.3154 12.2464 14.1667 11.8885 14.1667 11.5151V5.77868C17.3995 6.43109 19.8333 9.27323 19.8333 12.6818ZM11.3333 12.0985V5.77868C7.72083 6.50859 5.10567 9.97214 5.77008 13.9049C6.2305 16.6301 8.34842 18.8973 11.0528 19.53C13.1353 20.0161 15.1045 19.5765 16.6515 18.5563L12.1621 14.0909C11.6308 13.5625 11.3333 12.8453 11.3333 12.0985ZM26.9167 5.63636H24.0833C23.2999 5.63636 22.6667 6.26764 22.6667 7.04545C22.6667 7.82327 23.2999 8.45455 24.0833 8.45455H26.9167C27.7001 8.45455 28.3333 7.82327 28.3333 7.04545C28.3333 6.26764 27.7001 5.63636 26.9167 5.63636ZM26.9167 11.2727H24.0833C23.2999 11.2727 22.6667 11.904 22.6667 12.6818C22.6667 13.4596 23.2999 14.0909 24.0833 14.0909H26.9167C27.7001 14.0909 28.3333 13.4596 28.3333 12.6818C28.3333 11.904 27.7001 11.2727 26.9167 11.2727ZM26.9167 16.9091H24.0833C23.2999 16.9091 22.6667 17.5404 22.6667 18.3182C22.6667 19.096 23.2999 19.7273 24.0833 19.7273H26.9167C27.7001 19.7273 28.3333 19.096 28.3333 18.3182C28.3333 17.5404 27.7001 16.9091 26.9167 16.9091ZM34 7.04545V18.3182C34 22.203 30.8224 25.3636 26.9167 25.3636H18.4167V28.1818H24.0833C24.8667 28.1818 25.5 28.8131 25.5 29.5909C25.5 30.3687 24.8667 31 24.0833 31H9.91667C9.13325 31 8.5 30.3687 8.5 29.5909C8.5 28.8131 9.13325 28.1818 9.91667 28.1818H15.5833V25.3636H7.08333C3.17758 25.3636 0 22.203 0 18.3182V7.04545C0 3.16059 3.17758 0 7.08333 0H26.9167C30.8224 0 34 3.16059 34 7.04545ZM31.1667 7.04545C31.1667 4.71482 29.2598 2.81818 26.9167 2.81818H7.08333C4.74017 2.81818 2.83333 4.71482 2.83333 7.04545V18.3182C2.83333 20.6488 4.74017 22.5455 7.08333 22.5455H26.9167C29.2598 22.5455 31.1667 20.6488 31.1667 18.3182V7.04545Z"
                  fill="#520660" />
              </svg>
            </div>
            <div class="text-container">
              <h3>Prototipagem</h3>
              <ul>
                <li>Aspectos jurídicos iniciais</li>
                <li>MVP média fidelidade</li>
                <li>Validação do MVP</li>
                <li>Estratégia de vendas</li>
              </ul>
            </div>
          </div>
          <div class="item">
            <div class="elipse-container d-flex justify-content-center align-items-center">
              <svg width="29" height="29" viewBox="0 0 29 29" fill="none" xmlns="http://www.w3.org/2000/svg">
                <path
                  d="M21.7136 19.3333C21.7136 19.7913 22.0427 20.1768 22.4969 20.2529L26.1886 20.8643C27.8184 21.135 29 22.5245 29 24.1667C29 26.1653 27.3654 27.7917 25.3568 27.7917V29H22.928V27.7917C20.9193 27.7917 19.2848 26.1653 19.2848 24.1667H21.7136C21.7136 24.8337 22.2576 25.375 22.928 25.375H25.3568C26.0271 25.375 26.5712 24.8337 26.5712 24.1667C26.5712 23.7087 26.2421 23.3232 25.7879 23.2471L22.0961 22.6357C20.4664 22.365 19.2848 20.9755 19.2848 19.3333C19.2848 17.3348 20.9193 15.7083 22.928 15.7083V14.5H25.3568V15.7083C27.3654 15.7083 29 17.3348 29 19.3333H26.5712C26.5712 18.6663 26.0271 18.125 25.3568 18.125H22.928C22.2576 18.125 21.7136 18.6663 21.7136 19.3333ZM26.5712 0H20.4992V2.41667H24.854L18.6776 8.56225L11.3911 1.31225L0 12.6464L1.71717 14.355L11.3911 4.72942L18.6776 11.9794L26.5712 4.12525V8.45833H29V2.41667C29 1.08388 27.9107 0 26.5712 0ZM1.06868 29H3.49749V16.0007L1.06868 18.4174V29ZM13.2127 29H15.6415V12.377L13.2127 9.96029V29ZM7.1407 29H9.56951V9.96029L7.1407 12.377V29Z"
                  fill="#520660" />
              </svg>

            </div>
            <div class="text-container">
              <h3>Go-To-Market</h3>
              <ul>
                <li>Estratégias de entrada no mercado</li>
                <li>Vendas e Precificação</li>
                <li>Conexões com parceiros estratégicos</li>
                <li>Posicionamentos de marketing</li>
              </ul>
            </div>
          </div>
          <div class="item">
            <div class="elipse-container d-flex justify-content-center align-items-center">
              <svg width="28" height="28" viewBox="0 0 28 28" fill="none" xmlns="http://www.w3.org/2000/svg">
                <path
                  d="M22.1667 0H5.83333C2.61683 0 0 2.61683 0 5.83333V22.1667C0 25.3832 2.61683 28 5.83333 28H22.1667C25.3832 28 28 25.3832 28 22.1667V5.83333C28 2.61683 25.3832 0 22.1667 0ZM25.6667 22.1667C25.6667 24.0963 24.0963 25.6667 22.1667 25.6667H5.83333C3.90367 25.6667 2.33333 24.0963 2.33333 22.1667V5.83333C2.33333 3.90367 3.90367 2.33333 5.83333 2.33333H22.1667C24.0963 2.33333 25.6667 3.90367 25.6667 5.83333V22.1667ZM22.1667 7V10.5C22.1667 11.7868 21.1202 12.8333 19.8333 12.8333H16.3333C15.6882 12.8333 15.1667 12.3107 15.1667 11.6667C15.1667 11.0227 15.6882 10.5 16.3333 10.5H18.648C17.5583 9.05917 15.8492 8.16667 14 8.16667C11.5313 8.16667 9.3205 9.72883 8.49917 12.0552C8.32883 12.5347 7.87967 12.8333 7.399 12.8333C7.27067 12.8333 7.13883 12.8112 7.0105 12.7657C6.40267 12.551 6.08417 11.8848 6.29883 11.277C7.44917 8.01967 10.5455 5.83217 14.0012 5.83217C16.233 5.83217 18.3202 6.76667 19.8345 8.31367V6.99883C19.8345 6.35483 20.356 5.83217 21.0012 5.83217C21.6463 5.83217 22.1678 6.35483 22.1678 6.99883L22.1667 7ZM21.7023 16.7218C20.552 19.9792 17.4557 22.1667 14 22.1667C11.7682 22.1667 9.681 21.2322 8.16667 19.6852V21C8.16667 21.644 7.64517 22.1667 7 22.1667C6.35483 22.1667 5.83333 21.644 5.83333 21V17.5C5.83333 16.2132 6.87983 15.1667 8.16667 15.1667H11.6667C12.3118 15.1667 12.8333 15.6893 12.8333 16.3333C12.8333 16.9773 12.3118 17.5 11.6667 17.5H9.352C10.4417 18.9408 12.1508 19.8333 14 19.8333C16.4687 19.8333 18.6795 18.2712 19.5008 15.9448C19.7167 15.337 20.3817 15.0185 20.9895 15.2332C21.5973 15.4478 21.917 16.114 21.7023 16.7218Z"
                  fill="#520660" />
              </svg>
            </div>
            <div class="text-container">
              <h3>Encerramento do ciclo</h3>
              <ul>
                <li>Evento de Graduação</li>
                <li>DemoDay</li>
              </ul>
            </div>
          </div>
        </div>
      </div>
      <div class="row" data-aos="fade-right" data-aos-duration="2000">
        <img src="SRC/assets/img/linhajornada.svg" alt="" class="img-fluid" id="fale-conosco">
      </div>
    </div>
  </div>
</section>

<section class="contato">
  <div class="container">
    <div class="row">
      <!-- Seção de Telefone e Endereço -->
      <div class="col-lg-5 col-md-6">
        <div class="content-telefone">
          <h2>Fale com nossa equipe</h2>
          <div class="telefone d-flex align-items-center mt-3">
            <svg width="19" height="19" viewBox="0 0 19 19" fill="none" xmlns="http://www.w3.org/2000/svg">
              <path
                d="M3 1H7L9 6L6.5 7.5C7.57096 9.67153 9.32847 11.429 11.5 12.5L13 10L18 12V16C18 16.5304 17.7893 17.0391 17.4142 17.4142C17.0391 17.7893 16.5304 18 16 18C12.0993 17.763 8.42015 16.1065 5.65683 13.3432C2.8935 10.5798 1.23705 6.90074 1 3C1 2.46957 1.21071 1.96086 1.58579 1.58579C1.96086 1.21071 2.46957 1 3 1Z"
                stroke="#520660" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" />
            </svg>
            <a href="tel:8530314766" class="numerowpp">
              <p>- (85) 3031-4766</p>
            </a>
          </div>
          <div class="endereco d-flex align-items-center mt-4">
            <svg width="21" height="22" viewBox="0 0 21 22" fill="none" xmlns="http://www.w3.org/2000/svg">
              <path
                d="M1.72915 4.33333L16.9297 19.9542M1.72915 4.33333C2.2947 3.65369 3.13942 3.22222 4.08316 3.22222H9.22177M1.72915 4.33333C1.27429 4.87996 1 5.58712 1 6.35948V17.8627C1 19.5954 2.38038 21 4.08316 21H15.3881C17.0909 21 18.4713 19.5954 18.4713 17.8627V13.1569M9.22177 13.1569L2.54158 19.9542M16.5057 4.55556V4.48872M20 4.47826C20 6.7971 16.5057 9.88889 16.5057 9.88889C16.5057 9.88889 13.0115 6.7971 13.0115 4.47826C13.0115 2.55727 14.5759 1 16.5057 1C18.4356 1 20 2.55727 20 4.47826Z"
                stroke="#520660" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" />
            </svg>
            <a href="localbiolabs">
              <p>Prédio Anexo - 5° Andar, R. Papi Júnior, 1222 <br>- Rodolfo Teófilo, Fortaleza - CE, 60730-155</p>
            </a>
          </div>
          <div class="botaomapa mt-4">
            <a class="btnmapa" href="https://maps.app.goo.gl/GjdvF4u3bcTCrdqJ7">
              <svg width="16" height="20" viewBox="0 0 16 20" fill="none" xmlns="http://www.w3.org/2000/svg">
                <path
                  d="M8 1.00146e-08C5.89206 -0.00010539 3.86926 0.831759 2.37124 2.31479C0.873231 3.79782 0.0210794 5.81216 0 7.92C0 13.4 7.05 19.5 7.35 19.76C7.53113 19.9149 7.76165 20.0001 8 20.0001C8.23835 20.0001 8.46887 19.9149 8.65 19.76C9 19.5 16 13.4 16 7.92C15.9789 5.81216 15.1268 3.79782 13.6288 2.31479C12.1307 0.831759 10.1079 -0.00010539 8 1.00146e-08ZM8 17.65C6.33 16.06 2 11.65 2 7.92C2 6.3287 2.63214 4.80258 3.75736 3.67736C4.88258 2.55214 6.4087 1.92 8 1.92C9.5913 1.92 11.1174 2.55214 12.2426 3.67736C13.3679 4.80258 14 6.3287 14 7.92C14 11.62 9.67 16.06 8 17.65Z"
                  fill="white" />
                <path
                  d="M8 4C7.30777 4 6.63108 4.20527 6.05551 4.58986C5.47993 4.97444 5.03133 5.52107 4.76642 6.16061C4.50152 6.80015 4.4322 7.50388 4.56725 8.18282C4.7023 8.86175 5.03564 9.48539 5.52513 9.97487C6.01461 10.4644 6.63825 10.7977 7.31719 10.9327C7.99612 11.0678 8.69985 10.9985 9.33939 10.7336C9.97894 10.4687 10.5256 10.0201 10.9101 9.4445C11.2947 8.86892 11.5 8.19223 11.5 7.5C11.5 6.57174 11.1313 5.6815 10.4749 5.02513C9.8185 4.36875 8.92826 4 8 4ZM8 9C7.70333 9 7.41332 8.91203 7.16665 8.7472C6.91997 8.58238 6.72771 8.34811 6.61418 8.07403C6.50065 7.79994 6.47095 7.49834 6.52882 7.20736C6.5867 6.91639 6.72956 6.64912 6.93934 6.43934C7.14912 6.22956 7.41639 6.0867 7.70737 6.02882C7.99834 5.97094 8.29994 6.00065 8.57403 6.11418C8.84812 6.22771 9.08238 6.41997 9.24721 6.66665C9.41203 6.91332 9.5 7.20333 9.5 7.5C9.5 7.89782 9.34197 8.27936 9.06066 8.56066C8.77936 8.84196 8.39783 9 8 9Z"
                  fill="white" />
              </svg>
              Ver no mapa
            </a>
          </div>
        </div>
      </div>

      <!-- Seção de Formulário -->
      <div class="col-lg-7 col-md-6">
        <div class="formulario">
          <form action="" method="post">
            <h2>Envie sua mensagem</h2>
            <p>Preencha o formulário</p>

            <!-- Grupo de Campos Nome e E-mail -->
            <div class="form-group row">
              <div class="col-md-6 mb-3">
                <label for="campo1">Nome</label>
                <input type="text" id="campo1" class="form-control" placeholder="">
              </div>
              <div class="col-md-6 mb-3">
                <label for="campo2">E-mail</label>
                <input type="text" id="campo2" class="form-control" placeholder="">
              </div>
            </div>

            <!-- Grupo de Campos Telefone e Empresa -->
            <div class="form-group row">
              <div class="col-md-6 mb-3">
                <label for="campo3">Telefone</label>
                <input type="text" id="campo3" class="form-control" placeholder="">
              </div>
              <div class="col-md-6 mb-3">
                <label for="campo4">Empresa</label>
                <input type="text" id="campo4" class="form-control" placeholder="">
              </div>
            </div>

            <!-- Rodapé do Formulário -->
            <div class="form-footer d-flex justify-content-between align-items-center mt-4">
              <label>
                <input type="checkbox"> Aceito as Políticas de Privacidade
              </label>
              <button type="submit" class="submit-btn">Enviar</button>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>
</section>

<?php get_footer(); ?>