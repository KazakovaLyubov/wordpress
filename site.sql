-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Мар 29 2017 г., 10:48
-- Версия сервера: 5.5.53
-- Версия PHP: 7.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `site`
--

-- --------------------------------------------------------

--
-- Структура таблицы `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Автор комментария', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2017-02-08 15:00:35', '2017-02-08 12:00:35', 'Привет! Это комментарий.\nЧтобы начать модерировать, редактировать и удалять комментарии, перейдите на экран «Комментарии» в консоли.\nАватары авторов комментариев загружаются с сервиса <a href=\"https://ru.gravatar.com\">Gravatar</a>.', 0, 'post-trashed', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost:8080/wordpress', 'yes'),
(2, 'home', 'http://localhost:8080/wordpress', 'yes'),
(3, 'blogname', 'Сайт ИТФ', 'yes'),
(4, 'blogdescription', 'Ещё один сайт на WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'kazakova_lyusya@inbox.ru', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'd.m.Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'd.m.Y H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:0:{}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '3', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:5:{i:0;s:103:\"D:\\OpenServer\\ULTIMATE\\OpenServer\\domains\\localhost\\wordpress/wp-content/themes/twentysixteen/style.css\";i:2;s:118:\"C:\\OpenServer\\domains\\localhost\\wordpress/wp-content/plugins/beautiful-taxonomy-filters/beautiful-taxonomy-filters.php\";i:3;s:80:\"C:\\OpenServer\\domains\\localhost\\wordpress/wp-content/plugins/akismet/akismet.php\";i:4;s:112:\"C:\\OpenServer\\domains\\localhost\\wordpress/wp-content/plugins/logaster-logo-generator/logaster-logo-generator.php\";i:5;s:83:\"C:\\OpenServer\\domains\\localhost\\wordpress/wp-content/themes/twentysixteen/index.php\";}', 'no'),
(40, 'template', 'twentyseventeen', 'yes'),
(41, 'stylesheet', 'twentyseventeen', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:3:{i:2;a:4:{s:5:\"title\";s:14:\"Новости\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}i:3;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:1;s:12:\"hierarchical\";i:1;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:9:{i:2;a:2:{s:5:\"title\";s:21:\"Найдите нас\";s:4:\"text\";s:258:\"<p><strong>Адрес</strong><br />123 Мейн стрит<br />Нью Йорк, NY 10001</p><p><strong>Часы</strong><br />Понедельник&mdash;пятница: 9:00&ndash;17:00<br />Суббота и воскресенье: 11:00&ndash;15:00</p>\";}i:3;a:2:{s:5:\"title\";s:13:\"О сайте\";s:4:\"text\";s:205:\"Здесь может быть отличное место для того, чтобы представить себя, свой сайт или выразить какие-то благодарности.\";}i:4;a:2:{s:5:\"title\";s:21:\"Найдите нас\";s:4:\"text\";s:258:\"<p><strong>Адрес</strong><br />123 Мейн стрит<br />Нью Йорк, NY 10001</p><p><strong>Часы</strong><br />Понедельник&mdash;пятница: 9:00&ndash;17:00<br />Суббота и воскресенье: 11:00&ndash;15:00</p>\";}i:5;a:2:{s:5:\"title\";s:13:\"О сайте\";s:4:\"text\";s:205:\"Здесь может быть отличное место для того, чтобы представить себя, свой сайт или выразить какие-то благодарности.\";}s:12:\"_multiwidget\";i:1;i:6;a:2:{s:5:\"title\";s:21:\"Найдите нас\";s:4:\"text\";s:258:\"<p><strong>Адрес</strong><br />123 Мейн стрит<br />Нью Йорк, NY 10001</p><p><strong>Часы</strong><br />Понедельник&mdash;пятница: 9:00&ndash;17:00<br />Суббота и воскресенье: 11:00&ndash;15:00</p>\";}i:7;a:2:{s:5:\"title\";s:13:\"О сайте\";s:4:\"text\";s:205:\"Здесь может быть отличное место для того, чтобы представить себя, свой сайт или выразить какие-то благодарности.\";}i:8;a:2:{s:5:\"title\";s:21:\"Найдите нас\";s:4:\"text\";s:258:\"<p><strong>Адрес</strong><br />123 Мейн стрит<br />Нью Йорк, NY 10001</p><p><strong>Часы</strong><br />Понедельник&mdash;пятница: 9:00&ndash;17:00<br />Суббота и воскресенье: 11:00&ndash;15:00</p>\";}i:9;a:2:{s:5:\"title\";s:13:\"О сайте\";s:4:\"text\";s:205:\"Здесь может быть отличное место для того, чтобы представить себя, свой сайт или выразить какие-то благодарности.\";}}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(84, 'page_on_front', '16', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'WPLANG', 'ru_RU', 'yes'),
(95, 'widget_search', 'a:4:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;i:3;a:1:{s:5:\"title\";s:10:\"Поиск\";}i:4;a:1:{s:5:\"title\";s:10:\"Поиск\";}}', 'yes'),
(96, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'sidebars_widgets', 'a:5:{s:19:\"wp_inactive_widgets\";a:10:{i:0;s:10:\"archives-2\";i:1;s:6:\"meta-2\";i:2;s:8:\"search-2\";i:3;s:6:\"text-2\";i:4;s:6:\"text-3\";i:5;s:6:\"text-4\";i:6;s:6:\"text-5\";i:7;s:12:\"categories-2\";i:8;s:14:\"recent-posts-2\";i:9;s:17:\"recent-comments-2\";}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-3\";i:1;s:6:\"text-6\";i:2;s:6:\"text-7\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(101, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'cron', 'a:4:{i:1490788837;a:3:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1490788870;a:1:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1490856307;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(106, 'nonce_key', '1Wdj9.x2kN6$cg*/RL._~zZe_!ZE2]h%v,z#v?h&9Qw>!f3+6Nj-k3j]CCEVk%#T', 'no'),
(107, 'nonce_salt', 'UQt*}vM@^q#<juwvqqs;&/0RZ?Opp5}bv;I+VI<D!j/a1;|]CAD,+q327{I3?p?C', 'no'),
(108, 'theme_mods_twentyseventeen', 'a:6:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:2:{s:3:\"top\";i:2;s:6:\"social\";i:3;}s:7:\"panel_1\";i:20;s:7:\"panel_2\";i:17;s:7:\"panel_3\";i:19;s:7:\"panel_4\";i:18;}', 'yes'),
(111, 'auth_key', 'oV-%s0G^apE+%V1C-nvU}Vq 9gSgV|qThn6FvV,X8yC,@(YaSOBb(U;2~(@5[hh,', 'no'),
(112, 'auth_salt', 'byfl$f}O+njl&`VuvCfuZPMkPo2a5f7slCnE7b}wAC:D6K~m yL?;9!2x<_WsO@Q', 'no'),
(113, 'logged_in_key', 'PGdT&IV[l%pkUGR:paA{~k>2WyJcLnA]O sNp+^I#O@ulcl10a-2[0Ts}v-rzz$F', 'no'),
(114, 'logged_in_salt', '3+KdAkiDB*n;>y`VerF>l(v;J&)o+f8Vhmb49.Dy@RvB;l6Dk&7!:pUVPON^ [X0', 'no'),
(122, '_site_transient_timeout_browser_f90f9d5b5a1bb1d6e2289490ecf74ebb', '1487160071', 'no'),
(123, '_site_transient_browser_f90f9d5b5a1bb1d6e2289490ecf74ebb', 'a:9:{s:8:\"platform\";s:7:\"Windows\";s:4:\"name\";s:7:\"Firefox\";s:7:\"version\";s:4:\"50.0\";s:10:\"update_url\";s:23:\"http://www.firefox.com/\";s:7:\"img_src\";s:50:\"http://s.wordpress.org/images/browsers/firefox.png\";s:11:\"img_src_ssl\";s:49:\"https://wordpress.org/images/browsers/firefox.png\";s:15:\"current_version\";s:2:\"16\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;}', 'no'),
(129, 'can_compress_scripts', '1', 'no'),
(157, 'nav_menu_options', 'a:1:{s:8:\"auto_add\";a:0:{}}', 'yes'),
(173, 'current_theme', 'Twenty Seventeen', 'yes'),
(174, 'theme_mods_twentysixteen', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:3:{s:3:\"top\";i:2;s:6:\"social\";i:3;s:7:\"primary\";i:2;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1490772758;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:10:{i:0;s:10:\"archives-2\";i:1;s:6:\"meta-2\";i:2;s:8:\"search-2\";i:3;s:6:\"text-2\";i:4;s:6:\"text-3\";i:5;s:6:\"text-4\";i:6;s:6:\"text-5\";i:7;s:12:\"categories-2\";i:8;s:14:\"recent-posts-2\";i:9;s:17:\"recent-comments-2\";}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-3\";i:1;s:6:\"text-6\";i:2;s:6:\"text-7\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(175, 'theme_switched', '', 'yes'),
(201, 'recently_activated', 'a:0:{}', 'yes'),
(223, 'dslc_version', 'a:1:{i:0;s:5:\"1.2.4\";}', 'yes'),
(265, 'widget_beautiful-taxonomy-filters-widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(266, 'widget_beautiful-taxonomy-filters-info-widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(267, 'beautiful_taxonomy_filters_version', '2.2.1', 'yes'),
(273, 'rewrite_rules', 'a:90:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=16&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(274, 'beautiful_taxonomy_filters_post_types', '', 'yes'),
(275, 'beautiful_taxonomy_filters_taxonomies', '', 'yes'),
(276, 'beautiful_taxonomy_filters_automagic', 'a:1:{i:0;s:5:\"above\";}', 'yes'),
(277, 'beautiful_taxonomy_filters_styles', 'basic', 'yes'),
(278, 'beautiful_taxonomy_filters_custom_css', '', 'yes'),
(285, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:3:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-4.7.3.zip\";s:6:\"locale\";s:5:\"ru_RU\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-4.7.3.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.7.3\";s:7:\"version\";s:5:\"4.7.3\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.7.3.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.7.3.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.7.3-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.7.3-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-4.7.3-partial-2.zip\";s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.7.3\";s:7:\"version\";s:5:\"4.7.3\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:5:\"4.7.2\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-4.7.3.zip\";s:6:\"locale\";s:5:\"ru_RU\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-4.7.3.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.7.3\";s:7:\"version\";s:5:\"4.7.3\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}}s:12:\"last_checked\";i:1490771753;s:15:\"version_checked\";s:5:\"4.7.2\";s:12:\"translations\";a:1:{i:0;a:7:{s:4:\"type\";s:4:\"core\";s:4:\"slug\";s:7:\"default\";s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-03-03 06:09:17\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ru_RU.zip\";s:10:\"autoupdate\";b:1;}}}', 'no'),
(286, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1490771747;s:7:\"checked\";a:3:{s:13:\"twentyfifteen\";s:3:\"1.7\";s:15:\"twentyseventeen\";s:3:\"1.1\";s:13:\"twentysixteen\";s:3:\"1.3\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(288, '_site_transient_timeout_browser_ec09c1f205a8c9a567166203a7884107', '1490717178', 'no'),
(289, '_site_transient_browser_ec09c1f205a8c9a567166203a7884107', 'a:9:{s:8:\"platform\";s:7:\"Windows\";s:4:\"name\";s:7:\"Firefox\";s:7:\"version\";s:4:\"52.0\";s:10:\"update_url\";s:23:\"http://www.firefox.com/\";s:7:\"img_src\";s:50:\"http://s.wordpress.org/images/browsers/firefox.png\";s:11:\"img_src_ssl\";s:49:\"https://wordpress.org/images/browsers/firefox.png\";s:15:\"current_version\";s:2:\"16\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;}', 'no'),
(305, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1490771741;s:7:\"checked\";a:5:{s:19:\"akismet/akismet.php\";s:3:\"3.3\";s:57:\"beautiful-taxonomy-filters/beautiful-taxonomy-filters.php\";s:5:\"2.2.1\";s:9:\"hello.php\";s:3:\"1.6\";s:51:\"logaster-logo-generator/logaster-logo-generator.php\";s:3:\"1.3\";s:47:\"live-composer-page-builder/ds-live-composer.php\";s:5:\"1.2.6\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:5:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":6:{s:2:\"id\";s:2:\"15\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:3:\"3.3\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/plugin/akismet.3.3.zip\";}s:57:\"beautiful-taxonomy-filters/beautiful-taxonomy-filters.php\";O:8:\"stdClass\":6:{s:2:\"id\";s:5:\"54737\";s:4:\"slug\";s:26:\"beautiful-taxonomy-filters\";s:6:\"plugin\";s:57:\"beautiful-taxonomy-filters/beautiful-taxonomy-filters.php\";s:11:\"new_version\";s:5:\"2.2.1\";s:3:\"url\";s:57:\"https://wordpress.org/plugins/beautiful-taxonomy-filters/\";s:7:\"package\";s:75:\"https://downloads.wordpress.org/plugin/beautiful-taxonomy-filters.2.2.1.zip\";}s:9:\"hello.php\";O:8:\"stdClass\":6:{s:2:\"id\";s:4:\"3564\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";}s:51:\"logaster-logo-generator/logaster-logo-generator.php\";O:8:\"stdClass\":7:{s:2:\"id\";s:5:\"68858\";s:4:\"slug\";s:23:\"logaster-logo-generator\";s:6:\"plugin\";s:51:\"logaster-logo-generator/logaster-logo-generator.php\";s:11:\"new_version\";s:3:\"1.3\";s:3:\"url\";s:54:\"https://wordpress.org/plugins/logaster-logo-generator/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/logaster-logo-generator.1.3.zip\";s:14:\"upgrade_notice\";s:22:\"Added support for cURL\";}s:47:\"live-composer-page-builder/ds-live-composer.php\";O:8:\"stdClass\":6:{s:2:\"id\";s:5:\"63950\";s:4:\"slug\";s:26:\"live-composer-page-builder\";s:6:\"plugin\";s:47:\"live-composer-page-builder/ds-live-composer.php\";s:11:\"new_version\";s:5:\"1.2.6\";s:3:\"url\";s:57:\"https://wordpress.org/plugins/live-composer-page-builder/\";s:7:\"package\";s:75:\"https://downloads.wordpress.org/plugin/live-composer-page-builder.1.2.6.zip\";}}}', 'no'),
(323, '_transient_timeout_plugin_slugs', '1490859806', 'no'),
(324, '_transient_plugin_slugs', 'a:2:{i:0;s:19:\"akismet/akismet.php\";i:1;s:9:\"hello.php\";}', 'no'),
(325, '_transient_timeout_dash_f69de0bbfe7eaa113146875f40c02000', '1490814287', 'no'),
(326, '_transient_dash_f69de0bbfe7eaa113146875f40c02000', '<div class=\"rss-widget\"><p><strong>Ошибка RSS:</strong> WP HTTP Error: cURL error 7: Failed to connect to wordpress.org port 80: Timed out</p></div><div class=\"rss-widget\"><p><strong>Ошибка RSS:</strong> WP HTTP Error: cURL error 7: Failed to connect to planet.wordpress.org port 443: Timed out</p></div><div class=\"rss-widget\"><ul></ul></div>', 'no'),
(351, 'category_children', 'a:0:{}', 'yes'),
(360, '_site_transient_timeout_wporg_theme_feature_list', '1490783261', 'no'),
(361, '_site_transient_wporg_theme_feature_list', 'a:0:{}', 'no'),
(363, '_transient_twentysixteen_categories', '2', 'yes'),
(364, 'theme_mods_twentyfifteen', 'a:1:{s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(366, 'theme_switched_via_customizer', '', 'yes'),
(367, 'customize_stashed_theme_mods', 'a:0:{}', 'no'),
(371, '_site_transient_timeout_theme_roots', '1490774657', 'no'),
(372, '_site_transient_theme_roots', 'a:3:{s:13:\"twentyfifteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no'),
(376, '_transient_is_multi_author', '0', 'yes');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(23, 13, '_wp_attached_file', '2017/02/espresso-1.jpg'),
(24, 13, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:4:\"file\";s:22:\"2017/02/espresso-1.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"espresso-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"espresso-1-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"espresso-1-768x461.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:461;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"espresso-1-1024x614.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:614;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:22:\"espresso-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(25, 13, '_starter_content_theme', 'twentyseventeen'),
(27, 14, '_wp_attached_file', '2017/02/sandwich-1.jpg'),
(28, 14, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:4:\"file\";s:22:\"2017/02/sandwich-1.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"sandwich-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"sandwich-1-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"sandwich-1-768x461.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:461;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"sandwich-1-1024x614.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:614;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:22:\"sandwich-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(29, 14, '_starter_content_theme', 'twentyseventeen'),
(31, 15, '_wp_attached_file', '2017/02/coffee-1.jpg'),
(32, 15, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:4:\"file\";s:20:\"2017/02/coffee-1.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"coffee-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"coffee-1-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"coffee-1-768x461.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:461;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"coffee-1-1024x614.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:614;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:20:\"coffee-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(33, 15, '_starter_content_theme', 'twentyseventeen'),
(45, 29, '_menu_item_type', 'custom'),
(46, 29, '_menu_item_menu_item_parent', '0'),
(47, 29, '_menu_item_object_id', '29'),
(48, 29, '_menu_item_object', 'custom'),
(49, 29, '_menu_item_target', ''),
(50, 29, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(51, 29, '_menu_item_xfn', ''),
(52, 29, '_menu_item_url', 'http://localhost:8080/wordpress'),
(77, 33, '_menu_item_type', 'custom'),
(78, 33, '_menu_item_menu_item_parent', '0'),
(79, 33, '_menu_item_object_id', '33'),
(80, 33, '_menu_item_object', 'custom'),
(81, 33, '_menu_item_target', ''),
(82, 33, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(83, 33, '_menu_item_xfn', ''),
(84, 33, '_menu_item_url', 'https://www.yelp.com'),
(85, 34, '_menu_item_type', 'custom'),
(86, 34, '_menu_item_menu_item_parent', '0'),
(87, 34, '_menu_item_object_id', '34'),
(88, 34, '_menu_item_object', 'custom'),
(89, 34, '_menu_item_target', ''),
(90, 34, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(91, 34, '_menu_item_xfn', ''),
(92, 34, '_menu_item_url', 'https://www.facebook.com/wordpress'),
(93, 35, '_menu_item_type', 'custom'),
(94, 35, '_menu_item_menu_item_parent', '0'),
(95, 35, '_menu_item_object_id', '35'),
(96, 35, '_menu_item_object', 'custom'),
(97, 35, '_menu_item_target', ''),
(98, 35, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(99, 35, '_menu_item_xfn', ''),
(100, 35, '_menu_item_url', 'https://twitter.com/wordpress'),
(101, 36, '_menu_item_type', 'custom'),
(102, 36, '_menu_item_menu_item_parent', '0'),
(103, 36, '_menu_item_object_id', '36'),
(104, 36, '_menu_item_object', 'custom'),
(105, 36, '_menu_item_target', ''),
(106, 36, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(107, 36, '_menu_item_xfn', ''),
(108, 36, '_menu_item_url', 'https://www.instagram.com/explore/tags/wordcamp/'),
(109, 37, '_menu_item_type', 'custom'),
(110, 37, '_menu_item_menu_item_parent', '0'),
(111, 37, '_menu_item_object_id', '37'),
(112, 37, '_menu_item_object', 'custom'),
(113, 37, '_menu_item_target', ''),
(114, 37, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(115, 37, '_menu_item_xfn', ''),
(116, 37, '_menu_item_url', 'mailto:wordpress@example.com'),
(154, 41, '_edit_last', '1'),
(155, 41, '_edit_lock', '1490771632:1'),
(156, 44, '_edit_last', '1'),
(157, 44, '_edit_lock', '1490771648:1'),
(158, 46, '_edit_last', '1'),
(159, 46, '_edit_lock', '1487143228:1'),
(160, 48, '_edit_last', '1'),
(161, 48, '_edit_lock', '1490773058:1'),
(162, 16, '_edit_lock', '1487143031:1'),
(208, 55, '_edit_last', '1'),
(209, 55, '_edit_lock', '1487143622:1'),
(221, 61, '_edit_last', '1'),
(222, 61, '_edit_lock', '1490112750:1'),
(225, 63, '_edit_last', '1'),
(226, 63, '_edit_lock', '1490112874:1'),
(229, 65, '_edit_last', '1'),
(230, 65, '_edit_lock', '1490113346:1'),
(233, 67, '_edit_last', '1'),
(234, 67, '_edit_lock', '1490772883:1'),
(237, 69, '_edit_last', '1'),
(238, 69, '_edit_lock', '1490773262:1'),
(241, 71, '_wp_trash_meta_status', 'publish'),
(242, 71, '_wp_trash_meta_time', '1490114158'),
(243, 1, '_wp_trash_meta_status', 'publish'),
(244, 1, '_wp_trash_meta_time', '1490114213'),
(245, 1, '_wp_desired_post_slug', '%d0%bf%d1%80%d0%b8%d0%b2%d0%b5%d1%82-%d0%bc%d0%b8%d1%80'),
(246, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(259, 77, '_menu_item_type', 'taxonomy'),
(260, 77, '_menu_item_menu_item_parent', '0'),
(261, 77, '_menu_item_object_id', '1'),
(262, 77, '_menu_item_object', 'category'),
(263, 77, '_menu_item_target', ''),
(264, 77, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(265, 77, '_menu_item_xfn', ''),
(266, 77, '_menu_item_url', ''),
(267, 77, '_menu_item_orphaned', '1490771950'),
(268, 78, '_menu_item_type', 'taxonomy'),
(269, 78, '_menu_item_menu_item_parent', '0'),
(270, 78, '_menu_item_object_id', '6'),
(271, 78, '_menu_item_object', 'category'),
(272, 78, '_menu_item_target', ''),
(273, 78, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(274, 78, '_menu_item_xfn', ''),
(275, 78, '_menu_item_url', ''),
(286, 80, '_wp_trash_meta_status', 'publish'),
(287, 80, '_wp_trash_meta_time', '1490772353'),
(288, 81, '_wp_trash_meta_status', 'publish'),
(289, 81, '_wp_trash_meta_time', '1490772758');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2017-02-08 15:00:35', '2017-02-08 12:00:35', 'Добро пожаловать в WordPress. Это ваша первая запись. Отредактируйте или удалите её, затем пишите!', 'Привет, мир!', '', 'trash', 'open', 'open', '', '%d0%bf%d1%80%d0%b8%d0%b2%d0%b5%d1%82-%d0%bc%d0%b8%d1%80__trashed', '', '', '2017-03-21 19:36:53', '2017-03-21 16:36:53', '', 0, 'http://localhost:8080/wordpress/?p=1', 0, 'post', '', 1),
(13, 1, '2017-02-08 18:55:40', '2017-02-08 15:55:40', '', 'Эспрессо', '', 'inherit', 'open', 'closed', '', '%d1%8d%d1%81%d0%bf%d1%80%d0%b5%d1%81%d1%81%d0%be', '', '', '2017-02-08 18:55:40', '2017-02-08 15:55:40', '', 0, 'http://localhost:8080/wordpress/wp-content/uploads/2017/02/espresso-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(14, 1, '2017-02-08 18:55:40', '2017-02-08 15:55:40', '', 'Сэндвич', '', 'inherit', 'open', 'closed', '', '%d1%81%d1%8d%d0%bd%d0%b4%d0%b2%d0%b8%d1%87', '', '', '2017-02-08 18:55:40', '2017-02-08 15:55:40', '', 0, 'http://localhost:8080/wordpress/wp-content/uploads/2017/02/sandwich-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(15, 1, '2017-02-08 18:55:40', '2017-02-08 15:55:40', '', 'Кофе', '', 'inherit', 'open', 'closed', '', '%d0%ba%d0%be%d1%84%d0%b5', '', '', '2017-02-08 18:55:40', '2017-02-08 15:55:40', '', 0, 'http://localhost:8080/wordpress/wp-content/uploads/2017/02/coffee-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(16, 1, '2017-02-08 18:55:40', '2017-02-08 15:55:40', 'Добро пожаловать на ваш сайт! Это ваша главная страница, которую большинство посетителей увидят зайдя на ваш сайт в первый раз.', 'Главная страница', '', 'publish', 'closed', 'closed', '', '%d0%b3%d0%bb%d0%b0%d0%b2%d0%bd%d0%b0%d1%8f-%d1%81%d1%82%d1%80%d0%b0%d0%bd%d0%b8%d1%86%d0%b0', '', '', '2017-02-08 18:55:40', '2017-02-08 15:55:40', '', 0, 'http://localhost:8080/wordpress/?page_id=16', 0, 'page', '', 0),
(23, 1, '2017-02-08 18:55:40', '2017-02-08 15:55:40', 'Добро пожаловать на ваш сайт! Это ваша главная страница, которую большинство посетителей увидят зайдя на ваш сайт в первый раз.', 'Главная страница', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2017-02-08 18:55:40', '2017-02-08 15:55:40', '', 16, 'http://localhost:8080/wordpress/2017/02/08/16-revision-v1/', 0, 'revision', '', 0),
(29, 1, '2017-02-08 18:55:40', '2017-02-08 15:55:40', '', 'Главная страница', '', 'publish', 'closed', 'closed', '', '%d0%b3%d0%bb%d0%b0%d0%b2%d0%bd%d0%b0%d1%8f-%d1%81%d1%82%d1%80%d0%b0%d0%bd%d0%b8%d1%86%d0%b0', '', '', '2017-03-29 10:24:46', '2017-03-29 07:24:46', '', 0, 'http://localhost:8080/wordpress/2017/02/08/%d0%b3%d0%bb%d0%b0%d0%b2%d0%bd%d0%b0%d1%8f-%d1%81%d1%82%d1%80%d0%b0%d0%bd%d0%b8%d1%86%d0%b0/', 1, 'nav_menu_item', '', 0),
(33, 1, '2017-02-08 18:55:41', '2017-02-08 15:55:41', '', 'Yelp', '', 'publish', 'closed', 'closed', '', 'yelp', '', '', '2017-02-08 18:55:41', '2017-02-08 15:55:41', '', 0, 'http://localhost:8080/wordpress/2017/02/08/yelp/', 0, 'nav_menu_item', '', 0),
(34, 1, '2017-02-08 18:55:41', '2017-02-08 15:55:41', '', 'Facebook', '', 'publish', 'closed', 'closed', '', 'facebook', '', '', '2017-02-08 18:55:41', '2017-02-08 15:55:41', '', 0, 'http://localhost:8080/wordpress/2017/02/08/facebook/', 1, 'nav_menu_item', '', 0),
(35, 1, '2017-02-08 18:55:41', '2017-02-08 15:55:41', '', 'Twitter', '', 'publish', 'closed', 'closed', '', 'twitter', '', '', '2017-02-08 18:55:41', '2017-02-08 15:55:41', '', 0, 'http://localhost:8080/wordpress/2017/02/08/twitter/', 2, 'nav_menu_item', '', 0),
(36, 1, '2017-02-08 18:55:41', '2017-02-08 15:55:41', '', 'Instagram', '', 'publish', 'closed', 'closed', '', 'instagram', '', '', '2017-02-08 18:55:41', '2017-02-08 15:55:41', '', 0, 'http://localhost:8080/wordpress/2017/02/08/instagram/', 3, 'nav_menu_item', '', 0),
(37, 1, '2017-02-08 18:55:41', '2017-02-08 15:55:41', '', 'Email', '', 'publish', 'closed', 'closed', '', 'email', '', '', '2017-02-08 18:55:41', '2017-02-08 15:55:41', '', 0, 'http://localhost:8080/wordpress/2017/02/08/email/', 4, 'nav_menu_item', '', 0),
(41, 1, '2017-02-15 10:21:41', '2017-02-15 07:21:41', '', 'О факультете', '', 'publish', 'closed', 'closed', '', '%d0%be-%d1%84%d0%b0%d0%ba%d1%83%d0%bb%d1%8c%d1%82%d0%b5%d1%82%d0%b5', '', '', '2017-03-29 10:13:52', '2017-03-29 07:13:52', '', 0, 'http://localhost:8080/wordpress/?page_id=41', 0, 'page', '', 0),
(42, 1, '2017-02-15 09:46:32', '2017-02-15 06:46:32', '', 'О факультете', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2017-02-15 09:46:32', '2017-02-15 06:46:32', '', 41, 'http://localhost:8080/wordpress/2017/02/15/41-revision-v1/', 0, 'revision', '', 0),
(44, 1, '2017-02-15 10:21:11', '2017-02-15 07:21:11', '', 'Абитуриентам', '', 'publish', 'closed', 'closed', '', '%d0%b0%d0%b1%d0%b8%d1%82%d1%83%d1%80%d0%b8%d0%b5%d0%bd%d1%82%d0%b0%d0%bc', '', '', '2017-02-15 10:21:11', '2017-02-15 07:21:11', '', 0, 'http://localhost:8080/wordpress/?page_id=44', 0, 'page', '', 0),
(45, 1, '2017-02-15 10:13:50', '2017-02-15 07:13:50', '', 'Абитуриентам', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2017-02-15 10:13:50', '2017-02-15 07:13:50', '', 44, 'http://localhost:8080/wordpress/2017/02/15/44-revision-v1/', 0, 'revision', '', 0),
(46, 1, '2017-02-15 10:22:41', '2017-02-15 07:22:41', '', 'Студентам', '', 'publish', 'closed', 'closed', '', '%d1%81%d1%82%d1%83%d0%b4%d0%b5%d0%bd%d1%82%d0%b0%d0%bc', '', '', '2017-02-15 10:22:41', '2017-02-15 07:22:41', '', 0, 'http://localhost:8080/wordpress/?page_id=46', 0, 'page', '', 0),
(47, 1, '2017-02-15 10:15:04', '2017-02-15 07:15:04', '', 'Студентам', '', 'inherit', 'closed', 'closed', '', '46-revision-v1', '', '', '2017-02-15 10:15:04', '2017-02-15 07:15:04', '', 46, 'http://localhost:8080/wordpress/2017/02/15/46-revision-v1/', 0, 'revision', '', 0),
(48, 1, '2017-02-15 10:20:27', '2017-02-15 07:20:27', '', 'Новости', '', 'publish', 'closed', 'closed', '', '%d0%bd%d0%be%d0%b2%d0%be%d1%81%d1%82%d0%b8', '', '', '2017-03-29 10:13:02', '2017-03-29 07:13:02', '', 0, 'http://localhost:8080/wordpress/?page_id=48', 0, 'page', '', 0),
(49, 1, '2017-02-15 10:15:55', '2017-02-15 07:15:55', '', 'Новости', '', 'inherit', 'closed', 'closed', '', '48-revision-v1', '', '', '2017-02-15 10:15:55', '2017-02-15 07:15:55', '', 48, 'http://localhost:8080/wordpress/2017/02/15/48-revision-v1/', 0, 'revision', '', 0),
(55, 1, '2017-02-15 10:29:14', '2017-02-15 07:29:14', '', 'Личный кабинет', '', 'publish', 'closed', 'closed', '', '%d0%bb%d0%b8%d1%87%d0%bd%d1%8b%d0%b9-%d0%ba%d0%b0%d0%b1%d0%b8%d0%bd%d0%b5%d1%82', '', '', '2017-02-15 10:29:14', '2017-02-15 07:29:14', '', 0, 'http://localhost:8080/wordpress/?page_id=55', 0, 'page', '', 0),
(56, 1, '2017-02-15 10:27:50', '2017-02-15 07:27:50', '', 'Личный кабинет', '', 'inherit', 'closed', 'closed', '', '55-revision-v1', '', '', '2017-02-15 10:27:50', '2017-02-15 07:27:50', '', 55, 'http://localhost:8080/wordpress/2017/02/15/55-revision-v1/', 0, 'revision', '', 0),
(61, 1, '2017-03-21 19:14:07', '2017-03-21 16:14:07', 'Студентам 3 курса ИТФ, необходимо подойти в деканат за паролями в личный кабинет', 'Пароли в личный кабинет', '', 'publish', 'open', 'open', '', '%d0%bf%d0%b0%d1%80%d0%be%d0%bb%d0%b8-%d0%b2-%d0%bb%d0%b8%d1%87%d0%bd%d1%8b%d0%b9-%d0%ba%d0%b0%d0%b1%d0%b8%d0%bd%d0%b5%d1%82', '', '', '2017-03-21 19:14:07', '2017-03-21 16:14:07', '', 0, 'http://localhost:8080/wordpress/?p=61', 0, 'post', '', 0),
(62, 1, '2017-03-21 19:13:50', '2017-03-21 16:13:50', 'Студентам 3 курса ИТФ, необходимо подойти в деканат за паролями в личный кабинет', 'Пароли в личный кабинет', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2017-03-21 19:13:50', '2017-03-21 16:13:50', '', 61, 'http://localhost:8080/wordpress/2017/03/21/61-revision-v1/', 0, 'revision', '', 0),
(63, 1, '2017-03-21 19:16:25', '2017-03-21 16:16:25', '<img class=\"emoji\" src=\"https://vk.com/images/emoji/D83DDCCD.png\" alt=\"📍\" /><img class=\"emoji\" src=\"https://vk.com/images/emoji/D83DDCCD.png\" alt=\"📍\" /><img class=\"emoji\" src=\"https://vk.com/images/emoji/D83DDCCD.png\" alt=\"📍\" />Студентам 4 курса ИТФ, необходимо подойти в деканат по графику:\r\nГруппа 3711 06.02.2017 в 15.00\r\nГруппа 3721 06.02.2017 в 16.30\r\nГруппа 3722 06.02.2017 в 14.50\r\nГруппа 3741 08.02.2017 в 11.15\r\nГруппа 3751 07.02.2017 в 14.50\r\nГруппа 3761 07.02.2017 в 15.00\r\n\r\nЯвка обязательна <img class=\"emoji\" src=\"https://vk.com/images/emoji/D83DDCCD.png\" alt=\"📍\" /><img class=\"emoji\" src=\"https://vk.com/images/emoji/D83DDCCC.png\" alt=\"📌\" /><img class=\"emoji\" src=\"https://vk.com/images/emoji/D83DDCCD.png\" alt=\"📍\" />', '4 курс в деканат', '', 'publish', 'open', 'open', '', '4-%d0%ba%d1%83%d1%80%d1%81-%d0%b2-%d0%b4%d0%b5%d0%ba%d0%b0%d0%bd%d0%b0%d1%82', '', '', '2017-03-21 19:16:25', '2017-03-21 16:16:25', '', 0, 'http://localhost:8080/wordpress/?p=63', 0, 'post', '', 0),
(64, 1, '2017-03-21 19:16:16', '2017-03-21 16:16:16', '<img class=\"emoji\" src=\"https://vk.com/images/emoji/D83DDCCD.png\" alt=\"📍\" /><img class=\"emoji\" src=\"https://vk.com/images/emoji/D83DDCCD.png\" alt=\"📍\" /><img class=\"emoji\" src=\"https://vk.com/images/emoji/D83DDCCD.png\" alt=\"📍\" />Студентам 4 курса ИТФ, необходимо подойти в деканат по графику:\r\nГруппа 3711 06.02.2017 в 15.00\r\nГруппа 3721 06.02.2017 в 16.30\r\nГруппа 3722 06.02.2017 в 14.50\r\nГруппа 3741 08.02.2017 в 11.15\r\nГруппа 3751 07.02.2017 в 14.50\r\nГруппа 3761 07.02.2017 в 15.00\r\n\r\nЯвка обязательна <img class=\"emoji\" src=\"https://vk.com/images/emoji/D83DDCCD.png\" alt=\"📍\" /><img class=\"emoji\" src=\"https://vk.com/images/emoji/D83DDCCC.png\" alt=\"📌\" /><img class=\"emoji\" src=\"https://vk.com/images/emoji/D83DDCCD.png\" alt=\"📍\" />', '4 курс в деканат', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2017-03-21 19:16:16', '2017-03-21 16:16:16', '', 63, 'http://localhost:8080/wordpress/2017/03/21/63-revision-v1/', 0, 'revision', '', 0),
(65, 1, '2017-03-21 19:22:38', '2017-03-21 16:22:38', 'Деканат ИТФ начинает прием заявок на Ректорский бал.\r\nОт ИТФ – 16 человек (3-4 курс и СПО). Заявки принимаются до 8 ноября!', 'Заявки на Ректорский бал', '', 'publish', 'open', 'open', '', '%d0%b7%d0%b0%d1%8f%d0%b2%d0%ba%d0%b8-%d0%bd%d0%b0-%d1%80%d0%b5%d0%ba%d1%82%d0%be%d1%80%d1%81%d0%ba%d0%b8%d0%b9-%d0%b1%d0%b0%d0%bb', '', '', '2017-03-21 19:22:38', '2017-03-21 16:22:38', '', 0, 'http://localhost:8080/wordpress/?p=65', 0, 'post', '', 0),
(66, 1, '2017-03-21 19:22:28', '2017-03-21 16:22:28', 'Деканат ИТФ начинает прием заявок на Ректорский бал.\r\nОт ИТФ – 16 человек (3-4 курс и СПО). Заявки принимаются до 8 ноября!', 'Заявки на Ректорский бал', '', 'inherit', 'closed', 'closed', '', '65-revision-v1', '', '', '2017-03-21 19:22:28', '2017-03-21 16:22:28', '', 65, 'http://localhost:8080/wordpress/2017/03/21/65-revision-v1/', 0, 'revision', '', 0),
(67, 1, '2017-03-21 19:26:21', '2017-03-21 16:26:21', 'Уважаемые студенты 3-го и 4-го курсов всех направлений ИТФ!\r\n\r\nУ всех групп в расписании в среду еженедельно с 13:20 стоит спецсеминар-практикум. В ближайшую среду, 7 сентября в 13:20 все группы собираются в ауд. 5-109.\r\n\r\nБудет проведено общее собрание 3 и 4 курсов. На собрании предполагается обсудить широкий спектр вопросов университетской жизни, в частности, связанные с прохождением практик и выполнением вами дипломных работ. Явка на собрание для всех студентов обязательна!\r\n\r\nВ конце собрания будет организационная планерка спецсеминара, будут объявлены списки секций спецсеминара (кто к какому преподавателю записан), студенты с преподавателями разойдутся по аудиториям.', 'Спецсеминар-практикум', '', 'publish', 'open', 'open', '', '%d1%81%d0%bf%d0%b5%d1%86%d1%81%d0%b5%d0%bc%d0%b8%d0%bd%d0%b0%d1%80-%d0%bf%d1%80%d0%b0%d0%ba%d1%82%d0%b8%d0%ba%d1%83%d0%bc', '', '', '2017-03-29 10:15:34', '2017-03-29 07:15:34', '', 0, 'http://localhost:8080/wordpress/?p=67', 0, 'post', '', 0),
(68, 1, '2017-03-21 19:26:13', '2017-03-21 16:26:13', 'Уважаемые студенты 3-го и 4-го курсов всех направлений ИТФ!\r\n\r\nУ всех групп в расписании в среду еженедельно с 13:20 стоит спецсеминар-практикум. В ближайшую среду, 7 сентября в 13:20 все группы собираются в ауд. 5-109.\r\n\r\nБудет проведено общее собрание 3 и 4 курсов. На собрании предполагается обсудить широкий спектр вопросов университетской жизни, в частности, связанные с прохождением практик и выполнением вами дипломных работ. Явка на собрание для всех студентов обязательна!\r\n\r\nВ конце собрания будет организационная планерка спецсеминара, будут объявлены списки секций спецсеминара (кто к какому преподавателю записан), студенты с преподавателями разойдутся по аудиториям.', 'Спецсеминар-практикум', '', 'inherit', 'closed', 'closed', '', '67-revision-v1', '', '', '2017-03-21 19:26:13', '2017-03-21 16:26:13', '', 67, 'http://localhost:8080/wordpress/2017/03/21/67-revision-v1/', 0, 'revision', '', 0),
(69, 1, '2017-03-21 19:30:22', '2017-03-21 16:30:22', 'Внимание!\r\nНачалась контрольная неделя ИТФ 1-3 курса.', 'Контрольная неделя', '', 'publish', 'open', 'open', '', '%d0%ba%d0%be%d0%bd%d1%82%d1%80%d0%be%d0%bb%d1%8c%d0%bd%d0%b0%d1%8f-%d0%bd%d0%b5%d0%b4%d0%b5%d0%bb%d1%8f', '', '', '2017-03-29 10:41:35', '2017-03-29 07:41:35', '', 0, 'http://localhost:8080/wordpress/?p=69', 0, 'post', '', 0),
(70, 1, '2017-03-21 19:30:13', '2017-03-21 16:30:13', 'Внимание!\r\nНачалась контрольная неделя ИТФ 1-3 курса.', 'Контрольная неделя', '', 'inherit', 'closed', 'closed', '', '69-revision-v1', '', '', '2017-03-21 19:30:13', '2017-03-21 16:30:13', '', 69, 'http://localhost:8080/wordpress/2017/03/21/69-revision-v1/', 0, 'revision', '', 0),
(71, 1, '2017-03-21 19:35:58', '2017-03-21 16:35:58', '{\n    \"nav_menu_item[51]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1\n    },\n    \"nav_menu_item[52]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1\n    },\n    \"nav_menu_item[50]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1\n    },\n    \"nav_menu_item[57]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '06ba59e9-f217-4e78-845e-db1cb5502448', '', '', '2017-03-21 19:35:58', '2017-03-21 16:35:58', '', 0, 'http://localhost:8080/wordpress/?p=71', 0, 'customize_changeset', '', 0),
(72, 1, '2017-03-21 19:36:53', '2017-03-21 16:36:53', 'Добро пожаловать в WordPress. Это ваша первая запись. Отредактируйте или удалите её, затем пишите!', 'Привет, мир!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2017-03-21 19:36:53', '2017-03-21 16:36:53', '', 1, 'http://localhost:8080/wordpress/2017/03/21/1-revision-v1/', 0, 'revision', '', 0),
(75, 1, '2017-03-29 10:14:31', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-03-29 10:14:31', '0000-00-00 00:00:00', '', 0, 'http://localhost:8080/wordpress/?p=75', 0, 'post', '', 0),
(76, 1, '2017-03-29 10:14:36', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-03-29 10:14:36', '0000-00-00 00:00:00', '', 0, 'http://localhost:8080/wordpress/?p=76', 0, 'post', '', 0),
(77, 1, '2017-03-29 10:19:10', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-03-29 10:19:10', '0000-00-00 00:00:00', '', 0, 'http://localhost:8080/wordpress/?p=77', 1, 'nav_menu_item', '', 0),
(78, 1, '2017-03-29 10:19:30', '2017-03-29 07:19:30', ' ', '', '', 'publish', 'closed', 'closed', '', '78', '', '', '2017-03-29 10:24:46', '2017-03-29 07:24:46', '', 0, 'http://localhost:8080/wordpress/?p=78', 2, 'nav_menu_item', '', 0),
(80, 1, '2017-03-29 10:25:53', '2017-03-29 07:25:53', '{\n    \"sidebars_widgets[sidebar-2]\": {\n        \"value\": [],\n        \"type\": \"option\",\n        \"user_id\": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '15df2dfa-99f6-44e3-bd89-134bed7c1d25', '', '', '2017-03-29 10:25:53', '2017-03-29 07:25:53', '', 0, 'http://localhost:8080/wordpress/?p=80', 0, 'customize_changeset', '', 0),
(81, 1, '2017-03-29 10:32:38', '2017-03-29 07:32:38', '{\n    \"old_sidebars_widgets_data\": {\n        \"value\": {\n            \"wp_inactive_widgets\": [\n                \"archives-2\",\n                \"meta-2\",\n                \"search-2\",\n                \"text-2\",\n                \"text-3\",\n                \"text-4\",\n                \"text-5\",\n                \"categories-2\",\n                \"recent-posts-2\",\n                \"recent-comments-2\"\n            ],\n            \"sidebar-1\": [\n                \"search-3\",\n                \"text-6\",\n                \"text-7\"\n            ],\n            \"sidebar-2\": [],\n            \"sidebar-3\": []\n        },\n        \"type\": \"global_variable\",\n        \"user_id\": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '7f293ad1-93d6-4551-84f3-af3114931729', '', '', '2017-03-29 10:32:38', '2017-03-29 07:32:38', '', 0, 'http://localhost:8080/wordpress/?p=81', 0, 'customize_changeset', '', 0),
(82, 1, '2017-03-29 10:33:25', '0000-00-00 00:00:00', '{\n    \"twentyseventeen::header_image\": {\n        \"value\": \"remove-header\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"twentyseventeen::header_image_data\": {\n        \"value\": \"remove-header\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '030723e8-f404-4729-a1a9-8df2a96dd72b', '', '', '2017-03-29 10:33:25', '0000-00-00 00:00:00', '', 0, 'http://localhost:8080/wordpress/?p=82', 0, 'customize_changeset', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Без рубрики', '%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8', 0),
(2, 'Верхнее меню', '%d0%b2%d0%b5%d1%80%d1%85%d0%bd%d0%b5%d0%b5-%d0%bc%d0%b5%d0%bd%d1%8e', 0),
(3, 'Меню социальных ссылок', '%d0%bc%d0%b5%d0%bd%d1%8e-%d1%81%d0%be%d1%86%d0%b8%d0%b0%d0%bb%d1%8c%d0%bd%d1%8b%d1%85-%d1%81%d1%81%d1%8b%d0%bb%d0%be%d0%ba', 0),
(4, 'post-format-aside', 'post-format-aside', 0),
(5, 'post-format-quote', 'post-format-quote', 0),
(6, 'Новости', '%d0%bd%d0%be%d0%b2%d0%be%d1%81%d1%82%d0%b8', 0),
(7, '2133', '2133', 0),
(8, 'ИТФ', '%d0%b8%d1%82%d1%84', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(29, 2, 0),
(33, 3, 0),
(34, 3, 0),
(35, 3, 0),
(36, 3, 0),
(37, 3, 0),
(61, 1, 0),
(63, 1, 0),
(65, 1, 0),
(67, 6, 0),
(69, 6, 0),
(69, 8, 0),
(78, 2, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 3),
(2, 2, 'nav_menu', '', 0, 2),
(3, 3, 'nav_menu', '', 0, 5),
(4, 4, 'post_format', '', 0, 0),
(5, 5, 'post_format', '', 0, 0),
(6, 6, 'category', '', 0, 2),
(7, 7, 'post_tag', '', 0, 0),
(8, 8, 'post_tag', '', 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'locale', ''),
(11, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(12, 1, 'wp_user_level', '10'),
(13, 1, 'dismissed_wp_pointers', ''),
(14, 1, 'show_welcome_panel', '1'),
(15, 1, 'session_tokens', 'a:1:{s:64:\"538dfb6afcc7e235188e8423a1857c5d756b3336c86d37bbc5c674992c69311b\";a:4:{s:10:\"expiration\";i:1490943844;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:108:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.75 Safari/537.36\";s:5:\"login\";i:1490771044;}}'),
(16, 1, 'wp_dashboard_quick_press_last_post_id', '76'),
(17, 1, 'nav_menu_recently_edited', '2'),
(18, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:\"add-post_tag\";i:1;s:15:\"add-post_format\";}'),
(20, 1, 'wp_user-settings', 'editor=tinymce&mfold=o'),
(21, 1, 'wp_user-settings-time', '1490772620'),
(22, 1, 'closedpostboxes_post', 'a:0:{}'),
(23, 1, 'metaboxhidden_post', 'a:7:{i:0;s:11:\"postexcerpt\";i:1;s:13:\"trackbacksdiv\";i:2;s:10:\"postcustom\";i:3;s:16:\"commentstatusdiv\";i:4;s:11:\"commentsdiv\";i:5;s:7:\"slugdiv\";i:6;s:9:\"authordiv\";}');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BHuOUgNfPVgsvlXU92cXfMOoWfJs4V1', 'admin', 'kazakova_lyusya@inbox.ru', '', '2017-02-08 12:00:35', '', 0, 'admin');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Индексы таблицы `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Индексы таблицы `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Индексы таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Индексы таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Индексы таблицы `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Индексы таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Индексы таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=377;
--
-- AUTO_INCREMENT для таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=296;
--
-- AUTO_INCREMENT для таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;
--
-- AUTO_INCREMENT для таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT для таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT для таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT для таблицы `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
