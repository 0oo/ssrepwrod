SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;


CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
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
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=2 ;

CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=143 ;

INSERT INTO `wp_options` VALUES(1, 'siteurl', 'http://localhost/ssrepwrod', 'yes');
INSERT INTO `wp_options` VALUES(2, 'home', 'http://localhost/ssrepwrod', 'yes');
INSERT INTO `wp_options` VALUES(3, 'blogname', 'myblog', 'yes');
INSERT INTO `wp_options` VALUES(4, 'blogdescription', '又一个WordPress站点', 'yes');
INSERT INTO `wp_options` VALUES(5, 'users_can_register', '0', 'yes');
INSERT INTO `wp_options` VALUES(6, 'admin_email', 'you@example.com', 'yes');
INSERT INTO `wp_options` VALUES(7, 'start_of_week', '1', 'yes');
INSERT INTO `wp_options` VALUES(8, 'use_balanceTags', '0', 'yes');
INSERT INTO `wp_options` VALUES(9, 'use_smilies', '1', 'yes');
INSERT INTO `wp_options` VALUES(10, 'require_name_email', '1', 'yes');
INSERT INTO `wp_options` VALUES(11, 'comments_notify', '', 'yes');
INSERT INTO `wp_options` VALUES(12, 'posts_per_rss', '10', 'yes');
INSERT INTO `wp_options` VALUES(13, 'rss_use_excerpt', '0', 'yes');
INSERT INTO `wp_options` VALUES(14, 'mailserver_url', '', 'yes');
INSERT INTO `wp_options` VALUES(15, 'mailserver_login', '', 'yes');
INSERT INTO `wp_options` VALUES(16, 'mailserver_pass', '', 'yes');
INSERT INTO `wp_options` VALUES(17, 'mailserver_port', '0', 'yes');
INSERT INTO `wp_options` VALUES(18, 'default_category', '1', 'yes');
INSERT INTO `wp_options` VALUES(19, 'default_comment_status', 'open', 'yes');
INSERT INTO `wp_options` VALUES(20, 'default_ping_status', 'closed', 'yes');
INSERT INTO `wp_options` VALUES(21, 'default_pingback_flag', '', 'yes');
INSERT INTO `wp_options` VALUES(22, 'posts_per_page', '10', 'yes');
INSERT INTO `wp_options` VALUES(23, 'date_format', 'Y年n月j日', 'yes');
INSERT INTO `wp_options` VALUES(24, 'time_format', 'ag:i', 'yes');
INSERT INTO `wp_options` VALUES(25, 'links_updated_date_format', 'Y年n月j日ag:i', 'yes');
INSERT INTO `wp_options` VALUES(26, 'comment_moderation', '', 'yes');
INSERT INTO `wp_options` VALUES(27, 'moderation_notify', '', 'yes');
INSERT INTO `wp_options` VALUES(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes');
INSERT INTO `wp_options` VALUES(29, 'rewrite_rules', 'a:89:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:58:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:68:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:88:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:64:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:53:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:77:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:65:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:61:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:47:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:53:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes');
INSERT INTO `wp_options` VALUES(30, 'hack_file', '0', 'yes');
INSERT INTO `wp_options` VALUES(31, 'blog_charset', 'UTF-8', 'yes');
INSERT INTO `wp_options` VALUES(32, 'moderation_keys', '', 'no');
INSERT INTO `wp_options` VALUES(33, 'active_plugins', 'a:0:{}', 'yes');
INSERT INTO `wp_options` VALUES(34, 'category_base', '', 'yes');
INSERT INTO `wp_options` VALUES(35, 'ping_sites', '', 'yes');
INSERT INTO `wp_options` VALUES(36, 'comment_max_links', '2', 'yes');
INSERT INTO `wp_options` VALUES(37, 'gmt_offset', '0', 'yes');
INSERT INTO `wp_options` VALUES(38, 'default_email_category', '1', 'yes');
INSERT INTO `wp_options` VALUES(39, 'recently_edited', '', 'no');
INSERT INTO `wp_options` VALUES(40, 'template', 'hmj-blog', 'yes');
INSERT INTO `wp_options` VALUES(41, 'stylesheet', 'hmj-blog', 'yes');
INSERT INTO `wp_options` VALUES(42, 'comment_whitelist', '1', 'yes');
INSERT INTO `wp_options` VALUES(43, 'blacklist_keys', '', 'no');
INSERT INTO `wp_options` VALUES(44, 'comment_registration', '0', 'yes');
INSERT INTO `wp_options` VALUES(45, 'html_type', 'text/html', 'yes');
INSERT INTO `wp_options` VALUES(46, 'use_trackback', '0', 'yes');
INSERT INTO `wp_options` VALUES(47, 'default_role', 'subscriber', 'yes');
INSERT INTO `wp_options` VALUES(48, 'db_version', '38590', 'yes');
INSERT INTO `wp_options` VALUES(49, 'uploads_use_yearmonth_folders', '1', 'yes');
INSERT INTO `wp_options` VALUES(50, 'upload_path', '', 'yes');
INSERT INTO `wp_options` VALUES(51, 'blog_public', '1', 'yes');
INSERT INTO `wp_options` VALUES(52, 'default_link_category', '2', 'yes');
INSERT INTO `wp_options` VALUES(53, 'show_on_front', 'posts', 'yes');
INSERT INTO `wp_options` VALUES(54, 'tag_base', '', 'yes');
INSERT INTO `wp_options` VALUES(55, 'show_avatars', '1', 'yes');
INSERT INTO `wp_options` VALUES(56, 'avatar_rating', 'G', 'yes');
INSERT INTO `wp_options` VALUES(57, 'upload_url_path', '', 'yes');
INSERT INTO `wp_options` VALUES(58, 'thumbnail_size_w', '150', 'yes');
INSERT INTO `wp_options` VALUES(59, 'thumbnail_size_h', '150', 'yes');
INSERT INTO `wp_options` VALUES(60, 'thumbnail_crop', '1', 'yes');
INSERT INTO `wp_options` VALUES(61, 'medium_size_w', '300', 'yes');
INSERT INTO `wp_options` VALUES(62, 'medium_size_h', '300', 'yes');
INSERT INTO `wp_options` VALUES(63, 'avatar_default', 'mystery', 'yes');
INSERT INTO `wp_options` VALUES(64, 'large_size_w', '1024', 'yes');
INSERT INTO `wp_options` VALUES(65, 'large_size_h', '1024', 'yes');
INSERT INTO `wp_options` VALUES(66, 'image_default_link_type', 'none', 'yes');
INSERT INTO `wp_options` VALUES(67, 'image_default_size', '', 'yes');
INSERT INTO `wp_options` VALUES(68, 'image_default_align', '', 'yes');
INSERT INTO `wp_options` VALUES(69, 'close_comments_for_old_posts', '', 'yes');
INSERT INTO `wp_options` VALUES(70, 'close_comments_days_old', '14', 'yes');
INSERT INTO `wp_options` VALUES(71, 'thread_comments', '1', 'yes');
INSERT INTO `wp_options` VALUES(72, 'thread_comments_depth', '5', 'yes');
INSERT INTO `wp_options` VALUES(73, 'page_comments', '1', 'yes');
INSERT INTO `wp_options` VALUES(74, 'comments_per_page', '50', 'yes');
INSERT INTO `wp_options` VALUES(75, 'default_comments_page', 'newest', 'yes');
INSERT INTO `wp_options` VALUES(76, 'comment_order', 'asc', 'yes');
INSERT INTO `wp_options` VALUES(77, 'sticky_posts', 'a:0:{}', 'yes');
INSERT INTO `wp_options` VALUES(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES(79, 'widget_text', 'a:0:{}', 'yes');
INSERT INTO `wp_options` VALUES(80, 'widget_rss', 'a:0:{}', 'yes');
INSERT INTO `wp_options` VALUES(81, 'uninstall_plugins', 'a:0:{}', 'no');
INSERT INTO `wp_options` VALUES(82, 'timezone_string', 'Asia/Shanghai', 'yes');
INSERT INTO `wp_options` VALUES(83, 'page_for_posts', '0', 'yes');
INSERT INTO `wp_options` VALUES(84, 'page_on_front', '0', 'yes');
INSERT INTO `wp_options` VALUES(85, 'default_post_format', '0', 'yes');
INSERT INTO `wp_options` VALUES(86, 'link_manager_enabled', '0', 'yes');
INSERT INTO `wp_options` VALUES(87, 'finished_splitting_shared_terms', '1', 'yes');
INSERT INTO `wp_options` VALUES(88, 'site_icon', '0', 'yes');
INSERT INTO `wp_options` VALUES(89, 'medium_large_size_w', '768', 'yes');
INSERT INTO `wp_options` VALUES(90, 'medium_large_size_h', '0', 'yes');
INSERT INTO `wp_options` VALUES(91, 'initial_db_version', '38590', 'yes');
INSERT INTO `wp_options` VALUES(92, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes');
INSERT INTO `wp_options` VALUES(93, 'fresh_site', '0', 'yes');
INSERT INTO `wp_options` VALUES(94, 'WPLANG', 'zh_CN', 'yes');
INSERT INTO `wp_options` VALUES(95, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES(96, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES(97, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES(98, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES(99, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES(100, 'sidebars_widgets', 'a:3:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"array_version";i:3;}', 'yes');
INSERT INTO `wp_options` VALUES(101, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES(102, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES(103, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES(104, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES(105, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES(106, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES(107, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES(108, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES(109, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES(110, 'cron', 'a:3:{i:1512820468;a:2:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1512831651;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes');
INSERT INTO `wp_options` VALUES(111, 'theme_mods_twentyseventeen', 'a:2:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1512647700;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes');
INSERT INTO `wp_options` VALUES(115, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:2:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:65:"https://downloads.wordpress.org/release/zh_CN/wordpress-4.9.1.zip";s:6:"locale";s:5:"zh_CN";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:65:"https://downloads.wordpress.org/release/zh_CN/wordpress-4.9.1.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.9.1";s:7:"version";s:5:"4.9.1";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:0:"";}i:1;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.9.1.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.9.1.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.9.1-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.9.1-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.9.1";s:7:"version";s:5:"4.9.1";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1512745080;s:15:"version_checked";s:5:"4.9.1";s:12:"translations";a:1:{i:0;a:7:{s:4:"type";s:4:"core";s:4:"slug";s:7:"default";s:8:"language";s:5:"zh_CN";s:7:"version";s:5:"4.9.1";s:7:"updated";s:19:"2017-11-17 22:20:52";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.1/zh_CN.zip";s:10:"autoupdate";b:1;}}}', 'no');
INSERT INTO `wp_options` VALUES(117, '_site_transient_update_plugins', 'O:8:"stdClass":4:{s:12:"last_checked";i:1512745081;s:8:"response";a:0:{}s:12:"translations";a:1:{i:0;a:7:{s:4:"type";s:6:"plugin";s:4:"slug";s:7:"akismet";s:8:"language";s:5:"zh_CN";s:7:"version";s:5:"4.0.1";s:7:"updated";s:19:"2017-11-10 03:23:38";s:7:"package";s:74:"https://downloads.wordpress.org/translation/plugin/akismet/4.0.1/zh_CN.zip";s:10:"autoupdate";b:1;}}s:9:"no_update";a:2:{s:19:"akismet/akismet.php";O:8:"stdClass":9:{s:2:"id";s:21:"w.org/plugins/akismet";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"4.0.1";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/akismet.4.0.1.zip";s:5:"icons";a:3:{s:2:"1x";s:59:"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272";s:2:"2x";s:59:"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272";s:7:"default";s:59:"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272";}s:7:"banners";a:2:{s:2:"1x";s:61:"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904";s:7:"default";s:61:"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904";}s:11:"banners_rtl";a:0:{}}s:9:"hello.php";O:8:"stdClass":9:{s:2:"id";s:25:"w.org/plugins/hello-dolly";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";s:5:"icons";a:3:{s:2:"1x";s:63:"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907";s:2:"2x";s:63:"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907";s:7:"default";s:63:"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907";}s:7:"banners";a:2:{s:2:"1x";s:65:"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342";s:7:"default";s:65:"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342";}s:11:"banners_rtl";a:0:{}}}}', 'no');
INSERT INTO `wp_options` VALUES(120, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1512745090;s:7:"checked";a:1:{s:8:"hmj-blog";s:3:"1.1";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'no');
INSERT INTO `wp_options` VALUES(121, '_site_transient_timeout_browser_cb0f25941c7ee58acd15fece4d84c18b', '1513252474', 'no');
INSERT INTO `wp_options` VALUES(122, '_site_transient_browser_cb0f25941c7ee58acd15fece4d84c18b', 'a:10:{s:4:"name";s:6:"Chrome";s:7:"version";s:12:"62.0.3202.94";s:8:"platform";s:7:"Windows";s:10:"update_url";s:29:"https://www.google.com/chrome";s:7:"img_src";s:43:"http://s.w.org/images/browsers/chrome.png?1";s:11:"img_src_ssl";s:44:"https://s.w.org/images/browsers/chrome.png?1";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;s:6:"mobile";b:0;}', 'no');
INSERT INTO `wp_options` VALUES(123, 'can_compress_scripts', '1', 'no');
INSERT INTO `wp_options` VALUES(129, 'current_theme', 'HMJ-Blog', 'yes');
INSERT INTO `wp_options` VALUES(130, 'theme_mods_twentysixteen', 'a:4:{i:0;b:0;s:18:"nav_menu_locations";a:0:{}s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1512745144;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes');
INSERT INTO `wp_options` VALUES(131, 'theme_switched', '', 'yes');
INSERT INTO `wp_options` VALUES(132, '_transient_twentysixteen_categories', '1', 'yes');
INSERT INTO `wp_options` VALUES(133, '_site_transient_timeout_theme_roots', '1512746871', 'no');
INSERT INTO `wp_options` VALUES(134, '_site_transient_theme_roots', 'a:1:{s:8:"hmj-blog";s:7:"/themes";}', 'no');
INSERT INTO `wp_options` VALUES(136, 'auto_updater.lock', '1512745080', 'no');
INSERT INTO `wp_options` VALUES(138, 'theme_mods_hmj-blog', 'a:3:{i:0;b:0;s:18:"nav_menu_locations";a:2:{s:7:"topmenu";i:2;s:7:"primary";i:3;}s:18:"custom_css_post_id";i:-1;}', 'yes');
INSERT INTO `wp_options` VALUES(139, 'widget_my-recent-comments', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES(140, 'widget_links', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES(141, 'widget_bd_random_post_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES(142, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes');

CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=30 ;

INSERT INTO `wp_postmeta` VALUES(5, 5, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES(6, 5, '_edit_lock', '1512745149:1');
INSERT INTO `wp_postmeta` VALUES(7, 5, '_wp_page_template', 'page-respond.php');
INSERT INTO `wp_postmeta` VALUES(8, 7, '_menu_item_type', 'post_type');
INSERT INTO `wp_postmeta` VALUES(9, 7, '_menu_item_menu_item_parent', '0');
INSERT INTO `wp_postmeta` VALUES(10, 7, '_menu_item_object_id', '5');
INSERT INTO `wp_postmeta` VALUES(11, 7, '_menu_item_object', 'page');
INSERT INTO `wp_postmeta` VALUES(12, 7, '_menu_item_target', '');
INSERT INTO `wp_postmeta` VALUES(13, 7, '_menu_item_classes', 'a:1:{i:0;s:0:"";}');
INSERT INTO `wp_postmeta` VALUES(14, 7, '_menu_item_xfn', '');
INSERT INTO `wp_postmeta` VALUES(15, 7, '_menu_item_url', '');
INSERT INTO `wp_postmeta` VALUES(17, 8, '_menu_item_type', 'custom');
INSERT INTO `wp_postmeta` VALUES(18, 8, '_menu_item_menu_item_parent', '0');
INSERT INTO `wp_postmeta` VALUES(19, 8, '_menu_item_object_id', '8');
INSERT INTO `wp_postmeta` VALUES(20, 8, '_menu_item_object', 'custom');
INSERT INTO `wp_postmeta` VALUES(21, 8, '_menu_item_target', '');
INSERT INTO `wp_postmeta` VALUES(22, 8, '_menu_item_classes', 'a:1:{i:0;s:0:"";}');
INSERT INTO `wp_postmeta` VALUES(23, 8, '_menu_item_xfn', '');
INSERT INTO `wp_postmeta` VALUES(24, 8, '_menu_item_url', 'http://localhost/ssrepwrod/');

CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
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
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=10 ;

INSERT INTO `wp_posts` VALUES(3, 1, '2017-12-07 19:54:35', '0000-00-00 00:00:00', '', '自动草稿', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-12-07 19:54:35', '0000-00-00 00:00:00', '', 0, 'http://localhost/ssrepwrod/?p=3', 0, 'post', '', 0);
INSERT INTO `wp_posts` VALUES(5, 1, '2017-12-08 23:01:26', '2017-12-08 15:01:26', '', '留言板', '', 'publish', 'open', 'closed', '', 'respond', '', '', '2017-12-08 23:01:26', '2017-12-08 15:01:26', '', 0, 'http://localhost/ssrepwrod/?page_id=5', 0, 'page', '', 0);
INSERT INTO `wp_posts` VALUES(6, 1, '2017-12-08 23:01:26', '2017-12-08 15:01:26', '', '留言板', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2017-12-08 23:01:26', '2017-12-08 15:01:26', '', 5, 'http://localhost/ssrepwrod/2017/12/08/5-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(7, 1, '2017-12-08 23:01:49', '2017-12-08 15:01:49', ' ', '', '', 'publish', 'closed', 'closed', '', '7', '', '', '2017-12-08 23:01:49', '2017-12-08 15:01:49', '', 0, 'http://localhost/ssrepwrod/?p=7', 2, 'nav_menu_item', '', 0);
INSERT INTO `wp_posts` VALUES(8, 1, '2017-12-08 23:01:49', '2017-12-08 15:01:49', '', '首页', '', 'publish', 'closed', 'closed', '', '%e9%a6%96%e9%a1%b5', '', '', '2017-12-08 23:01:49', '2017-12-08 15:01:49', '', 0, 'http://localhost/ssrepwrod/?p=8', 1, 'nav_menu_item', '', 0);

CREATE TABLE IF NOT EXISTS `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=4 ;

INSERT INTO `wp_terms` VALUES(1, '未分类', 'uncategorized', 0);
INSERT INTO `wp_terms` VALUES(2, '顶', '%e9%a1%b6', 0);
INSERT INTO `wp_terms` VALUES(3, '主', '%e4%b8%bb', 0);

CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `wp_term_relationships` VALUES(7, 3, 0);
INSERT INTO `wp_term_relationships` VALUES(8, 3, 0);

CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=4 ;

INSERT INTO `wp_term_taxonomy` VALUES(1, 1, 'category', '', 0, 0);
INSERT INTO `wp_term_taxonomy` VALUES(2, 2, 'nav_menu', '', 0, 0);
INSERT INTO `wp_term_taxonomy` VALUES(3, 3, 'nav_menu', '', 0, 2);

CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=26 ;

INSERT INTO `wp_usermeta` VALUES(1, 1, 'nickname', 'myblog');
INSERT INTO `wp_usermeta` VALUES(2, 1, 'first_name', '');
INSERT INTO `wp_usermeta` VALUES(3, 1, 'last_name', '');
INSERT INTO `wp_usermeta` VALUES(4, 1, 'description', '');
INSERT INTO `wp_usermeta` VALUES(5, 1, 'rich_editing', 'true');
INSERT INTO `wp_usermeta` VALUES(6, 1, 'syntax_highlighting', 'true');
INSERT INTO `wp_usermeta` VALUES(7, 1, 'comment_shortcuts', 'false');
INSERT INTO `wp_usermeta` VALUES(8, 1, 'admin_color', 'fresh');
INSERT INTO `wp_usermeta` VALUES(9, 1, 'use_ssl', '0');
INSERT INTO `wp_usermeta` VALUES(10, 1, 'show_admin_bar_front', 'true');
INSERT INTO `wp_usermeta` VALUES(11, 1, 'locale', '');
INSERT INTO `wp_usermeta` VALUES(12, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}');
INSERT INTO `wp_usermeta` VALUES(13, 1, 'wp_user_level', '10');
INSERT INTO `wp_usermeta` VALUES(14, 1, 'dismissed_wp_pointers', '');
INSERT INTO `wp_usermeta` VALUES(15, 1, 'show_welcome_panel', '1');
INSERT INTO `wp_usermeta` VALUES(16, 1, 'session_tokens', 'a:2:{s:64:"ecc223a35443effe069dccc45259b44b2b6fe50caaf662bd57919f3c3f9d8cb4";a:4:{s:10:"expiration";i:1512820467;s:2:"ip";s:3:"::1";s:2:"ua";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36";s:5:"login";i:1512647667;}s:64:"b9a003aa8b1db57cc0ab4dcf865bc68801ba473a1e2ba7b2239b93d55a0ec21b";a:4:{s:10:"expiration";i:1512917938;s:2:"ip";s:3:"::1";s:2:"ua";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36";s:5:"login";i:1512745138;}}');
INSERT INTO `wp_usermeta` VALUES(17, 1, 'wp_dashboard_quick_press_last_post_id', '3');
INSERT INTO `wp_usermeta` VALUES(18, 1, 'community-events-location', 'a:1:{s:2:"ip";s:2:"::";}');
INSERT INTO `wp_usermeta` VALUES(19, 1, 'wp_user-settings', 'editor=tinymce&post_dfw=off');
INSERT INTO `wp_usermeta` VALUES(20, 1, 'wp_user-settings-time', '1512745135');
INSERT INTO `wp_usermeta` VALUES(21, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}');
INSERT INTO `wp_usermeta` VALUES(22, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:"add-post_tag";}');
INSERT INTO `wp_usermeta` VALUES(23, 1, 'closedpostboxes_page', 'a:0:{}');
INSERT INTO `wp_usermeta` VALUES(24, 1, 'metaboxhidden_page', 'a:2:{i:0;s:10:"postcustom";i:1;s:9:"authordiv";}');
INSERT INTO `wp_usermeta` VALUES(25, 1, 'nav_menu_recently_edited', '2');

CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=2 ;

INSERT INTO `wp_users` VALUES(1, 'myblog', '$P$BDSkSPyZRZmZLpUKUOiUt/zTnlykA7/', 'myblog', '', '', '2017-12-07 11:54:12', '', 0, 'myblog');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
