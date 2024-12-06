<?php 
// Carregando scripts e CSS
function load_scripts(): void {
    wp_enqueue_script('script1', get_template_directory_uri() . '/assets/assets/js/script1.js', array('jquery'), '1.0', true);
    wp_enqueue_script('script2', get_template_directory_uri() . '/assets/assets/js/script2.js', array(), '1.0', true);
    wp_enqueue_script('script3', get_template_directory_uri() . '/assets/assets/js/script3.js', array(), '1.0', true);
    wp_enqueue_script('script4', get_template_directory_uri() . '/assets/assets/js/script4.js', array(), '1.0', true);
    wp_enqueue_script('bootstrap-js', 'https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js', array(), '5.3.3', true);
    wp_enqueue_style('bootstrap-css', 'https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css', array(), '5.3.3', 'all');
    wp_enqueue_style('TestePratico-Main-style', get_template_directory_uri() . '/style.css', array(), '1.0.0', 'all');
}
add_action('wp_enqueue_scripts', 'load_scripts');

// Configuração inicial do tema
function setup_theme() {
    // Registrando menus
    register_nav_menus(array(
        'my_main_menu' => 'Main Menu',
        'my_second_menu' => 'Second Menu',
    ));

    add_theme_support('title-tag');
    add_theme_support('post-thumbnails');
}
add_action('after_setup_theme', 'setup_theme');

require_once get_template_directory() . '/class-wp-bootstrap-navwalker.php';