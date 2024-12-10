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


<!-- Seção "O Que Fazemos" -->

<!-- Startups e Mentores -->

<?php get_footer(); ?>