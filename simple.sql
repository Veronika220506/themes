-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Дек 05 2021 г., 11:55
-- Версия сервера: 10.4.17-MariaDB
-- Версия PHP: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `simple`
--

-- --------------------------------------------------------

--
-- Структура таблицы `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Автор комментария', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2021-11-28 15:04:39', '2021-11-28 12:04:39', 'Привет! Это комментарий.\nЧтобы начать модерировать, редактировать и удалять комментарии, перейдите на экран «Комментарии» в консоли.\nАватары авторов комментариев загружаются с сервиса <a href=\"https://ru.gravatar.com\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

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
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
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
(1, 'siteurl', 'http://localhost/simple', 'yes'),
(2, 'home', 'http://localhost/simple', 'yes'),
(3, 'blogname', 'Travel', 'yes'),
(4, 'blogdescription', 'Ещё один сайт на WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'veronikakravchenko22@gmail.com', 'yes'),
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
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'd.m.Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'd.m.Y H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:94:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:22:\"cyr2lat/cyr-to-lat.php\";i:1;s:33:\"instant-images/instant-images.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '3', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'twentytwentyone', 'yes'),
(41, 'stylesheet', 'twentytwentyone-child', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '49752', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '0', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'posts', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '0', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1653653079', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '49752', 'yes'),
(100, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(101, 'fresh_site', '0', 'yes'),
(102, 'WPLANG', 'ru_RU', 'yes'),
(103, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:167:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Свежие записи</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:247:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Свежие комментарии</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Архивы</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Рубрики</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'yes'),
(105, 'cron', 'a:6:{i:1638702280;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1638705880;a:5:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1638705891;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1638705893;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1638792280;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(106, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'recovery_keys', 'a:0:{}', 'yes'),
(120, 'theme_mods_twentytwentyone', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:12;}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1638103777;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:9:\"sidebar-2\";a:0:{}}}}', 'yes'),
(121, 'https_detection_errors', 'a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:38:\"Проверка SSL неудачна.\";}}', 'yes'),
(131, '_site_transient_timeout_browser_b4088f046bf9a570f2964ffc86d258ff', '1638705892', 'no'),
(132, '_site_transient_browser_b4088f046bf9a570f2964ffc86d258ff', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"96.0.4664.45\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(133, '_site_transient_timeout_php_check_722257398ed85eaa39d12bc29012c839', '1638705893', 'no'),
(134, '_site_transient_php_check_722257398ed85eaa39d12bc29012c839', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(137, 'can_compress_scripts', '1', 'no'),
(151, 'finished_updating_comment_type', '1', 'yes'),
(155, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:30:\"veronikakravchenko22@gmail.com\";s:7:\"version\";s:5:\"5.8.2\";s:9:\"timestamp\";i:1638101157;}', 'no'),
(161, 'recently_activated', 'a:0:{}', 'yes'),
(165, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-5.8.2.zip\";s:6:\"locale\";s:5:\"ru_RU\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-5.8.2.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.8.2\";s:7:\"version\";s:5:\"5.8.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1638701485;s:15:\"version_checked\";s:5:\"5.8.2\";s:12:\"translations\";a:0:{}}', 'no'),
(167, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1638701485;s:7:\"checked\";a:5:{s:3:\"kit\";s:3:\"1.8\";s:14:\"twentynineteen\";s:3:\"2.1\";s:12:\"twentytwenty\";s:3:\"1.8\";s:21:\"twentytwentyone-child\";s:3:\"1.1\";s:15:\"twentytwentyone\";s:3:\"1.4\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:3:{s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"2.1\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.2.1.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.8\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.8.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.4\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.4.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}', 'no'),
(189, 'category_children', 'a:4:{i:2;a:1:{i:0;i:8;}i:4;a:1:{i:0;i:9;}i:3;a:1:{i:0;i:10;}i:5;a:1:{i:0;i:11;}}', 'yes'),
(193, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1638701485;s:8:\"response\";a:1:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.2.1\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.2.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.0\";s:6:\"tested\";s:5:\"5.8.2\";s:12:\"requires_php\";b:0;}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:22:\"cyr2lat/cyr-to-lat.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:21:\"w.org/plugins/cyr2lat\";s:4:\"slug\";s:7:\"cyr2lat\";s:6:\"plugin\";s:22:\"cyr2lat/cyr-to-lat.php\";s:11:\"new_version\";s:5:\"5.2.4\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/cyr2lat/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/cyr2lat.5.2.4.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:60:\"https://ps.w.org/cyr2lat/assets/icon-256x256.jpg?rev=2434252\";s:2:\"1x\";s:52:\"https://ps.w.org/cyr2lat/assets/icon.svg?rev=2498806\";s:3:\"svg\";s:52:\"https://ps.w.org/cyr2lat/assets/icon.svg?rev=2498806\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/cyr2lat/assets/banner-1544x500.png?rev=2434252\";s:2:\"1x\";s:62:\"https://ps.w.org/cyr2lat/assets/banner-772x250.png?rev=2434252\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.1\";}s:9:\"hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}s:33:\"instant-images/instant-images.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/instant-images\";s:4:\"slug\";s:14:\"instant-images\";s:6:\"plugin\";s:33:\"instant-images/instant-images.php\";s:11:\"new_version\";s:5:\"4.5.0\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/instant-images/\";s:7:\"package\";s:57:\"https://downloads.wordpress.org/plugin/instant-images.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/instant-images/assets/icon-256x256.png?rev=2504172\";s:2:\"1x\";s:67:\"https://ps.w.org/instant-images/assets/icon-128x128.png?rev=2504172\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:69:\"https://ps.w.org/instant-images/assets/banner-772x250.jpg?rev=2621458\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.0\";}}s:7:\"checked\";a:4:{s:19:\"akismet/akismet.php\";s:6:\"4.1.12\";s:22:\"cyr2lat/cyr-to-lat.php\";s:5:\"5.2.4\";s:9:\"hello.php\";s:5:\"1.7.2\";s:33:\"instant-images/instant-images.php\";s:5:\"4.5.0\";}}', 'no'),
(200, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(202, 'current_theme', 'Twenty Twenty One Child', 'yes'),
(203, 'theme_mods_twentytwenty', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:12;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1638102972;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'yes'),
(204, 'theme_switched', '', 'yes'),
(208, 'theme_mods_kit', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:12;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1638103265;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'yes'),
(211, 'theme_mods_twentytwentyone-child', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:12;}s:18:\"custom_css_post_id\";i:43;}', 'yes'),
(214, 'widget_recent-posts', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(215, 'widget_recent-comments', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(218, '_site_transient_timeout_theme_roots', '1638703285', 'no'),
(219, '_site_transient_theme_roots', 'a:5:{s:3:\"kit\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";s:21:\"twentytwentyone-child\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";}', 'no'),
(220, '_transient_health-check-site-status-result', '{\"good\":12,\"recommended\":5,\"critical\":2}', 'yes'),
(221, '_transient_timeout_dash_v2_f69de0bbfe7eaa113146875f40c02000', '1638744720', 'no'),
(222, '_transient_dash_v2_f69de0bbfe7eaa113146875f40c02000', '<div class=\"rss-widget\"><p><strong>Ошибка RSS:</strong> WP HTTP Error: Предоставлен неверный URL.</p></div><div class=\"rss-widget\"><p><strong>Ошибка RSS:</strong> WP HTTP Error: Предоставлен неверный URL.</p></div>', 'no');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 1, '_wp_old_slug', '%d0%bf%d1%80%d0%b8%d0%b2%d0%b5%d1%82-%d0%bc%d0%b8%d1%80'),
(4, 5, '_edit_lock', '1638101580:1'),
(6, 8, '_wp_attached_file', '2021/11/2s1chnvumq4.jpg'),
(7, 8, '_wp_attachment_image_alt', 'The Great Wall of China'),
(8, 8, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:1200;s:4:\"file\";s:23:\"2021/11/2s1chnvumq4.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(12, 11, '_edit_lock', '1638101849:1'),
(13, 12, '_wp_attached_file', '2021/11/7h77fwkk_x4.jpg'),
(14, 12, '_wp_attachment_image_alt', 'architectural photo of tower between buildings'),
(15, 12, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1108;s:6:\"height\";i:1200;s:4:\"file\";s:23:\"2021/11/7h77fwkk_x4.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(17, 14, '_edit_lock', '1638101777:1'),
(18, 15, '_wp_attached_file', '2021/11/ybtnz4peypi.jpg'),
(19, 15, '_wp_attachment_image_alt', 'beige concrete building'),
(20, 15, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:748;s:6:\"height\";i:1200;s:4:\"file\";s:23:\"2021/11/ybtnz4peypi.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(22, 17, '_edit_lock', '1638102016:1'),
(23, 18, '_wp_attached_file', '2021/11/dntwz-vnz30.jpg'),
(24, 18, '_wp_attachment_image_alt', ''),
(25, 18, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:803;s:6:\"height\";i:1200;s:4:\"file\";s:23:\"2021/11/dntwz-vnz30.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(27, 20, '_edit_lock', '1638101923:1'),
(28, 21, '_wp_attached_file', '2021/11/m0awnxnlamw.jpg'),
(29, 21, '_wp_attachment_image_alt', 'airplane on sky during golden hour'),
(30, 21, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:1200;s:4:\"file\";s:23:\"2021/11/m0awnxnlamw.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(32, 23, '_menu_item_type', 'taxonomy'),
(33, 23, '_menu_item_menu_item_parent', '0'),
(34, 23, '_menu_item_object_id', '1'),
(35, 23, '_menu_item_object', 'category'),
(36, 23, '_menu_item_target', ''),
(37, 23, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(38, 23, '_menu_item_xfn', ''),
(39, 23, '_menu_item_url', ''),
(40, 23, '_menu_item_orphaned', '1638102087'),
(41, 24, '_menu_item_type', 'taxonomy'),
(42, 24, '_menu_item_menu_item_parent', '0'),
(43, 24, '_menu_item_object_id', '8'),
(44, 24, '_menu_item_object', 'category'),
(45, 24, '_menu_item_target', ''),
(46, 24, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(47, 24, '_menu_item_xfn', ''),
(48, 24, '_menu_item_url', ''),
(49, 24, '_menu_item_orphaned', '1638102087'),
(50, 25, '_menu_item_type', 'taxonomy'),
(51, 25, '_menu_item_menu_item_parent', '0'),
(52, 25, '_menu_item_object_id', '9'),
(53, 25, '_menu_item_object', 'category'),
(54, 25, '_menu_item_target', ''),
(55, 25, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(56, 25, '_menu_item_xfn', ''),
(57, 25, '_menu_item_url', ''),
(58, 25, '_menu_item_orphaned', '1638102087'),
(59, 26, '_menu_item_type', 'taxonomy'),
(60, 26, '_menu_item_menu_item_parent', '0'),
(61, 26, '_menu_item_object_id', '10'),
(62, 26, '_menu_item_object', 'category'),
(63, 26, '_menu_item_target', ''),
(64, 26, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(65, 26, '_menu_item_xfn', ''),
(66, 26, '_menu_item_url', ''),
(67, 26, '_menu_item_orphaned', '1638102087'),
(68, 27, '_menu_item_type', 'taxonomy'),
(69, 27, '_menu_item_menu_item_parent', '0'),
(70, 27, '_menu_item_object_id', '11'),
(71, 27, '_menu_item_object', 'category'),
(72, 27, '_menu_item_target', ''),
(73, 27, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(74, 27, '_menu_item_xfn', ''),
(75, 27, '_menu_item_url', ''),
(76, 27, '_menu_item_orphaned', '1638102087'),
(77, 28, '_menu_item_type', 'taxonomy'),
(78, 28, '_menu_item_menu_item_parent', '0'),
(79, 28, '_menu_item_object_id', '4'),
(80, 28, '_menu_item_object', 'category'),
(81, 28, '_menu_item_target', ''),
(82, 28, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(83, 28, '_menu_item_xfn', ''),
(84, 28, '_menu_item_url', ''),
(86, 29, '_menu_item_type', 'taxonomy'),
(87, 29, '_menu_item_menu_item_parent', '28'),
(88, 29, '_menu_item_object_id', '9'),
(89, 29, '_menu_item_object', 'category'),
(90, 29, '_menu_item_target', ''),
(91, 29, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(92, 29, '_menu_item_xfn', ''),
(93, 29, '_menu_item_url', ''),
(95, 30, '_menu_item_type', 'taxonomy'),
(96, 30, '_menu_item_menu_item_parent', '0'),
(97, 30, '_menu_item_object_id', '3'),
(98, 30, '_menu_item_object', 'category'),
(99, 30, '_menu_item_target', ''),
(100, 30, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(101, 30, '_menu_item_xfn', ''),
(102, 30, '_menu_item_url', ''),
(104, 31, '_menu_item_type', 'taxonomy'),
(105, 31, '_menu_item_menu_item_parent', '30'),
(106, 31, '_menu_item_object_id', '10'),
(107, 31, '_menu_item_object', 'category'),
(108, 31, '_menu_item_target', ''),
(109, 31, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(110, 31, '_menu_item_xfn', ''),
(111, 31, '_menu_item_url', ''),
(113, 32, '_menu_item_type', 'taxonomy'),
(114, 32, '_menu_item_menu_item_parent', '0'),
(115, 32, '_menu_item_object_id', '2'),
(116, 32, '_menu_item_object', 'category'),
(117, 32, '_menu_item_target', ''),
(118, 32, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(119, 32, '_menu_item_xfn', ''),
(120, 32, '_menu_item_url', ''),
(122, 33, '_menu_item_type', 'taxonomy'),
(123, 33, '_menu_item_menu_item_parent', '32'),
(124, 33, '_menu_item_object_id', '8'),
(125, 33, '_menu_item_object', 'category'),
(126, 33, '_menu_item_target', ''),
(127, 33, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(128, 33, '_menu_item_xfn', ''),
(129, 33, '_menu_item_url', ''),
(131, 34, '_menu_item_type', 'taxonomy'),
(132, 34, '_menu_item_menu_item_parent', '0'),
(133, 34, '_menu_item_object_id', '1'),
(134, 34, '_menu_item_object', 'category'),
(135, 34, '_menu_item_target', ''),
(136, 34, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(137, 34, '_menu_item_xfn', ''),
(138, 34, '_menu_item_url', ''),
(140, 35, '_menu_item_type', 'taxonomy'),
(141, 35, '_menu_item_menu_item_parent', '0'),
(142, 35, '_menu_item_object_id', '5'),
(143, 35, '_menu_item_object', 'category'),
(144, 35, '_menu_item_target', ''),
(145, 35, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(146, 35, '_menu_item_xfn', ''),
(147, 35, '_menu_item_url', ''),
(149, 36, '_menu_item_type', 'taxonomy'),
(150, 36, '_menu_item_menu_item_parent', '35'),
(151, 36, '_menu_item_object_id', '11'),
(152, 36, '_menu_item_object', 'category'),
(153, 36, '_menu_item_target', ''),
(154, 36, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(155, 36, '_menu_item_xfn', ''),
(156, 36, '_menu_item_url', ''),
(158, 37, '_menu_item_type', 'post_type'),
(159, 37, '_menu_item_menu_item_parent', '34'),
(160, 37, '_menu_item_object_id', '20'),
(161, 37, '_menu_item_object', 'post'),
(162, 37, '_menu_item_target', ''),
(163, 37, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(164, 37, '_menu_item_xfn', ''),
(165, 37, '_menu_item_url', ''),
(167, 38, '_menu_item_type', 'post_type'),
(168, 38, '_menu_item_menu_item_parent', '33'),
(169, 38, '_menu_item_object_id', '17'),
(170, 38, '_menu_item_object', 'post'),
(171, 38, '_menu_item_target', ''),
(172, 38, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(173, 38, '_menu_item_xfn', ''),
(174, 38, '_menu_item_url', ''),
(176, 39, '_menu_item_type', 'post_type'),
(177, 39, '_menu_item_menu_item_parent', '29'),
(178, 39, '_menu_item_object_id', '14'),
(179, 39, '_menu_item_object', 'post'),
(180, 39, '_menu_item_target', ''),
(181, 39, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(182, 39, '_menu_item_xfn', ''),
(183, 39, '_menu_item_url', ''),
(185, 40, '_menu_item_type', 'post_type'),
(186, 40, '_menu_item_menu_item_parent', '36'),
(187, 40, '_menu_item_object_id', '11'),
(188, 40, '_menu_item_object', 'post'),
(189, 40, '_menu_item_target', ''),
(190, 40, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(191, 40, '_menu_item_xfn', ''),
(192, 40, '_menu_item_url', ''),
(194, 41, '_menu_item_type', 'post_type'),
(195, 41, '_menu_item_menu_item_parent', '31'),
(196, 41, '_menu_item_object_id', '5'),
(197, 41, '_menu_item_object', 'post'),
(198, 41, '_menu_item_target', ''),
(199, 41, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(200, 41, '_menu_item_xfn', ''),
(201, 41, '_menu_item_url', ''),
(203, 42, '_wp_trash_meta_status', 'publish'),
(204, 42, '_wp_trash_meta_time', '1638104179');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
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
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2021-11-28 15:04:39', '2021-11-28 12:04:39', '<!-- wp:paragraph -->\n<p>Добро пожаловать в WordPress. Это ваша первая запись. Отредактируйте или удалите ее, затем начинайте создавать!</p>\n<!-- /wp:paragraph -->', 'Привет, мир!', '', 'publish', 'open', 'open', '', 'privet-mir', '', '', '2021-11-28 15:04:39', '2021-11-28 12:04:39', '', 0, 'http://localhost/simple/?p=1', 0, 'post', '', 1),
(2, 1, '2021-11-28 15:04:39', '2021-11-28 12:04:39', '<!-- wp:paragraph -->\n<p>Это пример страницы. От записей в блоге она отличается тем, что остаётся на одном месте и отображается в меню сайта (в большинстве тем). На странице &laquo;Детали&raquo; владельцы сайтов обычно рассказывают о себе потенциальным посетителям. Например, так:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Привет! Днём я курьер, а вечером &#8212; подающий надежды актёр. Это мой блог. Я живу в Ростове-на-Дону, люблю своего пса Джека и пинаколаду. (И ещё попадать под дождь.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...или так:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Компания &laquo;Штучки XYZ&raquo; была основана в 1971 году и с тех пор производит качественные штучки. Компания находится в Готэм-сити, имеет штат из более чем 2000 сотрудников и приносит много пользы жителям Готэма.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Перейдите <a href=\"http://localhost/simple/wp-admin/\">в консоль</a>, чтобы удалить эту страницу и создать новые. Успехов!</p>\n<!-- /wp:paragraph -->', 'Пример страницы', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2021-11-28 15:04:39', '2021-11-28 12:04:39', '', 0, 'http://localhost/simple/?page_id=2', 0, 'page', '', 0),
(3, 1, '2021-11-28 15:04:39', '2021-11-28 12:04:39', '<!-- wp:heading --><h2>Кто мы</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Наш адрес сайта: http://localhost/simple.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Комментарии</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если посетитель оставляет комментарий на сайте, мы собираем данные указанные в форме комментария, а также IP адрес посетителя и данные user-agent браузера с целью определения спама.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Анонимизированная строка создаваемая из вашего адреса email (\"хеш\") может предоставляться сервису Gravatar, чтобы определить используете ли вы его. Политика конфиденциальности Gravatar доступна здесь: https://automattic.com/privacy/ . После одобрения комментария ваше изображение профиля будет видимым публично в контексте вашего комментария.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Медиафайлы</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если вы зарегистрированный пользователь и загружаете фотографии на сайт, вам возможно следует избегать загрузки изображений с метаданными EXIF, так как они могут содержать данные вашего месторасположения по GPS. Посетители могут извлечь эту информацию скачав изображения с сайта.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Куки</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если вы оставляете комментарий на нашем сайте, вы можете включить сохранение вашего имени, адреса email и вебсайта в куки. Это делается для вашего удобства, чтобы не заполнять данные снова при повторном комментировании. Эти куки хранятся в течение одного года.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Если у вас есть учетная запись на сайте и вы войдете в неё, мы установим временный куки для определения поддержки куки вашим браузером, куки не содержит никакой личной информации и удаляется при закрытии вашего браузера.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>При входе в учетную запись мы также устанавливаем несколько куки с данными входа и настройками экрана. Куки входа хранятся в течение двух дней, куки с настройками экрана - год. Если вы выберете возможность \"Запомнить меня\", данные о входе будут сохраняться в течение двух недель. При выходе из учетной записи куки входа будут удалены.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>При редактировании или публикации статьи в браузере будет сохранен дополнительный куки, он не содержит персональных данных и содержит только ID записи отредактированной вами, истекает через 1 день.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Встраиваемое содержимое других вебсайтов</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Статьи на этом сайте могут включать встраиваемое содержимое (например видео, изображения, статьи и др.), подобное содержимое ведет себя так же, как если бы посетитель зашел на другой сайт.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Эти сайты могут собирать данные о вас, использовать куки, внедрять дополнительное отслеживание третьей стороной и следить за вашим взаимодействием с внедренным содержимым, включая отслеживание взаимодействия, если у вас есть учетная запись и вы авторизовались на том сайте.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>С кем мы делимся вашими данными</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если вы запросите сброс пароля, ваш IP будет указан в email-сообщении о сбросе.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Как долго мы храним ваши данные</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если вы оставляете комментарий, то сам комментарий и его метаданные сохраняются неопределенно долго. Это делается для того, чтобы определять и одобрять последующие комментарии автоматически, вместо помещения их в очередь на одобрение.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Для пользователей с регистрацией на нашем сайте мы храним ту личную информацию, которую они указывают в своем профиле. Все пользователи могут видеть, редактировать или удалить свою информацию из профиля в любое время (кроме имени пользователя). Администрация вебсайта также может видеть и изменять эту информацию.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Какие у вас права на ваши данные</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>При наличии учетной записи на сайте или если вы оставляли комментарии, то вы можете запросить файл экспорта персональных данных, которые мы сохранили о вас, включая предоставленные вами данные. Вы также можете запросить удаление этих данных, это не включает данные, которые мы обязаны хранить в административных целях, по закону или целях безопасности.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Куда мы отправляем ваши данные</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Комментарии пользователей могут проверяться автоматическим сервисом определения спама.</p><!-- /wp:paragraph -->', 'Политика конфиденциальности', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2021-11-28 15:04:39', '2021-11-28 12:04:39', '', 0, 'http://localhost/simple/?page_id=3', 0, 'page', '', 0),
(4, 1, '2021-11-28 15:04:53', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2021-11-28 15:04:53', '0000-00-00 00:00:00', '', 0, 'http://localhost/simple/?p=4', 0, 'post', '', 0),
(5, 1, '2021-11-28 15:11:13', '2021-11-28 12:11:13', '<!-- wp:paragraph -->\n<p><strong>Великая Китайская стена</strong>&nbsp;(<a href=\"https://ru.wikipedia.org/wiki/%D0%9A%D0%B8%D1%82%D0%B0%D0%B9%D1%81%D0%BA%D0%B8%D0%B9_%D1%8F%D0%B7%D1%8B%D0%BA\">кит.</a><a href=\"https://ru.wikipedia.org/wiki/%D0%9A%D0%B8%D1%82%D0%B0%D0%B9%D1%81%D0%BA%D0%BE%D0%B5_%D0%BF%D0%B8%D1%81%D1%8C%D0%BC%D0%BE#%D0%9F%D0%BE%D0%BB%D0%BD%D1%8B%D0%B5_%D0%B8_%D1%83%D0%BF%D1%80%D0%BE%D1%89%D1%91%D0%BD%D0%BD%D1%8B%D0%B5_%D0%B8%D0%B5%D1%80%D0%BE%D0%B3%D0%BB%D0%B8%D1%84%D1%8B\">трад.</a>&nbsp;長城,&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%A3%D0%BF%D1%80%D0%BE%D1%89%D0%B5%D0%BD%D0%B8%D0%B5_%D0%B8%D0%B5%D1%80%D0%BE%D0%B3%D0%BB%D0%B8%D1%84%D0%BE%D0%B2\">упр.</a>&nbsp;长城,&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%9F%D0%B8%D0%BD%D1%8C%D0%B8%D0%BD%D1%8C\">пиньинь</a><em>Chángchéng</em>, буквально: «Длинная стена» или&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%9A%D0%B8%D1%82%D0%B0%D0%B9%D1%81%D0%BA%D0%B8%D0%B9_%D1%8F%D0%B7%D1%8B%D0%BA\">кит.</a><a href=\"https://ru.wikipedia.org/wiki/%D0%9A%D0%B8%D1%82%D0%B0%D0%B9%D1%81%D0%BA%D0%BE%D0%B5_%D0%BF%D0%B8%D1%81%D1%8C%D0%BC%D0%BE#%D0%9F%D0%BE%D0%BB%D0%BD%D1%8B%D0%B5_%D0%B8_%D1%83%D0%BF%D1%80%D0%BE%D1%89%D1%91%D0%BD%D0%BD%D1%8B%D0%B5_%D0%B8%D0%B5%D1%80%D0%BE%D0%B3%D0%BB%D0%B8%D1%84%D1%8B\">трад.</a>&nbsp;萬里長城,&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%A3%D0%BF%D1%80%D0%BE%D1%89%D0%B5%D0%BD%D0%B8%D0%B5_%D0%B8%D0%B5%D1%80%D0%BE%D0%B3%D0%BB%D0%B8%D1%84%D0%BE%D0%B2\">упр.</a>&nbsp;万里长城,&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%9F%D0%B8%D0%BD%D1%8C%D0%B8%D0%BD%D1%8C\">пиньинь</a><em>Wànlǐ Chángchéng</em>, буквально: «Длинная стена в 10&nbsp;000&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%9B%D0%B8_(%D0%B5%D0%B4%D0%B8%D0%BD%D0%B8%D1%86%D0%B0_%D0%B4%D0%BB%D0%B8%D0%BD%D1%8B)\">ли</a>»)&nbsp;—&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%A0%D0%B0%D0%B7%D0%B4%D0%B5%D0%BB%D0%B8%D1%82%D0%B5%D0%BB%D1%8C%D0%BD%D0%B0%D1%8F_%D1%81%D1%82%D0%B5%D0%BD%D0%B0\">разделительная стена</a>&nbsp;длиной почти 9000 км (полная длина&nbsp;— 21,2 тыс. км), построенная в&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%94%D1%80%D0%B5%D0%B2%D0%BD%D0%B8%D0%B9_%D0%9A%D0%B8%D1%82%D0%B0%D0%B9\">древнем Китае</a>. Крупнейший&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%9F%D0%B0%D0%BC%D1%8F%D1%82%D0%BD%D0%B8%D0%BA_%D0%B0%D1%80%D1%85%D0%B8%D1%82%D0%B5%D0%BA%D1%82%D1%83%D1%80%D1%8B\">памятник архитектуры</a>. В&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%9A%D0%B8%D1%82%D0%B0%D0%B9%D1%81%D0%BA%D0%B8%D0%B9_%D1%8F%D0%B7%D1%8B%D0%BA\">китайском языке</a>&nbsp;слово, обозначающее сам проект (长城, Chángchéng), приобрело также образное значение «несгибаемая могущественная сила, непреодолимый барьер»<sup><a href=\"https://ru.wikipedia.org/wiki/%D0%92%D0%B5%D0%BB%D0%B8%D0%BA%D0%B0%D1%8F_%D0%9A%D0%B8%D1%82%D0%B0%D0%B9%D1%81%D0%BA%D0%B0%D1%8F_%D1%81%D1%82%D0%B5%D0%BD%D0%B0#cite_note-3\">[3]</a></sup>. Великая Китайская стена упоминается в&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%93%D0%B8%D0%BC%D0%BD_%D0%9A%D0%9D%D0%A0\">Государственном гимне КНР</a>.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":8,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://localhost/simple/wp-content/uploads/2021/11/2s1chnvumq4.jpg\" alt=\"The Great Wall of China\" class=\"wp-image-8\"/></figure>\n<!-- /wp:image -->', 'Великая Китайская Стена', '', 'publish', 'open', 'open', '', 'velikaya-kitajskaya-stena', '', '', '2021-11-28 15:15:24', '2021-11-28 12:15:24', '', 0, 'http://localhost/simple/?p=5', 0, 'post', '', 0),
(6, 1, '2021-11-28 15:11:13', '2021-11-28 12:11:13', '<!-- wp:paragraph -->\n<p><strong>Великая Китайская стена</strong>&nbsp;(<a href=\"https://ru.wikipedia.org/wiki/%D0%9A%D0%B8%D1%82%D0%B0%D0%B9%D1%81%D0%BA%D0%B8%D0%B9_%D1%8F%D0%B7%D1%8B%D0%BA\">кит.</a><a href=\"https://ru.wikipedia.org/wiki/%D0%9A%D0%B8%D1%82%D0%B0%D0%B9%D1%81%D0%BA%D0%BE%D0%B5_%D0%BF%D0%B8%D1%81%D1%8C%D0%BC%D0%BE#%D0%9F%D0%BE%D0%BB%D0%BD%D1%8B%D0%B5_%D0%B8_%D1%83%D0%BF%D1%80%D0%BE%D1%89%D1%91%D0%BD%D0%BD%D1%8B%D0%B5_%D0%B8%D0%B5%D1%80%D0%BE%D0%B3%D0%BB%D0%B8%D1%84%D1%8B\">трад.</a>&nbsp;長城,&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%A3%D0%BF%D1%80%D0%BE%D1%89%D0%B5%D0%BD%D0%B8%D0%B5_%D0%B8%D0%B5%D1%80%D0%BE%D0%B3%D0%BB%D0%B8%D1%84%D0%BE%D0%B2\">упр.</a>&nbsp;长城,&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%9F%D0%B8%D0%BD%D1%8C%D0%B8%D0%BD%D1%8C\">пиньинь</a><em>Chángchéng</em>, буквально: «Длинная стена» или&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%9A%D0%B8%D1%82%D0%B0%D0%B9%D1%81%D0%BA%D0%B8%D0%B9_%D1%8F%D0%B7%D1%8B%D0%BA\">кит.</a><a href=\"https://ru.wikipedia.org/wiki/%D0%9A%D0%B8%D1%82%D0%B0%D0%B9%D1%81%D0%BA%D0%BE%D0%B5_%D0%BF%D0%B8%D1%81%D1%8C%D0%BC%D0%BE#%D0%9F%D0%BE%D0%BB%D0%BD%D1%8B%D0%B5_%D0%B8_%D1%83%D0%BF%D1%80%D0%BE%D1%89%D1%91%D0%BD%D0%BD%D1%8B%D0%B5_%D0%B8%D0%B5%D1%80%D0%BE%D0%B3%D0%BB%D0%B8%D1%84%D1%8B\">трад.</a>&nbsp;萬里長城,&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%A3%D0%BF%D1%80%D0%BE%D1%89%D0%B5%D0%BD%D0%B8%D0%B5_%D0%B8%D0%B5%D1%80%D0%BE%D0%B3%D0%BB%D0%B8%D1%84%D0%BE%D0%B2\">упр.</a>&nbsp;万里长城,&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%9F%D0%B8%D0%BD%D1%8C%D0%B8%D0%BD%D1%8C\">пиньинь</a><em>Wànlǐ Chángchéng</em>, буквально: «Длинная стена в 10&nbsp;000&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%9B%D0%B8_(%D0%B5%D0%B4%D0%B8%D0%BD%D0%B8%D1%86%D0%B0_%D0%B4%D0%BB%D0%B8%D0%BD%D1%8B)\">ли</a>»)&nbsp;—&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%A0%D0%B0%D0%B7%D0%B4%D0%B5%D0%BB%D0%B8%D1%82%D0%B5%D0%BB%D1%8C%D0%BD%D0%B0%D1%8F_%D1%81%D1%82%D0%B5%D0%BD%D0%B0\">разделительная стена</a>&nbsp;длиной почти 9000 км (полная длина&nbsp;— 21,2 тыс. км), построенная в&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%94%D1%80%D0%B5%D0%B2%D0%BD%D0%B8%D0%B9_%D0%9A%D0%B8%D1%82%D0%B0%D0%B9\">древнем Китае</a>. Крупнейший&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%9F%D0%B0%D0%BC%D1%8F%D1%82%D0%BD%D0%B8%D0%BA_%D0%B0%D1%80%D1%85%D0%B8%D1%82%D0%B5%D0%BA%D1%82%D1%83%D1%80%D1%8B\">памятник архитектуры</a>. В&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%9A%D0%B8%D1%82%D0%B0%D0%B9%D1%81%D0%BA%D0%B8%D0%B9_%D1%8F%D0%B7%D1%8B%D0%BA\">китайском языке</a>&nbsp;слово, обозначающее сам проект (长城, Chángchéng), приобрело также образное значение «несгибаемая могущественная сила, непреодолимый барьер»<sup><a href=\"https://ru.wikipedia.org/wiki/%D0%92%D0%B5%D0%BB%D0%B8%D0%BA%D0%B0%D1%8F_%D0%9A%D0%B8%D1%82%D0%B0%D0%B9%D1%81%D0%BA%D0%B0%D1%8F_%D1%81%D1%82%D0%B5%D0%BD%D0%B0#cite_note-3\">[3]</a></sup>. Великая Китайская стена упоминается в&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%93%D0%B8%D0%BC%D0%BD_%D0%9A%D0%9D%D0%A0\">Государственном гимне КНР</a>.</p>\n<!-- /wp:paragraph -->', 'Великая Китайская Стена', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2021-11-28 15:11:13', '2021-11-28 12:11:13', '', 5, 'http://localhost/simple/?p=6', 0, 'revision', '', 0),
(8, 1, '2021-11-28 15:14:26', '2021-11-28 12:14:26', '', 'Photo by Joel Danielson', '', 'inherit', 'open', 'closed', '', 'photo-by-joel-danielson', '', '', '2021-11-28 15:14:26', '2021-11-28 12:14:26', '', 5, 'http://localhost/simple/2021/11/28/velikaya-kitajskaya-stena/photo-by-joel-danielson/', 0, 'attachment', 'image/jpeg', 0),
(9, 1, '2021-11-28 15:14:31', '2021-11-28 12:14:31', '<!-- wp:paragraph -->\n<p><strong>Великая Китайская стена</strong> (<a href=\"https://ru.wikipedia.org/wiki/%D0%9A%D0%B8%D1%82%D0%B0%D0%B9%D1%81%D0%BA%D0%B8%D0%B9_%D1%8F%D0%B7%D1%8B%D0%BA\">кит.</a><a href=\"https://ru.wikipedia.org/wiki/%D0%9A%D0%B8%D1%82%D0%B0%D0%B9%D1%81%D0%BA%D0%BE%D0%B5_%D0%BF%D0%B8%D1%81%D1%8C%D0%BC%D0%BE#%D0%9F%D0%BE%D0%BB%D0%BD%D1%8B%D0%B5_%D0%B8_%D1%83%D0%BF%D1%80%D0%BE%D1%89%D1%91%D0%BD%D0%BD%D1%8B%D0%B5_%D0%B8%D0%B5%D1%80%D0%BE%D0%B3%D0%BB%D0%B8%D1%84%D1%8B\">трад.</a> 長城, <a href=\"https://ru.wikipedia.org/wiki/%D0%A3%D0%BF%D1%80%D0%BE%D1%89%D0%B5%D0%BD%D0%B8%D0%B5_%D0%B8%D0%B5%D1%80%D0%BE%D0%B3%D0%BB%D0%B8%D1%84%D0%BE%D0%B2\">упр.</a> 长城, <a href=\"https://ru.wikipedia.org/wiki/%D0%9F%D0%B8%D0%BD%D1%8C%D0%B8%D0%BD%D1%8C\">пиньинь</a><em>Chángchéng</em>, буквально: «Длинная стена» или <a href=\"https://ru.wikipedia.org/wiki/%D0%9A%D0%B8%D1%82%D0%B0%D0%B9%D1%81%D0%BA%D0%B8%D0%B9_%D1%8F%D0%B7%D1%8B%D0%BA\">кит.</a><a href=\"https://ru.wikipedia.org/wiki/%D0%9A%D0%B8%D1%82%D0%B0%D0%B9%D1%81%D0%BA%D0%BE%D0%B5_%D0%BF%D0%B8%D1%81%D1%8C%D0%BC%D0%BE#%D0%9F%D0%BE%D0%BB%D0%BD%D1%8B%D0%B5_%D0%B8_%D1%83%D0%BF%D1%80%D0%BE%D1%89%D1%91%D0%BD%D0%BD%D1%8B%D0%B5_%D0%B8%D0%B5%D1%80%D0%BE%D0%B3%D0%BB%D0%B8%D1%84%D1%8B\">трад.</a> 萬里長城, <a href=\"https://ru.wikipedia.org/wiki/%D0%A3%D0%BF%D1%80%D0%BE%D1%89%D0%B5%D0%BD%D0%B8%D0%B5_%D0%B8%D0%B5%D1%80%D0%BE%D0%B3%D0%BB%D0%B8%D1%84%D0%BE%D0%B2\">упр.</a> 万里长城, <a href=\"https://ru.wikipedia.org/wiki/%D0%9F%D0%B8%D0%BD%D1%8C%D0%B8%D0%BD%D1%8C\">пиньинь</a><em>Wànlǐ Chángchéng</em>, буквально: «Длинная стена в 10 000 <a href=\"https://ru.wikipedia.org/wiki/%D0%9B%D0%B8_(%D0%B5%D0%B4%D0%B8%D0%BD%D0%B8%D1%86%D0%B0_%D0%B4%D0%BB%D0%B8%D0%BD%D1%8B)\">ли</a>») — <a href=\"https://ru.wikipedia.org/wiki/%D0%A0%D0%B0%D0%B7%D0%B4%D0%B5%D0%BB%D0%B8%D1%82%D0%B5%D0%BB%D1%8C%D0%BD%D0%B0%D1%8F_%D1%81%D1%82%D0%B5%D0%BD%D0%B0\">разделительная стена</a> длиной почти 9000 км (полная длина — 21,2 тыс. км), построенная в <a href=\"https://ru.wikipedia.org/wiki/%D0%94%D1%80%D0%B5%D0%B2%D0%BD%D0%B8%D0%B9_%D0%9A%D0%B8%D1%82%D0%B0%D0%B9\">древнем Китае</a>. Крупнейший <a href=\"https://ru.wikipedia.org/wiki/%D0%9F%D0%B0%D0%BC%D1%8F%D1%82%D0%BD%D0%B8%D0%BA_%D0%B0%D1%80%D1%85%D0%B8%D1%82%D0%B5%D0%BA%D1%82%D1%83%D1%80%D1%8B\">памятник архитектуры</a>. В <a href=\"https://ru.wikipedia.org/wiki/%D0%9A%D0%B8%D1%82%D0%B0%D0%B9%D1%81%D0%BA%D0%B8%D0%B9_%D1%8F%D0%B7%D1%8B%D0%BA\">китайском языке</a> слово, обозначающее сам проект (长城, Chángchéng), приобрело также образное значение «несгибаемая могущественная сила, непреодолимый барьер»<sup><a href=\"https://ru.wikipedia.org/wiki/%D0%92%D0%B5%D0%BB%D0%B8%D0%BA%D0%B0%D1%8F_%D0%9A%D0%B8%D1%82%D0%B0%D0%B9%D1%81%D0%BA%D0%B0%D1%8F_%D1%81%D1%82%D0%B5%D0%BD%D0%B0#cite_note-3\">[3]</a></sup>. Великая Китайская стена упоминается в <a href=\"https://ru.wikipedia.org/wiki/%D0%93%D0%B8%D0%BC%D0%BD_%D0%9A%D0%9D%D0%A0\">Государственном гимне КНР</a>.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":8,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://localhost/simple/wp-content/uploads/2021/11/2s1chnvumq4.jpg\" alt=\"The Great Wall of China\" class=\"wp-image-8\"/></figure>\n<!-- /wp:image -->', 'Великая Китайская Стена', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2021-11-28 15:14:31', '2021-11-28 12:14:31', '', 5, 'http://localhost/simple/?p=9', 0, 'revision', '', 0),
(10, 1, '2021-11-28 15:14:53', '2021-11-28 12:14:53', '<!-- wp:paragraph -->\n<p><strong>Великая Китайская стена</strong>&nbsp;(<a href=\"https://ru.wikipedia.org/wiki/%D0%9A%D0%B8%D1%82%D0%B0%D0%B9%D1%81%D0%BA%D0%B8%D0%B9_%D1%8F%D0%B7%D1%8B%D0%BA\">кит.</a><a href=\"https://ru.wikipedia.org/wiki/%D0%9A%D0%B8%D1%82%D0%B0%D0%B9%D1%81%D0%BA%D0%BE%D0%B5_%D0%BF%D0%B8%D1%81%D1%8C%D0%BC%D0%BE#%D0%9F%D0%BE%D0%BB%D0%BD%D1%8B%D0%B5_%D0%B8_%D1%83%D0%BF%D1%80%D0%BE%D1%89%D1%91%D0%BD%D0%BD%D1%8B%D0%B5_%D0%B8%D0%B5%D1%80%D0%BE%D0%B3%D0%BB%D0%B8%D1%84%D1%8B\">трад.</a>&nbsp;長城,&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%A3%D0%BF%D1%80%D0%BE%D1%89%D0%B5%D0%BD%D0%B8%D0%B5_%D0%B8%D0%B5%D1%80%D0%BE%D0%B3%D0%BB%D0%B8%D1%84%D0%BE%D0%B2\">упр.</a>&nbsp;长城,&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%9F%D0%B8%D0%BD%D1%8C%D0%B8%D0%BD%D1%8C\">пиньинь</a><em>Chángchéng</em>, буквально: «Длинная стена» или&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%9A%D0%B8%D1%82%D0%B0%D0%B9%D1%81%D0%BA%D0%B8%D0%B9_%D1%8F%D0%B7%D1%8B%D0%BA\">кит.</a><a href=\"https://ru.wikipedia.org/wiki/%D0%9A%D0%B8%D1%82%D0%B0%D0%B9%D1%81%D0%BA%D0%BE%D0%B5_%D0%BF%D0%B8%D1%81%D1%8C%D0%BC%D0%BE#%D0%9F%D0%BE%D0%BB%D0%BD%D1%8B%D0%B5_%D0%B8_%D1%83%D0%BF%D1%80%D0%BE%D1%89%D1%91%D0%BD%D0%BD%D1%8B%D0%B5_%D0%B8%D0%B5%D1%80%D0%BE%D0%B3%D0%BB%D0%B8%D1%84%D1%8B\">трад.</a>&nbsp;萬里長城,&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%A3%D0%BF%D1%80%D0%BE%D1%89%D0%B5%D0%BD%D0%B8%D0%B5_%D0%B8%D0%B5%D1%80%D0%BE%D0%B3%D0%BB%D0%B8%D1%84%D0%BE%D0%B2\">упр.</a>&nbsp;万里长城,&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%9F%D0%B8%D0%BD%D1%8C%D0%B8%D0%BD%D1%8C\">пиньинь</a><em>Wànlǐ Chángchéng</em>, буквально: «Длинная стена в 10&nbsp;000&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%9B%D0%B8_(%D0%B5%D0%B4%D0%B8%D0%BD%D0%B8%D1%86%D0%B0_%D0%B4%D0%BB%D0%B8%D0%BD%D1%8B)\">ли</a>»)&nbsp;—&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%A0%D0%B0%D0%B7%D0%B4%D0%B5%D0%BB%D0%B8%D1%82%D0%B5%D0%BB%D1%8C%D0%BD%D0%B0%D1%8F_%D1%81%D1%82%D0%B5%D0%BD%D0%B0\">разделительная стена</a>&nbsp;длиной почти 9000 км (полная длина&nbsp;— 21,2 тыс. км), построенная в&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%94%D1%80%D0%B5%D0%B2%D0%BD%D0%B8%D0%B9_%D0%9A%D0%B8%D1%82%D0%B0%D0%B9\">древнем Китае</a>. Крупнейший&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%9F%D0%B0%D0%BC%D1%8F%D1%82%D0%BD%D0%B8%D0%BA_%D0%B0%D1%80%D1%85%D0%B8%D1%82%D0%B5%D0%BA%D1%82%D1%83%D1%80%D1%8B\">памятник архитектуры</a>. В&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%9A%D0%B8%D1%82%D0%B0%D0%B9%D1%81%D0%BA%D0%B8%D0%B9_%D1%8F%D0%B7%D1%8B%D0%BA\">китайском языке</a>&nbsp;слово, обозначающее сам проект (长城, Chángchéng), приобрело также образное значение «несгибаемая могущественная сила, непреодолимый барьер»<sup><a href=\"https://ru.wikipedia.org/wiki/%D0%92%D0%B5%D0%BB%D0%B8%D0%BA%D0%B0%D1%8F_%D0%9A%D0%B8%D1%82%D0%B0%D0%B9%D1%81%D0%BA%D0%B0%D1%8F_%D1%81%D1%82%D0%B5%D0%BD%D0%B0#cite_note-3\">[3]</a></sup>. Великая Китайская стена упоминается в&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%93%D0%B8%D0%BC%D0%BD_%D0%9A%D0%9D%D0%A0\">Государственном гимне КНР</a>.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":8,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://localhost/simple/wp-content/uploads/2021/11/2s1chnvumq4.jpg\" alt=\"The Great Wall of China\" class=\"wp-image-8\"/></figure>\n<!-- /wp:image -->', 'Великая Китайская Стена', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2021-11-28 15:14:53', '2021-11-28 12:14:53', '', 5, 'http://localhost/simple/?p=10', 0, 'revision', '', 0),
(11, 1, '2021-11-28 15:17:38', '2021-11-28 12:17:38', '<!-- wp:paragraph -->\n<p><strong>елевизионная башня Токио</strong>, также&nbsp;<strong>Токийская башня</strong><sup><a href=\"https://ru.wikipedia.org/wiki/%D0%A2%D0%B5%D0%BB%D0%B5%D0%B2%D0%B8%D0%B7%D0%B8%D0%BE%D0%BD%D0%BD%D0%B0%D1%8F_%D0%B1%D0%B0%D1%88%D0%BD%D1%8F_%D0%A2%D0%BE%D0%BA%D0%B8%D0%BE#cite_note-2\">[2]</a></sup>&nbsp;(<a href=\"https://ru.wikipedia.org/wiki/%D0%AF%D0%BF%D0%BE%D0%BD%D1%81%D0%BA%D0%B8%D0%B9_%D1%8F%D0%B7%D1%8B%D0%BA\">яп.</a>&nbsp;東京タワー&nbsp;<em>То:кё: тава:</em>)&nbsp;— теле- и радиокоммуникационная башня, расположенная в г.&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%9C%D0%B8%D0%BD%D0%B0%D1%82%D0%BE\">Минато</a>,&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%A2%D0%BE%D0%BA%D0%B8%D0%BE\">Токио</a>. Высота башни&nbsp;— 332,6 метра. На момент постройки&nbsp;— самое высокое в мире сооружение из стали. Имеет решётчатую конструкцию и согласно нормам&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%90%D0%B2%D0%B8%D0%B0%D1%86%D0%B8%D0%BE%D0%BD%D0%BD%D0%B0%D1%8F_%D0%B1%D0%B5%D0%B7%D0%BE%D0%BF%D0%B0%D1%81%D0%BD%D0%BE%D1%81%D1%82%D1%8C\">авиационной безопасности</a>&nbsp;выкрашена в интернациональные оранжевый и белый цвета. Входит в список 29 самых высоких объектов&nbsp;<a href=\"https://ru.wikipedia.org/w/index.php?title=%D0%92%D1%81%D0%B5%D0%BC%D0%B8%D1%80%D0%BD%D0%B0%D1%8F_%D1%84%D0%B5%D0%B4%D0%B5%D1%80%D0%B0%D1%86%D0%B8%D1%8F_%D0%B2%D1%8B%D1%81%D0%BE%D1%82%D0%BD%D1%8B%D1%85_%D0%B1%D0%B0%D1%88%D0%B5%D0%BD&amp;action=edit&amp;redlink=1\">Всемирной федерации высотных башен</a>, занимая среди них 14-е место. Среди самых высоких телебашен мира занимает лишь 23-е место.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Построенная в&nbsp;<a href=\"https://ru.wikipedia.org/wiki/1958_%D0%B3%D0%BE%D0%B4\">1958 году</a>, изначально башня предназначалась для телевещания на Токио и регион&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%9A%D0%B0%D0%BD%D1%82%D0%BE_(%D1%80%D0%B5%D0%B3%D0%B8%D0%BE%D0%BD)\">Канто</a>, но тремя годами позже на неё были установлены ещё и радиоантенны для передачи радиосигналов. Антенна на вершине башни использовалась для трансляции теле- и радиосигнала крупнейших японских телесетей:&nbsp;<a href=\"https://ru.wikipedia.org/wiki/NHK\">NHK</a>,&nbsp;<a href=\"https://ru.wikipedia.org/wiki/Tokyo_Broadcasting_System\">TBS</a>&nbsp;и&nbsp;<a href=\"https://ru.wikipedia.org/wiki/Fuji_Television\">Fuji Television</a>&nbsp;вплоть до 2011 года, пока не была построена&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%9D%D0%B5%D0%B1%D0%B5%D1%81%D0%BD%D0%BE%D0%B5_%D0%B4%D0%B5%D1%80%D0%B5%D0%B2%D0%BE_%D0%A2%D0%BE%D0%BA%D0%B8%D0%BE\">новая телебашня</a>, более высокая, предназначенная для передачи современного цифрового сигнала.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Сейчас башня является скорее туристической достопримечательностью, став одним из символов Токио. Ежегодно более 2,5&nbsp;млн туристов посещают смотровые площадки, залы и музеи башни. С момента открытия на башне побывало около 150&nbsp;млн человек<sup><a href=\"https://ru.wikipedia.org/wiki/%D0%A2%D0%B5%D0%BB%D0%B5%D0%B2%D0%B8%D0%B7%D0%B8%D0%BE%D0%BD%D0%BD%D0%B0%D1%8F_%D0%B1%D0%B0%D1%88%D0%BD%D1%8F_%D0%A2%D0%BE%D0%BA%D0%B8%D0%BE#cite_note-3\">[3]</a></sup>. Под башней расположено четырёхэтажное административное здание, в котором расположены музеи, рестораны и магазины. На высоте в 145 метров находится двухэтажная главная обсерватория, а для посетителей доступна малая специальная обсерватория, расположенная на высоте в 250 метров. Токийская телебашня часто становится местом действия в фильмах,&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%90%D0%BD%D0%B8%D0%BC%D0%B5\">аниме</a>&nbsp;и&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%9C%D0%B0%D0%BD%D0%B3%D0%B0\">манге</a>&nbsp;и служит указанием на то, что события разворачиваются именно в Токио.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Верхушка антенны телебашни была изогнута 11 марта 2011 в результате <a href=\"https://ru.wikipedia.org/wiki/%D0%97%D0%B5%D0%BC%D0%BB%D0%B5%D1%82%D1%80%D1%8F%D1%81%D0%B5%D0%BD%D0%B8%D0%B5_%D0%B2%D0%B1%D0%BB%D0%B8%D0%B7%D0%B8_%D0%BE%D1%81%D1%82%D1%80%D0%BE%D0%B2%D0%B0_%D0%A5%D0%BE%D0%BD%D1%81%D1%8E_(2011)\">землетрясения</a>.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":12,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://localhost/simple/wp-content/uploads/2021/11/7h77fwkk_x4.jpg\" alt=\"architectural photo of tower between buildings\" class=\"wp-image-12\"/></figure>\n<!-- /wp:image -->', 'Телевизионная башня Токио', '', 'publish', 'open', 'open', '', 'televizionnaya-bashnya-tokio', '', '', '2021-11-28 15:17:38', '2021-11-28 12:17:38', '', 0, 'http://localhost/simple/?p=11', 0, 'post', '', 0),
(12, 1, '2021-11-28 15:17:28', '2021-11-28 12:17:28', '', 'Photo by Jezael Melgoza', '', 'inherit', 'open', 'closed', '', 'photo-by-jezael-melgoza', '', '', '2021-11-28 15:17:28', '2021-11-28 12:17:28', '', 11, 'http://localhost/simple/?attachment_id=12', 0, 'attachment', 'image/jpeg', 0),
(13, 1, '2021-11-28 15:17:38', '2021-11-28 12:17:38', '<!-- wp:paragraph -->\n<p><strong>елевизионная башня Токио</strong>, также&nbsp;<strong>Токийская башня</strong><sup><a href=\"https://ru.wikipedia.org/wiki/%D0%A2%D0%B5%D0%BB%D0%B5%D0%B2%D0%B8%D0%B7%D0%B8%D0%BE%D0%BD%D0%BD%D0%B0%D1%8F_%D0%B1%D0%B0%D1%88%D0%BD%D1%8F_%D0%A2%D0%BE%D0%BA%D0%B8%D0%BE#cite_note-2\">[2]</a></sup>&nbsp;(<a href=\"https://ru.wikipedia.org/wiki/%D0%AF%D0%BF%D0%BE%D0%BD%D1%81%D0%BA%D0%B8%D0%B9_%D1%8F%D0%B7%D1%8B%D0%BA\">яп.</a>&nbsp;東京タワー&nbsp;<em>То:кё: тава:</em>)&nbsp;— теле- и радиокоммуникационная башня, расположенная в г.&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%9C%D0%B8%D0%BD%D0%B0%D1%82%D0%BE\">Минато</a>,&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%A2%D0%BE%D0%BA%D0%B8%D0%BE\">Токио</a>. Высота башни&nbsp;— 332,6 метра. На момент постройки&nbsp;— самое высокое в мире сооружение из стали. Имеет решётчатую конструкцию и согласно нормам&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%90%D0%B2%D0%B8%D0%B0%D1%86%D0%B8%D0%BE%D0%BD%D0%BD%D0%B0%D1%8F_%D0%B1%D0%B5%D0%B7%D0%BE%D0%BF%D0%B0%D1%81%D0%BD%D0%BE%D1%81%D1%82%D1%8C\">авиационной безопасности</a>&nbsp;выкрашена в интернациональные оранжевый и белый цвета. Входит в список 29 самых высоких объектов&nbsp;<a href=\"https://ru.wikipedia.org/w/index.php?title=%D0%92%D1%81%D0%B5%D0%BC%D0%B8%D1%80%D0%BD%D0%B0%D1%8F_%D1%84%D0%B5%D0%B4%D0%B5%D1%80%D0%B0%D1%86%D0%B8%D1%8F_%D0%B2%D1%8B%D1%81%D0%BE%D1%82%D0%BD%D1%8B%D1%85_%D0%B1%D0%B0%D1%88%D0%B5%D0%BD&amp;action=edit&amp;redlink=1\">Всемирной федерации высотных башен</a>, занимая среди них 14-е место. Среди самых высоких телебашен мира занимает лишь 23-е место.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Построенная в&nbsp;<a href=\"https://ru.wikipedia.org/wiki/1958_%D0%B3%D0%BE%D0%B4\">1958 году</a>, изначально башня предназначалась для телевещания на Токио и регион&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%9A%D0%B0%D0%BD%D1%82%D0%BE_(%D1%80%D0%B5%D0%B3%D0%B8%D0%BE%D0%BD)\">Канто</a>, но тремя годами позже на неё были установлены ещё и радиоантенны для передачи радиосигналов. Антенна на вершине башни использовалась для трансляции теле- и радиосигнала крупнейших японских телесетей:&nbsp;<a href=\"https://ru.wikipedia.org/wiki/NHK\">NHK</a>,&nbsp;<a href=\"https://ru.wikipedia.org/wiki/Tokyo_Broadcasting_System\">TBS</a>&nbsp;и&nbsp;<a href=\"https://ru.wikipedia.org/wiki/Fuji_Television\">Fuji Television</a>&nbsp;вплоть до 2011 года, пока не была построена&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%9D%D0%B5%D0%B1%D0%B5%D1%81%D0%BD%D0%BE%D0%B5_%D0%B4%D0%B5%D1%80%D0%B5%D0%B2%D0%BE_%D0%A2%D0%BE%D0%BA%D0%B8%D0%BE\">новая телебашня</a>, более высокая, предназначенная для передачи современного цифрового сигнала.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Сейчас башня является скорее туристической достопримечательностью, став одним из символов Токио. Ежегодно более 2,5&nbsp;млн туристов посещают смотровые площадки, залы и музеи башни. С момента открытия на башне побывало около 150&nbsp;млн человек<sup><a href=\"https://ru.wikipedia.org/wiki/%D0%A2%D0%B5%D0%BB%D0%B5%D0%B2%D0%B8%D0%B7%D0%B8%D0%BE%D0%BD%D0%BD%D0%B0%D1%8F_%D0%B1%D0%B0%D1%88%D0%BD%D1%8F_%D0%A2%D0%BE%D0%BA%D0%B8%D0%BE#cite_note-3\">[3]</a></sup>. Под башней расположено четырёхэтажное административное здание, в котором расположены музеи, рестораны и магазины. На высоте в 145 метров находится двухэтажная главная обсерватория, а для посетителей доступна малая специальная обсерватория, расположенная на высоте в 250 метров. Токийская телебашня часто становится местом действия в фильмах,&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%90%D0%BD%D0%B8%D0%BC%D0%B5\">аниме</a>&nbsp;и&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%9C%D0%B0%D0%BD%D0%B3%D0%B0\">манге</a>&nbsp;и служит указанием на то, что события разворачиваются именно в Токио.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Верхушка антенны телебашни была изогнута 11 марта 2011 в результате <a href=\"https://ru.wikipedia.org/wiki/%D0%97%D0%B5%D0%BC%D0%BB%D0%B5%D1%82%D1%80%D1%8F%D1%81%D0%B5%D0%BD%D0%B8%D0%B5_%D0%B2%D0%B1%D0%BB%D0%B8%D0%B7%D0%B8_%D0%BE%D1%81%D1%82%D1%80%D0%BE%D0%B2%D0%B0_%D0%A5%D0%BE%D0%BD%D1%81%D1%8E_(2011)\">землетрясения</a>.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":12,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://localhost/simple/wp-content/uploads/2021/11/7h77fwkk_x4.jpg\" alt=\"architectural photo of tower between buildings\" class=\"wp-image-12\"/></figure>\n<!-- /wp:image -->', 'Телевизионная башня Токио', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2021-11-28 15:17:38', '2021-11-28 12:17:38', '', 11, 'http://localhost/simple/?p=13', 0, 'revision', '', 0),
(14, 1, '2021-11-28 15:18:40', '2021-11-28 12:18:40', '<!-- wp:paragraph -->\n<p><strong>Колизе́й</strong>&nbsp;(<a href=\"https://ru.wikipedia.org/wiki/%D0%9B%D0%B0%D1%82%D0%B8%D0%BD%D1%81%D0%BA%D0%B8%D0%B9_%D1%8F%D0%B7%D1%8B%D0%BA\">лат.</a>&nbsp;<em>Colosseus, сolosseum</em>&nbsp;— исполинский)<sup><a href=\"https://ru.wikipedia.org/wiki/%D0%9A%D0%BE%D0%BB%D0%B8%D0%B7%D0%B5%D0%B9#cite_note-1\">[1]</a></sup>, или&nbsp;<strong>амфитеатр Флавиев</strong>&nbsp;(<a href=\"https://ru.wikipedia.org/wiki/%D0%9B%D0%B0%D1%82%D0%B8%D0%BD%D1%81%D0%BA%D0%B8%D0%B9_%D1%8F%D0%B7%D1%8B%D0%BA\">лат.</a>&nbsp;<em>Amphitheatrum Flavium</em>)&nbsp;—&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%90%D0%BC%D1%84%D0%B8%D1%82%D0%B5%D0%B0%D1%82%D1%80\">амфитеатр</a>,&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%9F%D0%B0%D0%BC%D1%8F%D1%82%D0%BD%D0%B8%D0%BA_%D0%B0%D1%80%D1%85%D0%B8%D1%82%D0%B5%D0%BA%D1%82%D1%83%D1%80%D1%8B\">памятник архитектуры</a>&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%94%D1%80%D0%B5%D0%B2%D0%BD%D0%B8%D0%B9_%D0%A0%D0%B8%D0%BC\">Древнего Рима</a>, наиболее известное и одно из самых грандиозных сооружений Древнего мира, сохранившихся до нашего времени<sup><a href=\"https://ru.wikipedia.org/wiki/%D0%9A%D0%BE%D0%BB%D0%B8%D0%B7%D0%B5%D0%B9#cite_note-_5506bf6099e24175-2\">[2]</a></sup>. Находится в&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%A0%D0%B8%D0%BC\">Риме</a>, в низине между&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%AD%D1%81%D0%BA%D0%B2%D0%B8%D0%BB%D0%B8%D0%BD\">Эсквилинским</a>,&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%9F%D0%B0%D0%BB%D0%B0%D1%82%D0%B8%D0%BD\">Палатинским</a>&nbsp;и&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%A6%D0%B5%D0%BB%D0%B8%D0%B9\">Целиевым</a>&nbsp;холмами.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Строительство самого большого амфитеатра античного мира, вместимостью свыше 50 тыс. человек, велось на протяжении восьми лет как коллективное сооружение императоров <a href=\"https://ru.wikipedia.org/wiki/%D0%94%D0%B8%D0%BD%D0%B0%D1%81%D1%82%D0%B8%D1%8F_%D0%A4%D0%BB%D0%B0%D0%B2%D0%B8%D0%B5%D0%B2\">династии Флавиев</a>. Его начали строить в 72 году н. э. при императоре <a href=\"https://ru.wikipedia.org/wiki/%D0%92%D0%B5%D1%81%D0%BF%D0%B0%D1%81%D0%B8%D0%B0%D0%BD\">Веспасиане</a>, а в 80 году н. э. амфитеатр был освящён императором <a href=\"https://ru.wikipedia.org/wiki/%D0%A2%D0%B8%D1%82_(%D1%80%D0%B8%D0%BC%D1%81%D0%BA%D0%B8%D0%B9_%D0%B8%D0%BC%D0%BF%D0%B5%D1%80%D0%B0%D1%82%D0%BE%D1%80)\">Титом</a>. Амфитеатр расположился на том месте, где был пруд, относившийся к <a href=\"https://ru.wikipedia.org/wiki/%D0%97%D0%BE%D0%BB%D0%BE%D1%82%D0%BE%D0%B9_%D0%B4%D0%BE%D0%BC_%D0%9D%D0%B5%D1%80%D0%BE%D0%BD%D0%B0\">Золотому дому Нерона</a>.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":15,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://localhost/simple/wp-content/uploads/2021/11/ybtnz4peypi.jpg\" alt=\"beige concrete building\" class=\"wp-image-15\"/></figure>\n<!-- /wp:image -->', 'Колизей', '', 'publish', 'open', 'open', '', 'kolizej', '', '', '2021-11-28 15:18:40', '2021-11-28 12:18:40', '', 0, 'http://localhost/simple/?p=14', 0, 'post', '', 0),
(15, 1, '2021-11-28 15:18:29', '2021-11-28 12:18:29', '', 'Photo by Alex Azabache', '', 'inherit', 'open', 'closed', '', 'photo-by-alex-azabache', '', '', '2021-11-28 15:18:29', '2021-11-28 12:18:29', '', 14, 'http://localhost/simple/?attachment_id=15', 0, 'attachment', 'image/jpeg', 0),
(16, 1, '2021-11-28 15:18:40', '2021-11-28 12:18:40', '<!-- wp:paragraph -->\n<p><strong>Колизе́й</strong>&nbsp;(<a href=\"https://ru.wikipedia.org/wiki/%D0%9B%D0%B0%D1%82%D0%B8%D0%BD%D1%81%D0%BA%D0%B8%D0%B9_%D1%8F%D0%B7%D1%8B%D0%BA\">лат.</a>&nbsp;<em>Colosseus, сolosseum</em>&nbsp;— исполинский)<sup><a href=\"https://ru.wikipedia.org/wiki/%D0%9A%D0%BE%D0%BB%D0%B8%D0%B7%D0%B5%D0%B9#cite_note-1\">[1]</a></sup>, или&nbsp;<strong>амфитеатр Флавиев</strong>&nbsp;(<a href=\"https://ru.wikipedia.org/wiki/%D0%9B%D0%B0%D1%82%D0%B8%D0%BD%D1%81%D0%BA%D0%B8%D0%B9_%D1%8F%D0%B7%D1%8B%D0%BA\">лат.</a>&nbsp;<em>Amphitheatrum Flavium</em>)&nbsp;—&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%90%D0%BC%D1%84%D0%B8%D1%82%D0%B5%D0%B0%D1%82%D1%80\">амфитеатр</a>,&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%9F%D0%B0%D0%BC%D1%8F%D1%82%D0%BD%D0%B8%D0%BA_%D0%B0%D1%80%D1%85%D0%B8%D1%82%D0%B5%D0%BA%D1%82%D1%83%D1%80%D1%8B\">памятник архитектуры</a>&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%94%D1%80%D0%B5%D0%B2%D0%BD%D0%B8%D0%B9_%D0%A0%D0%B8%D0%BC\">Древнего Рима</a>, наиболее известное и одно из самых грандиозных сооружений Древнего мира, сохранившихся до нашего времени<sup><a href=\"https://ru.wikipedia.org/wiki/%D0%9A%D0%BE%D0%BB%D0%B8%D0%B7%D0%B5%D0%B9#cite_note-_5506bf6099e24175-2\">[2]</a></sup>. Находится в&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%A0%D0%B8%D0%BC\">Риме</a>, в низине между&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%AD%D1%81%D0%BA%D0%B2%D0%B8%D0%BB%D0%B8%D0%BD\">Эсквилинским</a>,&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%9F%D0%B0%D0%BB%D0%B0%D1%82%D0%B8%D0%BD\">Палатинским</a>&nbsp;и&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%A6%D0%B5%D0%BB%D0%B8%D0%B9\">Целиевым</a>&nbsp;холмами.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Строительство самого большого амфитеатра античного мира, вместимостью свыше 50 тыс. человек, велось на протяжении восьми лет как коллективное сооружение императоров <a href=\"https://ru.wikipedia.org/wiki/%D0%94%D0%B8%D0%BD%D0%B0%D1%81%D1%82%D0%B8%D1%8F_%D0%A4%D0%BB%D0%B0%D0%B2%D0%B8%D0%B5%D0%B2\">династии Флавиев</a>. Его начали строить в 72 году н. э. при императоре <a href=\"https://ru.wikipedia.org/wiki/%D0%92%D0%B5%D1%81%D0%BF%D0%B0%D1%81%D0%B8%D0%B0%D0%BD\">Веспасиане</a>, а в 80 году н. э. амфитеатр был освящён императором <a href=\"https://ru.wikipedia.org/wiki/%D0%A2%D0%B8%D1%82_(%D1%80%D0%B8%D0%BC%D1%81%D0%BA%D0%B8%D0%B9_%D0%B8%D0%BC%D0%BF%D0%B5%D1%80%D0%B0%D1%82%D0%BE%D1%80)\">Титом</a>. Амфитеатр расположился на том месте, где был пруд, относившийся к <a href=\"https://ru.wikipedia.org/wiki/%D0%97%D0%BE%D0%BB%D0%BE%D1%82%D0%BE%D0%B9_%D0%B4%D0%BE%D0%BC_%D0%9D%D0%B5%D1%80%D0%BE%D0%BD%D0%B0\">Золотому дому Нерона</a>.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":15,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://localhost/simple/wp-content/uploads/2021/11/ybtnz4peypi.jpg\" alt=\"beige concrete building\" class=\"wp-image-15\"/></figure>\n<!-- /wp:image -->', 'Колизей', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2021-11-28 15:18:40', '2021-11-28 12:18:40', '', 14, 'http://localhost/simple/?p=16', 0, 'revision', '', 0),
(17, 1, '2021-11-28 15:20:19', '2021-11-28 12:20:19', '<!-- wp:paragraph -->\n<p><strong>Кёнбоккун</strong>&nbsp;(<em>Дворец Кёнбок</em>)&nbsp;— дворцовый комплекс, расположенный на севере&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%A1%D0%B5%D1%83%D0%BB\">Сеула</a>,&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%AE%D0%B6%D0%BD%D0%B0%D1%8F_%D0%9A%D0%BE%D1%80%D0%B5%D1%8F\">Южная Корея</a>. Был главным и крупнейшим дворцом династии&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%A7%D0%BE%D1%81%D0%BE%D0%BD\">Чосон</a>, в котором жила королевская семья, и одним из пяти больших дворцов, возведённых в период Чосон.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Построен в&nbsp;<a href=\"https://ru.wikipedia.org/wiki/1394_%D0%B3%D0%BE%D0%B4\">1394 году</a>&nbsp;по проекту&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%9A%D0%BE%D1%80%D0%B5%D1%8F\">корейского</a>&nbsp;сановника Чон Доджона.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Некоторые части дворца были сожжены во время&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%AF%D0%BF%D0%BE%D0%BD%D0%B8%D1%8F\">японского</a>&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%98%D0%BC%D0%B4%D0%B6%D0%B8%D0%BD%D1%81%D0%BA%D0%B0%D1%8F_%D0%B2%D0%BE%D0%B9%D0%BD%D0%B0\">вторжения</a>&nbsp;в&nbsp;<a href=\"https://ru.wikipedia.org/wiki/1592_%D0%B3%D0%BE%D0%B4\">1592 году</a>. Реконструирован в 1860-е годы усилиями&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%A2%D1%8D%D0%B2%D0%BE%D0%BD%D0%B3%D1%83%D0%BD\">Тэвонгуна</a>. После реконструкции в нем было 330 зданий и 5792 комнаты. Общая площадь комплекса&nbsp;— 410 тыс. квадратных метров. Вскоре после убийства&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%98%D0%BC%D0%BF%D0%B5%D1%80%D0%B0%D1%82%D1%80%D0%B8%D1%86%D0%B0_%D0%9C%D1%91%D0%BD%D1%81%D0%BE%D0%BD\">императрицы Мёнсон</a>&nbsp;японскими агентами в&nbsp;<a href=\"https://ru.wikipedia.org/wiki/1895_%D0%B3%D0%BE%D0%B4\">1895&nbsp;году</a>&nbsp;её муж император&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%9A%D0%BE%D0%B4%D0%B6%D0%BE%D0%BD\">Коджон</a>&nbsp;покинул дворец и больше туда не возвращался.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>В&nbsp;<a href=\"https://ru.wikipedia.org/wiki/1911_%D0%B3%D0%BE%D0%B4\">1911 году</a>&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%AF%D0%BF%D0%BE%D0%BD%D0%B8%D1%8F\">японцы</a>&nbsp;снесли 10 зданий дворцового комплекса, построив&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%94%D0%BE%D0%BC_%D0%B3%D0%B5%D0%BD%D0%B5%D1%80%D0%B0%D0%BB-%D0%B3%D1%83%D0%B1%D0%B5%D1%80%D0%BD%D0%B0%D1%82%D0%BE%D1%80%D0%B0_%D0%9A%D0%BE%D1%80%D0%B5%D0%B8\">Дом генерал-губернатора Кореи</a>.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Основные сооружения Кёнбоккуна&nbsp;— это тронный зал Кынджонджон (<a href=\"https://ru.wikipedia.org/wiki/%D0%A1%D0%BE%D0%BA%D1%80%D0%BE%D0%B2%D0%B8%D1%89%D0%B0_%D0%B4%D0%B8%D0%BD%D0%B0%D1%81%D1%82%D0%B8%D0%B8_%D0%A7%D0%BE%D1%81%D0%BE%D0%BD\">в списке национальных сокровищ под номером 223</a>), а также павильон Кёнхверу (<a href=\"https://ru.wikipedia.org/wiki/%D0%A1%D0%BE%D0%BA%D1%80%D0%BE%D0%B2%D0%B8%D1%89%D0%B0_%D0%B4%D0%B8%D0%BD%D0%B0%D1%81%D1%82%D0%B8%D0%B8_%D0%A7%D0%BE%D1%81%D0%BE%D0%BD\">в списке национальных сокровищ под номером 224</a>), стоящий посреди искусственного озера на 48&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%93%D1%80%D0%B0%D0%BD%D0%B8%D1%82\">гранитных</a>&nbsp;колоннах. Этот павильон изображён на&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%AE%D0%B6%D0%BD%D0%BE%D0%BA%D0%BE%D1%80%D0%B5%D0%B9%D1%81%D0%BA%D0%B0%D1%8F_%D0%B2%D0%BE%D0%BD%D0%B0\">банкноте в 10000 вон</a>&nbsp;старого образца (до выпуска нового вида банкнот в&nbsp;<a href=\"https://ru.wikipedia.org/wiki/2007_%D0%B3%D0%BE%D0%B4\">2007 году</a>).</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Сейчас дворец представляет собой музей под открытым небом. Перед входом во дворец можно увидеть красочные инсценировки смены караула, проводившейся здесь во времена династии Чосон.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":18,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://localhost/simple/wp-content/uploads/2021/11/dntwz-vnz30.jpg\" alt=\"\" class=\"wp-image-18\"/></figure>\n<!-- /wp:image -->', 'Кёнбоккун', '', 'publish', 'open', 'open', '', 'kyonbokkun', '', '', '2021-11-28 15:20:19', '2021-11-28 12:20:19', '', 0, 'http://localhost/simple/?p=17', 0, 'post', '', 0),
(18, 1, '2021-11-28 15:20:08', '2021-11-28 12:20:08', '', 'Photo by Konrad Ziemlewski', '', 'inherit', 'open', 'closed', '', 'photo-by-konrad-ziemlewski', '', '', '2021-11-28 15:20:08', '2021-11-28 12:20:08', '', 17, 'http://localhost/simple/?attachment_id=18', 0, 'attachment', 'image/jpeg', 0),
(19, 1, '2021-11-28 15:20:19', '2021-11-28 12:20:19', '<!-- wp:paragraph -->\n<p><strong>Кёнбоккун</strong>&nbsp;(<em>Дворец Кёнбок</em>)&nbsp;— дворцовый комплекс, расположенный на севере&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%A1%D0%B5%D1%83%D0%BB\">Сеула</a>,&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%AE%D0%B6%D0%BD%D0%B0%D1%8F_%D0%9A%D0%BE%D1%80%D0%B5%D1%8F\">Южная Корея</a>. Был главным и крупнейшим дворцом династии&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%A7%D0%BE%D1%81%D0%BE%D0%BD\">Чосон</a>, в котором жила королевская семья, и одним из пяти больших дворцов, возведённых в период Чосон.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Построен в&nbsp;<a href=\"https://ru.wikipedia.org/wiki/1394_%D0%B3%D0%BE%D0%B4\">1394 году</a>&nbsp;по проекту&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%9A%D0%BE%D1%80%D0%B5%D1%8F\">корейского</a>&nbsp;сановника Чон Доджона.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Некоторые части дворца были сожжены во время&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%AF%D0%BF%D0%BE%D0%BD%D0%B8%D1%8F\">японского</a>&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%98%D0%BC%D0%B4%D0%B6%D0%B8%D0%BD%D1%81%D0%BA%D0%B0%D1%8F_%D0%B2%D0%BE%D0%B9%D0%BD%D0%B0\">вторжения</a>&nbsp;в&nbsp;<a href=\"https://ru.wikipedia.org/wiki/1592_%D0%B3%D0%BE%D0%B4\">1592 году</a>. Реконструирован в 1860-е годы усилиями&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%A2%D1%8D%D0%B2%D0%BE%D0%BD%D0%B3%D1%83%D0%BD\">Тэвонгуна</a>. После реконструкции в нем было 330 зданий и 5792 комнаты. Общая площадь комплекса&nbsp;— 410 тыс. квадратных метров. Вскоре после убийства&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%98%D0%BC%D0%BF%D0%B5%D1%80%D0%B0%D1%82%D1%80%D0%B8%D1%86%D0%B0_%D0%9C%D1%91%D0%BD%D1%81%D0%BE%D0%BD\">императрицы Мёнсон</a>&nbsp;японскими агентами в&nbsp;<a href=\"https://ru.wikipedia.org/wiki/1895_%D0%B3%D0%BE%D0%B4\">1895&nbsp;году</a>&nbsp;её муж император&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%9A%D0%BE%D0%B4%D0%B6%D0%BE%D0%BD\">Коджон</a>&nbsp;покинул дворец и больше туда не возвращался.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>В&nbsp;<a href=\"https://ru.wikipedia.org/wiki/1911_%D0%B3%D0%BE%D0%B4\">1911 году</a>&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%AF%D0%BF%D0%BE%D0%BD%D0%B8%D1%8F\">японцы</a>&nbsp;снесли 10 зданий дворцового комплекса, построив&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%94%D0%BE%D0%BC_%D0%B3%D0%B5%D0%BD%D0%B5%D1%80%D0%B0%D0%BB-%D0%B3%D1%83%D0%B1%D0%B5%D1%80%D0%BD%D0%B0%D1%82%D0%BE%D1%80%D0%B0_%D0%9A%D0%BE%D1%80%D0%B5%D0%B8\">Дом генерал-губернатора Кореи</a>.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Основные сооружения Кёнбоккуна&nbsp;— это тронный зал Кынджонджон (<a href=\"https://ru.wikipedia.org/wiki/%D0%A1%D0%BE%D0%BA%D1%80%D0%BE%D0%B2%D0%B8%D1%89%D0%B0_%D0%B4%D0%B8%D0%BD%D0%B0%D1%81%D1%82%D0%B8%D0%B8_%D0%A7%D0%BE%D1%81%D0%BE%D0%BD\">в списке национальных сокровищ под номером 223</a>), а также павильон Кёнхверу (<a href=\"https://ru.wikipedia.org/wiki/%D0%A1%D0%BE%D0%BA%D1%80%D0%BE%D0%B2%D0%B8%D1%89%D0%B0_%D0%B4%D0%B8%D0%BD%D0%B0%D1%81%D1%82%D0%B8%D0%B8_%D0%A7%D0%BE%D1%81%D0%BE%D0%BD\">в списке национальных сокровищ под номером 224</a>), стоящий посреди искусственного озера на 48&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%93%D1%80%D0%B0%D0%BD%D0%B8%D1%82\">гранитных</a>&nbsp;колоннах. Этот павильон изображён на&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%AE%D0%B6%D0%BD%D0%BE%D0%BA%D0%BE%D1%80%D0%B5%D0%B9%D1%81%D0%BA%D0%B0%D1%8F_%D0%B2%D0%BE%D0%BD%D0%B0\">банкноте в 10000 вон</a>&nbsp;старого образца (до выпуска нового вида банкнот в&nbsp;<a href=\"https://ru.wikipedia.org/wiki/2007_%D0%B3%D0%BE%D0%B4\">2007 году</a>).</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Сейчас дворец представляет собой музей под открытым небом. Перед входом во дворец можно увидеть красочные инсценировки смены караула, проводившейся здесь во времена династии Чосон.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":18,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://localhost/simple/wp-content/uploads/2021/11/dntwz-vnz30.jpg\" alt=\"\" class=\"wp-image-18\"/></figure>\n<!-- /wp:image -->', 'Кёнбоккун', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2021-11-28 15:20:19', '2021-11-28 12:20:19', '', 17, 'http://localhost/simple/?p=19', 0, 'revision', '', 0),
(20, 1, '2021-11-28 15:21:06', '2021-11-28 12:21:06', '<!-- wp:image {\"id\":21,\"sizeSlug\":\"full\",\"linkDestination\":\"none\",\"className\":\"is-style-rounded\"} -->\n<figure class=\"wp-block-image size-full is-style-rounded\"><img src=\"http://localhost/simple/wp-content/uploads/2021/11/m0awnxnlamw.jpg\" alt=\"airplane on sky during golden hour\" class=\"wp-image-21\"/></figure>\n<!-- /wp:image -->', 'Путешествуйте', '', 'publish', 'open', 'open', '', 'puteshestvujte', '', '', '2021-11-28 15:21:06', '2021-11-28 12:21:06', '', 0, 'http://localhost/simple/?p=20', 0, 'post', '', 0),
(21, 1, '2021-11-28 15:20:47', '2021-11-28 12:20:47', '', 'Photo by Tom Barrett', '', 'inherit', 'open', 'closed', '', 'photo-by-tom-barrett', '', '', '2021-11-28 15:20:47', '2021-11-28 12:20:47', '', 20, 'http://localhost/simple/?attachment_id=21', 0, 'attachment', 'image/jpeg', 0),
(22, 1, '2021-11-28 15:21:06', '2021-11-28 12:21:06', '<!-- wp:image {\"id\":21,\"sizeSlug\":\"full\",\"linkDestination\":\"none\",\"className\":\"is-style-rounded\"} -->\n<figure class=\"wp-block-image size-full is-style-rounded\"><img src=\"http://localhost/simple/wp-content/uploads/2021/11/m0awnxnlamw.jpg\" alt=\"airplane on sky during golden hour\" class=\"wp-image-21\"/></figure>\n<!-- /wp:image -->', 'Путешествуйте', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2021-11-28 15:21:06', '2021-11-28 12:21:06', '', 20, 'http://localhost/simple/?p=22', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(23, 1, '2021-11-28 15:21:27', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-11-28 15:21:27', '0000-00-00 00:00:00', '', 0, 'http://localhost/simple/?p=23', 1, 'nav_menu_item', '', 0),
(24, 1, '2021-11-28 15:21:27', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-11-28 15:21:27', '0000-00-00 00:00:00', '', 2, 'http://localhost/simple/?p=24', 1, 'nav_menu_item', '', 0),
(25, 1, '2021-11-28 15:21:27', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-11-28 15:21:27', '0000-00-00 00:00:00', '', 4, 'http://localhost/simple/?p=25', 1, 'nav_menu_item', '', 0),
(26, 1, '2021-11-28 15:21:27', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-11-28 15:21:27', '0000-00-00 00:00:00', '', 3, 'http://localhost/simple/?p=26', 1, 'nav_menu_item', '', 0),
(27, 1, '2021-11-28 15:21:27', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-11-28 15:21:27', '0000-00-00 00:00:00', '', 5, 'http://localhost/simple/?p=27', 1, 'nav_menu_item', '', 0),
(28, 1, '2021-11-28 15:22:19', '2021-11-28 12:22:19', ' ', '', '', 'publish', 'closed', 'closed', '', '28', '', '', '2021-11-28 15:22:19', '2021-11-28 12:22:19', '', 0, 'http://localhost/simple/?p=28', 3, 'nav_menu_item', '', 0),
(29, 1, '2021-11-28 15:22:19', '2021-11-28 12:22:19', ' ', '', '', 'publish', 'closed', 'closed', '', '29', '', '', '2021-11-28 15:22:19', '2021-11-28 12:22:19', '', 4, 'http://localhost/simple/?p=29', 4, 'nav_menu_item', '', 0),
(30, 1, '2021-11-28 15:22:19', '2021-11-28 12:22:19', ' ', '', '', 'publish', 'closed', 'closed', '', '30', '', '', '2021-11-28 15:22:19', '2021-11-28 12:22:19', '', 0, 'http://localhost/simple/?p=30', 6, 'nav_menu_item', '', 0),
(31, 1, '2021-11-28 15:22:19', '2021-11-28 12:22:19', ' ', '', '', 'publish', 'closed', 'closed', '', '31', '', '', '2021-11-28 15:22:19', '2021-11-28 12:22:19', '', 3, 'http://localhost/simple/?p=31', 7, 'nav_menu_item', '', 0),
(32, 1, '2021-11-28 15:22:19', '2021-11-28 12:22:19', ' ', '', '', 'publish', 'closed', 'closed', '', '32', '', '', '2021-11-28 15:22:19', '2021-11-28 12:22:19', '', 0, 'http://localhost/simple/?p=32', 9, 'nav_menu_item', '', 0),
(33, 1, '2021-11-28 15:22:19', '2021-11-28 12:22:19', ' ', '', '', 'publish', 'closed', 'closed', '', '33', '', '', '2021-11-28 15:22:19', '2021-11-28 12:22:19', '', 2, 'http://localhost/simple/?p=33', 10, 'nav_menu_item', '', 0),
(34, 1, '2021-11-28 15:22:19', '2021-11-28 12:22:19', ' ', '', '', 'publish', 'closed', 'closed', '', '34', '', '', '2021-11-28 15:22:19', '2021-11-28 12:22:19', '', 0, 'http://localhost/simple/?p=34', 1, 'nav_menu_item', '', 0),
(35, 1, '2021-11-28 15:22:19', '2021-11-28 12:22:19', ' ', '', '', 'publish', 'closed', 'closed', '', '35', '', '', '2021-11-28 15:22:19', '2021-11-28 12:22:19', '', 0, 'http://localhost/simple/?p=35', 12, 'nav_menu_item', '', 0),
(36, 1, '2021-11-28 15:22:19', '2021-11-28 12:22:19', ' ', '', '', 'publish', 'closed', 'closed', '', '36', '', '', '2021-11-28 15:22:19', '2021-11-28 12:22:19', '', 5, 'http://localhost/simple/?p=36', 13, 'nav_menu_item', '', 0),
(37, 1, '2021-11-28 15:22:19', '2021-11-28 12:22:19', ' ', '', '', 'publish', 'closed', 'closed', '', '37', '', '', '2021-11-28 15:22:19', '2021-11-28 12:22:19', '', 0, 'http://localhost/simple/?p=37', 2, 'nav_menu_item', '', 0),
(38, 1, '2021-11-28 15:22:19', '2021-11-28 12:22:19', ' ', '', '', 'publish', 'closed', 'closed', '', '38', '', '', '2021-11-28 15:22:19', '2021-11-28 12:22:19', '', 0, 'http://localhost/simple/?p=38', 11, 'nav_menu_item', '', 0),
(39, 1, '2021-11-28 15:22:19', '2021-11-28 12:22:19', ' ', '', '', 'publish', 'closed', 'closed', '', '39', '', '', '2021-11-28 15:22:19', '2021-11-28 12:22:19', '', 0, 'http://localhost/simple/?p=39', 5, 'nav_menu_item', '', 0),
(40, 1, '2021-11-28 15:22:19', '2021-11-28 12:22:19', ' ', '', '', 'publish', 'closed', 'closed', '', '40', '', '', '2021-11-28 15:22:19', '2021-11-28 12:22:19', '', 0, 'http://localhost/simple/?p=40', 14, 'nav_menu_item', '', 0),
(41, 1, '2021-11-28 15:22:19', '2021-11-28 12:22:19', ' ', '', '', 'publish', 'closed', 'closed', '', '41', '', '', '2021-11-28 15:22:19', '2021-11-28 12:22:19', '', 0, 'http://localhost/simple/?p=41', 8, 'nav_menu_item', '', 0),
(42, 1, '2021-11-28 15:56:19', '2021-11-28 12:56:19', '{\n    \"custom_css[twentytwentyone-child]\": {\n        \"value\": \".site-title  {\\n  color: #f00;\\n}\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-11-28 12:56:19\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'd11fbf1b-be42-45bc-8a2b-b1f31dbc8031', '', '', '2021-11-28 15:56:19', '2021-11-28 12:56:19', '', 0, 'http://localhost/simple/2021/11/28/d11fbf1b-be42-45bc-8a2b-b1f31dbc8031/', 0, 'customize_changeset', '', 0),
(43, 1, '2021-11-28 15:56:19', '2021-11-28 12:56:19', '.site-title  {\n  color: #f00;\n}', 'twentytwentyone-child', '', 'publish', 'closed', 'closed', '', 'twentytwentyone-child', '', '', '2021-11-28 15:56:19', '2021-11-28 12:56:19', '', 0, 'http://localhost/simple/2021/11/28/twentytwentyone-child/', 0, 'custom_css', '', 0),
(44, 1, '2021-11-28 15:56:19', '2021-11-28 12:56:19', '.site-title  {\n  color: #f00;\n}', 'twentytwentyone-child', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2021-11-28 15:56:19', '2021-11-28 12:56:19', '', 43, 'http://localhost/simple/?p=44', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Общая', 'obshhaya', 0),
(2, 'Корея Южная', 'koreya-yuzhnaya', 0),
(3, 'Китай', 'kitaj', 0),
(4, 'Италия', 'italiya', 0),
(5, 'Япония', 'yaponiya', 0),
(8, 'Сеул', 'seul', 0),
(9, 'Рим', 'rim', 0),
(10, 'Пекин', 'pekin', 0),
(11, 'Токио', 'tokio', 0),
(12, 'Main', 'main', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(5, 10, 0),
(11, 11, 0),
(14, 9, 0),
(17, 8, 0),
(20, 1, 0),
(28, 12, 0),
(29, 12, 0),
(30, 12, 0),
(31, 12, 0),
(32, 12, 0),
(33, 12, 0),
(34, 12, 0),
(35, 12, 0),
(36, 12, 0),
(37, 12, 0),
(38, 12, 0),
(39, 12, 0),
(40, 12, 0),
(41, 12, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 2),
(2, 2, 'category', '', 0, 0),
(3, 3, 'category', '', 0, 0),
(4, 4, 'category', '', 0, 0),
(5, 5, 'category', '', 0, 0),
(8, 8, 'category', '', 2, 1),
(9, 9, 'category', '', 4, 1),
(10, 10, 'category', '', 3, 1),
(11, 11, 'category', '', 5, 1),
(12, 12, 'nav_menu', '', 0, 14);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'Veronika220506'),
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
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"513e9d95dc22aa2b2eb000c6edd19adce0e47da71aa4eca456840719b204539f\";a:4:{s:10:\"expiration\";i:1638874318;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36\";s:5:\"login\";i:1638701518;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'wp_user-settings', 'libraryContent=browse'),
(19, 1, 'wp_user-settings-time', '1638101577'),
(20, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(21, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:\"add-post_tag\";i:1;s:15:\"add-post_format\";}');

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
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'Veronika220506', '$P$BrJP336AU9HVFDafsjwPZVOcYEomuj1', 'veronika220506', 'veronikakravchenko22@gmail.com', 'http://localhost/simple', '2021-11-28 12:04:39', '', 0, 'Veronika220506');

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
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

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
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=223;

--
-- AUTO_INCREMENT для таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=205;

--
-- AUTO_INCREMENT для таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT для таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT для таблицы `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
