-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 09, 2017 at 08:39 AM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bigtera_blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
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
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2017-07-18 06:55:31', '2017-07-18 06:55:31', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, 'post-trashed', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
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
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://192.168.168.94/bigtera_blog', 'yes'),
(2, 'home', 'http://192.168.168.94/bigtera_blog', 'yes'),
(3, 'blogname', 'BIGTERA: Blog', 'yes'),
(4, 'blogdescription', 'Empowering Your Software-Defined Transformation', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'vergil.hsu@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '1', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '6', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:89:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:41:\"rich-text-excerpts/rich-text-excerpts.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:2:{i:0;s:66:\"C:\\xampp\\htdocs\\bigtera_blog/wp-content/themes/sparkling/style.css\";i:2;s:0:\"\";}', 'no'),
(40, 'template', 'colormag', 'yes'),
(41, 'stylesheet', 'colormag', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
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
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:6:{i:2;a:2:{s:5:\"title\";s:7:\"Find Us\";s:4:\"text\";s:200:\"<p><strong>Address</strong><br />123 Main Street<br />New York, NY 10001</p><p><strong>Hours</strong><br />Monday&mdash;Friday: 9:00AM&ndash;5:00PM<br />Saturday &amp; Sunday: 11:00AM&ndash;3:00PM</p>\";}i:3;a:2:{s:5:\"title\";s:15:\"About This Site\";s:4:\"text\";s:85:\"This may be a good place to introduce yourself and your site or include some credits.\";}i:4;a:2:{s:5:\"title\";s:7:\"Find Us\";s:4:\"text\";s:200:\"<p><strong>Address</strong><br />123 Main Street<br />New York, NY 10001</p><p><strong>Hours</strong><br />Monday&mdash;Friday: 9:00AM&ndash;5:00PM<br />Saturday &amp; Sunday: 11:00AM&ndash;3:00PM</p>\";}i:5;a:2:{s:5:\"title\";s:15:\"About This Site\";s:4:\"text\";s:85:\"This may be a good place to introduce yourself and your site or include some credits.\";}s:12:\"_multiwidget\";i:1;i:7;a:3:{s:5:\"title\";s:11:\"Information\";s:4:\"text\";s:343:\"This is the blog of <span style=\"text-decoration: underline;\"><a href=\"http://www.bigtera.com\">Bigtera</a></span>\r\n\r\n<span style=\"text-decoration: underline;\"><a href=\"http://www.bigtera.com/company.php\">Company Overview</a></span>\r\n\r\n<span style=\"text-decoration: underline;\"><a href=\"http://www.bigtera.com/contact.php\">Contact Us</a></span>\";s:6:\"filter\";s:7:\"content\";}}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '34', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(95, 'widget_recent-posts', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;s:9:\"show_date\";b:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(96, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'sidebars_widgets', 'a:18:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:6:\"meta-2\";i:1;s:17:\"recent-comments-2\";i:2;s:6:\"text-2\";i:3;s:6:\"text-3\";i:4;s:6:\"text-4\";i:5;s:6:\"text-5\";}s:22:\"colormag_right_sidebar\";a:4:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:10:\"archives-2\";i:3;s:12:\"categories-2\";}s:21:\"colormag_left_sidebar\";a:0:{}s:23:\"colormag_header_sidebar\";a:0:{}s:31:\"colormag_front_page_slider_area\";N;s:38:\"colormag_front_page_area_beside_slider\";N;s:39:\"colormag_front_page_content_top_section\";N;s:47:\"colormag_front_page_content_middle_left_section\";N;s:48:\"colormag_front_page_content_middle_right_section\";N;s:42:\"colormag_front_page_content_bottom_section\";N;s:29:\"colormag_contact_page_sidebar\";N;s:31:\"colormag_error_404_page_sidebar\";N;s:47:\"colormag_advertisement_above_the_footer_sidebar\";N;s:27:\"colormag_footer_sidebar_one\";N;s:27:\"colormag_footer_sidebar_two\";N;s:29:\"colormag_footer_sidebar_three\";N;s:28:\"colormag_footer_sidebar_four\";N;s:13:\"array_version\";i:3;}', 'yes'),
(100, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'cron', 'a:4:{i:1502261732;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1502261759;a:1:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1502333417;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(108, 'nonce_key', '@i?;Ui8DA/:{LhbSHpL3$eJv<w5`MIy _uaeY0ZosLE@}kzUIrH@UXeAcoiAAMy2', 'no'),
(109, 'nonce_salt', '^IMHvq>V8&=*`#Ll]PhJiaatD?15<Ty3<]48m#Fecuff?QNa_nj==|;iVqOt9_h;', 'no'),
(110, 'theme_mods_twentyseventeen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1500361542;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(120, 'auth_key', '49^D&#=#es~*#UZ@eOOQJ2@N6Bs$z2@PHS+!)p]w)?Y+T).yo+IZ>m9@;^ dXo&6', 'no'),
(121, 'auth_salt', 'y^U>=kJ}K-<(KYd}$`HPNp!wH>lw@yF{<LFx[l$-,U/0ZQlUR/XO`A/|8RZoFb.>', 'no'),
(122, 'logged_in_key', 'uAUV+0p)#WyGkG]!OV{ng(yLzzOIk^Ei^Tni`4q ?N<GdMr(6J%f{?c)Q]V#|[Nu', 'no'),
(123, 'logged_in_salt', 'maMswU9oHXjar}?%9w|p3s&35EGQo2l>(IV6qT8NHVNY9IjFApkV_7ktrtZK$ve0', 'no'),
(129, 'can_compress_scripts', '1', 'no'),
(151, 'theme_mods_twentyfifteen', 'a:1:{s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(159, 'current_theme', 'ColorMag', 'yes'),
(160, 'theme_mods_sparkling', 'a:5:{i:0;b:0;s:18:\"custom_css_post_id\";i:-1;s:12:\"header_image\";s:88:\"http://localhost/bigtera_blog/wp-content/uploads/2017/07/cropped-bigtera_logo_blog-1.png\";s:17:\"header_image_data\";O:8:\"stdClass\":5:{s:13:\"attachment_id\";i:42;s:3:\"url\";s:88:\"http://localhost/bigtera_blog/wp-content/uploads/2017/07/cropped-bigtera_logo_blog-1.png\";s:13:\"thumbnail_url\";s:88:\"http://localhost/bigtera_blog/wp-content/uploads/2017/07/cropped-bigtera_logo_blog-1.png\";s:6:\"height\";i:100;s:5:\"width\";i:350;}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1500521116;s:4:\"data\";a:8:{s:19:\"wp_inactive_widgets\";a:4:{i:0;s:6:\"text-2\";i:1;s:6:\"text-3\";i:2;s:6:\"text-4\";i:3;s:6:\"text-5\";}s:9:\"sidebar-1\";a:5:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:10:\"archives-2\";i:3;s:12:\"categories-2\";i:4;s:6:\"text-7\";}s:13:\"home-widget-1\";a:0:{}s:13:\"home-widget-2\";a:0:{}s:13:\"home-widget-3\";N;s:15:\"footer-widget-1\";N;s:15:\"footer-widget-2\";N;s:15:\"footer-widget-3\";N;}}}', 'yes'),
(161, 'theme_switched', '', 'yes'),
(162, 'widget_sparkling-social', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(163, 'widget_sparkling_popular_posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(164, 'widget_sparkling-cats', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(204, '_transient_timeout_plugin_slugs', '1502250721', 'no'),
(205, '_transient_plugin_slugs', 'a:3:{i:0;s:19:\"akismet/akismet.php\";i:1;s:9:\"hello.php\";i:2;s:41:\"rich-text-excerpts/rich-text-excerpts.php\";}', 'no'),
(206, 'recently_activated', 'a:0:{}', 'yes'),
(226, '_site_transient_timeout_wporg_theme_feature_list', '1500530221', 'no'),
(227, '_site_transient_wporg_theme_feature_list', 'a:3:{s:6:\"Layout\";a:7:{i:0;s:11:\"grid-layout\";i:1;s:10:\"one-column\";i:2;s:11:\"two-columns\";i:3;s:13:\"three-columns\";i:4;s:12:\"four-columns\";i:5;s:12:\"left-sidebar\";i:6;s:13:\"right-sidebar\";}s:8:\"Features\";a:20:{i:0;s:19:\"accessibility-ready\";i:1;s:10:\"buddypress\";i:2;s:17:\"custom-background\";i:3;s:13:\"custom-colors\";i:4;s:13:\"custom-header\";i:5;s:11:\"custom-menu\";i:6;s:12:\"editor-style\";i:7;s:21:\"featured-image-header\";i:8;s:15:\"featured-images\";i:9;s:15:\"flexible-header\";i:10;s:14:\"footer-widgets\";i:11;s:20:\"front-page-post-form\";i:12;s:19:\"full-width-template\";i:13;s:12:\"microformats\";i:14;s:12:\"post-formats\";i:15;s:20:\"rtl-language-support\";i:16;s:11:\"sticky-post\";i:17;s:13:\"theme-options\";i:18;s:17:\"threaded-comments\";i:19;s:17:\"translation-ready\";}s:7:\"Subject\";a:9:{i:0;s:4:\"blog\";i:1;s:10:\"e-commerce\";i:2;s:9:\"education\";i:3;s:13:\"entertainment\";i:4;s:14:\"food-and-drink\";i:5;s:7:\"holiday\";i:6;s:4:\"news\";i:7;s:11:\"photography\";i:8;s:9:\"portfolio\";}}', 'no'),
(239, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1502251222;s:7:\"checked\";a:5:{s:8:\"colormag\";s:5:\"1.2.0\";s:9:\"sparkling\";s:5:\"2.3.2\";s:13:\"twentyfifteen\";s:3:\"1.8\";s:15:\"twentyseventeen\";s:3:\"1.3\";s:13:\"twentysixteen\";s:3:\"1.3\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(240, 'theme_mods_colormag', 'a:11:{i:0;b:0;s:18:\"custom_css_post_id\";i:-1;s:11:\"custom_logo\";i:58;s:30:\"colormag_header_logo_placement\";s:16:\"header_logo_only\";s:24:\"colormag_hide_blog_front\";s:0:\"\";s:20:\"colormag_site_layout\";s:11:\"wide_layout\";s:23:\"colormag_default_layout\";s:13:\"right_sidebar\";s:22:\"colormag_primary_color\";s:7:\"#72ae2d\";s:29:\"colormag_featured_image_popup\";s:0:\"\";s:28:\"colormag_default_page_layout\";s:13:\"right_sidebar\";s:36:\"colormag_default_single_posts_layout\";s:13:\"right_sidebar\";}', 'yes'),
(241, 'widget_colormag_featured_posts_slider_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(242, 'widget_colormag_highlighted_posts_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(243, 'widget_colormag_featured_posts_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(244, 'widget_colormag_featured_posts_vertical_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(245, 'widget_colormag_728x90_advertisement_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(246, 'widget_colormag_300x250_advertisement_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(247, 'widget_colormag_125x125_advertisement_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(248, 'colormag_admin_notice_welcome', '1', 'yes'),
(264, 'category_children', 'a:0:{}', 'yes'),
(265, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1500542208', 'no'),
(266, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'O:8:\"stdClass\":100:{s:6:\"widget\";a:3:{s:4:\"name\";s:6:\"widget\";s:4:\"slug\";s:6:\"widget\";s:5:\"count\";i:4353;}s:4:\"post\";a:3:{s:4:\"name\";s:4:\"post\";s:4:\"slug\";s:4:\"post\";s:5:\"count\";i:2488;}s:5:\"admin\";a:3:{s:4:\"name\";s:5:\"admin\";s:4:\"slug\";s:5:\"admin\";s:5:\"count\";i:2355;}s:11:\"woocommerce\";a:3:{s:4:\"name\";s:11:\"woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:5:\"count\";i:2200;}s:5:\"posts\";a:3:{s:4:\"name\";s:5:\"posts\";s:4:\"slug\";s:5:\"posts\";s:5:\"count\";i:1822;}s:8:\"comments\";a:3:{s:4:\"name\";s:8:\"comments\";s:4:\"slug\";s:8:\"comments\";s:5:\"count\";i:1591;}s:9:\"shortcode\";a:3:{s:4:\"name\";s:9:\"shortcode\";s:4:\"slug\";s:9:\"shortcode\";s:5:\"count\";i:1571;}s:7:\"twitter\";a:3:{s:4:\"name\";s:7:\"twitter\";s:4:\"slug\";s:7:\"twitter\";s:5:\"count\";i:1431;}s:6:\"google\";a:3:{s:4:\"name\";s:6:\"google\";s:4:\"slug\";s:6:\"google\";s:5:\"count\";i:1346;}s:6:\"images\";a:3:{s:4:\"name\";s:6:\"images\";s:4:\"slug\";s:6:\"images\";s:5:\"count\";i:1341;}s:8:\"facebook\";a:3:{s:4:\"name\";s:8:\"facebook\";s:4:\"slug\";s:8:\"facebook\";s:5:\"count\";i:1328;}s:7:\"sidebar\";a:3:{s:4:\"name\";s:7:\"sidebar\";s:4:\"slug\";s:7:\"sidebar\";s:5:\"count\";i:1270;}s:5:\"image\";a:3:{s:4:\"name\";s:5:\"image\";s:4:\"slug\";s:5:\"image\";s:5:\"count\";i:1265;}s:3:\"seo\";a:3:{s:4:\"name\";s:3:\"seo\";s:4:\"slug\";s:3:\"seo\";s:5:\"count\";i:1113;}s:7:\"gallery\";a:3:{s:4:\"name\";s:7:\"gallery\";s:4:\"slug\";s:7:\"gallery\";s:5:\"count\";i:1049;}s:4:\"page\";a:3:{s:4:\"name\";s:4:\"page\";s:4:\"slug\";s:4:\"page\";s:5:\"count\";i:1041;}s:6:\"social\";a:3:{s:4:\"name\";s:6:\"social\";s:4:\"slug\";s:6:\"social\";s:5:\"count\";i:993;}s:5:\"email\";a:3:{s:4:\"name\";s:5:\"email\";s:4:\"slug\";s:5:\"email\";s:5:\"count\";i:937;}s:5:\"links\";a:3:{s:4:\"name\";s:5:\"links\";s:4:\"slug\";s:5:\"links\";s:5:\"count\";i:815;}s:9:\"ecommerce\";a:3:{s:4:\"name\";s:9:\"ecommerce\";s:4:\"slug\";s:9:\"ecommerce\";s:5:\"count\";i:800;}s:5:\"login\";a:3:{s:4:\"name\";s:5:\"login\";s:4:\"slug\";s:5:\"login\";s:5:\"count\";i:799;}s:7:\"widgets\";a:3:{s:4:\"name\";s:7:\"widgets\";s:4:\"slug\";s:7:\"widgets\";s:5:\"count\";i:771;}s:5:\"video\";a:3:{s:4:\"name\";s:5:\"video\";s:4:\"slug\";s:5:\"video\";s:5:\"count\";i:761;}s:3:\"rss\";a:3:{s:4:\"name\";s:3:\"rss\";s:4:\"slug\";s:3:\"rss\";s:5:\"count\";i:667;}s:7:\"content\";a:3:{s:4:\"name\";s:7:\"content\";s:4:\"slug\";s:7:\"content\";s:5:\"count\";i:662;}s:10:\"buddypress\";a:3:{s:4:\"name\";s:10:\"buddypress\";s:4:\"slug\";s:10:\"buddypress\";s:5:\"count\";i:658;}s:4:\"spam\";a:3:{s:4:\"name\";s:4:\"spam\";s:4:\"slug\";s:4:\"spam\";s:5:\"count\";i:651;}s:5:\"pages\";a:3:{s:4:\"name\";s:5:\"pages\";s:4:\"slug\";s:5:\"pages\";s:5:\"count\";i:642;}s:6:\"jquery\";a:3:{s:4:\"name\";s:6:\"jquery\";s:4:\"slug\";s:6:\"jquery\";s:5:\"count\";i:636;}s:8:\"security\";a:3:{s:4:\"name\";s:8:\"security\";s:4:\"slug\";s:8:\"security\";s:5:\"count\";i:635;}s:6:\"slider\";a:3:{s:4:\"name\";s:6:\"slider\";s:4:\"slug\";s:6:\"slider\";s:5:\"count\";i:616;}s:5:\"media\";a:3:{s:4:\"name\";s:5:\"media\";s:4:\"slug\";s:5:\"media\";s:5:\"count\";i:600;}s:4:\"ajax\";a:3:{s:4:\"name\";s:4:\"ajax\";s:4:\"slug\";s:4:\"ajax\";s:5:\"count\";i:591;}s:9:\"analytics\";a:3:{s:4:\"name\";s:9:\"analytics\";s:4:\"slug\";s:9:\"analytics\";s:5:\"count\";i:585;}s:4:\"feed\";a:3:{s:4:\"name\";s:4:\"feed\";s:4:\"slug\";s:4:\"feed\";s:5:\"count\";i:584;}s:6:\"search\";a:3:{s:4:\"name\";s:6:\"search\";s:4:\"slug\";s:6:\"search\";s:5:\"count\";i:573;}s:8:\"category\";a:3:{s:4:\"name\";s:8:\"category\";s:4:\"slug\";s:8:\"category\";s:5:\"count\";i:572;}s:10:\"e-commerce\";a:3:{s:4:\"name\";s:10:\"e-commerce\";s:4:\"slug\";s:10:\"e-commerce\";s:5:\"count\";i:562;}s:4:\"menu\";a:3:{s:4:\"name\";s:4:\"menu\";s:4:\"slug\";s:4:\"menu\";s:5:\"count\";i:553;}s:4:\"form\";a:3:{s:4:\"name\";s:4:\"form\";s:4:\"slug\";s:4:\"form\";s:5:\"count\";i:541;}s:5:\"embed\";a:3:{s:4:\"name\";s:5:\"embed\";s:4:\"slug\";s:5:\"embed\";s:5:\"count\";i:538;}s:10:\"javascript\";a:3:{s:4:\"name\";s:10:\"javascript\";s:4:\"slug\";s:10:\"javascript\";s:5:\"count\";i:533;}s:4:\"link\";a:3:{s:4:\"name\";s:4:\"link\";s:4:\"slug\";s:4:\"link\";s:5:\"count\";i:520;}s:3:\"css\";a:3:{s:4:\"name\";s:3:\"css\";s:4:\"slug\";s:3:\"css\";s:5:\"count\";i:509;}s:5:\"share\";a:3:{s:4:\"name\";s:5:\"share\";s:4:\"slug\";s:5:\"share\";s:5:\"count\";i:502;}s:7:\"youtube\";a:3:{s:4:\"name\";s:7:\"youtube\";s:4:\"slug\";s:7:\"youtube\";s:5:\"count\";i:493;}s:7:\"comment\";a:3:{s:4:\"name\";s:7:\"comment\";s:4:\"slug\";s:7:\"comment\";s:5:\"count\";i:491;}s:5:\"theme\";a:3:{s:4:\"name\";s:5:\"theme\";s:4:\"slug\";s:5:\"theme\";s:5:\"count\";i:479;}s:9:\"dashboard\";a:3:{s:4:\"name\";s:9:\"dashboard\";s:4:\"slug\";s:9:\"dashboard\";s:5:\"count\";i:471;}s:6:\"custom\";a:3:{s:4:\"name\";s:6:\"custom\";s:4:\"slug\";s:6:\"custom\";s:5:\"count\";i:469;}s:10:\"responsive\";a:3:{s:4:\"name\";s:10:\"responsive\";s:4:\"slug\";s:10:\"responsive\";s:5:\"count\";i:468;}s:10:\"categories\";a:3:{s:4:\"name\";s:10:\"categories\";s:4:\"slug\";s:10:\"categories\";s:5:\"count\";i:464;}s:3:\"ads\";a:3:{s:4:\"name\";s:3:\"ads\";s:4:\"slug\";s:3:\"ads\";s:5:\"count\";i:444;}s:9:\"affiliate\";a:3:{s:4:\"name\";s:9:\"affiliate\";s:4:\"slug\";s:9:\"affiliate\";s:5:\"count\";i:439;}s:6:\"editor\";a:3:{s:4:\"name\";s:6:\"editor\";s:4:\"slug\";s:6:\"editor\";s:5:\"count\";i:436;}s:4:\"tags\";a:3:{s:4:\"name\";s:4:\"tags\";s:4:\"slug\";s:4:\"tags\";s:5:\"count\";i:436;}s:6:\"button\";a:3:{s:4:\"name\";s:6:\"button\";s:4:\"slug\";s:6:\"button\";s:5:\"count\";i:435;}s:12:\"contact-form\";a:3:{s:4:\"name\";s:12:\"contact form\";s:4:\"slug\";s:12:\"contact-form\";s:5:\"count\";i:424;}s:5:\"photo\";a:3:{s:4:\"name\";s:5:\"photo\";s:4:\"slug\";s:5:\"photo\";s:5:\"count\";i:421;}s:4:\"user\";a:3:{s:4:\"name\";s:4:\"user\";s:4:\"slug\";s:4:\"user\";s:5:\"count\";i:411;}s:9:\"slideshow\";a:3:{s:4:\"name\";s:9:\"slideshow\";s:4:\"slug\";s:9:\"slideshow\";s:5:\"count\";i:405;}s:6:\"mobile\";a:3:{s:4:\"name\";s:6:\"mobile\";s:4:\"slug\";s:6:\"mobile\";s:5:\"count\";i:403;}s:5:\"stats\";a:3:{s:4:\"name\";s:5:\"stats\";s:4:\"slug\";s:5:\"stats\";s:5:\"count\";i:399;}s:7:\"contact\";a:3:{s:4:\"name\";s:7:\"contact\";s:4:\"slug\";s:7:\"contact\";s:5:\"count\";i:398;}s:5:\"users\";a:3:{s:4:\"name\";s:5:\"users\";s:4:\"slug\";s:5:\"users\";s:5:\"count\";i:398;}s:6:\"photos\";a:3:{s:4:\"name\";s:6:\"photos\";s:4:\"slug\";s:6:\"photos\";s:5:\"count\";i:395;}s:3:\"api\";a:3:{s:4:\"name\";s:3:\"api\";s:4:\"slug\";s:3:\"api\";s:5:\"count\";i:380;}s:10:\"statistics\";a:3:{s:4:\"name\";s:10:\"statistics\";s:4:\"slug\";s:10:\"statistics\";s:5:\"count\";i:378;}s:6:\"events\";a:3:{s:4:\"name\";s:6:\"events\";s:4:\"slug\";s:6:\"events\";s:5:\"count\";i:376;}s:10:\"navigation\";a:3:{s:4:\"name\";s:10:\"navigation\";s:4:\"slug\";s:10:\"navigation\";s:5:\"count\";i:369;}s:4:\"news\";a:3:{s:4:\"name\";s:4:\"news\";s:4:\"slug\";s:4:\"news\";s:5:\"count\";i:351;}s:8:\"calendar\";a:3:{s:4:\"name\";s:8:\"calendar\";s:4:\"slug\";s:8:\"calendar\";s:5:\"count\";i:344;}s:9:\"multisite\";a:3:{s:4:\"name\";s:9:\"multisite\";s:4:\"slug\";s:9:\"multisite\";s:5:\"count\";i:333;}s:7:\"plugins\";a:3:{s:4:\"name\";s:7:\"plugins\";s:4:\"slug\";s:7:\"plugins\";s:5:\"count\";i:331;}s:12:\"social-media\";a:3:{s:4:\"name\";s:12:\"social media\";s:4:\"slug\";s:12:\"social-media\";s:5:\"count\";i:330;}s:7:\"payment\";a:3:{s:4:\"name\";s:7:\"payment\";s:4:\"slug\";s:7:\"payment\";s:5:\"count\";i:329;}s:10:\"shortcodes\";a:3:{s:4:\"name\";s:10:\"shortcodes\";s:4:\"slug\";s:10:\"shortcodes\";s:5:\"count\";i:328;}s:4:\"code\";a:3:{s:4:\"name\";s:4:\"code\";s:4:\"slug\";s:4:\"code\";s:5:\"count\";i:323;}s:10:\"newsletter\";a:3:{s:4:\"name\";s:10:\"newsletter\";s:4:\"slug\";s:10:\"newsletter\";s:5:\"count\";i:323;}s:4:\"list\";a:3:{s:4:\"name\";s:4:\"list\";s:4:\"slug\";s:4:\"list\";s:5:\"count\";i:320;}s:4:\"meta\";a:3:{s:4:\"name\";s:4:\"meta\";s:4:\"slug\";s:4:\"meta\";s:5:\"count\";i:319;}s:5:\"popup\";a:3:{s:4:\"name\";s:5:\"popup\";s:4:\"slug\";s:5:\"popup\";s:5:\"count\";i:317;}s:3:\"url\";a:3:{s:4:\"name\";s:3:\"url\";s:4:\"slug\";s:3:\"url\";s:5:\"count\";i:316;}s:9:\"marketing\";a:3:{s:4:\"name\";s:9:\"marketing\";s:4:\"slug\";s:9:\"marketing\";s:5:\"count\";i:302;}s:6:\"simple\";a:3:{s:4:\"name\";s:6:\"simple\";s:4:\"slug\";s:6:\"simple\";s:5:\"count\";i:298;}s:4:\"chat\";a:3:{s:4:\"name\";s:4:\"chat\";s:4:\"slug\";s:4:\"chat\";s:5:\"count\";i:292;}s:8:\"redirect\";a:3:{s:4:\"name\";s:8:\"redirect\";s:4:\"slug\";s:8:\"redirect\";s:5:\"count\";i:291;}s:3:\"tag\";a:3:{s:4:\"name\";s:3:\"tag\";s:4:\"slug\";s:3:\"tag\";s:5:\"count\";i:290;}s:16:\"custom-post-type\";a:3:{s:4:\"name\";s:16:\"custom post type\";s:4:\"slug\";s:16:\"custom-post-type\";s:5:\"count\";i:289;}s:11:\"advertising\";a:3:{s:4:\"name\";s:11:\"advertising\";s:4:\"slug\";s:11:\"advertising\";s:5:\"count\";i:282;}s:6:\"author\";a:3:{s:4:\"name\";s:6:\"author\";s:4:\"slug\";s:6:\"author\";s:5:\"count\";i:282;}s:4:\"html\";a:3:{s:4:\"name\";s:4:\"html\";s:4:\"slug\";s:4:\"html\";s:5:\"count\";i:280;}s:7:\"adsense\";a:3:{s:4:\"name\";s:7:\"adsense\";s:4:\"slug\";s:7:\"adsense\";s:5:\"count\";i:278;}s:15:\"payment-gateway\";a:3:{s:4:\"name\";s:15:\"payment gateway\";s:4:\"slug\";s:15:\"payment-gateway\";s:5:\"count\";i:277;}s:5:\"forms\";a:3:{s:4:\"name\";s:5:\"forms\";s:4:\"slug\";s:5:\"forms\";s:5:\"count\";i:275;}s:8:\"lightbox\";a:3:{s:4:\"name\";s:8:\"lightbox\";s:4:\"slug\";s:8:\"lightbox\";s:5:\"count\";i:274;}s:14:\"administration\";a:3:{s:4:\"name\";s:14:\"administration\";s:4:\"slug\";s:14:\"administration\";s:5:\"count\";i:265;}s:7:\"captcha\";a:3:{s:4:\"name\";s:7:\"captcha\";s:4:\"slug\";s:7:\"captcha\";s:5:\"count\";i:265;}s:12:\"notification\";a:3:{s:4:\"name\";s:12:\"notification\";s:4:\"slug\";s:12:\"notification\";s:5:\"count\";i:264;}s:5:\"cache\";a:3:{s:4:\"name\";s:5:\"cache\";s:4:\"slug\";s:5:\"cache\";s:5:\"count\";i:264;}}', 'no'),
(289, 'rich_text_excerpts_options', 'a:4:{s:20:\"supported_post_types\";a:1:{i:0;s:4:\"post\";}s:11:\"editor_type\";s:5:\"teeny\";s:7:\"metabox\";a:3:{s:3:\"use\";b:1;s:7:\"context\";s:6:\"normal\";s:8:\"priority\";s:4:\"high\";}s:15:\"editor_settings\";a:6:{s:7:\"wpautop\";b:1;s:13:\"media_buttons\";b:0;s:13:\"textarea_rows\";i:3;s:13:\"editor_height\";i:150;s:7:\"buttons\";a:23:{i:0;s:4:\"bold\";i:1;s:6:\"italic\";i:2;s:9:\"underline\";i:3;s:9:\"separator\";i:4;s:9:\"pastetext\";i:5;s:9:\"pasteword\";i:6;s:12:\"removeformat\";i:7;s:9:\"separator\";i:8;s:7:\"charmap\";i:9;s:10:\"blockquote\";i:10;s:9:\"separator\";i:11;s:7:\"bullist\";i:12;s:7:\"numlist\";i:13;s:9:\"separator\";i:14;s:11:\"justifyleft\";i:15;s:13:\"justifycenter\";i:16;s:12:\"justifyright\";i:17;s:9:\"separator\";i:18;s:4:\"undo\";i:19;s:4:\"redo\";i:20;s:9:\"separator\";i:21;s:4:\"link\";i:22;s:6:\"unlink\";}s:7:\"plugins\";a:2:{i:0;s:7:\"charmap\";i:1;s:5:\"paste\";}}}', 'yes'),
(303, '_site_transient_browser_8ce1bea2f653ca2ce71bdf6183bef333', 'a:9:{s:8:\"platform\";s:7:\"Windows\";s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"59.0.3071.115\";s:10:\"update_url\";s:28:\"http://www.google.com/chrome\";s:7:\"img_src\";s:49:\"http://s.wordpress.org/images/browsers/chrome.png\";s:11:\"img_src_ssl\";s:48:\"https://wordpress.org/images/browsers/chrome.png\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;}', 'no'),
(304, '_site_transient_timeout_browser_8ce1bea2f653ca2ce71bdf6183bef333', '1501816976', 'no'),
(305, '_site_transient_timeout_community-events-4501c091b0366d76ea3218b6cfdd8097', '1501255378', 'no'),
(306, '_site_transient_community-events-4501c091b0366d76ea3218b6cfdd8097', 'a:2:{s:8:\"location\";a:1:{s:2:\"ip\";s:2:\"::\";}s:6:\"events\";a:0:{}}', 'no'),
(330, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(331, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.8.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.8.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.8.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.8.1-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.8.1\";s:7:\"version\";s:5:\"4.8.1\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1502251220;s:15:\"version_checked\";s:5:\"4.8.1\";s:12:\"translations\";a:0:{}}', 'no'),
(333, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:20:\"vergil.hsu@gmail.com\";s:7:\"version\";s:5:\"4.8.1\";s:9:\"timestamp\";i:1502089900;}', 'no'),
(339, '_site_transient_update_plugins', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1502251221;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":6:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"3.3.4\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.3.3.4.zip\";}s:9:\"hello.php\";O:8:\"stdClass\":6:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";}s:41:\"rich-text-excerpts/rich-text-excerpts.php\";O:8:\"stdClass\":6:{s:2:\"id\";s:32:\"w.org/plugins/rich-text-excerpts\";s:4:\"slug\";s:18:\"rich-text-excerpts\";s:6:\"plugin\";s:41:\"rich-text-excerpts/rich-text-excerpts.php\";s:11:\"new_version\";s:5:\"1.3.3\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/rich-text-excerpts/\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/plugin/rich-text-excerpts.1.3.3.zip\";}}}', 'no'),
(341, '_site_transient_timeout_theme_roots', '1502253022', 'no'),
(342, '_site_transient_theme_roots', 'a:5:{s:8:\"colormag\";s:7:\"/themes\";s:9:\"sparkling\";s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no'),
(343, '_transient_timeout_dash_v2_88ae138922fe95674369b1cb3d215a2b', '1502295439', 'no'),
(344, '_transient_dash_v2_88ae138922fe95674369b1cb3d215a2b', '<div class=\"rss-widget\"><p><strong>RSS Error:</strong> A feed could not be found at http://wordpress.org/news/feed/. A feed with an invalid mime type may fall victim to this error, or SimplePie was unable to auto-discover it.. Use force_feed() if you are certain this URL is a real feed.</p></div><div class=\"rss-widget\"><p><strong>RSS Error:</strong> WP HTTP Error: cURL error 60: SSL certificate problem: self signed certificate in certificate chain</p></div>', 'no'),
(345, 'WPLANG', '', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(65, 32, '_wp_attached_file', '2017/07/bigtera_logo.png'),
(66, 32, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:175;s:6:\"height\";i:100;s:4:\"file\";s:24:\"2017/07/bigtera_logo.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"bigtera_logo-150x100.png\";s:5:\"width\";i:150;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"tab-small\";a:4:{s:4:\"file\";s:22:\"bigtera_logo-60x60.png\";s:5:\"width\";i:60;s:6:\"height\";i:60;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(67, 33, '_wp_attached_file', '2017/07/logo180x180.png'),
(68, 33, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:180;s:6:\"height\";i:180;s:4:\"file\";s:23:\"2017/07/logo180x180.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"logo180x180-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"tab-small\";a:4:{s:4:\"file\";s:21:\"logo180x180-60x60.png\";s:5:\"width\";i:60;s:6:\"height\";i:60;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(69, 34, '_wp_attached_file', '2017/07/cropped-logo180x180.png'),
(70, 34, '_wp_attachment_context', 'site-icon'),
(71, 34, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:31:\"2017/07/cropped-logo180x180.png\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"cropped-logo180x180-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"cropped-logo180x180-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:18:\"sparkling-featured\";a:4:{s:4:\"file\";s:31:\"cropped-logo180x180-512x410.png\";s:5:\"width\";i:512;s:6:\"height\";i:410;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"tab-small\";a:4:{s:4:\"file\";s:29:\"cropped-logo180x180-60x60.png\";s:5:\"width\";i:60;s:6:\"height\";i:60;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-270\";a:4:{s:4:\"file\";s:31:\"cropped-logo180x180-270x270.png\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-192\";a:4:{s:4:\"file\";s:31:\"cropped-logo180x180-192x192.png\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-180\";a:4:{s:4:\"file\";s:31:\"cropped-logo180x180-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"site_icon-32\";a:4:{s:4:\"file\";s:29:\"cropped-logo180x180-32x32.png\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(72, 31, '_wp_trash_meta_status', 'publish'),
(73, 31, '_wp_trash_meta_time', '1500361699'),
(74, 35, '_wp_attached_file', '2017/07/cropped-bigtera_logo.png'),
(75, 35, '_wp_attachment_context', 'custom-header'),
(76, 35, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:175;s:6:\"height\";i:100;s:4:\"file\";s:32:\"2017/07/cropped-bigtera_logo.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"cropped-bigtera_logo-150x100.png\";s:5:\"width\";i:150;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"tab-small\";a:4:{s:4:\"file\";s:30:\"cropped-bigtera_logo-60x60.png\";s:5:\"width\";i:60;s:6:\"height\";i:60;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(79, 37, '_wp_attached_file', '2017/07/bigtera_logo-1.png'),
(80, 37, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:175;s:6:\"height\";i:100;s:4:\"file\";s:26:\"2017/07/bigtera_logo-1.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"bigtera_logo-1-150x100.png\";s:5:\"width\";i:150;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"tab-small\";a:4:{s:4:\"file\";s:24:\"bigtera_logo-1-60x60.png\";s:5:\"width\";i:60;s:6:\"height\";i:60;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(83, 39, '_wp_attached_file', '2017/07/logo180x180-1.png'),
(84, 39, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:180;s:6:\"height\";i:180;s:4:\"file\";s:25:\"2017/07/logo180x180-1.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"logo180x180-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"tab-small\";a:4:{s:4:\"file\";s:23:\"logo180x180-1-60x60.png\";s:5:\"width\";i:60;s:6:\"height\";i:60;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(90, 41, '_wp_attached_file', '2017/07/bigtera_logo_blog-1.png'),
(91, 41, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:350;s:6:\"height\";i:100;s:4:\"file\";s:31:\"2017/07/bigtera_logo_blog-1.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"bigtera_logo_blog-1-150x100.png\";s:5:\"width\";i:150;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"bigtera_logo_blog-1-300x86.png\";s:5:\"width\";i:300;s:6:\"height\";i:86;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"tab-small\";a:4:{s:4:\"file\";s:29:\"bigtera_logo_blog-1-60x60.png\";s:5:\"width\";i:60;s:6:\"height\";i:60;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(92, 42, '_wp_attached_file', '2017/07/cropped-bigtera_logo_blog-1.png'),
(93, 42, '_wp_attachment_context', 'custom-header'),
(94, 42, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:350;s:6:\"height\";i:100;s:4:\"file\";s:39:\"2017/07/cropped-bigtera_logo_blog-1.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:39:\"cropped-bigtera_logo_blog-1-150x100.png\";s:5:\"width\";i:150;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:38:\"cropped-bigtera_logo_blog-1-300x86.png\";s:5:\"width\";i:300;s:6:\"height\";i:86;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"tab-small\";a:4:{s:4:\"file\";s:37:\"cropped-bigtera_logo_blog-1-60x60.png\";s:5:\"width\";i:60;s:6:\"height\";i:60;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(95, 42, '_wp_attachment_custom_header_last_used_sparkling', '1500363140'),
(96, 42, '_wp_attachment_is_custom_header', 'sparkling'),
(97, 36, '_wp_trash_meta_status', 'publish'),
(98, 36, '_wp_trash_meta_time', '1500363140'),
(99, 1, '_edit_lock', '1500366982:1'),
(100, 1, '_edit_last', '1'),
(101, 45, '_wp_trash_meta_status', 'publish'),
(102, 45, '_wp_trash_meta_time', '1500432107'),
(103, 46, '_wp_trash_meta_status', 'publish'),
(104, 46, '_wp_trash_meta_time', '1500432487'),
(105, 48, '_edit_last', '1'),
(107, 48, '_edit_lock', '1500518898:1'),
(108, 50, '_edit_last', '1'),
(109, 50, '_edit_lock', '1500519273:1'),
(111, 2, '_edit_lock', '1500529837:1'),
(112, 2, '_edit_last', '1'),
(113, 2, 'colormag_page_layout', 'default_layout'),
(114, 54, '_wp_attached_file', '2017/07/cropped-bigtera_logo_blog-2.png'),
(115, 54, '_wp_attachment_context', 'custom-logo'),
(116, 54, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:350;s:6:\"height\";i:100;s:4:\"file\";s:39:\"2017/07/cropped-bigtera_logo_blog-2.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:39:\"cropped-bigtera_logo_blog-2-150x100.png\";s:5:\"width\";i:150;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:38:\"cropped-bigtera_logo_blog-2-300x86.png\";s:5:\"width\";i:300;s:6:\"height\";i:86;s:9:\"mime-type\";s:9:\"image/png\";}s:28:\"colormag-featured-post-small\";a:4:{s:4:\"file\";s:38:\"cropped-bigtera_logo_blog-2-130x90.png\";s:5:\"width\";i:130;s:6:\"height\";i:90;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(117, 55, '_wp_attached_file', '2017/07/cropped-cropped-bigtera_logo_blog-1.png'),
(118, 55, '_wp_attachment_context', 'custom-logo'),
(119, 55, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:350;s:6:\"height\";i:100;s:4:\"file\";s:47:\"2017/07/cropped-cropped-bigtera_logo_blog-1.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:47:\"cropped-cropped-bigtera_logo_blog-1-150x100.png\";s:5:\"width\";i:150;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:46:\"cropped-cropped-bigtera_logo_blog-1-300x86.png\";s:5:\"width\";i:300;s:6:\"height\";i:86;s:9:\"mime-type\";s:9:\"image/png\";}s:28:\"colormag-featured-post-small\";a:4:{s:4:\"file\";s:46:\"cropped-cropped-bigtera_logo_blog-1-130x90.png\";s:5:\"width\";i:130;s:6:\"height\";i:90;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(120, 57, '_wp_attached_file', '2017/07/bigtera_logo_blog-Copy.png'),
(121, 57, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:350;s:6:\"height\";i:100;s:4:\"file\";s:34:\"2017/07/bigtera_logo_blog-Copy.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"bigtera_logo_blog-Copy-150x100.png\";s:5:\"width\";i:150;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:33:\"bigtera_logo_blog-Copy-300x86.png\";s:5:\"width\";i:300;s:6:\"height\";i:86;s:9:\"mime-type\";s:9:\"image/png\";}s:28:\"colormag-featured-post-small\";a:4:{s:4:\"file\";s:33:\"bigtera_logo_blog-Copy-130x90.png\";s:5:\"width\";i:130;s:6:\"height\";i:90;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(122, 58, '_wp_attached_file', '2017/07/cropped-bigtera_logo_blog-Copy.png'),
(123, 58, '_wp_attachment_context', 'custom-logo'),
(124, 58, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:274;s:6:\"height\";i:67;s:4:\"file\";s:42:\"2017/07/cropped-bigtera_logo_blog-Copy.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:41:\"cropped-bigtera_logo_blog-Copy-150x67.png\";s:5:\"width\";i:150;s:6:\"height\";i:67;s:9:\"mime-type\";s:9:\"image/png\";}s:28:\"colormag-featured-post-small\";a:4:{s:4:\"file\";s:41:\"cropped-bigtera_logo_blog-Copy-130x67.png\";s:5:\"width\";i:130;s:6:\"height\";i:67;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(125, 56, '_wp_trash_meta_status', 'publish'),
(126, 56, '_wp_trash_meta_time', '1500525719'),
(127, 59, '_wp_trash_meta_status', 'publish'),
(128, 59, '_wp_trash_meta_time', '1500526016'),
(129, 50, '_wp_trash_meta_status', 'publish'),
(130, 50, '_wp_trash_meta_time', '1500526118'),
(131, 50, '_wp_desired_post_slug', '%e4%bd%a0%e5%a5%bd'),
(132, 48, '_wp_trash_meta_status', 'publish'),
(133, 48, '_wp_trash_meta_time', '1500526118'),
(134, 48, '_wp_desired_post_slug', 'hello-2'),
(135, 1, '_wp_trash_meta_status', 'publish'),
(136, 1, '_wp_trash_meta_time', '1500526119'),
(137, 1, '_wp_desired_post_slug', 'hello-world'),
(138, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(139, 60, '_edit_last', '1'),
(140, 60, 'colormag_page_layout', 'default_layout'),
(142, 60, '_edit_lock', '1500532335:1'),
(149, 66, '_wp_attached_file', '2017/07/ayylmao.jpg'),
(150, 66, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:403;s:4:\"file\";s:19:\"2017/07/ayylmao.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"ayylmao-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"ayylmao-300x202.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:202;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"colormag-highlighted-post\";a:4:{s:4:\"file\";s:19:\"ayylmao-392x272.jpg\";s:5:\"width\";i:392;s:6:\"height\";i:272;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"colormag-featured-post-medium\";a:4:{s:4:\"file\";s:19:\"ayylmao-390x205.jpg\";s:5:\"width\";i:390;s:6:\"height\";i:205;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"colormag-featured-post-small\";a:4:{s:4:\"file\";s:18:\"ayylmao-130x90.jpg\";s:5:\"width\";i:130;s:6:\"height\";i:90;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(151, 60, '_thumbnail_id', '66'),
(153, 68, '_edit_last', '1'),
(154, 68, '_edit_lock', '1500531103:1'),
(155, 69, '_wp_attached_file', '2017/07/ChIgcsB.jpg'),
(156, 69, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:614;s:6:\"height\";i:426;s:4:\"file\";s:19:\"2017/07/ChIgcsB.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"ChIgcsB-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"ChIgcsB-300x208.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:208;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"colormag-highlighted-post\";a:4:{s:4:\"file\";s:19:\"ChIgcsB-392x272.jpg\";s:5:\"width\";i:392;s:6:\"height\";i:272;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"colormag-featured-post-medium\";a:4:{s:4:\"file\";s:19:\"ChIgcsB-390x205.jpg\";s:5:\"width\";i:390;s:6:\"height\";i:205;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"colormag-featured-post-small\";a:4:{s:4:\"file\";s:18:\"ChIgcsB-130x90.jpg\";s:5:\"width\";i:130;s:6:\"height\";i:90;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(157, 68, 'colormag_page_layout', 'default_layout'),
(158, 68, '_thumbnail_id', '69'),
(160, 71, '_wp_trash_meta_status', 'publish'),
(161, 71, '_wp_trash_meta_time', '1500531324'),
(162, 72, '_edit_last', '1'),
(163, 72, '_edit_lock', '1500531223:1'),
(164, 72, 'colormag_page_layout', 'default_layout'),
(165, 72, '_thumbnail_id', '33'),
(167, 74, '_edit_last', '1'),
(168, 74, '_edit_lock', '1500531243:1'),
(169, 74, 'colormag_page_layout', 'default_layout'),
(171, 76, '_wp_trash_meta_status', 'publish'),
(172, 76, '_wp_trash_meta_time', '1500532390'),
(173, 77, '_edit_last', '1'),
(174, 77, '_edit_lock', '1500535419:1'),
(175, 77, 'colormag_page_layout', 'default_layout'),
(176, 77, '_thumbnail_id', '66'),
(179, 60, '_wp_trash_meta_status', 'publish'),
(180, 60, '_wp_trash_meta_time', '1500532489'),
(181, 60, '_wp_desired_post_slug', '%e8%87%ba%e7%81%a3'),
(182, 80, '_edit_last', '1'),
(183, 80, '_edit_lock', '1500543172:1'),
(184, 80, 'colormag_page_layout', 'default_layout'),
(186, 82, '_edit_last', '1'),
(187, 82, '_edit_lock', '1500535562:1'),
(188, 82, 'colormag_page_layout', 'default_layout'),
(189, 82, '_thumbnail_id', '41'),
(191, 86, '_edit_last', '1'),
(192, 86, '_edit_lock', '1500534100:1'),
(193, 86, '_oembed_afb6322c8f6e81518aaa5cde17c329d5', '{{unknown}}'),
(194, 87, '_wp_attached_file', '2017/07/2U4U.png'),
(195, 87, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:434;s:6:\"height\";i:242;s:4:\"file\";s:16:\"2017/07/2U4U.png\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"2U4U-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"2U4U-300x167.png\";s:5:\"width\";i:300;s:6:\"height\";i:167;s:9:\"mime-type\";s:9:\"image/png\";}s:25:\"colormag-highlighted-post\";a:4:{s:4:\"file\";s:16:\"2U4U-392x242.png\";s:5:\"width\";i:392;s:6:\"height\";i:242;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"colormag-featured-post-medium\";a:4:{s:4:\"file\";s:16:\"2U4U-390x205.png\";s:5:\"width\";i:390;s:6:\"height\";i:205;s:9:\"mime-type\";s:9:\"image/png\";}s:28:\"colormag-featured-post-small\";a:4:{s:4:\"file\";s:15:\"2U4U-130x90.png\";s:5:\"width\";i:130;s:6:\"height\";i:90;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(196, 86, 'colormag_page_layout', 'left_sidebar'),
(197, 86, '_thumbnail_id', '87'),
(199, 89, '_edit_last', '1'),
(200, 89, '_edit_lock', '1500535462:1'),
(201, 90, '_wp_attached_file', '2017/07/1U.png'),
(202, 90, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:400;s:6:\"height\";i:84;s:4:\"file\";s:14:\"2017/07/1U.png\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"1U-150x84.png\";s:5:\"width\";i:150;s:6:\"height\";i:84;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"1U-300x63.png\";s:5:\"width\";i:300;s:6:\"height\";i:63;s:9:\"mime-type\";s:9:\"image/png\";}s:25:\"colormag-highlighted-post\";a:4:{s:4:\"file\";s:13:\"1U-392x84.png\";s:5:\"width\";i:392;s:6:\"height\";i:84;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"colormag-featured-post-medium\";a:4:{s:4:\"file\";s:13:\"1U-390x84.png\";s:5:\"width\";i:390;s:6:\"height\";i:84;s:9:\"mime-type\";s:9:\"image/png\";}s:28:\"colormag-featured-post-small\";a:4:{s:4:\"file\";s:13:\"1U-130x84.png\";s:5:\"width\";i:130;s:6:\"height\";i:84;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(203, 89, 'colormag_page_layout', 'default_layout'),
(204, 89, '_thumbnail_id', '90'),
(206, 85, '_wp_trash_meta_status', 'publish'),
(207, 85, '_wp_trash_meta_time', '1500534415');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
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
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2017-07-18 06:55:31', '2017-07-18 06:55:31', 'Hello world', 'Blog Post 1', '', 'trash', 'open', 'open', '', 'hello-world__trashed', '', '', '2017-07-20 04:48:39', '2017-07-20 04:48:39', '', 0, 'http://localhost/bigtera_blog/?p=1', 0, 'post', '', 1),
(2, 1, '2017-07-18 06:55:31', '2017-07-18 06:55:31', 'This is the blog of <a href=\"http://www.bigtera.com\"><span style=\"text-decoration: underline;\">Bigtera Limited</span></a>.\r\n\r\n<a href=\"http://www.bigtera.com/company.php\"><span style=\"text-decoration: underline;\">Company Overview</span></a>\r\n\r\n<a href=\"http://www.bigtera.com/contact.php\"><span style=\"text-decoration: underline;\">Contact Us</span> </a>\r\n\r\n&nbsp;', 'about us', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2017-07-20 05:52:53', '2017-07-20 05:52:53', '', 0, 'http://localhost/bigtera_blog/?page_id=2', 0, 'page', '', 0),
(31, 1, '2017-07-18 07:08:19', '2017-07-18 07:08:19', '{\n    \"blogname\": {\n        \"value\": \"BIGTERA: Blog\",\n        \"type\": \"option\",\n        \"user_id\": 1\n    },\n    \"site_icon\": {\n        \"value\": 34,\n        \"type\": \"option\",\n        \"user_id\": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '6d2a82d0-417a-4e4e-a655-19195cedaa27', '', '', '2017-07-18 07:08:19', '2017-07-18 07:08:19', '', 0, 'http://localhost/bigtera_blog/?p=31', 0, 'customize_changeset', '', 0),
(32, 1, '2017-07-18 07:07:33', '2017-07-18 07:07:33', '', 'bigtera_logo', '', 'inherit', 'open', 'closed', '', 'bigtera_logo', '', '', '2017-07-18 07:07:33', '2017-07-18 07:07:33', '', 0, 'http://localhost/bigtera_blog/wp-content/uploads/2017/07/bigtera_logo.png', 0, 'attachment', 'image/png', 0),
(33, 1, '2017-07-18 07:07:54', '2017-07-18 07:07:54', '', 'logo180x180', '', 'inherit', 'open', 'closed', '', 'logo180x180', '', '', '2017-07-18 07:07:54', '2017-07-18 07:07:54', '', 0, 'http://localhost/bigtera_blog/wp-content/uploads/2017/07/logo180x180.png', 0, 'attachment', 'image/png', 0),
(34, 1, '2017-07-18 07:08:02', '2017-07-18 07:08:02', 'http://localhost/bigtera_blog/wp-content/uploads/2017/07/cropped-logo180x180.png', 'cropped-logo180x180.png', '', 'inherit', 'open', 'closed', '', 'cropped-logo180x180-png', '', '', '2017-07-18 07:08:02', '2017-07-18 07:08:02', '', 0, 'http://localhost/bigtera_blog/wp-content/uploads/2017/07/cropped-logo180x180.png', 0, 'attachment', 'image/png', 0),
(35, 1, '2017-07-18 07:08:39', '2017-07-18 07:08:39', '', 'cropped-bigtera_logo.png', '', 'inherit', 'open', 'closed', '', 'cropped-bigtera_logo-png', '', '', '2017-07-18 07:08:39', '2017-07-18 07:08:39', '', 0, 'http://localhost/bigtera_blog/wp-content/uploads/2017/07/cropped-bigtera_logo.png', 0, 'attachment', 'image/png', 0),
(36, 1, '2017-07-18 07:32:20', '2017-07-18 07:32:20', '{\n    \"sparkling::header_image\": {\n        \"value\": \"http://localhost/bigtera_blog/wp-content/uploads/2017/07/cropped-bigtera_logo_blog-1.png\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"sparkling::header_image_data\": {\n        \"value\": {\n            \"url\": \"http://localhost/bigtera_blog/wp-content/uploads/2017/07/cropped-bigtera_logo_blog-1.png\",\n            \"thumbnail_url\": \"http://localhost/bigtera_blog/wp-content/uploads/2017/07/cropped-bigtera_logo_blog-1.png\",\n            \"timestamp\": 1500362774465,\n            \"attachment_id\": 42,\n            \"width\": 350,\n            \"height\": 100\n        },\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"sidebars_widgets[sidebar-1]\": {\n        \"value\": [\n            \"search-2\",\n            \"recent-posts-2\",\n            \"archives-2\",\n            \"categories-2\",\n            \"meta-2\",\n            \"text-7\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1\n    },\n    \"widget_text[7]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTozOntzOjU6InRpdGxlIjtzOjExOiJJbmZvcm1hdGlvbiI7czo0OiJ0ZXh0IjtzOjE5NzoiVGhpcyBpcyB0aGUgYmxvZyBvZiA8YSBocmVmPSJodHRwOi8vd3d3LmJpZ3RlcmEuY29tIj5CaWd0ZXJhPC9hPi4NCg0KPGEgaHJlZj0iaHR0cDovL3d3dy5iaWd0ZXJhLmNvbS9jb21wYW55LnBocCI+Q29tcGFueSBPdmVydmlldzwvYT4NCg0KPGEgaHJlZj0iaHR0cDovL3d3dy5iaWd0ZXJhLmNvbS9jb250YWN0LnBocCI+Q29udGFjdCBVczwvYT4iO3M6NjoiZmlsdGVyIjtzOjc6ImNvbnRlbnQiO30=\",\n            \"title\": \"Information\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"40ddae51604a7d3cc29280b43d35126f\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '42df9948-d7e8-48ae-856a-45d84ecf4d07', '', '', '2017-07-18 07:32:20', '2017-07-18 07:32:20', '', 0, 'http://localhost/bigtera_blog/?p=36', 0, 'customize_changeset', '', 0),
(37, 1, '2017-07-18 07:24:16', '2017-07-18 07:24:16', '', 'bigtera_logo', '', 'inherit', 'open', 'closed', '', 'bigtera_logo-2', '', '', '2017-07-18 07:24:16', '2017-07-18 07:24:16', '', 0, 'http://localhost/bigtera_blog/wp-content/uploads/2017/07/bigtera_logo-1.png', 0, 'attachment', 'image/png', 0),
(39, 1, '2017-07-18 07:24:17', '2017-07-18 07:24:17', '', 'logo180x180', '', 'inherit', 'open', 'closed', '', 'logo180x180-2', '', '', '2017-07-18 07:24:17', '2017-07-18 07:24:17', '', 0, 'http://localhost/bigtera_blog/wp-content/uploads/2017/07/logo180x180-1.png', 0, 'attachment', 'image/png', 0),
(41, 1, '2017-07-18 07:26:08', '2017-07-18 07:26:08', '', 'bigtera_logo_blog', '', 'inherit', 'open', 'closed', '', 'bigtera_logo_blog-2', '', '', '2017-07-18 07:26:08', '2017-07-18 07:26:08', '', 0, 'http://localhost/bigtera_blog/wp-content/uploads/2017/07/bigtera_logo_blog-1.png', 0, 'attachment', 'image/png', 0),
(42, 1, '2017-07-18 07:26:14', '2017-07-18 07:26:14', '', 'cropped-bigtera_logo_blog-1.png', '', 'inherit', 'open', 'closed', '', 'cropped-bigtera_logo_blog-1-png', '', '', '2017-07-18 07:26:14', '2017-07-18 07:26:14', '', 0, 'http://localhost/bigtera_blog/wp-content/uploads/2017/07/cropped-bigtera_logo_blog-1.png', 0, 'attachment', 'image/png', 0),
(43, 1, '2017-07-18 07:50:30', '2017-07-18 07:50:30', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Blog Post 1', '', 'inherit', 'closed', 'closed', '', '1-autosave-v1', '', '', '2017-07-18 07:50:30', '2017-07-18 07:50:30', '', 1, 'http://localhost/bigtera_blog/2017/07/18/1-autosave-v1/', 0, 'revision', '', 0),
(44, 1, '2017-07-18 07:52:22', '2017-07-18 07:52:22', 'Hello world', 'Blog Post 1', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2017-07-18 07:52:22', '2017-07-18 07:52:22', '', 1, 'http://localhost/bigtera_blog/2017/07/18/1-revision-v1/', 0, 'revision', '', 0),
(45, 1, '2017-07-19 02:41:47', '2017-07-19 02:41:47', '{\n    \"widget_text[7]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTozOntzOjU6InRpdGxlIjtzOjExOiJJbmZvcm1hdGlvbiI7czo0OiJ0ZXh0IjtzOjM0MzoiVGhpcyBpcyB0aGUgYmxvZyBvZiA8c3BhbiBzdHlsZT0idGV4dC1kZWNvcmF0aW9uOiB1bmRlcmxpbmU7Ij48YSBocmVmPSJodHRwOi8vd3d3LmJpZ3RlcmEuY29tIj5CaWd0ZXJhPC9hPjwvc3Bhbj4NCg0KPHNwYW4gc3R5bGU9InRleHQtZGVjb3JhdGlvbjogdW5kZXJsaW5lOyI+PGEgaHJlZj0iaHR0cDovL3d3dy5iaWd0ZXJhLmNvbS9jb21wYW55LnBocCI+Q29tcGFueSBPdmVydmlldzwvYT48L3NwYW4+DQoNCjxzcGFuIHN0eWxlPSJ0ZXh0LWRlY29yYXRpb246IHVuZGVybGluZTsiPjxhIGhyZWY9Imh0dHA6Ly93d3cuYmlndGVyYS5jb20vY29udGFjdC5waHAiPkNvbnRhY3QgVXM8L2E+PC9zcGFuPiI7czo2OiJmaWx0ZXIiO3M6NzoiY29udGVudCI7fQ==\",\n            \"title\": \"Information\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"434f18669a81472d4c68a3a8808d3926\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '2335b694-c90a-4488-8ba3-03bbe7c73b48', '', '', '2017-07-19 02:41:47', '2017-07-19 02:41:47', '', 0, 'http://localhost/bigtera_blog/2017/07/19/2335b694-c90a-4488-8ba3-03bbe7c73b48/', 0, 'customize_changeset', '', 0),
(46, 1, '2017-07-19 02:48:06', '2017-07-19 02:48:06', '{\n    \"sidebars_widgets[sidebar-1]\": {\n        \"value\": [\n            \"search-2\",\n            \"recent-posts-2\",\n            \"archives-2\",\n            \"categories-2\",\n            \"text-7\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '3ecc751c-c86e-4595-a132-f2a6564b88e8', '', '', '2017-07-19 02:48:06', '2017-07-19 02:48:06', '', 0, 'http://localhost/bigtera_blog/2017/07/19/3ecc751c-c86e-4595-a132-f2a6564b88e8/', 0, 'customize_changeset', '', 0),
(48, 1, '2017-07-20 02:50:23', '2017-07-20 02:50:23', 'hello', 'hello 2', '', 'trash', 'open', 'open', '', 'hello-2__trashed', '', '', '2017-07-20 04:48:38', '2017-07-20 04:48:38', '', 0, 'http://localhost/bigtera_blog/?p=48', 0, 'post', '', 0),
(49, 1, '2017-07-20 02:50:23', '2017-07-20 02:50:23', 'hello', 'hello 2', '', 'inherit', 'closed', 'closed', '', '48-revision-v1', '', '', '2017-07-20 02:50:23', '2017-07-20 02:50:23', '', 48, 'http://localhost/bigtera_blog/2017/07/20/48-revision-v1/', 0, 'revision', '', 0),
(50, 1, '2017-07-20 02:56:34', '2017-07-20 02:56:34', '', '你好', '', 'trash', 'open', 'open', '', '%e4%bd%a0%e5%a5%bd__trashed', '', '', '2017-07-20 04:48:38', '2017-07-20 04:48:38', '', 0, 'http://localhost/bigtera_blog/?p=50', 0, 'post', '', 0),
(51, 1, '2017-07-20 02:56:34', '2017-07-20 02:56:34', '', '你好', '', 'inherit', 'closed', 'closed', '', '50-revision-v1', '', '', '2017-07-20 02:56:34', '2017-07-20 02:56:34', '', 50, 'http://localhost/bigtera_blog/2017/07/20/50-revision-v1/', 0, 'revision', '', 0),
(52, 1, '2017-07-20 03:30:11', '2017-07-20 03:30:11', 'This is the blog of <a href=\"http://www.bigtera.com\"><span style=\"text-decoration: underline;\">Bigtera Limited</span></a>.\n\n<span style=\"text-decoration: underline;\">Company Overview</span>\n\n<span style=\"text-decoration: underline;\">Contact Us</span>\n\n&nbsp;', 'about us', '', 'inherit', 'closed', 'closed', '', '2-autosave-v1', '', '', '2017-07-20 03:30:11', '2017-07-20 03:30:11', '', 2, 'http://localhost/bigtera_blog/2017/07/20/2-autosave-v1/', 0, 'revision', '', 0),
(53, 1, '2017-07-20 03:30:39', '2017-07-20 03:30:39', 'This is the blog of <a href=\"http://www.bigtera.com\"><span style=\"text-decoration: underline;\">Bigtera Limited</span></a>.\r\n\r\n<a href=\"http://www.bigtera.com/company.php\"><span style=\"text-decoration: underline;\">Company Overview</span></a>\r\n\r\n<a href=\"http://www.bigtera.com/contact.php\"><span style=\"text-decoration: underline;\">Contact Us</span> </a>\r\n\r\n&nbsp;', 'about us', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2017-07-20 03:30:39', '2017-07-20 03:30:39', '', 2, 'http://localhost/bigtera_blog/2017/07/20/2-revision-v1/', 0, 'revision', '', 0),
(54, 1, '2017-07-20 03:31:28', '2017-07-20 03:31:28', 'http://localhost/bigtera_blog/wp-content/uploads/2017/07/cropped-bigtera_logo_blog-2.png', 'cropped-bigtera_logo_blog-2.png', '', 'inherit', 'open', 'closed', '', 'cropped-bigtera_logo_blog-2-png', '', '', '2017-07-20 03:31:28', '2017-07-20 03:31:28', '', 0, 'http://localhost/bigtera_blog/wp-content/uploads/2017/07/cropped-bigtera_logo_blog-2.png', 0, 'attachment', 'image/png', 0),
(55, 1, '2017-07-20 03:31:46', '2017-07-20 03:31:46', 'http://localhost/bigtera_blog/wp-content/uploads/2017/07/cropped-cropped-bigtera_logo_blog-1.png', 'cropped-cropped-bigtera_logo_blog-1.png', '', 'inherit', 'open', 'closed', '', 'cropped-cropped-bigtera_logo_blog-1-png', '', '', '2017-07-20 03:31:46', '2017-07-20 03:31:46', '', 0, 'http://localhost/bigtera_blog/wp-content/uploads/2017/07/cropped-cropped-bigtera_logo_blog-1.png', 0, 'attachment', 'image/png', 0),
(56, 1, '2017-07-20 04:41:58', '2017-07-20 04:41:58', '{\n    \"colormag::custom_logo\": {\n        \"value\": 58,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"colormag::colormag_header_logo_placement\": {\n        \"value\": \"header_logo_only\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"blogdescription\": {\n        \"value\": \"Empowering Your Software-Defined Transformation\",\n        \"type\": \"option\",\n        \"user_id\": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '16b28fad-26bd-4717-bbe0-f43b2b5b730b', '', '', '2017-07-20 04:41:58', '2017-07-20 04:41:58', '', 0, 'http://localhost/bigtera_blog/?p=56', 0, 'customize_changeset', '', 0),
(57, 1, '2017-07-20 04:40:41', '2017-07-20 04:40:41', '', 'bigtera_logo_blog - Copy', '', 'inherit', 'open', 'closed', '', 'bigtera_logo_blog-copy', '', '', '2017-07-20 04:40:41', '2017-07-20 04:40:41', '', 0, 'http://localhost/bigtera_blog/wp-content/uploads/2017/07/bigtera_logo_blog-Copy.png', 0, 'attachment', 'image/png', 0),
(58, 1, '2017-07-20 04:41:09', '2017-07-20 04:41:09', 'http://localhost/bigtera_blog/wp-content/uploads/2017/07/cropped-bigtera_logo_blog-Copy.png', 'cropped-bigtera_logo_blog-Copy.png', '', 'inherit', 'open', 'closed', '', 'cropped-bigtera_logo_blog-copy-png', '', '', '2017-07-20 04:41:09', '2017-07-20 04:41:09', '', 0, 'http://localhost/bigtera_blog/wp-content/uploads/2017/07/cropped-bigtera_logo_blog-Copy.png', 0, 'attachment', 'image/png', 0),
(59, 1, '2017-07-20 04:46:56', '2017-07-20 04:46:56', '{\n    \"colormag::colormag_hide_blog_front\": {\n        \"value\": false,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"colormag::colormag_site_layout\": {\n        \"value\": \"wide_layout\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"colormag::colormag_default_layout\": {\n        \"value\": \"right_sidebar\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"colormag::colormag_primary_color\": {\n        \"value\": \"#72ae2d\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"colormag::colormag_featured_image_popup\": {\n        \"value\": false,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '2649aa16-1475-4e4d-b2c2-3a06e67dca14', '', '', '2017-07-20 04:46:56', '2017-07-20 04:46:56', '', 0, 'http://localhost/bigtera_blog/?p=59', 0, 'customize_changeset', '', 0),
(60, 1, '2017-07-20 04:49:03', '2017-07-20 04:49:03', '1945年，第二次世界大戰結束，日本戰敗並簽署《降伏文書》。根據盟軍太平洋總司令麥克阿瑟元帥發布的軍事命令《一般命令第一號》第1條規定：「在中國（滿洲除外）、臺灣，及北緯16度以北的法屬印度支那（現今的越南北部和寮國）境內的日本高級將領，及所有陸、海、空軍及附屬部隊，應向蔣介石將軍投降」，蔣介石委派陳儀於10月25日到臺灣接受在臺日軍的投降，臺灣暫時成為盟軍的軍事佔領地，蔣介石並任命陳儀為臺灣省行政長官公署行政長官。[57] 當時接管臺灣的臺灣行政長官公署施政錯誤、官員違法斂財嚴重、軍警紀律敗壞、雙方在文化及語言上產生隔閡，臺灣人民遭受種種歧視及各種差別待遇、政府濫印鈔票導致惡性通貨膨脹、實施統制經濟限制民間貿易造成大量民眾失業、藉由專賣局與貿易局壟斷臺灣經濟命脈、掏空民生物資運往中國大陸，終至民不聊生、路有餓莩，各地反抗之聲頻傳。在1947年初，因一起緝菸血案，以及前往抗議的群眾遭行政長官公署衛兵開槍掃射，於是累積一年多以來的龐大民怨能量至此總爆發，各地發生軍民衝突，國民政府調派大軍鎮壓，後續還有清鄉行動，許多與事件無關的臺籍菁英與百姓無辜遇害，或逮捕之後不經審判而被監禁、處死或就此失蹤，後來行政院官方調查報告死亡人數約1.8萬至2.8萬人，史稱二二八事件。此事件造成臺灣本省人與外省人長期的族群對立，以及後來的政黨對抗，影響至深且廣，也埋下臺灣獨立運動的種子。\r\n1949年1月1日，中華民國總統蔣中正宣告隱退，由副總統李宗仁「代行」總統職權，李於1月21日正式接任中華民國代總統。中華民國政府因國共內戰戰況失利，蔣中正命令蔣經國、湯恩伯、桂永清將中央銀行黃金、白銀、外匯轉運臺灣。10月1日，毛澤東在北京天安門宣告中華人民共和國中央人民政府成立。10月13日，解放軍兵臨廣州，李宗仁於11月20日專機飛往香港就醫，再於12月5日與家人飛往美國。12月7日中華民國行政機關人員遷至臺灣。 中華民國於1948年5月10日公布實施《動員戡亂時期臨時條款》，1949年5月20日公布《戒嚴令》[58]。蔣中正於1950年3月1日在臺宣告復行總統職權，為穩固政權、並防止中國共產黨滲透，展開長期的戒嚴，稱為白色恐怖時期。之後中華民國政府在臺灣一方面運用美援，推行經濟變革，穩定農業，扶植工業及中小企業；一方面透過前述兩項法令，配合黨、政府、軍隊、特務的結合掌控，持續政治與社會上的強勢控制，鞏固一黨威權體制，並壓制許多反對言論或行動。 自1949年10月24日，解放軍渡海進攻大金門的古寧頭戰役開始，臺海兩岸之間發生數起慘烈戰役，直至1958年金門八二三砲戰國軍一方防衛成功，使得雙方暫時停火。之後經過二年（1960年），與往後1965年間偶發零星小戰鬥，此軍事衝突直到1978年底才正式宣告兩岸對峙時代結束，臺灣海峽危機得以正式終止[59]。', '臺灣', '', 'trash', 'open', 'open', '', '%e8%87%ba%e7%81%a3__trashed', '', '', '2017-07-20 06:34:49', '2017-07-20 06:34:49', '', 0, 'http://localhost/bigtera_blog/?p=60', 0, 'post', '', 0),
(61, 1, '2017-07-20 04:49:03', '2017-07-20 04:49:03', '1945年，第二次世界大戰結束，日本戰敗並簽署《降伏文書》。根據盟軍太平洋總司令麥克阿瑟元帥發布的軍事命令《一般命令第一號》第1條規定：「在中國（滿洲除外）、臺灣，及北緯16度以北的法屬印度支那（現今的越南北部和寮國）境內的日本高級將領，及所有陸、海、空軍及附屬部隊，應向蔣介石將軍投降」，蔣介石委派陳儀於10月25日到臺灣接受在臺日軍的投降，臺灣暫時成為盟軍的軍事佔領地，蔣介石並任命陳儀為臺灣省行政長官公署行政長官。[57] 當時接管臺灣的臺灣行政長官公署施政錯誤、官員違法斂財嚴重、軍警紀律敗壞、雙方在文化及語言上產生隔閡，臺灣人民遭受種種歧視及各種差別待遇、政府濫印鈔票導致惡性通貨膨脹、實施統制經濟限制民間貿易造成大量民眾失業、藉由專賣局與貿易局壟斷臺灣經濟命脈、掏空民生物資運往中國大陸，終至民不聊生、路有餓莩，各地反抗之聲頻傳。在1947年初，因一起緝菸血案，以及前往抗議的群眾遭行政長官公署衛兵開槍掃射，於是累積一年多以來的龐大民怨能量至此總爆發，各地發生軍民衝突，國民政府調派大軍鎮壓，後續還有清鄉行動，許多與事件無關的臺籍菁英與百姓無辜遇害，或逮捕之後不經審判而被監禁、處死或就此失蹤，後來行政院官方調查報告死亡人數約1.8萬至2.8萬人，史稱二二八事件。此事件造成臺灣本省人與外省人長期的族群對立，以及後來的政黨對抗，影響至深且廣，也埋下臺灣獨立運動的種子。\r\n1949年1月1日，中華民國總統蔣中正宣告隱退，由副總統李宗仁「代行」總統職權，李於1月21日正式接任中華民國代總統。中華民國政府因國共內戰戰況失利，蔣中正命令蔣經國、湯恩伯、桂永清將中央銀行黃金、白銀、外匯轉運臺灣。10月1日，毛澤東在北京天安門宣告中華人民共和國中央人民政府成立。10月13日，解放軍兵臨廣州，李宗仁於11月20日專機飛往香港就醫，再於12月5日與家人飛往美國。12月7日中華民國行政機關人員遷至臺灣。 中華民國於1948年5月10日公布實施《動員戡亂時期臨時條款》，1949年5月20日公布《戒嚴令》[58]。蔣中正於1950年3月1日在臺宣告復行總統職權，為穩固政權、並防止中國共產黨滲透，展開長期的戒嚴，稱為白色恐怖時期。之後中華民國政府在臺灣一方面運用美援，推行經濟變革，穩定農業，扶植工業及中小企業；一方面透過前述兩項法令，配合黨、政府、軍隊、特務的結合掌控，持續政治與社會上的強勢控制，鞏固一黨威權體制，並壓制許多反對言論或行動。 自1949年10月24日，解放軍渡海進攻大金門的古寧頭戰役開始，臺海兩岸之間發生數起慘烈戰役，直至1958年金門八二三砲戰國軍一方防衛成功，使得雙方暫時停火。之後經過二年（1960年），與往後1965年間偶發零星小戰鬥，此軍事衝突直到1978年底才正式宣告兩岸對峙時代結束，臺灣海峽危機得以正式終止[59]。', '臺灣', '', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2017-07-20 04:49:03', '2017-07-20 04:49:03', '', 60, 'http://localhost/bigtera_blog/2017/07/20/60-revision-v1/', 0, 'revision', '', 0),
(62, 1, '2017-07-20 04:49:49', '2017-07-20 04:49:49', '[caption id=\"\" align=\"aligncenter\" width=\"1200\"]<a href=\"https://upload.wikimedia.org/wikipedia/commons/3/38/Taiwan_NASA_Terra_MODIS_23791.jpg\"><img class=\"size-medium\" src=\"https://upload.wikimedia.org/wikipedia/commons/3/38/Taiwan_NASA_Terra_MODIS_23791.jpg\" width=\"1200\" height=\"1600\" /></a> taiwan[/caption]\r\n\r\n1945年，第二次世界大戰結束，日本戰敗並簽署《降伏文書》。根據盟軍太平洋總司令麥克阿瑟元帥發布的軍事命令《一般命令第一號》第1條規定：「在中國（滿洲除外）、臺灣，及北緯16度以北的法屬印度支那（現今的越南北部和寮國）境內的日本高級將領，及所有陸、海、空軍及附屬部隊，應向蔣介石將軍投降」，蔣介石委派陳儀於10月25日到臺灣接受在臺日軍的投降，臺灣暫時成為盟軍的軍事佔領地，蔣介石並任命陳儀為臺灣省行政長官公署行政長官。[57] 當時接管臺灣的臺灣行政長官公署施政錯誤、官員違法斂財嚴重、軍警紀律敗壞、雙方在文化及語言上產生隔閡，臺灣人民遭受種種歧視及各種差別待遇、政府濫印鈔票導致惡性通貨膨脹、實施統制經濟限制民間貿易造成大量民眾失業、藉由專賣局與貿易局壟斷臺灣經濟命脈、掏空民生物資運往中國大陸，終至民不聊生、路有餓莩，各地反抗之聲頻傳。在1947年初，因一起緝菸血案，以及前往抗議的群眾遭行政長官公署衛兵開槍掃射，於是累積一年多以來的龐大民怨能量至此總爆發，各地發生軍民衝突，國民政府調派大軍鎮壓，後續還有清鄉行動，許多與事件無關的臺籍菁英與百姓無辜遇害，或逮捕之後不經審判而被監禁、處死或就此失蹤，後來行政院官方調查報告死亡人數約1.8萬至2.8萬人，史稱二二八事件。此事件造成臺灣本省人與外省人長期的族群對立，以及後來的政黨對抗，影響至深且廣，也埋下臺灣獨立運動的種子。\r\n1949年1月1日，中華民國總統蔣中正宣告隱退，由副總統李宗仁「代行」總統職權，李於1月21日正式接任中華民國代總統。中華民國政府因國共內戰戰況失利，蔣中正命令蔣經國、湯恩伯、桂永清將中央銀行黃金、白銀、外匯轉運臺灣。10月1日，毛澤東在北京天安門宣告中華人民共和國中央人民政府成立。10月13日，解放軍兵臨廣州，李宗仁於11月20日專機飛往香港就醫，再於12月5日與家人飛往美國。12月7日中華民國行政機關人員遷至臺灣。 中華民國於1948年5月10日公布實施《動員戡亂時期臨時條款》，1949年5月20日公布《戒嚴令》[58]。蔣中正於1950年3月1日在臺宣告復行總統職權，為穩固政權、並防止中國共產黨滲透，展開長期的戒嚴，稱為白色恐怖時期。之後中華民國政府在臺灣一方面運用美援，推行經濟變革，穩定農業，扶植工業及中小企業；一方面透過前述兩項法令，配合黨、政府、軍隊、特務的結合掌控，持續政治與社會上的強勢控制，鞏固一黨威權體制，並壓制許多反對言論或行動。 自1949年10月24日，解放軍渡海進攻大金門的古寧頭戰役開始，臺海兩岸之間發生數起慘烈戰役，直至1958年金門八二三砲戰國軍一方防衛成功，使得雙方暫時停火。之後經過二年（1960年），與往後1965年間偶發零星小戰鬥，此軍事衝突直到1978年底才正式宣告兩岸對峙時代結束，臺灣海峽危機得以正式終止[59]。', '臺灣', '', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2017-07-20 04:49:49', '2017-07-20 04:49:49', '', 60, 'http://localhost/bigtera_blog/2017/07/20/60-revision-v1/', 0, 'revision', '', 0),
(63, 1, '2017-07-20 04:51:22', '2017-07-20 04:51:22', '<img class=\"aligncenter\" src=\"https://upload.wikimedia.org/wikipedia/commons/thumb/7/72/Flag_of_the_Republic_of_China.svg/255px-Flag_of_the_Republic_of_China.svg.png\" alt=\"Image result\" width=\"255\" height=\"170\" />\r\n\r\n1945年，第二次世界大戰結束，日本戰敗並簽署《降伏文書》。根據盟軍太平洋總司令麥克阿瑟元帥發布的軍事命令《一般命令第一號》第1條規定：「在中國（滿洲除外）、臺灣，及北緯16度以北的法屬印度支那（現今的越南北部和寮國）境內的日本高級將領，及所有陸、海、空軍及附屬部隊，應向蔣介石將軍投降」，蔣介石委派陳儀於10月25日到臺灣接受在臺日軍的投降，臺灣暫時成為盟軍的軍事佔領地，蔣介石並任命陳儀為臺灣省行政長官公署行政長官。[57] 當時接管臺灣的臺灣行政長官公署施政錯誤、官員違法斂財嚴重、軍警紀律敗壞、雙方在文化及語言上產生隔閡，臺灣人民遭受種種歧視及各種差別待遇、政府濫印鈔票導致惡性通貨膨脹、實施統制經濟限制民間貿易造成大量民眾失業、藉由專賣局與貿易局壟斷臺灣經濟命脈、掏空民生物資運往中國大陸，終至民不聊生、路有餓莩，各地反抗之聲頻傳。在1947年初，因一起緝菸血案，以及前往抗議的群眾遭行政長官公署衛兵開槍掃射，於是累積一年多以來的龐大民怨能量至此總爆發，各地發生軍民衝突，國民政府調派大軍鎮壓，後續還有清鄉行動，許多與事件無關的臺籍菁英與百姓無辜遇害，或逮捕之後不經審判而被監禁、處死或就此失蹤，後來行政院官方調查報告死亡人數約1.8萬至2.8萬人，史稱二二八事件。此事件造成臺灣本省人與外省人長期的族群對立，以及後來的政黨對抗，影響至深且廣，也埋下臺灣獨立運動的種子。\r\n1949年1月1日，中華民國總統蔣中正宣告隱退，由副總統李宗仁「代行」總統職權，李於1月21日正式接任中華民國代總統。中華民國政府因國共內戰戰況失利，蔣中正命令蔣經國、湯恩伯、桂永清將中央銀行黃金、白銀、外匯轉運臺灣。10月1日，毛澤東在北京天安門宣告中華人民共和國中央人民政府成立。10月13日，解放軍兵臨廣州，李宗仁於11月20日專機飛往香港就醫，再於12月5日與家人飛往美國。12月7日中華民國行政機關人員遷至臺灣。 中華民國於1948年5月10日公布實施《動員戡亂時期臨時條款》，1949年5月20日公布《戒嚴令》[58]。蔣中正於1950年3月1日在臺宣告復行總統職權，為穩固政權、並防止中國共產黨滲透，展開長期的戒嚴，稱為白色恐怖時期。之後中華民國政府在臺灣一方面運用美援，推行經濟變革，穩定農業，扶植工業及中小企業；一方面透過前述兩項法令，配合黨、政府、軍隊、特務的結合掌控，持續政治與社會上的強勢控制，鞏固一黨威權體制，並壓制許多反對言論或行動。 自1949年10月24日，解放軍渡海進攻大金門的古寧頭戰役開始，臺海兩岸之間發生數起慘烈戰役，直至1958年金門八二三砲戰國軍一方防衛成功，使得雙方暫時停火。之後經過二年（1960年），與往後1965年間偶發零星小戰鬥，此軍事衝突直到1978年底才正式宣告兩岸對峙時代結束，臺灣海峽危機得以正式終止[59]。', '臺灣', '', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2017-07-20 04:51:22', '2017-07-20 04:51:22', '', 60, 'http://localhost/bigtera_blog/2017/07/20/60-revision-v1/', 0, 'revision', '', 0),
(64, 1, '2017-07-20 04:51:40', '2017-07-20 04:51:40', '<img class=\"aligncenter\" src=\"https://upload.wikimedia.org/wikipedia/commons/thumb/7/72/Flag_of_the_Republic_of_China.svg/255px-Flag_of_the_Republic_of_China.svg.png\" alt=\"Image result\" width=\"255\" height=\"170\" />\r\n\r\n&nbsp;', '臺灣', '', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2017-07-20 04:51:40', '2017-07-20 04:51:40', '', 60, 'http://localhost/bigtera_blog/2017/07/20/60-revision-v1/', 0, 'revision', '', 0),
(66, 1, '2017-07-20 05:54:09', '2017-07-20 05:54:09', '', 'ayylmao', '', 'inherit', 'open', 'closed', '', 'ayylmao', '', '', '2017-07-20 05:54:09', '2017-07-20 05:54:09', '', 60, 'http://localhost/bigtera_blog/wp-content/uploads/2017/07/ayylmao.jpg', 0, 'attachment', 'image/jpeg', 0),
(67, 1, '2017-07-20 05:54:15', '2017-07-20 05:54:15', '<img class=\"aligncenter\" src=\"https://upload.wikimedia.org/wikipedia/commons/thumb/7/72/Flag_of_the_Republic_of_China.svg/255px-Flag_of_the_Republic_of_China.svg.png\" alt=\"Image result\" width=\"255\" height=\"170\" />\r\n\r\n1945年，第二次世界大戰結束，日本戰敗並簽署《降伏文書》。根據盟軍太平洋總司令麥克阿瑟元帥發布的軍事命令《一般命令第一號》第1條規定：「在中國（滿洲除外）、臺灣，及北緯16度以北的法屬印度支那（現今的越南北部和寮國）境內的日本高級將領，及所有陸、海、空軍及附屬部隊，應向蔣介石將軍投降」，蔣介石委派陳儀於10月25日到臺灣接受在臺日軍的投降，臺灣暫時成為盟軍的軍事佔領地，蔣介石並任命陳儀為臺灣省行政長官公署行政長官。[57] 當時接管臺灣的臺灣行政長官公署施政錯誤、官員違法斂財嚴重、軍警紀律敗壞、雙方在文化及語言上產生隔閡，臺灣人民遭受種種歧視及各種差別待遇、政府濫印鈔票導致惡性通貨膨脹、實施統制經濟限制民間貿易造成大量民眾失業、藉由專賣局與貿易局壟斷臺灣經濟命脈、掏空民生物資運往中國大陸，終至民不聊生、路有餓莩，各地反抗之聲頻傳。在1947年初，因一起緝菸血案，以及前往抗議的群眾遭行政長官公署衛兵開槍掃射，於是累積一年多以來的龐大民怨能量至此總爆發，各地發生軍民衝突，國民政府調派大軍鎮壓，後續還有清鄉行動，許多與事件無關的臺籍菁英與百姓無辜遇害，或逮捕之後不經審判而被監禁、處死或就此失蹤，後來行政院官方調查報告死亡人數約1.8萬至2.8萬人，史稱二二八事件。此事件造成臺灣本省人與外省人長期的族群對立，以及後來的政黨對抗，影響至深且廣，也埋下臺灣獨立運動的種子。\r\n1949年1月1日，中華民國總統蔣中正宣告隱退，由副總統李宗仁「代行」總統職權，李於1月21日正式接任中華民國代總統。中華民國政府因國共內戰戰況失利，蔣中正命令蔣經國、湯恩伯、桂永清將中央銀行黃金、白銀、外匯轉運臺灣。10月1日，毛澤東在北京天安門宣告中華人民共和國中央人民政府成立。10月13日，解放軍兵臨廣州，李宗仁於11月20日專機飛往香港就醫，再於12月5日與家人飛往美國。12月7日中華民國行政機關人員遷至臺灣。 中華民國於1948年5月10日公布實施《動員戡亂時期臨時條款》，1949年5月20日公布《戒嚴令》[58]。蔣中正於1950年3月1日在臺宣告復行總統職權，為穩固政權、並防止中國共產黨滲透，展開長期的戒嚴，稱為白色恐怖時期。之後中華民國政府在臺灣一方面運用美援，推行經濟變革，穩定農業，扶植工業及中小企業；一方面透過前述兩項法令，配合黨、政府、軍隊、特務的結合掌控，持續政治與社會上的強勢控制，鞏固一黨威權體制，並壓制許多反對言論或行動。 自1949年10月24日，解放軍渡海進攻大金門的古寧頭戰役開始，臺海兩岸之間發生數起慘烈戰役，直至1958年金門八二三砲戰國軍一方防衛成功，使得雙方暫時停火。之後經過二年（1960年），與往後1965年間偶發零星小戰鬥，此軍事衝突直到1978年底才正式宣告兩岸對峙時代結束，臺灣海峽危機得以正式終止[59]。', '臺灣', '', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2017-07-20 05:54:15', '2017-07-20 05:54:15', '', 60, 'http://localhost/bigtera_blog/2017/07/20/60-revision-v1/', 0, 'revision', '', 0),
(68, 1, '2017-07-20 06:05:28', '2017-07-20 06:05:28', '2011年6月，史奇雷克斯在Beatport發行了《Scary Monsters and Nice Sprites》的後續迷你專輯《More Monsters and Sprites》，此輯收錄包括他上一張專輯裡的一首歌曲《Scary Monsters and Nice Sprites》的四首重混版本及一首新歌《First of the Year (Equinox)》。8月26日，史奇雷克斯創立了自己的唱片公司——OWSLA。兩天後，史奇雷克斯在 YouTube 上傳了《First of the Year (Equinox)》的音樂影片，[6]此影片還出現在癟四與大頭蛋在2011年10月27日復播第一集中出現。\r\n史奇雷克斯與德國電子音樂家Boys Noize以「Dog Blood」的名義於2012年8月12日在iTunes推出迷你專輯《Next Order/Middle Finger》。史奇雷克斯亦幫電影無敵破壞王製作一首歌曲《Bug Hunt》。\r\n2012年11月30日，史奇雷克斯發行了專屬他的第一個Flash網頁遊戲——「Skrillex Quest」。[7]\r\n2012年底，史奇雷克斯的兩首歌《Bug Hunt》和《Make it Bun Dem》分別在動畫片《無敵破壞王》和《極地戰嚎3》出現。他在2013年1月2日發行了個人第7張迷你專輯《Living》。[8]2013年1月，史奇雷克斯在表演中表示他將在夏天發行他的首張專輯，[9]但最後他並沒有發行專輯。\r\n《Recess》（2014年）[編輯]\r\n2014年3月7日，一個名為《Alien Ride》的應用程式在iOS的App Store上架，其內容包含了一個含有11會隱藏物件的祕密資料夾及一個在北美東部標準時間3月10日早上6:30會歸零的倒數計時器。隨後，史奇雷克斯的個人網站將首頁改為新專輯的封面，並公布新專輯在Google Play及iTunes上的網址，於3月18日正式發行新專輯《Recess》。\r\n推出合作小隊─Jack Ü （2013年-）[編輯]\r\n史奇雷克斯與迪波洛於2013年9月15日推出合作計劃小隊Jack Ü[10]，2014年於Ultra Music Festival合作表演，並於2014年9月17日發布與女歌手Kiesza合作歌曲《Take Ü There》，其後於2015年2月27日推出專輯《Skrillex and Diplo Present Jack Ü》[11]，專輯與不同歌手合作，如小賈斯汀、2 Chainz等，當中與小賈斯汀合作的歌曲《Where Are Ü Now》更深受歡迎，獲得全美音樂獎中的年度合作獎以及葛萊美最佳舞曲錄音獎，同時專輯亦獲得最佳電子/舞曲專輯獎。\r\n重回樂團（2017年-）[編輯]\r\n2017年1月15日史奇雷克斯生日當天他在社交媒體上發布他與「從頭到尾」樂團合作歌曲《Make War》。[1]\r\n個人生活[編輯]\r\n2012年2月，史奇雷克斯開始與英國女歌手愛莉格交往，[12][13]，但兩人在同年10月分手。[14][15]', 'top keku', '', 'publish', 'open', 'open', '', 'top-keku', '', '', '2017-07-20 06:05:28', '2017-07-20 06:05:28', '', 0, 'http://localhost/bigtera_blog/?p=68', 0, 'post', '', 0),
(69, 1, '2017-07-20 06:05:23', '2017-07-20 06:05:23', '', 'ChIgcsB', '', 'inherit', 'open', 'closed', '', 'chigcsb', '', '', '2017-07-20 06:05:23', '2017-07-20 06:05:23', '', 68, 'http://localhost/bigtera_blog/wp-content/uploads/2017/07/ChIgcsB.jpg', 0, 'attachment', 'image/jpeg', 0),
(70, 1, '2017-07-20 06:05:28', '2017-07-20 06:05:28', '2011年6月，史奇雷克斯在Beatport發行了《Scary Monsters and Nice Sprites》的後續迷你專輯《More Monsters and Sprites》，此輯收錄包括他上一張專輯裡的一首歌曲《Scary Monsters and Nice Sprites》的四首重混版本及一首新歌《First of the Year (Equinox)》。8月26日，史奇雷克斯創立了自己的唱片公司——OWSLA。兩天後，史奇雷克斯在 YouTube 上傳了《First of the Year (Equinox)》的音樂影片，[6]此影片還出現在癟四與大頭蛋在2011年10月27日復播第一集中出現。\r\n史奇雷克斯與德國電子音樂家Boys Noize以「Dog Blood」的名義於2012年8月12日在iTunes推出迷你專輯《Next Order/Middle Finger》。史奇雷克斯亦幫電影無敵破壞王製作一首歌曲《Bug Hunt》。\r\n2012年11月30日，史奇雷克斯發行了專屬他的第一個Flash網頁遊戲——「Skrillex Quest」。[7]\r\n2012年底，史奇雷克斯的兩首歌《Bug Hunt》和《Make it Bun Dem》分別在動畫片《無敵破壞王》和《極地戰嚎3》出現。他在2013年1月2日發行了個人第7張迷你專輯《Living》。[8]2013年1月，史奇雷克斯在表演中表示他將在夏天發行他的首張專輯，[9]但最後他並沒有發行專輯。\r\n《Recess》（2014年）[編輯]\r\n2014年3月7日，一個名為《Alien Ride》的應用程式在iOS的App Store上架，其內容包含了一個含有11會隱藏物件的祕密資料夾及一個在北美東部標準時間3月10日早上6:30會歸零的倒數計時器。隨後，史奇雷克斯的個人網站將首頁改為新專輯的封面，並公布新專輯在Google Play及iTunes上的網址，於3月18日正式發行新專輯《Recess》。\r\n推出合作小隊─Jack Ü （2013年-）[編輯]\r\n史奇雷克斯與迪波洛於2013年9月15日推出合作計劃小隊Jack Ü[10]，2014年於Ultra Music Festival合作表演，並於2014年9月17日發布與女歌手Kiesza合作歌曲《Take Ü There》，其後於2015年2月27日推出專輯《Skrillex and Diplo Present Jack Ü》[11]，專輯與不同歌手合作，如小賈斯汀、2 Chainz等，當中與小賈斯汀合作的歌曲《Where Are Ü Now》更深受歡迎，獲得全美音樂獎中的年度合作獎以及葛萊美最佳舞曲錄音獎，同時專輯亦獲得最佳電子/舞曲專輯獎。\r\n重回樂團（2017年-）[編輯]\r\n2017年1月15日史奇雷克斯生日當天他在社交媒體上發布他與「從頭到尾」樂團合作歌曲《Make War》。[1]\r\n個人生活[編輯]\r\n2012年2月，史奇雷克斯開始與英國女歌手愛莉格交往，[12][13]，但兩人在同年10月分手。[14][15]', 'top keku', '', 'inherit', 'closed', 'closed', '', '68-revision-v1', '', '', '2017-07-20 06:05:28', '2017-07-20 06:05:28', '', 68, 'http://localhost/bigtera_blog/2017/07/20/68-revision-v1/', 0, 'revision', '', 0),
(71, 1, '2017-07-20 06:15:23', '2017-07-20 06:15:23', '{\n    \"widget_recent-posts[2]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTozOntzOjU6InRpdGxlIjtzOjA6IiI7czo2OiJudW1iZXIiO2k6NTtzOjk6InNob3dfZGF0ZSI7YjowO30=\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"3ccfa9c836fe053e2add84614c8ce4fd\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1\n    },\n    \"sidebars_widgets[colormag_right_sidebar]\": {\n        \"value\": [\n            \"search-2\",\n            \"recent-posts-2\",\n            \"archives-2\",\n            \"categories-2\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'bb3e1acc-5da4-4319-9682-9284aa4883a4', '', '', '2017-07-20 06:15:23', '2017-07-20 06:15:23', '', 0, 'http://localhost/bigtera_blog/?p=71', 0, 'customize_changeset', '', 0),
(72, 1, '2017-07-20 06:15:51', '2017-07-20 06:15:51', 'hodor hodor', 'adfsasdfasdfsadf', '', 'publish', 'open', 'open', '', 'adfsasdfasdfsadf', '', '', '2017-07-20 06:15:51', '2017-07-20 06:15:51', '', 0, 'http://localhost/bigtera_blog/?p=72', 0, 'post', '', 0),
(73, 1, '2017-07-20 06:15:51', '2017-07-20 06:15:51', 'hodor hodor', 'adfsasdfasdfsadf', '', 'inherit', 'closed', 'closed', '', '72-revision-v1', '', '', '2017-07-20 06:15:51', '2017-07-20 06:15:51', '', 72, 'http://localhost/bigtera_blog/2017/07/20/72-revision-v1/', 0, 'revision', '', 0),
(74, 1, '2017-07-20 06:16:20', '2017-07-20 06:16:20', 'lmaooofoasdofaosdfadsfoasdfo hodor\r\n\r\ni dindu nuffin', 'ayyerereryeyeye lmao', '', 'publish', 'open', 'open', '', 'ayyerereryeyeye-lmao', '', '', '2017-07-20 06:16:20', '2017-07-20 06:16:20', '', 0, 'http://localhost/bigtera_blog/?p=74', 0, 'post', '', 0),
(75, 1, '2017-07-20 06:16:20', '2017-07-20 06:16:20', 'lmaooofoasdofaosdfadsfoasdfo hodor\r\n\r\ni dindu nuffin', 'ayyerereryeyeye lmao', '', 'inherit', 'closed', 'closed', '', '74-revision-v1', '', '', '2017-07-20 06:16:20', '2017-07-20 06:16:20', '', 74, 'http://localhost/bigtera_blog/2017/07/20/74-revision-v1/', 0, 'revision', '', 0),
(76, 1, '2017-07-20 06:33:09', '2017-07-20 06:33:09', '{\n    \"colormag::colormag_default_layout\": {\n        \"value\": \"right_sidebar\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"colormag::colormag_default_page_layout\": {\n        \"value\": \"right_sidebar\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"colormag::colormag_default_single_posts_layout\": {\n        \"value\": \"right_sidebar\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"show_on_front\": {\n        \"value\": \"posts\",\n        \"type\": \"option\",\n        \"user_id\": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'd43b7e85-3709-4290-9502-b5fe528b153a', '', '', '2017-07-20 06:33:09', '2017-07-20 06:33:09', '', 0, 'http://localhost/bigtera_blog/?p=76', 0, 'customize_changeset', '', 0),
(77, 1, '2017-07-20 06:33:30', '2017-07-20 06:33:30', '<a title=\"Western philosophy\" href=\"https://en.wikipedia.org/wiki/Western_philosophy\">Western philosophy</a> is the philosophical tradition of the <a title=\"Western world\" href=\"https://en.wikipedia.org/wiki/Western_world\">Western world</a> and dates to <a title=\"Pre-Socratic philosophy\" href=\"https://en.wikipedia.org/wiki/Pre-Socratic_philosophy\">Pre-Socratic</a> thinkers who were active in <a title=\"Ancient Greece\" href=\"https://en.wikipedia.org/wiki/Ancient_Greece\">Ancient Greece</a> in the 6th century BCE such as <a class=\"mw-redirect\" title=\"Thales\" href=\"https://en.wikipedia.org/wiki/Thales\">Thales</a> (c. 624–546 BCE) and <a title=\"Pythagoras\" href=\"https://en.wikipedia.org/wiki/Pythagoras\">Pythagoras</a> (c. 570–495 BCE) who practiced a \"love of wisdom\" (<i>philosophia</i>)<sup id=\"cite_ref-:02_33-0\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Philosophy#cite_note-:02-33\">[33]</a></sup> and were also termed <i>physiologoi</i> (students of <i>physis</i>, or nature). <a title=\"Socrates\" href=\"https://en.wikipedia.org/wiki/Socrates\">Socrates</a> was a very influential philosopher, who insisted that he possessed no <i>wisdom</i> but was a <i>pursuer of</i> wisdom.<sup id=\"cite_ref-34\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Philosophy#cite_note-34\">[34]</a></sup> <a title=\"Western philosophy\" href=\"https://en.wikipedia.org/wiki/Western_philosophy\">Western philosophy</a> can be divided into three eras: <a title=\"Ancient Greek philosophy\" href=\"https://en.wikipedia.org/wiki/Ancient_Greek_philosophy\">Ancient</a> (Greco-Roman), <a title=\"Medieval philosophy\" href=\"https://en.wikipedia.org/wiki/Medieval_philosophy\">Medieval philosophy</a> (Christian European), and <a title=\"Modern philosophy\" href=\"https://en.wikipedia.org/wiki/Modern_philosophy\">Modern philosophy</a>.\r\n\r\nThe Ancient era was dominated by <a title=\"Ancient Greek philosophy\" href=\"https://en.wikipedia.org/wiki/Ancient_Greek_philosophy\">Greek philosophical schools</a> which arose out of the various pupils of Socrates, such as <a title=\"Plato\" href=\"https://en.wikipedia.org/wiki/Plato\">Plato</a> who founded the <a title=\"Platonic Academy\" href=\"https://en.wikipedia.org/wiki/Platonic_Academy\">Platonic Academy</a>, and was one of the most influential Greek thinkers for the whole of Western thought.<sup id=\"cite_ref-process_35-0\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Philosophy#cite_note-process-35\">[35]</a></sup> Plato\'s student <a title=\"Aristotle\" href=\"https://en.wikipedia.org/wiki/Aristotle\">Aristotle</a> was also extremely influential, founding the <a title=\"Peripatetic school\" href=\"https://en.wikipedia.org/wiki/Peripatetic_school\">Peripatetic school</a>. Other traditions include <a title=\"Cynicism (philosophy)\" href=\"https://en.wikipedia.org/wiki/Cynicism_(philosophy)\">Cynicism</a>, <a title=\"Stoicism\" href=\"https://en.wikipedia.org/wiki/Stoicism\">Stoicism</a>, <a title=\"Skepticism\" href=\"https://en.wikipedia.org/wiki/Skepticism#Philosophical_skepticism\">Greek Skepticism</a> and <a title=\"Epicureanism\" href=\"https://en.wikipedia.org/wiki/Epicureanism\">Epicureanism</a>. Important topics covered by the Greeks included <a title=\"Metaphysics\" href=\"https://en.wikipedia.org/wiki/Metaphysics\">metaphysics</a> (with competing theories such as <a title=\"Atomism\" href=\"https://en.wikipedia.org/wiki/Atomism\">atomism</a> and <a title=\"Monism\" href=\"https://en.wikipedia.org/wiki/Monism\">monism</a>), <a title=\"Cosmology\" href=\"https://en.wikipedia.org/wiki/Cosmology\">cosmology</a>, the nature of the well-lived life (<a title=\"Eudaimonia\" href=\"https://en.wikipedia.org/wiki/Eudaimonia\">eudaimonia</a>), the possibility of knowledge and the nature of reason (<a title=\"Logos\" href=\"https://en.wikipedia.org/wiki/Logos\">logos</a>). With the rise of the <a class=\"mw-redirect\" title=\"Roman empire\" href=\"https://en.wikipedia.org/wiki/Roman_empire\">Roman empire</a>, Greek philosophy was also increasingly discussed in <a class=\"mw-redirect\" title=\"Latin language\" href=\"https://en.wikipedia.org/wiki/Latin_language\">Latin</a> by <a class=\"mw-redirect\" title=\"Romans\" href=\"https://en.wikipedia.org/wiki/Romans\">Romans</a> such as <a title=\"Cicero\" href=\"https://en.wikipedia.org/wiki/Cicero\">Cicero</a> and <a title=\"Seneca the Younger\" href=\"https://en.wikipedia.org/wiki/Seneca_the_Younger\">Seneca</a>.\r\n\r\n<a title=\"Medieval philosophy\" href=\"https://en.wikipedia.org/wiki/Medieval_philosophy\">Medieval philosophy</a> (5th – 16th century) is the period following the fall of the western Roman empire and was dominated by the rise of <a title=\"Christianity\" href=\"https://en.wikipedia.org/wiki/Christianity\">Christianity</a> and hence reflects <a title=\"Judeo-Christian\" href=\"https://en.wikipedia.org/wiki/Judeo-Christian\">Judeo-Christian</a> theological concerns as well as retaining a continuity with Greco-Roman thought. Problems such as the existence and nature of <a title=\"God\" href=\"https://en.wikipedia.org/wiki/God\">God</a>, the nature of <a title=\"Faith\" href=\"https://en.wikipedia.org/wiki/Faith\">faith</a> and reason, metaphysics, the <a title=\"Problem of evil\" href=\"https://en.wikipedia.org/wiki/Problem_of_evil\">problem of evil</a> were discussed in this period. Some key Medieval thinkers include <a class=\"mw-redirect\" title=\"St. Augustine\" href=\"https://en.wikipedia.org/wiki/St._Augustine\">St. Augustine</a>, <a title=\"Thomas Aquinas\" href=\"https://en.wikipedia.org/wiki/Thomas_Aquinas\">Thomas Aquinas</a>, <a title=\"Boethius\" href=\"https://en.wikipedia.org/wiki/Boethius\">Boethius</a>, <a title=\"Anselm of Laon\" href=\"https://en.wikipedia.org/wiki/Anselm_of_Laon\">Anselm</a> and <a title=\"Roger Bacon\" href=\"https://en.wikipedia.org/wiki/Roger_Bacon\">Roger Bacon</a>. Philosophy for these thinkers was viewed as an aid to <a title=\"Theology\" href=\"https://en.wikipedia.org/wiki/Theology\">Theology</a> (<i>ancilla theologiae</i>) and hence they sought to align their philosophy with their interpretation of sacred scripture. This period saw the development of <a title=\"Scholasticism\" href=\"https://en.wikipedia.org/wiki/Scholasticism\">Scholasticism</a>, a text critical method developed in <a class=\"mw-redirect\" title=\"Medieval universities\" href=\"https://en.wikipedia.org/wiki/Medieval_universities\">medieval universities</a> based on close reading and disputation on key texts. The <a title=\"Renaissance\" href=\"https://en.wikipedia.org/wiki/Renaissance\">Renaissance</a> (1355–1650) period saw increasing focus on classic Greco-Roman thought and on a robust <a title=\"Humanism\" href=\"https://en.wikipedia.org/wiki/Humanism\">Humanism</a>.', 'reeeeeeeeeeeeeeeeeeeeeeeeeeeeeee', '', 'publish', 'open', 'open', '', 'reeeeeeeeeeeeeeeeeeeeeeeeeeeeeee', '', '', '2017-07-20 06:33:30', '2017-07-20 06:33:30', '', 0, 'http://localhost/bigtera_blog/?p=77', 0, 'post', '', 0),
(78, 1, '2017-07-20 06:33:30', '2017-07-20 06:33:30', '<a title=\"Western philosophy\" href=\"https://en.wikipedia.org/wiki/Western_philosophy\">Western philosophy</a> is the philosophical tradition of the <a title=\"Western world\" href=\"https://en.wikipedia.org/wiki/Western_world\">Western world</a> and dates to <a title=\"Pre-Socratic philosophy\" href=\"https://en.wikipedia.org/wiki/Pre-Socratic_philosophy\">Pre-Socratic</a> thinkers who were active in <a title=\"Ancient Greece\" href=\"https://en.wikipedia.org/wiki/Ancient_Greece\">Ancient Greece</a> in the 6th century BCE such as <a class=\"mw-redirect\" title=\"Thales\" href=\"https://en.wikipedia.org/wiki/Thales\">Thales</a> (c. 624–546 BCE) and <a title=\"Pythagoras\" href=\"https://en.wikipedia.org/wiki/Pythagoras\">Pythagoras</a> (c. 570–495 BCE) who practiced a \"love of wisdom\" (<i>philosophia</i>)<sup id=\"cite_ref-:02_33-0\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Philosophy#cite_note-:02-33\">[33]</a></sup> and were also termed <i>physiologoi</i> (students of <i>physis</i>, or nature). <a title=\"Socrates\" href=\"https://en.wikipedia.org/wiki/Socrates\">Socrates</a> was a very influential philosopher, who insisted that he possessed no <i>wisdom</i> but was a <i>pursuer of</i> wisdom.<sup id=\"cite_ref-34\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Philosophy#cite_note-34\">[34]</a></sup> <a title=\"Western philosophy\" href=\"https://en.wikipedia.org/wiki/Western_philosophy\">Western philosophy</a> can be divided into three eras: <a title=\"Ancient Greek philosophy\" href=\"https://en.wikipedia.org/wiki/Ancient_Greek_philosophy\">Ancient</a> (Greco-Roman), <a title=\"Medieval philosophy\" href=\"https://en.wikipedia.org/wiki/Medieval_philosophy\">Medieval philosophy</a> (Christian European), and <a title=\"Modern philosophy\" href=\"https://en.wikipedia.org/wiki/Modern_philosophy\">Modern philosophy</a>.\r\n\r\nThe Ancient era was dominated by <a title=\"Ancient Greek philosophy\" href=\"https://en.wikipedia.org/wiki/Ancient_Greek_philosophy\">Greek philosophical schools</a> which arose out of the various pupils of Socrates, such as <a title=\"Plato\" href=\"https://en.wikipedia.org/wiki/Plato\">Plato</a> who founded the <a title=\"Platonic Academy\" href=\"https://en.wikipedia.org/wiki/Platonic_Academy\">Platonic Academy</a>, and was one of the most influential Greek thinkers for the whole of Western thought.<sup id=\"cite_ref-process_35-0\" class=\"reference\"><a href=\"https://en.wikipedia.org/wiki/Philosophy#cite_note-process-35\">[35]</a></sup> Plato\'s student <a title=\"Aristotle\" href=\"https://en.wikipedia.org/wiki/Aristotle\">Aristotle</a> was also extremely influential, founding the <a title=\"Peripatetic school\" href=\"https://en.wikipedia.org/wiki/Peripatetic_school\">Peripatetic school</a>. Other traditions include <a title=\"Cynicism (philosophy)\" href=\"https://en.wikipedia.org/wiki/Cynicism_(philosophy)\">Cynicism</a>, <a title=\"Stoicism\" href=\"https://en.wikipedia.org/wiki/Stoicism\">Stoicism</a>, <a title=\"Skepticism\" href=\"https://en.wikipedia.org/wiki/Skepticism#Philosophical_skepticism\">Greek Skepticism</a> and <a title=\"Epicureanism\" href=\"https://en.wikipedia.org/wiki/Epicureanism\">Epicureanism</a>. Important topics covered by the Greeks included <a title=\"Metaphysics\" href=\"https://en.wikipedia.org/wiki/Metaphysics\">metaphysics</a> (with competing theories such as <a title=\"Atomism\" href=\"https://en.wikipedia.org/wiki/Atomism\">atomism</a> and <a title=\"Monism\" href=\"https://en.wikipedia.org/wiki/Monism\">monism</a>), <a title=\"Cosmology\" href=\"https://en.wikipedia.org/wiki/Cosmology\">cosmology</a>, the nature of the well-lived life (<a title=\"Eudaimonia\" href=\"https://en.wikipedia.org/wiki/Eudaimonia\">eudaimonia</a>), the possibility of knowledge and the nature of reason (<a title=\"Logos\" href=\"https://en.wikipedia.org/wiki/Logos\">logos</a>). With the rise of the <a class=\"mw-redirect\" title=\"Roman empire\" href=\"https://en.wikipedia.org/wiki/Roman_empire\">Roman empire</a>, Greek philosophy was also increasingly discussed in <a class=\"mw-redirect\" title=\"Latin language\" href=\"https://en.wikipedia.org/wiki/Latin_language\">Latin</a> by <a class=\"mw-redirect\" title=\"Romans\" href=\"https://en.wikipedia.org/wiki/Romans\">Romans</a> such as <a title=\"Cicero\" href=\"https://en.wikipedia.org/wiki/Cicero\">Cicero</a> and <a title=\"Seneca the Younger\" href=\"https://en.wikipedia.org/wiki/Seneca_the_Younger\">Seneca</a>.\r\n\r\n<a title=\"Medieval philosophy\" href=\"https://en.wikipedia.org/wiki/Medieval_philosophy\">Medieval philosophy</a> (5th – 16th century) is the period following the fall of the western Roman empire and was dominated by the rise of <a title=\"Christianity\" href=\"https://en.wikipedia.org/wiki/Christianity\">Christianity</a> and hence reflects <a title=\"Judeo-Christian\" href=\"https://en.wikipedia.org/wiki/Judeo-Christian\">Judeo-Christian</a> theological concerns as well as retaining a continuity with Greco-Roman thought. Problems such as the existence and nature of <a title=\"God\" href=\"https://en.wikipedia.org/wiki/God\">God</a>, the nature of <a title=\"Faith\" href=\"https://en.wikipedia.org/wiki/Faith\">faith</a> and reason, metaphysics, the <a title=\"Problem of evil\" href=\"https://en.wikipedia.org/wiki/Problem_of_evil\">problem of evil</a> were discussed in this period. Some key Medieval thinkers include <a class=\"mw-redirect\" title=\"St. Augustine\" href=\"https://en.wikipedia.org/wiki/St._Augustine\">St. Augustine</a>, <a title=\"Thomas Aquinas\" href=\"https://en.wikipedia.org/wiki/Thomas_Aquinas\">Thomas Aquinas</a>, <a title=\"Boethius\" href=\"https://en.wikipedia.org/wiki/Boethius\">Boethius</a>, <a title=\"Anselm of Laon\" href=\"https://en.wikipedia.org/wiki/Anselm_of_Laon\">Anselm</a> and <a title=\"Roger Bacon\" href=\"https://en.wikipedia.org/wiki/Roger_Bacon\">Roger Bacon</a>. Philosophy for these thinkers was viewed as an aid to <a title=\"Theology\" href=\"https://en.wikipedia.org/wiki/Theology\">Theology</a> (<i>ancilla theologiae</i>) and hence they sought to align their philosophy with their interpretation of sacred scripture. This period saw the development of <a title=\"Scholasticism\" href=\"https://en.wikipedia.org/wiki/Scholasticism\">Scholasticism</a>, a text critical method developed in <a class=\"mw-redirect\" title=\"Medieval universities\" href=\"https://en.wikipedia.org/wiki/Medieval_universities\">medieval universities</a> based on close reading and disputation on key texts. The <a title=\"Renaissance\" href=\"https://en.wikipedia.org/wiki/Renaissance\">Renaissance</a> (1355–1650) period saw increasing focus on classic Greco-Roman thought and on a robust <a title=\"Humanism\" href=\"https://en.wikipedia.org/wiki/Humanism\">Humanism</a>.', 'reeeeeeeeeeeeeeeeeeeeeeeeeeeeeee', '', 'inherit', 'closed', 'closed', '', '77-revision-v1', '', '', '2017-07-20 06:33:30', '2017-07-20 06:33:30', '', 77, 'http://localhost/bigtera_blog/2017/07/20/77-revision-v1/', 0, 'revision', '', 0),
(79, 1, '2017-07-20 06:34:04', '2017-07-20 06:34:04', '1945年，第二次世界大戰結束，日本戰敗並簽署《降伏文書》。根據盟軍太平洋總司令麥克阿瑟元帥發布的軍事命令《一般命令第一號》第1條規定：「在中國（滿洲除外）、臺灣，及北緯16度以北的法屬印度支那（現今的越南北部和寮國）境內的日本高級將領，及所有陸、海、空軍及附屬部隊，應向蔣介石將軍投降」，蔣介石委派陳儀於10月25日到臺灣接受在臺日軍的投降，臺灣暫時成為盟軍的軍事佔領地，蔣介石並任命陳儀為臺灣省行政長官公署行政長官。[57] 當時接管臺灣的臺灣行政長官公署施政錯誤、官員違法斂財嚴重、軍警紀律敗壞、雙方在文化及語言上產生隔閡，臺灣人民遭受種種歧視及各種差別待遇、政府濫印鈔票導致惡性通貨膨脹、實施統制經濟限制民間貿易造成大量民眾失業、藉由專賣局與貿易局壟斷臺灣經濟命脈、掏空民生物資運往中國大陸，終至民不聊生、路有餓莩，各地反抗之聲頻傳。在1947年初，因一起緝菸血案，以及前往抗議的群眾遭行政長官公署衛兵開槍掃射，於是累積一年多以來的龐大民怨能量至此總爆發，各地發生軍民衝突，國民政府調派大軍鎮壓，後續還有清鄉行動，許多與事件無關的臺籍菁英與百姓無辜遇害，或逮捕之後不經審判而被監禁、處死或就此失蹤，後來行政院官方調查報告死亡人數約1.8萬至2.8萬人，史稱二二八事件。此事件造成臺灣本省人與外省人長期的族群對立，以及後來的政黨對抗，影響至深且廣，也埋下臺灣獨立運動的種子。\r\n1949年1月1日，中華民國總統蔣中正宣告隱退，由副總統李宗仁「代行」總統職權，李於1月21日正式接任中華民國代總統。中華民國政府因國共內戰戰況失利，蔣中正命令蔣經國、湯恩伯、桂永清將中央銀行黃金、白銀、外匯轉運臺灣。10月1日，毛澤東在北京天安門宣告中華人民共和國中央人民政府成立。10月13日，解放軍兵臨廣州，李宗仁於11月20日專機飛往香港就醫，再於12月5日與家人飛往美國。12月7日中華民國行政機關人員遷至臺灣。 中華民國於1948年5月10日公布實施《動員戡亂時期臨時條款》，1949年5月20日公布《戒嚴令》[58]。蔣中正於1950年3月1日在臺宣告復行總統職權，為穩固政權、並防止中國共產黨滲透，展開長期的戒嚴，稱為白色恐怖時期。之後中華民國政府在臺灣一方面運用美援，推行經濟變革，穩定農業，扶植工業及中小企業；一方面透過前述兩項法令，配合黨、政府、軍隊、特務的結合掌控，持續政治與社會上的強勢控制，鞏固一黨威權體制，並壓制許多反對言論或行動。 自1949年10月24日，解放軍渡海進攻大金門的古寧頭戰役開始，臺海兩岸之間發生數起慘烈戰役，直至1958年金門八二三砲戰國軍一方防衛成功，使得雙方暫時停火。之後經過二年（1960年），與往後1965年間偶發零星小戰鬥，此軍事衝突直到1978年底才正式宣告兩岸對峙時代結束，臺灣海峽危機得以正式終止[59]。', '臺灣', '', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2017-07-20 06:34:04', '2017-07-20 06:34:04', '', 60, 'http://localhost/bigtera_blog/2017/07/20/60-revision-v1/', 0, 'revision', '', 0),
(80, 1, '2017-07-20 06:34:57', '2017-07-20 06:34:57', '1945年，第二次世界大戰結束，日本戰敗並簽署《降伏文書》。根據盟軍太平洋總司令麥克阿瑟元帥發布的軍事命令《一般命令第一號》第1條規定：「在中國（滿洲除外）、臺灣，及北緯16度以北的法屬印度支那（現今的越南北部和寮國）境內的日本高級將領，及所有陸、海、空軍及附屬部隊，應向蔣介石將軍投降」，蔣介石委派陳儀於10月25日到臺灣接受在臺日軍的投降，臺灣暫時成為盟軍的軍事佔領地，蔣介石並任命陳儀為臺灣省行政長官公署行政長官。[57] 當時接管臺灣的臺灣行政長官公署施政錯誤、官員違法斂財嚴重、軍警紀律敗壞、雙方在文化及語言上產生隔閡，臺灣人民遭受種種歧視及各種差別待遇、政府濫印鈔票導致惡性通貨膨脹、實施統制經濟限制民間貿易造成大量民眾失業、藉由專賣局與貿易局壟斷臺灣經濟命脈、掏空民生物資運往中國大陸，終至民不聊生、路有餓莩，各地反抗之聲頻傳。在1947年初，因一起緝菸血案，以及前往抗議的群眾遭行政長官公署衛兵開槍掃射，於是累積一年多以來的龐大民怨能量至此總爆發，各地發生軍民衝突，國民政府調派大軍鎮壓，後續還有清鄉行動，許多與事件無關的臺籍菁英與百姓無辜遇害，或逮捕之後不經審判而被監禁、處死或就此失蹤，後來行政院官方調查報告死亡人數約1.8萬至2.8萬人，史稱二二八事件。此事件造成臺灣本省人與外省人長期的族群對立，以及後來的政黨對抗，影響至深且廣，也埋下臺灣獨立運動的種子。\r\n1949年1月1日，中華民國總統蔣中正宣告隱退，由副總統李宗仁「代行」總統職權，李於1月21日正式接任中華民國代總統。中華民國政府因國共內戰戰況失利，蔣中正命令蔣經國、湯恩伯、桂永清將中央銀行黃金、白銀、外匯轉運臺灣。10月1日，毛澤東在北京天安門宣告中華人民共和國中央人民政府成立。10月13日，解放軍兵臨廣州，李宗仁於11月20日專機飛往香港就醫，再於12月5日與家人飛往美國。12月7日中華民國行政機關人員遷至臺灣。 中華民國於1948年5月10日公布實施《動員戡亂時期臨時條款》，1949年5月20日公布《戒嚴令》[58]。蔣中正於1950年3月1日在臺宣告復行總統職權，為穩固政權、並防止中國共產黨滲透，展開長期的戒嚴，稱為白色恐怖時期。之後中華民國政府在臺灣一方面運用美援，推行經濟變革，穩定農業，扶植工業及中小企業；一方面透過前述兩項法令，配合黨、政府、軍隊、特務的結合掌控，持續政治與社會上的強勢控制，鞏固一黨威權體制，並壓制許多反對言論或行動。 自1949年10月24日，解放軍渡海進攻大金門的古寧頭戰役開始，臺海兩岸之間發生數起慘烈戰役，直至1958年金門八二三砲戰國軍一方防衛成功，使得雙方暫時停火。之後經過二年（1960年），與往後1965年間偶發零星小戰鬥，此軍事衝突直到1978年底才正式宣告兩岸對峙時代結束，臺灣海峽危機得以正式終止[59]。', 'rerereeeeeeeee4chin', '1945年，第二次世界大戰結束，日本戰敗並簽署《降伏文書》。根據盟軍太平洋總司令麥克阿瑟元帥發布的軍事命令《一般命令第一號》第1條規定：「在中國（滿洲除外）、臺灣，及北緯16度以北的法屬印度支那（現今的越南北部和寮國）境內的日本高級將領，及所有陸、海、空軍及附屬部隊，應向蔣介石將軍投降」，蔣介石委派陳儀於10月25日到臺灣接受在臺日軍的投降，臺灣暫時成為盟軍的軍事佔領地，蔣介石並任命陳儀為臺灣省行政長官公署行政長官。[57] 當時接管臺灣的臺灣行政長官公署施政錯誤、官員違法斂財嚴重、軍警紀律敗壞、雙方在文化及語言上產生隔閡，臺灣人民遭受種種歧視及各種差別待遇、政府濫印鈔票導致惡性通貨膨脹、實施統制經濟限制民間貿易造成大量民眾 ...', 'publish', 'open', 'open', '', 'rerereeeeeeeee4chin', '', '', '2017-07-20 07:28:41', '2017-07-20 07:28:41', '', 0, 'http://localhost/bigtera_blog/?p=80', 0, 'post', '', 0),
(81, 1, '2017-07-20 06:34:57', '2017-07-20 06:34:57', '1945年，第二次世界大戰結束，日本戰敗並簽署《降伏文書》。根據盟軍太平洋總司令麥克阿瑟元帥發布的軍事命令《一般命令第一號》第1條規定：「在中國（滿洲除外）、臺灣，及北緯16度以北的法屬印度支那（現今的越南北部和寮國）境內的日本高級將領，及所有陸、海、空軍及附屬部隊，應向蔣介石將軍投降」，蔣介石委派陳儀於10月25日到臺灣接受在臺日軍的投降，臺灣暫時成為盟軍的軍事佔領地，蔣介石並任命陳儀為臺灣省行政長官公署行政長官。[57] 當時接管臺灣的臺灣行政長官公署施政錯誤、官員違法斂財嚴重、軍警紀律敗壞、雙方在文化及語言上產生隔閡，臺灣人民遭受種種歧視及各種差別待遇、政府濫印鈔票導致惡性通貨膨脹、實施統制經濟限制民間貿易造成大量民眾失業、藉由專賣局與貿易局壟斷臺灣經濟命脈、掏空民生物資運往中國大陸，終至民不聊生、路有餓莩，各地反抗之聲頻傳。在1947年初，因一起緝菸血案，以及前往抗議的群眾遭行政長官公署衛兵開槍掃射，於是累積一年多以來的龐大民怨能量至此總爆發，各地發生軍民衝突，國民政府調派大軍鎮壓，後續還有清鄉行動，許多與事件無關的臺籍菁英與百姓無辜遇害，或逮捕之後不經審判而被監禁、處死或就此失蹤，後來行政院官方調查報告死亡人數約1.8萬至2.8萬人，史稱二二八事件。此事件造成臺灣本省人與外省人長期的族群對立，以及後來的政黨對抗，影響至深且廣，也埋下臺灣獨立運動的種子。\r\n1949年1月1日，中華民國總統蔣中正宣告隱退，由副總統李宗仁「代行」總統職權，李於1月21日正式接任中華民國代總統。中華民國政府因國共內戰戰況失利，蔣中正命令蔣經國、湯恩伯、桂永清將中央銀行黃金、白銀、外匯轉運臺灣。10月1日，毛澤東在北京天安門宣告中華人民共和國中央人民政府成立。10月13日，解放軍兵臨廣州，李宗仁於11月20日專機飛往香港就醫，再於12月5日與家人飛往美國。12月7日中華民國行政機關人員遷至臺灣。 中華民國於1948年5月10日公布實施《動員戡亂時期臨時條款》，1949年5月20日公布《戒嚴令》[58]。蔣中正於1950年3月1日在臺宣告復行總統職權，為穩固政權、並防止中國共產黨滲透，展開長期的戒嚴，稱為白色恐怖時期。之後中華民國政府在臺灣一方面運用美援，推行經濟變革，穩定農業，扶植工業及中小企業；一方面透過前述兩項法令，配合黨、政府、軍隊、特務的結合掌控，持續政治與社會上的強勢控制，鞏固一黨威權體制，並壓制許多反對言論或行動。 自1949年10月24日，解放軍渡海進攻大金門的古寧頭戰役開始，臺海兩岸之間發生數起慘烈戰役，直至1958年金門八二三砲戰國軍一方防衛成功，使得雙方暫時停火。之後經過二年（1960年），與往後1965年間偶發零星小戰鬥，此軍事衝突直到1978年底才正式宣告兩岸對峙時代結束，臺灣海峽危機得以正式終止[59]。', 'rerereeeeeeeee4chin', '', 'inherit', 'closed', 'closed', '', '80-revision-v1', '', '', '2017-07-20 06:34:57', '2017-07-20 06:34:57', '', 80, 'http://localhost/bigtera_blog/2017/07/20/80-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(82, 1, '2017-07-20 06:35:53', '2017-07-20 06:35:53', '詞源[編輯]\r\n英語詞語Philosophy（拉丁語：philosophia）源於古希臘語中的φιλοσοφία，意思為「愛智慧」，有時也譯為「智慧的朋友」[5][6]，該詞由φίλος（philos，愛）的派生詞φιλεῖν（Philein，去愛）和σοφία（Sophia，智慧）組合而成。一般認為，古希臘思想家畢達哥拉斯最先在著作中引入「哲學家」和「哲學」這兩個術語[7]。\r\n「哲」一詞在中國起源很早，如「孔門十哲」，「古聖先哲」等詞，「哲」或「哲人」，專指那些善于思辨，學問精深者，即西方近世「哲學家」，「思想家」之謂。在《易經》當中已經開始討論哲學問題，形上學的中文名稱取自《易經·繫辭上傳》「形而上者謂之道，形而下者謂之器」[8]一語。1874年，日本啟蒙家西周，在《百一新論》中首先用漢文「哲學」來翻譯philosophy一詞[9][10]。\r\n哲學是什麼[編輯]\r\n英國哲學家羅素對哲學的定義是：\r\n“ 哲學，就我對這個詞的理解來說，乃是某種介乎神學與科學之間的東西。它和神學一樣，包含著人類對於那些迄今仍為科學知識所不能肯定之事物的思考；但它又像科學一樣，是訴之於人類的理性而不是訴之於權威的，不論是傳統的權威還是啟示的權威。一切確切的知識（羅素認為）都屬於科學；一切涉及超乎確切知識之外的教條都屬於神學。但介乎神學與科學之間還有一片受到雙方攻擊的無人之域，這片無人之域就是哲學。[11] ”\r\n胡適在《中國哲學史大綱》中稱「凡研究人生切要的問題，從根本上著想，要尋一個根本的解決：這種學問叫做哲學」[12]。\r\n雖然哲學源自西方的傳統，但許多文明在歷史上都存在著一些相似的論題[13]。東亞和南亞的哲學被稱之為東方哲學，而北非和中東則因為其和歐洲密切的互動，因此常被視為是西方哲學的一部份。\r\n對哲學的主題亦存在許多看法。一些人認為哲學是對問題本身過程的審查；另外一些人則認為實質上存在著哲學必須去回答的哲學命題。[14]\r\n後現代主義把哲學定義為創造概念的學術。\r\n哲學所涉及的研究範疇是其它學科的總和，它給出對世界本質的解釋，在很大程度上影響著接受者的世界觀。\r\n哲學是研究範疇及其相互關係的一門學問。範疇涉及到一門學科的最基本研究對象、概念和內容，哲學具有一般方法論的功能。\r\n哲學和其他承述問題方法的差異是有批判性的、有條理的方法以及以理性為基礎的辯論。\r\n研究基礎[編輯]\r\n古希臘哲學家透過問問題來進行哲學實踐，他們所提的問題大概可以歸類為三類，這三類問題分別形成了哲學的基礎學科——分別是形上學、倫理學、認識論（或知識論）[15][c 1] [a 1] [16]。', 'asdfasdfsadfsdaf', '詞源[編輯]\r\n英語詞語Philosophy（拉丁語：philosophia）源於古希臘語中的φιλοσοφία，意思為「愛智慧」，有時也譯為「智慧的朋友」[5][6]，該詞由φίλος（philos，愛）的派生詞φιλεῖν（Philein，去愛）和σοφία（Sophia，智慧）組合而成。一般認為，古希臘思想家畢達哥拉斯最先在著作中引入「哲學家」和「哲學」這兩個術語[7]。\r\n「哲」一詞在中國起源很早，如「孔門十哲」，「古聖先哲」等詞，「哲」或「哲人」，專指那些善于思辨，學問精深者，即西方近世「哲學家」，「思想家」之謂。在《易經》當中已經開始討論哲學問題，形上學的中文名稱取自《易經·繫辭上傳》「形而上者謂之道，形而下者謂之器」[8]一語。1874年，日本啟蒙家西周，在《百一新論》中首先用漢文「哲學」來翻譯philosophy一詞[9][10]。', 'publish', 'open', 'open', '', 'asdfasdfsadfsdaf', '', '', '2017-07-20 07:28:19', '2017-07-20 07:28:19', '', 0, 'http://localhost/bigtera_blog/?p=82', 0, 'post', '', 0),
(83, 1, '2017-07-20 06:35:53', '2017-07-20 06:35:53', '詞源[編輯]\r\n英語詞語Philosophy（拉丁語：philosophia）源於古希臘語中的φιλοσοφία，意思為「愛智慧」，有時也譯為「智慧的朋友」[5][6]，該詞由φίλος（philos，愛）的派生詞φιλεῖν（Philein，去愛）和σοφία（Sophia，智慧）組合而成。一般認為，古希臘思想家畢達哥拉斯最先在著作中引入「哲學家」和「哲學」這兩個術語[7]。\r\n「哲」一詞在中國起源很早，如「孔門十哲」，「古聖先哲」等詞，「哲」或「哲人」，專指那些善于思辨，學問精深者，即西方近世「哲學家」，「思想家」之謂。在《易經》當中已經開始討論哲學問題，形上學的中文名稱取自《易經·繫辭上傳》「形而上者謂之道，形而下者謂之器」[8]一語。1874年，日本啟蒙家西周，在《百一新論》中首先用漢文「哲學」來翻譯philosophy一詞[9][10]。\r\n哲學是什麼[編輯]\r\n英國哲學家羅素對哲學的定義是：\r\n“ 哲學，就我對這個詞的理解來說，乃是某種介乎神學與科學之間的東西。它和神學一樣，包含著人類對於那些迄今仍為科學知識所不能肯定之事物的思考；但它又像科學一樣，是訴之於人類的理性而不是訴之於權威的，不論是傳統的權威還是啟示的權威。一切確切的知識（羅素認為）都屬於科學；一切涉及超乎確切知識之外的教條都屬於神學。但介乎神學與科學之間還有一片受到雙方攻擊的無人之域，這片無人之域就是哲學。[11] ”\r\n胡適在《中國哲學史大綱》中稱「凡研究人生切要的問題，從根本上著想，要尋一個根本的解決：這種學問叫做哲學」[12]。\r\n雖然哲學源自西方的傳統，但許多文明在歷史上都存在著一些相似的論題[13]。東亞和南亞的哲學被稱之為東方哲學，而北非和中東則因為其和歐洲密切的互動，因此常被視為是西方哲學的一部份。\r\n對哲學的主題亦存在許多看法。一些人認為哲學是對問題本身過程的審查；另外一些人則認為實質上存在著哲學必須去回答的哲學命題。[14]\r\n後現代主義把哲學定義為創造概念的學術。\r\n哲學所涉及的研究範疇是其它學科的總和，它給出對世界本質的解釋，在很大程度上影響著接受者的世界觀。\r\n哲學是研究範疇及其相互關係的一門學問。範疇涉及到一門學科的最基本研究對象、概念和內容，哲學具有一般方法論的功能。\r\n哲學和其他承述問題方法的差異是有批判性的、有條理的方法以及以理性為基礎的辯論。\r\n研究基礎[編輯]\r\n古希臘哲學家透過問問題來進行哲學實踐，他們所提的問題大概可以歸類為三類，這三類問題分別形成了哲學的基礎學科——分別是形上學、倫理學、認識論（或知識論）[15][c 1] [a 1] [16]。', 'asdfasdfsadfsdaf', '', 'inherit', 'closed', 'closed', '', '82-revision-v1', '', '', '2017-07-20 06:35:53', '2017-07-20 06:35:53', '', 82, 'http://localhost/bigtera_blog/2017/07/20/82-revision-v1/', 0, 'revision', '', 0),
(84, 1, '2017-07-20 06:35:59', '2017-07-20 06:35:59', ']', 'rerereeeeeeeee4chin', '', 'inherit', 'closed', 'closed', '', '80-autosave-v1', '', '', '2017-07-20 06:35:59', '2017-07-20 06:35:59', '', 80, 'http://localhost/bigtera_blog/2017/07/20/80-autosave-v1/', 0, 'revision', '', 0),
(85, 1, '2017-07-20 07:06:55', '2017-07-20 07:06:55', '{\n    \"colormag::colormag_hide_blog_front\": {\n        \"value\": false,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"colormag::colormag_default_page_layout\": {\n        \"value\": \"right_sidebar\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '68482051-314e-4cf0-9729-98991bf82946', '', '', '2017-07-20 07:06:55', '2017-07-20 07:06:55', '', 0, 'http://localhost/bigtera_blog/?p=85', 0, 'customize_changeset', '', 0),
(86, 1, '2017-07-20 07:04:02', '2017-07-20 07:04:02', 'OpenStack 在全球能量持續增長，各大公司的IT人員都在詢問與研究，我的公司或單位到底該如何能快速方便地部署#OpenStack ?\r\n就在今年的OpenStack Day Taiwan，我們 Bigtera軟體定義儲存專家 的CEO Leander Yu 游宗霖先生將擔任講師，主題為 \"Hyper Converged Infrastructure for OpenStack\"，介紹 #超融合基礎架構 將為企業IT帶來如何的效益，透過OpenStack來實現儲存、計算、網路、管理的融合，將大幅度地減少採購與建置上的時間與成本，快速地實現真正的軟體定義資料中心。\r\n想知道什麼是超融合與軟體定義儲存？請大家不要錯過 OpenStack Day Taiwan 2017!\r\nhttp://openstack.ithome.com.tw/\r\n#SDS #Bigtera #HCI #HyperConvergence #超融合 #軟體定義儲存\r\n<div class=\"text_exposed_show\"></div>\r\n<div class=\"text_exposed_show\"></div>', 'scaler', '', 'publish', 'open', 'open', '', 'scaler', '', '', '2017-07-20 07:04:02', '2017-07-20 07:04:02', '', 0, 'http://localhost/bigtera_blog/?p=86', 0, 'post', '', 0),
(87, 1, '2017-07-20 07:03:55', '2017-07-20 07:03:55', '', '2U4U', '', 'inherit', 'open', 'closed', '', '2u4u', '', '', '2017-07-20 07:03:55', '2017-07-20 07:03:55', '', 86, 'http://localhost/bigtera_blog/wp-content/uploads/2017/07/2U4U.png', 0, 'attachment', 'image/png', 0),
(88, 1, '2017-07-20 07:04:02', '2017-07-20 07:04:02', 'OpenStack 在全球能量持續增長，各大公司的IT人員都在詢問與研究，我的公司或單位到底該如何能快速方便地部署#OpenStack ?\r\n就在今年的OpenStack Day Taiwan，我們 Bigtera軟體定義儲存專家 的CEO Leander Yu 游宗霖先生將擔任講師，主題為 \"Hyper Converged Infrastructure for OpenStack\"，介紹 #超融合基礎架構 將為企業IT帶來如何的效益，透過OpenStack來實現儲存、計算、網路、管理的融合，將大幅度地減少採購與建置上的時間與成本，快速地實現真正的軟體定義資料中心。\r\n想知道什麼是超融合與軟體定義儲存？請大家不要錯過 OpenStack Day Taiwan 2017!\r\nhttp://openstack.ithome.com.tw/\r\n#SDS #Bigtera #HCI #HyperConvergence #超融合 #軟體定義儲存\r\n<div class=\"text_exposed_show\"></div>\r\n<div class=\"text_exposed_show\"></div>', 'scaler', '', 'inherit', 'closed', 'closed', '', '86-revision-v1', '', '', '2017-07-20 07:04:02', '2017-07-20 07:04:02', '', 86, 'http://localhost/bigtera_blog/2017/07/20/86-revision-v1/', 0, 'revision', '', 0),
(89, 1, '2017-07-20 07:05:30', '2017-07-20 07:05:30', 'VirtualStor™ SDS Controller 在焕活和提升存储基础架构性能的同时显著提升投资回报率。SDS Controller可将既有的NAS, DAS以及SAN存储整合、汇聚成一个易于管理、可弹性配置、容量巨大的存储设备。管理员可方便地从该存储设备中创建虚拟存储池（SAN，NAS以及对象）并部署诸多数据服务， 同时可定义虚拟存储器的容量、性能（IOPS和带宽），可访问性以及可用性。', 'sds controller', 'VirtualStor™ SDS Controller 在焕活和提升存储基础架构性能的同时显著提升投资回报率。SDS Controller可将既有的NAS, DAS以及SAN存储整合', 'publish', 'open', 'open', '', 'sds-controller', '', '', '2017-07-20 07:26:29', '2017-07-20 07:26:29', '', 0, 'http://localhost/bigtera_blog/?p=89', 0, 'post', '', 0),
(90, 1, '2017-07-20 07:05:26', '2017-07-20 07:05:26', '', '1U', '', 'inherit', 'open', 'closed', '', '1u', '', '', '2017-07-20 07:05:26', '2017-07-20 07:05:26', '', 89, 'http://localhost/bigtera_blog/wp-content/uploads/2017/07/1U.png', 0, 'attachment', 'image/png', 0),
(91, 1, '2017-07-20 07:05:30', '2017-07-20 07:05:30', 'VirtualStor™ SDS Controller 在焕活和提升存储基础架构性能的同时显著提升投资回报率。SDS Controller可将既有的NAS, DAS以及SAN存储整合、汇聚成一个易于管理、可弹性配置、容量巨大的存储设备。管理员可方便地从该存储设备中创建虚拟存储池（SAN，NAS以及对象）并部署诸多数据服务， 同时可定义虚拟存储器的容量、性能（IOPS和带宽），可访问性以及可用性。', 'sds controller', '', 'inherit', 'closed', 'closed', '', '89-revision-v1', '', '', '2017-07-20 07:05:30', '2017-07-20 07:05:30', '', 89, 'http://localhost/bigtera_blog/2017/07/20/89-revision-v1/', 0, 'revision', '', 0),
(93, 1, '2017-07-20 07:26:29', '2017-07-20 07:26:29', 'VirtualStor™ SDS Controller 在焕活和提升存储基础架构性能的同时显著提升投资回报率。SDS Controller可将既有的NAS, DAS以及SAN存储整合、汇聚成一个易于管理、可弹性配置、容量巨大的存储设备。管理员可方便地从该存储设备中创建虚拟存储池（SAN，NAS以及对象）并部署诸多数据服务， 同时可定义虚拟存储器的容量、性能（IOPS和带宽），可访问性以及可用性。', 'sds controller', 'VirtualStor™ SDS Controller 在焕活和提升存储基础架构性能的同时显著提升投资回报率。SDS Controller可将既有的NAS, DAS以及SAN存储整合', 'inherit', 'closed', 'closed', '', '89-revision-v1', '', '', '2017-07-20 07:26:29', '2017-07-20 07:26:29', '', 89, 'http://localhost/bigtera_blog/2017/07/20/89-revision-v1/', 0, 'revision', '', 0),
(94, 1, '2017-07-20 07:28:19', '2017-07-20 07:28:19', '詞源[編輯]\r\n英語詞語Philosophy（拉丁語：philosophia）源於古希臘語中的φιλοσοφία，意思為「愛智慧」，有時也譯為「智慧的朋友」[5][6]，該詞由φίλος（philos，愛）的派生詞φιλεῖν（Philein，去愛）和σοφία（Sophia，智慧）組合而成。一般認為，古希臘思想家畢達哥拉斯最先在著作中引入「哲學家」和「哲學」這兩個術語[7]。\r\n「哲」一詞在中國起源很早，如「孔門十哲」，「古聖先哲」等詞，「哲」或「哲人」，專指那些善于思辨，學問精深者，即西方近世「哲學家」，「思想家」之謂。在《易經》當中已經開始討論哲學問題，形上學的中文名稱取自《易經·繫辭上傳》「形而上者謂之道，形而下者謂之器」[8]一語。1874年，日本啟蒙家西周，在《百一新論》中首先用漢文「哲學」來翻譯philosophy一詞[9][10]。\r\n哲學是什麼[編輯]\r\n英國哲學家羅素對哲學的定義是：\r\n“ 哲學，就我對這個詞的理解來說，乃是某種介乎神學與科學之間的東西。它和神學一樣，包含著人類對於那些迄今仍為科學知識所不能肯定之事物的思考；但它又像科學一樣，是訴之於人類的理性而不是訴之於權威的，不論是傳統的權威還是啟示的權威。一切確切的知識（羅素認為）都屬於科學；一切涉及超乎確切知識之外的教條都屬於神學。但介乎神學與科學之間還有一片受到雙方攻擊的無人之域，這片無人之域就是哲學。[11] ”\r\n胡適在《中國哲學史大綱》中稱「凡研究人生切要的問題，從根本上著想，要尋一個根本的解決：這種學問叫做哲學」[12]。\r\n雖然哲學源自西方的傳統，但許多文明在歷史上都存在著一些相似的論題[13]。東亞和南亞的哲學被稱之為東方哲學，而北非和中東則因為其和歐洲密切的互動，因此常被視為是西方哲學的一部份。\r\n對哲學的主題亦存在許多看法。一些人認為哲學是對問題本身過程的審查；另外一些人則認為實質上存在著哲學必須去回答的哲學命題。[14]\r\n後現代主義把哲學定義為創造概念的學術。\r\n哲學所涉及的研究範疇是其它學科的總和，它給出對世界本質的解釋，在很大程度上影響著接受者的世界觀。\r\n哲學是研究範疇及其相互關係的一門學問。範疇涉及到一門學科的最基本研究對象、概念和內容，哲學具有一般方法論的功能。\r\n哲學和其他承述問題方法的差異是有批判性的、有條理的方法以及以理性為基礎的辯論。\r\n研究基礎[編輯]\r\n古希臘哲學家透過問問題來進行哲學實踐，他們所提的問題大概可以歸類為三類，這三類問題分別形成了哲學的基礎學科——分別是形上學、倫理學、認識論（或知識論）[15][c 1] [a 1] [16]。', 'asdfasdfsadfsdaf', '詞源[編輯]\r\n英語詞語Philosophy（拉丁語：philosophia）源於古希臘語中的φιλοσοφία，意思為「愛智慧」，有時也譯為「智慧的朋友」[5][6]，該詞由φίλος（philos，愛）的派生詞φιλεῖν（Philein，去愛）和σοφία（Sophia，智慧）組合而成。一般認為，古希臘思想家畢達哥拉斯最先在著作中引入「哲學家」和「哲學」這兩個術語[7]。\r\n「哲」一詞在中國起源很早，如「孔門十哲」，「古聖先哲」等詞，「哲」或「哲人」，專指那些善于思辨，學問精深者，即西方近世「哲學家」，「思想家」之謂。在《易經》當中已經開始討論哲學問題，形上學的中文名稱取自《易經·繫辭上傳》「形而上者謂之道，形而下者謂之器」[8]一語。1874年，日本啟蒙家西周，在《百一新論》中首先用漢文「哲學」來翻譯philosophy一詞[9][10]。', 'inherit', 'closed', 'closed', '', '82-revision-v1', '', '', '2017-07-20 07:28:19', '2017-07-20 07:28:19', '', 82, 'http://localhost/bigtera_blog/2017/07/20/82-revision-v1/', 0, 'revision', '', 0),
(95, 1, '2017-07-20 07:28:41', '2017-07-20 07:28:41', '1945年，第二次世界大戰結束，日本戰敗並簽署《降伏文書》。根據盟軍太平洋總司令麥克阿瑟元帥發布的軍事命令《一般命令第一號》第1條規定：「在中國（滿洲除外）、臺灣，及北緯16度以北的法屬印度支那（現今的越南北部和寮國）境內的日本高級將領，及所有陸、海、空軍及附屬部隊，應向蔣介石將軍投降」，蔣介石委派陳儀於10月25日到臺灣接受在臺日軍的投降，臺灣暫時成為盟軍的軍事佔領地，蔣介石並任命陳儀為臺灣省行政長官公署行政長官。[57] 當時接管臺灣的臺灣行政長官公署施政錯誤、官員違法斂財嚴重、軍警紀律敗壞、雙方在文化及語言上產生隔閡，臺灣人民遭受種種歧視及各種差別待遇、政府濫印鈔票導致惡性通貨膨脹、實施統制經濟限制民間貿易造成大量民眾失業、藉由專賣局與貿易局壟斷臺灣經濟命脈、掏空民生物資運往中國大陸，終至民不聊生、路有餓莩，各地反抗之聲頻傳。在1947年初，因一起緝菸血案，以及前往抗議的群眾遭行政長官公署衛兵開槍掃射，於是累積一年多以來的龐大民怨能量至此總爆發，各地發生軍民衝突，國民政府調派大軍鎮壓，後續還有清鄉行動，許多與事件無關的臺籍菁英與百姓無辜遇害，或逮捕之後不經審判而被監禁、處死或就此失蹤，後來行政院官方調查報告死亡人數約1.8萬至2.8萬人，史稱二二八事件。此事件造成臺灣本省人與外省人長期的族群對立，以及後來的政黨對抗，影響至深且廣，也埋下臺灣獨立運動的種子。\r\n1949年1月1日，中華民國總統蔣中正宣告隱退，由副總統李宗仁「代行」總統職權，李於1月21日正式接任中華民國代總統。中華民國政府因國共內戰戰況失利，蔣中正命令蔣經國、湯恩伯、桂永清將中央銀行黃金、白銀、外匯轉運臺灣。10月1日，毛澤東在北京天安門宣告中華人民共和國中央人民政府成立。10月13日，解放軍兵臨廣州，李宗仁於11月20日專機飛往香港就醫，再於12月5日與家人飛往美國。12月7日中華民國行政機關人員遷至臺灣。 中華民國於1948年5月10日公布實施《動員戡亂時期臨時條款》，1949年5月20日公布《戒嚴令》[58]。蔣中正於1950年3月1日在臺宣告復行總統職權，為穩固政權、並防止中國共產黨滲透，展開長期的戒嚴，稱為白色恐怖時期。之後中華民國政府在臺灣一方面運用美援，推行經濟變革，穩定農業，扶植工業及中小企業；一方面透過前述兩項法令，配合黨、政府、軍隊、特務的結合掌控，持續政治與社會上的強勢控制，鞏固一黨威權體制，並壓制許多反對言論或行動。 自1949年10月24日，解放軍渡海進攻大金門的古寧頭戰役開始，臺海兩岸之間發生數起慘烈戰役，直至1958年金門八二三砲戰國軍一方防衛成功，使得雙方暫時停火。之後經過二年（1960年），與往後1965年間偶發零星小戰鬥，此軍事衝突直到1978年底才正式宣告兩岸對峙時代結束，臺灣海峽危機得以正式終止[59]。', 'rerereeeeeeeee4chin', '1945年，第二次世界大戰結束，日本戰敗並簽署《降伏文書》。根據盟軍太平洋總司令麥克阿瑟元帥發布的軍事命令《一般命令第一號》第1條規定：「在中國（滿洲除外）、臺灣，及北緯16度以北的法屬印度支那（現今的越南北部和寮國）境內的日本高級將領，及所有陸、海、空軍及附屬部隊，應向蔣介石將軍投降」，蔣介石委派陳儀於10月25日到臺灣接受在臺日軍的投降，臺灣暫時成為盟軍的軍事佔領地，蔣介石並任命陳儀為臺灣省行政長官公署行政長官。[57] 當時接管臺灣的臺灣行政長官公署施政錯誤、官員違法斂財嚴重、軍警紀律敗壞、雙方在文化及語言上產生隔閡，臺灣人民遭受種種歧視及各種差別待遇、政府濫印鈔票導致惡性通貨膨脹、實施統制經濟限制民間貿易造成大量民眾 ...', 'inherit', 'closed', 'closed', '', '80-revision-v1', '', '', '2017-07-20 07:28:41', '2017-07-20 07:28:41', '', 80, 'http://localhost/bigtera_blog/2017/07/20/80-revision-v1/', 0, 'revision', '', 0),
(96, 1, '2017-08-09 04:17:18', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-08-09 04:17:18', '0000-00-00 00:00:00', '', 0, 'http://localhost/bigtera_blog/?p=96', 0, 'post', '', 0),
(97, 1, '2017-08-09 04:18:09', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-08-09 04:18:09', '0000-00-00 00:00:00', '', 0, 'http://192.168.168.94/bigtera_blog/?p=97', 0, 'post', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'One', 'one', 0),
(4, 'three', 'three', 0),
(5, 'eyk eku', 'eyk-eku', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 2, 0),
(1, 4, 0),
(48, 1, 0),
(50, 1, 0),
(60, 1, 0),
(68, 1, 0),
(72, 5, 0),
(74, 2, 0),
(77, 1, 0),
(80, 1, 0),
(82, 2, 0),
(86, 1, 0),
(89, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
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
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 5),
(2, 2, 'category', '', 0, 2),
(4, 4, 'category', '', 0, 0),
(5, 5, 'category', 'asdf', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'root'),
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
(15, 1, 'session_tokens', 'a:2:{s:64:\"4ed8c24b8c0b0659c1da4d7f478986c677556c9461e7721312d10b8cfa2bc578\";a:4:{s:10:\"expiration\";i:1502337104;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.90 Safari/537.36\";s:5:\"login\";i:1502164304;}s:64:\"32068ea008e7acd33eddafe536abf4c40798b0c01a09bc0fa0d03ead85661919\";a:4:{s:10:\"expiration\";i:1502425037;s:2:\"ip\";s:11:\"10.1.27.125\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.90 Safari/537.36\";s:5:\"login\";i:1502252237;}}'),
(16, 1, 'wp_dashboard_quick_press_last_post_id', '96'),
(17, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"10.1.27.0\";}'),
(18, 1, 'wp_user-settings', 'libraryContent=browse&advImgDetails=show&hidetb=0&editor=tinymce'),
(19, 1, 'wp_user-settings-time', '1500526279'),
(20, 1, 'closedpostboxes_post', 'a:3:{i:0;s:9:\"formatdiv\";i:1;s:11:\"categorydiv\";i:2;s:16:\"tagsdiv-post_tag\";}'),
(21, 1, 'metaboxhidden_post', 'a:6:{i:0;s:11:\"postexcerpt\";i:1;s:13:\"trackbacksdiv\";i:2;s:10:\"postcustom\";i:3;s:16:\"commentstatusdiv\";i:4;s:7:\"slugdiv\";i:5;s:9:\"authordiv\";}'),
(22, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(23, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:\"add-post_tag\";i:1;s:15:\"add-post_format\";}'),
(24, 1, 'tgmpa_dismissed_notice_colormag', '1');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
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
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'root', '$P$BQUhXEzI.3.eDex0gLstGiMXj.RFWR1', 'root', 'vergil.hsu@gmail.com', '', '2017-07-18 06:55:31', '', 0, 'root');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=348;
--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=208;
--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;
--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
