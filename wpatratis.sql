-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 11/12/2024 às 21:09
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `wpatratis`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `wpatr_commentmeta`
--

CREATE TABLE `wpatr_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `wpatr_comments`
--

CREATE TABLE `wpatr_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Despejando dados para a tabela `wpatr_comments`
--

INSERT INTO `wpatr_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Um comentarista do WordPress', 'wapuu@wordpress.example', 'https://br.wordpress.org/', '', '2024-11-22 14:14:10', '2024-11-22 17:14:10', 'Oi, isto é um comentário.\nPara iniciar a moderar, editar e excluir comentários, visite a tela Comentários no painel.\nOs avatares dos comentaristas vêm do <a href=\"https://br.gravatar.com/\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `wpatr_links`
--

CREATE TABLE `wpatr_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `wpatr_options`
--

CREATE TABLE `wpatr_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Despejando dados para a tabela `wpatr_options`
--

INSERT INTO `wpatr_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'cron', 'a:13:{i:1733948052;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1733949946;a:1:{s:30:\"wp_delete_temp_updater_backups\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1733980472;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1733984050;a:1:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1733985850;a:1:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1733987650;a:1:{s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1734023651;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1734023672;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1734023681;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1734111073;a:1:{s:27:\"acf_update_site_health_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1734113727;a:1:{s:30:\"wp_delete_temp_updater_backups\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1734196452;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'on'),
(2, 'siteurl', 'http://localhost/wpatratis', 'on'),
(3, 'home', 'http://localhost/wpatratis', 'on'),
(4, 'blogname', 'wpcurso', 'on'),
(5, 'blogdescription', '', 'on'),
(6, 'users_can_register', '0', 'on'),
(7, 'admin_email', 'naama.stavares@gmail.com', 'on'),
(8, 'start_of_week', '1', 'on'),
(9, 'use_balanceTags', '0', 'on'),
(10, 'use_smilies', '1', 'on'),
(11, 'require_name_email', '1', 'on'),
(12, 'comments_notify', '1', 'on'),
(13, 'posts_per_rss', '10', 'on'),
(14, 'rss_use_excerpt', '0', 'on'),
(15, 'mailserver_url', 'mail.example.com', 'on'),
(16, 'mailserver_login', 'login@example.com', 'on'),
(17, 'mailserver_pass', '', 'on'),
(18, 'mailserver_port', '110', 'on'),
(19, 'default_category', '1', 'on'),
(20, 'default_comment_status', 'open', 'on'),
(21, 'default_ping_status', 'open', 'on'),
(22, 'default_pingback_flag', '0', 'on'),
(23, 'posts_per_page', '10', 'on'),
(24, 'date_format', 'j \\d\\e F \\d\\e Y', 'on'),
(25, 'time_format', 'H:i', 'on'),
(26, 'links_updated_date_format', 'j \\d\\e F \\d\\e Y, H:i', 'on'),
(27, 'comment_moderation', '0', 'on'),
(28, 'moderation_notify', '1', 'on'),
(29, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'on'),
(30, 'rewrite_rules', 'a:116:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:34:\"banner/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"banner/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"banner/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"banner/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"banner/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"banner/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:23:\"banner/([^/]+)/embed/?$\";s:39:\"index.php?banner=$matches[1]&embed=true\";s:27:\"banner/([^/]+)/trackback/?$\";s:33:\"index.php?banner=$matches[1]&tb=1\";s:35:\"banner/([^/]+)/page/?([0-9]{1,})/?$\";s:46:\"index.php?banner=$matches[1]&paged=$matches[2]\";s:42:\"banner/([^/]+)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?banner=$matches[1]&cpage=$matches[2]\";s:31:\"banner/([^/]+)(?:/([0-9]+))?/?$\";s:45:\"index.php?banner=$matches[1]&page=$matches[2]\";s:23:\"banner/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:33:\"banner/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:53:\"banner/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"banner/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"banner/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:29:\"banner/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:49:\"posicoes/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?posicoes=$matches[1]&feed=$matches[2]\";s:44:\"posicoes/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?posicoes=$matches[1]&feed=$matches[2]\";s:25:\"posicoes/([^/]+)/embed/?$\";s:41:\"index.php?posicoes=$matches[1]&embed=true\";s:37:\"posicoes/([^/]+)/page/?([0-9]{1,})/?$\";s:48:\"index.php?posicoes=$matches[1]&paged=$matches[2]\";s:19:\"posicoes/([^/]+)/?$\";s:30:\"index.php?posicoes=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'on'),
(31, 'hack_file', '0', 'on'),
(32, 'blog_charset', 'UTF-8', 'on'),
(33, 'moderation_keys', '', 'off'),
(34, 'active_plugins', 'a:1:{i:0;s:34:\"advanced-custom-fields-pro/acf.php\";}', 'on'),
(35, 'category_base', '', 'on'),
(36, 'ping_sites', 'http://rpc.pingomatic.com/', 'on'),
(37, 'comment_max_links', '2', 'on'),
(38, 'gmt_offset', '0', 'on'),
(39, 'default_email_category', '1', 'on'),
(40, 'recently_edited', 'a:2:{i:0;s:71:\"C:\\xampp\\htdocs\\wpatratis/wp-content/themes/TestePratico-Main/style.css\";i:1;s:0:\"\";}', 'off'),
(41, 'template', 'TestePratico-Main', 'on'),
(42, 'stylesheet', 'TestePratico-Main', 'on'),
(43, 'comment_registration', '0', 'on'),
(44, 'html_type', 'text/html', 'on'),
(45, 'use_trackback', '0', 'on'),
(46, 'default_role', 'subscriber', 'on'),
(47, 'db_version', '58975', 'on'),
(48, 'uploads_use_yearmonth_folders', '1', 'on'),
(49, 'upload_path', '', 'on'),
(50, 'blog_public', '0', 'on'),
(51, 'default_link_category', '2', 'on'),
(52, 'show_on_front', 'posts', 'on'),
(53, 'tag_base', '', 'on'),
(54, 'show_avatars', '1', 'on'),
(55, 'avatar_rating', 'G', 'on'),
(56, 'upload_url_path', '', 'on'),
(57, 'thumbnail_size_w', '150', 'on'),
(58, 'thumbnail_size_h', '150', 'on'),
(59, 'thumbnail_crop', '1', 'on'),
(60, 'medium_size_w', '300', 'on'),
(61, 'medium_size_h', '300', 'on'),
(62, 'avatar_default', 'mystery', 'on'),
(63, 'large_size_w', '1024', 'on'),
(64, 'large_size_h', '1024', 'on'),
(65, 'image_default_link_type', 'none', 'on'),
(66, 'image_default_size', '', 'on'),
(67, 'image_default_align', '', 'on'),
(68, 'close_comments_for_old_posts', '0', 'on'),
(69, 'close_comments_days_old', '14', 'on'),
(70, 'thread_comments', '1', 'on'),
(71, 'thread_comments_depth', '5', 'on'),
(72, 'page_comments', '0', 'on'),
(73, 'comments_per_page', '50', 'on'),
(74, 'default_comments_page', 'newest', 'on'),
(75, 'comment_order', 'asc', 'on'),
(76, 'sticky_posts', 'a:0:{}', 'on'),
(77, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'auto'),
(78, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'auto'),
(79, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'auto'),
(80, 'uninstall_plugins', 'a:0:{}', 'off'),
(81, 'timezone_string', 'America/Sao_Paulo', 'on'),
(82, 'page_for_posts', '0', 'on'),
(83, 'page_on_front', '0', 'on'),
(84, 'default_post_format', '0', 'on'),
(85, 'link_manager_enabled', '0', 'on'),
(86, 'finished_splitting_shared_terms', '1', 'on'),
(87, 'site_icon', '0', 'on'),
(88, 'medium_large_size_w', '768', 'on'),
(89, 'medium_large_size_h', '0', 'on'),
(90, 'wp_page_for_privacy_policy', '3', 'on'),
(91, 'show_comments_cookies_opt_in', '1', 'on'),
(92, 'admin_email_lifespan', '1747847650', 'on'),
(93, 'disallowed_keys', '', 'off'),
(94, 'comment_previously_approved', '1', 'on'),
(95, 'auto_plugin_theme_update_emails', 'a:0:{}', 'off'),
(96, 'auto_update_core_dev', 'enabled', 'on'),
(97, 'auto_update_core_minor', 'enabled', 'on'),
(98, 'auto_update_core_major', 'enabled', 'on'),
(99, 'wp_force_deactivated_plugins', 'a:0:{}', 'on'),
(100, 'wp_attachment_pages_enabled', '0', 'on'),
(101, 'initial_db_version', '58975', 'on'),
(102, 'wpatr_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'on'),
(103, 'fresh_site', '0', 'off'),
(104, 'WPLANG', 'pt_BR', 'auto'),
(105, 'user_count', '1', 'off'),
(106, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:156:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Posts recentes</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:224:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Comentários</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Arquivos</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categorias</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'auto'),
(107, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'auto'),
(108, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(109, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(110, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(111, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(112, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(113, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(114, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(115, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(116, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(117, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(118, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(119, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(120, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(121, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(122, '_transient_wp_core_block_css_files', 'a:2:{s:7:\"version\";s:3:\"6.7\";s:5:\"files\";a:540:{i:0;s:23:\"archives/editor-rtl.css\";i:1;s:27:\"archives/editor-rtl.min.css\";i:2;s:19:\"archives/editor.css\";i:3;s:23:\"archives/editor.min.css\";i:4;s:22:\"archives/style-rtl.css\";i:5;s:26:\"archives/style-rtl.min.css\";i:6;s:18:\"archives/style.css\";i:7;s:22:\"archives/style.min.css\";i:8;s:20:\"audio/editor-rtl.css\";i:9;s:24:\"audio/editor-rtl.min.css\";i:10;s:16:\"audio/editor.css\";i:11;s:20:\"audio/editor.min.css\";i:12;s:19:\"audio/style-rtl.css\";i:13;s:23:\"audio/style-rtl.min.css\";i:14;s:15:\"audio/style.css\";i:15;s:19:\"audio/style.min.css\";i:16;s:19:\"audio/theme-rtl.css\";i:17;s:23:\"audio/theme-rtl.min.css\";i:18;s:15:\"audio/theme.css\";i:19;s:19:\"audio/theme.min.css\";i:20;s:21:\"avatar/editor-rtl.css\";i:21;s:25:\"avatar/editor-rtl.min.css\";i:22;s:17:\"avatar/editor.css\";i:23;s:21:\"avatar/editor.min.css\";i:24;s:20:\"avatar/style-rtl.css\";i:25;s:24:\"avatar/style-rtl.min.css\";i:26;s:16:\"avatar/style.css\";i:27;s:20:\"avatar/style.min.css\";i:28;s:21:\"button/editor-rtl.css\";i:29;s:25:\"button/editor-rtl.min.css\";i:30;s:17:\"button/editor.css\";i:31;s:21:\"button/editor.min.css\";i:32;s:20:\"button/style-rtl.css\";i:33;s:24:\"button/style-rtl.min.css\";i:34;s:16:\"button/style.css\";i:35;s:20:\"button/style.min.css\";i:36;s:22:\"buttons/editor-rtl.css\";i:37;s:26:\"buttons/editor-rtl.min.css\";i:38;s:18:\"buttons/editor.css\";i:39;s:22:\"buttons/editor.min.css\";i:40;s:21:\"buttons/style-rtl.css\";i:41;s:25:\"buttons/style-rtl.min.css\";i:42;s:17:\"buttons/style.css\";i:43;s:21:\"buttons/style.min.css\";i:44;s:22:\"calendar/style-rtl.css\";i:45;s:26:\"calendar/style-rtl.min.css\";i:46;s:18:\"calendar/style.css\";i:47;s:22:\"calendar/style.min.css\";i:48;s:25:\"categories/editor-rtl.css\";i:49;s:29:\"categories/editor-rtl.min.css\";i:50;s:21:\"categories/editor.css\";i:51;s:25:\"categories/editor.min.css\";i:52;s:24:\"categories/style-rtl.css\";i:53;s:28:\"categories/style-rtl.min.css\";i:54;s:20:\"categories/style.css\";i:55;s:24:\"categories/style.min.css\";i:56;s:19:\"code/editor-rtl.css\";i:57;s:23:\"code/editor-rtl.min.css\";i:58;s:15:\"code/editor.css\";i:59;s:19:\"code/editor.min.css\";i:60;s:18:\"code/style-rtl.css\";i:61;s:22:\"code/style-rtl.min.css\";i:62;s:14:\"code/style.css\";i:63;s:18:\"code/style.min.css\";i:64;s:18:\"code/theme-rtl.css\";i:65;s:22:\"code/theme-rtl.min.css\";i:66;s:14:\"code/theme.css\";i:67;s:18:\"code/theme.min.css\";i:68;s:22:\"columns/editor-rtl.css\";i:69;s:26:\"columns/editor-rtl.min.css\";i:70;s:18:\"columns/editor.css\";i:71;s:22:\"columns/editor.min.css\";i:72;s:21:\"columns/style-rtl.css\";i:73;s:25:\"columns/style-rtl.min.css\";i:74;s:17:\"columns/style.css\";i:75;s:21:\"columns/style.min.css\";i:76;s:33:\"comment-author-name/style-rtl.css\";i:77;s:37:\"comment-author-name/style-rtl.min.css\";i:78;s:29:\"comment-author-name/style.css\";i:79;s:33:\"comment-author-name/style.min.css\";i:80;s:29:\"comment-content/style-rtl.css\";i:81;s:33:\"comment-content/style-rtl.min.css\";i:82;s:25:\"comment-content/style.css\";i:83;s:29:\"comment-content/style.min.css\";i:84;s:26:\"comment-date/style-rtl.css\";i:85;s:30:\"comment-date/style-rtl.min.css\";i:86;s:22:\"comment-date/style.css\";i:87;s:26:\"comment-date/style.min.css\";i:88;s:31:\"comment-edit-link/style-rtl.css\";i:89;s:35:\"comment-edit-link/style-rtl.min.css\";i:90;s:27:\"comment-edit-link/style.css\";i:91;s:31:\"comment-edit-link/style.min.css\";i:92;s:32:\"comment-reply-link/style-rtl.css\";i:93;s:36:\"comment-reply-link/style-rtl.min.css\";i:94;s:28:\"comment-reply-link/style.css\";i:95;s:32:\"comment-reply-link/style.min.css\";i:96;s:30:\"comment-template/style-rtl.css\";i:97;s:34:\"comment-template/style-rtl.min.css\";i:98;s:26:\"comment-template/style.css\";i:99;s:30:\"comment-template/style.min.css\";i:100;s:42:\"comments-pagination-numbers/editor-rtl.css\";i:101;s:46:\"comments-pagination-numbers/editor-rtl.min.css\";i:102;s:38:\"comments-pagination-numbers/editor.css\";i:103;s:42:\"comments-pagination-numbers/editor.min.css\";i:104;s:34:\"comments-pagination/editor-rtl.css\";i:105;s:38:\"comments-pagination/editor-rtl.min.css\";i:106;s:30:\"comments-pagination/editor.css\";i:107;s:34:\"comments-pagination/editor.min.css\";i:108;s:33:\"comments-pagination/style-rtl.css\";i:109;s:37:\"comments-pagination/style-rtl.min.css\";i:110;s:29:\"comments-pagination/style.css\";i:111;s:33:\"comments-pagination/style.min.css\";i:112;s:29:\"comments-title/editor-rtl.css\";i:113;s:33:\"comments-title/editor-rtl.min.css\";i:114;s:25:\"comments-title/editor.css\";i:115;s:29:\"comments-title/editor.min.css\";i:116;s:23:\"comments/editor-rtl.css\";i:117;s:27:\"comments/editor-rtl.min.css\";i:118;s:19:\"comments/editor.css\";i:119;s:23:\"comments/editor.min.css\";i:120;s:22:\"comments/style-rtl.css\";i:121;s:26:\"comments/style-rtl.min.css\";i:122;s:18:\"comments/style.css\";i:123;s:22:\"comments/style.min.css\";i:124;s:20:\"cover/editor-rtl.css\";i:125;s:24:\"cover/editor-rtl.min.css\";i:126;s:16:\"cover/editor.css\";i:127;s:20:\"cover/editor.min.css\";i:128;s:19:\"cover/style-rtl.css\";i:129;s:23:\"cover/style-rtl.min.css\";i:130;s:15:\"cover/style.css\";i:131;s:19:\"cover/style.min.css\";i:132;s:22:\"details/editor-rtl.css\";i:133;s:26:\"details/editor-rtl.min.css\";i:134;s:18:\"details/editor.css\";i:135;s:22:\"details/editor.min.css\";i:136;s:21:\"details/style-rtl.css\";i:137;s:25:\"details/style-rtl.min.css\";i:138;s:17:\"details/style.css\";i:139;s:21:\"details/style.min.css\";i:140;s:20:\"embed/editor-rtl.css\";i:141;s:24:\"embed/editor-rtl.min.css\";i:142;s:16:\"embed/editor.css\";i:143;s:20:\"embed/editor.min.css\";i:144;s:19:\"embed/style-rtl.css\";i:145;s:23:\"embed/style-rtl.min.css\";i:146;s:15:\"embed/style.css\";i:147;s:19:\"embed/style.min.css\";i:148;s:19:\"embed/theme-rtl.css\";i:149;s:23:\"embed/theme-rtl.min.css\";i:150;s:15:\"embed/theme.css\";i:151;s:19:\"embed/theme.min.css\";i:152;s:19:\"file/editor-rtl.css\";i:153;s:23:\"file/editor-rtl.min.css\";i:154;s:15:\"file/editor.css\";i:155;s:19:\"file/editor.min.css\";i:156;s:18:\"file/style-rtl.css\";i:157;s:22:\"file/style-rtl.min.css\";i:158;s:14:\"file/style.css\";i:159;s:18:\"file/style.min.css\";i:160;s:23:\"footnotes/style-rtl.css\";i:161;s:27:\"footnotes/style-rtl.min.css\";i:162;s:19:\"footnotes/style.css\";i:163;s:23:\"footnotes/style.min.css\";i:164;s:23:\"freeform/editor-rtl.css\";i:165;s:27:\"freeform/editor-rtl.min.css\";i:166;s:19:\"freeform/editor.css\";i:167;s:23:\"freeform/editor.min.css\";i:168;s:22:\"gallery/editor-rtl.css\";i:169;s:26:\"gallery/editor-rtl.min.css\";i:170;s:18:\"gallery/editor.css\";i:171;s:22:\"gallery/editor.min.css\";i:172;s:21:\"gallery/style-rtl.css\";i:173;s:25:\"gallery/style-rtl.min.css\";i:174;s:17:\"gallery/style.css\";i:175;s:21:\"gallery/style.min.css\";i:176;s:21:\"gallery/theme-rtl.css\";i:177;s:25:\"gallery/theme-rtl.min.css\";i:178;s:17:\"gallery/theme.css\";i:179;s:21:\"gallery/theme.min.css\";i:180;s:20:\"group/editor-rtl.css\";i:181;s:24:\"group/editor-rtl.min.css\";i:182;s:16:\"group/editor.css\";i:183;s:20:\"group/editor.min.css\";i:184;s:19:\"group/style-rtl.css\";i:185;s:23:\"group/style-rtl.min.css\";i:186;s:15:\"group/style.css\";i:187;s:19:\"group/style.min.css\";i:188;s:19:\"group/theme-rtl.css\";i:189;s:23:\"group/theme-rtl.min.css\";i:190;s:15:\"group/theme.css\";i:191;s:19:\"group/theme.min.css\";i:192;s:21:\"heading/style-rtl.css\";i:193;s:25:\"heading/style-rtl.min.css\";i:194;s:17:\"heading/style.css\";i:195;s:21:\"heading/style.min.css\";i:196;s:19:\"html/editor-rtl.css\";i:197;s:23:\"html/editor-rtl.min.css\";i:198;s:15:\"html/editor.css\";i:199;s:19:\"html/editor.min.css\";i:200;s:20:\"image/editor-rtl.css\";i:201;s:24:\"image/editor-rtl.min.css\";i:202;s:16:\"image/editor.css\";i:203;s:20:\"image/editor.min.css\";i:204;s:19:\"image/style-rtl.css\";i:205;s:23:\"image/style-rtl.min.css\";i:206;s:15:\"image/style.css\";i:207;s:19:\"image/style.min.css\";i:208;s:19:\"image/theme-rtl.css\";i:209;s:23:\"image/theme-rtl.min.css\";i:210;s:15:\"image/theme.css\";i:211;s:19:\"image/theme.min.css\";i:212;s:29:\"latest-comments/style-rtl.css\";i:213;s:33:\"latest-comments/style-rtl.min.css\";i:214;s:25:\"latest-comments/style.css\";i:215;s:29:\"latest-comments/style.min.css\";i:216;s:27:\"latest-posts/editor-rtl.css\";i:217;s:31:\"latest-posts/editor-rtl.min.css\";i:218;s:23:\"latest-posts/editor.css\";i:219;s:27:\"latest-posts/editor.min.css\";i:220;s:26:\"latest-posts/style-rtl.css\";i:221;s:30:\"latest-posts/style-rtl.min.css\";i:222;s:22:\"latest-posts/style.css\";i:223;s:26:\"latest-posts/style.min.css\";i:224;s:18:\"list/style-rtl.css\";i:225;s:22:\"list/style-rtl.min.css\";i:226;s:14:\"list/style.css\";i:227;s:18:\"list/style.min.css\";i:228;s:22:\"loginout/style-rtl.css\";i:229;s:26:\"loginout/style-rtl.min.css\";i:230;s:18:\"loginout/style.css\";i:231;s:22:\"loginout/style.min.css\";i:232;s:25:\"media-text/editor-rtl.css\";i:233;s:29:\"media-text/editor-rtl.min.css\";i:234;s:21:\"media-text/editor.css\";i:235;s:25:\"media-text/editor.min.css\";i:236;s:24:\"media-text/style-rtl.css\";i:237;s:28:\"media-text/style-rtl.min.css\";i:238;s:20:\"media-text/style.css\";i:239;s:24:\"media-text/style.min.css\";i:240;s:19:\"more/editor-rtl.css\";i:241;s:23:\"more/editor-rtl.min.css\";i:242;s:15:\"more/editor.css\";i:243;s:19:\"more/editor.min.css\";i:244;s:30:\"navigation-link/editor-rtl.css\";i:245;s:34:\"navigation-link/editor-rtl.min.css\";i:246;s:26:\"navigation-link/editor.css\";i:247;s:30:\"navigation-link/editor.min.css\";i:248;s:29:\"navigation-link/style-rtl.css\";i:249;s:33:\"navigation-link/style-rtl.min.css\";i:250;s:25:\"navigation-link/style.css\";i:251;s:29:\"navigation-link/style.min.css\";i:252;s:33:\"navigation-submenu/editor-rtl.css\";i:253;s:37:\"navigation-submenu/editor-rtl.min.css\";i:254;s:29:\"navigation-submenu/editor.css\";i:255;s:33:\"navigation-submenu/editor.min.css\";i:256;s:25:\"navigation/editor-rtl.css\";i:257;s:29:\"navigation/editor-rtl.min.css\";i:258;s:21:\"navigation/editor.css\";i:259;s:25:\"navigation/editor.min.css\";i:260;s:24:\"navigation/style-rtl.css\";i:261;s:28:\"navigation/style-rtl.min.css\";i:262;s:20:\"navigation/style.css\";i:263;s:24:\"navigation/style.min.css\";i:264;s:23:\"nextpage/editor-rtl.css\";i:265;s:27:\"nextpage/editor-rtl.min.css\";i:266;s:19:\"nextpage/editor.css\";i:267;s:23:\"nextpage/editor.min.css\";i:268;s:24:\"page-list/editor-rtl.css\";i:269;s:28:\"page-list/editor-rtl.min.css\";i:270;s:20:\"page-list/editor.css\";i:271;s:24:\"page-list/editor.min.css\";i:272;s:23:\"page-list/style-rtl.css\";i:273;s:27:\"page-list/style-rtl.min.css\";i:274;s:19:\"page-list/style.css\";i:275;s:23:\"page-list/style.min.css\";i:276;s:24:\"paragraph/editor-rtl.css\";i:277;s:28:\"paragraph/editor-rtl.min.css\";i:278;s:20:\"paragraph/editor.css\";i:279;s:24:\"paragraph/editor.min.css\";i:280;s:23:\"paragraph/style-rtl.css\";i:281;s:27:\"paragraph/style-rtl.min.css\";i:282;s:19:\"paragraph/style.css\";i:283;s:23:\"paragraph/style.min.css\";i:284;s:35:\"post-author-biography/style-rtl.css\";i:285;s:39:\"post-author-biography/style-rtl.min.css\";i:286;s:31:\"post-author-biography/style.css\";i:287;s:35:\"post-author-biography/style.min.css\";i:288;s:30:\"post-author-name/style-rtl.css\";i:289;s:34:\"post-author-name/style-rtl.min.css\";i:290;s:26:\"post-author-name/style.css\";i:291;s:30:\"post-author-name/style.min.css\";i:292;s:26:\"post-author/editor-rtl.css\";i:293;s:30:\"post-author/editor-rtl.min.css\";i:294;s:22:\"post-author/editor.css\";i:295;s:26:\"post-author/editor.min.css\";i:296;s:25:\"post-author/style-rtl.css\";i:297;s:29:\"post-author/style-rtl.min.css\";i:298;s:21:\"post-author/style.css\";i:299;s:25:\"post-author/style.min.css\";i:300;s:33:\"post-comments-form/editor-rtl.css\";i:301;s:37:\"post-comments-form/editor-rtl.min.css\";i:302;s:29:\"post-comments-form/editor.css\";i:303;s:33:\"post-comments-form/editor.min.css\";i:304;s:32:\"post-comments-form/style-rtl.css\";i:305;s:36:\"post-comments-form/style-rtl.min.css\";i:306;s:28:\"post-comments-form/style.css\";i:307;s:32:\"post-comments-form/style.min.css\";i:308;s:27:\"post-content/editor-rtl.css\";i:309;s:31:\"post-content/editor-rtl.min.css\";i:310;s:23:\"post-content/editor.css\";i:311;s:27:\"post-content/editor.min.css\";i:312;s:26:\"post-content/style-rtl.css\";i:313;s:30:\"post-content/style-rtl.min.css\";i:314;s:22:\"post-content/style.css\";i:315;s:26:\"post-content/style.min.css\";i:316;s:23:\"post-date/style-rtl.css\";i:317;s:27:\"post-date/style-rtl.min.css\";i:318;s:19:\"post-date/style.css\";i:319;s:23:\"post-date/style.min.css\";i:320;s:27:\"post-excerpt/editor-rtl.css\";i:321;s:31:\"post-excerpt/editor-rtl.min.css\";i:322;s:23:\"post-excerpt/editor.css\";i:323;s:27:\"post-excerpt/editor.min.css\";i:324;s:26:\"post-excerpt/style-rtl.css\";i:325;s:30:\"post-excerpt/style-rtl.min.css\";i:326;s:22:\"post-excerpt/style.css\";i:327;s:26:\"post-excerpt/style.min.css\";i:328;s:34:\"post-featured-image/editor-rtl.css\";i:329;s:38:\"post-featured-image/editor-rtl.min.css\";i:330;s:30:\"post-featured-image/editor.css\";i:331;s:34:\"post-featured-image/editor.min.css\";i:332;s:33:\"post-featured-image/style-rtl.css\";i:333;s:37:\"post-featured-image/style-rtl.min.css\";i:334;s:29:\"post-featured-image/style.css\";i:335;s:33:\"post-featured-image/style.min.css\";i:336;s:34:\"post-navigation-link/style-rtl.css\";i:337;s:38:\"post-navigation-link/style-rtl.min.css\";i:338;s:30:\"post-navigation-link/style.css\";i:339;s:34:\"post-navigation-link/style.min.css\";i:340;s:28:\"post-template/editor-rtl.css\";i:341;s:32:\"post-template/editor-rtl.min.css\";i:342;s:24:\"post-template/editor.css\";i:343;s:28:\"post-template/editor.min.css\";i:344;s:27:\"post-template/style-rtl.css\";i:345;s:31:\"post-template/style-rtl.min.css\";i:346;s:23:\"post-template/style.css\";i:347;s:27:\"post-template/style.min.css\";i:348;s:24:\"post-terms/style-rtl.css\";i:349;s:28:\"post-terms/style-rtl.min.css\";i:350;s:20:\"post-terms/style.css\";i:351;s:24:\"post-terms/style.min.css\";i:352;s:24:\"post-title/style-rtl.css\";i:353;s:28:\"post-title/style-rtl.min.css\";i:354;s:20:\"post-title/style.css\";i:355;s:24:\"post-title/style.min.css\";i:356;s:26:\"preformatted/style-rtl.css\";i:357;s:30:\"preformatted/style-rtl.min.css\";i:358;s:22:\"preformatted/style.css\";i:359;s:26:\"preformatted/style.min.css\";i:360;s:24:\"pullquote/editor-rtl.css\";i:361;s:28:\"pullquote/editor-rtl.min.css\";i:362;s:20:\"pullquote/editor.css\";i:363;s:24:\"pullquote/editor.min.css\";i:364;s:23:\"pullquote/style-rtl.css\";i:365;s:27:\"pullquote/style-rtl.min.css\";i:366;s:19:\"pullquote/style.css\";i:367;s:23:\"pullquote/style.min.css\";i:368;s:23:\"pullquote/theme-rtl.css\";i:369;s:27:\"pullquote/theme-rtl.min.css\";i:370;s:19:\"pullquote/theme.css\";i:371;s:23:\"pullquote/theme.min.css\";i:372;s:39:\"query-pagination-numbers/editor-rtl.css\";i:373;s:43:\"query-pagination-numbers/editor-rtl.min.css\";i:374;s:35:\"query-pagination-numbers/editor.css\";i:375;s:39:\"query-pagination-numbers/editor.min.css\";i:376;s:31:\"query-pagination/editor-rtl.css\";i:377;s:35:\"query-pagination/editor-rtl.min.css\";i:378;s:27:\"query-pagination/editor.css\";i:379;s:31:\"query-pagination/editor.min.css\";i:380;s:30:\"query-pagination/style-rtl.css\";i:381;s:34:\"query-pagination/style-rtl.min.css\";i:382;s:26:\"query-pagination/style.css\";i:383;s:30:\"query-pagination/style.min.css\";i:384;s:25:\"query-title/style-rtl.css\";i:385;s:29:\"query-title/style-rtl.min.css\";i:386;s:21:\"query-title/style.css\";i:387;s:25:\"query-title/style.min.css\";i:388;s:20:\"query/editor-rtl.css\";i:389;s:24:\"query/editor-rtl.min.css\";i:390;s:16:\"query/editor.css\";i:391;s:20:\"query/editor.min.css\";i:392;s:19:\"quote/style-rtl.css\";i:393;s:23:\"quote/style-rtl.min.css\";i:394;s:15:\"quote/style.css\";i:395;s:19:\"quote/style.min.css\";i:396;s:19:\"quote/theme-rtl.css\";i:397;s:23:\"quote/theme-rtl.min.css\";i:398;s:15:\"quote/theme.css\";i:399;s:19:\"quote/theme.min.css\";i:400;s:23:\"read-more/style-rtl.css\";i:401;s:27:\"read-more/style-rtl.min.css\";i:402;s:19:\"read-more/style.css\";i:403;s:23:\"read-more/style.min.css\";i:404;s:18:\"rss/editor-rtl.css\";i:405;s:22:\"rss/editor-rtl.min.css\";i:406;s:14:\"rss/editor.css\";i:407;s:18:\"rss/editor.min.css\";i:408;s:17:\"rss/style-rtl.css\";i:409;s:21:\"rss/style-rtl.min.css\";i:410;s:13:\"rss/style.css\";i:411;s:17:\"rss/style.min.css\";i:412;s:21:\"search/editor-rtl.css\";i:413;s:25:\"search/editor-rtl.min.css\";i:414;s:17:\"search/editor.css\";i:415;s:21:\"search/editor.min.css\";i:416;s:20:\"search/style-rtl.css\";i:417;s:24:\"search/style-rtl.min.css\";i:418;s:16:\"search/style.css\";i:419;s:20:\"search/style.min.css\";i:420;s:20:\"search/theme-rtl.css\";i:421;s:24:\"search/theme-rtl.min.css\";i:422;s:16:\"search/theme.css\";i:423;s:20:\"search/theme.min.css\";i:424;s:24:\"separator/editor-rtl.css\";i:425;s:28:\"separator/editor-rtl.min.css\";i:426;s:20:\"separator/editor.css\";i:427;s:24:\"separator/editor.min.css\";i:428;s:23:\"separator/style-rtl.css\";i:429;s:27:\"separator/style-rtl.min.css\";i:430;s:19:\"separator/style.css\";i:431;s:23:\"separator/style.min.css\";i:432;s:23:\"separator/theme-rtl.css\";i:433;s:27:\"separator/theme-rtl.min.css\";i:434;s:19:\"separator/theme.css\";i:435;s:23:\"separator/theme.min.css\";i:436;s:24:\"shortcode/editor-rtl.css\";i:437;s:28:\"shortcode/editor-rtl.min.css\";i:438;s:20:\"shortcode/editor.css\";i:439;s:24:\"shortcode/editor.min.css\";i:440;s:24:\"site-logo/editor-rtl.css\";i:441;s:28:\"site-logo/editor-rtl.min.css\";i:442;s:20:\"site-logo/editor.css\";i:443;s:24:\"site-logo/editor.min.css\";i:444;s:23:\"site-logo/style-rtl.css\";i:445;s:27:\"site-logo/style-rtl.min.css\";i:446;s:19:\"site-logo/style.css\";i:447;s:23:\"site-logo/style.min.css\";i:448;s:27:\"site-tagline/editor-rtl.css\";i:449;s:31:\"site-tagline/editor-rtl.min.css\";i:450;s:23:\"site-tagline/editor.css\";i:451;s:27:\"site-tagline/editor.min.css\";i:452;s:26:\"site-tagline/style-rtl.css\";i:453;s:30:\"site-tagline/style-rtl.min.css\";i:454;s:22:\"site-tagline/style.css\";i:455;s:26:\"site-tagline/style.min.css\";i:456;s:25:\"site-title/editor-rtl.css\";i:457;s:29:\"site-title/editor-rtl.min.css\";i:458;s:21:\"site-title/editor.css\";i:459;s:25:\"site-title/editor.min.css\";i:460;s:24:\"site-title/style-rtl.css\";i:461;s:28:\"site-title/style-rtl.min.css\";i:462;s:20:\"site-title/style.css\";i:463;s:24:\"site-title/style.min.css\";i:464;s:26:\"social-link/editor-rtl.css\";i:465;s:30:\"social-link/editor-rtl.min.css\";i:466;s:22:\"social-link/editor.css\";i:467;s:26:\"social-link/editor.min.css\";i:468;s:27:\"social-links/editor-rtl.css\";i:469;s:31:\"social-links/editor-rtl.min.css\";i:470;s:23:\"social-links/editor.css\";i:471;s:27:\"social-links/editor.min.css\";i:472;s:26:\"social-links/style-rtl.css\";i:473;s:30:\"social-links/style-rtl.min.css\";i:474;s:22:\"social-links/style.css\";i:475;s:26:\"social-links/style.min.css\";i:476;s:21:\"spacer/editor-rtl.css\";i:477;s:25:\"spacer/editor-rtl.min.css\";i:478;s:17:\"spacer/editor.css\";i:479;s:21:\"spacer/editor.min.css\";i:480;s:20:\"spacer/style-rtl.css\";i:481;s:24:\"spacer/style-rtl.min.css\";i:482;s:16:\"spacer/style.css\";i:483;s:20:\"spacer/style.min.css\";i:484;s:20:\"table/editor-rtl.css\";i:485;s:24:\"table/editor-rtl.min.css\";i:486;s:16:\"table/editor.css\";i:487;s:20:\"table/editor.min.css\";i:488;s:19:\"table/style-rtl.css\";i:489;s:23:\"table/style-rtl.min.css\";i:490;s:15:\"table/style.css\";i:491;s:19:\"table/style.min.css\";i:492;s:19:\"table/theme-rtl.css\";i:493;s:23:\"table/theme-rtl.min.css\";i:494;s:15:\"table/theme.css\";i:495;s:19:\"table/theme.min.css\";i:496;s:24:\"tag-cloud/editor-rtl.css\";i:497;s:28:\"tag-cloud/editor-rtl.min.css\";i:498;s:20:\"tag-cloud/editor.css\";i:499;s:24:\"tag-cloud/editor.min.css\";i:500;s:23:\"tag-cloud/style-rtl.css\";i:501;s:27:\"tag-cloud/style-rtl.min.css\";i:502;s:19:\"tag-cloud/style.css\";i:503;s:23:\"tag-cloud/style.min.css\";i:504;s:28:\"template-part/editor-rtl.css\";i:505;s:32:\"template-part/editor-rtl.min.css\";i:506;s:24:\"template-part/editor.css\";i:507;s:28:\"template-part/editor.min.css\";i:508;s:27:\"template-part/theme-rtl.css\";i:509;s:31:\"template-part/theme-rtl.min.css\";i:510;s:23:\"template-part/theme.css\";i:511;s:27:\"template-part/theme.min.css\";i:512;s:30:\"term-description/style-rtl.css\";i:513;s:34:\"term-description/style-rtl.min.css\";i:514;s:26:\"term-description/style.css\";i:515;s:30:\"term-description/style.min.css\";i:516;s:27:\"text-columns/editor-rtl.css\";i:517;s:31:\"text-columns/editor-rtl.min.css\";i:518;s:23:\"text-columns/editor.css\";i:519;s:27:\"text-columns/editor.min.css\";i:520;s:26:\"text-columns/style-rtl.css\";i:521;s:30:\"text-columns/style-rtl.min.css\";i:522;s:22:\"text-columns/style.css\";i:523;s:26:\"text-columns/style.min.css\";i:524;s:19:\"verse/style-rtl.css\";i:525;s:23:\"verse/style-rtl.min.css\";i:526;s:15:\"verse/style.css\";i:527;s:19:\"verse/style.min.css\";i:528;s:20:\"video/editor-rtl.css\";i:529;s:24:\"video/editor-rtl.min.css\";i:530;s:16:\"video/editor.css\";i:531;s:20:\"video/editor.min.css\";i:532;s:19:\"video/style-rtl.css\";i:533;s:23:\"video/style-rtl.min.css\";i:534;s:15:\"video/style.css\";i:535;s:19:\"video/style.min.css\";i:536;s:19:\"video/theme-rtl.css\";i:537;s:23:\"video/theme-rtl.min.css\";i:538;s:15:\"video/theme.css\";i:539;s:19:\"video/theme.min.css\";}}', 'on'),
(126, 'recovery_keys', 'a:0:{}', 'off'),
(127, 'theme_mods_twentytwentyfive', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1732295736;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'off'),
(128, '_transient_wp_styles_for_blocks', 'a:2:{s:4:\"hash\";s:32:\"98c6c54397c4a57be055741480ba55fe\";s:6:\"blocks\";a:5:{s:11:\"core/button\";s:0:\"\";s:14:\"core/site-logo\";s:0:\"\";s:18:\"core/post-template\";s:120:\":where(.wp-block-post-template.is-layout-flex){gap: 1.25em;}:where(.wp-block-post-template.is-layout-grid){gap: 1.25em;}\";s:12:\"core/columns\";s:102:\":where(.wp-block-columns.is-layout-flex){gap: 2em;}:where(.wp-block-columns.is-layout-grid){gap: 2em;}\";s:14:\"core/pullquote\";s:69:\":root :where(.wp-block-pullquote){font-size: 1.5em;line-height: 1.6;}\";}}', 'on'),
(141, 'can_compress_scripts', '1', 'on'),
(156, 'finished_updating_comment_type', '1', 'auto'),
(157, 'current_theme', 'Site BIOLabs', 'auto'),
(158, 'theme_mods_TestePratico-Main', 'a:4:{i:0;b:0;s:19:\"wp_classic_sidebars\";a:0:{}s:18:\"nav_menu_locations\";a:1:{s:12:\"my_main_menu\";i:2;}s:18:\"custom_css_post_id\";i:-1;}', 'on'),
(159, 'theme_switched', '', 'auto'),
(162, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:1:{i:0;i:2;}}', 'off'),
(165, 'recovery_mode_email_last_sent', '1732297877', 'auto'),
(209, 'https_detection_errors', 'a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:25:\"Verificação SSL falhou.\";}}', 'auto'),
(210, '_transient_health-check-site-status-result', '{\"good\":16,\"recommended\":4,\"critical\":3}', 'on'),
(242, 'core_updater.lock', '1732731259', 'off');
INSERT INTO `wpatr_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(266, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:3:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/pt_BR/wordpress-6.7.1.zip\";s:6:\"locale\";s:5:\"pt_BR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/pt_BR/wordpress-6.7.1.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.7.1\";s:7:\"version\";s:5:\"6.7.1\";s:11:\"php_version\";s:6:\"7.2.24\";s:13:\"mysql_version\";s:5:\"5.5.5\";s:11:\"new_bundled\";s:3:\"6.7\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.7.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.7.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.7.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.7.1-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-6.7.1-partial-0.zip\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.7.1\";s:7:\"version\";s:5:\"6.7.1\";s:11:\"php_version\";s:6:\"7.2.24\";s:13:\"mysql_version\";s:5:\"5.5.5\";s:11:\"new_bundled\";s:3:\"6.7\";s:15:\"partial_version\";s:3:\"6.7\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/pt_BR/wordpress-6.7.1.zip\";s:6:\"locale\";s:5:\"pt_BR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/pt_BR/wordpress-6.7.1.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.7.1\";s:7:\"version\";s:5:\"6.7.1\";s:11:\"php_version\";s:6:\"7.2.24\";s:13:\"mysql_version\";s:5:\"5.5.5\";s:11:\"new_bundled\";s:3:\"6.7\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}}s:12:\"last_checked\";i:1733940856;s:15:\"version_checked\";s:3:\"6.7\";s:12:\"translations\";a:0:{}}', 'off'),
(267, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1733944501;s:7:\"checked\";a:5:{s:17:\"TestePratico-Main\";s:3:\"1.0\";s:16:\"twentytwentyfive\";s:3:\"1.0\";s:16:\"twentytwentyfour\";s:3:\"1.3\";s:17:\"twentytwentythree\";s:3:\"1.6\";s:15:\"twentytwentytwo\";s:3:\"1.9\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:4:{s:16:\"twentytwentyfive\";a:6:{s:5:\"theme\";s:16:\"twentytwentyfive\";s:11:\"new_version\";s:3:\"1.0\";s:3:\"url\";s:46:\"https://wordpress.org/themes/twentytwentyfive/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/theme/twentytwentyfive.1.0.zip\";s:8:\"requires\";s:3:\"6.7\";s:12:\"requires_php\";s:3:\"7.2\";}s:16:\"twentytwentyfour\";a:6:{s:5:\"theme\";s:16:\"twentytwentyfour\";s:11:\"new_version\";s:3:\"1.3\";s:3:\"url\";s:46:\"https://wordpress.org/themes/twentytwentyfour/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/theme/twentytwentyfour.1.3.zip\";s:8:\"requires\";s:3:\"6.4\";s:12:\"requires_php\";s:3:\"7.0\";}s:17:\"twentytwentythree\";a:6:{s:5:\"theme\";s:17:\"twentytwentythree\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:47:\"https://wordpress.org/themes/twentytwentythree/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/theme/twentytwentythree.1.6.zip\";s:8:\"requires\";s:3:\"6.1\";s:12:\"requires_php\";s:3:\"5.6\";}s:15:\"twentytwentytwo\";a:6:{s:5:\"theme\";s:15:\"twentytwentytwo\";s:11:\"new_version\";s:3:\"1.9\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentytwo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentytwo.1.9.zip\";s:8:\"requires\";s:3:\"5.9\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}', 'off'),
(269, '_site_transient_timeout_php_check_da775d00ae55849f14f81cf79fc50d46', '1734108638', 'off'),
(270, '_site_transient_php_check_da775d00ae55849f14f81cf79fc50d46', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"7.2.24\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'off'),
(278, '_site_transient_wp_plugin_dependencies_plugin_data', 'a:0:{}', 'off'),
(283, 'recently_activated', 'a:0:{}', 'off'),
(286, 'acf_first_activated_version', '6.3.3', 'on'),
(287, 'acf_site_health', '{\"version\":\"6.3.3\",\"plugin_type\":\"PRO\",\"activated\":false,\"activated_url\":\"\",\"license_type\":\"\",\"license_status\":\"\",\"subscription_expires\":\"\",\"wp_version\":\"6.7\",\"mysql_version\":\"10.4.32-MariaDB\",\"is_multisite\":false,\"active_theme\":{\"name\":\"Site BIOLabs\",\"version\":\"1.0\",\"theme_uri\":\"https:\\/\\/biolabs.com.br\",\"stylesheet\":false},\"active_plugins\":{\"advanced-custom-fields-pro\\/acf.php\":{\"name\":\"Advanced Custom Fields PRO\",\"version\":\"6.3.3\",\"plugin_uri\":\"https:\\/\\/www.advancedcustomfields.com\"}},\"ui_field_groups\":\"0\",\"php_field_groups\":\"0\",\"json_field_groups\":\"0\",\"rest_field_groups\":\"0\",\"number_of_fields_by_type\":[],\"number_of_third_party_fields_by_type\":[],\"post_types_enabled\":true,\"ui_post_types\":\"3\",\"json_post_types\":\"0\",\"ui_taxonomies\":\"3\",\"json_taxonomies\":\"0\",\"ui_options_pages_enabled\":true,\"ui_options_pages\":\"0\",\"json_options_pages\":\"0\",\"php_options_pages\":\"0\",\"rest_api_format\":\"light\",\"registered_acf_blocks\":\"0\",\"blocks_per_api_version\":[],\"blocks_per_acf_block_version\":[],\"blocks_using_post_meta\":\"0\",\"preload_blocks\":true,\"admin_ui_enabled\":true,\"field_type-modal_enabled\":true,\"field_settings_tabs_enabled\":false,\"shortcode_enabled\":false,\"registered_acf_forms\":\"0\",\"json_save_paths\":1,\"json_load_paths\":1,\"event_first_activated_pro\":1733506274,\"last_updated\":1733513758,\"event_first_created_post_type\":1733507326,\"event_first_created_taxonomy\":1733507604,\"event_first_created_field_group\":1733513758}', 'off'),
(289, 'acf_version', '6.3.3', 'auto'),
(294, 'acf_pro_license', 'YToyOntzOjM6ImtleSI7czo3NjoiYjNKa1pYSmZhV1E5TVRBME1UQTRmSFI1Y0dVOVpHVjJaV3h2Y0dWeWZHUmhkR1U5TWpBeE55MHdOQzB4TWlBeE9Eb3hOam8wTmc9PSI7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly9sb2NhbGhvc3Qvd3BhdHJhdGlzIjt9', 'off'),
(295, 'acf_pro_license_status', 'a:11:{s:6:\"status\";s:6:\"active\";s:7:\"created\";i:0;s:6:\"expiry\";i:0;s:4:\"name\";s:9:\"Developer\";s:8:\"lifetime\";b:1;s:8:\"refunded\";b:0;s:17:\"view_licenses_url\";s:62:\"https://www.advancedcustomfields.com/my-account/view-licenses/\";s:23:\"manage_subscription_url\";s:0:\"\";s:9:\"error_msg\";s:0:\"\";s:10:\"next_check\";i:1734032510;s:16:\"legacy_multisite\";b:1;}', 'on'),
(313, '_site_transient_timeout_browser_f51bb482c660d0eeadd1f058058a2b35', '1734115995', 'off'),
(314, '_site_transient_browser_f51bb482c660d0eeadd1f058058a2b35', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"131.0.0.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'off'),
(357, '_transient_timeout_acf_plugin_updates', '1734108088', 'off'),
(358, '_transient_acf_plugin_updates', 'a:5:{s:7:\"plugins\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";a:12:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:6:\"6.3.11\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:5:\"6.7.1\";s:7:\"package\";s:377:\"https://connect.advancedcustomfields.com/v2/plugins/download?p=pro&s=plugin&version=6.3.11&token=eyJwIjoicHJvIiwiayI6ImIzSmtaWEpmYVdROU1UQTBNVEE0ZkhSNWNHVTlaR1YyWld4dmNHVnlmR1JoZEdVOU1qQXhOeTB3TkMweE1pQXhPRG94TmpvME5nPT0iLCJ3cF91cmwiOiJodHRwOlwvXC9sb2NhbGhvc3RcL3dwYXRyYXRpcyIsIndwX3ZlcnNpb24iOiI2LjciLCJ3cF9tdWx0aXNpdGUiOjAsInBocF92ZXJzaW9uIjoiOC4yLjEyIiwiYmxvY2tfY291bnQiOjB9\";s:5:\"icons\";a:1:{s:7:\"default\";s:64:\"https://connect.advancedcustomfields.com/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:66:\"https://connect.advancedcustomfields.com/assets/banner-772x250.jpg\";s:4:\"high\";s:67:\"https://connect.advancedcustomfields.com/assets/banner-1544x500.jpg\";}s:8:\"requires\";s:3:\"6.0\";s:12:\"requires_php\";s:3:\"7.4\";s:12:\"release_date\";s:8:\"20241112\";s:13:\"license_valid\";b:1;}}s:9:\"no_update\";a:0:{}s:10:\"expiration\";i:172800;s:6:\"status\";i:1;s:7:\"checked\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"6.3.3\";}}', 'off'),
(374, 'options_blocos_home_0_titulo_quem_somos', 'QUEM SOMOS', 'off'),
(375, '_options_blocos_home_0_titulo_quem_somos', 'field_675357f8d3c9b', 'off'),
(376, 'options_blocos_home_0_subtitulo_quem_somos', 'O ICC Biolabs é o hub de <span>inovação do Grupo ICC</span>', 'off'),
(377, '_options_blocos_home_0_subtitulo_quem_somos', 'field_67535849d3c9c', 'off'),
(378, 'options_blocos_home_0_descricao_quem_somos', 'Trabalhamos com aceleração e incubação de healthtechs e biotechs, com diversas startups do mundo todo, implementando a cultura da inovação no Grupo ICC, um dos maiores complexos de saúde do Ceará. ', 'off'),
(379, '_options_blocos_home_0_descricao_quem_somos', 'field_675358a2d3c9d', 'off'),
(380, 'options_blocos_home_0_imagem_quem_somos', '32', 'off'),
(381, '_options_blocos_home_0_imagem_quem_somos', 'field_675358cb4999a', 'off'),
(382, 'options_blocos_home', 'a:3:{i:0;s:17:\"sessao_quem_somos\";i:1;s:18:\"sessao_que_fazemos\";i:2;s:17:\"sessao_nosso_time\";}', 'off'),
(383, '_options_blocos_home', 'field_6753574abade5', 'off'),
(390, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1733942661;s:8:\"response\";a:2:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"5.3.5\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.5.3.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:60:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=2818463\";s:2:\"1x\";s:60:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=2818463\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/akismet/assets/banner-1544x500.png?rev=2900731\";s:2:\"1x\";s:62:\"https://ps.w.org/akismet/assets/banner-772x250.png?rev=2900731\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.8\";s:6:\"tested\";s:5:\"6.7.1\";s:12:\"requires_php\";s:6:\"5.6.20\";s:16:\"requires_plugins\";a:0:{}}s:34:\"advanced-custom-fields-pro/acf.php\";O:8:\"stdClass\":12:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:6:\"6.3.11\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:5:\"6.7.1\";s:7:\"package\";s:377:\"https://connect.advancedcustomfields.com/v2/plugins/download?p=pro&s=plugin&version=6.3.11&token=eyJwIjoicHJvIiwiayI6ImIzSmtaWEpmYVdROU1UQTBNVEE0ZkhSNWNHVTlaR1YyWld4dmNHVnlmR1JoZEdVOU1qQXhOeTB3TkMweE1pQXhPRG94TmpvME5nPT0iLCJ3cF91cmwiOiJodHRwOlwvXC9sb2NhbGhvc3RcL3dwYXRyYXRpcyIsIndwX3ZlcnNpb24iOiI2LjciLCJ3cF9tdWx0aXNpdGUiOjAsInBocF92ZXJzaW9uIjoiOC4yLjEyIiwiYmxvY2tfY291bnQiOjB9\";s:5:\"icons\";a:1:{s:7:\"default\";s:64:\"https://connect.advancedcustomfields.com/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:66:\"https://connect.advancedcustomfields.com/assets/banner-772x250.jpg\";s:4:\"high\";s:67:\"https://connect.advancedcustomfields.com/assets/banner-1544x500.jpg\";}s:8:\"requires\";s:3:\"6.0\";s:12:\"requires_php\";s:3:\"7.4\";s:12:\"release_date\";s:8:\"20241112\";s:13:\"license_valid\";b:1;}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:1:{s:9:\"hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/hello-dolly/assets/banner-1544x500.jpg?rev=2645582\";s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}}s:7:\"checked\";a:3:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"6.3.3\";s:19:\"akismet/akismet.php\";s:5:\"5.3.3\";s:9:\"hello.php\";s:5:\"1.7.2\";}}', 'off'),
(391, 'options_blocos_home_1_imagem_que_fazemos', '59', 'off'),
(392, '_options_blocos_home_1_imagem_que_fazemos', 'field_6759d5a8f385c', 'off'),
(393, 'options_blocos_home_1_titulo_que_fazemos', 'O QUE FAZEMOS', 'off'),
(394, '_options_blocos_home_1_titulo_que_fazemos', 'field_6759d649162b3', 'off'),
(395, 'options_blocos_home_1_subtitulo_que_fazemos', 'Lorem ipsum dolor sit amet consectetur. Ut amet.', 'off'),
(396, '_options_blocos_home_1_subtitulo_que_fazemos', 'field_6759d658162b4', 'off'),
(397, 'options_blocos_home_1_lista_que_fazemos_0_titulo_lista', 'Programa de aceleração e incubação de startups', 'off'),
(398, '_options_blocos_home_1_lista_que_fazemos_0_titulo_lista', 'field_6759d69f162b6', 'off'),
(399, 'options_blocos_home_1_lista_que_fazemos_0_descricao_lista', 'Apoio ao desenvolvimento de negócios inovadores em saúde, através do acompanhamento de todas as fases da criação de uma startup e da assistência às necessidades do empreendedor.', 'off'),
(400, '_options_blocos_home_1_lista_que_fazemos_0_descricao_lista', 'field_6759d6a9162b7', 'off'),
(401, 'options_blocos_home_1_lista_que_fazemos_1_titulo_lista', 'Inovação aberta', 'off'),
(402, '_options_blocos_home_1_lista_que_fazemos_1_titulo_lista', 'field_6759d69f162b6', 'off'),
(403, 'options_blocos_home_1_lista_que_fazemos_1_descricao_lista', 'Aproximar soluções de mercado para resolver desafios dentro do Grupo ICC.', 'off'),
(404, '_options_blocos_home_1_lista_que_fazemos_1_descricao_lista', 'field_6759d6a9162b7', 'off'),
(405, 'options_blocos_home_1_lista_que_fazemos_2_titulo_lista', 'Cultura da inovação', 'off'),
(406, '_options_blocos_home_1_lista_que_fazemos_2_titulo_lista', 'field_6759d69f162b6', 'off'),
(407, 'options_blocos_home_1_lista_que_fazemos_2_descricao_lista', 'Disseminação da cultura de inovação dentro de todos os negócios do Grupo ICC.', 'off'),
(408, '_options_blocos_home_1_lista_que_fazemos_2_descricao_lista', 'field_6759d6a9162b7', 'off'),
(409, 'options_blocos_home_1_lista_que_fazemos', '3', 'off'),
(410, '_options_blocos_home_1_lista_que_fazemos', 'field_6759d665162b5', 'off'),
(411, 'options_blocos_home_1_titulo_numeros', '<span>Números</span> que demonstram o <br />nosso <span>impacto no mundo</span>', 'off'),
(412, '_options_blocos_home_1_titulo_numeros', 'field_6759d7ee4d66b', 'off'),
(413, 'options_blocos_home_1_lista_numeros_0_titulo_lista_numeros', '<span>+46</span>', 'off'),
(414, '_options_blocos_home_1_lista_numeros_0_titulo_lista_numeros', 'field_6759d8202ca7a', 'off'),
(415, 'options_blocos_home_1_lista_numeros_0_descricao_lista_numeros', 'Meses de <br>operações', 'off'),
(416, '_options_blocos_home_1_lista_numeros_0_descricao_lista_numeros', 'field_6759d8362ca7b', 'off'),
(417, 'options_blocos_home_1_lista_numeros_1_titulo_lista_numeros', '<span>+31</span>', 'off'),
(418, '_options_blocos_home_1_lista_numeros_1_titulo_lista_numeros', 'field_6759d8202ca7a', 'off'),
(419, 'options_blocos_home_1_lista_numeros_1_descricao_lista_numeros', 'Startups <br>Investidas', 'off'),
(420, '_options_blocos_home_1_lista_numeros_1_descricao_lista_numeros', 'field_6759d8362ca7b', 'off'),
(421, 'options_blocos_home_1_lista_numeros_2_titulo_lista_numeros', '<span>+10.1</span>', 'off'),
(422, '_options_blocos_home_1_lista_numeros_2_titulo_lista_numeros', 'field_6759d8202ca7a', 'off'),
(423, 'options_blocos_home_1_lista_numeros_2_descricao_lista_numeros', 'Milhões investidos <br>em bionegócios', 'off'),
(424, '_options_blocos_home_1_lista_numeros_2_descricao_lista_numeros', 'field_6759d8362ca7b', 'off'),
(425, 'options_blocos_home_1_lista_numeros_3_titulo_lista_numeros', '<span>+4k</span>', 'off'),
(426, '_options_blocos_home_1_lista_numeros_3_titulo_lista_numeros', 'field_6759d8202ca7a', 'off'),
(427, 'options_blocos_home_1_lista_numeros_3_descricao_lista_numeros', 'Horas de mentorias, conteúdos e interações', 'off'),
(428, '_options_blocos_home_1_lista_numeros_3_descricao_lista_numeros', 'field_6759d8362ca7b', 'off'),
(429, 'options_blocos_home_1_lista_numeros', '4', 'off'),
(430, '_options_blocos_home_1_lista_numeros', 'field_6759d8092ca79', 'off'),
(437, 'options_blocos_home_1_imagem_numeros', '29', 'off'),
(438, '_options_blocos_home_1_imagem_numeros', 'field_6759e117842fc', 'off'),
(440, '_site_transient_timeout_theme_roots', '1733946299', 'off'),
(441, '_site_transient_theme_roots', 'a:5:{s:17:\"TestePratico-Main\";s:7:\"/themes\";s:16:\"twentytwentyfive\";s:7:\"/themes\";s:16:\"twentytwentyfour\";s:7:\"/themes\";s:17:\"twentytwentythree\";s:7:\"/themes\";s:15:\"twentytwentytwo\";s:7:\"/themes\";}', 'off'),
(442, 'options_blocos_home_2_titulo_nosso_time', '<span>NOSSO TIME</span>', 'off'),
(443, '_options_blocos_home_2_titulo_nosso_time', 'field_6759e6bf98e8d', 'off'),
(444, 'options_blocos_home_2_subtitulo_nosso_time', 'Apaixonados por inovação e crescimento', 'off'),
(445, '_options_blocos_home_2_subtitulo_nosso_time', 'field_6759e6e298e8e', 'off'),
(446, 'options_blocos_home_2_seta_esquerda', '26', 'off'),
(447, '_options_blocos_home_2_seta_esquerda', 'field_6759e6f398e8f', 'off'),
(448, 'options_blocos_home_2_seta_direita', '63', 'off'),
(449, '_options_blocos_home_2_seta_direita', 'field_6759e70098e90', 'off'),
(450, 'options_blocos_home_2_pessoas_nosso_time_0_imagem_pessoa', '22', 'off'),
(451, '_options_blocos_home_2_pessoas_nosso_time_0_imagem_pessoa', 'field_6759e78298e92', 'off'),
(452, 'options_blocos_home_2_pessoas_nosso_time_0_nome_pessoa', 'Gabriella Bruno', 'off'),
(453, '_options_blocos_home_2_pessoas_nosso_time_0_nome_pessoa', 'field_6759e89498e93', 'off'),
(454, 'options_blocos_home_2_pessoas_nosso_time_0_descricao_pessoa', 'Manager ICC<br>Biolabs', 'off'),
(455, '_options_blocos_home_2_pessoas_nosso_time_0_descricao_pessoa', 'field_6759e89d98e94', 'off'),
(456, 'options_blocos_home_2_pessoas_nosso_time_0_titulo_overlay', 'Lorem', 'off'),
(457, '_options_blocos_home_2_pessoas_nosso_time_0_titulo_overlay', 'field_6759e8b198e95', 'off'),
(458, 'options_blocos_home_2_pessoas_nosso_time_0_descricao_overlay', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam voluptate molestiae libero rem                     temporibus.', 'off'),
(459, '_options_blocos_home_2_pessoas_nosso_time_0_descricao_overlay', 'field_6759e8b898e96', 'off'),
(460, 'options_blocos_home_2_pessoas_nosso_time_1_imagem_pessoa', '8', 'off'),
(461, '_options_blocos_home_2_pessoas_nosso_time_1_imagem_pessoa', 'field_6759e78298e92', 'off'),
(462, 'options_blocos_home_2_pessoas_nosso_time_1_nome_pessoa', 'Albery Dias', 'off'),
(463, '_options_blocos_home_2_pessoas_nosso_time_1_nome_pessoa', 'field_6759e89498e93', 'off'),
(464, 'options_blocos_home_2_pessoas_nosso_time_1_descricao_pessoa', 'Advisor', 'off'),
(465, '_options_blocos_home_2_pessoas_nosso_time_1_descricao_pessoa', 'field_6759e89d98e94', 'off'),
(466, 'options_blocos_home_2_pessoas_nosso_time_1_titulo_overlay', 'Lorem', 'off'),
(467, '_options_blocos_home_2_pessoas_nosso_time_1_titulo_overlay', 'field_6759e8b198e95', 'off'),
(468, 'options_blocos_home_2_pessoas_nosso_time_1_descricao_overlay', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam voluptate molestiae libero rem                     temporibus.', 'off'),
(469, '_options_blocos_home_2_pessoas_nosso_time_1_descricao_overlay', 'field_6759e8b898e96', 'off'),
(470, 'options_blocos_home_2_pessoas_nosso_time_2_imagem_pessoa', '27', 'off'),
(471, '_options_blocos_home_2_pessoas_nosso_time_2_imagem_pessoa', 'field_6759e78298e92', 'off'),
(472, 'options_blocos_home_2_pessoas_nosso_time_2_nome_pessoa', 'Letícia Tomé', 'off'),
(473, '_options_blocos_home_2_pessoas_nosso_time_2_nome_pessoa', 'field_6759e89498e93', 'off'),
(474, 'options_blocos_home_2_pessoas_nosso_time_2_descricao_pessoa', 'Apoio à gestão', 'off'),
(475, '_options_blocos_home_2_pessoas_nosso_time_2_descricao_pessoa', 'field_6759e89d98e94', 'off'),
(476, 'options_blocos_home_2_pessoas_nosso_time_2_titulo_overlay', 'Lorem', 'off'),
(477, '_options_blocos_home_2_pessoas_nosso_time_2_titulo_overlay', 'field_6759e8b198e95', 'off'),
(478, 'options_blocos_home_2_pessoas_nosso_time_2_descricao_overlay', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam voluptate molestiae libero rem                     temporibus.', 'off'),
(479, '_options_blocos_home_2_pessoas_nosso_time_2_descricao_overlay', 'field_6759e8b898e96', 'off'),
(480, 'options_blocos_home_2_pessoas_nosso_time', '3', 'off'),
(481, '_options_blocos_home_2_pessoas_nosso_time', 'field_6759e77198e91', 'off'),
(482, '_transient_timeout_acf_pro_validating_license', '1733947007', 'off'),
(483, '_transient_acf_pro_validating_license', '1', 'off'),
(484, '_site_transient_timeout_wp_theme_files_patterns-f87c91cb96cf0b3029a8043566c6bf32', '1733948029', 'off'),
(485, '_site_transient_wp_theme_files_patterns-f87c91cb96cf0b3029a8043566c6bf32', 'a:2:{s:7:\"version\";s:3:\"1.0\";s:8:\"patterns\";a:0:{}}', 'off');

-- --------------------------------------------------------

--
-- Estrutura para tabela `wpatr_postmeta`
--

CREATE TABLE `wpatr_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Despejando dados para a tabela `wpatr_postmeta`
--

INSERT INTO `wpatr_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 6, '_menu_item_type', 'custom'),
(4, 6, '_menu_item_menu_item_parent', '0'),
(5, 6, '_menu_item_object_id', '6'),
(6, 6, '_menu_item_object', 'custom'),
(7, 6, '_menu_item_target', ''),
(8, 6, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(9, 6, '_menu_item_xfn', ''),
(10, 6, '_menu_item_url', 'http://localhost/wpatratis/'),
(11, 6, '_menu_item_orphaned', '1732295958'),
(12, 7, '_menu_item_type', 'post_type'),
(13, 7, '_menu_item_menu_item_parent', '0'),
(14, 7, '_menu_item_object_id', '2'),
(15, 7, '_menu_item_object', 'page'),
(16, 7, '_menu_item_target', ''),
(17, 7, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(18, 7, '_menu_item_xfn', ''),
(19, 7, '_menu_item_url', ''),
(20, 7, '_menu_item_orphaned', '1732295958'),
(21, 8, '_wp_attached_file', '2024/11/albery.png'),
(22, 8, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:280;s:6:\"height\";i:359;s:4:\"file\";s:18:\"2024/11/albery.png\";s:8:\"filesize\";i:109531;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(23, 9, '_wp_attached_file', '2024/11/amarelocard.png'),
(24, 9, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:280;s:6:\"height\";i:168;s:4:\"file\";s:23:\"2024/11/amarelocard.png\";s:8:\"filesize\";i:8183;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(25, 10, '_wp_attached_file', '2024/11/backgroundtopo.png'),
(26, 10, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:600;s:4:\"file\";s:26:\"2024/11/backgroundtopo.png\";s:8:\"filesize\";i:1680628;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(27, 11, '_wp_attached_file', '2024/11/bannerbiolabs.jpeg'),
(28, 11, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:600;s:4:\"file\";s:26:\"2024/11/bannerbiolabs.jpeg\";s:8:\"filesize\";i:155931;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(29, 12, '_wp_attached_file', '2024/11/cardalbery.png'),
(30, 12, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:280;s:6:\"height\";i:359;s:4:\"file\";s:22:\"2024/11/cardalbery.png\";s:8:\"filesize\";i:112533;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(31, 13, '_wp_attached_file', '2024/11/cardfernando.png'),
(32, 13, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:280;s:6:\"height\";i:359;s:4:\"file\";s:24:\"2024/11/cardfernando.png\";s:8:\"filesize\";i:17933;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(33, 14, '_wp_attached_file', '2024/11/cardgabriela.png'),
(34, 14, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:280;s:6:\"height\";i:359;s:4:\"file\";s:24:\"2024/11/cardgabriela.png\";s:8:\"filesize\";i:141052;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(35, 15, '_wp_attached_file', '2024/11/cardleticia.png'),
(36, 15, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:280;s:6:\"height\";i:359;s:4:\"file\";s:23:\"2024/11/cardleticia.png\";s:8:\"filesize\";i:125599;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(37, 16, '_wp_attached_file', '2024/11/claudio.png'),
(38, 16, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:280;s:6:\"height\";i:355;s:4:\"file\";s:19:\"2024/11/claudio.png\";s:8:\"filesize\";i:62040;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(39, 17, '_wp_attached_file', '2024/11/cristiano.png'),
(40, 17, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:280;s:6:\"height\";i:436;s:4:\"file\";s:21:\"2024/11/cristiano.png\";s:8:\"filesize\";i:70974;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(41, 18, '_wp_attached_file', '2024/11/diana.png'),
(42, 18, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:280;s:6:\"height\";i:404;s:4:\"file\";s:17:\"2024/11/diana.png\";s:8:\"filesize\";i:66832;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(43, 19, '_wp_attached_file', '2024/11/dna.png'),
(44, 19, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:172;s:6:\"height\";i:232;s:4:\"file\";s:15:\"2024/11/dna.png\";s:8:\"filesize\";i:45763;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(45, 20, '_wp_attached_file', '2024/11/flimed.png'),
(46, 20, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:538;s:6:\"height\";i:341;s:4:\"file\";s:18:\"2024/11/flimed.png\";s:8:\"filesize\";i:252338;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(47, 21, '_wp_attached_file', '2024/11/flimeddefinitivo.png'),
(48, 21, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:599;s:6:\"height\";i:357;s:4:\"file\";s:28:\"2024/11/flimeddefinitivo.png\";s:8:\"filesize\";i:247998;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(49, 22, '_wp_attached_file', '2024/11/gabriela.png'),
(50, 22, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:280;s:6:\"height\";i:359;s:4:\"file\";s:20:\"2024/11/gabriela.png\";s:8:\"filesize\";i:136306;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(53, 24, '_wp_attached_file', '2024/11/joao-andre.png'),
(54, 24, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:280;s:6:\"height\";i:339;s:4:\"file\";s:22:\"2024/11/joao-andre.png\";s:8:\"filesize\";i:45511;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(57, 26, '_wp_attached_file', '2024/11/left.png'),
(58, 26, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:34;s:6:\"height\";i:34;s:4:\"file\";s:16:\"2024/11/left.png\";s:8:\"filesize\";i:394;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(59, 27, '_wp_attached_file', '2024/11/leticia.png'),
(60, 27, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:280;s:6:\"height\";i:359;s:4:\"file\";s:19:\"2024/11/leticia.png\";s:8:\"filesize\";i:121679;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(61, 28, '_wp_attached_file', '2024/11/linha.png'),
(62, 28, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:664;s:6:\"height\";i:14;s:4:\"file\";s:17:\"2024/11/linha.png\";s:8:\"filesize\";i:3853;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(63, 29, '_wp_attached_file', '2024/11/linhanumeros.png'),
(64, 29, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1215;s:6:\"height\";i:40;s:4:\"file\";s:24:\"2024/11/linhanumeros.png\";s:8:\"filesize\";i:680;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(65, 30, '_wp_attached_file', '2024/11/logo-branco.png'),
(66, 30, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:191;s:6:\"height\";i:81;s:4:\"file\";s:23:\"2024/11/logo-branco.png\";s:8:\"filesize\";i:3070;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(67, 31, '_wp_attached_file', '2024/11/logoflimed.png'),
(68, 31, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:164;s:6:\"height\";i:164;s:4:\"file\";s:22:\"2024/11/logoflimed.png\";s:8:\"filesize\";i:8887;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(70, 32, '_wp_attached_file', '2024/11/imagem.png'),
(71, 32, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:592;s:6:\"height\";i:362;s:4:\"file\";s:18:\"2024/11/imagem.png\";s:8:\"filesize\";i:374366;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(72, 3, '_wp_trash_meta_status', 'draft'),
(73, 3, '_wp_trash_meta_time', '1732301112'),
(74, 3, '_wp_desired_post_slug', 'politica-de-privacidade'),
(75, 2, '_edit_lock', '1732301141:1'),
(76, 2, '_wp_trash_meta_status', 'publish'),
(77, 2, '_wp_trash_meta_time', '1732301153'),
(78, 2, '_wp_desired_post_slug', 'pagina-exemplo'),
(79, 35, '_edit_lock', '1732301187:1'),
(80, 36, '_menu_item_type', 'post_type'),
(81, 36, '_menu_item_menu_item_parent', '0'),
(82, 36, '_menu_item_object_id', '35'),
(83, 36, '_menu_item_object', 'page'),
(84, 36, '_menu_item_target', ''),
(85, 36, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(86, 36, '_menu_item_xfn', ''),
(87, 36, '_menu_item_url', ''),
(88, 38, '_edit_lock', '1732301226:1'),
(89, 39, '_menu_item_type', 'post_type'),
(90, 39, '_menu_item_menu_item_parent', '0'),
(91, 39, '_menu_item_object_id', '38'),
(92, 39, '_menu_item_object', 'page'),
(93, 39, '_menu_item_target', ''),
(94, 39, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(95, 39, '_menu_item_xfn', ''),
(96, 39, '_menu_item_url', ''),
(97, 41, '_edit_lock', '1732301242:1'),
(98, 42, '_menu_item_type', 'post_type'),
(99, 42, '_menu_item_menu_item_parent', '0'),
(100, 42, '_menu_item_object_id', '41'),
(101, 42, '_menu_item_object', 'page'),
(102, 42, '_menu_item_target', ''),
(103, 42, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(104, 42, '_menu_item_xfn', ''),
(105, 42, '_menu_item_url', ''),
(106, 44, '_edit_lock', '1732301260:1'),
(107, 45, '_menu_item_type', 'post_type'),
(108, 45, '_menu_item_menu_item_parent', '0'),
(109, 45, '_menu_item_object_id', '44'),
(110, 45, '_menu_item_object', 'page'),
(111, 45, '_menu_item_target', ''),
(112, 45, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(113, 45, '_menu_item_xfn', ''),
(114, 45, '_menu_item_url', ''),
(115, 47, '_edit_lock', '1732301274:1'),
(116, 48, '_menu_item_type', 'post_type'),
(117, 48, '_menu_item_menu_item_parent', '0'),
(118, 48, '_menu_item_object_id', '47'),
(119, 48, '_menu_item_object', 'page'),
(120, 48, '_menu_item_target', ''),
(121, 48, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(122, 48, '_menu_item_xfn', ''),
(123, 48, '_menu_item_url', ''),
(124, 50, '_edit_lock', '1732301292:1'),
(125, 51, '_menu_item_type', 'post_type'),
(126, 51, '_menu_item_menu_item_parent', '0'),
(127, 51, '_menu_item_object_id', '50'),
(128, 51, '_menu_item_object', 'page'),
(129, 51, '_menu_item_target', ''),
(130, 51, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(131, 51, '_menu_item_xfn', ''),
(132, 51, '_menu_item_url', ''),
(133, 53, '_edit_lock', '1732301306:1'),
(134, 54, '_menu_item_type', 'post_type'),
(135, 54, '_menu_item_menu_item_parent', '0'),
(136, 54, '_menu_item_object_id', '53'),
(137, 54, '_menu_item_object', 'page'),
(138, 54, '_menu_item_target', ''),
(139, 54, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(140, 54, '_menu_item_xfn', ''),
(141, 54, '_menu_item_url', ''),
(142, 56, '_edit_lock', '1732301958:1'),
(143, 57, '_menu_item_type', 'post_type'),
(144, 57, '_menu_item_menu_item_parent', '0'),
(145, 57, '_menu_item_object_id', '56'),
(146, 57, '_menu_item_object', 'page'),
(147, 57, '_menu_item_target', ''),
(148, 57, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(149, 57, '_menu_item_xfn', ''),
(150, 57, '_menu_item_url', ''),
(151, 32, '_edit_lock', '1732305818:1'),
(152, 59, '_wp_attached_file', '2024/11/imagemtime.png'),
(153, 59, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:592;s:6:\"height\";i:456;s:4:\"file\";s:22:\"2024/11/imagemtime.png\";s:8:\"filesize\";i:456223;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(160, 63, '_wp_attached_file', '2024/11/right.png'),
(161, 63, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:34;s:6:\"height\";i:34;s:4:\"file\";s:17:\"2024/11/right.png\";s:8:\"filesize\";i:408;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(162, 64, '_wp_attached_file', '2024/11/plantaocard.png'),
(163, 64, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:280;s:6:\"height\";i:168;s:4:\"file\";s:23:\"2024/11/plantaocard.png\";s:8:\"filesize\";i:11624;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(164, 36, '_wp_old_date', '2024-11-22'),
(165, 39, '_wp_old_date', '2024-11-22'),
(166, 42, '_wp_old_date', '2024-11-22'),
(167, 45, '_wp_old_date', '2024-11-22'),
(168, 48, '_wp_old_date', '2024-11-22'),
(169, 51, '_wp_old_date', '2024-11-22'),
(170, 54, '_wp_old_date', '2024-11-22'),
(171, 57, '_wp_old_date', '2024-11-22'),
(174, 66, '_edit_last', '1'),
(175, 66, '_edit_lock', '1733511542:1'),
(176, 67, '_edit_lock', '1733507525:1'),
(177, 68, '_edit_last', '1'),
(178, 68, '_edit_lock', '1733511595:1'),
(179, 69, '_edit_lock', '1733939878:1'),
(180, 69, '_thumbnail_id', '11'),
(181, 71, '_edit_lock', '1733513382:1'),
(182, 72, '_wp_attached_file', '2024/12/banner-desktop.jpg'),
(183, 72, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1913;s:6:\"height\";i:600;s:4:\"file\";s:26:\"2024/12/banner-desktop.jpg\";s:8:\"filesize\";i:788635;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(185, 74, '_edit_lock', '1733514930:1'),
(186, 74, '_thumbnail_id', '72'),
(187, 75, '_edit_last', '1'),
(188, 75, '_edit_lock', '1733514934:1'),
(189, 69, '_acf_changed', '1'),
(190, 69, '_edit_last', '1'),
(191, 69, 'link_banner', '#'),
(192, 69, '_link_banner', 'field_675351548fb62'),
(193, 69, 'texto_botao', 'Saiba mais'),
(194, 69, '_texto_botao', 'field_675352148fb63'),
(195, 69, 'titulo', 'Conheça o maior hub<br>de <span>inovação em saúde <br>do norte e nordeste!</span>'),
(196, 69, '_titulo', 'field_675350fa8fb60'),
(197, 69, 'descricao_banner', 'Lorem ipsum dolor sit amet consectetur. Ultrices <br />pellentesque hendrerit purus molestie. Tristique <br />turpis donec amet id eget laoreet.'),
(198, 69, '_descricao_banner', 'field_6753512f8fb61'),
(200, 74, '_acf_changed', '1'),
(201, 74, '_edit_last', '1'),
(202, 74, 'link_banner', '#'),
(203, 74, '_link_banner', 'field_675351548fb62'),
(204, 74, 'texto_botao', 'Saiba menos'),
(205, 74, '_texto_botao', 'field_675352148fb63'),
(206, 74, 'titulo', 'Conheça o maior hub<br>de <span>inovação em saúde <br>do norte e nordeste!</span>'),
(207, 74, '_titulo', 'field_675350fa8fb60'),
(208, 74, 'descricao_banner', 'Lorem ipsum dolor sit amet consectetur. Ultrices <br />pellentesque hendrerit purus molestie. Tristique <br />turpis donec amet id eget laoreet.'),
(209, 74, '_descricao_banner', 'field_6753512f8fb61'),
(210, 82, '_edit_last', '1'),
(211, 82, '_edit_lock', '1733946932:1');

-- --------------------------------------------------------

--
-- Estrutura para tabela `wpatr_posts`
--

CREATE TABLE `wpatr_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(255) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Despejando dados para a tabela `wpatr_posts`
--

INSERT INTO `wpatr_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2024-11-22 14:14:10', '2024-11-22 17:14:10', '<!-- wp:paragraph -->\n<p>Boas-vindas ao WordPress. Esse é o seu primeiro post. Edite-o ou exclua-o, e então comece a escrever!</p>\n<!-- /wp:paragraph -->', 'Olá, mundo!', '', 'publish', 'open', 'open', '', 'ola-mundo', '', '', '2024-11-22 14:14:10', '2024-11-22 17:14:10', '', 0, 'http://localhost/wpatratis/?p=1', 0, 'post', '', 1),
(2, 1, '2024-11-22 14:14:10', '2024-11-22 17:14:10', '<!-- wp:paragraph -->\n<p>Esta é uma página de exemplo. É diferente de um post no blog porque ela permanecerá em um lugar e aparecerá na navegação do seu site na maioria dos temas. Muitas pessoas começam com uma página que as apresenta a possíveis visitantes do site. Ela pode dizer algo assim:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Olá! Eu sou um mensageiro de bicicleta durante o dia, ator aspirante à noite, e este é o meu site. Eu moro em São Paulo, tenho um grande cachorro chamado Rex e gosto de tomar caipirinha (e banhos de chuva).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...ou alguma coisa assim:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>A Companhia de Miniaturas XYZ foi fundada em 1971, e desde então tem fornecido miniaturas de qualidade ao público. Localizada na cidade de Itu, a XYZ emprega mais de 2.000 pessoas e faz coisas grandiosas para a comunidade da cidade.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Como um novo usuário do WordPress, você deveria ir ao <a href=\"http://localhost/wpatratis/wp-admin/\">painel</a> para excluir essa página e criar novas páginas para o seu conteúdo. Divirta-se!</p>\n<!-- /wp:paragraph -->', 'Página de exemplo', '', 'trash', 'closed', 'open', '', 'pagina-exemplo__trashed', '', '', '2024-11-22 15:45:53', '2024-11-22 18:45:53', '', 0, 'http://localhost/wpatratis/?page_id=2', 0, 'page', '', 0),
(3, 1, '2024-11-22 14:14:10', '2024-11-22 17:14:10', '<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Quem somos</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>O endereço do nosso site é: http://localhost/wpatratis.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Comentários</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Quando os visitantes deixam comentários no site, coletamos os dados mostrados no formulário de comentários, além do endereço de IP e de dados do navegador do visitante, para auxiliar na detecção de spam.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Uma sequência anonimizada de caracteres criada a partir do seu e-mail (também chamada de hash) poderá ser enviada para o Gravatar para verificar se você usa o serviço. A política de privacidade do Gravatar está disponível aqui: https://automattic.com/privacy/. Depois da aprovação do seu comentário, a foto do seu perfil fica visível publicamente junto de seu comentário.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Mídia</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Se você envia imagens para o site, evite enviar as que contenham dados de localização incorporados (EXIF GPS). Visitantes podem baixar estas imagens do site e extrair delas seus dados de localização.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Cookies</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Ao deixar um comentário no site, você poderá optar por salvar seu nome, e-mail e site nos cookies. Isso visa seu conforto, assim você não precisará preencher seus  dados novamente quando fizer outro comentário. Estes cookies duram um ano.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Se você tem uma conta e acessa este site, um cookie temporário será criado para determinar se seu navegador aceita cookies. Ele não contém nenhum dado pessoal e será descartado quando você fechar seu navegador.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Quando você acessa sua conta no site, também criamos vários cookies para salvar os dados da sua conta e suas escolhas de exibição de tela. Cookies de login são mantidos por dois dias e cookies de opções de tela por um ano. Se você selecionar &quot;Lembrar-me&quot;, seu acesso será mantido por duas semanas. Se você se desconectar da sua conta, os cookies de login serão removidos.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Se você editar ou publicar um artigo, um cookie adicional será salvo no seu navegador. Este cookie não inclui nenhum dado pessoal e simplesmente indica o ID do post referente ao artigo que você acabou de editar. Ele expira depois de 1 dia.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Mídia incorporada de outros sites</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Artigos neste site podem incluir conteúdo incorporado como, por exemplo, vídeos, imagens, artigos, etc. Conteúdos incorporados de outros sites se comportam exatamente da mesma forma como se o visitante estivesse visitando o outro site.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Estes sites podem coletar dados sobre você, usar cookies, incorporar rastreamento adicional de terceiros e monitorar sua interação com este conteúdo incorporado, incluindo sua interação com o conteúdo incorporado se você tem uma conta e está conectado com o site.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Com quem compartilhamos seus dados</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Se você solicitar uma redefinição de senha, seu endereço de IP será incluído no e-mail de redefinição de senha.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Por quanto tempo mantemos os seus dados</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Se você deixar um comentário, o comentário e os seus metadados são conservados indefinidamente. Fazemos isso para que seja possível reconhecer e aprovar automaticamente qualquer comentário posterior ao invés de retê-lo para moderação.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Para usuários que se registram no nosso site (se houver), também guardamos as informações pessoais que fornecem no seu perfil de usuário. Todos os usuários podem ver, editar ou excluir suas informações pessoais a qualquer momento (só não é possível alterar o seu username). Os administradores de sites também podem ver e editar estas informações.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Quais os seus direitos sobre seus dados</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Se você tiver uma conta neste site ou se tiver deixado comentários, pode solicitar um arquivo exportado dos dados pessoais que mantemos sobre você, inclusive quaisquer dados que nos tenha fornecido. Também pode solicitar que removamos qualquer dado pessoal que mantemos sobre você. Isto não inclui nenhuns dados que somos obrigados a manter para propósitos administrativos, legais ou de segurança.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Para onde seus dados são enviados</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Comentários de visitantes podem ser marcados por um serviço automático de detecção de spam.</p>\n<!-- /wp:paragraph -->\n', 'Política de privacidade', '', 'trash', 'closed', 'open', '', 'politica-de-privacidade__trashed', '', '', '2024-11-22 15:45:12', '2024-11-22 18:45:12', '', 0, 'http://localhost/wpatratis/?page_id=3', 0, 'page', '', 0),
(4, 0, '2024-11-22 14:14:13', '2024-11-22 17:14:13', '<!-- wp:page-list /-->', 'Navegação', '', 'publish', 'closed', 'closed', '', 'navigation', '', '', '2024-11-22 14:14:13', '2024-11-22 17:14:13', '', 0, 'http://localhost/wpatratis/2024/11/22/navigation/', 0, 'wp_navigation', '', 0),
(6, 1, '2024-11-22 14:19:18', '0000-00-00 00:00:00', '', 'Início', '', 'draft', 'closed', 'closed', '', '', '', '', '2024-11-22 14:19:18', '0000-00-00 00:00:00', '', 0, 'http://localhost/wpatratis/?p=6', 1, 'nav_menu_item', '', 0),
(7, 1, '2024-11-22 14:19:18', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2024-11-22 14:19:18', '0000-00-00 00:00:00', '', 0, 'http://localhost/wpatratis/?p=7', 1, 'nav_menu_item', '', 0),
(8, 1, '2024-11-22 14:30:37', '2024-11-22 17:30:37', '', 'albery', '', 'inherit', 'open', 'closed', '', 'albery', '', '', '2024-11-22 14:30:37', '2024-11-22 17:30:37', '', 0, 'http://localhost/wpatratis/wp-content/uploads/2024/11/albery.png', 0, 'attachment', 'image/png', 0),
(9, 1, '2024-11-22 14:30:38', '2024-11-22 17:30:38', '', 'amarelocard', '', 'inherit', 'open', 'closed', '', 'amarelocard', '', '', '2024-11-22 14:30:38', '2024-11-22 17:30:38', '', 0, 'http://localhost/wpatratis/wp-content/uploads/2024/11/amarelocard.png', 0, 'attachment', 'image/png', 0),
(10, 1, '2024-11-22 14:30:39', '2024-11-22 17:30:39', '', 'backgroundtopo', '', 'inherit', 'open', 'closed', '', 'backgroundtopo', '', '', '2024-11-22 14:30:39', '2024-11-22 17:30:39', '', 0, 'http://localhost/wpatratis/wp-content/uploads/2024/11/backgroundtopo.png', 0, 'attachment', 'image/png', 0),
(11, 1, '2024-11-22 14:30:40', '2024-11-22 17:30:40', '', 'bannerbiolabs', '', 'inherit', 'open', 'closed', '', 'bannerbiolabs', '', '', '2024-11-22 14:30:40', '2024-11-22 17:30:40', '', 0, 'http://localhost/wpatratis/wp-content/uploads/2024/11/bannerbiolabs.jpeg', 0, 'attachment', 'image/jpeg', 0),
(12, 1, '2024-11-22 14:30:41', '2024-11-22 17:30:41', '', 'cardalbery', '', 'inherit', 'open', 'closed', '', 'cardalbery', '', '', '2024-11-22 14:30:41', '2024-11-22 17:30:41', '', 0, 'http://localhost/wpatratis/wp-content/uploads/2024/11/cardalbery.png', 0, 'attachment', 'image/png', 0),
(13, 1, '2024-11-22 14:30:42', '2024-11-22 17:30:42', '', 'cardfernando', '', 'inherit', 'open', 'closed', '', 'cardfernando', '', '', '2024-11-22 14:30:42', '2024-11-22 17:30:42', '', 0, 'http://localhost/wpatratis/wp-content/uploads/2024/11/cardfernando.png', 0, 'attachment', 'image/png', 0),
(14, 1, '2024-11-22 14:30:43', '2024-11-22 17:30:43', '', 'cardgabriela', '', 'inherit', 'open', 'closed', '', 'cardgabriela', '', '', '2024-11-22 14:30:43', '2024-11-22 17:30:43', '', 0, 'http://localhost/wpatratis/wp-content/uploads/2024/11/cardgabriela.png', 0, 'attachment', 'image/png', 0),
(15, 1, '2024-11-22 14:30:44', '2024-11-22 17:30:44', '', 'cardleticia', '', 'inherit', 'open', 'closed', '', 'cardleticia', '', '', '2024-11-22 14:30:44', '2024-11-22 17:30:44', '', 0, 'http://localhost/wpatratis/wp-content/uploads/2024/11/cardleticia.png', 0, 'attachment', 'image/png', 0),
(16, 1, '2024-11-22 14:30:46', '2024-11-22 17:30:46', '', 'claudio', '', 'inherit', 'open', 'closed', '', 'claudio', '', '', '2024-11-22 14:30:46', '2024-11-22 17:30:46', '', 0, 'http://localhost/wpatratis/wp-content/uploads/2024/11/claudio.png', 0, 'attachment', 'image/png', 0),
(17, 1, '2024-11-22 14:30:47', '2024-11-22 17:30:47', '', 'cristiano', '', 'inherit', 'open', 'closed', '', 'cristiano', '', '', '2024-11-22 14:30:47', '2024-11-22 17:30:47', '', 0, 'http://localhost/wpatratis/wp-content/uploads/2024/11/cristiano.png', 0, 'attachment', 'image/png', 0),
(18, 1, '2024-11-22 14:30:48', '2024-11-22 17:30:48', '', 'diana', '', 'inherit', 'open', 'closed', '', 'diana', '', '', '2024-11-22 14:30:48', '2024-11-22 17:30:48', '', 0, 'http://localhost/wpatratis/wp-content/uploads/2024/11/diana.png', 0, 'attachment', 'image/png', 0),
(19, 1, '2024-11-22 14:30:49', '2024-11-22 17:30:49', '', 'dna', '', 'inherit', 'open', 'closed', '', 'dna', '', '', '2024-11-22 14:30:49', '2024-11-22 17:30:49', '', 0, 'http://localhost/wpatratis/wp-content/uploads/2024/11/dna.png', 0, 'attachment', 'image/png', 0),
(20, 1, '2024-11-22 14:30:51', '2024-11-22 17:30:51', '', 'flimed', '', 'inherit', 'open', 'closed', '', 'flimed', '', '', '2024-11-22 14:30:51', '2024-11-22 17:30:51', '', 0, 'http://localhost/wpatratis/wp-content/uploads/2024/11/flimed.png', 0, 'attachment', 'image/png', 0),
(21, 1, '2024-11-22 14:30:52', '2024-11-22 17:30:52', '', 'flimeddefinitivo', '', 'inherit', 'open', 'closed', '', 'flimeddefinitivo', '', '', '2024-11-22 14:30:52', '2024-11-22 17:30:52', '', 0, 'http://localhost/wpatratis/wp-content/uploads/2024/11/flimeddefinitivo.png', 0, 'attachment', 'image/png', 0),
(22, 1, '2024-11-22 14:30:53', '2024-11-22 17:30:53', '', 'gabriela', '', 'inherit', 'open', 'closed', '', 'gabriela', '', '', '2024-11-22 14:30:53', '2024-11-22 17:30:53', '', 0, 'http://localhost/wpatratis/wp-content/uploads/2024/11/gabriela.png', 0, 'attachment', 'image/png', 0),
(24, 1, '2024-11-22 14:30:57', '2024-11-22 17:30:57', '', 'joao-andre', '', 'inherit', 'open', 'closed', '', 'joao-andre', '', '', '2024-11-22 14:30:57', '2024-11-22 17:30:57', '', 0, 'http://localhost/wpatratis/wp-content/uploads/2024/11/joao-andre.png', 0, 'attachment', 'image/png', 0),
(26, 1, '2024-11-22 14:30:59', '2024-11-22 17:30:59', '', 'left', '', 'inherit', 'open', 'closed', '', 'left', '', '', '2024-11-22 14:30:59', '2024-11-22 17:30:59', '', 0, 'http://localhost/wpatratis/wp-content/uploads/2024/11/left.png', 0, 'attachment', 'image/png', 0),
(27, 1, '2024-11-22 14:31:00', '2024-11-22 17:31:00', '', 'leticia', '', 'inherit', 'open', 'closed', '', 'leticia', '', '', '2024-11-22 14:31:00', '2024-11-22 17:31:00', '', 0, 'http://localhost/wpatratis/wp-content/uploads/2024/11/leticia.png', 0, 'attachment', 'image/png', 0),
(28, 1, '2024-11-22 14:31:01', '2024-11-22 17:31:01', '', 'linha', '', 'inherit', 'open', 'closed', '', 'linha', '', '', '2024-11-22 14:31:01', '2024-11-22 17:31:01', '', 0, 'http://localhost/wpatratis/wp-content/uploads/2024/11/linha.png', 0, 'attachment', 'image/png', 0),
(29, 1, '2024-11-22 14:31:03', '2024-11-22 17:31:03', '', 'linhanumeros', '', 'inherit', 'open', 'closed', '', 'linhanumeros', '', '', '2024-11-22 14:31:03', '2024-11-22 17:31:03', '', 0, 'http://localhost/wpatratis/wp-content/uploads/2024/11/linhanumeros.png', 0, 'attachment', 'image/png', 0),
(30, 1, '2024-11-22 14:31:06', '2024-11-22 17:31:06', '', 'logo-branco', '', 'inherit', 'open', 'closed', '', 'logo-branco', '', '', '2024-11-22 14:31:06', '2024-11-22 17:31:06', '', 0, 'http://localhost/wpatratis/wp-content/uploads/2024/11/logo-branco.png', 0, 'attachment', 'image/png', 0),
(31, 1, '2024-11-22 14:31:08', '2024-11-22 17:31:08', '', 'logoflimed', '', 'inherit', 'open', 'closed', '', 'logoflimed', '', '', '2024-11-22 14:31:08', '2024-11-22 17:31:08', '', 0, 'http://localhost/wpatratis/wp-content/uploads/2024/11/logoflimed.png', 0, 'attachment', 'image/png', 0),
(32, 1, '2024-11-22 15:30:02', '2024-11-22 18:30:02', '', 'imagem', '', 'inherit', 'open', 'closed', '', 'imagem', '', '', '2024-11-22 15:30:02', '2024-11-22 18:30:02', '', 0, 'http://localhost/wpatratis/wp-content/uploads/2024/11/imagem.png', 0, 'attachment', 'image/png', 0),
(33, 1, '2024-11-22 15:45:12', '2024-11-22 18:45:12', '<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Quem somos</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>O endereço do nosso site é: http://localhost/wpatratis.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Comentários</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Quando os visitantes deixam comentários no site, coletamos os dados mostrados no formulário de comentários, além do endereço de IP e de dados do navegador do visitante, para auxiliar na detecção de spam.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Uma sequência anonimizada de caracteres criada a partir do seu e-mail (também chamada de hash) poderá ser enviada para o Gravatar para verificar se você usa o serviço. A política de privacidade do Gravatar está disponível aqui: https://automattic.com/privacy/. Depois da aprovação do seu comentário, a foto do seu perfil fica visível publicamente junto de seu comentário.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Mídia</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Se você envia imagens para o site, evite enviar as que contenham dados de localização incorporados (EXIF GPS). Visitantes podem baixar estas imagens do site e extrair delas seus dados de localização.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Cookies</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Ao deixar um comentário no site, você poderá optar por salvar seu nome, e-mail e site nos cookies. Isso visa seu conforto, assim você não precisará preencher seus  dados novamente quando fizer outro comentário. Estes cookies duram um ano.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Se você tem uma conta e acessa este site, um cookie temporário será criado para determinar se seu navegador aceita cookies. Ele não contém nenhum dado pessoal e será descartado quando você fechar seu navegador.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Quando você acessa sua conta no site, também criamos vários cookies para salvar os dados da sua conta e suas escolhas de exibição de tela. Cookies de login são mantidos por dois dias e cookies de opções de tela por um ano. Se você selecionar &quot;Lembrar-me&quot;, seu acesso será mantido por duas semanas. Se você se desconectar da sua conta, os cookies de login serão removidos.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Se você editar ou publicar um artigo, um cookie adicional será salvo no seu navegador. Este cookie não inclui nenhum dado pessoal e simplesmente indica o ID do post referente ao artigo que você acabou de editar. Ele expira depois de 1 dia.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Mídia incorporada de outros sites</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Artigos neste site podem incluir conteúdo incorporado como, por exemplo, vídeos, imagens, artigos, etc. Conteúdos incorporados de outros sites se comportam exatamente da mesma forma como se o visitante estivesse visitando o outro site.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Estes sites podem coletar dados sobre você, usar cookies, incorporar rastreamento adicional de terceiros e monitorar sua interação com este conteúdo incorporado, incluindo sua interação com o conteúdo incorporado se você tem uma conta e está conectado com o site.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Com quem compartilhamos seus dados</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Se você solicitar uma redefinição de senha, seu endereço de IP será incluído no e-mail de redefinição de senha.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Por quanto tempo mantemos os seus dados</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Se você deixar um comentário, o comentário e os seus metadados são conservados indefinidamente. Fazemos isso para que seja possível reconhecer e aprovar automaticamente qualquer comentário posterior ao invés de retê-lo para moderação.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Para usuários que se registram no nosso site (se houver), também guardamos as informações pessoais que fornecem no seu perfil de usuário. Todos os usuários podem ver, editar ou excluir suas informações pessoais a qualquer momento (só não é possível alterar o seu username). Os administradores de sites também podem ver e editar estas informações.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Quais os seus direitos sobre seus dados</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Se você tiver uma conta neste site ou se tiver deixado comentários, pode solicitar um arquivo exportado dos dados pessoais que mantemos sobre você, inclusive quaisquer dados que nos tenha fornecido. Também pode solicitar que removamos qualquer dado pessoal que mantemos sobre você. Isto não inclui nenhuns dados que somos obrigados a manter para propósitos administrativos, legais ou de segurança.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Para onde seus dados são enviados</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Comentários de visitantes podem ser marcados por um serviço automático de detecção de spam.</p>\n<!-- /wp:paragraph -->\n', 'Política de privacidade', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2024-11-22 15:45:12', '2024-11-22 18:45:12', '', 3, 'http://localhost/wpatratis/?p=33', 0, 'revision', '', 0),
(34, 1, '2024-11-22 15:45:53', '2024-11-22 18:45:53', '<!-- wp:paragraph -->\n<p>Esta é uma página de exemplo. É diferente de um post no blog porque ela permanecerá em um lugar e aparecerá na navegação do seu site na maioria dos temas. Muitas pessoas começam com uma página que as apresenta a possíveis visitantes do site. Ela pode dizer algo assim:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Olá! Eu sou um mensageiro de bicicleta durante o dia, ator aspirante à noite, e este é o meu site. Eu moro em São Paulo, tenho um grande cachorro chamado Rex e gosto de tomar caipirinha (e banhos de chuva).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...ou alguma coisa assim:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>A Companhia de Miniaturas XYZ foi fundada em 1971, e desde então tem fornecido miniaturas de qualidade ao público. Localizada na cidade de Itu, a XYZ emprega mais de 2.000 pessoas e faz coisas grandiosas para a comunidade da cidade.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Como um novo usuário do WordPress, você deveria ir ao <a href=\"http://localhost/wpatratis/wp-admin/\">painel</a> para excluir essa página e criar novas páginas para o seu conteúdo. Divirta-se!</p>\n<!-- /wp:paragraph -->', 'Página de exemplo', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2024-11-22 15:45:53', '2024-11-22 18:45:53', '', 2, 'http://localhost/wpatratis/?p=34', 0, 'revision', '', 0),
(35, 1, '2024-11-22 15:46:25', '2024-11-22 18:46:25', '<!-- wp:paragraph -->\n<p>home</p>\n<!-- /wp:paragraph -->', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2024-11-22 15:46:25', '2024-11-22 18:46:25', '', 0, 'http://localhost/wpatratis/?page_id=35', 0, 'page', '', 0),
(36, 1, '2024-11-27 15:54:27', '2024-11-22 18:46:25', ' ', '', '', 'publish', 'closed', 'closed', '', '36', '', '', '2024-11-27 15:54:27', '2024-11-27 18:54:27', '', 0, 'http://localhost/wpatratis/2024/11/22/36/', 1, 'nav_menu_item', '', 0),
(37, 1, '2024-11-22 15:46:25', '2024-11-22 18:46:25', '<!-- wp:paragraph -->\n<p>home</p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2024-11-22 15:46:25', '2024-11-22 18:46:25', '', 35, 'http://localhost/wpatratis/?p=37', 0, 'revision', '', 0),
(38, 1, '2024-11-22 15:47:07', '2024-11-22 18:47:07', '<!-- wp:paragraph -->\n<p>quem somos</p>\n<!-- /wp:paragraph -->', 'Quem somos', '', 'publish', 'closed', 'closed', '', 'quem-somos', '', '', '2024-11-22 15:47:07', '2024-11-22 18:47:07', '', 0, 'http://localhost/wpatratis/?page_id=38', 0, 'page', '', 0),
(39, 1, '2024-11-27 15:54:27', '2024-11-22 18:47:07', ' ', '', '', 'publish', 'closed', 'closed', '', '39', '', '', '2024-11-27 15:54:27', '2024-11-27 18:54:27', '', 0, 'http://localhost/wpatratis/2024/11/22/39/', 2, 'nav_menu_item', '', 0),
(40, 1, '2024-11-22 15:47:07', '2024-11-22 18:47:07', '<!-- wp:paragraph -->\n<p>quem somos</p>\n<!-- /wp:paragraph -->', 'Quem somos', '', 'inherit', 'closed', 'closed', '', '38-revision-v1', '', '', '2024-11-22 15:47:07', '2024-11-22 18:47:07', '', 38, 'http://localhost/wpatratis/?p=40', 0, 'revision', '', 0),
(41, 1, '2024-11-22 15:47:24', '2024-11-22 18:47:24', '<!-- wp:paragraph -->\n<p>o que fazemos</p>\n<!-- /wp:paragraph -->', 'O que fazemos', '', 'publish', 'closed', 'closed', '', 'o-que-fazemos', '', '', '2024-11-22 15:47:24', '2024-11-22 18:47:24', '', 0, 'http://localhost/wpatratis/?page_id=41', 0, 'page', '', 0),
(42, 1, '2024-11-27 15:54:27', '2024-11-22 18:47:24', ' ', '', '', 'publish', 'closed', 'closed', '', '42', '', '', '2024-11-27 15:54:27', '2024-11-27 18:54:27', '', 0, 'http://localhost/wpatratis/2024/11/22/42/', 3, 'nav_menu_item', '', 0),
(43, 1, '2024-11-22 15:47:24', '2024-11-22 18:47:24', '<!-- wp:paragraph -->\n<p>o que fazemos</p>\n<!-- /wp:paragraph -->', 'O que fazemos', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2024-11-22 15:47:24', '2024-11-22 18:47:24', '', 41, 'http://localhost/wpatratis/?p=43', 0, 'revision', '', 0),
(44, 1, '2024-11-22 15:47:39', '2024-11-22 18:47:39', '<!-- wp:paragraph -->\n<p>time</p>\n<!-- /wp:paragraph -->', 'Time', '', 'publish', 'closed', 'closed', '', 'time', '', '', '2024-11-22 15:47:39', '2024-11-22 18:47:39', '', 0, 'http://localhost/wpatratis/?page_id=44', 0, 'page', '', 0),
(45, 1, '2024-11-27 15:54:27', '2024-11-22 18:47:39', ' ', '', '', 'publish', 'closed', 'closed', '', '45', '', '', '2024-11-27 15:54:27', '2024-11-27 18:54:27', '', 0, 'http://localhost/wpatratis/2024/11/22/45/', 4, 'nav_menu_item', '', 0),
(46, 1, '2024-11-22 15:47:39', '2024-11-22 18:47:39', '<!-- wp:paragraph -->\n<p>time</p>\n<!-- /wp:paragraph -->', 'Time', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2024-11-22 15:47:39', '2024-11-22 18:47:39', '', 44, 'http://localhost/wpatratis/?p=46', 0, 'revision', '', 0),
(47, 1, '2024-11-22 15:47:55', '2024-11-22 18:47:55', '<!-- wp:paragraph -->\n<p>startups</p>\n<!-- /wp:paragraph -->', 'Startups', '', 'publish', 'closed', 'closed', '', 'startups', '', '', '2024-11-22 15:47:55', '2024-11-22 18:47:55', '', 0, 'http://localhost/wpatratis/?page_id=47', 0, 'page', '', 0),
(48, 1, '2024-11-27 15:54:27', '2024-11-22 18:47:55', ' ', '', '', 'publish', 'closed', 'closed', '', '48', '', '', '2024-11-27 15:54:27', '2024-11-27 18:54:27', '', 0, 'http://localhost/wpatratis/2024/11/22/48/', 5, 'nav_menu_item', '', 0),
(49, 1, '2024-11-22 15:47:55', '2024-11-22 18:47:55', '<!-- wp:paragraph -->\n<p>startups</p>\n<!-- /wp:paragraph -->', 'Startups', '', 'inherit', 'closed', 'closed', '', '47-revision-v1', '', '', '2024-11-22 15:47:55', '2024-11-22 18:47:55', '', 47, 'http://localhost/wpatratis/?p=49', 0, 'revision', '', 0),
(50, 1, '2024-11-22 15:48:10', '2024-11-22 18:48:10', '<!-- wp:paragraph -->\n<p>mentores</p>\n<!-- /wp:paragraph -->', 'Mentores', '', 'publish', 'closed', 'closed', '', 'mentores', '', '', '2024-11-22 15:48:10', '2024-11-22 18:48:10', '', 0, 'http://localhost/wpatratis/?page_id=50', 0, 'page', '', 0),
(51, 1, '2024-11-27 15:54:27', '2024-11-22 18:48:10', ' ', '', '', 'publish', 'closed', 'closed', '', '51', '', '', '2024-11-27 15:54:27', '2024-11-27 18:54:27', '', 0, 'http://localhost/wpatratis/2024/11/22/51/', 6, 'nav_menu_item', '', 0),
(52, 1, '2024-11-22 15:48:10', '2024-11-22 18:48:10', '<!-- wp:paragraph -->\n<p>mentores</p>\n<!-- /wp:paragraph -->', 'Mentores', '', 'inherit', 'closed', 'closed', '', '50-revision-v1', '', '', '2024-11-22 15:48:10', '2024-11-22 18:48:10', '', 50, 'http://localhost/wpatratis/?p=52', 0, 'revision', '', 0),
(53, 1, '2024-11-22 15:48:23', '2024-11-22 18:48:23', '', 'Jornada', '', 'publish', 'closed', 'closed', '', 'jornada', '', '', '2024-11-22 15:48:23', '2024-11-22 18:48:23', '', 0, 'http://localhost/wpatratis/?page_id=53', 0, 'page', '', 0),
(54, 1, '2024-11-27 15:54:27', '2024-11-22 18:48:23', ' ', '', '', 'publish', 'closed', 'closed', '', '54', '', '', '2024-11-27 15:54:27', '2024-11-27 18:54:27', '', 0, 'http://localhost/wpatratis/2024/11/22/54/', 7, 'nav_menu_item', '', 0),
(55, 1, '2024-11-22 15:48:23', '2024-11-22 18:48:23', '', 'Jornada', '', 'inherit', 'closed', 'closed', '', '53-revision-v1', '', '', '2024-11-22 15:48:23', '2024-11-22 18:48:23', '', 53, 'http://localhost/wpatratis/?p=55', 0, 'revision', '', 0),
(56, 1, '2024-11-22 15:48:38', '2024-11-22 18:48:38', '<!-- wp:paragraph -->\n<p>fale conosco</p>\n<!-- /wp:paragraph -->', 'Fale conosco', '', 'publish', 'closed', 'closed', '', 'fale-conosco', '', '', '2024-11-22 15:48:38', '2024-11-22 18:48:38', '', 0, 'http://localhost/wpatratis/?page_id=56', 0, 'page', '', 0),
(57, 1, '2024-11-27 15:54:27', '2024-11-22 18:48:38', ' ', '', '', 'publish', 'closed', 'closed', '', '57', '', '', '2024-11-27 15:54:27', '2024-11-27 18:54:27', '', 0, 'http://localhost/wpatratis/2024/11/22/57/', 8, 'nav_menu_item', '', 0),
(58, 1, '2024-11-22 15:48:38', '2024-11-22 18:48:38', '<!-- wp:paragraph -->\n<p>fale conosco</p>\n<!-- /wp:paragraph -->', 'Fale conosco', '', 'inherit', 'closed', 'closed', '', '56-revision-v1', '', '', '2024-11-22 15:48:38', '2024-11-22 18:48:38', '', 56, 'http://localhost/wpatratis/?p=58', 0, 'revision', '', 0),
(59, 1, '2024-11-22 17:16:06', '2024-11-22 20:16:06', '', 'imagemtime', '', 'inherit', 'open', 'closed', '', 'imagemtime', '', '', '2024-11-22 17:16:06', '2024-11-22 20:16:06', '', 0, 'http://localhost/wpatratis/wp-content/uploads/2024/11/imagemtime.png', 0, 'attachment', 'image/png', 0),
(63, 1, '2024-11-27 14:21:41', '2024-11-27 17:21:41', '', 'right', '', 'inherit', 'open', 'closed', '', 'right', '', '', '2024-11-27 14:21:41', '2024-11-27 17:21:41', '', 0, 'http://localhost/wpatratis/wp-content/uploads/2024/11/right.png', 0, 'attachment', 'image/png', 0),
(64, 1, '2024-11-27 14:25:12', '2024-11-27 17:25:12', '', 'plantaocard', '', 'inherit', 'open', 'closed', '', 'plantaocard', '', '', '2024-11-27 14:25:12', '2024-11-27 17:25:12', '', 0, 'http://localhost/wpatratis/wp-content/uploads/2024/11/plantaocard.png', 0, 'attachment', 'image/png', 0),
(66, 1, '2024-12-06 14:48:46', '2024-12-06 17:48:46', 'a:35:{s:9:\"post_type\";s:6:\"banner\";s:22:\"advanced_configuration\";b:1;s:13:\"import_source\";s:0:\"\";s:11:\"import_date\";s:0:\"\";s:6:\"labels\";a:33:{s:4:\"name\";s:6:\"Banner\";s:13:\"singular_name\";s:6:\"Banner\";s:9:\"menu_name\";s:6:\"Banner\";s:9:\"all_items\";s:15:\"Todos os Banner\";s:9:\"edit_item\";s:13:\"Editar Banner\";s:9:\"view_item\";s:10:\"Ver Banner\";s:10:\"view_items\";s:10:\"Ver Banner\";s:12:\"add_new_item\";s:21:\"Adicionar novo Banner\";s:7:\"add_new\";s:21:\"Adicionar novo Banner\";s:8:\"new_item\";s:11:\"Novo Banner\";s:17:\"parent_item_colon\";s:18:\"Banner ascendente:\";s:12:\"search_items\";s:16:\"Pesquisar Banner\";s:9:\"not_found\";s:35:\"Não foi possível encontrar banner\";s:18:\"not_found_in_trash\";s:46:\"Não foi possível encontrar banner na lixeira\";s:8:\"archives\";s:18:\"Arquivos de Banner\";s:10:\"attributes\";s:19:\"Atributos de Banner\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:16:\"insert_into_item\";s:17:\"Inserir no banner\";s:21:\"uploaded_to_this_item\";s:24:\"Enviado para este banner\";s:17:\"filter_items_list\";s:23:\"Filtrar lista de banner\";s:14:\"filter_by_date\";s:23:\"Filtrar banner por data\";s:21:\"items_list_navigation\";s:30:\"Navegação na lista de Banner\";s:10:\"items_list\";s:15:\"Lista de Banner\";s:14:\"item_published\";s:17:\"Banner publicado.\";s:24:\"item_published_privately\";s:34:\"Banner publicado de forma privada.\";s:22:\"item_reverted_to_draft\";s:31:\"Banner revertido para rascunho.\";s:14:\"item_scheduled\";s:16:\"Banner agendado.\";s:12:\"item_updated\";s:18:\"Banner atualizado.\";s:9:\"item_link\";s:14:\"Link de Banner\";s:21:\"item_link_description\";s:23:\"Um link para um banner.\";}s:11:\"description\";s:0:\"\";s:6:\"public\";b:1;s:12:\"hierarchical\";b:0;s:19:\"exclude_from_search\";b:0;s:18:\"publicly_queryable\";b:1;s:7:\"show_ui\";b:1;s:12:\"show_in_menu\";b:1;s:17:\"admin_menu_parent\";s:0:\"\";s:17:\"show_in_admin_bar\";b:1;s:17:\"show_in_nav_menus\";b:1;s:12:\"show_in_rest\";b:1;s:9:\"rest_base\";s:0:\"\";s:14:\"rest_namespace\";s:5:\"wp/v2\";s:21:\"rest_controller_class\";s:24:\"WP_REST_Posts_Controller\";s:13:\"menu_position\";s:0:\"\";s:9:\"menu_icon\";a:2:{s:4:\"type\";s:9:\"dashicons\";s:5:\"value\";s:28:\"dashicons-welcome-write-blog\";}s:19:\"rename_capabilities\";b:0;s:24:\"singular_capability_name\";s:4:\"post\";s:22:\"plural_capability_name\";s:5:\"posts\";s:8:\"supports\";a:4:{i:0;s:5:\"title\";i:1;s:6:\"editor\";i:2;s:9:\"thumbnail\";i:3;s:13:\"custom-fields\";}s:10:\"taxonomies\";s:0:\"\";s:11:\"has_archive\";b:0;s:16:\"has_archive_slug\";s:0:\"\";s:7:\"rewrite\";a:4:{s:17:\"permalink_rewrite\";s:13:\"post_type_key\";s:10:\"with_front\";s:1:\"1\";s:5:\"feeds\";s:1:\"0\";s:5:\"pages\";s:1:\"1\";}s:9:\"query_var\";s:13:\"post_type_key\";s:14:\"query_var_name\";s:0:\"\";s:10:\"can_export\";b:1;s:16:\"delete_with_user\";b:0;s:20:\"register_meta_box_cb\";s:0:\"\";s:16:\"enter_title_here\";s:0:\"\";}', 'Banner', 'banner', 'publish', 'closed', 'closed', '', 'post_type_675338de08b5a', '', '', '2024-12-06 14:50:59', '2024-12-06 17:50:59', '', 0, 'http://localhost/wpatratis/?post_type=acf-post-type&#038;p=66', 0, 'acf-post-type', '', 0),
(67, 1, '2024-12-06 14:51:14', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2024-12-06 14:51:14', '0000-00-00 00:00:00', '', 0, 'http://localhost/wpatratis/?post_type=banner&p=67', 0, 'banner', '', 0),
(68, 1, '2024-12-06 14:53:24', '2024-12-06 17:53:24', 'a:29:{s:8:\"taxonomy\";s:8:\"posicoes\";s:11:\"object_type\";a:1:{i:0;s:6:\"banner\";}s:22:\"advanced_configuration\";i:0;s:13:\"import_source\";s:0:\"\";s:11:\"import_date\";s:0:\"\";s:6:\"labels\";a:25:{s:4:\"name\";s:10:\"Posições\";s:13:\"singular_name\";s:10:\"Posições\";s:9:\"menu_name\";s:8:\"Posicoes\";s:9:\"all_items\";s:17:\"Todos os Posicoes\";s:9:\"edit_item\";s:15:\"Editar Posicoes\";s:9:\"view_item\";s:12:\"Ver Posicoes\";s:11:\"update_item\";s:18:\"Atualizar Posicoes\";s:12:\"add_new_item\";s:23:\"Adicionar novo Posicoes\";s:13:\"new_item_name\";s:21:\"Novo nome de Posicoes\";s:12:\"search_items\";s:18:\"Pesquisar Posicoes\";s:13:\"popular_items\";s:18:\"Posicoes populares\";s:26:\"separate_items_with_commas\";s:29:\"Separe posicoes com vírgulas\";s:19:\"add_or_remove_items\";s:29:\"Adicionar ou remover posicoes\";s:21:\"choose_from_most_used\";s:34:\"Escolha entre posicoes mais comuns\";s:9:\"most_used\";s:0:\"\";s:9:\"not_found\";s:37:\"Não foi possível encontrar posicoes\";s:8:\"no_terms\";s:17:\"Não há posicoes\";s:22:\"name_field_description\";s:0:\"\";s:22:\"slug_field_description\";s:0:\"\";s:22:\"desc_field_description\";s:0:\"\";s:21:\"items_list_navigation\";s:32:\"Navegação na lista de Posicoes\";s:10:\"items_list\";s:17:\"Lista de Posicoes\";s:13:\"back_to_items\";s:20:\"← Ir para posicoes\";s:9:\"item_link\";s:16:\"Link de Posicoes\";s:21:\"item_link_description\";s:24:\"Um link para um posicoes\";}s:11:\"description\";s:0:\"\";s:12:\"capabilities\";a:4:{s:12:\"manage_terms\";s:17:\"manage_categories\";s:10:\"edit_terms\";s:17:\"manage_categories\";s:12:\"delete_terms\";s:17:\"manage_categories\";s:12:\"assign_terms\";s:10:\"edit_posts\";}s:6:\"public\";i:1;s:18:\"publicly_queryable\";i:1;s:12:\"hierarchical\";i:0;s:7:\"show_ui\";i:1;s:12:\"show_in_menu\";i:1;s:17:\"show_in_nav_menus\";i:1;s:12:\"show_in_rest\";i:1;s:9:\"rest_base\";s:0:\"\";s:14:\"rest_namespace\";s:5:\"wp/v2\";s:21:\"rest_controller_class\";s:24:\"WP_REST_Terms_Controller\";s:13:\"show_tagcloud\";i:1;s:18:\"show_in_quick_edit\";i:1;s:17:\"show_admin_column\";i:0;s:7:\"rewrite\";a:3:{s:17:\"permalink_rewrite\";s:12:\"taxonomy_key\";s:10:\"with_front\";s:1:\"1\";s:20:\"rewrite_hierarchical\";s:1:\"0\";}s:9:\"query_var\";s:13:\"post_type_key\";s:14:\"query_var_name\";s:0:\"\";s:12:\"default_term\";a:1:{s:20:\"default_term_enabled\";s:1:\"0\";}s:4:\"sort\";i:0;s:8:\"meta_box\";s:7:\"default\";s:11:\"meta_box_cb\";s:0:\"\";s:20:\"meta_box_sanitize_cb\";s:0:\"\";}', 'Posições', 'posicoes', 'publish', 'closed', 'closed', '', 'taxonomy_675339da9e3c9', '', '', '2024-12-06 14:54:10', '2024-12-06 17:54:10', '', 0, 'http://localhost/wpatratis/?post_type=acf-taxonomy&#038;p=68', 0, 'acf-taxonomy', '', 0),
(69, 1, '2024-12-06 14:56:47', '2024-12-06 17:56:47', '', 'Banner Desktop', '', 'publish', 'closed', 'closed', '', 'banner-desktop', '', '', '2024-12-06 16:44:10', '2024-12-06 19:44:10', '', 0, 'http://localhost/wpatratis/?post_type=banner&#038;p=69', 0, 'banner', '', 0),
(70, 1, '2024-12-06 15:53:16', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2024-12-06 15:53:16', '0000-00-00 00:00:00', '', 0, 'http://localhost/wpatratis/?p=70', 0, 'post', '', 0),
(71, 1, '2024-12-06 16:18:02', '0000-00-00 00:00:00', '', 'Banner Mobile', '', 'draft', 'closed', 'closed', '', '', '', '', '2024-12-06 16:18:02', '2024-12-06 19:18:02', '', 0, 'http://localhost/wpatratis/?post_type=banner&#038;p=71', 0, 'banner', '', 0),
(72, 1, '2024-12-06 16:21:16', '2024-12-06 19:21:16', '', 'banner-desktop', '', 'inherit', 'open', 'closed', '', 'banner-desktop-2', '', '', '2024-12-06 16:21:16', '2024-12-06 19:21:16', '', 69, 'http://localhost/wpatratis/wp-content/uploads/2024/12/banner-desktop.jpg', 0, 'attachment', 'image/jpeg', 0),
(74, 1, '2024-12-06 16:23:45', '2024-12-06 19:23:45', '', 'Banner Desktop2', '', 'publish', 'closed', 'closed', '', 'banner-desktop2', '', '', '2024-12-06 16:55:12', '2024-12-06 19:55:12', '', 0, 'http://localhost/wpatratis/?post_type=banner&#038;p=74', 0, 'banner', '', 0),
(75, 1, '2024-12-06 16:35:58', '2024-12-06 19:35:58', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:6:\"banner\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Configurações do banner', 'configuracoes-do-banner', 'publish', 'closed', 'closed', '', 'group_675350c023a45', '', '', '2024-12-06 16:42:03', '2024-12-06 19:42:03', '', 0, 'http://localhost/wpatratis/?post_type=acf-field-group&#038;p=75', 0, 'acf-field-group', '', 0),
(76, 1, '2024-12-06 16:35:58', '2024-12-06 19:35:58', 'a:9:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";b:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;s:8:\"selected\";i:0;}', 'Configurações', 'configuracoes', 'publish', 'closed', 'closed', '', 'field_675350c18fb5f', '', '', '2024-12-06 16:35:58', '2024-12-06 19:35:58', '', 75, 'http://localhost/wpatratis/?post_type=acf-field&p=76', 0, 'acf-field', '', 0),
(77, 1, '2024-12-06 16:35:58', '2024-12-06 19:35:58', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Titulo', 'titulo', 'publish', 'closed', 'closed', '', 'field_675350fa8fb60', '', '', '2024-12-06 16:41:42', '2024-12-06 19:41:42', '', 75, 'http://localhost/wpatratis/?post_type=acf-field&#038;p=77', 3, 'acf-field', '', 0),
(78, 1, '2024-12-06 16:35:58', '2024-12-06 19:35:58', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Descrição banner', 'descricao_banner', 'publish', 'closed', 'closed', '', 'field_6753512f8fb61', '', '', '2024-12-06 16:41:42', '2024-12-06 19:41:42', '', 75, 'http://localhost/wpatratis/?post_type=acf-field&#038;p=78', 4, 'acf-field', '', 0),
(79, 1, '2024-12-06 16:35:58', '2024-12-06 19:35:58', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Link banner', 'link_banner', 'publish', 'closed', 'closed', '', 'field_675351548fb62', '', '', '2024-12-06 16:41:42', '2024-12-06 19:41:42', '', 75, 'http://localhost/wpatratis/?post_type=acf-field&#038;p=79', 1, 'acf-field', '', 0),
(80, 1, '2024-12-06 16:35:58', '2024-12-06 19:35:58', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Texto botão', 'texto_botao', 'publish', 'closed', 'closed', '', 'field_675352148fb63', '', '', '2024-12-06 16:42:03', '2024-12-06 19:42:03', '', 75, 'http://localhost/wpatratis/?post_type=acf-field&#038;p=80', 2, 'acf-field', '', 0),
(82, 1, '2024-12-06 16:58:53', '2024-12-06 19:58:53', 'a:8:{s:8:\"location\";a:2:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:7:\"default\";}}i:1;a:1:{i:0;a:3:{s:5:\"param\";s:12:\"options_page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:14:\"pagina-inicial\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Blocos de conteúdos', 'blocos-de-conteudos', 'publish', 'closed', 'closed', '', 'group_67535749b2b11', '', '', '2024-12-11 16:55:31', '2024-12-11 19:55:31', '', 0, 'http://localhost/wpatratis/?post_type=acf-field-group&#038;p=82', 0, 'acf-field-group', '', 0),
(83, 1, '2024-12-06 16:58:53', '2024-12-06 19:58:53', 'a:10:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:16:\"flexible_content\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"layouts\";a:3:{s:20:\"layout_675357a2026bc\";a:6:{s:3:\"key\";s:20:\"layout_675357a2026bc\";s:5:\"label\";s:18:\"Sessão quem somos\";s:4:\"name\";s:17:\"sessao_quem_somos\";s:7:\"display\";s:5:\"block\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";}s:20:\"layout_6759d4faf5861\";a:6:{s:3:\"key\";s:20:\"layout_6759d4faf5861\";s:5:\"label\";s:19:\"Sessão que fazemos\";s:4:\"name\";s:18:\"sessao_que_fazemos\";s:7:\"display\";s:5:\"block\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";}s:20:\"layout_6759e66c98e8b\";a:6:{s:3:\"key\";s:20:\"layout_6759e66c98e8b\";s:5:\"label\";s:18:\"Sessão nosso time\";s:4:\"name\";s:17:\"sessao_nosso_time\";s:7:\"display\";s:5:\"block\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";}}s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:12:\"button_label\";s:15:\"Adicionar linha\";}', 'Blocos da home', 'blocos_home', 'publish', 'closed', 'closed', '', 'field_6753574abade5', '', '', '2024-12-11 16:32:35', '2024-12-11 19:32:35', '', 82, 'http://localhost/wpatratis/?post_type=acf-field&#038;p=83', 0, 'acf-field', '', 0),
(84, 1, '2024-12-06 17:03:55', '2024-12-06 20:03:55', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"parent_layout\";s:20:\"layout_675357a2026bc\";s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Titulo quem somos', 'titulo_quem_somos', 'publish', 'closed', 'closed', '', 'field_675357f8d3c9b', '', '', '2024-12-06 17:03:55', '2024-12-06 20:03:55', '', 83, 'http://localhost/wpatratis/?post_type=acf-field&p=84', 0, 'acf-field', '', 0),
(85, 1, '2024-12-06 17:03:55', '2024-12-06 20:03:55', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"parent_layout\";s:20:\"layout_675357a2026bc\";s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'SubTitulo quem somos', 'subtitulo_quem_somos', 'publish', 'closed', 'closed', '', 'field_67535849d3c9c', '', '', '2024-12-06 17:03:55', '2024-12-06 20:03:55', '', 83, 'http://localhost/wpatratis/?post_type=acf-field&p=85', 1, 'acf-field', '', 0),
(86, 1, '2024-12-06 17:03:55', '2024-12-06 20:03:55', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"parent_layout\";s:20:\"layout_675357a2026bc\";s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Descricao quem somos', 'descricao_quem_somos', 'publish', 'closed', 'closed', '', 'field_675358a2d3c9d', '', '', '2024-12-06 17:05:22', '2024-12-06 20:05:22', '', 83, 'http://localhost/wpatratis/?post_type=acf-field&#038;p=86', 2, 'acf-field', '', 0),
(87, 1, '2024-12-06 17:05:22', '2024-12-06 20:05:22', 'a:17:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"parent_layout\";s:20:\"layout_675357a2026bc\";s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'Imagem quem somos', 'imagem_quem_somos', 'publish', 'closed', 'closed', '', 'field_675358cb4999a', '', '', '2024-12-06 17:05:22', '2024-12-06 20:05:22', '', 83, 'http://localhost/wpatratis/?post_type=acf-field&p=87', 3, 'acf-field', '', 0),
(88, 1, '2024-12-11 15:11:36', '2024-12-11 18:11:36', 'a:17:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"parent_layout\";s:20:\"layout_6759d4faf5861\";s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'imagem que fazemos', 'imagem_que_fazemos', 'publish', 'closed', 'closed', '', 'field_6759d5a8f385c', '', '', '2024-12-11 15:15:56', '2024-12-11 18:15:56', '', 83, 'http://localhost/wpatratis/?post_type=acf-field&#038;p=88', 0, 'acf-field', '', 0),
(89, 1, '2024-12-11 15:15:56', '2024-12-11 18:15:56', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"parent_layout\";s:20:\"layout_6759d4faf5861\";s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'titulo que fazemos', 'titulo_que_fazemos', 'publish', 'closed', 'closed', '', 'field_6759d649162b3', '', '', '2024-12-11 15:15:56', '2024-12-11 18:15:56', '', 83, 'http://localhost/wpatratis/?post_type=acf-field&p=89', 1, 'acf-field', '', 0);
INSERT INTO `wpatr_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(90, 1, '2024-12-11 15:15:56', '2024-12-11 18:15:56', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"parent_layout\";s:20:\"layout_6759d4faf5861\";s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'subtitulo que fazemos', 'subtitulo_que_fazemos', 'publish', 'closed', 'closed', '', 'field_6759d658162b4', '', '', '2024-12-11 15:15:56', '2024-12-11 18:15:56', '', 83, 'http://localhost/wpatratis/?post_type=acf-field&p=90', 2, 'acf-field', '', 0),
(91, 1, '2024-12-11 15:15:56', '2024-12-11 18:15:56', 'a:13:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"parent_layout\";s:20:\"layout_6759d4faf5861\";s:6:\"layout\";s:5:\"table\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:9:\"collapsed\";s:0:\"\";s:12:\"button_label\";s:0:\"\";s:13:\"rows_per_page\";i:20;}', 'lista que fazemos', 'lista_que_fazemos', 'publish', 'closed', 'closed', '', 'field_6759d665162b5', '', '', '2024-12-11 15:15:56', '2024-12-11 18:15:56', '', 83, 'http://localhost/wpatratis/?post_type=acf-field&p=91', 3, 'acf-field', '', 0),
(92, 1, '2024-12-11 15:15:56', '2024-12-11 18:15:56', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'titulo lista', 'titulo_lista', 'publish', 'closed', 'closed', '', 'field_6759d69f162b6', '', '', '2024-12-11 15:15:56', '2024-12-11 18:15:56', '', 91, 'http://localhost/wpatratis/?post_type=acf-field&p=92', 0, 'acf-field', '', 0),
(93, 1, '2024-12-11 15:15:56', '2024-12-11 18:15:56', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'descricao lista', 'descricao_lista', 'publish', 'closed', 'closed', '', 'field_6759d6a9162b7', '', '', '2024-12-11 15:15:56', '2024-12-11 18:15:56', '', 91, 'http://localhost/wpatratis/?post_type=acf-field&p=93', 1, 'acf-field', '', 0),
(94, 1, '2024-12-11 15:20:36', '2024-12-11 18:20:36', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"parent_layout\";s:20:\"layout_6759d4faf5861\";s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'titulo numeros', 'titulo_numeros', 'publish', 'closed', 'closed', '', 'field_6759d7ee4d66b', '', '', '2024-12-11 15:22:37', '2024-12-11 18:22:37', '', 83, 'http://localhost/wpatratis/?post_type=acf-field&#038;p=94', 4, 'acf-field', '', 0),
(95, 1, '2024-12-11 15:22:37', '2024-12-11 18:22:37', 'a:13:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"parent_layout\";s:20:\"layout_6759d4faf5861\";s:6:\"layout\";s:5:\"table\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:9:\"collapsed\";s:0:\"\";s:12:\"button_label\";s:0:\"\";s:13:\"rows_per_page\";i:20;}', 'lista numeros', 'lista_numeros', 'publish', 'closed', 'closed', '', 'field_6759d8092ca79', '', '', '2024-12-11 16:00:05', '2024-12-11 19:00:05', '', 83, 'http://localhost/wpatratis/?post_type=acf-field&#038;p=95', 6, 'acf-field', '', 0),
(96, 1, '2024-12-11 15:22:37', '2024-12-11 18:22:37', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'titulo lista numeros', 'titulo_lista_numeros', 'publish', 'closed', 'closed', '', 'field_6759d8202ca7a', '', '', '2024-12-11 15:22:37', '2024-12-11 18:22:37', '', 95, 'http://localhost/wpatratis/?post_type=acf-field&p=96', 0, 'acf-field', '', 0),
(97, 1, '2024-12-11 15:22:37', '2024-12-11 18:22:37', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'descricao lista numeros', 'descricao_lista_numeros', 'publish', 'closed', 'closed', '', 'field_6759d8362ca7b', '', '', '2024-12-11 15:22:37', '2024-12-11 18:22:37', '', 95, 'http://localhost/wpatratis/?post_type=acf-field&p=97', 1, 'acf-field', '', 0),
(98, 1, '2024-12-11 16:00:05', '2024-12-11 19:00:05', 'a:17:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"parent_layout\";s:20:\"layout_6759d4faf5861\";s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'imagem numeros', 'imagem_numeros', 'publish', 'closed', 'closed', '', 'field_6759e117842fc', '', '', '2024-12-11 16:00:05', '2024-12-11 19:00:05', '', 83, 'http://localhost/wpatratis/?post_type=acf-field&p=98', 5, 'acf-field', '', 0),
(99, 1, '2024-12-11 16:32:35', '2024-12-11 19:32:35', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"parent_layout\";s:20:\"layout_6759e66c98e8b\";s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'titulo nosso time', 'titulo_nosso_time', 'publish', 'closed', 'closed', '', 'field_6759e6bf98e8d', '', '', '2024-12-11 16:32:35', '2024-12-11 19:32:35', '', 83, 'http://localhost/wpatratis/?post_type=acf-field&p=99', 0, 'acf-field', '', 0),
(100, 1, '2024-12-11 16:32:35', '2024-12-11 19:32:35', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"parent_layout\";s:20:\"layout_6759e66c98e8b\";s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'subtitulo nosso time', 'subtitulo_nosso_time', 'publish', 'closed', 'closed', '', 'field_6759e6e298e8e', '', '', '2024-12-11 16:32:35', '2024-12-11 19:32:35', '', 83, 'http://localhost/wpatratis/?post_type=acf-field&p=100', 1, 'acf-field', '', 0),
(101, 1, '2024-12-11 16:32:35', '2024-12-11 19:32:35', 'a:17:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"parent_layout\";s:20:\"layout_6759e66c98e8b\";s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'seta esquerda', 'seta_esquerda', 'publish', 'closed', 'closed', '', 'field_6759e6f398e8f', '', '', '2024-12-11 16:32:35', '2024-12-11 19:32:35', '', 83, 'http://localhost/wpatratis/?post_type=acf-field&p=101', 2, 'acf-field', '', 0),
(102, 1, '2024-12-11 16:32:35', '2024-12-11 19:32:35', 'a:17:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"parent_layout\";s:20:\"layout_6759e66c98e8b\";s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'seta direita', 'seta_direita', 'publish', 'closed', 'closed', '', 'field_6759e70098e90', '', '', '2024-12-11 16:32:35', '2024-12-11 19:32:35', '', 83, 'http://localhost/wpatratis/?post_type=acf-field&p=102', 3, 'acf-field', '', 0),
(103, 1, '2024-12-11 16:32:35', '2024-12-11 19:32:35', 'a:13:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"parent_layout\";s:20:\"layout_6759e66c98e8b\";s:6:\"layout\";s:5:\"table\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:9:\"collapsed\";s:0:\"\";s:12:\"button_label\";s:0:\"\";s:13:\"rows_per_page\";i:20;}', 'pessoas nosso time', 'pessoas_nosso_time', 'publish', 'closed', 'closed', '', 'field_6759e77198e91', '', '', '2024-12-11 16:32:35', '2024-12-11 19:32:35', '', 83, 'http://localhost/wpatratis/?post_type=acf-field&p=103', 4, 'acf-field', '', 0),
(104, 1, '2024-12-11 16:32:35', '2024-12-11 19:32:35', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'imagem pessoa', 'imagem_pessoa', 'publish', 'closed', 'closed', '', 'field_6759e78298e92', '', '', '2024-12-11 16:32:35', '2024-12-11 19:32:35', '', 103, 'http://localhost/wpatratis/?post_type=acf-field&p=104', 0, 'acf-field', '', 0),
(105, 1, '2024-12-11 16:32:35', '2024-12-11 19:32:35', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'nome pessoa', 'nome_pessoa', 'publish', 'closed', 'closed', '', 'field_6759e89498e93', '', '', '2024-12-11 16:32:35', '2024-12-11 19:32:35', '', 103, 'http://localhost/wpatratis/?post_type=acf-field&p=105', 1, 'acf-field', '', 0),
(106, 1, '2024-12-11 16:32:35', '2024-12-11 19:32:35', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'descricao pessoa', 'descricao_pessoa', 'publish', 'closed', 'closed', '', 'field_6759e89d98e94', '', '', '2024-12-11 16:32:35', '2024-12-11 19:32:35', '', 103, 'http://localhost/wpatratis/?post_type=acf-field&p=106', 2, 'acf-field', '', 0),
(107, 1, '2024-12-11 16:32:35', '2024-12-11 19:32:35', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'titulo overlay', 'titulo_overlay', 'publish', 'closed', 'closed', '', 'field_6759e8b198e95', '', '', '2024-12-11 16:32:35', '2024-12-11 19:32:35', '', 103, 'http://localhost/wpatratis/?post_type=acf-field&p=107', 3, 'acf-field', '', 0),
(108, 1, '2024-12-11 16:32:35', '2024-12-11 19:32:35', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'descricao overlay', 'descricao_overlay', 'publish', 'closed', 'closed', '', 'field_6759e8b898e96', '', '', '2024-12-11 16:32:35', '2024-12-11 19:32:35', '', 103, 'http://localhost/wpatratis/?post_type=acf-field&p=108', 4, 'acf-field', '', 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `wpatr_termmeta`
--

CREATE TABLE `wpatr_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `wpatr_terms`
--

CREATE TABLE `wpatr_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Despejando dados para a tabela `wpatr_terms`
--

INSERT INTO `wpatr_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Sem categoria', 'sem-categoria', 0),
(2, 'Menu Topo', 'menu-topo', 0),
(3, 'Desktop', 'desktop', 0),
(4, 'Mobile', 'mobile', 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `wpatr_term_relationships`
--

CREATE TABLE `wpatr_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Despejando dados para a tabela `wpatr_term_relationships`
--

INSERT INTO `wpatr_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(36, 2, 0),
(39, 2, 0),
(42, 2, 0),
(45, 2, 0),
(48, 2, 0),
(51, 2, 0),
(54, 2, 0),
(57, 2, 0),
(69, 3, 0),
(74, 3, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `wpatr_term_taxonomy`
--

CREATE TABLE `wpatr_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Despejando dados para a tabela `wpatr_term_taxonomy`
--

INSERT INTO `wpatr_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 8),
(3, 3, 'posicoes', '', 0, 2),
(4, 4, 'posicoes', '', 0, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `wpatr_usermeta`
--

CREATE TABLE `wpatr_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Despejando dados para a tabela `wpatr_usermeta`
--

INSERT INTO `wpatr_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'naama'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wpatr_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wpatr_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'theme_editor_notice'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"64a02e201dd3722724d17ffbf8dbdd6d89ea1d3c0b6c8ba45ad801413176e755\";a:4:{s:10:\"expiration\";i:1734109739;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36\";s:5:\"login\";i:1733936939;}}'),
(17, 1, 'wpatr_dashboard_quick_press_last_post_id', '70'),
(18, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(20, 1, 'nav_menu_recently_edited', '2'),
(21, 1, 'wpatr_media_library_mode', 'grid'),
(22, 1, 'wpatr_persisted_preferences', 'a:3:{s:4:\"core\";a:2:{s:26:\"isComplementaryAreaVisible\";b:1;s:10:\"openPanels\";a:2:{i:0;s:11:\"post-status\";i:1;s:23:\"taxonomy-panel-posicoes\";}}s:14:\"core/edit-post\";a:1:{s:12:\"welcomeGuide\";b:0;}s:9:\"_modified\";s:24:\"2024-12-06T19:23:36.989Z\";}'),
(23, 1, 'manageedit-acf-post-typecolumnshidden', 'a:1:{i:0;s:7:\"acf-key\";}'),
(24, 1, 'acf_user_settings', 'a:2:{s:19:\"post-type-first-run\";b:1;s:20:\"taxonomies-first-run\";b:1;}'),
(25, 1, 'closedpostboxes_acf-post-type', 'a:0:{}'),
(26, 1, 'metaboxhidden_acf-post-type', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(27, 1, 'manageedit-acf-taxonomycolumnshidden', 'a:1:{i:0;s:7:\"acf-key\";}'),
(28, 1, 'closedpostboxes_acf-taxonomy', 'a:0:{}'),
(29, 1, 'metaboxhidden_acf-taxonomy', 'a:2:{i:0;s:21:\"acf-advanced-settings\";i:1;s:7:\"slugdiv\";}'),
(30, 1, 'wpatr_user-settings', 'libraryContent=browse&editor=html'),
(31, 1, 'wpatr_user-settings-time', '1733514248'),
(32, 1, 'closedpostboxes_acf-field-group', 'a:0:{}'),
(33, 1, 'metaboxhidden_acf-field-group', 'a:1:{i:0;s:7:\"slugdiv\";}');

-- --------------------------------------------------------

--
-- Estrutura para tabela `wpatr_users`
--

CREATE TABLE `wpatr_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(255) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Despejando dados para a tabela `wpatr_users`
--

INSERT INTO `wpatr_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'naama', '$P$BLaX/w7ckzuMFK0Q5E5Iy4sUEwwAgl.', 'naama', 'naama.stavares@gmail.com', 'http://localhost/wpatratis', '2024-11-22 17:14:10', '', 0, 'naama');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `wpatr_commentmeta`
--
ALTER TABLE `wpatr_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Índices de tabela `wpatr_comments`
--
ALTER TABLE `wpatr_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Índices de tabela `wpatr_links`
--
ALTER TABLE `wpatr_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Índices de tabela `wpatr_options`
--
ALTER TABLE `wpatr_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Índices de tabela `wpatr_postmeta`
--
ALTER TABLE `wpatr_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Índices de tabela `wpatr_posts`
--
ALTER TABLE `wpatr_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Índices de tabela `wpatr_termmeta`
--
ALTER TABLE `wpatr_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Índices de tabela `wpatr_terms`
--
ALTER TABLE `wpatr_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Índices de tabela `wpatr_term_relationships`
--
ALTER TABLE `wpatr_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Índices de tabela `wpatr_term_taxonomy`
--
ALTER TABLE `wpatr_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Índices de tabela `wpatr_usermeta`
--
ALTER TABLE `wpatr_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Índices de tabela `wpatr_users`
--
ALTER TABLE `wpatr_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `wpatr_commentmeta`
--
ALTER TABLE `wpatr_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wpatr_comments`
--
ALTER TABLE `wpatr_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `wpatr_links`
--
ALTER TABLE `wpatr_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wpatr_options`
--
ALTER TABLE `wpatr_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=487;

--
-- AUTO_INCREMENT de tabela `wpatr_postmeta`
--
ALTER TABLE `wpatr_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=212;

--
-- AUTO_INCREMENT de tabela `wpatr_posts`
--
ALTER TABLE `wpatr_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT de tabela `wpatr_termmeta`
--
ALTER TABLE `wpatr_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wpatr_terms`
--
ALTER TABLE `wpatr_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `wpatr_term_taxonomy`
--
ALTER TABLE `wpatr_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `wpatr_usermeta`
--
ALTER TABLE `wpatr_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de tabela `wpatr_users`
--
ALTER TABLE `wpatr_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
