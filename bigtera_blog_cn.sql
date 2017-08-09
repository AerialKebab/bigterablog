-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 09, 2017 at 08:22 AM
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
-- Database: `bigtera_blog_cn`
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
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2017-07-20 09:39:37', '2017-07-20 09:39:37', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, 'post-trashed', '', '', 0, 0);

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
(1, 'siteurl', 'http://192.168.168.94/bigtera_blog_cn', 'yes'),
(2, 'home', 'http://192.168.168.94/bigtera_blog_cn', 'yes'),
(3, 'blogname', 'Bigtera: Blog', 'yes'),
(4, 'blogdescription', 'Empowering Your Software-Defined Transformation', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'vergil.hsu@gmail.com', 'yes'),
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
(39, 'recently_edited', '', 'no'),
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
(78, 'widget_categories', 'a:3:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;i:4;a:4:{s:5:\"title\";s:6:\"類別\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
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
(95, 'widget_recent-posts', 'a:3:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;i:4;a:3:{s:5:\"title\";s:12:\"最近提交\";s:6:\"number\";i:5;s:9:\"show_date\";b:0;}}', 'yes'),
(96, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_archives', 'a:3:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;i:4;a:3:{s:5:\"title\";s:6:\"記錄\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}}', 'yes'),
(98, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'sidebars_widgets', 'a:6:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}s:13:\"array_version\";i:3;s:22:\"colormag_right_sidebar\";a:3:{i:0;s:12:\"categories-4\";i:1;s:10:\"archives-4\";i:2;s:14:\"recent-posts-4\";}}', 'yes'),
(100, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'cron', 'a:4:{i:1502271578;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1502271651;a:1:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1502272224;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(108, 'nonce_key', '`SvL-;*YV${h,EY}F9W%w~8eh=JUMuiWYvsN&ywd@hrw3= GvHy](QR/HS%+3;3G', 'no'),
(109, 'nonce_salt', '`}4kstigi|A38p<0[um9NCk[pTsZx~+18DH%/4WN)Wn<[n/N_l5sXlf.vbc+EQ>5', 'no'),
(110, 'theme_mods_twentyseventeen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1500543688;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(115, 'auth_key', ',jx^nGTYU)B(m rRvx>4,|;V?ut.Z&*/8Weo?USD6j35ol3+XR+&fh`)}^/Ur355', 'no'),
(116, 'auth_salt', '10a[GDM[z|?gqz$Ye;+T49-ms2_,5zuWPZg xIR,jlXClVGc|]@bfC_ qj.HAyMh', 'no'),
(117, 'logged_in_key', 'J>]dYX7u:C%e:=CdTw()k~#Z=y~LiQ/M*a)##mY#{h[DV5]H|~:G%kT_Jb(dj-YK', 'no'),
(118, 'logged_in_salt', '!zof@*b>J1]YvvR/x;z}6w]iP!n]9,_wq.8~qRoCNVP$AQ/y@i8}A_{F!x~_j=s2', 'no'),
(128, 'can_compress_scripts', '1', 'no'),
(145, 'widget_colormag_featured_posts_slider_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(146, 'widget_colormag_highlighted_posts_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(147, 'widget_colormag_featured_posts_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(148, 'widget_colormag_featured_posts_vertical_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(149, 'widget_colormag_728x90_advertisement_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(150, 'widget_colormag_300x250_advertisement_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(151, 'widget_colormag_125x125_advertisement_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(154, 'theme_mods_colormag', 'a:4:{s:18:\"custom_css_post_id\";i:-1;s:11:\"custom_logo\";i:18;s:30:\"colormag_header_logo_placement\";s:16:\"header_logo_only\";s:22:\"colormag_primary_color\";s:7:\"#72ae2d\";}', 'yes'),
(155, 'current_theme', 'ColorMag', 'yes'),
(156, 'theme_switched', '', 'yes'),
(157, 'theme_switched_via_customizer', '', 'yes'),
(158, 'customize_stashed_theme_mods', 'a:0:{}', 'no'),
(164, 'category_children', 'a:0:{}', 'yes'),
(165, '_transient_timeout_plugin_slugs', '1502250745', 'no'),
(166, '_transient_plugin_slugs', 'a:3:{i:0;s:19:\"akismet/akismet.php\";i:1;s:9:\"hello.php\";i:2;s:41:\"rich-text-excerpts/rich-text-excerpts.php\";}', 'no'),
(167, 'recently_activated', 'a:0:{}', 'yes'),
(168, 'rich_text_excerpts_options', 'a:4:{s:20:\"supported_post_types\";a:1:{i:0;s:4:\"post\";}s:11:\"editor_type\";s:5:\"teeny\";s:7:\"metabox\";a:3:{s:3:\"use\";b:1;s:7:\"context\";s:6:\"normal\";s:8:\"priority\";s:4:\"high\";}s:15:\"editor_settings\";a:6:{s:7:\"wpautop\";b:1;s:13:\"media_buttons\";b:0;s:13:\"textarea_rows\";i:3;s:13:\"editor_height\";i:150;s:7:\"buttons\";a:23:{i:0;s:4:\"bold\";i:1;s:6:\"italic\";i:2;s:9:\"underline\";i:3;s:9:\"separator\";i:4;s:9:\"pastetext\";i:5;s:9:\"pasteword\";i:6;s:12:\"removeformat\";i:7;s:9:\"separator\";i:8;s:7:\"charmap\";i:9;s:10:\"blockquote\";i:10;s:9:\"separator\";i:11;s:7:\"bullist\";i:12;s:7:\"numlist\";i:13;s:9:\"separator\";i:14;s:11:\"justifyleft\";i:15;s:13:\"justifycenter\";i:16;s:12:\"justifyright\";i:17;s:9:\"separator\";i:18;s:4:\"undo\";i:19;s:4:\"redo\";i:20;s:9:\"separator\";i:21;s:4:\"link\";i:22;s:6:\"unlink\";}s:7:\"plugins\";a:2:{i:0;s:7:\"charmap\";i:1;s:5:\"paste\";}}}', 'yes'),
(177, '_site_transient_timeout_browser_8ce1bea2f653ca2ce71bdf6183bef333', '1501816956', 'no'),
(178, '_site_transient_browser_8ce1bea2f653ca2ce71bdf6183bef333', 'a:9:{s:8:\"platform\";s:7:\"Windows\";s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"59.0.3071.115\";s:10:\"update_url\";s:28:\"http://www.google.com/chrome\";s:7:\"img_src\";s:49:\"http://s.wordpress.org/images/browsers/chrome.png\";s:11:\"img_src_ssl\";s:48:\"https://wordpress.org/images/browsers/chrome.png\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;}', 'no'),
(179, '_site_transient_timeout_community-events-4501c091b0366d76ea3218b6cfdd8097', '1501255359', 'no'),
(180, '_site_transient_community-events-4501c091b0366d76ea3218b6cfdd8097', 'a:2:{s:8:\"location\";a:1:{s:2:\"ip\";s:2:\"::\";}s:6:\"events\";a:0:{}}', 'no'),
(198, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(204, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:20:\"vergil.hsu@gmail.com\";s:7:\"version\";s:5:\"4.8.1\";s:9:\"timestamp\";i:1502089973;}', 'no'),
(212, '_site_transient_update_core', 'O:8:\"stdClass\":3:{s:7:\"updates\";a:0:{}s:15:\"version_checked\";s:5:\"4.8.1\";s:12:\"last_checked\";i:1502251281;}', 'no'),
(213, '_site_transient_update_plugins', 'O:8:\"stdClass\":1:{s:12:\"last_checked\";i:1502251283;}', 'no'),
(214, '_site_transient_timeout_theme_roots', '1502253084', 'no'),
(215, '_site_transient_theme_roots', 'a:5:{s:8:\"colormag\";s:7:\"/themes\";s:9:\"sparkling\";s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no'),
(216, '_site_transient_update_themes', 'O:8:\"stdClass\":1:{s:12:\"last_checked\";i:1502251284;}', 'no'),
(217, '_transient_timeout_dash_v2_88ae138922fe95674369b1cb3d215a2b', '1502295549', 'no'),
(218, '_transient_dash_v2_88ae138922fe95674369b1cb3d215a2b', '<div class=\"rss-widget\"><p><strong>RSS Error:</strong> A feed could not be found at http://wordpress.org/news/feed/. A feed with an invalid mime type may fall victim to this error, or SimplePie was unable to auto-discover it.. Use force_feed() if you are certain this URL is a real feed.</p></div><div class=\"rss-widget\"><p><strong>RSS Error:</strong> WP HTTP Error: cURL error 60: SSL certificate problem: self signed certificate in certificate chain</p></div>', 'no');

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
(2, 4, '_wp_trash_meta_status', 'publish'),
(3, 4, '_wp_trash_meta_time', '1500543688'),
(4, 5, '_wp_attached_file', '2017/07/1U-1.png'),
(5, 5, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:400;s:6:\"height\";i:84;s:4:\"file\";s:16:\"2017/07/1U-1.png\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"1U-1-150x84.png\";s:5:\"width\";i:150;s:6:\"height\";i:84;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"1U-1-300x63.png\";s:5:\"width\";i:300;s:6:\"height\";i:63;s:9:\"mime-type\";s:9:\"image/png\";}s:25:\"colormag-highlighted-post\";a:4:{s:4:\"file\";s:15:\"1U-1-392x84.png\";s:5:\"width\";i:392;s:6:\"height\";i:84;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"colormag-featured-post-medium\";a:4:{s:4:\"file\";s:15:\"1U-1-390x84.png\";s:5:\"width\";i:390;s:6:\"height\";i:84;s:9:\"mime-type\";s:9:\"image/png\";}s:28:\"colormag-featured-post-small\";a:4:{s:4:\"file\";s:15:\"1U-1-130x84.png\";s:5:\"width\";i:130;s:6:\"height\";i:84;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(6, 6, '_wp_attached_file', '2017/07/2U.png'),
(7, 6, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:400;s:6:\"height\";i:126;s:4:\"file\";s:14:\"2017/07/2U.png\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"2U-150x126.png\";s:5:\"width\";i:150;s:6:\"height\";i:126;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"2U-300x95.png\";s:5:\"width\";i:300;s:6:\"height\";i:95;s:9:\"mime-type\";s:9:\"image/png\";}s:25:\"colormag-highlighted-post\";a:4:{s:4:\"file\";s:14:\"2U-392x126.png\";s:5:\"width\";i:392;s:6:\"height\";i:126;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"colormag-featured-post-medium\";a:4:{s:4:\"file\";s:14:\"2U-390x126.png\";s:5:\"width\";i:390;s:6:\"height\";i:126;s:9:\"mime-type\";s:9:\"image/png\";}s:28:\"colormag-featured-post-small\";a:4:{s:4:\"file\";s:13:\"2U-130x90.png\";s:5:\"width\";i:130;s:6:\"height\";i:90;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(8, 7, '_wp_attached_file', '2017/07/2U4U-1.png'),
(9, 7, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:434;s:6:\"height\";i:242;s:4:\"file\";s:18:\"2017/07/2U4U-1.png\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"2U4U-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"2U4U-1-300x167.png\";s:5:\"width\";i:300;s:6:\"height\";i:167;s:9:\"mime-type\";s:9:\"image/png\";}s:25:\"colormag-highlighted-post\";a:4:{s:4:\"file\";s:18:\"2U4U-1-392x242.png\";s:5:\"width\";i:392;s:6:\"height\";i:242;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"colormag-featured-post-medium\";a:4:{s:4:\"file\";s:18:\"2U4U-1-390x205.png\";s:5:\"width\";i:390;s:6:\"height\";i:205;s:9:\"mime-type\";s:9:\"image/png\";}s:28:\"colormag-featured-post-small\";a:4:{s:4:\"file\";s:17:\"2U4U-1-130x90.png\";s:5:\"width\";i:130;s:6:\"height\";i:90;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(10, 8, '_wp_attached_file', '2017/07/ayylmao-1.jpg'),
(11, 8, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:403;s:4:\"file\";s:21:\"2017/07/ayylmao-1.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"ayylmao-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"ayylmao-1-300x202.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:202;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"colormag-highlighted-post\";a:4:{s:4:\"file\";s:21:\"ayylmao-1-392x272.jpg\";s:5:\"width\";i:392;s:6:\"height\";i:272;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"colormag-featured-post-medium\";a:4:{s:4:\"file\";s:21:\"ayylmao-1-390x205.jpg\";s:5:\"width\";i:390;s:6:\"height\";i:205;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"colormag-featured-post-small\";a:4:{s:4:\"file\";s:20:\"ayylmao-1-130x90.jpg\";s:5:\"width\";i:130;s:6:\"height\";i:90;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(12, 9, '_wp_attached_file', '2017/07/bigtera_blog_cn.png'),
(13, 9, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:350;s:6:\"height\";i:100;s:4:\"file\";s:27:\"2017/07/bigtera_blog_cn.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"bigtera_blog_cn-150x100.png\";s:5:\"width\";i:150;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"bigtera_blog_cn-300x86.png\";s:5:\"width\";i:300;s:6:\"height\";i:86;s:9:\"mime-type\";s:9:\"image/png\";}s:28:\"colormag-featured-post-small\";a:4:{s:4:\"file\";s:26:\"bigtera_blog_cn-130x90.png\";s:5:\"width\";i:130;s:6:\"height\";i:90;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(14, 10, '_wp_attached_file', '2017/07/bigtera_logo-2.png'),
(15, 10, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:175;s:6:\"height\";i:100;s:4:\"file\";s:26:\"2017/07/bigtera_logo-2.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"bigtera_logo-2-150x100.png\";s:5:\"width\";i:150;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:28:\"colormag-featured-post-small\";a:4:{s:4:\"file\";s:25:\"bigtera_logo-2-130x90.png\";s:5:\"width\";i:130;s:6:\"height\";i:90;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(16, 11, '_wp_attached_file', '2017/07/bigtera_logo_blog-Copy-1.png'),
(17, 11, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:350;s:6:\"height\";i:100;s:4:\"file\";s:36:\"2017/07/bigtera_logo_blog-Copy-1.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:36:\"bigtera_logo_blog-Copy-1-150x100.png\";s:5:\"width\";i:150;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"bigtera_logo_blog-Copy-1-300x86.png\";s:5:\"width\";i:300;s:6:\"height\";i:86;s:9:\"mime-type\";s:9:\"image/png\";}s:28:\"colormag-featured-post-small\";a:4:{s:4:\"file\";s:35:\"bigtera_logo_blog-Copy-1-130x90.png\";s:5:\"width\";i:130;s:6:\"height\";i:90;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(18, 12, '_wp_attached_file', '2017/07/bigtera_logo_blog.png'),
(19, 12, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:350;s:6:\"height\";i:100;s:4:\"file\";s:29:\"2017/07/bigtera_logo_blog.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"bigtera_logo_blog-150x100.png\";s:5:\"width\";i:150;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"bigtera_logo_blog-300x86.png\";s:5:\"width\";i:300;s:6:\"height\";i:86;s:9:\"mime-type\";s:9:\"image/png\";}s:28:\"colormag-featured-post-small\";a:4:{s:4:\"file\";s:28:\"bigtera_logo_blog-130x90.png\";s:5:\"width\";i:130;s:6:\"height\";i:90;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(20, 13, '_wp_attached_file', '2017/07/ChIgcsB-1.jpg'),
(21, 13, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:614;s:6:\"height\";i:426;s:4:\"file\";s:21:\"2017/07/ChIgcsB-1.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"ChIgcsB-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"ChIgcsB-1-300x208.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:208;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"colormag-highlighted-post\";a:4:{s:4:\"file\";s:21:\"ChIgcsB-1-392x272.jpg\";s:5:\"width\";i:392;s:6:\"height\";i:272;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"colormag-featured-post-medium\";a:4:{s:4:\"file\";s:21:\"ChIgcsB-1-390x205.jpg\";s:5:\"width\";i:390;s:6:\"height\";i:205;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"colormag-featured-post-small\";a:4:{s:4:\"file\";s:20:\"ChIgcsB-1-130x90.jpg\";s:5:\"width\";i:130;s:6:\"height\";i:90;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(22, 14, '_wp_attached_file', '2017/07/logo180x180-2.png'),
(23, 14, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:180;s:6:\"height\";i:180;s:4:\"file\";s:25:\"2017/07/logo180x180-2.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"logo180x180-2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:28:\"colormag-featured-post-small\";a:4:{s:4:\"file\";s:24:\"logo180x180-2-130x90.png\";s:5:\"width\";i:130;s:6:\"height\";i:90;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(24, 15, '_wp_attached_file', '2017/07/cropped-bigtera_blog_cn.png'),
(25, 15, '_wp_attachment_context', 'custom-logo'),
(26, 15, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:252;s:6:\"height\";i:100;s:4:\"file\";s:35:\"2017/07/cropped-bigtera_blog_cn.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"cropped-bigtera_blog_cn-150x100.png\";s:5:\"width\";i:150;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:28:\"colormag-featured-post-small\";a:4:{s:4:\"file\";s:34:\"cropped-bigtera_blog_cn-130x90.png\";s:5:\"width\";i:130;s:6:\"height\";i:90;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(27, 16, '_wp_trash_meta_status', 'publish'),
(28, 16, '_wp_trash_meta_time', '1500543840'),
(29, 18, '_wp_attached_file', '2017/07/cropped-cropped-bigtera_blog_cn.png'),
(30, 18, '_wp_attachment_context', 'custom-logo'),
(31, 18, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:252;s:6:\"height\";i:62;s:4:\"file\";s:43:\"2017/07/cropped-cropped-bigtera_blog_cn.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:42:\"cropped-cropped-bigtera_blog_cn-150x62.png\";s:5:\"width\";i:150;s:6:\"height\";i:62;s:9:\"mime-type\";s:9:\"image/png\";}s:28:\"colormag-featured-post-small\";a:4:{s:4:\"file\";s:42:\"cropped-cropped-bigtera_blog_cn-130x62.png\";s:5:\"width\";i:130;s:6:\"height\";i:62;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(32, 17, '_wp_trash_meta_status', 'publish'),
(33, 17, '_wp_trash_meta_time', '1500543911'),
(34, 2, '_wp_trash_meta_status', 'publish'),
(35, 2, '_wp_trash_meta_time', '1500544214'),
(36, 2, '_wp_desired_post_slug', 'sample-page'),
(37, 20, '_edit_last', '1'),
(38, 20, '_edit_lock', '1500544238:1'),
(39, 20, 'colormag_page_layout', 'default_layout'),
(40, 20, '_wp_page_template', 'default'),
(41, 22, '_wp_trash_meta_status', 'publish'),
(42, 22, '_wp_trash_meta_time', '1500544494'),
(43, 1, '_wp_trash_meta_status', 'publish'),
(44, 1, '_wp_trash_meta_time', '1500544521'),
(45, 1, '_wp_desired_post_slug', 'hello-world'),
(46, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(47, 24, '_edit_last', '1'),
(48, 24, '_edit_lock', '1500544458:1'),
(49, 24, 'colormag_page_layout', 'default_layout'),
(51, 26, '_edit_last', '1'),
(52, 26, '_edit_lock', '1500544501:1'),
(53, 26, 'colormag_page_layout', 'default_layout'),
(55, 28, '_edit_last', '1'),
(56, 28, '_edit_lock', '1500544568:1'),
(57, 28, 'colormag_page_layout', 'default_layout'),
(61, 30, '_wp_trash_meta_status', 'publish'),
(62, 30, '_wp_trash_meta_time', '1500544825'),
(63, 31, '_wp_trash_meta_status', 'publish'),
(64, 31, '_wp_trash_meta_time', '1500951189'),
(65, 33, '_wp_trash_meta_status', 'publish'),
(66, 33, '_wp_trash_meta_time', '1501212204'),
(67, 34, '_wp_attached_file', '2017/07/cropped-logo180x180-2.png'),
(68, 34, '_wp_attachment_context', 'site-icon'),
(69, 34, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:33:\"2017/07/cropped-logo180x180-2.png\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:33:\"cropped-logo180x180-2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:33:\"cropped-logo180x180-2-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:25:\"colormag-highlighted-post\";a:4:{s:4:\"file\";s:33:\"cropped-logo180x180-2-392x272.png\";s:5:\"width\";i:392;s:6:\"height\";i:272;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"colormag-featured-post-medium\";a:4:{s:4:\"file\";s:33:\"cropped-logo180x180-2-390x205.png\";s:5:\"width\";i:390;s:6:\"height\";i:205;s:9:\"mime-type\";s:9:\"image/png\";}s:28:\"colormag-featured-post-small\";a:4:{s:4:\"file\";s:32:\"cropped-logo180x180-2-130x90.png\";s:5:\"width\";i:130;s:6:\"height\";i:90;s:9:\"mime-type\";s:9:\"image/png\";}s:23:\"colormag-featured-image\";a:4:{s:4:\"file\";s:33:\"cropped-logo180x180-2-512x445.png\";s:5:\"width\";i:512;s:6:\"height\";i:445;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-270\";a:4:{s:4:\"file\";s:33:\"cropped-logo180x180-2-270x270.png\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-192\";a:4:{s:4:\"file\";s:33:\"cropped-logo180x180-2-192x192.png\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-180\";a:4:{s:4:\"file\";s:33:\"cropped-logo180x180-2-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"site_icon-32\";a:4:{s:4:\"file\";s:31:\"cropped-logo180x180-2-32x32.png\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(70, 35, '_wp_trash_meta_status', 'publish'),
(71, 35, '_wp_trash_meta_time', '1501212220');

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
(1, 1, '2017-07-20 09:39:37', '2017-07-20 09:39:37', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'trash', 'open', 'open', '', 'hello-world__trashed', '', '', '2017-07-20 09:55:21', '2017-07-20 09:55:21', '', 0, 'http://localhost/bigtera_blog_cn/?p=1', 0, 'post', '', 1),
(2, 1, '2017-07-20 09:39:37', '2017-07-20 09:39:37', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://localhost/bigtera_blog_cn/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2017-07-20 09:50:14', '2017-07-20 09:50:14', '', 0, 'http://localhost/bigtera_blog_cn/?page_id=2', 0, 'page', '', 0),
(4, 1, '2017-07-20 09:41:28', '2017-07-20 09:41:28', '{\n    \"old_sidebars_widgets_data\": {\n        \"value\": {\n            \"wp_inactive_widgets\": [],\n            \"sidebar-1\": [\n                \"search-2\",\n                \"recent-posts-2\",\n                \"recent-comments-2\",\n                \"archives-2\",\n                \"categories-2\",\n                \"meta-2\"\n            ],\n            \"sidebar-2\": [],\n            \"sidebar-3\": []\n        },\n        \"type\": \"global_variable\",\n        \"user_id\": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'd7800c2c-f2c0-4cc9-ad5c-f4888db5fb7b', '', '', '2017-07-20 09:41:28', '2017-07-20 09:41:28', '', 0, 'http://localhost/bigtera_blog_cn/2017/07/20/d7800c2c-f2c0-4cc9-ad5c-f4888db5fb7b/', 0, 'customize_changeset', '', 0),
(5, 1, '2017-07-20 09:43:45', '2017-07-20 09:43:45', '', '1U', '', 'inherit', 'open', 'closed', '', '1u', '', '', '2017-07-20 09:43:45', '2017-07-20 09:43:45', '', 0, 'http://localhost/bigtera_blog_cn/wp-content/uploads/2017/07/1U-1.png', 0, 'attachment', 'image/png', 0),
(6, 1, '2017-07-20 09:43:45', '2017-07-20 09:43:45', '', '2U', '', 'inherit', 'open', 'closed', '', '2u', '', '', '2017-07-20 09:43:45', '2017-07-20 09:43:45', '', 0, 'http://localhost/bigtera_blog_cn/wp-content/uploads/2017/07/2U.png', 0, 'attachment', 'image/png', 0),
(7, 1, '2017-07-20 09:43:46', '2017-07-20 09:43:46', '', '2U4U', '', 'inherit', 'open', 'closed', '', '2u4u', '', '', '2017-07-20 09:43:46', '2017-07-20 09:43:46', '', 0, 'http://localhost/bigtera_blog_cn/wp-content/uploads/2017/07/2U4U-1.png', 0, 'attachment', 'image/png', 0),
(8, 1, '2017-07-20 09:43:46', '2017-07-20 09:43:46', '', 'ayylmao', '', 'inherit', 'open', 'closed', '', 'ayylmao', '', '', '2017-07-20 09:43:46', '2017-07-20 09:43:46', '', 0, 'http://localhost/bigtera_blog_cn/wp-content/uploads/2017/07/ayylmao-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(9, 1, '2017-07-20 09:43:46', '2017-07-20 09:43:46', '', 'bigtera_blog_cn', '', 'inherit', 'open', 'closed', '', 'bigtera_blog_cn', '', '', '2017-07-20 09:43:46', '2017-07-20 09:43:46', '', 0, 'http://localhost/bigtera_blog_cn/wp-content/uploads/2017/07/bigtera_blog_cn.png', 0, 'attachment', 'image/png', 0),
(10, 1, '2017-07-20 09:43:47', '2017-07-20 09:43:47', '', 'bigtera_logo', '', 'inherit', 'open', 'closed', '', 'bigtera_logo', '', '', '2017-07-20 09:43:47', '2017-07-20 09:43:47', '', 0, 'http://localhost/bigtera_blog_cn/wp-content/uploads/2017/07/bigtera_logo-2.png', 0, 'attachment', 'image/png', 0),
(11, 1, '2017-07-20 09:43:47', '2017-07-20 09:43:47', '', 'bigtera_logo_blog - Copy', '', 'inherit', 'open', 'closed', '', 'bigtera_logo_blog-copy', '', '', '2017-07-20 09:43:47', '2017-07-20 09:43:47', '', 0, 'http://localhost/bigtera_blog_cn/wp-content/uploads/2017/07/bigtera_logo_blog-Copy-1.png', 0, 'attachment', 'image/png', 0),
(12, 1, '2017-07-20 09:43:47', '2017-07-20 09:43:47', '', 'bigtera_logo_blog', '', 'inherit', 'open', 'closed', '', 'bigtera_logo_blog', '', '', '2017-07-20 09:43:47', '2017-07-20 09:43:47', '', 0, 'http://localhost/bigtera_blog_cn/wp-content/uploads/2017/07/bigtera_logo_blog.png', 0, 'attachment', 'image/png', 0),
(13, 1, '2017-07-20 09:43:48', '2017-07-20 09:43:48', '', 'ChIgcsB', '', 'inherit', 'open', 'closed', '', 'chigcsb', '', '', '2017-07-20 09:43:48', '2017-07-20 09:43:48', '', 0, 'http://localhost/bigtera_blog_cn/wp-content/uploads/2017/07/ChIgcsB-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(14, 1, '2017-07-20 09:43:48', '2017-07-20 09:43:48', '', 'logo180x180', '', 'inherit', 'open', 'closed', '', 'logo180x180', '', '', '2017-07-20 09:43:48', '2017-07-20 09:43:48', '', 0, 'http://localhost/bigtera_blog_cn/wp-content/uploads/2017/07/logo180x180-2.png', 0, 'attachment', 'image/png', 0),
(15, 1, '2017-07-20 09:43:56', '2017-07-20 09:43:56', 'http://localhost/bigtera_blog_cn/wp-content/uploads/2017/07/cropped-bigtera_blog_cn.png', 'cropped-bigtera_blog_cn.png', '', 'inherit', 'open', 'closed', '', 'cropped-bigtera_blog_cn-png', '', '', '2017-07-20 09:43:56', '2017-07-20 09:43:56', '', 0, 'http://localhost/bigtera_blog_cn/wp-content/uploads/2017/07/cropped-bigtera_blog_cn.png', 0, 'attachment', 'image/png', 0),
(16, 1, '2017-07-20 09:44:00', '2017-07-20 09:44:00', '{\n    \"colormag::custom_logo\": {\n        \"value\": 15,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'b32c603a-90dd-40be-af82-e3f7dd28dc09', '', '', '2017-07-20 09:44:00', '2017-07-20 09:44:00', '', 0, 'http://localhost/bigtera_blog_cn/2017/07/20/b32c603a-90dd-40be-af82-e3f7dd28dc09/', 0, 'customize_changeset', '', 0),
(17, 1, '2017-07-20 09:45:11', '2017-07-20 09:45:11', '{\n    \"blogname\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1\n    },\n    \"colormag::colormag_header_logo_placement\": {\n        \"value\": \"header_logo_only\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"colormag::custom_logo\": {\n        \"value\": 18,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'c44a36fb-3913-4cd5-b32f-2e60c4027d1b', '', '', '2017-07-20 09:45:11', '2017-07-20 09:45:11', '', 0, 'http://localhost/bigtera_blog_cn/?p=17', 0, 'customize_changeset', '', 0),
(18, 1, '2017-07-20 09:45:03', '2017-07-20 09:45:03', 'http://localhost/bigtera_blog_cn/wp-content/uploads/2017/07/cropped-cropped-bigtera_blog_cn.png', 'cropped-cropped-bigtera_blog_cn.png', '', 'inherit', 'open', 'closed', '', 'cropped-cropped-bigtera_blog_cn-png', '', '', '2017-07-20 09:45:03', '2017-07-20 09:45:03', '', 0, 'http://localhost/bigtera_blog_cn/wp-content/uploads/2017/07/cropped-cropped-bigtera_blog_cn.png', 0, 'attachment', 'image/png', 0),
(19, 1, '2017-07-20 09:50:14', '2017-07-20 09:50:14', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://localhost/bigtera_blog_cn/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2017-07-20 09:50:14', '2017-07-20 09:50:14', '', 2, 'http://localhost/bigtera_blog_cn/2017/07/20/2-revision-v1/', 0, 'revision', '', 0),
(20, 1, '2017-07-20 09:52:46', '2017-07-20 09:52:46', '這是<a href=\"http://www.bigtera.com\">Bigtera</a>的博客。\r\n\r\n<a href=\"http://www.bigtera.com/tw/company.php\"><span style=\"text-decoration: underline;\">公司概述</span></a>\r\n\r\n<a href=\"http://www.bigtera.com/tw/contact.php\"><span style=\"text-decoration: underline;\">聯絡我們</span></a>', '關於我們', '', 'publish', 'closed', 'closed', '', '%e9%97%9c%e6%96%bc%e6%88%91%e5%80%91', '', '', '2017-07-20 09:52:46', '2017-07-20 09:52:46', '', 0, 'http://localhost/bigtera_blog_cn/?page_id=20', 0, 'page', '', 0),
(21, 1, '2017-07-20 09:52:46', '2017-07-20 09:52:46', '這是<a href=\"http://www.bigtera.com\">Bigtera</a>的博客。\r\n\r\n<a href=\"http://www.bigtera.com/tw/company.php\"><span style=\"text-decoration: underline;\">公司概述</span></a>\r\n\r\n<a href=\"http://www.bigtera.com/tw/contact.php\"><span style=\"text-decoration: underline;\">聯絡我們</span></a>', '關於我們', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2017-07-20 09:52:46', '2017-07-20 09:52:46', '', 20, 'http://localhost/bigtera_blog_cn/2017/07/20/20-revision-v1/', 0, 'revision', '', 0),
(22, 1, '2017-07-20 09:54:53', '2017-07-20 09:54:53', '{\n    \"sidebars_widgets[colormag_right_sidebar]\": {\n        \"value\": [\n            \"categories-4\",\n            \"archives-4\",\n            \"recent-posts-4\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1\n    },\n    \"widget_categories[4]\": {\n        \"value\": [],\n        \"type\": \"option\",\n        \"user_id\": 1\n    },\n    \"widget_archives[4]\": {\n        \"value\": [],\n        \"type\": \"option\",\n        \"user_id\": 1\n    },\n    \"widget_recent-posts[4]\": {\n        \"value\": [],\n        \"type\": \"option\",\n        \"user_id\": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '7d9bdb8b-7c86-4629-8d9e-a293ec047828', '', '', '2017-07-20 09:54:53', '2017-07-20 09:54:53', '', 0, 'http://localhost/bigtera_blog_cn/?p=22', 0, 'customize_changeset', '', 0),
(23, 1, '2017-07-20 09:55:21', '2017-07-20 09:55:21', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2017-07-20 09:55:21', '2017-07-20 09:55:21', '', 1, 'http://localhost/bigtera_blog_cn/2017/07/20/1-revision-v1/', 0, 'revision', '', 0),
(24, 1, '2017-07-20 09:56:39', '2017-07-20 09:56:39', '1972–1997：早期生涯和《Infinite》[編輯]\r\n生於密蘇里州聖約瑟夫（St. Joseph），出生不久後，父親便離開了他的家庭。在12歲之前，母親帶著他多次搬家，如堪薩斯、莎凡娜（Savannah）等地，直到後來他們在密西根州底特律的郊區沃倫市定居。在聽過Beastie Boys的專輯《Licensed to Ill》以及舅舅所送的一首Ice-T的單曲之後，阿姆對嘻哈樂產生了興趣，14歲便第一次登臺演出。高中時期經常參加說唱比賽（freestyle battle），在地下嘻哈樂迷中有一定的人氣。兩個使用過的名字 \"Manix\" 和 \"M&amp;M，後來演變成了阿姆[1]。因為經常翹課的緣故，阿姆讀了兩次九年級，在17歲的時候輟學。\r\n從1992年起，阿姆和哥們Jeff和Mark Bass管理的FBT Productions簽下合約，有時候他也在位於底特律聖克雷爾畔的Gilbert\'s Lodge餐廳打一份最低工資的洗碗和烹飪的工作。在1996年，阿姆發行了他的首張專輯《Infinite》，這張專輯是在Bass Brothers擁有的Bassment工作室錄製的，並以他們的獨立廠牌Web Entertainment出版。阿姆回憶說：「很明顯，那時候我很年輕並且受到其他音樂人的影響，我得到很多人反應，說我唱得像Nas和AZ。《Infinite》是一張我想去找出我自己的說唱風格、怎樣在麥克風前唱出和展示我自己的專輯。這是一個成長的舞臺，我感覺《Infinite》就像一個我剛剛起步的演示。」[來源請求]這張專輯的歌詞裡唱到的內容包括阿姆撫養他剛出生的女兒海莉（Hailie）時，沒有足夠資金的窘迫處境。在事業的早期，阿姆以「Bad Meets Evil」的藝名和夥伴底特律說唱藝人Royce da 5\'9\"合作。\r\n1998–1999: 《The Slim Shady LP》[編輯]\r\n根據美國Billboard雜誌的描述，阿姆在人生的這一點上已經到了「實現我的音樂夢想是擺脫痛苦生活的唯一出路」的程度。[來源請求]在1998年阿姆與Aftermath Entertainment/Interscope Records簽約後，阿姆於1999年推出了他的首張大牌工作室專輯《The Slim Shady LP》，由Dr. Dre擔當製作人。關於這張專輯，引用Billboard的原話，是「野蠻的」和「在歌詞材料的幾年之前他已經事先開始寫了」。《The Slim Shady LP》成為1999年美國最流行的專輯之一，在年底獲得了鉑金唱片的銷量。但隨著這張唱片的流行，有關其中歌詞的爭議也隨之而來。在歌曲\"97 Bonnie and Clyde\"中，他描述了一趟與還是嬰兒的女兒的旅行中，是怎樣處置他妻子的屍體。另外一首歌\"Guilty Conscience\"中，結束時阿姆鼓勵一個男人去謀殺他的妻子和他妻子的情人。\"Guilty Conscience\" 標誌著阿姆與Dr. Dre牢固朋友關係和音樂合作的開始，他們兩人在之後一起合作製作了一連串轟動的歌曲，包括Dr. Dre的專輯《2001》裡的\"Forgot About Dre\"和\"What\'s the Difference\"，阿姆《The Marshall Mathers LP》裡的\"Bitch Please\"、《The Eminem Show》裡的\"Say What You Say\"和《Encore》裡的\"Curtains Down\" 。所以，Dr. Dre會在阿姆的工作室製作的所有Aftermath廠牌的專輯裡至少客串一次。', '你好，世界1', '1972–1997：早期生涯和《Infinite》[編輯]\r\n生於密蘇里州聖約瑟夫（St. Joseph），出生不久後，父親便離開了他的家庭。在12歲之前，母親帶著他多次搬家，如堪薩斯、莎凡娜（Savannah）等地，直到後來他們在密西根州底特律的郊區沃倫市定居。在聽過Beastie Boys的專輯《Licensed to Ill》以及舅舅所送的一首Ice-T的單曲之後，阿姆對嘻哈樂產生了興趣，14歲便第一次登臺演出。高中時期經常參加說唱比賽（freestyle battle），在地下嘻哈樂迷中有一定的人氣。兩個使用過的名字 \"Manix\" 和 \"M&amp;M，後來演變成了阿姆[1]。因為經常翹課的緣故，阿姆讀了兩次九年級，在17歲的時候輟學。', 'publish', 'open', 'open', '', '%e4%bd%a0%e5%a5%bd%ef%bc%8c%e4%b8%96%e7%95%8c1', '', '', '2017-07-20 09:56:39', '2017-07-20 09:56:39', '', 0, 'http://localhost/bigtera_blog_cn/?p=24', 0, 'post', '', 0),
(25, 1, '2017-07-20 09:56:39', '2017-07-20 09:56:39', '1972–1997：早期生涯和《Infinite》[編輯]\r\n生於密蘇里州聖約瑟夫（St. Joseph），出生不久後，父親便離開了他的家庭。在12歲之前，母親帶著他多次搬家，如堪薩斯、莎凡娜（Savannah）等地，直到後來他們在密西根州底特律的郊區沃倫市定居。在聽過Beastie Boys的專輯《Licensed to Ill》以及舅舅所送的一首Ice-T的單曲之後，阿姆對嘻哈樂產生了興趣，14歲便第一次登臺演出。高中時期經常參加說唱比賽（freestyle battle），在地下嘻哈樂迷中有一定的人氣。兩個使用過的名字 \"Manix\" 和 \"M&amp;M，後來演變成了阿姆[1]。因為經常翹課的緣故，阿姆讀了兩次九年級，在17歲的時候輟學。\r\n從1992年起，阿姆和哥們Jeff和Mark Bass管理的FBT Productions簽下合約，有時候他也在位於底特律聖克雷爾畔的Gilbert\'s Lodge餐廳打一份最低工資的洗碗和烹飪的工作。在1996年，阿姆發行了他的首張專輯《Infinite》，這張專輯是在Bass Brothers擁有的Bassment工作室錄製的，並以他們的獨立廠牌Web Entertainment出版。阿姆回憶說：「很明顯，那時候我很年輕並且受到其他音樂人的影響，我得到很多人反應，說我唱得像Nas和AZ。《Infinite》是一張我想去找出我自己的說唱風格、怎樣在麥克風前唱出和展示我自己的專輯。這是一個成長的舞臺，我感覺《Infinite》就像一個我剛剛起步的演示。」[來源請求]這張專輯的歌詞裡唱到的內容包括阿姆撫養他剛出生的女兒海莉（Hailie）時，沒有足夠資金的窘迫處境。在事業的早期，阿姆以「Bad Meets Evil」的藝名和夥伴底特律說唱藝人Royce da 5\'9\"合作。\r\n1998–1999: 《The Slim Shady LP》[編輯]\r\n根據美國Billboard雜誌的描述，阿姆在人生的這一點上已經到了「實現我的音樂夢想是擺脫痛苦生活的唯一出路」的程度。[來源請求]在1998年阿姆與Aftermath Entertainment/Interscope Records簽約後，阿姆於1999年推出了他的首張大牌工作室專輯《The Slim Shady LP》，由Dr. Dre擔當製作人。關於這張專輯，引用Billboard的原話，是「野蠻的」和「在歌詞材料的幾年之前他已經事先開始寫了」。《The Slim Shady LP》成為1999年美國最流行的專輯之一，在年底獲得了鉑金唱片的銷量。但隨著這張唱片的流行，有關其中歌詞的爭議也隨之而來。在歌曲\"97 Bonnie and Clyde\"中，他描述了一趟與還是嬰兒的女兒的旅行中，是怎樣處置他妻子的屍體。另外一首歌\"Guilty Conscience\"中，結束時阿姆鼓勵一個男人去謀殺他的妻子和他妻子的情人。\"Guilty Conscience\" 標誌著阿姆與Dr. Dre牢固朋友關係和音樂合作的開始，他們兩人在之後一起合作製作了一連串轟動的歌曲，包括Dr. Dre的專輯《2001》裡的\"Forgot About Dre\"和\"What\'s the Difference\"，阿姆《The Marshall Mathers LP》裡的\"Bitch Please\"、《The Eminem Show》裡的\"Say What You Say\"和《Encore》裡的\"Curtains Down\" 。所以，Dr. Dre會在阿姆的工作室製作的所有Aftermath廠牌的專輯裡至少客串一次。', '你好，世界1', '1972–1997：早期生涯和《Infinite》[編輯]\r\n生於密蘇里州聖約瑟夫（St. Joseph），出生不久後，父親便離開了他的家庭。在12歲之前，母親帶著他多次搬家，如堪薩斯、莎凡娜（Savannah）等地，直到後來他們在密西根州底特律的郊區沃倫市定居。在聽過Beastie Boys的專輯《Licensed to Ill》以及舅舅所送的一首Ice-T的單曲之後，阿姆對嘻哈樂產生了興趣，14歲便第一次登臺演出。高中時期經常參加說唱比賽（freestyle battle），在地下嘻哈樂迷中有一定的人氣。兩個使用過的名字 \"Manix\" 和 \"M&amp;M，後來演變成了阿姆[1]。因為經常翹課的緣故，阿姆讀了兩次九年級，在17歲的時候輟學。', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2017-07-20 09:56:39', '2017-07-20 09:56:39', '', 24, 'http://localhost/bigtera_blog_cn/2017/07/20/24-revision-v1/', 0, 'revision', '', 0),
(26, 1, '2017-07-20 09:57:23', '2017-07-20 09:57:23', '構想和發展[編輯]\r\n權力遊戲系列電視影集從2007年1月開始製作。[21]HBO獲得了小說作者的授權並準備拍攝成國際有線電視電視影集，之後便聘請大衛·貝尼奧夫和丹尼爾·威斯編導該系列電視影集。每一季的內容都分別涵蓋該系列小說的一部。[21]\r\n貝尼奧夫笑稱這部改編的電視影集為「中土大陸的《黑道家族》」，意指其充滿陰謀和暗色調的神秘世界設定。[22]儘管HBO的新發展政策是「電影中使用五年前絕對不會採用的拍攝手段」[23][24]，但傳統的嚴肅奇幻在該劇集中也只是偶然發生的事件，因為HBO項目首席麥可·隆巴多認為故事敘述比暗調魔法和異國背景更加吸引人。\r\n人們把該劇的預算和另一齣電視連續劇《羅馬》做過比較。[24]據報導，《權力遊戲》試播已經耗資500萬到1000萬美元[23]，第一季的總預算估計為5000萬到6000萬美元。[25]\r\nHBO聘請語言創作協會（Language Creation Society）的語言專家大衛·J·彼得森（David J. Peterson）為電視影集創造而有「獨特的發音、超過1,800的詞彙和複雜的語法結構」出多斯拉克語。[26]貝尼奧夫和維斯撰寫的試播腳本的初稿和次稿，分別在2007年8月[27]和2008年6月[28]就已完成。HBO發現兩者皆合其意[29][30]，直至2008年11月才把試播確定下來。拖延如此長時間，可能由於2007年－2008年美國編劇協會大罷工的影響。[30]\r\n選角[編輯]\r\nHBO於2009年5月5日公布了試播章節中提利昂·蘭尼斯特的扮演人選Peter Dinklage以及該集的導演Tom McCarthy。[31]不久，IMDB上有人惡作劇地編輯了女影星Holly Marie Combs的詞條，暗示她將出演凱特琳·史塔克，不過這個選角隨後為製片人David Benioff和D. B. Weiss所否認。[32]八月初，HBO公布了凱特琳·史塔克的飾演人選Jennifer Ehle。[33]\r\n2009年7月19日，HBO進一步地公布了更多角色的演員，包括幾天前流傳的艾德·史塔克的演出者Sean Bean。[34][35]其他在試播集中演出的包括瓊恩·雪諾的演員Kit Harington、喬佛里·拜拉席恩的出演人Jack Gleeson、韋賽里斯·坦格利安角色由Harry Lloyd擔綱以及勞勃·拜拉席恩的扮演人Mark Addy。[36][37]\r\n8月20日，更多的演員選角得以公布，包括飾演詹姆·蘭尼斯特的Nikolaj Coster-Waldau、扮演丹妮莉絲·坦格利安的Tamzin Merchant、演出羅柏·史塔克的Richard Madden、喬拉·莫爾蒙爵士的演員Iain Glen、席恩·葛雷喬伊的扮演者Alfie Allen以及珊莎·史塔克和艾莉亞·史塔克各自的扮演者Sophie Turner和Maisie Williams。[38]緊接著，HBO又於9月1日公布了瑟曦·蘭尼斯特的扮演者Lena Headey。[39]9月23日，馬丁確認了桑鐸·克里岡的扮演者Rory McCann。[40]10月14日，布蘭·史塔克的扮演者Hempstead-Wright最終敲定，3天後，卓戈卡奧的扮演者Jason Momoa也被確認。[41]\r\n在試播章節拍攝完成，整部劇集的拍攝正式開始後，HBO公布凱特琳·史塔克原來的扮演者Ehle將由Michelle Fairley來代替。[42]隨後，丹妮莉絲原來的扮演者Tamzin Merchant也被艾美莉·克拉克取代。[43][44]\r\n第二季的選角於2011年5月開始。[45]', '你好，世界2', '構想和發展[編輯]\r\n權力遊戲系列電視影集從2007年1月開始製作。[21]HBO獲得了小說作者的授權並準備拍攝成國際有線電視電視影集，之後便聘請大衛·貝尼奧夫和丹尼爾·威斯編導該系列電視影集。每一季的內容都分別涵蓋該系列小說的一部。[21]\r\n貝尼奧夫笑稱這部改編的電視影集為「中土大陸的《黑道家族》」...', 'publish', 'open', 'open', '', '%e4%bd%a0%e5%a5%bd%ef%bc%8c%e4%b8%96%e7%95%8c2', '', '', '2017-07-20 09:57:23', '2017-07-20 09:57:23', '', 0, 'http://localhost/bigtera_blog_cn/?p=26', 0, 'post', '', 0),
(27, 1, '2017-07-20 09:57:23', '2017-07-20 09:57:23', '構想和發展[編輯]\r\n權力遊戲系列電視影集從2007年1月開始製作。[21]HBO獲得了小說作者的授權並準備拍攝成國際有線電視電視影集，之後便聘請大衛·貝尼奧夫和丹尼爾·威斯編導該系列電視影集。每一季的內容都分別涵蓋該系列小說的一部。[21]\r\n貝尼奧夫笑稱這部改編的電視影集為「中土大陸的《黑道家族》」，意指其充滿陰謀和暗色調的神秘世界設定。[22]儘管HBO的新發展政策是「電影中使用五年前絕對不會採用的拍攝手段」[23][24]，但傳統的嚴肅奇幻在該劇集中也只是偶然發生的事件，因為HBO項目首席麥可·隆巴多認為故事敘述比暗調魔法和異國背景更加吸引人。\r\n人們把該劇的預算和另一齣電視連續劇《羅馬》做過比較。[24]據報導，《權力遊戲》試播已經耗資500萬到1000萬美元[23]，第一季的總預算估計為5000萬到6000萬美元。[25]\r\nHBO聘請語言創作協會（Language Creation Society）的語言專家大衛·J·彼得森（David J. Peterson）為電視影集創造而有「獨特的發音、超過1,800的詞彙和複雜的語法結構」出多斯拉克語。[26]貝尼奧夫和維斯撰寫的試播腳本的初稿和次稿，分別在2007年8月[27]和2008年6月[28]就已完成。HBO發現兩者皆合其意[29][30]，直至2008年11月才把試播確定下來。拖延如此長時間，可能由於2007年－2008年美國編劇協會大罷工的影響。[30]\r\n選角[編輯]\r\nHBO於2009年5月5日公布了試播章節中提利昂·蘭尼斯特的扮演人選Peter Dinklage以及該集的導演Tom McCarthy。[31]不久，IMDB上有人惡作劇地編輯了女影星Holly Marie Combs的詞條，暗示她將出演凱特琳·史塔克，不過這個選角隨後為製片人David Benioff和D. B. Weiss所否認。[32]八月初，HBO公布了凱特琳·史塔克的飾演人選Jennifer Ehle。[33]\r\n2009年7月19日，HBO進一步地公布了更多角色的演員，包括幾天前流傳的艾德·史塔克的演出者Sean Bean。[34][35]其他在試播集中演出的包括瓊恩·雪諾的演員Kit Harington、喬佛里·拜拉席恩的出演人Jack Gleeson、韋賽里斯·坦格利安角色由Harry Lloyd擔綱以及勞勃·拜拉席恩的扮演人Mark Addy。[36][37]\r\n8月20日，更多的演員選角得以公布，包括飾演詹姆·蘭尼斯特的Nikolaj Coster-Waldau、扮演丹妮莉絲·坦格利安的Tamzin Merchant、演出羅柏·史塔克的Richard Madden、喬拉·莫爾蒙爵士的演員Iain Glen、席恩·葛雷喬伊的扮演者Alfie Allen以及珊莎·史塔克和艾莉亞·史塔克各自的扮演者Sophie Turner和Maisie Williams。[38]緊接著，HBO又於9月1日公布了瑟曦·蘭尼斯特的扮演者Lena Headey。[39]9月23日，馬丁確認了桑鐸·克里岡的扮演者Rory McCann。[40]10月14日，布蘭·史塔克的扮演者Hempstead-Wright最終敲定，3天後，卓戈卡奧的扮演者Jason Momoa也被確認。[41]\r\n在試播章節拍攝完成，整部劇集的拍攝正式開始後，HBO公布凱特琳·史塔克原來的扮演者Ehle將由Michelle Fairley來代替。[42]隨後，丹妮莉絲原來的扮演者Tamzin Merchant也被艾美莉·克拉克取代。[43][44]\r\n第二季的選角於2011年5月開始。[45]', '你好，世界2', '構想和發展[編輯]\r\n權力遊戲系列電視影集從2007年1月開始製作。[21]HBO獲得了小說作者的授權並準備拍攝成國際有線電視電視影集，之後便聘請大衛·貝尼奧夫和丹尼爾·威斯編導該系列電視影集。每一季的內容都分別涵蓋該系列小說的一部。[21]\r\n貝尼奧夫笑稱這部改編的電視影集為「中土大陸的《黑道家族》」...', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2017-07-20 09:57:23', '2017-07-20 09:57:23', '', 26, 'http://localhost/bigtera_blog_cn/2017/07/20/26-revision-v1/', 0, 'revision', '', 0),
(28, 1, '2017-07-20 09:58:02', '2017-07-20 09:58:02', '4chan在2003年由來自紐約的克里斯多福·普爾創建[5][6]，其創立時的目標就是建立一個仿造美國版本的2chan，以作為貼圖討論日本動漫、同人、御宅族文化的站點。[7][8]克里斯多福·普爾原本使用2chan下載二次元圖片的時候發現匿名發布機制非常有趣，便萌生出了創建一個類似英文網站的想法。他在得到該網站的原始碼之後使用AltaVista的Babelfish平台的線上翻譯軟體將原始碼內的日文原文全部翻譯成英文。[9][10]\r\n創建時，4chan的貼圖討論版包括日本動漫版、隨機版、H圖片版、可愛二次元圖片版和Yaoi版，而隨著時間的推移，4chan的版塊也有所增加，新增的版塊包括體育、科技、照相、音樂、電子遊戲、旅遊、健身、政治、武器、科學與數學、Cosplay、料理與電影等等。現今網站上的版塊有六大分類：日本文化、愛好、創意、成人（18禁）、其他和雜項（18禁），其中存取流量最大的版面從多到少排序依次為/b/ （Random，隨機版）、/v/ （Video games，電子遊戲版）、/a/ （Anime and Manga，日本動漫版）和 /s/ （十八禁版）；[9]據《洛杉磯時報》報導，4chan是網上流量最高的網站之一[11]，其Alexa排名常保持在700左右[12]，但有時候也能排到第56名[13]。跟大部分的網路論壇不一樣的是，為了方便用戶匿名發文，4chan並沒有註冊功能。[6][14]用戶也可以使用自訂的名字，並以tripcode標識自己的身分。[15]匿名用戶發文的時候，用戶的名字會顯示成「Anonymous」（無名者），而大部分用戶都會保持匿名，因而在4chan上的一般理解中，「Anonymous」所指的不是特定的某個人，而是一個用戶群體[16]。管理員一般情況下也不使用名字，而是也使用「Anonymous」發文。同樣的，管理員可以用capcode認證自己，但是平時這種認證並無必要。[17]在2011年NICONICO動畫上的採訪中，克里斯多福·普爾曾說在4chan大概有20個志願管理員[9]，每個版上亦有「janitor」（清潔工），專門負責刪除違反規則的訊息和圖片。[18]\r\n4chan有時也會遭受有針對性的分散式阻斷服務攻擊。如在2010年12月28日的攻擊中，整個4chan網站被迫下線，而在這次事件中，克里斯多福·普爾在部落格中寫到「現在我們跟MasterCard，Visa和PayPal等等同一等級了——（就是）一個專屬俱樂部！」[19]\r\n在2008年8月間，為把最大帶寬吞吐量從100Mbps增加到1Gbps，克里斯多福·普爾把4chan的伺服器從德克薩斯州運到加州。2010年，4chan開始使用reCAPTCHA以防止來自JavaScript病毒的垃圾發文，而後在2011年11月4chan的伺服器開始用CloudFlare聯網軟體來避免再度遭受分散式阻斷服務攻擊。2012年5月，為提高用戶端效能，所有的4chan貼圖版都以HTML5/CSS3重構，並於8月時發帖總數突破10億。[20][20]2012年9月5日，4chan網站開始提供所有貼圖版的JSON API。[21][22][23]2014年4月起，4chan開始支援上傳WebM格式的視訊檔，讓用戶分享3MB以下的短片。[24]\r\n克里斯多福·普爾在2015年1月21日從管理員職位辭職，[25]並在同年9月21日宣布把4chan賣給西村博之，但當時沒公開網站買賣價格。[26][27][28]', '你好，世界3', '4chan在2003年由來自紐約的克里斯多福·普爾創建[5][6]，其創立時的目標就是建立一個仿造美國版本的2chan，以作為貼圖討論日本動漫、同人、御宅族文化的站點。[7][8]克里斯多福·普爾原本使用2chan下載二次元圖片的時候發現匿名發布機制非常有趣，便萌生出了創建一個類似英文網站的想法。他在得到該網站的原始碼之後使用AltaVista的Babelfish平台的線上翻譯軟體將原始碼內的日文原文全部翻譯成英文。[9][10]...', 'publish', 'open', 'open', '', '%e4%bd%a0%e5%a5%bd%ef%bc%8c%e4%b8%96%e7%95%8c3', '', '', '2017-07-20 09:58:10', '2017-07-20 09:58:10', '', 0, 'http://localhost/bigtera_blog_cn/?p=28', 0, 'post', '', 0),
(29, 1, '2017-07-20 09:58:02', '2017-07-20 09:58:02', '4chan在2003年由來自紐約的克里斯多福·普爾創建[5][6]，其創立時的目標就是建立一個仿造美國版本的2chan，以作為貼圖討論日本動漫、同人、御宅族文化的站點。[7][8]克里斯多福·普爾原本使用2chan下載二次元圖片的時候發現匿名發布機制非常有趣，便萌生出了創建一個類似英文網站的想法。他在得到該網站的原始碼之後使用AltaVista的Babelfish平台的線上翻譯軟體將原始碼內的日文原文全部翻譯成英文。[9][10]\r\n創建時，4chan的貼圖討論版包括日本動漫版、隨機版、H圖片版、可愛二次元圖片版和Yaoi版，而隨著時間的推移，4chan的版塊也有所增加，新增的版塊包括體育、科技、照相、音樂、電子遊戲、旅遊、健身、政治、武器、科學與數學、Cosplay、料理與電影等等。現今網站上的版塊有六大分類：日本文化、愛好、創意、成人（18禁）、其他和雜項（18禁），其中存取流量最大的版面從多到少排序依次為/b/ （Random，隨機版）、/v/ （Video games，電子遊戲版）、/a/ （Anime and Manga，日本動漫版）和 /s/ （十八禁版）；[9]據《洛杉磯時報》報導，4chan是網上流量最高的網站之一[11]，其Alexa排名常保持在700左右[12]，但有時候也能排到第56名[13]。跟大部分的網路論壇不一樣的是，為了方便用戶匿名發文，4chan並沒有註冊功能。[6][14]用戶也可以使用自訂的名字，並以tripcode標識自己的身分。[15]匿名用戶發文的時候，用戶的名字會顯示成「Anonymous」（無名者），而大部分用戶都會保持匿名，因而在4chan上的一般理解中，「Anonymous」所指的不是特定的某個人，而是一個用戶群體[16]。管理員一般情況下也不使用名字，而是也使用「Anonymous」發文。同樣的，管理員可以用capcode認證自己，但是平時這種認證並無必要。[17]在2011年NICONICO動畫上的採訪中，克里斯多福·普爾曾說在4chan大概有20個志願管理員[9]，每個版上亦有「janitor」（清潔工），專門負責刪除違反規則的訊息和圖片。[18]\r\n4chan有時也會遭受有針對性的分散式阻斷服務攻擊。如在2010年12月28日的攻擊中，整個4chan網站被迫下線，而在這次事件中，克里斯多福·普爾在部落格中寫到「現在我們跟MasterCard，Visa和PayPal等等同一等級了——（就是）一個專屬俱樂部！」[19]\r\n在2008年8月間，為把最大帶寬吞吐量從100Mbps增加到1Gbps，克里斯多福·普爾把4chan的伺服器從德克薩斯州運到加州。2010年，4chan開始使用reCAPTCHA以防止來自JavaScript病毒的垃圾發文，而後在2011年11月4chan的伺服器開始用CloudFlare聯網軟體來避免再度遭受分散式阻斷服務攻擊。2012年5月，為提高用戶端效能，所有的4chan貼圖版都以HTML5/CSS3重構，並於8月時發帖總數突破10億。[20][20]2012年9月5日，4chan網站開始提供所有貼圖版的JSON API。[21][22][23]2014年4月起，4chan開始支援上傳WebM格式的視訊檔，讓用戶分享3MB以下的短片。[24]\r\n克里斯多福·普爾在2015年1月21日從管理員職位辭職，[25]並在同年9月21日宣布把4chan賣給西村博之，但當時沒公開網站買賣價格。[26][27][28]', '你好，世界3', '4chan在2003年由來自紐約的克里斯多福·普爾創建[5][6]，其創立時的目標就是建立一個仿造美國版本的2chan，以作為貼圖討論日本動漫、同人、御宅族文化的站點。[7][8]克里斯多福·普爾原本使用2chan下載二次元圖片的時候發現匿名發布機制非常有趣，便萌生出了創建一個類似英文網站的想法。他在得到該網站的原始碼之後使用AltaVista的Babelfish平台的線上翻譯軟體將原始碼內的日文原文全部翻譯成英文。[9][10]...', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2017-07-20 09:58:02', '2017-07-20 09:58:02', '', 28, 'http://localhost/bigtera_blog_cn/2017/07/20/28-revision-v1/', 0, 'revision', '', 0),
(30, 1, '2017-07-20 10:00:24', '2017-07-20 10:00:24', '{\n    \"widget_categories[4]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjY6IumhnuWIpSI7czo1OiJjb3VudCI7aTowO3M6MTI6ImhpZXJhcmNoaWNhbCI7aTowO3M6ODoiZHJvcGRvd24iO2k6MDt9\",\n            \"title\": \"\\u985e\\u5225\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"c9206e934653ce4c4148fb88a4fcb002\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1\n    },\n    \"widget_archives[4]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTozOntzOjU6InRpdGxlIjtzOjY6IuiomOmMhCI7czo1OiJjb3VudCI7aTowO3M6ODoiZHJvcGRvd24iO2k6MDt9\",\n            \"title\": \"\\u8a18\\u9304\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"7b53769c799d657ca890946c4fb2a653\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1\n    },\n    \"widget_recent-posts[4]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTozOntzOjU6InRpdGxlIjtzOjEyOiLmnIDov5Hmj5DkuqQiO3M6NjoibnVtYmVyIjtpOjU7czo5OiJzaG93X2RhdGUiO2I6MDt9\",\n            \"title\": \"\\u6700\\u8fd1\\u63d0\\u4ea4\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"ebf6aa11d5a35b743c1bf99c38f4431c\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '05f703b6-1442-4358-ae5e-71525104162d', '', '', '2017-07-20 10:00:24', '2017-07-20 10:00:24', '', 0, 'http://localhost/bigtera_blog_cn/?p=30', 0, 'customize_changeset', '', 0),
(31, 1, '2017-07-25 02:53:09', '2017-07-25 02:53:09', '{\n    \"colormag::colormag_primary_color\": {\n        \"value\": \"#72ae2d\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'b97dc2b4-5a7f-4d11-a409-4eeab45ecde8', '', '', '2017-07-25 02:53:09', '2017-07-25 02:53:09', '', 0, 'http://localhost/bigtera_blog_cn/2017/07/25/b97dc2b4-5a7f-4d11-a409-4eeab45ecde8/', 0, 'customize_changeset', '', 0),
(33, 1, '2017-07-28 03:23:24', '2017-07-28 03:23:24', '{\n    \"blogname\": {\n        \"value\": \"Bigtera: Blog\",\n        \"type\": \"option\",\n        \"user_id\": 1\n    },\n    \"blogdescription\": {\n        \"value\": \"Empowering Your Software-Defined Transformation\",\n        \"type\": \"option\",\n        \"user_id\": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'b5badd2b-b868-4f6a-ba0f-622dfe0bf97a', '', '', '2017-07-28 03:23:24', '2017-07-28 03:23:24', '', 0, 'http://localhost/bigtera_blog_cn/?p=33', 0, 'customize_changeset', '', 0),
(34, 1, '2017-07-28 03:23:36', '2017-07-28 03:23:36', 'http://localhost/bigtera_blog_cn/wp-content/uploads/2017/07/cropped-logo180x180-2.png', 'cropped-logo180x180-2.png', '', 'inherit', 'open', 'closed', '', 'cropped-logo180x180-2-png', '', '', '2017-07-28 03:23:36', '2017-07-28 03:23:36', '', 0, 'http://localhost/bigtera_blog_cn/wp-content/uploads/2017/07/cropped-logo180x180-2.png', 0, 'attachment', 'image/png', 0),
(35, 1, '2017-07-28 03:23:40', '2017-07-28 03:23:40', '{\n    \"site_icon\": {\n        \"value\": 34,\n        \"type\": \"option\",\n        \"user_id\": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'fa451482-860f-46dd-aae4-098b9fa20109', '', '', '2017-07-28 03:23:40', '2017-07-28 03:23:40', '', 0, 'http://localhost/bigtera_blog_cn/2017/07/28/fa451482-860f-46dd-aae4-098b9fa20109/', 0, 'customize_changeset', '', 0),
(36, 1, '2017-08-09 04:19:08', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-08-09 04:19:08', '0000-00-00 00:00:00', '', 0, 'http://192.168.168.94/bigtera_blog_cn/?p=36', 0, 'post', '', 0);

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
(2, '一', '%e4%b8%80', 0),
(3, '二三', '%e4%ba%8c%e4%b8%89', 0),
(4, '四五', '%e5%9b%9b%e4%ba%94', 0);

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
(1, 1, 0),
(24, 2, 0),
(26, 3, 0),
(28, 1, 0),
(28, 4, 0);

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
(1, 1, 'category', '', 0, 1),
(2, 2, 'category', '', 0, 1),
(3, 3, 'category', '', 0, 1),
(4, 4, 'category', '', 0, 1);

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
(15, 1, 'session_tokens', 'a:3:{s:64:\"a13e55b50f4c33f1f1c76d433de1d7b90b20f4eddac4e5dd5deb5bce8f7b4a66\";a:4:{s:10:\"expiration\";i:1503373944;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.90 Safari/537.36\";s:5:\"login\";i:1502164344;}s:64:\"aa58d169e3393439e34d03b5ff966cb70775a39e396e24c286253e818f65b3c5\";a:4:{s:10:\"expiration\";i:1502425147;s:2:\"ip\";s:11:\"10.1.27.125\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.90 Safari/537.36\";s:5:\"login\";i:1502252347;}s:64:\"a3b0149ef844e8301e48db35d5c223661c81a5a649b14f3e8e632b843e1ea087\";a:4:{s:10:\"expiration\";i:1502425219;s:2:\"ip\";s:11:\"10.1.27.127\";s:2:\"ua\";s:104:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36\";s:5:\"login\";i:1502252419;}}'),
(16, 1, 'wp_dashboard_quick_press_last_post_id', '36'),
(17, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"10.1.27.0\";}'),
(18, 1, 'wp_user-settings', 'libraryContent=browse'),
(19, 1, 'wp_user-settings-time', '1500543838');

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
(1, 'root', '$P$BJQD4SnVH483GpzLZ8elUussFBLGrb/', 'root', 'vergil.hsu@gmail.com', '', '2017-07-20 09:39:37', '', 0, 'root');

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
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=219;
--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;
--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
