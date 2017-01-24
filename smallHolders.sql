# WordPress MySQL database migration
#
# Generated: Tuesday 24. January 2017 15:01 UTC
# Hostname: localhost
# Database: `smallHolders`
# --------------------------------------------------------

/*!40101 SET NAMES utf8mb4 */;

SET sql_mode='NO_AUTO_VALUE_ON_ZERO';



#
# Delete any existing table `wp_commentmeta`
#

DROP TABLE IF EXISTS `wp_commentmeta`;


#
# Table structure of table `wp_commentmeta`
#

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_commentmeta`
#

#
# End of data contents of table `wp_commentmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_comments`
#

DROP TABLE IF EXISTS `wp_comments`;


#
# Table structure of table `wp_comments`
#

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_comments`
#
INSERT INTO `wp_comments` ( `comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Mr WordPress', '', 'https://wordpress.org/', '', '2015-09-21 16:17:31', '2015-09-21 16:17:31', 'Hi, this is a comment.\nTo delete a comment, just log in and view the post&#039;s comments. There you will have the option to edit or delete them.', 0, '1', '', '', 0, 0),
(2, 1, 'BKDF', 'andres.angel@gmail.com', '', '::1', '2016-02-02 20:19:38', '2016-02-02 20:19:38', 'artarstqe4', 0, '1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36', '', 0, 1) ;

#
# End of data contents of table `wp_comments`
# --------------------------------------------------------



#
# Delete any existing table `wp_custom_options_plus`
#

DROP TABLE IF EXISTS `wp_custom_options_plus`;


#
# Table structure of table `wp_custom_options_plus`
#

CREATE TABLE `wp_custom_options_plus` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `label` varchar(100) NOT NULL,
  `name` varchar(80) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_custom_options_plus`
#
INSERT INTO `wp_custom_options_plus` ( `id`, `label`, `name`, `value`) VALUES
(1, 'Home Button Label', 'home_button_label', 'Learn More'),
(2, 'Home Button Link', 'home_button_link', '/about/') ;

#
# End of data contents of table `wp_custom_options_plus`
# --------------------------------------------------------



#
# Delete any existing table `wp_links`
#

DROP TABLE IF EXISTS `wp_links`;


#
# Table structure of table `wp_links`
#

CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_links`
#

#
# End of data contents of table `wp_links`
# --------------------------------------------------------



#
# Delete any existing table `wp_options`
#

DROP TABLE IF EXISTS `wp_options`;


#
# Table structure of table `wp_options`
#

CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `option_value` longtext COLLATE utf8_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=1443 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_options`
#
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://smallholder.ag', 'yes'),
(2, 'home', 'http://smallholder.ag', 'yes'),
(3, 'blogname', 'smallholder.ag', 'yes'),
(4, 'blogdescription', 'We are a research group focused on African agriculture - particularly smallholder farmers', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'andres.angel@gmail.com', 'yes'),
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
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:14:{i:0;s:30:"advanced-custom-fields/acf.php";i:1;s:59:"black-studio-tinymce-widget/black-studio-tinymce-widget.php";i:2;s:41:"collapsed-archives/collapsed-archives.php";i:3;s:43:"custom-options-plus/custom-options-plus.php";i:4;s:19:"members/members.php";i:5;s:47:"one-click-child-theme/one-click-child-theme.php";i:6;s:47:"show-current-template/show-current-template.php";i:7;s:39:"simple-custom-css/simple-custom-css.php";i:8;s:45:"simple-local-avatars/simple-local-avatars.php";i:9;s:39:"siteorigin-panels/siteorigin-panels.php";i:10;s:39:"so-widgets-bundle/so-widgets-bundle.php";i:11;s:41:"widget-css-classes/widget-css-classes.php";i:12;s:31:"wp-migrate-db/wp-migrate-db.php";i:13;s:41:"wp-responsive-menu/wp-responsive-menu.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(37, 'comment_max_links', '2', 'yes'),
(38, 'gmt_offset', '0', 'yes'),
(39, 'default_email_category', '1', 'yes'),
(40, 'recently_edited', 'a:5:{i:0;s:95:"/home/smallholder/smallholder.ag/wp-content/themes/smallholder/page-templates/page-publications.php";i:1;s:68:"/home/smallholder/smallholder.ag/wp-content/themes/smallholder/style.css";i:2;s:70:"/home/smallholder/smallholder.ag/wp-content/themes/smallholder/archive.php";i:3;s:67:"/home/smallholder/smallholder.ag/wp-content/plugins/akismet/akismet.php";i:4;s:83:"/Users/Andres/Google Drive/WORDPRESS_SITES/wp-content/themes/smallholder/header.php";}', 'no'),
(41, 'template', 'smallholder', 'yes'),
(42, 'stylesheet', 'smallholder', 'yes'),
(43, 'comment_whitelist', '1', 'yes'),
(44, 'blacklist_keys', '', 'no'),
(45, 'comment_registration', '0', 'yes'),
(46, 'html_type', 'text/html', 'yes'),
(47, 'use_trackback', '0', 'yes'),
(48, 'default_role', 'subscriber', 'yes'),
(49, 'db_version', '38590', 'yes'),
(50, 'uploads_use_yearmonth_folders', '1', 'yes'),
(51, 'upload_path', '', 'yes'),
(52, 'blog_public', '1', 'yes'),
(53, 'default_link_category', '2', 'yes'),
(54, 'show_on_front', 'posts', 'yes'),
(55, 'tag_base', '', 'yes'),
(56, 'show_avatars', '1', 'yes'),
(57, 'avatar_rating', 'G', 'yes'),
(58, 'upload_url_path', '', 'yes'),
(59, 'thumbnail_size_w', '150', 'yes'),
(60, 'thumbnail_size_h', '150', 'yes'),
(61, 'thumbnail_crop', '1', 'yes'),
(62, 'medium_size_w', '300', 'yes'),
(63, 'medium_size_h', '300', 'yes'),
(64, 'avatar_default', 'mystery', 'yes'),
(65, 'large_size_w', '1024', 'yes'),
(66, 'large_size_h', '1024', 'yes'),
(67, 'image_default_link_type', 'file', 'yes'),
(68, 'image_default_size', '', 'yes'),
(69, 'image_default_align', '', 'yes'),
(70, 'close_comments_for_old_posts', '0', 'yes'),
(71, 'close_comments_days_old', '14', 'yes'),
(72, 'thread_comments', '1', 'yes'),
(73, 'thread_comments_depth', '5', 'yes'),
(74, 'page_comments', '0', 'yes'),
(75, 'comments_per_page', '50', 'yes'),
(76, 'default_comments_page', 'newest', 'yes'),
(77, 'comment_order', 'asc', 'yes'),
(78, 'sticky_posts', 'a:1:{i:0;i:1;}', 'yes'),
(79, 'widget_categories', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_text', 'a:3:{i:1;a:0:{}i:2;a:4:{s:5:"title";s:7:"Twitter";s:4:"text";s:509:"<a class="twitter-timeline"  href="https://twitter.com/SmallholderAg" data-widget-id="698623797289684992" data-chrome="nofooter noborders noscrollbar transparent"  data-tweet-limit="10">Tweets by @SmallholderAg</a>\r\n<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?\'http\':\'https\';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+"://platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>";s:6:"filter";b:0;s:7:"classes";N;}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(82, 'uninstall_plugins', 'a:2:{s:39:"simple-custom-css/simple-custom-css.php";s:15:"sccss_uninstall";s:45:"simple-local-avatars/simple-local-avatars.php";s:30:"simple_local_avatars_uninstall";}', 'no'),
(83, 'timezone_string', '', 'yes'),
(84, 'page_for_posts', '0', 'yes'),
(85, 'page_on_front', '0', 'yes'),
(86, 'default_post_format', '0', 'yes'),
(87, 'link_manager_enabled', '0', 'yes'),
(88, 'finished_splitting_shared_terms', '1', 'yes'),
(89, 'initial_db_version', '33056', 'yes'),
(90, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:66:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:10:"list_roles";b:1;s:12:"create_roles";b:1;s:12:"delete_roles";b:1;s:10:"edit_roles";b:1;s:16:"restrict_content";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(91, 'widget_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(92, 'widget_recent-posts', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(93, 'widget_recent-comments', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_archives', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_meta', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'sidebars_widgets', 'a:4:{s:19:"wp_inactive_widgets";a:0:{}s:19:"primary-widget-area";a:3:{i:0;s:22:"members-widget-users-2";i:1;s:27:"collapsed_archives_widget-2";i:2;s:11:"tag_cloud-2";}s:19:"twitter-widget-area";a:1:{i:0;s:6:"text-2";}s:13:"array_version";i:3;}', 'yes'),
(98, 'cron', 'a:6:{i:1485271217;a:1:{s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1485274651;a:1:{s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1485274678;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1485275116;a:1:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1485286494;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(131, 'theme_mods_twentyfifteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1442852569;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(132, 'current_theme', 'My Theme', 'yes'),
(133, 'theme_mods_twentythirteen', 'a:2:{i:0;b:0;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1442949393;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:8:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";i:6;s:14:"recent-posts-5";i:7;s:7:"pages-3";}s:9:"sidebar-2";a:1:{i:0;s:14:"recent-posts-4";}s:18:"orphaned_widgets_1";a:0:{}}}}', 'yes'),
(134, 'theme_switched', '', 'yes'),
(135, 'widget_calendar', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes') ;
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(136, 'widget_nav_menu', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(137, 'widget_pages', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(139, 'widget_tag_cloud', 'a:3:{i:1;a:0:{}i:2;a:3:{s:5:"title";s:4:"Tags";s:8:"taxonomy";s:8:"post_tag";s:7:"classes";s:9:" no-cloud";}s:12:"_multiwidget";i:1;}', 'yes'),
(141, 'widget_widget_twentyfourteen_ephemera', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(144, 'theme_mods_twentyfourteen', 'a:2:{i:0;b:0;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1442852634;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(145, 'theme_switched_via_customizer', '', 'yes'),
(163, 'theme_mods_smallholderAG', 'a:2:{i:0;b:0;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1442949357;s:4:"data";a:3:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:8:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";i:6;s:14:"recent-posts-5";i:7;s:7:"pages-3";}s:9:"sidebar-2";a:1:{i:0;s:14:"recent-posts-4";}}}}', 'yes'),
(189, 'recently_activated', 'a:0:{}', 'yes'),
(190, 'theme_mods_smallholdersAG', 'a:3:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:7:"primary";i:2;}s:16:"sidebars_widgets";a:2:{s:4:"time";i:1453319130;s:4:"data";a:5:{s:19:"wp_inactive_widgets";a:2:{i:0;s:10:"archives-4";i:1;s:5:"rss-3";}s:18:"orphaned_widgets_1";a:8:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";i:6;s:14:"recent-posts-5";i:7;s:7:"pages-3";}s:18:"orphaned_widgets_2";a:1:{i:0;s:14:"recent-posts-4";}s:9:"sidebar-1";a:1:{i:0;s:10:"archives-6";}s:9:"sidebar-2";a:0:{}}}}', 'yes'),
(191, 'allowedthemes', 'a:1:{s:14:"smallholdersag";b:1;}', 'yes'),
(197, 'sccss_settings', 'a:1:{s:13:"sccss-content";s:181:".custom-contributor > ul > li,\r\n.custom-archives > div > ul > li {\r\n  margin-bottom: 5px;\r\n}\r\n\r\n.no-cloud a {\r\n	font-size: 1em !important;\r\n	display: block;\r\n	margin-bottom: 5px;\r\n}";}', 'yes'),
(202, 'nav_menu_options', 'a:1:{s:8:"auto_add";a:0:{}}', 'yes'),
(236, 'auto_core_update_notified', 'a:4:{s:4:"type";s:7:"success";s:5:"email";s:22:"andres.angel@gmail.com";s:7:"version";s:5:"4.3.2";s:9:"timestamp";i:1453312339;}', 'yes'),
(256, 'site_icon', '267', 'yes'),
(257, 'medium_large_size_w', '768', 'yes'),
(258, 'medium_large_size_h', '0', 'yes'),
(259, 'db_upgraded', '', 'yes'),
(272, 'theme_mods_popper', 'a:3:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:7:"primary";i:2;}s:16:"sidebars_widgets";a:2:{s:4:"time";i:1455323361;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:2:{i:0;s:10:"archives-4";i:1;s:5:"rss-3";}s:9:"sidebar-1";a:8:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";i:6;s:14:"recent-posts-5";i:7;s:7:"pages-3";}s:18:"orphaned_widgets_1";a:1:{i:0;s:14:"recent-posts-4";}s:18:"orphaned_widgets_2";a:1:{i:0;s:10:"archives-6";}}}}', 'yes'),
(273, 'widget_widget_popper_recent_comments', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(274, 'widget_widget_popper_recent_posts', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(278, 'theme_mods_smallholder', 'a:6:{i:0;b:0;s:18:"nav_menu_locations";a:2:{s:7:"primary";i:2;s:4:"main";i:2;}s:14:"layout_setting";s:10:"no-sidebar";s:12:"header_image";s:57:"http://smallholder.ag/wp-content/uploads/2016/02/hero.jpg";s:17:"header_image_data";O:8:"stdClass":5:{s:13:"attachment_id";i:202;s:3:"url";s:57:"http://smallholder.ag/wp-content/uploads/2016/02/hero.jpg";s:13:"thumbnail_url";s:57:"http://smallholder.ag/wp-content/uploads/2016/02/hero.jpg";s:6:"height";i:338;s:5:"width";i:960;}s:18:"custom_css_post_id";i:-1;}', 'yes'),
(438, 'siteorigin_panels_initial_version', '2.2.2', 'no'),
(439, 'siteorigin_panels_settings', 'a:0:{}', 'yes'),
(440, 'widget_siteorigin-panels-post-content', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(441, 'widget_siteorigin-panels-postloop', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(442, 'widget_siteorigin-panels-builder', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(445, 'widget_sow-button', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(446, 'widget_sow-google-map', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(447, 'widget_sow-image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(448, 'widget_sow-slider', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(449, 'widget_sow-post-carousel', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(450, 'widget_sow-editor', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(451, 'siteorigin_widget_bundle_version', '1.7.2', 'yes'),
(452, 'siteorigin_widgets_old_widgets', '/home/smallholder/smallholder.ag/wp-content/plugins/so-widgets-bundle/widgets/button/button.php,/home/smallholder/smallholder.ag/wp-content/plugins/so-widgets-bundle/widgets/cta/cta.php,/home/smallholder/smallholder.ag/wp-content/plugins/so-widgets-bundle/widgets/contact/contact.php,/home/smallholder/smallholder.ag/wp-content/plugins/so-widgets-bundle/widgets/editor/editor.php,/home/smallholder/smallholder.ag/wp-content/plugins/so-widgets-bundle/widgets/features/features.php,/home/smallholder/smallholder.ag/wp-content/plugins/so-widgets-bundle/widgets/google-map/google-map.php,/home/smallholder/smallholder.ag/wp-content/plugins/so-widgets-bundle/widgets/headline/headline.php,/home/smallholder/smallholder.ag/wp-content/plugins/so-widgets-bundle/widgets/hero/hero.php,/home/smallholder/smallholder.ag/wp-content/plugins/so-widgets-bundle/widgets/icon/icon.php,/home/smallholder/smallholder.ag/wp-content/plugins/so-widgets-bundle/widgets/image/image.php,/home/smallholder/smallholder.ag/wp-content/plugins/so-widgets-bundle/widgets/image-grid/image-grid.php,/home/smallholder/smallholder.ag/wp-content/plugins/so-widgets-bundle/widgets/slider/slider.php,/home/smallholder/smallholder.ag/wp-content/plugins/so-widgets-bundle/widgets/layout-slider/layout-slider.php,/home/smallholder/smallholder.ag/wp-content/plugins/so-widgets-bundle/widgets/post-carousel/post-carousel.php,/home/smallholder/smallholder.ag/wp-content/plugins/so-widgets-bundle/widgets/price-table/price-table.php,/home/smallholder/smallholder.ag/wp-content/plugins/so-widgets-bundle/widgets/simple-masonry/simple-masonry.php,/home/smallholder/smallholder.ag/wp-content/plugins/so-widgets-bundle/widgets/social-media-buttons/social-media-buttons.php,/home/smallholder/smallholder.ag/wp-content/plugins/so-widgets-bundle/widgets/taxonomy/taxonomy.php,/home/smallholder/smallholder.ag/wp-content/plugins/so-widgets-bundle/widgets/testimonial/testimonial.php,/home/smallholder/smallholder.ag/wp-content/plugins/so-widgets-bundle/widgets/video/video.php', 'yes'),
(454, 'widget_black-studio-tinymce', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(538, 'WPLANG', '', 'yes'),
(557, 'rewrite_rules', 'a:87:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:12:"robots\\.txt$";s:18:"index.php?robots=1";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:"[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"([^/]+)/embed/?$";s:37:"index.php?name=$matches[1]&embed=true";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:24:"([^/]+)(?:/([0-9]+))?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:22:"[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";}', 'yes'),
(607, 'widget_twitter-follow', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(608, 'widget_periscope-on-air', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(614, 'widget_display-latest-tweets', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(623, 'real_twitter_plugin_options', 'a:12:{s:9:"marginTop";i:100;s:7:"pageURL";s:11:"BarackObama";s:4:"page";s:21:"115922316096420379836";s:5:"width";s:3:"292";s:6:"height";s:3:"300";s:9:"alignment";s:4:"left";s:12:"color_scheme";s:5:"light";s:6:"header";s:6:"header";s:6:"footer";s:6:"footer";s:6:"border";s:4:"true";s:9:"scrollbar";s:9:"scrollbar";s:9:"linkcolor";s:7:"#2EA2CC";}', 'yes'),
(631, 'widget_rpwe_widget', 'a:2:{i:2;a:32:{s:5:"title";s:12:"Recent Posts";s:9:"title_url";s:0:"";s:13:"ignore_sticky";b:1;s:15:"exclude_current";b:1;s:5:"limit";i:5;s:6:"offset";i:0;s:5:"order";s:4:"DESC";s:7:"orderby";s:4:"date";s:9:"post_type";a:1:{i:0;s:4:"post";}s:11:"post_status";s:7:"publish";s:3:"cat";N;s:3:"tag";N;s:8:"taxonomy";s:0:"";s:7:"excerpt";b:0;s:6:"length";i:10;s:4:"date";b:1;s:13:"date_relative";b:0;s:13:"date_modified";b:0;s:8:"readmore";b:0;s:13:"readmore_text";s:12:"Read More »";s:13:"comment_count";b:0;s:5:"thumb";b:1;s:12:"thumb_height";i:45;s:11:"thumb_width";i:45;s:13:"thumb_default";s:36:"http://placehold.it/45x45/f0f0f0/ccc";s:11:"thumb_align";s:14:"rpwe-alignleft";s:14:"styles_default";b:1;s:5:"cssID";s:0:"";s:9:"css_class";s:0:"";s:3:"css";s:1157:".rpwe-block ul{\r\nlist-style: none !important;\r\nmargin-left: 0 !important;\r\npadding-left: 0 !important;\r\n}\r\n\r\n.rpwe-block li{\r\nborder-bottom: 1px solid #eee;\r\nmargin-bottom: 10px;\r\npadding-bottom: 10px;\r\nlist-style-type: none;\r\n}\r\n\r\n.rpwe-block a{\r\ndisplay: inline !important;\r\ntext-decoration: none;\r\n}\r\n\r\n.rpwe-block h3{\r\nbackground: none !important;\r\nclear: none;\r\nmargin-bottom: 0 !important;\r\nmargin-top: 0 !important;\r\nfont-weight: 400;\r\nfont-size: 12px !important;\r\nline-height: 1.5em;\r\n}\r\n\r\n.rpwe-thumb{\r\nborder: 1px solid #eee !important;\r\nbox-shadow: none !important;\r\nmargin: 2px 10px 2px 0;\r\npadding: 3px !important;\r\n}\r\n\r\n.rpwe-summary{\r\nfont-size: 12px;\r\n}\r\n\r\n.rpwe-time{\r\ncolor: #bbb;\r\nfont-size: 11px;\r\n}\r\n\r\n.rpwe-comment{\r\ncolor: #bbb;\r\nfont-size: 11px;\r\npadding-left: 5px;\r\n}\r\n\r\n.rpwe-alignleft{\r\ndisplay: inline;\r\nfloat: left;\r\n}\r\n\r\n.rpwe-alignright{\r\ndisplay: inline;\r\nfloat: right;\r\n}\r\n\r\n.rpwe-aligncenter{\r\ndisplay: block;\r\nmargin-left: auto;\r\nmargin-right: auto;\r\n}\r\n\r\n.rpwe-clearfix:before,\r\n.rpwe-clearfix:after{\r\ncontent: "";\r\ndisplay: table !important;\r\n}\r\n\r\n.rpwe-clearfix:after{\r\nclear: both;\r\n}\r\n\r\n.rpwe-clearfix{\r\nzoom: 1;\r\n}\r\n";s:6:"before";s:0:"";s:5:"after";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(636, 'widget_tp_widget_recent_tweets', 'a:2:{i:2;a:9:{s:5:"title";s:7:"Twitter";s:11:"consumerkey";s:25:"X46TieyEmdgfasFgQNQMbzLGz";s:14:"consumersecret";s:50:"firMoRdhAUZ8Q2FgEtb4yosUVFyWlStNMhEbyL10J4E0cCV8Rj";s:11:"accesstoken";s:50:"275263559-lZcZHgG9ih3bEDPJFWskwXeNmzqtJX15mPCPPo5C";s:17:"accesstokensecret";s:45:"Rjo7sQ20pRa32aOEjkg9QzfZ5hGwf3VhEJtutQ1xsTAAf";s:9:"cachetime";s:2:"12";s:8:"username";s:4:"nasa";s:12:"tweetstoshow";s:1:"6";s:14:"excludereplies";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(638, 'tp_twitter_plugin_tweets', 's:2624:"a:10:{i:0;a:3:{s:10:"created_at";s:30:"Sat Feb 13 20:51:01 +0000 2016";s:4:"text";s:140:"Just in time for Valentine’s Day, zinnias growing on the @Space_Station will be harvested: https://t.co/O4dODjHW6P https://t.co/le9RV2BZEG";s:9:"status_id";s:18:"698610348937650176";}i:1;a:3:{s:10:"created_at";s:30:"Sat Feb 13 20:07:47 +0000 2016";s:4:"text";s:142:"RT @StationCDRKelly: That\'s all the comm I got for @Tumblr #YearInSpace #AnswerTime. Thank you for the great Qs! https://t.co/5YwQUPlhEI ht…";s:9:"status_id";s:18:"698599469256822784";}i:2;a:3:{s:10:"created_at";s:30:"Sat Feb 13 19:26:16 +0000 2016";s:4:"text";s:129:"RT @tumblr: Ask @StationCDRKelly your questions right here on Tumblr: https://t.co/f7PZfY6BP0 #AnswerTime https://t.co/hOd5eyIq9i";s:9:"status_id";s:18:"698589020985491457";}i:3;a:3:{s:10:"created_at";s:30:"Sat Feb 13 18:48:49 +0000 2016";s:4:"text";s:142:"RT @StationCDRKelly: Here we go! @Tumblr #AnswerTime from @space_station starts now! https://t.co/5YwQUPlhEI #YearInSpace https://t.co/k3dr…";s:9:"status_id";s:18:"698579596048904192";}i:4;a:3:{s:10:"created_at";s:30:"Sat Feb 13 18:44:29 +0000 2016";s:4:"text";s:139:"LIVE NOW: First ever @tumblr #AnswerTime from @Space_Station. Ask @StationCDRKelly your Qs: https://t.co/X9Eyz79vHd https://t.co/WSoiwbl5es";s:9:"status_id";s:18:"698578504267526144";}i:5;a:3:{s:10:"created_at";s:30:"Sat Feb 13 18:01:07 +0000 2016";s:4:"text";s:141:"RT @tumblr: Join @StationCDRKelly at 1:45pm EST as he answers your questions. From space.  Ask away: https://t.co/hyuifWSlWL https://t.co/…";s:9:"status_id";s:18:"698567592538206208";}i:6;a:3:{s:10:"created_at";s:30:"Sat Feb 13 17:29:07 +0000 2016";s:4:"text";s:142:"RT @StationCDRKelly: #Sunrise! Good day for @Tumblr #AnswerTime about my #YearInSpace! Who\'s in? 1:45p ET https://t.co/dMBajSQz12 https://t…";s:9:"status_id";s:18:"698559539482746880";}i:7;a:3:{s:10:"created_at";s:30:"Sat Feb 13 17:03:00 +0000 2016";s:4:"text";s:139:"On @Tumblr? Join @StationCDRKelly at 1:45pm ET for 1st ever #AnswerTime from space. Ask Qs: https://t.co/X9Eyz79vHd https://t.co/7mBbtIruCu";s:9:"status_id";s:18:"698552967553794048";}i:8;a:3:{s:10:"created_at";s:30:"Sat Feb 13 06:00:31 +0000 2016";s:4:"text";s:128:"RT @StationCDRKelly: Day 322. #Japan at night this morning. #GoodNight from @space_station! #YearInSpace https://t.co/lZcmu5aPKS";s:9:"status_id";s:18:"698386246817726464";}i:9;a:3:{s:10:"created_at";s:30:"Sat Feb 13 03:55:03 +0000 2016";s:4:"text";s:96:"RT @astro_tim: The #sunset never gets old here -- @Goodnight from #ISS . https://t.co/bnezAgYzU9";s:9:"status_id";s:18:"698354674546708480";}}";', 'yes'),
(639, 'tp_twitter_plugin_last_cache_time', '1455416158', 'yes'),
(689, '_fl_builder_version', '1.7.3', 'yes'),
(737, 'accordion_cat_children', 'a:0:{}', 'yes'),
(739, 'category_children', 'a:1:{i:5;a:2:{i:0;i:6;i:1;i:8;}}', 'yes'),
(790, 'acf_version', '4.4.11', 'yes'),
(817, 'wpr_optionsframework', 'a:1:{s:2:"id";s:15:"wprmenu_options";}', 'yes'),
(818, 'wprmenu_options', 'a:22:{s:7:"enabled";s:1:"1";s:4:"menu";s:1:"2";s:4:"hide";s:9:".menu-nav";s:5:"swipe";s:2:"no";s:10:"search_box";s:4:"hide";s:15:"search_box_text";s:9:"Search...";s:7:"zooming";s:2:"no";s:15:"menu_symbol_pos";s:4:"left";s:9:"bar_title";s:4:"MENU";s:8:"bar_logo";s:0:"";s:8:"position";s:3:"top";s:10:"from_width";s:3:"768";s:8:"how_wide";s:2:"80";s:7:"bar_bgd";s:7:"#1d2326";s:9:"bar_color";s:7:"#F2F2F2";s:8:"menu_bgd";s:7:"#181b2b";s:10:"menu_color";s:7:"#CFCFCF";s:16:"menu_color_hover";s:7:"#606060";s:15:"menu_icon_color";s:7:"#FFFFFF";s:15:"menu_border_top";s:7:"#0D0D0D";s:18:"menu_border_bottom";s:7:"#131212";s:23:"menu_border_bottom_show";s:3:"yes";}', 'yes'),
(908, 'WCSSC_options', 'a:6:{s:11:"show_number";s:1:"1";s:13:"show_location";s:1:"1";s:12:"show_evenodd";s:1:"1";s:7:"show_id";s:1:"0";s:4:"type";s:1:"2";s:15:"defined_classes";s:44:"no-cloud;custom-archives;custom-contributor;";}', 'yes'),
(909, 'WCSSC_db_version', '1.3', 'yes'),
(938, 'widget_baw_widgetarchives_widget_my_archives', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(941, 'collapsArchVersion', '2.0.2', 'yes'),
(942, 'widget_collapsarch', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(946, 'widget_collapsed_archives_widget', 'a:2:{i:2;a:5:{s:5:"title";s:8:"Archives";s:5:"count";i:0;s:13:"use_triangles";i:0;s:9:"asc_order";i:0;s:7:"classes";s:16:" custom-archives";}s:12:"_multiwidget";i:1;}', 'yes'),
(954, 'widget_urwa_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(955, 'widget_urwa_widget_logged_in', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(960, 'members_settings', 'a:10:{s:12:"role_manager";b:1;s:20:"explicit_denied_caps";b:1;s:11:"multi_roles";b:1;s:19:"content_permissions";b:1;s:25:"content_permissions_error";s:59:"Sorry, but you do not have permission to view this content.";s:12:"users_widget";b:1;s:18:"private_feed_error";s:54:"You must be logged into the site to view this content.";s:17:"login_form_widget";b:0;s:12:"private_blog";b:0;s:12:"private_feed";b:0;}', 'yes'),
(961, 'widget_members-widget-users', 'a:2:{i:2;a:12:{s:5:"title";s:12:"Contributors";s:5:"order";s:3:"ASC";s:7:"orderby";s:12:"display_name";s:8:"meta_key";s:0:"";s:10:"meta_value";s:0:"";s:6:"search";s:0:"";s:4:"role";s:6:"editor";s:7:"include";s:0:"";s:7:"exclude";s:0:"";s:6:"offset";i:0;s:6:"number";s:0:"";s:7:"classes";s:19:" custom-contributor";}s:12:"_multiwidget";i:1;}', 'yes'),
(1106, 'cop_version', '1.5', 'yes'),
(1224, 'can_compress_scripts', '0', 'no'),
(1226, 'siteorigin_widgets_new_widgets', 'a:0:{}', 'yes'),
(1264, 'fresh_site', '0', 'yes') ;

#
# End of data contents of table `wp_options`
# --------------------------------------------------------



#
# Delete any existing table `wp_postmeta`
#

DROP TABLE IF EXISTS `wp_postmeta`;


#
# Table structure of table `wp_postmeta`
#

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=831 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_postmeta`
#
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(2, 1, '_edit_lock', '1456447040:1'),
(3, 5, '_wp_attached_file', '2015/09/2013.jpg'),
(4, 5, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:3124;s:6:"height";i:2231;s:4:"file";s:16:"2015/09/2013.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"2013-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:16:"2013-300x214.jpg";s:5:"width";i:300;s:6:"height";i:214;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:17:"2013-1024x731.jpg";s:5:"width";i:1024;s:6:"height";i:731;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:16:"2013-604x270.jpg";s:5:"width";i:604;s:6:"height";i:270;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";d:2.6000000000000001;s:6:"credit";s:6:"Picasa";s:6:"camera";s:8:"SCH-I535";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1392826596;s:9:"copyright";s:0:"";s:12:"focal_length";s:3:"3.7";s:3:"iso";s:3:"100";s:13:"shutter_speed";s:5:"0.025";s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(27, 1, '_edit_last', '1'),
(44, 21, '_edit_last', '1'),
(45, 21, '_edit_lock', '1484540588:1'),
(46, 21, '_wp_page_template', 'page-templates/page-sidebar-right.php'),
(47, 23, '_edit_last', '1'),
(48, 23, '_edit_lock', '1484108541:1'),
(49, 23, '_wp_page_template', 'page-templates/page-full-width.php'),
(50, 25, '_menu_item_type', 'post_type'),
(51, 25, '_menu_item_menu_item_parent', '0'),
(52, 25, '_menu_item_object_id', '21'),
(53, 25, '_menu_item_object', 'page'),
(54, 25, '_menu_item_target', ''),
(55, 25, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(56, 25, '_menu_item_xfn', ''),
(57, 25, '_menu_item_url', ''),
(59, 26, '_menu_item_type', 'post_type'),
(60, 26, '_menu_item_menu_item_parent', '0'),
(61, 26, '_menu_item_object_id', '23'),
(62, 26, '_menu_item_object', 'page'),
(63, 26, '_menu_item_target', ''),
(64, 26, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(65, 26, '_menu_item_xfn', ''),
(66, 26, '_menu_item_url', ''),
(78, 34, '_edit_last', '1'),
(79, 34, '_edit_lock', '1456447035:1'),
(84, 36, '_wp_attached_file', '2016/02/descarga.jpg'),
(85, 36, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:400;s:6:"height";i:400;s:4:"file";s:20:"2016/02/descarga.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"descarga-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"descarga-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:20:"sow-carousel-default";a:4:{s:4:"file";s:20:"descarga-272x182.jpg";s:5:"width";i:272;s:6:"height";i:182;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(97, 38, '_wp_attached_file', '2016/02/thumbnail.png'),
(98, 38, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:739;s:6:"height";i:469;s:4:"file";s:21:"2016/02/thumbnail.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"thumbnail-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:21:"thumbnail-300x190.png";s:5:"width";i:300;s:6:"height";i:190;s:9:"mime-type";s:9:"image/png";}s:20:"sow-carousel-default";a:4:{s:4:"file";s:21:"thumbnail-272x182.png";s:5:"width";i:272;s:6:"height";i:182;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(99, 34, '_thumbnail_id', '38'),
(100, 1, '_thumbnail_id', '36'),
(103, 39, '_edit_last', '1'),
(104, 39, '_edit_lock', '1456447031:1'),
(107, 42, '_edit_last', '1'),
(108, 42, '_edit_lock', '1456447028:1'),
(117, 44, '_edit_last', '1'),
(118, 44, '_edit_lock', '1456447023:1'),
(123, 44, '_thumbnail_id', '38'),
(126, 42, '_thumbnail_id', '36'),
(129, 47, '_wp_attached_file', '2016/02/200.jpg'),
(130, 47, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:400;s:6:"height";i:400;s:4:"file";s:15:"2016/02/200.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:15:"200-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:15:"200-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:20:"sow-carousel-default";a:4:{s:4:"file";s:15:"200-272x182.jpg";s:5:"width";i:272;s:6:"height";i:182;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(131, 48, '_wp_attached_file', '2016/02/400.jpg'),
(132, 48, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:600;s:6:"height";i:400;s:4:"file";s:15:"2016/02/400.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:15:"400-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:15:"400-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:20:"sow-carousel-default";a:4:{s:4:"file";s:15:"400-272x182.jpg";s:5:"width";i:272;s:6:"height";i:182;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(133, 39, '_thumbnail_id', '47'),
(136, 49, '_edit_last', '1'),
(137, 49, '_edit_lock', '1456447019:1'),
(138, 49, '_thumbnail_id', '48'),
(161, 57, 'panels_data', 'a:3:{s:7:"widgets";a:1:{i:0;a:6:{s:5:"title";s:0:"";s:4:"text";s:1802:"<p><a href="http://smallholder.ag/wp-content/uploads/2016/02/400.jpg" rel="attachment wp-att-48"><img class="aligncenter  wp-image-48" src="http://smallholder.ag/wp-content/uploads/2016/02/400-300x200.jpg" alt="400" width="470" height="313" /></a></p><p>Árvore é um vegetal de tronco lenhoso cujos ramos só saem a certa altura do solo. Em termos biológicos é uma planta permanentemente lenhosa de grande porte, com raizes pivotantes, caule lenhoso do tipo tronco, que forma ramos bem acima do nível do solo e que se estendem até o ápice da raiz</p><p>Os arbustos, além do menor porte, podem exibir ramos desde junto ao solo. Desta maneira apenas as gimnospermas e angiospermas dicotiledôneas lenhosas são consideradas espécies arbóreas.</p><p>Por pequeno porte, embora não exista uma definição consensual, costuma-se entender uma altura mínima de quatro metros na maturidade. Em relação ao tamanho máximo estudos demonstram que uma árvore poderia atingir de 1 a 14 metros , sendo uma sequoia chamada Hyperion, localizada no Parque Nacional de Redwood ao norte de São Francisco, Estados Unidos, o maior exemplar vivo conhecido no momento, possuindo 115,55m.</p><p>Essa definição exclui as palmeiras, que não possuem crescimento do diâmetro de seu caule para a formação do tronco, além do mesmo também não ser ramificado. Da mesma forma exclui plantas perenes lenhosas de pequeno porte, mas que se desenvolvem como se fossem árvores em miniatura como o salgueiro-anão herbáceo (‘’Salix herbacea L.’’) e o salgueiro-anão reticulado (‘’ Salix reticulata L.’’)</p><p>Em 1961 o presidente Jânio Quadros declarou o pau-brasil a Árvore Nacional, sendo reservado ao Ipê-amarelo, da espécie Tabebuia vellosoi, o título de Flor Nacional.</p>";s:20:"text_selected_editor";s:7:"tinymce";s:5:"autop";b:1;s:12:"_sow_form_id";s:13:"56bf8feb4c4b4";s:11:"panels_info";a:5:{s:5:"class";s:31:"SiteOrigin_Widget_Editor_Widget";s:4:"grid";i:0;s:4:"cell";i:0;s:2:"id";i:0;s:5:"style";a:3:{s:10:"background";s:7:"#ffffff";s:27:"background_image_attachment";b:0;s:18:"background_display";s:5:"cover";}}}}s:5:"grids";a:1:{i:0;a:2:{s:5:"cells";i:1;s:5:"style";a:0:{}}}s:10:"grid_cells";a:1:{i:0;a:2:{s:4:"grid";i:0;s:6:"weight";i:1;}}}'),
(174, 59, 'panels_data', 'a:3:{s:7:"widgets";a:1:{i:0;a:6:{s:5:"title";s:0:"";s:4:"text";s:2008:"<p><a href="http://smallholder.ag/wp-content/uploads/2016/02/400.jpg" rel="attachment wp-att-48"><img class="aligncenter wp-image-48" src="http://smallholder.ag/wp-content/uploads/2016/02/400-300x200.jpg" sizes="(max-width: 470px) 100vw, 470px" srcset="http://smallholder.ag/wp-content/uploads/2016/02/400-300x200.jpg 300w, http://smallholder.ag/wp-content/uploads/2016/02/400.jpg 600w" alt="400" width="470" height="313" /></a></p><p> </p><p>Árvore é um vegetal de tronco lenhoso cujos ramos só saem a certa altura do solo. Em termos biológicos é uma planta permanentemente lenhosa de grande porte, com raizes pivotantes, caule lenhoso do tipo tronco, que forma ramos bem acima do nível do solo e que se estendem até o ápice da raiz</p><p>Os arbustos, além do menor porte, podem exibir ramos desde junto ao solo. Desta maneira apenas as gimnospermas e angiospermas dicotiledôneas lenhosas são consideradas espécies arbóreas.</p><p>Por pequeno porte, embora não exista uma definição consensual, costuma-se entender uma altura mínima de quatro metros na maturidade. Em relação ao tamanho máximo estudos demonstram que uma árvore poderia atingir de 1 a 14 metros , sendo uma sequoia chamada Hyperion, localizada no Parque Nacional de Redwood ao norte de São Francisco, Estados Unidos, o maior exemplar vivo conhecido no momento, possuindo 115,55m.</p><p>Essa definição exclui as palmeiras, que não possuem crescimento do diâmetro de seu caule para a formação do tronco, além do mesmo também não ser ramificado. Da mesma forma exclui plantas perenes lenhosas de pequeno porte, mas que se desenvolvem como se fossem árvores em miniatura como o salgueiro-anão herbáceo (‘’Salix herbacea L.’’) e o salgueiro-anão reticulado (‘’ Salix reticulata L.’’)</p><p>Em 1961 o presidente Jânio Quadros declarou o pau-brasil a Árvore Nacional, sendo reservado ao Ipê-amarelo, da espécie Tabebuia vellosoi, o título de Flor Nacional.</p>";s:20:"text_selected_editor";s:7:"tinymce";s:5:"autop";b:1;s:12:"_sow_form_id";s:13:"56bf98ee76417";s:11:"panels_info";a:5:{s:5:"class";s:31:"SiteOrigin_Widget_Editor_Widget";s:4:"grid";i:0;s:4:"cell";i:0;s:2:"id";i:0;s:5:"style";a:3:{s:10:"background";s:7:"#81d742";s:27:"background_image_attachment";b:0;s:18:"background_display";s:4:"tile";}}}}s:5:"grids";a:1:{i:0;a:2:{s:5:"cells";i:1;s:5:"style";a:0:{}}}s:10:"grid_cells";a:1:{i:0;a:2:{s:4:"grid";i:0;s:6:"weight";i:1;}}}'),
(179, 60, 'panels_data', 'a:3:{s:7:"widgets";a:1:{i:0;a:6:{s:5:"title";s:0:"";s:4:"text";s:2008:"<p><a href="http://smallholder.ag/wp-content/uploads/2016/02/400.jpg" rel="attachment wp-att-48"><img class="aligncenter wp-image-48" src="http://smallholder.ag/wp-content/uploads/2016/02/400-300x200.jpg" sizes="(max-width: 470px) 100vw, 470px" srcset="http://smallholder.ag/wp-content/uploads/2016/02/400-300x200.jpg 300w, http://smallholder.ag/wp-content/uploads/2016/02/400.jpg 600w" alt="400" width="470" height="313" /></a></p><p> </p><p>Árvore é um vegetal de tronco lenhoso cujos ramos só saem a certa altura do solo. Em termos biológicos é uma planta permanentemente lenhosa de grande porte, com raizes pivotantes, caule lenhoso do tipo tronco, que forma ramos bem acima do nível do solo e que se estendem até o ápice da raiz</p><p>Os arbustos, além do menor porte, podem exibir ramos desde junto ao solo. Desta maneira apenas as gimnospermas e angiospermas dicotiledôneas lenhosas são consideradas espécies arbóreas.</p><p>Por pequeno porte, embora não exista uma definição consensual, costuma-se entender uma altura mínima de quatro metros na maturidade. Em relação ao tamanho máximo estudos demonstram que uma árvore poderia atingir de 1 a 14 metros , sendo uma sequoia chamada Hyperion, localizada no Parque Nacional de Redwood ao norte de São Francisco, Estados Unidos, o maior exemplar vivo conhecido no momento, possuindo 115,55m.</p><p>Essa definição exclui as palmeiras, que não possuem crescimento do diâmetro de seu caule para a formação do tronco, além do mesmo também não ser ramificado. Da mesma forma exclui plantas perenes lenhosas de pequeno porte, mas que se desenvolvem como se fossem árvores em miniatura como o salgueiro-anão herbáceo (‘’Salix herbacea L.’’) e o salgueiro-anão reticulado (‘’ Salix reticulata L.’’)</p><p>Em 1961 o presidente Jânio Quadros declarou o pau-brasil a Árvore Nacional, sendo reservado ao Ipê-amarelo, da espécie Tabebuia vellosoi, o título de Flor Nacional.</p>";s:20:"text_selected_editor";s:7:"tinymce";s:5:"autop";b:1;s:12:"_sow_form_id";s:13:"56bf98ee76417";s:11:"panels_info";a:5:{s:5:"class";s:31:"SiteOrigin_Widget_Editor_Widget";s:4:"grid";i:0;s:4:"cell";i:0;s:2:"id";i:0;s:5:"style";a:4:{s:10:"background";s:7:"#8224e3";s:27:"background_image_attachment";b:0;s:18:"background_display";s:5:"cover";s:12:"border_color";s:7:"#050505";}}}}s:5:"grids";a:1:{i:0;a:2:{s:5:"cells";i:1;s:5:"style";a:0:{}}}s:10:"grid_cells";a:1:{i:0;a:2:{s:4:"grid";i:0;s:6:"weight";i:1;}}}'),
(182, 69, '_edit_lock', '1484110568:1'),
(183, 69, '_edit_last', '1'),
(184, 69, '_wp_page_template', 'page-templates/page-publications.php'),
(185, 71, '_edit_last', '1'),
(186, 71, '_wp_page_template', 'page-templates/page-sidebar-right.php'),
(187, 71, '_edit_lock', '1456361009:1'),
(188, 73, '_edit_last', '1'),
(189, 73, '_wp_page_template', 'page-templates/page-sidebar-right.php'),
(190, 73, '_edit_lock', '1455836540:1'),
(194, 77, '_menu_item_type', 'post_type'),
(195, 77, '_menu_item_menu_item_parent', '0'),
(196, 77, '_menu_item_object_id', '69'),
(197, 77, '_menu_item_object', 'page'),
(198, 77, '_menu_item_target', ''),
(199, 77, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(200, 77, '_menu_item_xfn', ''),
(201, 77, '_menu_item_url', ''),
(203, 78, '_menu_item_type', 'post_type'),
(204, 78, '_menu_item_menu_item_parent', '0'),
(205, 78, '_menu_item_object_id', '71'),
(206, 78, '_menu_item_object', 'page'),
(207, 78, '_menu_item_target', ''),
(208, 78, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(209, 78, '_menu_item_xfn', ''),
(210, 78, '_menu_item_url', ''),
(212, 79, '_menu_item_type', 'post_type'),
(213, 79, '_menu_item_menu_item_parent', '0'),
(214, 79, '_menu_item_object_id', '73'),
(215, 79, '_menu_item_object', 'page'),
(216, 79, '_menu_item_target', ''),
(217, 79, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(218, 79, '_menu_item_xfn', ''),
(219, 79, '_menu_item_url', ''),
(232, 81, 'panels_data', 'a:3:{s:7:"widgets";a:1:{i:0;a:5:{s:5:"title";s:0:"";s:8:"template";s:32:"template-parts/content-aside.php";s:5:"posts";s:74:"post_type=post&orderby=date&order=DESC&posts_per_page=&sticky=&additional=";s:11:"panels_info";a:5:{s:5:"class";s:34:"SiteOrigin_Panels_Widgets_PostLoop";s:4:"grid";i:0;s:4:"cell";i:0;s:2:"id";i:0;s:5:"style";a:2:{s:27:"background_image_attachment";b:0;s:18:"background_display";s:4:"tile";}}s:4:"more";b:0;}}s:5:"grids";a:1:{i:0;a:2:{s:5:"cells";i:1;s:5:"style";a:0:{}}}s:10:"grid_cells";a:1:{i:0;a:2:{s:4:"grid";i:0;s:6:"weight";i:1;}}}'),
(233, 82, 'panels_data', 'a:3:{s:7:"widgets";a:1:{i:0;a:5:{s:5:"title";s:0:"";s:8:"template";s:32:"template-parts/content-aside.php";s:5:"posts";s:74:"post_type=post&orderby=date&order=DESC&posts_per_page=&sticky=&additional=";s:11:"panels_info";a:5:{s:5:"class";s:34:"SiteOrigin_Panels_Widgets_PostLoop";s:4:"grid";i:0;s:4:"cell";i:0;s:2:"id";i:0;s:5:"style";a:2:{s:27:"background_image_attachment";b:0;s:18:"background_display";s:4:"tile";}}s:4:"more";b:0;}}s:5:"grids";a:1:{i:0;a:2:{s:5:"cells";i:1;s:5:"style";a:0:{}}}s:10:"grid_cells";a:1:{i:0;a:2:{s:4:"grid";i:0;s:6:"weight";i:1;}}}'),
(234, 81, 'panels_data', 'a:3:{s:7:"widgets";a:1:{i:0;a:3:{s:11:"panels_data";a:3:{s:7:"widgets";a:1:{i:0;a:4:{s:5:"title";s:0:"";s:8:"template";s:35:"template-parts/content-projects.php";s:5:"posts";s:74:"post_type=post&posts_per_page=&order=DESC&orderby=date&sticky=&additional=";s:11:"panels_info";a:6:{s:5:"class";s:34:"SiteOrigin_Panels_Widgets_PostLoop";s:3:"raw";b:1;s:4:"grid";i:0;s:4:"cell";i:0;s:2:"id";i:0;s:5:"style";a:8:{s:5:"class";s:0:"";s:10:"widget_css";s:0:"";s:7:"padding";s:0:"";s:10:"background";s:0:"";s:27:"background_image_attachment";s:1:"0";s:18:"background_display";s:4:"tile";s:12:"border_color";s:0:"";s:10:"font_color";s:0:"";}}}}s:5:"grids";a:1:{i:0;a:2:{s:5:"cells";i:1;s:5:"style";a:0:{}}}s:10:"grid_cells";a:1:{i:0;a:2:{s:4:"grid";i:0;s:6:"weight";i:1;}}}s:10:"builder_id";s:13:"56c39226d3c32";s:11:"panels_info";a:5:{s:5:"class";s:32:"SiteOrigin_Panels_Widgets_Layout";s:4:"grid";i:0;s:4:"cell";i:0;s:2:"id";i:0;s:5:"style";a:2:{s:27:"background_image_attachment";b:0;s:18:"background_display";s:4:"tile";}}}}s:5:"grids";a:1:{i:0;a:2:{s:5:"cells";i:1;s:5:"style";a:0:{}}}s:10:"grid_cells";a:1:{i:0;a:2:{s:4:"grid";i:0;s:6:"weight";i:1;}}}'),
(235, 23, '_panels_data_preview', 'a:3:{s:7:"widgets";a:1:{i:0;a:5:{s:5:"title";s:0:"";s:8:"template";s:35:"template-parts/content-projects.php";s:5:"posts";s:132:"post_type=post&date_query={"after":"","before":""}&orderby=date&order=DESC&posts_per_page=&sticky=&additional=category_name=Projects";s:4:"more";b:0;s:11:"panels_info";a:6:{s:5:"class";s:34:"SiteOrigin_Panels_Widgets_PostLoop";s:3:"raw";b:0;s:4:"grid";i:0;s:4:"cell";i:0;s:2:"id";i:0;s:5:"style";a:2:{s:5:"class";s:10:"three-cols";s:18:"background_display";s:4:"tile";}}}}s:5:"grids";a:1:{i:0;a:2:{s:5:"cells";i:1;s:5:"style";a:0:{}}}s:10:"grid_cells";a:1:{i:0;a:2:{s:4:"grid";i:0;s:6:"weight";i:1;}}}'),
(236, 83, 'panels_data', 'a:3:{s:7:"widgets";a:1:{i:0;a:3:{s:11:"panels_data";a:3:{s:7:"widgets";a:1:{i:0;a:4:{s:5:"title";s:0:"";s:8:"template";s:35:"template-parts/content-projects.php";s:5:"posts";s:74:"post_type=post&posts_per_page=&order=DESC&orderby=date&sticky=&additional=";s:11:"panels_info";a:6:{s:5:"class";s:34:"SiteOrigin_Panels_Widgets_PostLoop";s:3:"raw";b:1;s:4:"grid";i:0;s:4:"cell";i:0;s:2:"id";i:0;s:5:"style";a:8:{s:5:"class";s:0:"";s:10:"widget_css";s:0:"";s:7:"padding";s:0:"";s:10:"background";s:0:"";s:27:"background_image_attachment";s:1:"0";s:18:"background_display";s:4:"tile";s:12:"border_color";s:0:"";s:10:"font_color";s:0:"";}}}}s:5:"grids";a:1:{i:0;a:2:{s:5:"cells";i:1;s:5:"style";a:0:{}}}s:10:"grid_cells";a:1:{i:0;a:2:{s:4:"grid";i:0;s:6:"weight";i:1;}}}s:10:"builder_id";s:13:"56c39226d3c32";s:11:"panels_info";a:5:{s:5:"class";s:32:"SiteOrigin_Panels_Widgets_Layout";s:4:"grid";i:0;s:4:"cell";i:0;s:2:"id";i:0;s:5:"style";a:2:{s:27:"background_image_attachment";b:0;s:18:"background_display";s:4:"tile";}}}}s:5:"grids";a:1:{i:0;a:2:{s:5:"cells";i:1;s:5:"style";a:0:{}}}s:10:"grid_cells";a:1:{i:0;a:2:{s:4:"grid";i:0;s:6:"weight";i:1;}}}'),
(237, 84, 'panels_data', 'a:3:{s:7:"widgets";a:1:{i:0;a:3:{s:11:"panels_data";a:3:{s:7:"widgets";a:1:{i:0;a:6:{s:5:"title";s:0:"";s:4:"text";s:17:"<p>Hola mundo</p>";s:20:"text_selected_editor";s:7:"tinymce";s:5:"autop";s:2:"on";s:12:"_sow_form_id";s:13:"56c3964a9f719";s:11:"panels_info";a:6:{s:5:"class";s:31:"SiteOrigin_Widget_Editor_Widget";s:3:"raw";b:1;s:4:"grid";i:0;s:4:"cell";i:0;s:2:"id";i:0;s:5:"style";a:8:{s:5:"class";s:0:"";s:10:"widget_css";s:0:"";s:7:"padding";s:0:"";s:10:"background";s:0:"";s:27:"background_image_attachment";s:1:"0";s:18:"background_display";s:4:"tile";s:12:"border_color";s:0:"";s:10:"font_color";s:0:"";}}}}s:5:"grids";a:1:{i:0;a:2:{s:5:"cells";i:1;s:5:"style";a:0:{}}}s:10:"grid_cells";a:1:{i:0;a:2:{s:4:"grid";i:0;s:6:"weight";i:1;}}}s:10:"builder_id";s:13:"56c39660a0303";s:11:"panels_info";a:5:{s:5:"class";s:32:"SiteOrigin_Panels_Widgets_Layout";s:4:"grid";i:0;s:4:"cell";i:0;s:2:"id";i:0;s:5:"style";a:2:{s:27:"background_image_attachment";b:0;s:18:"background_display";s:4:"tile";}}}}s:5:"grids";a:1:{i:0;a:2:{s:5:"cells";i:1;s:5:"style";a:0:{}}}s:10:"grid_cells";a:1:{i:0;a:2:{s:4:"grid";i:0;s:6:"weight";i:1;}}}'),
(238, 23, '_fl_builder_draft', 'a:4:{s:13:"56c39d33502d2";O:8:"stdClass":5:{s:4:"node";s:13:"56c39d33502d2";s:4:"type";s:3:"row";s:6:"parent";N;s:8:"position";i:0;s:8:"settings";O:8:"stdClass":47:{s:5:"width";s:5:"fixed";s:13:"content_width";s:5:"fixed";s:11:"full_height";s:7:"default";s:10:"text_color";s:0:"";s:10:"link_color";s:0:"";s:11:"hover_color";s:0:"";s:13:"heading_color";s:0:"";s:7:"bg_type";s:4:"none";s:8:"bg_image";s:0:"";s:9:"bg_repeat";s:4:"none";s:11:"bg_position";s:13:"center center";s:13:"bg_attachment";s:6:"scroll";s:7:"bg_size";s:5:"cover";s:8:"bg_video";s:0:"";s:13:"bg_video_webm";s:0:"";s:17:"bg_video_fallback";s:0:"";s:9:"ss_source";s:9:"wordpress";s:9:"ss_photos";s:0:"";s:11:"ss_feed_url";s:0:"";s:8:"ss_speed";s:1:"3";s:13:"ss_transition";s:4:"fade";s:21:"ss_transitionDuration";s:1:"1";s:12:"ss_randomize";s:5:"false";s:17:"bg_parallax_image";s:0:"";s:17:"bg_parallax_speed";s:4:"fast";s:8:"bg_color";s:0:"";s:10:"bg_opacity";s:3:"100";s:16:"bg_overlay_color";s:0:"";s:18:"bg_overlay_opacity";s:2:"50";s:11:"border_type";s:0:"";s:12:"border_color";s:0:"";s:14:"border_opacity";s:3:"100";s:10:"border_top";s:1:"1";s:13:"border_bottom";s:1:"1";s:11:"border_left";s:1:"0";s:12:"border_right";s:1:"0";s:10:"margin_top";s:0:"";s:13:"margin_bottom";s:0:"";s:11:"margin_left";s:0:"";s:12:"margin_right";s:0:"";s:11:"padding_top";s:0:"";s:14:"padding_bottom";s:0:"";s:12:"padding_left";s:0:"";s:13:"padding_right";s:0:"";s:18:"responsive_display";s:0:"";s:2:"id";s:0:"";s:5:"class";s:0:"";}}s:13:"56c39d3360a77";O:8:"stdClass":5:{s:4:"node";s:13:"56c39d3360a77";s:4:"type";s:12:"column-group";s:6:"parent";s:13:"56c39d33502d2";s:8:"position";i:0;s:8:"settings";s:0:"";}s:13:"56c39d3360bf5";O:8:"stdClass":5:{s:4:"node";s:13:"56c39d3360bf5";s:4:"type";s:6:"column";s:6:"parent";s:13:"56c39d3360a77";s:8:"position";i:0;s:8:"settings";O:8:"stdClass":1:{s:4:"size";i:100;}}s:13:"56c39d33500bd";O:8:"stdClass":5:{s:4:"node";s:13:"56c39d33500bd";s:4:"type";s:6:"module";s:6:"parent";s:13:"56c39d3360bf5";s:8:"position";i:0;s:8:"settings";O:8:"stdClass":12:{s:10:"margin_top";s:0:"";s:13:"margin_bottom";s:0:"";s:11:"margin_left";s:0:"";s:12:"margin_right";s:0:"";s:18:"responsive_display";s:0:"";s:9:"animation";s:7:"fade-in";s:15:"animation_delay";s:1:"1";s:2:"id";s:0:"";s:5:"class";s:8:"width-30";s:4:"type";s:6:"widget";s:33:"widget-siteorigin-panels-postloop";O:8:"stdClass":4:{s:5:"title";s:0:"";s:8:"template";s:35:"template-parts/content-projects.php";s:5:"posts";s:74:"post_type=post&posts_per_page=&order=DESC&orderby=date&sticky=&additional=";s:4:"more";b:0;}s:6:"widget";s:34:"SiteOrigin_Panels_Widgets_PostLoop";}}}'),
(239, 23, '_fl_builder_draft_settings', 'O:8:"stdClass":2:{s:3:"css";s:0:"";s:2:"js";s:0:"";}'),
(240, 23, '_fl_builder_data', 'a:4:{s:13:"56c39d33502d2";O:8:"stdClass":5:{s:4:"node";s:13:"56c39d33502d2";s:4:"type";s:3:"row";s:6:"parent";N;s:8:"position";i:0;s:8:"settings";O:8:"stdClass":47:{s:5:"width";s:5:"fixed";s:13:"content_width";s:5:"fixed";s:11:"full_height";s:7:"default";s:10:"text_color";s:0:"";s:10:"link_color";s:0:"";s:11:"hover_color";s:0:"";s:13:"heading_color";s:0:"";s:7:"bg_type";s:4:"none";s:8:"bg_image";s:0:"";s:9:"bg_repeat";s:4:"none";s:11:"bg_position";s:13:"center center";s:13:"bg_attachment";s:6:"scroll";s:7:"bg_size";s:5:"cover";s:8:"bg_video";s:0:"";s:13:"bg_video_webm";s:0:"";s:17:"bg_video_fallback";s:0:"";s:9:"ss_source";s:9:"wordpress";s:9:"ss_photos";s:0:"";s:11:"ss_feed_url";s:0:"";s:8:"ss_speed";s:1:"3";s:13:"ss_transition";s:4:"fade";s:21:"ss_transitionDuration";s:1:"1";s:12:"ss_randomize";s:5:"false";s:17:"bg_parallax_image";s:0:"";s:17:"bg_parallax_speed";s:4:"fast";s:8:"bg_color";s:0:"";s:10:"bg_opacity";s:3:"100";s:16:"bg_overlay_color";s:0:"";s:18:"bg_overlay_opacity";s:2:"50";s:11:"border_type";s:0:"";s:12:"border_color";s:0:"";s:14:"border_opacity";s:3:"100";s:10:"border_top";s:1:"1";s:13:"border_bottom";s:1:"1";s:11:"border_left";s:1:"0";s:12:"border_right";s:1:"0";s:10:"margin_top";s:0:"";s:13:"margin_bottom";s:0:"";s:11:"margin_left";s:0:"";s:12:"margin_right";s:0:"";s:11:"padding_top";s:0:"";s:14:"padding_bottom";s:0:"";s:12:"padding_left";s:0:"";s:13:"padding_right";s:0:"";s:18:"responsive_display";s:0:"";s:2:"id";s:0:"";s:5:"class";s:0:"";}}s:13:"56c39d3360a77";O:8:"stdClass":5:{s:4:"node";s:13:"56c39d3360a77";s:4:"type";s:12:"column-group";s:6:"parent";s:13:"56c39d33502d2";s:8:"position";i:0;s:8:"settings";s:0:"";}s:13:"56c39d3360bf5";O:8:"stdClass":5:{s:4:"node";s:13:"56c39d3360bf5";s:4:"type";s:6:"column";s:6:"parent";s:13:"56c39d3360a77";s:8:"position";i:0;s:8:"settings";O:8:"stdClass":1:{s:4:"size";i:100;}}s:13:"56c39d33500bd";O:8:"stdClass":5:{s:4:"node";s:13:"56c39d33500bd";s:4:"type";s:6:"module";s:6:"parent";s:13:"56c39d3360bf5";s:8:"position";i:0;s:8:"settings";O:8:"stdClass":12:{s:10:"margin_top";s:0:"";s:13:"margin_bottom";s:0:"";s:11:"margin_left";s:0:"";s:12:"margin_right";s:0:"";s:18:"responsive_display";s:0:"";s:9:"animation";s:7:"fade-in";s:15:"animation_delay";s:1:"1";s:2:"id";s:0:"";s:5:"class";s:8:"width-30";s:4:"type";s:6:"widget";s:33:"widget-siteorigin-panels-postloop";O:8:"stdClass":4:{s:5:"title";s:0:"";s:8:"template";s:35:"template-parts/content-projects.php";s:5:"posts";s:74:"post_type=post&posts_per_page=&order=DESC&orderby=date&sticky=&additional=";s:4:"more";b:0;}s:6:"widget";s:34:"SiteOrigin_Panels_Widgets_PostLoop";}}}'),
(241, 23, '_fl_builder_data_settings', 'O:8:"stdClass":2:{s:3:"css";s:0:"";s:2:"js";s:0:"";}'),
(242, 23, '_fl_builder_enabled', '1'),
(243, 23, 'panels_data', 'a:3:{s:7:"widgets";a:1:{i:0;a:5:{s:5:"title";s:0:"";s:8:"template";s:35:"template-parts/content-projects.php";s:5:"posts";s:132:"post_type=post&date_query={"after":"","before":""}&orderby=date&order=DESC&posts_per_page=&sticky=&additional=category_name=Projects";s:4:"more";b:0;s:11:"panels_info";a:6:{s:5:"class";s:34:"SiteOrigin_Panels_Widgets_PostLoop";s:3:"raw";b:0;s:4:"grid";i:0;s:4:"cell";i:0;s:2:"id";i:0;s:5:"style";a:2:{s:5:"class";s:10:"three-cols";s:18:"background_display";s:4:"tile";}}}}s:5:"grids";a:1:{i:0;a:2:{s:5:"cells";i:1;s:5:"style";a:0:{}}}s:10:"grid_cells";a:1:{i:0;a:2:{s:4:"grid";i:0;s:6:"weight";i:1;}}}'),
(253, 88, '_wp_attached_file', '2016/02/Innovation.jpg'),
(254, 88, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1520;s:6:"height";i:600;s:4:"file";s:22:"2016/02/Innovation.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"Innovation-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:22:"Innovation-300x118.jpg";s:5:"width";i:300;s:6:"height";i:118;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:22:"Innovation-768x303.jpg";s:5:"width";i:768;s:6:"height";i:303;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:23:"Innovation-1024x404.jpg";s:5:"width";i:1024;s:6:"height";i:404;s:9:"mime-type";s:10:"image/jpeg";}s:20:"sow-carousel-default";a:4:{s:4:"file";s:22:"Innovation-272x182.jpg";s:5:"width";i:272;s:6:"height";i:182;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(300, 104, '_wp_attached_file', '2016/02/development_culture1.jpg'),
(301, 104, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:797;s:6:"height";i:253;s:4:"file";s:32:"2016/02/development_culture1.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:32:"development_culture1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:31:"development_culture1-300x95.jpg";s:5:"width";i:300;s:6:"height";i:95;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:32:"development_culture1-768x244.jpg";s:5:"width";i:768;s:6:"height";i:244;s:9:"mime-type";s:10:"image/jpeg";}s:16:"custom-thumbnail";a:4:{s:4:"file";s:32:"development_culture1-347x110.jpg";s:5:"width";i:347;s:6:"height";i:110;s:9:"mime-type";s:10:"image/jpeg";}s:20:"sow-carousel-default";a:4:{s:4:"file";s:32:"development_culture1-272x182.jpg";s:5:"width";i:272;s:6:"height";i:182;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(303, 116, '_edit_lock', '1455752180:1'),
(304, 116, '_edit_last', '1'),
(305, 116, '_wp_old_slug', 'test-accordion'),
(306, 129, '_edit_lock', '1456446992:1'),
(307, 129, '_edit_last', '1'),
(310, 131, '_edit_lock', '1456446988:1'),
(311, 131, '_edit_last', '1'),
(316, 133, '_edit_lock', '1456446985:1'),
(317, 133, '_edit_last', '1'),
(320, 135, '_edit_lock', '1456446981:1'),
(321, 135, '_edit_last', '1'),
(324, 137, '_edit_lock', '1456446978:1'),
(325, 137, '_edit_last', '1'),
(343, 144, '_menu_item_type', 'taxonomy'),
(344, 144, '_menu_item_menu_item_parent', '0'),
(345, 144, '_menu_item_object_id', '3'),
(346, 144, '_menu_item_object', 'category'),
(347, 144, '_menu_item_target', ''),
(348, 144, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(349, 144, '_menu_item_xfn', ''),
(350, 144, '_menu_item_url', ''),
(369, 149, '_edit_lock', '1456446974:1'),
(370, 149, '_edit_last', '1'),
(374, 153, '_wp_attached_file', '2016/02/water1.jpg'),
(375, 153, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:660;s:6:"height";i:300;s:4:"file";s:18:"2016/02/water1.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"water1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"water1-300x136.jpg";s:5:"width";i:300;s:6:"height";i:136;s:9:"mime-type";s:10:"image/jpeg";}s:16:"custom-thumbnail";a:4:{s:4:"file";s:18:"water1-242x110.jpg";s:5:"width";i:242;s:6:"height";i:110;s:9:"mime-type";s:10:"image/jpeg";}s:20:"sow-carousel-default";a:4:{s:4:"file";s:18:"water1-272x182.jpg";s:5:"width";i:272;s:6:"height";i:182;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(382, 157, '_edit_lock', '1484179234:1'),
(383, 157, '_edit_last', '1'),
(384, 157, 'field_56c63ea2d8253', 'a:11:{s:3:"key";s:19:"field_56c63ea2d8253";s:5:"label";s:4:"Icon";s:4:"name";s:9:"page-icon";s:4:"type";s:5:"image";s:12:"instructions";s:14:"Section\'s icon";s:8:"required";s:1:"0";s:11:"save_format";s:3:"url";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(386, 157, 'position', 'side'),
(387, 157, 'layout', 'no_box'),
(388, 157, 'hide_on_screen', ''),
(417, 157, 'field_56c6424fe8169', 'a:14:{s:3:"key";s:19:"field_56c6424fe8169";s:5:"label";s:5:"Title";s:4:"name";s:10:"page-title";s:4:"type";s:4:"text";s:12:"instructions";s:16:"The page\'s title";s:8:"required";s:1:"1";s:13:"default_value";s:0:"";s:11:"placeholder";s:12:"Page\'s title";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"none";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}'),
(420, 161, 'icon', ''),
(421, 161, '_icon', 'field_56c63ea2d8253'),
(422, 161, 'title', 'About'),
(423, 161, '_title', 'field_56c6424fe8169'),
(424, 21, 'icon', ''),
(425, 21, '_icon', 'field_56c63ea2d8253'),
(426, 21, 'title', 'About'),
(427, 21, '_title', 'field_56c6424fe8169'),
(431, 162, 'page-icon', ''),
(432, 162, '_page-icon', 'field_56c63ea2d8253'),
(433, 162, 'page-title', 'Media'),
(434, 162, '_page-title', 'field_56c6424fe8169'),
(435, 71, 'page-icon', ''),
(436, 71, '_page-icon', 'field_56c63ea2d8253'),
(437, 71, 'page-title', 'Media'),
(438, 71, '_page-title', 'field_56c6424fe8169'),
(439, 163, 'page-icon', ''),
(440, 163, '_page-icon', 'field_56c63ea2d8253'),
(441, 163, 'page-title', 'About'),
(442, 163, '_page-title', 'field_56c6424fe8169'),
(443, 21, 'page-icon', ''),
(444, 21, '_page-icon', 'field_56c63ea2d8253'),
(445, 21, 'page-title', 'About Us'),
(446, 21, '_page-title', 'field_56c6424fe8169'),
(447, 164, 'page-icon', ''),
(448, 164, '_page-icon', 'field_56c63ea2d8253'),
(449, 164, 'page-title', 'Projects'),
(450, 164, '_page-title', 'field_56c6424fe8169'),
(451, 164, 'panels_data', 'a:3:{s:7:"widgets";a:1:{i:0;a:5:{s:5:"title";s:0:"";s:8:"template";s:35:"template-parts/content-projects.php";s:5:"posts";s:132:"post_type=post&date_query={"after":"","before":""}&orderby=date&order=DESC&posts_per_page=&sticky=&additional=category_name=Projects";s:11:"panels_info";a:5:{s:5:"class";s:34:"SiteOrigin_Panels_Widgets_PostLoop";s:4:"grid";i:0;s:4:"cell";i:0;s:2:"id";i:0;s:5:"style";a:3:{s:5:"class";s:10:"three-cols";s:27:"background_image_attachment";b:0;s:18:"background_display";s:4:"tile";}}s:4:"more";b:0;}}s:5:"grids";a:1:{i:0;a:2:{s:5:"cells";i:1;s:5:"style";a:0:{}}}s:10:"grid_cells";a:1:{i:0;a:2:{s:4:"grid";i:0;s:6:"weight";i:1;}}}'),
(452, 23, 'page-icon', '263'),
(453, 23, '_page-icon', 'field_56c63ea2d8253'),
(454, 23, 'page-title', 'Projects'),
(455, 23, '_page-title', 'field_56c6424fe8169'),
(457, 165, 'page-icon', ''),
(458, 165, '_page-icon', 'field_56c63ea2d8253'),
(459, 165, 'page-title', 'Publications'),
(460, 165, '_page-title', 'field_56c6424fe8169'),
(461, 69, 'page-icon', '265'),
(462, 69, '_page-icon', 'field_56c63ea2d8253'),
(463, 69, 'page-title', 'Publications'),
(464, 69, '_page-title', 'field_56c6424fe8169'),
(465, 166, 'page-icon', ''),
(466, 166, '_page-icon', 'field_56c63ea2d8253'),
(467, 166, 'page-title', 'Tools'),
(468, 166, '_page-title', 'field_56c6424fe8169'),
(469, 73, 'page-icon', ''),
(470, 73, '_page-icon', 'field_56c63ea2d8253'),
(471, 73, 'page-title', 'Tools'),
(472, 73, '_page-title', 'field_56c6424fe8169'),
(474, 169, 'page-icon', '168'),
(475, 169, '_page-icon', 'field_56c63ea2d8253'),
(476, 169, 'page-title', 'Projects'),
(477, 169, '_page-title', 'field_56c6424fe8169'),
(478, 169, 'panels_data', 'a:3:{s:7:"widgets";a:1:{i:0;a:5:{s:5:"title";s:0:"";s:8:"template";s:35:"template-parts/content-projects.php";s:5:"posts";s:132:"post_type=post&date_query={"after":"","before":""}&orderby=date&order=DESC&posts_per_page=&sticky=&additional=category_name=Projects";s:4:"more";b:0;s:11:"panels_info";a:6:{s:5:"class";s:34:"SiteOrigin_Panels_Widgets_PostLoop";s:3:"raw";b:0;s:4:"grid";i:0;s:4:"cell";i:0;s:2:"id";i:0;s:5:"style";a:2:{s:5:"class";s:10:"three-cols";s:18:"background_display";s:4:"tile";}}}}s:5:"grids";a:1:{i:0;a:2:{s:5:"cells";i:1;s:5:"style";a:0:{}}}s:10:"grid_cells";a:1:{i:0;a:2:{s:4:"grid";i:0;s:6:"weight";i:1;}}}'),
(481, 171, 'page-icon', '168'),
(482, 171, '_page-icon', 'field_56c63ea2d8253'),
(483, 171, 'page-title', 'Projects'),
(484, 171, '_page-title', 'field_56c6424fe8169'),
(485, 171, 'panels_data', 'a:3:{s:7:"widgets";a:1:{i:0;a:5:{s:5:"title";s:0:"";s:8:"template";s:35:"template-parts/content-projects.php";s:5:"posts";s:132:"post_type=post&date_query={"after":"","before":""}&orderby=date&order=DESC&posts_per_page=&sticky=&additional=category_name=Projects";s:4:"more";b:0;s:11:"panels_info";a:6:{s:5:"class";s:34:"SiteOrigin_Panels_Widgets_PostLoop";s:3:"raw";b:0;s:4:"grid";i:0;s:4:"cell";i:0;s:2:"id";i:0;s:5:"style";a:2:{s:5:"class";s:10:"three-cols";s:18:"background_display";s:4:"tile";}}}}s:5:"grids";a:1:{i:0;a:2:{s:5:"cells";i:1;s:5:"style";a:0:{}}}s:10:"grid_cells";a:1:{i:0;a:2:{s:4:"grid";i:0;s:6:"weight";i:1;}}}'),
(487, 173, 'page-icon', '172'),
(488, 173, '_page-icon', 'field_56c63ea2d8253'),
(489, 173, 'page-title', 'Publications'),
(490, 173, '_page-title', 'field_56c6424fe8169'),
(501, 157, 'rule', 'a:5:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:4:"page";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(502, 157, 'rule', 'a:5:{s:5:"param";s:11:"ef_taxonomy";s:8:"operator";s:2:"==";s:5:"value";s:8:"category";s:8:"order_no";i:0;s:8:"group_no";i:1;}'),
(503, 178, '_edit_lock', '1484179252:1') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(504, 178, '_edit_last', '1'),
(505, 178, 'field_56c65e73734b0', 'a:14:{s:3:"key";s:19:"field_56c65e73734b0";s:5:"label";s:8:"Web Site";s:4:"name";s:16:"project-web-site";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:8:"Web Site";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"none";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(507, 178, 'position', 'side'),
(508, 178, 'layout', 'no_box'),
(509, 178, 'hide_on_screen', ''),
(543, 178, 'rule', 'a:5:{s:5:"param";s:13:"post_category";s:8:"operator";s:2:"==";s:5:"value";s:1:"4";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(564, 149, '_thumbnail_id', '153'),
(572, 137, 'project-web-site', ''),
(573, 137, '_project-web-site', 'field_56c65e73734b0'),
(576, 192, 'project-web-site', 'vcvc'),
(577, 192, '_project-web-site', 'field_56c65e73734b0'),
(578, 135, 'project-web-site', 'vcvc'),
(579, 135, '_project-web-site', 'field_56c65e73734b0'),
(582, 133, 'project-web-site', ''),
(583, 133, '_project-web-site', 'field_56c65e73734b0'),
(584, 194, '_wp_attached_file', '2016/02/37caf44665f1fabb1fcab3928c41c177.jpg'),
(585, 194, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:427;s:6:"height";i:640;s:4:"file";s:44:"2016/02/37caf44665f1fabb1fcab3928c41c177.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:44:"37caf44665f1fabb1fcab3928c41c177-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:44:"37caf44665f1fabb1fcab3928c41c177-200x300.jpg";s:5:"width";i:200;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:16:"custom-thumbnail";a:4:{s:4:"file";s:43:"37caf44665f1fabb1fcab3928c41c177-73x110.jpg";s:5:"width";i:73;s:6:"height";i:110;s:9:"mime-type";s:10:"image/jpeg";}s:20:"sow-carousel-default";a:4:{s:4:"file";s:44:"37caf44665f1fabb1fcab3928c41c177-272x182.jpg";s:5:"width";i:272;s:6:"height";i:182;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(586, 137, '_thumbnail_id', '194'),
(587, 195, '_wp_attached_file', '2016/02/9724140093_c24046df7d_b.jpg'),
(588, 195, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:682;s:6:"height";i:1024;s:4:"file";s:35:"2016/02/9724140093_c24046df7d_b.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:35:"9724140093_c24046df7d_b-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:35:"9724140093_c24046df7d_b-200x300.jpg";s:5:"width";i:200;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:36:"9724140093_c24046df7d_b-682x1024.jpg";s:5:"width";i:682;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}s:16:"custom-thumbnail";a:4:{s:4:"file";s:34:"9724140093_c24046df7d_b-73x110.jpg";s:5:"width";i:73;s:6:"height";i:110;s:9:"mime-type";s:10:"image/jpeg";}s:20:"sow-carousel-default";a:4:{s:4:"file";s:35:"9724140093_c24046df7d_b-272x182.jpg";s:5:"width";i:272;s:6:"height";i:182;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(589, 196, '_wp_attached_file', '2016/02/30dc2fe75457200dc38ee77a53ad244c.jpg'),
(590, 196, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:500;s:6:"height";i:740;s:4:"file";s:44:"2016/02/30dc2fe75457200dc38ee77a53ad244c.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:44:"30dc2fe75457200dc38ee77a53ad244c-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:44:"30dc2fe75457200dc38ee77a53ad244c-203x300.jpg";s:5:"width";i:203;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:16:"custom-thumbnail";a:4:{s:4:"file";s:43:"30dc2fe75457200dc38ee77a53ad244c-74x110.jpg";s:5:"width";i:74;s:6:"height";i:110;s:9:"mime-type";s:10:"image/jpeg";}s:20:"sow-carousel-default";a:4:{s:4:"file";s:44:"30dc2fe75457200dc38ee77a53ad244c-272x182.jpg";s:5:"width";i:272;s:6:"height";i:182;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(591, 135, '_thumbnail_id', '196'),
(594, 133, '_thumbnail_id', '195'),
(597, 129, '_thumbnail_id', '194'),
(600, 131, '_thumbnail_id', '196'),
(609, 200, '_edit_lock', '1456366686:1'),
(610, 200, '_edit_last', '1'),
(611, 200, 'field_56ce45a94fb04', 'a:14:{s:3:"key";s:19:"field_56ce45a94fb04";s:5:"label";s:15:"Parent Category";s:4:"name";s:15:"parent-category";s:4:"type";s:4:"text";s:12:"instructions";s:109:"It is used to show posts in children categories like in publications page using publications page as template";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(613, 200, 'position', 'side'),
(614, 200, 'layout', 'no_box'),
(615, 200, 'hide_on_screen', ''),
(618, 201, 'page-icon', '172'),
(619, 201, '_page-icon', 'field_56c63ea2d8253'),
(620, 201, 'page-title', 'Publications'),
(621, 201, '_page-title', 'field_56c6424fe8169'),
(622, 201, 'parent-category', 'Publications'),
(623, 201, '_parent-category', 'field_56ce45a94fb04'),
(624, 69, 'parent-category', 'Publications'),
(625, 69, '_parent-category', 'field_56ce45a94fb04'),
(637, 200, 'rule', 'a:5:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:4:"page";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(638, 202, '_wp_attached_file', '2016/02/hero.jpg'),
(639, 202, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:960;s:6:"height";i:338;s:4:"file";s:16:"2016/02/hero.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"hero-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:16:"hero-300x106.jpg";s:5:"width";i:300;s:6:"height";i:106;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:16:"hero-768x270.jpg";s:5:"width";i:768;s:6:"height";i:270;s:9:"mime-type";s:10:"image/jpeg";}s:16:"custom-thumbnail";a:4:{s:4:"file";s:16:"hero-312x110.jpg";s:5:"width";i:312;s:6:"height";i:110;s:9:"mime-type";s:10:"image/jpeg";}s:20:"sow-carousel-default";a:4:{s:4:"file";s:16:"hero-272x182.jpg";s:5:"width";i:272;s:6:"height";i:182;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(645, 204, '_edit_lock', '1456447277:8'),
(646, 204, '_edit_last', '8'),
(647, 204, '_thumbnail_id', '5'),
(652, 208, '_edit_lock', '1456447511:8'),
(653, 208, '_edit_last', '8'),
(654, 208, '_thumbnail_id', '88'),
(659, 211, '_edit_lock', '1456447436:3'),
(660, 211, '_edit_last', '3'),
(661, 211, '_thumbnail_id', '153'),
(673, 216, '_edit_lock', '1456447595:4'),
(674, 216, '_edit_last', '4'),
(675, 216, '_thumbnail_id', '194'),
(680, 218, '_edit_lock', '1456447818:4'),
(681, 218, '_edit_last', '4'),
(682, 218, '_thumbnail_id', '196'),
(685, 221, '_edit_lock', '1456447742:5'),
(686, 221, '_edit_last', '5'),
(687, 221, '_thumbnail_id', '36'),
(690, 223, '_edit_lock', '1484113851:1'),
(691, 223, '_edit_last', '5'),
(692, 223, '_thumbnail_id', '153'),
(699, 202, '_wp_attachment_custom_header_last_used_smallholder', '1456449654'),
(700, 202, '_wp_attachment_is_custom_header', 'smallholder'),
(701, 247, '_wp_attached_file', '2017/01/Beth-A-Plale.jpg'),
(702, 247, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:600;s:6:"height";i:669;s:4:"file";s:24:"2017/01/Beth-A-Plale.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"Beth-A-Plale-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:24:"Beth-A-Plale-269x300.jpg";s:5:"width";i:269;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:16:"custom-thumbnail";a:4:{s:4:"file";s:23:"Beth-A-Plale-99x110.jpg";s:5:"width";i:99;s:6:"height";i:110;s:9:"mime-type";s:10:"image/jpeg";}s:20:"sow-carousel-default";a:4:{s:4:"file";s:24:"Beth-A-Plale-272x182.jpg";s:5:"width";i:272;s:6:"height";i:182;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:3:"5.6";s:6:"credit";s:0:"";s:6:"camera";s:9:"NIKON D3S";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1348334565";s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"85";s:3:"iso";s:4:"1600";s:13:"shutter_speed";s:5:"0.025";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(703, 248, '_wp_attached_file', '2017/01/Armand-Tossou.jpeg'),
(704, 248, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:512;s:6:"height";i:512;s:4:"file";s:26:"2017/01/Armand-Tossou.jpeg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"Armand-Tossou-150x150.jpeg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:26:"Armand-Tossou-300x300.jpeg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:16:"custom-thumbnail";a:4:{s:4:"file";s:26:"Armand-Tossou-110x110.jpeg";s:5:"width";i:110;s:6:"height";i:110;s:9:"mime-type";s:10:"image/jpeg";}s:20:"sow-carousel-default";a:4:{s:4:"file";s:26:"Armand-Tossou-272x182.jpeg";s:5:"width";i:272;s:6:"height";i:182;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(705, 249, '_wp_attached_file', '2017/01/Inna-Kouper.jpg'),
(706, 249, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:308;s:6:"height";i:308;s:4:"file";s:23:"2017/01/Inna-Kouper.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"Inna-Kouper-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:23:"Inna-Kouper-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:16:"custom-thumbnail";a:4:{s:4:"file";s:23:"Inna-Kouper-110x110.jpg";s:5:"width";i:110;s:6:"height";i:110;s:9:"mime-type";s:10:"image/jpeg";}s:20:"sow-carousel-default";a:4:{s:4:"file";s:23:"Inna-Kouper-272x182.jpg";s:5:"width";i:272;s:6:"height";i:182;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(707, 250, '_wp_attached_file', '2017/01/Kathy-Baylis.jpg'),
(708, 250, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:600;s:6:"height";i:715;s:4:"file";s:24:"2017/01/Kathy-Baylis.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"Kathy-Baylis-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:24:"Kathy-Baylis-252x300.jpg";s:5:"width";i:252;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:16:"custom-thumbnail";a:4:{s:4:"file";s:23:"Kathy-Baylis-92x110.jpg";s:5:"width";i:92;s:6:"height";i:110;s:9:"mime-type";s:10:"image/jpeg";}s:20:"sow-carousel-default";a:4:{s:4:"file";s:24:"Kathy-Baylis-272x182.jpg";s:5:"width";i:272;s:6:"height";i:182;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:3:"4.2";s:6:"credit";s:0:"";s:6:"camera";s:10:"NIKON D40X";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1455229738";s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"55";s:3:"iso";s:3:"800";s:13:"shutter_speed";s:4:"0.02";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(709, 251, '_wp_attached_file', '2017/01/Kelly-Caylor.jpeg'),
(710, 251, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:192;s:6:"height";i:192;s:4:"file";s:25:"2017/01/Kelly-Caylor.jpeg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"Kelly-Caylor-150x150.jpeg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:16:"custom-thumbnail";a:4:{s:4:"file";s:25:"Kelly-Caylor-110x110.jpeg";s:5:"width";i:110;s:6:"height";i:110;s:9:"mime-type";s:10:"image/jpeg";}s:20:"sow-carousel-default";a:4:{s:4:"file";s:25:"Kelly-Caylor-192x182.jpeg";s:5:"width";i:192;s:6:"height";i:182;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(711, 252, '_wp_attached_file', '2017/01/Lyndon-Estes.jpeg'),
(712, 252, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:512;s:6:"height";i:512;s:4:"file";s:25:"2017/01/Lyndon-Estes.jpeg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"Lyndon-Estes-150x150.jpeg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:25:"Lyndon-Estes-300x300.jpeg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:16:"custom-thumbnail";a:4:{s:4:"file";s:25:"Lyndon-Estes-110x110.jpeg";s:5:"width";i:110;s:6:"height";i:110;s:9:"mime-type";s:10:"image/jpeg";}s:20:"sow-carousel-default";a:4:{s:4:"file";s:25:"Lyndon-Estes-272x182.jpeg";s:5:"width";i:272;s:6:"height";i:182;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(713, 253, '_wp_attached_file', '2017/01/Megan-Konar.jpeg'),
(714, 253, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:600;s:6:"height";i:651;s:4:"file";s:24:"2017/01/Megan-Konar.jpeg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"Megan-Konar-150x150.jpeg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:24:"Megan-Konar-276x300.jpeg";s:5:"width";i:276;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:16:"custom-thumbnail";a:4:{s:4:"file";s:24:"Megan-Konar-101x110.jpeg";s:5:"width";i:101;s:6:"height";i:110;s:9:"mime-type";s:10:"image/jpeg";}s:20:"sow-carousel-default";a:4:{s:4:"file";s:24:"Megan-Konar-272x182.jpeg";s:5:"width";i:272;s:6:"height";i:182;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:3:"4.5";s:6:"credit";s:0:"";s:6:"camera";s:10:"NIKON D300";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1348828560";s:9:"copyright";s:0:"";s:12:"focal_length";s:3:"125";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:5:"0.008";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(715, 254, '_wp_attached_file', '2017/01/Natash-Krell.png'),
(716, 254, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:600;s:6:"height";i:576;s:4:"file";s:24:"2017/01/Natash-Krell.png";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"Natash-Krell-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:24:"Natash-Krell-300x288.png";s:5:"width";i:300;s:6:"height";i:288;s:9:"mime-type";s:9:"image/png";}s:16:"custom-thumbnail";a:4:{s:4:"file";s:24:"Natash-Krell-115x110.png";s:5:"width";i:115;s:6:"height";i:110;s:9:"mime-type";s:9:"image/png";}s:20:"sow-carousel-default";a:4:{s:4:"file";s:24:"Natash-Krell-272x182.png";s:5:"width";i:272;s:6:"height";i:182;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(717, 255, '_wp_attached_file', '2017/01/Nicole-Jackson.jpg'),
(718, 255, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:600;s:6:"height";i:600;s:4:"file";s:26:"2017/01/Nicole-Jackson.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"Nicole-Jackson-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:26:"Nicole-Jackson-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:16:"custom-thumbnail";a:4:{s:4:"file";s:26:"Nicole-Jackson-110x110.jpg";s:5:"width";i:110;s:6:"height";i:110;s:9:"mime-type";s:10:"image/jpeg";}s:20:"sow-carousel-default";a:4:{s:4:"file";s:26:"Nicole-Jackson-272x182.jpg";s:5:"width";i:272;s:6:"height";i:182;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"5";s:6:"credit";s:12:"Jimmy Grande";s:6:"camera";s:12:"Canon EOS 6D";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1450279839";s:9:"copyright";s:19:"www.jimmygrande.com";s:12:"focal_length";s:2:"95";s:3:"iso";s:3:"500";s:13:"shutter_speed";s:5:"0.005";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(719, 256, '_wp_attached_file', '2017/01/patrese-anderson.png'),
(720, 256, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:512;s:6:"height";i:512;s:4:"file";s:28:"2017/01/patrese-anderson.png";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:28:"patrese-anderson-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:28:"patrese-anderson-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:16:"custom-thumbnail";a:4:{s:4:"file";s:28:"patrese-anderson-110x110.png";s:5:"width";i:110;s:6:"height";i:110;s:9:"mime-type";s:9:"image/png";}s:20:"sow-carousel-default";a:4:{s:4:"file";s:28:"patrese-anderson-272x182.png";s:5:"width";i:272;s:6:"height";i:182;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(721, 257, '_wp_attached_file', '2017/01/Peng-Chen.jpg'),
(722, 257, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:600;s:6:"height";i:589;s:4:"file";s:21:"2017/01/Peng-Chen.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"Peng-Chen-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"Peng-Chen-300x295.jpg";s:5:"width";i:300;s:6:"height";i:295;s:9:"mime-type";s:10:"image/jpeg";}s:16:"custom-thumbnail";a:4:{s:4:"file";s:21:"Peng-Chen-112x110.jpg";s:5:"width";i:112;s:6:"height";i:110;s:9:"mime-type";s:10:"image/jpeg";}s:20:"sow-carousel-default";a:4:{s:4:"file";s:21:"Peng-Chen-272x182.jpg";s:5:"width";i:272;s:6:"height";i:182;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"4";s:6:"credit";s:8:"Bin Fang";s:6:"camera";s:11:"NIKON D7000";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1441639014";s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"35";s:3:"iso";s:4:"2500";s:13:"shutter_speed";s:17:"0.016666666666667";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(723, 258, '_wp_attached_file', '2017/01/SHAHZEEN-ATTARI.jpeg'),
(724, 258, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:298;s:6:"height";i:336;s:4:"file";s:28:"2017/01/SHAHZEEN-ATTARI.jpeg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:28:"SHAHZEEN-ATTARI-150x150.jpeg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:28:"SHAHZEEN-ATTARI-266x300.jpeg";s:5:"width";i:266;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:16:"custom-thumbnail";a:4:{s:4:"file";s:27:"SHAHZEEN-ATTARI-98x110.jpeg";s:5:"width";i:98;s:6:"height";i:110;s:9:"mime-type";s:10:"image/jpeg";}s:20:"sow-carousel-default";a:4:{s:4:"file";s:28:"SHAHZEEN-ATTARI-272x182.jpeg";s:5:"width";i:272;s:6:"height";i:182;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(725, 259, '_wp_attached_file', '2017/01/Tom-Evans.jpg'),
(726, 259, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:437;s:6:"height";i:449;s:4:"file";s:21:"2017/01/Tom-Evans.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"Tom-Evans-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"Tom-Evans-292x300.jpg";s:5:"width";i:292;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:16:"custom-thumbnail";a:4:{s:4:"file";s:21:"Tom-Evans-107x110.jpg";s:5:"width";i:107;s:6:"height";i:110;s:9:"mime-type";s:10:"image/jpeg";}s:20:"sow-carousel-default";a:4:{s:4:"file";s:21:"Tom-Evans-272x182.jpg";s:5:"width";i:272;s:6:"height";i:182;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"4";s:6:"credit";s:0:"";s:6:"camera";s:12:"Canon EOS 5D";s:7:"caption";s:9:"Tom Evans";s:17:"created_timestamp";s:10:"1220386335";s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"67";s:3:"iso";s:3:"400";s:13:"shutter_speed";s:17:"0.016666666666667";s:5:"title";s:9:"Tom Evans";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(727, 260, 'page-icon', ''),
(728, 260, '_page-icon', 'field_56c63ea2d8253'),
(729, 260, 'page-title', 'About'),
(730, 260, '_page-title', 'field_56c6424fe8169'),
(731, 260, 'parent-category', ''),
(732, 260, '_parent-category', 'field_56ce45a94fb04'),
(733, 21, 'parent-category', ''),
(734, 21, '_parent-category', 'field_56ce45a94fb04') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(735, 261, 'page-icon', ''),
(736, 261, '_page-icon', 'field_56c63ea2d8253'),
(737, 261, 'page-title', 'About'),
(738, 261, '_page-title', 'field_56c6424fe8169'),
(739, 261, 'parent-category', ''),
(740, 261, '_parent-category', 'field_56ce45a94fb04'),
(741, 262, 'page-icon', ''),
(742, 262, '_page-icon', 'field_56c63ea2d8253'),
(743, 262, 'page-title', 'About Us'),
(744, 262, '_page-title', 'field_56c6424fe8169'),
(745, 262, 'parent-category', ''),
(746, 262, '_parent-category', 'field_56ce45a94fb04'),
(747, 263, '_wp_attached_file', '2016/02/projects.svg'),
(748, 264, 'page-icon', '263'),
(749, 264, '_page-icon', 'field_56c63ea2d8253'),
(750, 264, 'page-title', 'Projects'),
(751, 264, '_page-title', 'field_56c6424fe8169'),
(752, 264, 'parent-category', ''),
(753, 264, '_parent-category', 'field_56ce45a94fb04'),
(754, 264, 'panels_data', 'a:3:{s:7:"widgets";a:1:{i:0;a:5:{s:5:"title";s:0:"";s:8:"template";s:35:"template-parts/content-projects.php";s:5:"posts";s:132:"post_type=post&date_query={"after":"","before":""}&orderby=date&order=DESC&posts_per_page=&sticky=&additional=category_name=Projects";s:4:"more";b:0;s:11:"panels_info";a:6:{s:5:"class";s:34:"SiteOrigin_Panels_Widgets_PostLoop";s:3:"raw";b:0;s:4:"grid";i:0;s:4:"cell";i:0;s:2:"id";i:0;s:5:"style";a:2:{s:5:"class";s:10:"three-cols";s:18:"background_display";s:4:"tile";}}}}s:5:"grids";a:1:{i:0;a:2:{s:5:"cells";i:1;s:5:"style";a:0:{}}}s:10:"grid_cells";a:1:{i:0;a:2:{s:4:"grid";i:0;s:6:"weight";i:1;}}}'),
(755, 23, 'parent-category', ''),
(756, 23, '_parent-category', 'field_56ce45a94fb04'),
(757, 265, '_wp_attached_file', '2016/02/publications.svg'),
(758, 266, 'page-icon', '265'),
(759, 266, '_page-icon', 'field_56c63ea2d8253'),
(760, 266, 'page-title', 'Publications'),
(761, 266, '_page-title', 'field_56c6424fe8169'),
(762, 266, 'parent-category', 'Publications'),
(763, 266, '_parent-category', 'field_56ce45a94fb04'),
(764, 267, '_wp_attached_file', '2017/01/favicon.png'),
(765, 267, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:96;s:6:"height";i:96;s:4:"file";s:19:"2017/01/favicon.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(766, 268, 'page-icon', ''),
(767, 268, '_page-icon', 'field_56c63ea2d8253'),
(768, 268, 'page-title', 'About Us'),
(769, 268, '_page-title', 'field_56c6424fe8169'),
(770, 268, 'parent-category', ''),
(771, 268, '_parent-category', 'field_56ce45a94fb04'),
(772, 269, 'page-icon', ''),
(773, 269, '_page-icon', 'field_56c63ea2d8253'),
(774, 269, 'page-title', 'About Us'),
(775, 269, '_page-title', 'field_56c6424fe8169'),
(776, 269, 'parent-category', ''),
(777, 269, '_parent-category', 'field_56ce45a94fb04'),
(778, 270, 'page-icon', ''),
(779, 270, '_page-icon', 'field_56c63ea2d8253'),
(780, 270, 'page-title', 'About Us'),
(781, 270, '_page-title', 'field_56c6424fe8169'),
(782, 270, 'parent-category', ''),
(783, 270, '_parent-category', 'field_56ce45a94fb04'),
(784, 272, '_edit_lock', '1484950767:1'),
(785, 272, '_edit_last', '1'),
(786, 273, '_wp_attached_file', '2017/01/map-africa-project-banner.png'),
(787, 273, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:940;s:6:"height";i:474;s:4:"file";s:37:"2017/01/map-africa-project-banner.png";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:37:"map-africa-project-banner-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:37:"map-africa-project-banner-300x151.png";s:5:"width";i:300;s:6:"height";i:151;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:37:"map-africa-project-banner-768x387.png";s:5:"width";i:768;s:6:"height";i:387;s:9:"mime-type";s:9:"image/png";}s:16:"custom-thumbnail";a:4:{s:4:"file";s:37:"map-africa-project-banner-218x110.png";s:5:"width";i:218;s:6:"height";i:110;s:9:"mime-type";s:9:"image/png";}s:20:"sow-carousel-default";a:4:{s:4:"file";s:37:"map-africa-project-banner-272x182.png";s:5:"width";i:272;s:6:"height";i:182;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(788, 272, '_thumbnail_id', '273'),
(791, 274, 'project-web-site', 'http://mappingafrica.princeton.edu/'),
(792, 274, '_project-web-site', 'field_56c65e73734b0'),
(793, 272, 'project-web-site', 'mappingafrica.princeton.edu'),
(794, 272, '_project-web-site', 'field_56c65e73734b0'),
(797, 275, 'project-web-site', 'mappingafrica.princeton.edu'),
(798, 275, '_project-web-site', 'field_56c65e73734b0'),
(803, 276, 'project-web-site', 'mappingafrica.princeton.edu'),
(804, 276, '_project-web-site', 'field_56c65e73734b0'),
(807, 277, 'project-web-site', 'mappingafrica.princeton.edu'),
(808, 277, '_project-web-site', 'field_56c65e73734b0'),
(811, 278, 'project-web-site', 'mappingafrica.princeton.edu'),
(812, 278, '_project-web-site', 'field_56c65e73734b0'),
(815, 280, 'project-web-site', 'mappingafrica.princeton.edu'),
(816, 280, '_project-web-site', 'field_56c65e73734b0'),
(819, 281, 'project-web-site', 'mappingafrica.princeton.edu'),
(820, 281, '_project-web-site', 'field_56c65e73734b0'),
(825, 282, 'project-web-site', 'mappingafrica.princeton.edu'),
(826, 282, '_project-web-site', 'field_56c65e73734b0'),
(829, 283, 'project-web-site', 'mappingafrica.princeton.edu'),
(830, 283, '_project-web-site', 'field_56c65e73734b0') ;

#
# End of data contents of table `wp_postmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_posts`
#

DROP TABLE IF EXISTS `wp_posts`;


#
# Table structure of table `wp_posts`
#

CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=284 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_posts`
#
INSERT INTO `wp_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2015-09-21 16:17:31', '2015-09-21 16:17:31', 'Last week I was in Italy to help teach a new course on UAS for Environmental Monitoring, which was organized by <a href="http://www2.unibas.it/manfreda/HydroLab/home.html">Salvatore Manfreda</a> and <a href="http://caylor.princeton.edu/">Kelly Caylor</a>, and run under the aegis of the University of Basilicata. <a href="https://www.researchgate.net/profile/Jorge_Gago2">Xurxo Gago</a> from the Universitat de les Illes Balears provided instruction on multicopters and estimating crop water use from thermal imagery. We held classes in the ancient city of <a href="https://en.wikipedia.org/wiki/Matera">Matera</a> (a remarkable place), while flight training and data collection practicals took place in farmland to the south near Metaponto. By the end of the week, 17 students successfully ran a data collection mission (using fixed-wing UAS from <a href="http://readytodrone.com/">readytodrone.com</a>), processed the resulting imagery into orthomosaics and DEMs, and did some initial data analysis, including a comparison of leaf area index measurements made in the field, UAS-derived BNDVI, and Landsat-derived NDVI (Marc Mayes from Brown University found that Landsat 8 had imaged the area during that week, making a very nice comparison). The student presentations and lectures are available <a href="http://www.slideshare.net/Summer_School_of_Hydrology">here</a>.  We hope to run this course again next summer, so please watch this space if you are interested in learning how to use UAS to close the gap between field and spaceborne observations. Click <a href="http://lyndonestes.princeton.edu/?p=704">here</a> for some photos or <a href="https://plus.google.com/106688074977743591698/posts/QS5i7CEXFA4?pid=6183920313204915202&amp;oid=106688074977743591698">video</a>.\r\n<div id="APTFPIC_by_TAP-by-shortcode-254" class="AlpinePhotoTiles_inpost_container">\r\n<div id="id254-AlpinePhotoTiles_container" class="AlpinePhotoTiles_container_class">\r\n<div id="id254-hidden-parent" class="AlpinePhotoTiles_parent_class">\r\n<div id="id254-by-link" class="AlpinePhotoTiles-by-link"><a title="Widget by The Alpine Press" href="http://thealpinepress.com/">TAP</a></div>\r\n<div class="AlpinePhotoTiles-row"></div>\r\n<div class="AlpinePhotoTiles-row"></div>\r\n</div>\r\n</div>\r\n</div>', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2016-02-20 16:09:51', '2016-02-20 16:09:51', '', 0, 'http://localhost/?p=1', 0, 'post', '', 2),
(5, 1, '2015-09-21 19:36:29', '2015-09-21 19:36:29', '', '2013', '', 'inherit', 'open', 'closed', '', '2013', '', '', '2015-09-21 19:36:29', '2015-09-21 19:36:29', '', 1, 'http://localhost/wp-content/uploads/2015/09/2013.jpg', 0, 'attachment', 'image/jpeg', 0),
(6, 1, '2015-09-23 01:51:27', '2015-09-23 01:51:27', '<a href="http://localhost/wp-content/uploads/2015/09/2013.jpg"><img class="alignnone  wp-image-5" src="http://localhost/wp-content/uploads/2015/09/2013-300x214.jpg" alt="2013" width="602" height="430" /></a>Last week I was in Italy to help teach a new course on UAS for Environmental Monitoring, which was organized by <a href="http://www2.unibas.it/manfreda/HydroLab/home.html">Salvatore Manfreda</a> and <a href="http://caylor.princeton.edu/">Kelly Caylor</a>, and run under the aegis of the University of Basilicata. <a href="https://www.researchgate.net/profile/Jorge_Gago2">Xurxo Gago</a> from the Universitat de les Illes Balears provided instruction on multicopters and estimating crop water use from thermal imagery. We held classes in the ancient city of <a href="https://en.wikipedia.org/wiki/Matera">Matera</a> (a remarkable place), while flight training and data collection practicals took place in farmland to the south near Metaponto. By the end of the week, 17 students successfully ran a data collection mission (using fixed-wing UAS from <a href="http://readytodrone.com/">readytodrone.com</a>), processed the resulting imagery into orthomosaics and DEMs, and did some initial data analysis, including a comparison of leaf area index measurements made in the field, UAS-derived BNDVI, and Landsat-derived NDVI (Marc Mayes from Brown University found that Landsat 8 had imaged the area during that week, making a very nice comparison). The student presentations and lectures are available <a href="http://www.slideshare.net/Summer_School_of_Hydrology">here</a>.  We hope to run this course again next summer, so please watch this space if you are interested in learning how to use UAS to close the gap between field and spaceborne observations. Click <a href="http://lyndonestes.princeton.edu/?p=704">here</a> for some photos or <a href="https://plus.google.com/106688074977743591698/posts/QS5i7CEXFA4?pid=6183920313204915202&amp;oid=106688074977743591698">video</a>.\n<div id="APTFPIC_by_TAP-by-shortcode-254" class="AlpinePhotoTiles_inpost_container">\n<div id="id254-AlpinePhotoTiles_container" class="AlpinePhotoTiles_container_class">\n<div id="id254-hidden-parent" class="AlpinePhotoTiles_parent_class">\n<div id="id254-by-link" class="AlpinePhotoTiles-by-link"><a title="Widget by The Alpine Press" href="http://thealpinepress.com/">TAP</a></div>\n<div class="AlpinePhotoTiles-row"></div>\n<div class="AlpinePhotoTiles-row"></div>\n</div>\n</div>\n</div>', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-autosave-v1', '', '', '2015-09-23 01:51:27', '2015-09-23 01:51:27', '', 1, 'http://localhost/?p=6', 0, 'revision', '', 0),
(10, 1, '2015-09-23 01:45:45', '2015-09-23 01:45:45', 'Last week I was in Italy to help teach a new course on UAS for Environmental Monitoring, which was organized by <a href="http://www2.unibas.it/manfreda/HydroLab/home.html">Salvatore Manfreda</a> and <a href="http://caylor.princeton.edu/">Kelly Caylor</a>, and run under the aegis of the University of Basilicata. <a href="https://www.researchgate.net/profile/Jorge_Gago2">Xurxo Gago</a> from the Universitat de les Illes Balears provided instruction on multicopters and estimating crop water use from thermal imagery. We held classes in the ancient city of <a href="https://en.wikipedia.org/wiki/Matera">Matera</a> (a remarkable place), while flight training and data collection practicals took place in farmland to the south near Metaponto. By the end of the week, 17 students successfully ran a data collection mission (using fixed-wing UAS from <a href="http://readytodrone.com/">readytodrone.com</a>), processed the resulting imagery into orthomosaics and DEMs, and did some initial data analysis, including a comparison of leaf area index measurements made in the field, UAS-derived BNDVI, and Landsat-derived NDVI (Marc Mayes from Brown University found that Landsat 8 had imaged the area during that week, making a very nice comparison). The student presentations and lectures are available <a href="http://www.slideshare.net/Summer_School_of_Hydrology">here</a>.  We hope to run this course again next summer, so please watch this space if you are interested in learning how to use UAS to close the gap between field and spaceborne observations. Click <a href="http://lyndonestes.princeton.edu/?p=704">here</a> for some photos or <a href="https://plus.google.com/106688074977743591698/posts/QS5i7CEXFA4?pid=6183920313204915202&amp;oid=106688074977743591698">video</a>.\r\n<div id="APTFPIC_by_TAP-by-shortcode-254" class="AlpinePhotoTiles_inpost_container">\r\n<div id="id254-AlpinePhotoTiles_container" class="AlpinePhotoTiles_container_class">\r\n<div id="id254-hidden-parent" class="AlpinePhotoTiles_parent_class">\r\n<div id="id254-by-link" class="AlpinePhotoTiles-by-link"><a title="Widget by The Alpine Press" href="http://thealpinepress.com/">TAP</a></div>\r\n<div class="AlpinePhotoTiles-row"></div>\r\n<div class="AlpinePhotoTiles-row">\r\n<div class="AlpinePhotoTiles-image-div-container AlpinePhotoTiles-tile"></div>\r\n<div class="AlpinePhotoTiles-image-div-container AlpinePhotoTiles-tile"></div>\r\n<div class="AlpinePhotoTiles-image-div-container AlpinePhotoTiles-tile"></div>\r\n<div class="AlpinePhotoTiles-image-div-container AlpinePhotoTiles-tile"></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2015-09-23 01:45:45', '2015-09-23 01:45:45', '', 1, 'http://localhost/?p=10', 0, 'revision', '', 0),
(11, 1, '2015-09-23 01:51:29', '2015-09-23 01:51:29', '<a href="http://localhost/wp-content/uploads/2015/09/2013.jpg"><img class="alignnone  wp-image-5" src="http://localhost/wp-content/uploads/2015/09/2013-300x214.jpg" alt="2013" width="602" height="430" /></a>Last week I was in Italy to help teach a new course on UAS for Environmental Monitoring, which was organized by <a href="http://www2.unibas.it/manfreda/HydroLab/home.html">Salvatore Manfreda</a> and <a href="http://caylor.princeton.edu/">Kelly Caylor</a>, and run under the aegis of the University of Basilicata. <a href="https://www.researchgate.net/profile/Jorge_Gago2">Xurxo Gago</a> from the Universitat de les Illes Balears provided instruction on multicopters and estimating crop water use from thermal imagery. We held classes in the ancient city of <a href="https://en.wikipedia.org/wiki/Matera">Matera</a> (a remarkable place), while flight training and data collection practicals took place in farmland to the south near Metaponto. By the end of the week, 17 students successfully ran a data collection mission (using fixed-wing UAS from <a href="http://readytodrone.com/">readytodrone.com</a>), processed the resulting imagery into orthomosaics and DEMs, and did some initial data analysis, including a comparison of leaf area index measurements made in the field, UAS-derived BNDVI, and Landsat-derived NDVI (Marc Mayes from Brown University found that Landsat 8 had imaged the area during that week, making a very nice comparison). The student presentations and lectures are available <a href="http://www.slideshare.net/Summer_School_of_Hydrology">here</a>.  We hope to run this course again next summer, so please watch this space if you are interested in learning how to use UAS to close the gap between field and spaceborne observations. Click <a href="http://lyndonestes.princeton.edu/?p=704">here</a> for some photos or <a href="https://plus.google.com/106688074977743591698/posts/QS5i7CEXFA4?pid=6183920313204915202&amp;oid=106688074977743591698">video</a>.\r\n<div id="APTFPIC_by_TAP-by-shortcode-254" class="AlpinePhotoTiles_inpost_container">\r\n<div id="id254-AlpinePhotoTiles_container" class="AlpinePhotoTiles_container_class">\r\n<div id="id254-hidden-parent" class="AlpinePhotoTiles_parent_class">\r\n<div id="id254-by-link" class="AlpinePhotoTiles-by-link"><a title="Widget by The Alpine Press" href="http://thealpinepress.com/">TAP</a></div>\r\n<div class="AlpinePhotoTiles-row"></div>\r\n<div class="AlpinePhotoTiles-row"></div>\r\n</div>\r\n</div>\r\n</div>', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2015-09-23 01:51:29', '2015-09-23 01:51:29', '', 1, 'http://localhost/?p=11', 0, 'revision', '', 0),
(21, 1, '2016-02-12 01:30:26', '2016-02-12 01:30:26', '<p style="text-align: justify;"><span style="font-family: Arial, sans-serif; font-size: 1em; line-height: 1.5;">We study key dimensions of agriculture livelihoods and development in sub-Saharan Africa (SSA), where smallholder farmers are and will continue to be the primary producers of food. We are particularly interested in understanding the impact of the continent\'s increasing rainfall variability on food security, the sustainability of Africa\'s accelerating agricultural development, and how SSA\'s agricultural systems interact with and impact societies\' efforts to meet their water and energy needs. To provide the data we need to address these issues, we develop novel approaches to observing agricultural systems at high spatial and temporal resolutions.</span></p>', 'About Us', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2017-01-14 21:16:03', '2017-01-14 21:16:03', '', 0, 'http://smallholder.ag/?page_id=21', 0, 'page', '', 0),
(22, 1, '2016-02-12 01:30:26', '2016-02-12 01:30:26', '<strong>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</strong>', 'About', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2016-02-12 01:30:26', '2016-02-12 01:30:26', '', 21, 'http://smallholder.ag/?p=22', 0, 'revision', '', 0),
(23, 1, '2016-02-12 01:31:47', '2016-02-12 01:31:47', '', 'Projects', '', 'publish', 'closed', 'closed', '', 'projects', '', '', '2017-01-11 04:21:44', '2017-01-11 04:21:44', '', 0, 'http://smallholder.ag/?page_id=23', 0, 'page', '', 0),
(24, 1, '2016-02-12 01:31:47', '2016-02-12 01:31:47', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 'Projects', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2016-02-12 01:31:47', '2016-02-12 01:31:47', '', 23, 'http://smallholder.ag/?p=24', 0, 'revision', '', 0),
(25, 1, '2016-02-12 01:33:47', '2016-02-12 01:33:47', ' ', '', '', 'publish', 'closed', 'closed', '', '25', '', '', '2016-02-25 01:23:03', '2016-02-25 01:23:03', '', 0, 'http://smallholder.ag/?p=25', 1, 'nav_menu_item', '', 0),
(26, 1, '2016-02-12 01:33:47', '2016-02-12 01:33:47', ' ', '', '', 'publish', 'closed', 'closed', '', '26', '', '', '2016-02-25 01:23:03', '2016-02-25 01:23:03', '', 0, 'http://smallholder.ag/?p=26', 2, 'nav_menu_item', '', 0),
(32, 1, '2016-02-13 00:42:09', '2016-02-13 00:42:09', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'About', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2016-02-13 00:42:09', '2016-02-13 00:42:09', '', 21, 'http://smallholder.ag/21-revision-v1/', 0, 'revision', '', 0),
(34, 1, '2016-02-13 04:22:41', '2016-02-13 04:22:41', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'What is Lorem Ipsum?', '', 'publish', 'open', 'open', '', 'what-is-lorem-ipsum', '', '', '2016-02-13 16:39:24', '2016-02-13 16:39:24', '', 0, 'http://smallholder.ag/?p=34', 0, 'post', '', 0),
(35, 1, '2016-02-13 04:22:41', '2016-02-13 04:22:41', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'What is Lorem Ipsum?', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2016-02-13 04:22:41', '2016-02-13 04:22:41', '', 34, 'http://smallholder.ag/34-revision-v1/', 0, 'revision', '', 0),
(36, 1, '2016-02-13 16:25:01', '2016-02-13 16:25:01', '', 'Image', '', 'inherit', 'open', 'closed', '', 'descarga', '', '', '2016-02-13 16:25:52', '2016-02-13 16:25:52', '', 34, 'http://smallholder.ag/wp-content/uploads/2016/02/descarga.jpg', 0, 'attachment', 'image/jpeg', 0),
(38, 1, '2016-02-13 16:57:32', '2016-02-13 16:57:32', '', 'thumbnail', '', 'inherit', 'open', 'closed', '', 'thumbnail', '', '', '2016-02-13 16:57:32', '2016-02-13 16:57:32', '', 34, 'http://smallholder.ag/wp-content/uploads/2016/02/thumbnail.png', 0, 'attachment', 'image/png', 0),
(39, 1, '2016-02-13 17:07:38', '2016-02-13 17:07:38', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.', 'What does Lorem Ipsum come from?', '', 'publish', 'open', 'open', '', 'what-does-lorem-ipsum-come-from', '', '', '2016-02-13 19:47:54', '2016-02-13 19:47:54', '', 0, 'http://smallholder.ag/?p=39', 0, 'post', '', 0),
(40, 1, '2016-02-13 17:07:38', '2016-02-13 17:07:38', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.', 'What does Lorem Ipsum come from?', '', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2016-02-13 17:07:38', '2016-02-13 17:07:38', '', 39, 'http://smallholder.ag/39-revision-v1/', 0, 'revision', '', 0),
(42, 1, '2016-02-13 17:08:28', '2016-02-13 17:08:28', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'Where can I get some Lorem Ipsum?', '', 'publish', 'open', 'open', '', 'where-can-i-get-some-lorem-ipsum', '', '', '2016-02-13 19:11:30', '2016-02-13 19:11:30', '', 0, 'http://smallholder.ag/?p=42', 0, 'post', '', 0),
(43, 1, '2016-02-13 17:08:28', '2016-02-13 17:08:28', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'Where can I get some Lorem Ipsum?', '', 'inherit', 'closed', 'closed', '', '42-revision-v1', '', '', '2016-02-13 17:08:28', '2016-02-13 17:08:28', '', 42, 'http://smallholder.ag/42-revision-v1/', 0, 'revision', '', 0),
(44, 1, '2016-02-13 17:11:04', '2016-02-13 17:11:04', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 'What do we use it?', '', 'publish', 'open', 'open', '', 'what-do-we-use-it', '', '', '2016-02-13 18:01:57', '2016-02-13 18:01:57', '', 0, 'http://smallholder.ag/?p=44', 0, 'post', '', 0),
(45, 1, '2016-02-13 17:11:04', '2016-02-13 17:11:04', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 'What do we use it?', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2016-02-13 17:11:04', '2016-02-13 17:11:04', '', 44, 'http://smallholder.ag/44-revision-v1/', 0, 'revision', '', 0),
(47, 1, '2016-02-13 19:47:33', '2016-02-13 19:47:33', '', '200', '', 'inherit', 'open', 'closed', '', '200', '', '', '2016-02-13 19:47:33', '2016-02-13 19:47:33', '', 39, 'http://smallholder.ag/wp-content/uploads/2016/02/200.jpg', 0, 'attachment', 'image/jpeg', 0),
(48, 1, '2016-02-13 19:47:37', '2016-02-13 19:47:37', '', '400', '', 'inherit', 'open', 'closed', '', '400', '', '', '2016-02-13 19:47:37', '2016-02-13 19:47:37', '', 39, 'http://smallholder.ag/wp-content/uploads/2016/02/400.jpg', 0, 'attachment', 'image/jpeg', 0),
(49, 1, '2016-02-13 19:52:29', '2016-02-13 19:52:29', 'Árvore é um vegetal de tronco lenhoso cujos ramos só saem a certa altura do solo. Em termos biológicos é uma planta permanentemente lenhosa de grande porte, com raizes pivotantes, caule lenhoso do tipo tronco, que forma ramos bem acima do nível do solo e que se estendem até o ápice da raiz\r\n\r\nOs arbustos, além do menor porte, podem exibir ramos desde junto ao solo. Desta maneira apenas as gimnospermas e angiospermas dicotiledôneas lenhosas são consideradas espécies arbóreas.\r\n\r\nPor pequeno porte, embora não exista uma definição consensual, costuma-se entender uma altura mínima de quatro metros na maturidade. Em relação ao tamanho máximo estudos demonstram que uma árvore poderia atingir de 1 a 14 metros , sendo uma sequoia chamada Hyperion, localizada no Parque Nacional de Redwood ao norte de São Francisco, Estados Unidos, o maior exemplar vivo conhecido no momento, possuindo 115,55m.\r\n\r\nEssa definição exclui as palmeiras, que não possuem crescimento do diâmetro de seu caule para a formação do tronco, além do mesmo também não ser ramificado. Da mesma forma exclui plantas perenes lenhosas de pequeno porte, mas que se desenvolvem como se fossem árvores em miniatura como o salgueiro-anão herbáceo (‘’Salix herbacea L.’’) e o salgueiro-anão reticulado (‘’ Salix reticulata L.’’)\r\n\r\nEm 1961 o presidente Jânio Quadros declarou o pau-brasil a Árvore Nacional, sendo reservado ao Ipê-amarelo, da espécie Tabebuia vellosoi, o título de Flor Nacional.', 'As Arvores', '', 'publish', 'open', 'open', '', 'as-arvores', '', '', '2016-02-20 16:10:51', '2016-02-20 16:10:51', '', 0, 'http://smallholder.ag/?p=49', 0, 'post', '', 0),
(50, 1, '2016-02-13 19:52:29', '2016-02-13 19:52:29', '<a href="http://smallholder.ag/wp-content/uploads/2016/02/400.jpg" rel="attachment wp-att-48"><img class=" wp-image-48 aligncenter" src="http://smallholder.ag/wp-content/uploads/2016/02/400-300x200.jpg" alt="400" width="318" height="212" /></a>\r\n\r\nÁrvore é um vegetal de tronco lenhoso cujos ramos só saem a certa altura do solo. Em termos biológicos é uma planta permanentemente lenhosa de grande porte, com raizes pivotantes, caule lenhoso do tipo tronco, que forma ramos bem acima do nível do solo e que se estendem até o ápice da raiz\r\n\r\nOs arbustos, além do menor porte, podem exibir ramos desde junto ao solo. Desta maneira apenas as gimnospermas e angiospermas dicotiledôneas lenhosas são consideradas espécies arbóreas.\r\n\r\nPor pequeno porte, embora não exista uma definição consensual, costuma-se entender uma altura mínima de quatro metros na maturidade. Em relação ao tamanho máximo estudos demonstram que uma árvore poderia atingir de 1 a 14 metros , sendo uma sequoia chamada Hyperion, localizada no Parque Nacional de Redwood ao norte de São Francisco, Estados Unidos, o maior exemplar vivo conhecido no momento, possuindo 115,55m.\r\n\r\nEssa definição exclui as palmeiras, que não possuem crescimento do diâmetro de seu caule para a formação do tronco, além do mesmo também não ser ramificado. Da mesma forma exclui plantas perenes lenhosas de pequeno porte, mas que se desenvolvem como se fossem árvores em miniatura como o salgueiro-anão herbáceo (‘’Salix herbacea L.’’) e o salgueiro-anão reticulado (‘’ Salix reticulata L.’’)\r\n\r\nEm 1961 o presidente Jânio Quadros declarou o pau-brasil a Árvore Nacional, sendo reservado ao Ipê-amarelo, da espécie Tabebuia vellosoi, o título de Flor Nacional.', 'As Arvores', '', 'inherit', 'closed', 'closed', '', '49-revision-v1', '', '', '2016-02-13 19:52:29', '2016-02-13 19:52:29', '', 49, 'http://smallholder.ag/49-revision-v1/', 0, 'revision', '', 0),
(51, 1, '2016-02-13 20:14:52', '2016-02-13 20:14:52', '&nbsp;\r\n\r\n<a href="http://smallholder.ag/wp-content/uploads/2016/02/400.jpg" rel="attachment wp-att-48"><img class="aligncenter size-medium wp-image-48" src="http://smallholder.ag/wp-content/uploads/2016/02/400-300x200.jpg" alt="400" width="300" height="200" /></a>Árvore é um vegetal de tronco lenhoso cujos ramos só saem a certa altura do solo. Em termos biológicos é uma planta permanentemente lenhosa de grande porte, com raizes pivotantes, caule lenhoso do tipo tronco, que forma ramos bem acima do nível do solo e que se estendem até o ápice da raiz\r\n\r\nOs arbustos, além do menor porte, podem exibir ramos desde junto ao solo. Desta maneira apenas as gimnospermas e angiospermas dicotiledôneas lenhosas são consideradas espécies arbóreas.\r\n\r\nPor pequeno porte, embora não exista uma definição consensual, costuma-se entender uma altura mínima de quatro metros na maturidade. Em relação ao tamanho máximo estudos demonstram que uma árvore poderia atingir de 1 a 14 metros , sendo uma sequoia chamada Hyperion, localizada no Parque Nacional de Redwood ao norte de São Francisco, Estados Unidos, o maior exemplar vivo conhecido no momento, possuindo 115,55m.\r\n\r\nEssa definição exclui as palmeiras, que não possuem crescimento do diâmetro de seu caule para a formação do tronco, além do mesmo também não ser ramificado. Da mesma forma exclui plantas perenes lenhosas de pequeno porte, mas que se desenvolvem como se fossem árvores em miniatura como o salgueiro-anão herbáceo (‘’Salix herbacea L.’’) e o salgueiro-anão reticulado (‘’ Salix reticulata L.’’)\r\n\r\nEm 1961 o presidente Jânio Quadros declarou o pau-brasil a Árvore Nacional, sendo reservado ao Ipê-amarelo, da espécie Tabebuia vellosoi, o título de Flor Nacional.', 'As Arvores', '', 'inherit', 'closed', 'closed', '', '49-revision-v1', '', '', '2016-02-13 20:14:52', '2016-02-13 20:14:52', '', 49, 'http://smallholder.ag/49-revision-v1/', 0, 'revision', '', 0),
(52, 1, '2016-02-13 20:16:06', '2016-02-13 20:16:06', '<a href="http://smallholder.ag/wp-content/uploads/2016/02/400.jpg" rel="attachment wp-att-48"><img class="aligncenter size-medium wp-image-48" src="http://smallholder.ag/wp-content/uploads/2016/02/400-300x200.jpg" alt="400" width="300" height="200" /></a>\r\n\r\nÁrvore é um vegetal de tronco lenhoso cujos ramos só saem a certa altura do solo. Em termos biológicos é uma planta permanentemente lenhosa de grande porte, com raizes pivotantes, caule lenhoso do tipo tronco, que forma ramos bem acima do nível do solo e que se estendem até o ápice da raiz\r\n\r\nOs arbustos, além do menor porte, podem exibir ramos desde junto ao solo. Desta maneira apenas as gimnospermas e angiospermas dicotiledôneas lenhosas são consideradas espécies arbóreas.\r\n\r\nPor pequeno porte, embora não exista uma definição consensual, costuma-se entender uma altura mínima de quatro metros na maturidade. Em relação ao tamanho máximo estudos demonstram que uma árvore poderia atingir de 1 a 14 metros , sendo uma sequoia chamada Hyperion, localizada no Parque Nacional de Redwood ao norte de São Francisco, Estados Unidos, o maior exemplar vivo conhecido no momento, possuindo 115,55m.\r\n\r\nEssa definição exclui as palmeiras, que não possuem crescimento do diâmetro de seu caule para a formação do tronco, além do mesmo também não ser ramificado. Da mesma forma exclui plantas perenes lenhosas de pequeno porte, mas que se desenvolvem como se fossem árvores em miniatura como o salgueiro-anão herbáceo (‘’Salix herbacea L.’’) e o salgueiro-anão reticulado (‘’ Salix reticulata L.’’)\r\n\r\nEm 1961 o presidente Jânio Quadros declarou o pau-brasil a Árvore Nacional, sendo reservado ao Ipê-amarelo, da espécie Tabebuia vellosoi, o título de Flor Nacional.', 'As Arvores', '', 'inherit', 'closed', 'closed', '', '49-revision-v1', '', '', '2016-02-13 20:16:06', '2016-02-13 20:16:06', '', 49, 'http://smallholder.ag/49-revision-v1/', 0, 'revision', '', 0),
(53, 1, '2016-02-13 20:18:06', '2016-02-13 20:18:06', '<a href="http://smallholder.ag/wp-content/uploads/2016/02/400.jpg" rel="attachment wp-att-48"><img class="aligncenter size-medium wp-image-48 .center-element " src="http://smallholder.ag/wp-content/uploads/2016/02/400-300x200.jpg" alt="400" width="300" height="200" /></a>\r\n\r\nÁrvore é um vegetal de tronco lenhoso cujos ramos só saem a certa altura do solo. Em termos biológicos é uma planta permanentemente lenhosa de grande porte, com raizes pivotantes, caule lenhoso do tipo tronco, que forma ramos bem acima do nível do solo e que se estendem até o ápice da raiz\r\n\r\nOs arbustos, além do menor porte, podem exibir ramos desde junto ao solo. Desta maneira apenas as gimnospermas e angiospermas dicotiledôneas lenhosas são consideradas espécies arbóreas.\r\n\r\nPor pequeno porte, embora não exista uma definição consensual, costuma-se entender uma altura mínima de quatro metros na maturidade. Em relação ao tamanho máximo estudos demonstram que uma árvore poderia atingir de 1 a 14 metros , sendo uma sequoia chamada Hyperion, localizada no Parque Nacional de Redwood ao norte de São Francisco, Estados Unidos, o maior exemplar vivo conhecido no momento, possuindo 115,55m.\r\n\r\nEssa definição exclui as palmeiras, que não possuem crescimento do diâmetro de seu caule para a formação do tronco, além do mesmo também não ser ramificado. Da mesma forma exclui plantas perenes lenhosas de pequeno porte, mas que se desenvolvem como se fossem árvores em miniatura como o salgueiro-anão herbáceo (‘’Salix herbacea L.’’) e o salgueiro-anão reticulado (‘’ Salix reticulata L.’’)\r\n\r\nEm 1961 o presidente Jânio Quadros declarou o pau-brasil a Árvore Nacional, sendo reservado ao Ipê-amarelo, da espécie Tabebuia vellosoi, o título de Flor Nacional.', 'As Arvores', '', 'inherit', 'closed', 'closed', '', '49-revision-v1', '', '', '2016-02-13 20:18:06', '2016-02-13 20:18:06', '', 49, 'http://smallholder.ag/49-revision-v1/', 0, 'revision', '', 0),
(54, 1, '2016-02-13 20:18:20', '2016-02-13 20:18:20', '<a href="http://smallholder.ag/wp-content/uploads/2016/02/400.jpg" rel="attachment wp-att-48"><img class="aligncenter size-medium wp-image-48 center-element " src="http://smallholder.ag/wp-content/uploads/2016/02/400-300x200.jpg" alt="400" width="300" height="200" /></a>\r\n\r\nÁrvore é um vegetal de tronco lenhoso cujos ramos só saem a certa altura do solo. Em termos biológicos é uma planta permanentemente lenhosa de grande porte, com raizes pivotantes, caule lenhoso do tipo tronco, que forma ramos bem acima do nível do solo e que se estendem até o ápice da raiz\r\n\r\nOs arbustos, além do menor porte, podem exibir ramos desde junto ao solo. Desta maneira apenas as gimnospermas e angiospermas dicotiledôneas lenhosas são consideradas espécies arbóreas.\r\n\r\nPor pequeno porte, embora não exista uma definição consensual, costuma-se entender uma altura mínima de quatro metros na maturidade. Em relação ao tamanho máximo estudos demonstram que uma árvore poderia atingir de 1 a 14 metros , sendo uma sequoia chamada Hyperion, localizada no Parque Nacional de Redwood ao norte de São Francisco, Estados Unidos, o maior exemplar vivo conhecido no momento, possuindo 115,55m.\r\n\r\nEssa definição exclui as palmeiras, que não possuem crescimento do diâmetro de seu caule para a formação do tronco, além do mesmo também não ser ramificado. Da mesma forma exclui plantas perenes lenhosas de pequeno porte, mas que se desenvolvem como se fossem árvores em miniatura como o salgueiro-anão herbáceo (‘’Salix herbacea L.’’) e o salgueiro-anão reticulado (‘’ Salix reticulata L.’’)\r\n\r\nEm 1961 o presidente Jânio Quadros declarou o pau-brasil a Árvore Nacional, sendo reservado ao Ipê-amarelo, da espécie Tabebuia vellosoi, o título de Flor Nacional.', 'As Arvores', '', 'inherit', 'closed', 'closed', '', '49-revision-v1', '', '', '2016-02-13 20:18:20', '2016-02-13 20:18:20', '', 49, 'http://smallholder.ag/49-revision-v1/', 0, 'revision', '', 0),
(55, 1, '2016-02-13 20:19:34', '2016-02-13 20:19:34', '<a href="http://smallholder.ag/wp-content/uploads/2016/02/400.jpg" rel="attachment wp-att-48"><img class="aligncenter size-medium wp-image-48" src="http://smallholder.ag/wp-content/uploads/2016/02/400-300x200.jpg" alt="400" width="300" height="200" /></a>\r\n\r\nÁrvore é um vegetal de tronco lenhoso cujos ramos só saem a certa altura do solo. Em termos biológicos é uma planta permanentemente lenhosa de grande porte, com raizes pivotantes, caule lenhoso do tipo tronco, que forma ramos bem acima do nível do solo e que se estendem até o ápice da raiz\r\n\r\nOs arbustos, além do menor porte, podem exibir ramos desde junto ao solo. Desta maneira apenas as gimnospermas e angiospermas dicotiledôneas lenhosas são consideradas espécies arbóreas.\r\n\r\nPor pequeno porte, embora não exista uma definição consensual, costuma-se entender uma altura mínima de quatro metros na maturidade. Em relação ao tamanho máximo estudos demonstram que uma árvore poderia atingir de 1 a 14 metros , sendo uma sequoia chamada Hyperion, localizada no Parque Nacional de Redwood ao norte de São Francisco, Estados Unidos, o maior exemplar vivo conhecido no momento, possuindo 115,55m.\r\n\r\nEssa definição exclui as palmeiras, que não possuem crescimento do diâmetro de seu caule para a formação do tronco, além do mesmo também não ser ramificado. Da mesma forma exclui plantas perenes lenhosas de pequeno porte, mas que se desenvolvem como se fossem árvores em miniatura como o salgueiro-anão herbáceo (‘’Salix herbacea L.’’) e o salgueiro-anão reticulado (‘’ Salix reticulata L.’’)\r\n\r\nEm 1961 o presidente Jânio Quadros declarou o pau-brasil a Árvore Nacional, sendo reservado ao Ipê-amarelo, da espécie Tabebuia vellosoi, o título de Flor Nacional.', 'As Arvores', '', 'inherit', 'closed', 'closed', '', '49-revision-v1', '', '', '2016-02-13 20:19:34', '2016-02-13 20:19:34', '', 49, 'http://smallholder.ag/49-revision-v1/', 0, 'revision', '', 0),
(56, 1, '2016-02-13 20:21:09', '2016-02-13 20:21:09', '\r\n\r\n	<p><a href="http://smallholder.ag/wp-content/uploads/2016/02/400.jpg" rel="attachment wp-att-48"><img class="aligncenter  wp-image-48" src="http://smallholder.ag/wp-content/uploads/2016/02/400-300x200.jpg" alt="400" srcset="http://smallholder.ag/wp-content/uploads/2016/02/400-300x200.jpg 300w, http://smallholder.ag/wp-content/uploads/2016/02/400.jpg 600w" sizes="(max-width: 470px) 100vw, 470px" height="313" width="470"></a></p>\r\n<p>Árvore é um vegetal de tronco lenhoso cujos ramos só saem a certa altura do solo. Em termos biológicos é uma planta permanentemente lenhosa de grande porte, com raizes pivotantes, caule lenhoso do tipo tronco, que forma ramos bem acima do nível do solo e que se estendem até o ápice da raiz</p>\r\n<p>Os arbustos, além do menor porte, podem exibir ramos desde junto ao solo. Desta maneira apenas as gimnospermas e angiospermas dicotiledôneas lenhosas são consideradas espécies arbóreas.</p>\r\n<p>Por pequeno porte, embora não exista uma definição consensual, costuma-se entender uma altura mínima de quatro metros na maturidade. Em relação ao tamanho máximo estudos demonstram que uma árvore poderia atingir de 1 a 14 metros , sendo uma sequoia chamada Hyperion, localizada no Parque Nacional de Redwood ao norte de São Francisco, Estados Unidos, o maior exemplar vivo conhecido no momento, possuindo 115,55m.</p>\r\n<p>Essa definição exclui as palmeiras, que não possuem crescimento do diâmetro de seu caule para a formação do tronco, além do mesmo também não ser ramificado. Da mesma forma exclui plantas perenes lenhosas de pequeno porte, mas que se desenvolvem como se fossem árvores em miniatura como o salgueiro-anão herbáceo (‘’Salix herbacea L.’’) e o salgueiro-anão reticulado (‘’ Salix reticulata L.’’)</p>\r\n<p>Em 1961 o presidente Jânio Quadros declarou o pau-brasil a Árvore Nacional, sendo reservado ao Ipê-amarelo, da espécie Tabebuia vellosoi, o título de Flor Nacional.</p>\r\n\r\n', 'As Arvores', '', 'inherit', 'closed', 'closed', '', '49-revision-v1', '', '', '2016-02-13 20:21:09', '2016-02-13 20:21:09', '', 49, 'http://smallholder.ag/49-revision-v1/', 0, 'revision', '', 0),
(57, 1, '2016-02-13 20:22:54', '2016-02-13 20:22:54', '<a href="http://smallholder.ag/wp-content/uploads/2016/02/400.jpg" rel="attachment wp-att-48"><img class="aligncenter wp-image-48" src="http://smallholder.ag/wp-content/uploads/2016/02/400-300x200.jpg" sizes="(max-width: 470px) 100vw, 470px" srcset="http://smallholder.ag/wp-content/uploads/2016/02/400-300x200.jpg 300w, http://smallholder.ag/wp-content/uploads/2016/02/400.jpg 600w" alt="400" width="470" height="313" /></a>\r\n\r\nÁrvore é um vegetal de tronco lenhoso cujos ramos só saem a certa altura do solo. Em termos biológicos é uma planta permanentemente lenhosa de grande porte, com raizes pivotantes, caule lenhoso do tipo tronco, que forma ramos bem acima do nível do solo e que se estendem até o ápice da raiz\r\n\r\nOs arbustos, além do menor porte, podem exibir ramos desde junto ao solo. Desta maneira apenas as gimnospermas e angiospermas dicotiledôneas lenhosas são consideradas espécies arbóreas.\r\n\r\nPor pequeno porte, embora não exista uma definição consensual, costuma-se entender uma altura mínima de quatro metros na maturidade. Em relação ao tamanho máximo estudos demonstram que uma árvore poderia atingir de 1 a 14 metros , sendo uma sequoia chamada Hyperion, localizada no Parque Nacional de Redwood ao norte de São Francisco, Estados Unidos, o maior exemplar vivo conhecido no momento, possuindo 115,55m.\r\n\r\nEssa definição exclui as palmeiras, que não possuem crescimento do diâmetro de seu caule para a formação do tronco, além do mesmo também não ser ramificado. Da mesma forma exclui plantas perenes lenhosas de pequeno porte, mas que se desenvolvem como se fossem árvores em miniatura como o salgueiro-anão herbáceo (‘’Salix herbacea L.’’) e o salgueiro-anão reticulado (‘’ Salix reticulata L.’’)\r\n\r\nEm 1961 o presidente Jânio Quadros declarou o pau-brasil a Árvore Nacional, sendo reservado ao Ipê-amarelo, da espécie Tabebuia vellosoi, o título de Flor Nacional.', 'As Arvores', '', 'inherit', 'closed', 'closed', '', '49-revision-v1', '', '', '2016-02-13 20:22:54', '2016-02-13 20:22:54', '', 49, 'http://smallholder.ag/49-revision-v1/', 0, 'revision', '', 0),
(58, 1, '2016-02-13 20:29:58', '2016-02-13 20:29:58', '<a href="http://smallholder.ag/wp-content/uploads/2016/02/400.jpg" rel="attachment wp-att-48"><img class="aligncenter wp-image-48" src="http://smallholder.ag/wp-content/uploads/2016/02/400-300x200.jpg" sizes="(max-width: 470px) 100vw, 470px" srcset="http://smallholder.ag/wp-content/uploads/2016/02/400-300x200.jpg 300w, http://smallholder.ag/wp-content/uploads/2016/02/400.jpg 600w" alt="400" width="470" height="313" /></a>\r\n\r\n&nbsp;\r\n\r\nÁrvore é um vegetal de tronco lenhoso cujos ramos só saem a certa altura do solo. Em termos biológicos é uma planta permanentemente lenhosa de grande porte, com raizes pivotantes, caule lenhoso do tipo tronco, que forma ramos bem acima do nível do solo e que se estendem até o ápice da raiz\r\n\r\nOs arbustos, além do menor porte, podem exibir ramos desde junto ao solo. Desta maneira apenas as gimnospermas e angiospermas dicotiledôneas lenhosas são consideradas espécies arbóreas.\r\n\r\nPor pequeno porte, embora não exista uma definição consensual, costuma-se entender uma altura mínima de quatro metros na maturidade. Em relação ao tamanho máximo estudos demonstram que uma árvore poderia atingir de 1 a 14 metros , sendo uma sequoia chamada Hyperion, localizada no Parque Nacional de Redwood ao norte de São Francisco, Estados Unidos, o maior exemplar vivo conhecido no momento, possuindo 115,55m.\r\n\r\nEssa definição exclui as palmeiras, que não possuem crescimento do diâmetro de seu caule para a formação do tronco, além do mesmo também não ser ramificado. Da mesma forma exclui plantas perenes lenhosas de pequeno porte, mas que se desenvolvem como se fossem árvores em miniatura como o salgueiro-anão herbáceo (‘’Salix herbacea L.’’) e o salgueiro-anão reticulado (‘’ Salix reticulata L.’’)\r\n\r\nEm 1961 o presidente Jânio Quadros declarou o pau-brasil a Árvore Nacional, sendo reservado ao Ipê-amarelo, da espécie Tabebuia vellosoi, o título de Flor Nacional.', 'As Arvores', '', 'inherit', 'closed', 'closed', '', '49-revision-v1', '', '', '2016-02-13 20:29:58', '2016-02-13 20:29:58', '', 49, 'http://smallholder.ag/49-revision-v1/', 0, 'revision', '', 0),
(59, 1, '2016-02-13 21:00:34', '2016-02-13 21:00:34', '\r\n\r\n	<p><a href="http://smallholder.ag/wp-content/uploads/2016/02/400.jpg" rel="attachment wp-att-48"><img class="aligncenter wp-image-48" src="http://smallholder.ag/wp-content/uploads/2016/02/400-300x200.jpg" sizes="(max-width: 470px) 100vw, 470px" srcset="http://smallholder.ag/wp-content/uploads/2016/02/400-300x200.jpg 300w, http://smallholder.ag/wp-content/uploads/2016/02/400.jpg 600w" alt="400" height="313" width="470"></a></p>\r\n<p>&nbsp;</p>\r\n<p>Árvore é um vegetal de tronco lenhoso cujos ramos só saem a certa altura do solo. Em termos biológicos é uma planta permanentemente lenhosa de grande porte, com raizes pivotantes, caule lenhoso do tipo tronco, que forma ramos bem acima do nível do solo e que se estendem até o ápice da raiz</p>\r\n<p>Os arbustos, além do menor porte, podem exibir ramos desde junto ao solo. Desta maneira apenas as gimnospermas e angiospermas dicotiledôneas lenhosas são consideradas espécies arbóreas.</p>\r\n<p>Por pequeno porte, embora não exista uma definição consensual, costuma-se entender uma altura mínima de quatro metros na maturidade. Em relação ao tamanho máximo estudos demonstram que uma árvore poderia atingir de 1 a 14 metros , sendo uma sequoia chamada Hyperion, localizada no Parque Nacional de Redwood ao norte de São Francisco, Estados Unidos, o maior exemplar vivo conhecido no momento, possuindo 115,55m.</p>\r\n<p>Essa definição exclui as palmeiras, que não possuem crescimento do diâmetro de seu caule para a formação do tronco, além do mesmo também não ser ramificado. Da mesma forma exclui plantas perenes lenhosas de pequeno porte, mas que se desenvolvem como se fossem árvores em miniatura como o salgueiro-anão herbáceo (‘’Salix herbacea L.’’) e o salgueiro-anão reticulado (‘’ Salix reticulata L.’’)</p>\r\n<p>Em 1961 o presidente Jânio Quadros declarou o pau-brasil a Árvore Nacional, sendo reservado ao Ipê-amarelo, da espécie Tabebuia vellosoi, o título de Flor Nacional.</p>\r\n\r\n', 'As Arvores', '', 'inherit', 'closed', 'closed', '', '49-revision-v1', '', '', '2016-02-13 21:00:34', '2016-02-13 21:00:34', '', 49, 'http://smallholder.ag/49-revision-v1/', 0, 'revision', '', 0),
(60, 1, '2016-02-13 21:05:14', '2016-02-13 21:05:14', '<a href="http://smallholder.ag/wp-content/uploads/2016/02/400.jpg" rel="attachment wp-att-48"><img class="aligncenter wp-image-48" src="http://smallholder.ag/wp-content/uploads/2016/02/400-300x200.jpg" sizes="(max-width: 470px) 100vw, 470px" srcset="http://smallholder.ag/wp-content/uploads/2016/02/400-300x200.jpg 300w, http://smallholder.ag/wp-content/uploads/2016/02/400.jpg 600w" alt="400" width="470" height="313" /></a>\r\n\r\n&nbsp;\r\n\r\nÁrvore é um vegetal de tronco lenhoso cujos ramos só saem a certa altura do solo. Em termos biológicos é uma planta permanentemente lenhosa de grande porte, com raizes pivotantes, caule lenhoso do tipo tronco, que forma ramos bem acima do nível do solo e que se estendem até o ápice da raiz\r\n\r\nOs arbustos, além do menor porte, podem exibir ramos desde junto ao solo. Desta maneira apenas as gimnospermas e angiospermas dicotiledôneas lenhosas são consideradas espécies arbóreas.\r\n\r\nPor pequeno porte, embora não exista uma definição consensual, costuma-se entender uma altura mínima de quatro metros na maturidade. Em relação ao tamanho máximo estudos demonstram que uma árvore poderia atingir de 1 a 14 metros , sendo uma sequoia chamada Hyperion, localizada no Parque Nacional de Redwood ao norte de São Francisco, Estados Unidos, o maior exemplar vivo conhecido no momento, possuindo 115,55m.\r\n\r\nEssa definição exclui as palmeiras, que não possuem crescimento do diâmetro de seu caule para a formação do tronco, além do mesmo também não ser ramificado. Da mesma forma exclui plantas perenes lenhosas de pequeno porte, mas que se desenvolvem como se fossem árvores em miniatura como o salgueiro-anão herbáceo (‘’Salix herbacea L.’’) e o salgueiro-anão reticulado (‘’ Salix reticulata L.’’)\r\n\r\nEm 1961 o presidente Jânio Quadros declarou o pau-brasil a Árvore Nacional, sendo reservado ao Ipê-amarelo, da espécie Tabebuia vellosoi, o título de Flor Nacional.', 'As Arvores', '', 'inherit', 'closed', 'closed', '', '49-revision-v1', '', '', '2016-02-13 21:05:14', '2016-02-13 21:05:14', '', 49, 'http://smallholder.ag/49-revision-v1/', 0, 'revision', '', 0) ;
INSERT INTO `wp_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(61, 1, '2016-02-13 21:05:53', '2016-02-13 21:05:53', '<a href="http://smallholder.ag/wp-content/uploads/2016/02/400.jpg" rel="attachment wp-att-48"><img class="aligncenter wp-image-48" src="http://smallholder.ag/wp-content/uploads/2016/02/400-300x200.jpg" sizes="(max-width: 470px) 100vw, 470px" srcset="http://smallholder.ag/wp-content/uploads/2016/02/400-300x200.jpg 300w, http://smallholder.ag/wp-content/uploads/2016/02/400.jpg 600w" alt="400" width="470" height="313" /></a>\r\n\r\n&nbsp;\r\n\r\nÁrvore é um vegetal de tronco lenhoso cujos ramos só saem a certa altura do solo. Em termos biológicos é uma planta permanentemente lenhosa de grande porte, com raizes pivotantes, caule lenhoso do tipo tronco, que forma ramos bem acima do nível do solo e que se estendem até o ápice da raiz\r\n\r\nOs arbustos, além do menor porte, podem exibir ramos desde junto ao solo. Desta maneira apenas as gimnospermas e angiospermas dicotiledôneas lenhosas são consideradas espécies arbóreas.\r\n\r\nPor pequeno porte, embora não exista uma definição consensual, costuma-se entender uma altura mínima de quatro metros na maturidade. Em relação ao tamanho máximo estudos demonstram que uma árvore poderia atingir de 1 a 14 metros , sendo uma sequoia chamada Hyperion, localizada no Parque Nacional de Redwood ao norte de São Francisco, Estados Unidos, o maior exemplar vivo conhecido no momento, possuindo 115,55m.\r\n\r\nEssa definição exclui as palmeiras, que não possuem crescimento do diâmetro de seu caule para a formação do tronco, além do mesmo também não ser ramificado. Da mesma forma exclui plantas perenes lenhosas de pequeno porte, mas que se desenvolvem como se fossem árvores em miniatura como o salgueiro-anão herbáceo (‘’Salix herbacea L.’’) e o salgueiro-anão reticulado (‘’ Salix reticulata L.’’)\r\n\r\nEm 1961 o presidente Jânio Quadros declarou o pau-brasil a Árvore Nacional, sendo reservado ao Ipê-amarelo, da espécie Tabebuia vellosoi, o título de Flor Nacional.', 'As Árvores', '', 'inherit', 'closed', 'closed', '', '49-revision-v1', '', '', '2016-02-13 21:05:53', '2016-02-13 21:05:53', '', 49, 'http://smallholder.ag/49-revision-v1/', 0, 'revision', '', 0),
(62, 1, '2016-02-14 01:10:44', '2016-02-14 01:10:44', '<a href="http://smallholder.ag/wp-content/uploads/2016/02/400.jpg" rel="attachment wp-att-48"><img class="aligncenter wp-image-48" src="http://smallholder.ag/wp-content/uploads/2016/02/400-300x200.jpg" sizes="(max-width: 470px) 100vw, 470px" srcset="http://smallholder.ag/wp-content/uploads/2016/02/400-300x200.jpg 300w, http://smallholder.ag/wp-content/uploads/2016/02/400.jpg 600w" alt="400" width="470" height="313" /></a>\r\n\r\nÁrvore é um vegetal de tronco lenhoso cujos ramos só saem a certa altura do solo. Em termos biológicos é uma planta permanentemente lenhosa de grande porte, com raizes pivotantes, caule lenhoso do tipo tronco, que forma ramos bem acima do nível do solo e que se estendem até o ápice da raiz\r\n\r\nOs arbustos, além do menor porte, podem exibir ramos desde junto ao solo. Desta maneira apenas as gimnospermas e angiospermas dicotiledôneas lenhosas são consideradas espécies arbóreas.\r\n\r\nPor pequeno porte, embora não exista uma definição consensual, costuma-se entender uma altura mínima de quatro metros na maturidade. Em relação ao tamanho máximo estudos demonstram que uma árvore poderia atingir de 1 a 14 metros , sendo uma sequoia chamada Hyperion, localizada no Parque Nacional de Redwood ao norte de São Francisco, Estados Unidos, o maior exemplar vivo conhecido no momento, possuindo 115,55m.\r\n\r\nEssa definição exclui as palmeiras, que não possuem crescimento do diâmetro de seu caule para a formação do tronco, além do mesmo também não ser ramificado. Da mesma forma exclui plantas perenes lenhosas de pequeno porte, mas que se desenvolvem como se fossem árvores em miniatura como o salgueiro-anão herbáceo (‘’Salix herbacea L.’’) e o salgueiro-anão reticulado (‘’ Salix reticulata L.’’)\r\n\r\nEm 1961 o presidente Jânio Quadros declarou o pau-brasil a Árvore Nacional, sendo reservado ao Ipê-amarelo, da espécie Tabebuia vellosoi, o título de Flor Nacional.', 'As Árvores', '', 'inherit', 'closed', 'closed', '', '49-revision-v1', '', '', '2016-02-14 01:10:44', '2016-02-14 01:10:44', '', 49, 'http://smallholder.ag/49-revision-v1/', 0, 'revision', '', 0),
(63, 1, '2016-02-14 01:11:08', '2016-02-14 01:11:08', '<a href="http://smallholder.ag/wp-content/uploads/2016/02/400.jpg" rel="attachment wp-att-48"><img class="aligncenter wp-image-48" src="http://smallholder.ag/wp-content/uploads/2016/02/400-300x200.jpg" sizes="(max-width: 470px) 100vw, 470px" srcset="http://smallholder.ag/wp-content/uploads/2016/02/400-300x200.jpg 300w, http://smallholder.ag/wp-content/uploads/2016/02/400.jpg 600w" alt="400" width="470" height="313" /></a>\r\n\r\n&nbsp;\r\n\r\nÁrvore é um vegetal de tronco lenhoso cujos ramos só saem a certa altura do solo. Em termos biológicos é uma planta permanentemente lenhosa de grande porte, com raizes pivotantes, caule lenhoso do tipo tronco, que forma ramos bem acima do nível do solo e que se estendem até o ápice da raiz\r\n\r\nOs arbustos, além do menor porte, podem exibir ramos desde junto ao solo. Desta maneira apenas as gimnospermas e angiospermas dicotiledôneas lenhosas são consideradas espécies arbóreas.\r\n\r\nPor pequeno porte, embora não exista uma definição consensual, costuma-se entender uma altura mínima de quatro metros na maturidade. Em relação ao tamanho máximo estudos demonstram que uma árvore poderia atingir de 1 a 14 metros , sendo uma sequoia chamada Hyperion, localizada no Parque Nacional de Redwood ao norte de São Francisco, Estados Unidos, o maior exemplar vivo conhecido no momento, possuindo 115,55m.\r\n\r\nEssa definição exclui as palmeiras, que não possuem crescimento do diâmetro de seu caule para a formação do tronco, além do mesmo também não ser ramificado. Da mesma forma exclui plantas perenes lenhosas de pequeno porte, mas que se desenvolvem como se fossem árvores em miniatura como o salgueiro-anão herbáceo (‘’Salix herbacea L.’’) e o salgueiro-anão reticulado (‘’ Salix reticulata L.’’)\r\n\r\nEm 1961 o presidente Jânio Quadros declarou o pau-brasil a Árvore Nacional, sendo reservado ao Ipê-amarelo, da espécie Tabebuia vellosoi, o título de Flor Nacional.', 'As Árvores', '', 'inherit', 'closed', 'closed', '', '49-revision-v1', '', '', '2016-02-14 01:11:08', '2016-02-14 01:11:08', '', 49, 'http://smallholder.ag/49-revision-v1/', 0, 'revision', '', 0),
(68, 1, '2016-02-16 16:46:40', '2016-02-16 16:46:40', '<a href="http://smallholder.ag/wp-content/uploads/2016/02/400.jpg" rel="attachment wp-att-48"><img class="aligncenter wp-image-48" src="http://smallholder.ag/wp-content/uploads/2016/02/400-300x200.jpg" sizes="(max-width: 470px) 100vw, 470px" srcset="http://smallholder.ag/wp-content/uploads/2016/02/400-300x200.jpg 300w, http://smallholder.ag/wp-content/uploads/2016/02/400.jpg 600w" alt="400" width="470" height="313" /></a>\r\n\r\n&nbsp;\r\n\r\nÁrvore é um vegetal de tronco lenhoso cujos ramos só saem a certa altura do solo. Em termos biológicos é uma planta permanentemente lenhosa de grande porte, com raizes pivotantes, caule lenhoso do tipo tronco, que forma ramos bem acima do nível do solo e que se estendem até o ápice da raiz\r\n\r\nOs arbustos, além do menor porte, podem exibir ramos desde junto ao solo. Desta maneira apenas as gimnospermas e angiospermas dicotiledôneas lenhosas são consideradas espécies arbóreas.\r\n\r\nPor pequeno porte, embora não exista uma definição consensual, costuma-se entender uma altura mínima de quatro metros na maturidade. Em relação ao tamanho máximo estudos demonstram que uma árvore poderia atingir de 1 a 14 metros , sendo uma sequoia chamada Hyperion, localizada no Parque Nacional de Redwood ao norte de São Francisco, Estados Unidos, o maior exemplar vivo conhecido no momento, possuindo 115,55m.\r\n\r\nEssa definição exclui as palmeiras, que não possuem crescimento do diâmetro de seu caule para a formação do tronco, além do mesmo também não ser ramificado. Da mesma forma exclui plantas perenes lenhosas de pequeno porte, mas que se desenvolvem como se fossem árvores em miniatura como o salgueiro-anão herbáceo (‘’Salix herbacea L.’’) e o salgueiro-anão reticulado (‘’ Salix reticulata L.’’)\r\n\r\nEm 1961 o presidente Jânio Quadros declarou o pau-brasil a Árvore Nacional, sendo reservado ao Ipê-amarelo, da espécie Tabebuia vellosoi, o título de Flor Nacional.', 'As Arvores', '', 'inherit', 'closed', 'closed', '', '49-revision-v1', '', '', '2016-02-16 16:46:40', '2016-02-16 16:46:40', '', 49, 'http://smallholder.ag/49-revision-v1/', 0, 'revision', '', 0),
(69, 1, '2016-02-16 17:53:29', '2016-02-16 17:53:29', '', 'Publications', '', 'publish', 'closed', 'closed', '', 'publications', '', '', '2017-01-11 04:25:01', '2017-01-11 04:25:01', '', 0, 'http://smallholder.ag/?page_id=69', 0, 'page', '', 0),
(70, 1, '2016-02-16 17:53:29', '2016-02-16 17:53:29', '', 'Publications', '', 'inherit', 'closed', 'closed', '', '69-revision-v1', '', '', '2016-02-16 17:53:29', '2016-02-16 17:53:29', '', 69, 'http://smallholder.ag/69-revision-v1/', 0, 'revision', '', 0),
(71, 1, '2016-02-16 17:53:37', '2016-02-16 17:53:37', '', 'Media', '', 'publish', 'closed', 'closed', '', 'media', '', '', '2016-02-18 23:03:57', '2016-02-18 23:03:57', '', 0, 'http://smallholder.ag/?page_id=71', 0, 'page', '', 0),
(72, 1, '2016-02-16 17:53:37', '2016-02-16 17:53:37', '', 'Media', '', 'inherit', 'closed', 'closed', '', '71-revision-v1', '', '', '2016-02-16 17:53:37', '2016-02-16 17:53:37', '', 71, 'http://smallholder.ag/71-revision-v1/', 0, 'revision', '', 0),
(73, 1, '2016-02-16 17:53:52', '2016-02-16 17:53:52', '', 'Tools', '', 'publish', 'closed', 'closed', '', 'tools', '', '', '2016-02-18 23:04:41', '2016-02-18 23:04:41', '', 0, 'http://smallholder.ag/?page_id=73', 0, 'page', '', 0),
(74, 1, '2016-02-16 17:53:52', '2016-02-16 17:53:52', '', 'Tools', '', 'inherit', 'closed', 'closed', '', '73-revision-v1', '', '', '2016-02-16 17:53:52', '2016-02-16 17:53:52', '', 73, 'http://smallholder.ag/73-revision-v1/', 0, 'revision', '', 0),
(77, 1, '2016-02-16 17:54:39', '2016-02-16 17:54:39', ' ', '', '', 'publish', 'closed', 'closed', '', '77', '', '', '2016-02-25 01:23:03', '2016-02-25 01:23:03', '', 0, 'http://smallholder.ag/?p=77', 3, 'nav_menu_item', '', 0),
(78, 1, '2016-02-16 17:54:39', '2016-02-16 17:54:39', ' ', '', '', 'publish', 'closed', 'closed', '', '78', '', '', '2016-02-25 01:23:03', '2016-02-25 01:23:03', '', 0, 'http://smallholder.ag/?p=78', 4, 'nav_menu_item', '', 0),
(79, 1, '2016-02-16 17:54:39', '2016-02-16 17:54:39', ' ', '', '', 'publish', 'closed', 'closed', '', '79', '', '', '2016-02-25 01:23:03', '2016-02-25 01:23:03', '', 0, 'http://smallholder.ag/?p=79', 5, 'nav_menu_item', '', 0),
(81, 1, '2016-02-16 21:36:24', '2016-02-16 21:36:24', '\n\n	<p>Hola mundo</p>\n\n', 'Projects', '', 'inherit', 'closed', 'closed', '', '23-autosave-v1', '', '', '2016-02-16 21:36:24', '2016-02-16 21:36:24', '', 23, 'http://smallholder.ag/23-autosave-v1/', 0, 'revision', '', 0),
(82, 1, '2016-02-16 20:43:11', '2016-02-16 20:43:11', '', 'Projects', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2016-02-16 20:43:11', '2016-02-16 20:43:11', '', 23, 'http://smallholder.ag/23-revision-v1/', 0, 'revision', '', 0),
(83, 1, '2016-02-16 21:36:32', '2016-02-16 21:36:32', '\r\n\r\n	<p>Hola mundo</p>\r\n\r\n', 'Projects', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2016-02-16 21:36:32', '2016-02-16 21:36:32', '', 23, 'http://smallholder.ag/23-revision-v1/', 0, 'revision', '', 0),
(84, 1, '2016-02-16 21:38:08', '2016-02-16 21:38:08', '', 'Projects', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2016-02-16 21:38:08', '2016-02-16 21:38:08', '', 23, 'http://smallholder.ag/23-revision-v1/', 0, 'revision', '', 0),
(88, 1, '2016-02-17 00:23:19', '2016-02-17 00:23:19', '', 'Innovation', '', 'inherit', 'open', 'closed', '', 'innovation-2', '', '', '2016-02-17 00:23:19', '2016-02-17 00:23:19', '', 0, 'http://smallholder.ag/wp-content/uploads/2016/02/Innovation.jpg', 0, 'attachment', 'image/jpeg', 0),
(104, 1, '2016-02-17 03:53:46', '2016-02-17 03:53:46', '', 'development_culture1', '', 'inherit', 'open', 'closed', '', 'development_culture1', '', '', '2016-02-17 03:53:46', '2016-02-17 03:53:46', '', 0, 'http://smallholder.ag/wp-content/uploads/2016/02/development_culture1.jpg', 0, 'attachment', 'image/jpeg', 0),
(105, 1, '2016-02-17 23:06:29', '2016-02-17 23:06:29', '<pre><code>[accordion category="news"]</code></pre>', 'Publications', '', 'inherit', 'closed', 'closed', '', '69-revision-v1', '', '', '2016-02-17 23:06:29', '2016-02-17 23:06:29', '', 69, 'http://smallholder.ag/69-revision-v1/', 0, 'revision', '', 0),
(106, 1, '2016-02-17 23:06:41', '2016-02-17 23:06:41', '<pre><code>[accordion category="News"]</code></pre>', 'Publications', '', 'inherit', 'closed', 'closed', '', '69-revision-v1', '', '', '2016-02-17 23:06:41', '2016-02-17 23:06:41', '', 69, 'http://smallholder.ag/69-revision-v1/', 0, 'revision', '', 0),
(107, 1, '2016-02-17 23:06:58', '2016-02-17 23:06:58', '[accordion category="News"]', 'Publications', '', 'inherit', 'closed', 'closed', '', '69-revision-v1', '', '', '2016-02-17 23:06:58', '2016-02-17 23:06:58', '', 69, 'http://smallholder.ag/69-revision-v1/', 0, 'revision', '', 0),
(108, 1, '2016-02-17 23:07:38', '2016-02-17 23:07:38', '[accordion category_name="News"]', 'Publications', '', 'inherit', 'closed', 'closed', '', '69-revision-v1', '', '', '2016-02-17 23:07:38', '2016-02-17 23:07:38', '', 69, 'http://smallholder.ag/69-revision-v1/', 0, 'revision', '', 0),
(109, 1, '2016-02-17 23:08:23', '2016-02-17 23:08:23', '[accordion category_name="news"]', 'Publications', '', 'inherit', 'closed', 'closed', '', '69-revision-v1', '', '', '2016-02-17 23:08:23', '2016-02-17 23:08:23', '', 69, 'http://smallholder.ag/69-revision-v1/', 0, 'revision', '', 0),
(110, 1, '2016-02-17 23:10:59', '2016-02-17 23:10:59', '[accordion category="3"]', 'Publications', '', 'inherit', 'closed', 'closed', '', '69-revision-v1', '', '', '2016-02-17 23:10:59', '2016-02-17 23:10:59', '', 69, 'http://smallholder.ag/69-revision-v1/', 0, 'revision', '', 0),
(111, 1, '2016-02-17 23:53:28', '2016-02-17 23:53:28', '', 'Publications', '', 'inherit', 'closed', 'closed', '', '69-autosave-v1', '', '', '2016-02-17 23:53:28', '2016-02-17 23:53:28', '', 69, 'http://smallholder.ag/69-autosave-v1/', 0, 'revision', '', 0),
(112, 1, '2016-02-17 23:17:12', '2016-02-17 23:17:12', '[accordion background_color="#15c383" font_color="#fff" font_size="20px"]', 'Publications', '', 'inherit', 'closed', 'closed', '', '69-revision-v1', '', '', '2016-02-17 23:17:12', '2016-02-17 23:17:12', '', 69, 'http://smallholder.ag/69-revision-v1/', 0, 'revision', '', 0),
(113, 1, '2016-02-17 23:17:41', '2016-02-17 23:17:41', '[accordion background_color="#15c383" font_color="#fff" font_size="20px"]\r\nHola\r\n[/accordion]', 'Publications', '', 'inherit', 'closed', 'closed', '', '69-revision-v1', '', '', '2016-02-17 23:17:41', '2016-02-17 23:17:41', '', 69, 'http://smallholder.ag/69-revision-v1/', 0, 'revision', '', 0),
(114, 1, '2016-02-17 23:18:04', '2016-02-17 23:18:04', '', 'Publications', '', 'inherit', 'closed', 'closed', '', '69-revision-v1', '', '', '2016-02-17 23:18:04', '2016-02-17 23:18:04', '', 69, 'http://smallholder.ag/69-revision-v1/', 0, 'revision', '', 0),
(116, 1, '2016-02-17 23:19:14', '2016-02-17 23:19:14', 'Nuevo post', 'Water Consumption', '', 'publish', 'closed', 'closed', '', 'water-consumption', '', '', '2016-02-17 23:28:05', '2016-02-17 23:28:05', '', 0, 'http://smallholder.ag/?post_type=accordion_post&#038;p=116', 0, 'accordion_post', '', 0),
(117, 1, '2016-02-17 23:20:54', '2016-02-17 23:20:54', '[accordion]', 'Publications', '', 'inherit', 'closed', 'closed', '', '69-revision-v1', '', '', '2016-02-17 23:20:54', '2016-02-17 23:20:54', '', 69, 'http://smallholder.ag/69-revision-v1/', 0, 'revision', '', 0),
(118, 1, '2016-02-17 23:22:33', '2016-02-17 23:22:33', '', 'Water Consumption', '', 'inherit', 'closed', 'closed', '', '116-autosave-v1', '', '', '2016-02-17 23:22:33', '2016-02-17 23:22:33', '', 116, 'http://smallholder.ag/116-autosave-v1/', 0, 'revision', '', 0),
(119, 1, '2016-02-17 23:28:49', '2016-02-17 23:28:49', '[accordion category_name="publications"]', 'Publications', '', 'inherit', 'closed', 'closed', '', '69-revision-v1', '', '', '2016-02-17 23:28:49', '2016-02-17 23:28:49', '', 69, 'http://smallholder.ag/69-revision-v1/', 0, 'revision', '', 0),
(120, 1, '2016-02-17 23:29:13', '2016-02-17 23:29:13', '', 'Publications', '', 'inherit', 'closed', 'closed', '', '69-revision-v1', '', '', '2016-02-17 23:29:13', '2016-02-17 23:29:13', '', 69, 'http://smallholder.ag/69-revision-v1/', 0, 'revision', '', 0),
(121, 1, '2016-02-17 23:29:21', '2016-02-17 23:29:21', '[accordion category_name="publications"]', 'Publications', '', 'inherit', 'closed', 'closed', '', '69-revision-v1', '', '', '2016-02-17 23:29:21', '2016-02-17 23:29:21', '', 69, 'http://smallholder.ag/69-revision-v1/', 0, 'revision', '', 0),
(122, 1, '2016-02-17 23:31:47', '2016-02-17 23:31:47', '[accordion category_name="publications" background_color="#f5fae6"]', 'Publications', '', 'inherit', 'closed', 'closed', '', '69-revision-v1', '', '', '2016-02-17 23:31:47', '2016-02-17 23:31:47', '', 69, 'http://smallholder.ag/69-revision-v1/', 0, 'revision', '', 0),
(123, 1, '2016-02-17 23:32:41', '2016-02-17 23:32:41', '[accordion category_name="publications" background_color="#f5fae6" transition_speed="500"]', 'Publications', '', 'inherit', 'closed', 'closed', '', '69-revision-v1', '', '', '2016-02-17 23:32:41', '2016-02-17 23:32:41', '', 69, 'http://smallholder.ag/69-revision-v1/', 0, 'revision', '', 0),
(124, 1, '2016-02-17 23:33:28', '2016-02-17 23:33:28', '[accordion background_color="#f5fae6" transition_speed="500"]', 'Publications', '', 'inherit', 'closed', 'closed', '', '69-revision-v1', '', '', '2016-02-17 23:33:28', '2016-02-17 23:33:28', '', 69, 'http://smallholder.ag/69-revision-v1/', 0, 'revision', '', 0),
(125, 1, '2016-02-17 23:34:10', '2016-02-17 23:34:10', '[accordion background_color="#f5fae6" transition_speed="500" category="7"]', 'Publications', '', 'inherit', 'closed', 'closed', '', '69-revision-v1', '', '', '2016-02-17 23:34:10', '2016-02-17 23:34:10', '', 69, 'http://smallholder.ag/69-revision-v1/', 0, 'revision', '', 0),
(126, 1, '2016-02-17 23:53:28', '2016-02-17 23:53:28', '', 'Publications', '', 'inherit', 'closed', 'closed', '', '69-revision-v1', '', '', '2016-02-17 23:53:28', '2016-02-17 23:53:28', '', 69, 'http://smallholder.ag/69-revision-v1/', 0, 'revision', '', 0),
(129, 1, '2016-02-18 00:53:21', '2016-02-18 00:53:21', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Perferendis quam necessitatibus tempora commodi ad, ratione sint impedit, dicta quasi possimus quas dolore reiciendis nobis totam repellat nemo! Id, magni nobis.', 'Lorem Ipsum Publications', '', 'publish', 'open', 'open', '', 'lorem-ipsum-publications', '', '', '2016-02-24 23:35:43', '2016-02-24 23:35:43', '', 0, 'http://smallholder.ag/?p=129', 0, 'post', '', 0),
(130, 1, '2016-02-18 00:53:21', '2016-02-18 00:53:21', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Perferendis quam necessitatibus tempora commodi ad, ratione sint impedit, dicta quasi possimus quas dolore reiciendis nobis totam repellat nemo! Id, magni nobis.', 'Lorem Ipsum Publications', '', 'inherit', 'closed', 'closed', '', '129-revision-v1', '', '', '2016-02-18 00:53:21', '2016-02-18 00:53:21', '', 129, 'http://smallholder.ag/129-revision-v1/', 0, 'revision', '', 0),
(131, 1, '2016-02-18 01:32:29', '2016-02-18 01:32:29', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Perferendis quam necessitatibus tempora commodi ad, ratione sint impedit, dicta quasi possimus quas dolore reiciendis nobis totam repellat nemo! Id, magni nobis.\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Perferendis quam necessitatibus tempora commodi ad, ratione sint impedit, dicta quasi possimus quas dolore reiciendis nobis totam repellat nemo! Id, magni nobis.\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Perferendis quam necessitatibus tempora commodi ad, ratione sint impedit, dicta quasi possimus quas dolore reiciendis nobis totam repellat nemo! Id, magni nobis.', 'Another Post', '', 'publish', 'open', 'open', '', 'another-post', '', '', '2016-02-24 23:36:06', '2016-02-24 23:36:06', '', 0, 'http://smallholder.ag/?p=131', 0, 'post', '', 0),
(132, 1, '2016-02-18 01:32:29', '2016-02-18 01:32:29', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Perferendis quam necessitatibus tempora commodi ad, ratione sint impedit, dicta quasi possimus quas dolore reiciendis nobis totam repellat nemo! Id, magni nobis.\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Perferendis quam necessitatibus tempora commodi ad, ratione sint impedit, dicta quasi possimus quas dolore reiciendis nobis totam repellat nemo! Id, magni nobis.\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Perferendis quam necessitatibus tempora commodi ad, ratione sint impedit, dicta quasi possimus quas dolore reiciendis nobis totam repellat nemo! Id, magni nobis.', 'Another Post', '', 'inherit', 'closed', 'closed', '', '131-revision-v1', '', '', '2016-02-18 01:32:29', '2016-02-18 01:32:29', '', 131, 'http://smallholder.ag/131-revision-v1/', 0, 'revision', '', 0),
(133, 1, '2016-02-18 02:26:22', '2016-02-18 02:26:22', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Perferendis quam necessitatibus tempora commodi ad, ratione sint impedit, dicta quasi possimus quas dolore reiciendis nobis totam repellat nemo! Id, magni nobis.\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Perferendis quam necessitatibus tempora commodi ad, ratione sint impedit, dicta quasi possimus quas dolore reiciendis nobis totam repellat nemo! Id, magni nobis.\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Perferendis quam necessitatibus tempora commodi ad, ratione sint impedit, dicta quasi possimus quas dolore reiciendis nobis totam repellat nemo! Id, magni nobis.', 'Lorem Ipsum Three', '', 'publish', 'open', 'open', '', 'post', '', '', '2016-02-24 23:35:22', '2016-02-24 23:35:22', '', 0, 'http://smallholder.ag/?p=133', 0, 'post', '', 0),
(134, 1, '2016-02-18 02:26:22', '2016-02-18 02:26:22', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Perferendis quam necessitatibus tempora commodi ad, ratione sint impedit, dicta quasi possimus quas dolore reiciendis nobis totam repellat nemo! Id, magni nobis.\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Perferendis quam necessitatibus tempora commodi ad, ratione sint impedit, dicta quasi possimus quas dolore reiciendis nobis totam repellat nemo! Id, magni nobis.\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Perferendis quam necessitatibus tempora commodi ad, ratione sint impedit, dicta quasi possimus quas dolore reiciendis nobis totam repellat nemo! Id, magni nobis.', 'post', '', 'inherit', 'closed', 'closed', '', '133-revision-v1', '', '', '2016-02-18 02:26:22', '2016-02-18 02:26:22', '', 133, 'http://smallholder.ag/133-revision-v1/', 0, 'revision', '', 0),
(135, 1, '2016-02-18 02:26:32', '2016-02-18 02:26:32', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Perferendis quam necessitatibus tempora commodi ad, ratione sint impedit, dicta quasi possimus quas dolore reiciendis nobis totam repellat nemo! Id, magni nobis.\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Perferendis quam necessitatibus tempora commodi ad, ratione sint impedit, dicta quasi possimus quas dolore reiciendis nobis totam repellat nemo! Id, magni nobis.\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Perferendis quam necessitatibus tempora commodi ad, ratione sint impedit, dicta quasi possimus quas dolore reiciendis nobis totam repellat nemo! Id, magni nobis.', 'Lorem Ipsum', '', 'publish', 'open', 'open', '', 'ffdfd', '', '', '2016-02-24 23:56:31', '2016-02-24 23:56:31', '', 0, 'http://smallholder.ag/?p=135', 0, 'post', '', 0),
(136, 1, '2016-02-18 02:26:32', '2016-02-18 02:26:32', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Perferendis quam necessitatibus tempora commodi ad, ratione sint impedit, dicta quasi possimus quas dolore reiciendis nobis totam repellat nemo! Id, magni nobis.\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Perferendis quam necessitatibus tempora commodi ad, ratione sint impedit, dicta quasi possimus quas dolore reiciendis nobis totam repellat nemo! Id, magni nobis.\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Perferendis quam necessitatibus tempora commodi ad, ratione sint impedit, dicta quasi possimus quas dolore reiciendis nobis totam repellat nemo! Id, magni nobis.', 'ffdfd', '', 'inherit', 'closed', 'closed', '', '135-revision-v1', '', '', '2016-02-18 02:26:32', '2016-02-18 02:26:32', '', 135, 'http://smallholder.ag/135-revision-v1/', 0, 'revision', '', 0),
(137, 1, '2016-02-18 02:55:50', '2016-02-18 02:55:50', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Perferendis quam necessitatibus tempora commodi ad, ratione sint impedit, dicta quasi possimus quas dolore reiciendis nobis totam repellat nemo! Id, magni nobis.\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Perferendis quam necessitatibus tempora commodi ad, ratione sint impedit, dicta quasi possimus quas dolore reiciendis nobis totam repellat nemo! Id, magni nobis.\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Perferendis quam necessitatibus tempora commodi ad, ratione sint impedit, dicta quasi possimus quas dolore reiciendis nobis totam repellat nemo! Id, magni nobis.', 'Lorem Ipsum', '', 'publish', 'open', 'open', '', 'sdfsdfs', '', '', '2016-02-20 21:21:24', '2016-02-20 21:21:24', '', 0, 'http://smallholder.ag/?p=137', 0, 'post', '', 0),
(138, 1, '2016-02-18 02:55:50', '2016-02-18 02:55:50', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Perferendis quam necessitatibus tempora commodi ad, ratione sint impedit, dicta quasi possimus quas dolore reiciendis nobis totam repellat nemo! Id, magni nobis.\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Perferendis quam necessitatibus tempora commodi ad, ratione sint impedit, dicta quasi possimus quas dolore reiciendis nobis totam repellat nemo! Id, magni nobis.\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Perferendis quam necessitatibus tempora commodi ad, ratione sint impedit, dicta quasi possimus quas dolore reiciendis nobis totam repellat nemo! Id, magni nobis.', 'sdfsdfs', '', 'inherit', 'closed', 'closed', '', '137-revision-v1', '', '', '2016-02-18 02:55:50', '2016-02-18 02:55:50', '', 137, 'http://smallholder.ag/137-revision-v1/', 0, 'revision', '', 0),
(139, 1, '2016-02-18 02:59:16', '2016-02-18 02:59:16', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Perferendis quam necessitatibus tempora commodi ad, ratione sint impedit, dicta quasi possimus quas dolore reiciendis nobis totam repellat nemo! Id, magni nobis.\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Perferendis quam necessitatibus tempora commodi ad, ratione sint impedit, dicta quasi possimus quas dolore reiciendis nobis totam repellat nemo! Id, magni nobis.\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Perferendis quam necessitatibus tempora commodi ad, ratione sint impedit, dicta quasi possimus quas dolore reiciendis nobis totam repellat nemo! Id, magni nobis.', 'Lorem Ipsum', '', 'inherit', 'closed', 'closed', '', '137-revision-v1', '', '', '2016-02-18 02:59:16', '2016-02-18 02:59:16', '', 137, 'http://smallholder.ag/137-revision-v1/', 0, 'revision', '', 0),
(140, 1, '2016-02-18 02:59:38', '2016-02-18 02:59:38', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Perferendis quam necessitatibus tempora commodi ad, ratione sint impedit, dicta quasi possimus quas dolore reiciendis nobis totam repellat nemo! Id, magni nobis.\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Perferendis quam necessitatibus tempora commodi ad, ratione sint impedit, dicta quasi possimus quas dolore reiciendis nobis totam repellat nemo! Id, magni nobis.\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Perferendis quam necessitatibus tempora commodi ad, ratione sint impedit, dicta quasi possimus quas dolore reiciendis nobis totam repellat nemo! Id, magni nobis.', 'Lorem Ipsum', '', 'inherit', 'closed', 'closed', '', '135-revision-v1', '', '', '2016-02-18 02:59:38', '2016-02-18 02:59:38', '', 135, 'http://smallholder.ag/135-revision-v1/', 0, 'revision', '', 0),
(141, 1, '2016-02-18 03:00:11', '2016-02-18 03:00:11', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Perferendis quam necessitatibus tempora commodi ad, ratione sint impedit, dicta quasi possimus quas dolore reiciendis nobis totam repellat nemo! Id, magni nobis.\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Perferendis quam necessitatibus tempora commodi ad, ratione sint impedit, dicta quasi possimus quas dolore reiciendis nobis totam repellat nemo! Id, magni nobis.\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Perferendis quam necessitatibus tempora commodi ad, ratione sint impedit, dicta quasi possimus quas dolore reiciendis nobis totam repellat nemo! Id, magni nobis.', 'Lorem Ipsum Three', '', 'inherit', 'closed', 'closed', '', '133-revision-v1', '', '', '2016-02-18 03:00:11', '2016-02-18 03:00:11', '', 133, 'http://smallholder.ag/133-revision-v1/', 0, 'revision', '', 0),
(142, 1, '2016-02-18 03:04:03', '2016-02-18 03:04:03', 'Hola', 'Publications', '', 'inherit', 'closed', 'closed', '', '69-revision-v1', '', '', '2016-02-18 03:04:03', '2016-02-18 03:04:03', '', 69, 'http://smallholder.ag/69-revision-v1/', 0, 'revision', '', 0),
(143, 1, '2016-02-18 03:04:15', '2016-02-18 03:04:15', '', 'Publications', '', 'inherit', 'closed', 'closed', '', '69-revision-v1', '', '', '2016-02-18 03:04:15', '2016-02-18 03:04:15', '', 69, 'http://smallholder.ag/69-revision-v1/', 0, 'revision', '', 0),
(144, 1, '2016-02-18 04:33:39', '2016-02-18 04:33:39', 'News’ Category', 'Blog', '', 'publish', 'closed', 'closed', '', 'blogs', '', '', '2016-02-25 01:23:03', '2016-02-25 01:23:03', '', 0, 'http://smallholder.ag/?p=144', 6, 'nav_menu_item', '', 0),
(149, 1, '2016-02-18 20:30:45', '2016-02-18 20:30:45', 'Water (chemical formula: H2O) is a transparent fluid which forms the world\'s streams, lakes, oceans and rain, and is the major constituent of the fluids of organisms. As a chemical compound, a water molecule contains one oxygen and two hydrogen atoms that are connected by covalent bonds. Water is a liquid at standard ambient temperature and pressure, but it often co-exists on Earth with its solid state, ice; and gaseous state, steam (water vapor). It also exists as snow, fog, dew and cloud.\r\n\r\nWater covers 71% of the Earth\'s surface.[1] It is vital for all known forms of life. On Earth, 96.5% of the planet\'s crust water is found in seas and oceans, 1.7% in groundwater, 1.7% in glaciers and the ice caps of Antarctica and Greenland, a small fraction in other large water bodies, and 0.001% in the air as vapor, clouds (formed of ice and liquid water suspended in air), and precipitation.[2][3] Only 2.5% of this water is freshwater, and 98.8% of that water is in ice (excepting ice in clouds) and groundwater. Less than 0.3% of all freshwater is in rivers, lakes, and the atmosphere, and an even smaller amount of the Earth\'s freshwater (0.003%) is contained within biological bodies and manufactured products.[2] A greater quantity of water is found in the earth\'s interior.[4]\r\n\r\nWater on Earth moves continually through the water cycle of evaporation and transpiration (evapotranspiration), condensation, precipitation, and runoff, usually reaching the sea. Evaporation and transpiration contribute to the precipitation over land. Water used in the production of a good or service is known as virtual water.\r\n\r\nSafe drinking water is essential to humans and other lifeforms even though it provides no calories or organic nutrients. Access to safe drinking water has improved over the last decades in almost every part of the world, but approximately one billion people still lack access to safe water and over 2.5 billion lack access to adequate sanitation.[5] There is a clear correlation between access to safe water and gross domestic product per capita.[6] However, some observers have estimated that by 2025 more than half of the world population will be facing water-based vulnerability.[7] A report, issued in November 2009, suggests that by 2030, in some developing regions of the world, water demand will exceed supply by 50%.[8] Water plays an important role in the world economy, as it functions as a solvent for a wide variety of chemical substances and facilitates industrial cooling and transportation. Approximately 70% of the freshwater used by humans goes to agriculture.[9]', 'Water', '', 'publish', 'open', 'open', '', 'water', '', '', '2016-02-20 21:20:56', '2016-02-20 21:20:56', '', 0, 'http://smallholder.ag/?p=149', 0, 'post', '', 0),
(151, 1, '2016-02-18 20:28:57', '2016-02-18 20:28:57', 'Water (chemical formula: H2O) is a transparent fluid which forms the world\'s streams, lakes, oceans and rain, and is the major constituent of the fluids of organisms. As a chemical compound, a water molecule contains one oxygen and two hydrogen atoms that are connected by covalent bonds. Water is a liquid at standard ambient temperature and pressure, but it often co-exists on Earth with its solid state, ice; and gaseous state, steam (water vapor). It also exists as snow, fog, dew and cloud.\r\n\r\nWater covers 71% of the Earth\'s surface.[1] It is vital for all known forms of life. On Earth, 96.5% of the planet\'s crust water is found in seas and oceans, 1.7% in groundwater, 1.7% in glaciers and the ice caps of Antarctica and Greenland, a small fraction in other large water bodies, and 0.001% in the air as vapor, clouds (formed of ice and liquid water suspended in air), and precipitation.[2][3] Only 2.5% of this water is freshwater, and 98.8% of that water is in ice (excepting ice in clouds) and groundwater. Less than 0.3% of all freshwater is in rivers, lakes, and the atmosphere, and an even smaller amount of the Earth\'s freshwater (0.003%) is contained within biological bodies and manufactured products.[2] A greater quantity of water is found in the earth\'s interior.[4]\r\n\r\nWater on Earth moves continually through the water cycle of evaporation and transpiration (evapotranspiration), condensation, precipitation, and runoff, usually reaching the sea. Evaporation and transpiration contribute to the precipitation over land. Water used in the production of a good or service is known as virtual water.\r\n\r\nSafe drinking water is essential to humans and other lifeforms even though it provides no calories or organic nutrients. Access to safe drinking water has improved over the last decades in almost every part of the world, but approximately one billion people still lack access to safe water and over 2.5 billion lack access to adequate sanitation.[5] There is a clear correlation between access to safe water and gross domestic product per capita.[6] However, some observers have estimated that by 2025 more than half of the world population will be facing water-based vulnerability.[7] A report, issued in November 2009, suggests that by 2030, in some developing regions of the world, water demand will exceed supply by 50%.[8] Water plays an important role in the world economy, as it functions as a solvent for a wide variety of chemical substances and facilitates industrial cooling and transportation. Approximately 70% of the freshwater used by humans goes to agriculture.[9]', 'Water', '', 'inherit', 'closed', 'closed', '', '149-revision-v1', '', '', '2016-02-18 20:28:57', '2016-02-18 20:28:57', '', 149, 'http://smallholder.ag/149-revision-v1/', 0, 'revision', '', 0),
(153, 1, '2016-02-18 20:31:22', '2016-02-18 20:31:22', '', 'water1', '', 'inherit', 'open', 'closed', '', 'water1', '', '', '2016-02-18 20:31:22', '2016-02-18 20:31:22', '', 149, 'http://smallholder.ag/wp-content/uploads/2016/02/water1.jpg', 0, 'attachment', 'image/jpeg', 0),
(157, 1, '2016-02-18 22:01:44', '2016-02-18 22:01:44', '', 'Page Icon', '', 'publish', 'closed', 'closed', '', 'acf_page-icon', '', '', '2016-02-19 00:14:27', '2016-02-19 00:14:27', '', 0, 'http://smallholder.ag/?post_type=acf&#038;p=157', 0, 'acf', '', 0),
(161, 1, '2016-02-18 22:17:01', '2016-02-18 22:17:01', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'About', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2016-02-18 22:17:01', '2016-02-18 22:17:01', '', 21, 'http://smallholder.ag/21-revision-v1/', 0, 'revision', '', 0),
(162, 1, '2016-02-18 22:22:06', '2016-02-18 22:22:06', '', 'Media', '', 'inherit', 'closed', 'closed', '', '71-revision-v1', '', '', '2016-02-18 22:22:06', '2016-02-18 22:22:06', '', 71, 'http://smallholder.ag/71-revision-v1/', 0, 'revision', '', 0),
(163, 1, '2016-02-18 22:32:28', '2016-02-18 22:32:28', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'About', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2016-02-18 22:32:28', '2016-02-18 22:32:28', '', 21, 'http://smallholder.ag/21-revision-v1/', 0, 'revision', '', 0),
(164, 1, '2016-02-18 22:33:01', '2016-02-18 22:33:01', '', 'Projects', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2016-02-18 22:33:01', '2016-02-18 22:33:01', '', 23, 'http://smallholder.ag/23-revision-v1/', 0, 'revision', '', 0) ;
INSERT INTO `wp_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(165, 1, '2016-02-18 22:36:41', '2016-02-18 22:36:41', '', 'Publications', '', 'inherit', 'closed', 'closed', '', '69-revision-v1', '', '', '2016-02-18 22:36:41', '2016-02-18 22:36:41', '', 69, 'http://smallholder.ag/69-revision-v1/', 0, 'revision', '', 0),
(166, 1, '2016-02-18 22:37:39', '2016-02-18 22:37:39', '', 'Tools', '', 'inherit', 'closed', 'closed', '', '73-revision-v1', '', '', '2016-02-18 22:37:39', '2016-02-18 22:37:39', '', 73, 'http://smallholder.ag/73-revision-v1/', 0, 'revision', '', 0),
(169, 1, '2016-02-18 22:40:55', '2016-02-18 22:40:55', '', 'Projects', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2016-02-18 22:40:55', '2016-02-18 22:40:55', '', 23, 'http://smallholder.ag/23-revision-v1/', 0, 'revision', '', 0),
(171, 1, '2016-02-18 22:44:25', '2016-02-18 22:44:25', '', 'Projects', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2016-02-18 22:44:25', '2016-02-18 22:44:25', '', 23, 'http://smallholder.ag/23-revision-v1/', 0, 'revision', '', 0),
(173, 1, '2016-02-18 22:44:53', '2016-02-18 22:44:53', '', 'Publications', '', 'inherit', 'closed', 'closed', '', '69-revision-v1', '', '', '2016-02-18 22:44:53', '2016-02-18 22:44:53', '', 69, 'http://smallholder.ag/69-revision-v1/', 0, 'revision', '', 0),
(178, 1, '2016-02-19 00:15:37', '2016-02-19 00:15:37', '', 'Project Web Site', '', 'publish', 'closed', 'closed', '', 'acf_project-web-site', '', '', '2016-02-19 01:13:13', '2016-02-19 01:13:13', '', 0, 'http://smallholder.ag/?post_type=acf&#038;p=178', 0, 'acf', '', 0),
(189, 1, '2016-02-20 16:09:51', '2016-02-20 16:09:51', 'Last week I was in Italy to help teach a new course on UAS for Environmental Monitoring, which was organized by <a href="http://www2.unibas.it/manfreda/HydroLab/home.html">Salvatore Manfreda</a> and <a href="http://caylor.princeton.edu/">Kelly Caylor</a>, and run under the aegis of the University of Basilicata. <a href="https://www.researchgate.net/profile/Jorge_Gago2">Xurxo Gago</a> from the Universitat de les Illes Balears provided instruction on multicopters and estimating crop water use from thermal imagery. We held classes in the ancient city of <a href="https://en.wikipedia.org/wiki/Matera">Matera</a> (a remarkable place), while flight training and data collection practicals took place in farmland to the south near Metaponto. By the end of the week, 17 students successfully ran a data collection mission (using fixed-wing UAS from <a href="http://readytodrone.com/">readytodrone.com</a>), processed the resulting imagery into orthomosaics and DEMs, and did some initial data analysis, including a comparison of leaf area index measurements made in the field, UAS-derived BNDVI, and Landsat-derived NDVI (Marc Mayes from Brown University found that Landsat 8 had imaged the area during that week, making a very nice comparison). The student presentations and lectures are available <a href="http://www.slideshare.net/Summer_School_of_Hydrology">here</a>.  We hope to run this course again next summer, so please watch this space if you are interested in learning how to use UAS to close the gap between field and spaceborne observations. Click <a href="http://lyndonestes.princeton.edu/?p=704">here</a> for some photos or <a href="https://plus.google.com/106688074977743591698/posts/QS5i7CEXFA4?pid=6183920313204915202&amp;oid=106688074977743591698">video</a>.\r\n<div id="APTFPIC_by_TAP-by-shortcode-254" class="AlpinePhotoTiles_inpost_container">\r\n<div id="id254-AlpinePhotoTiles_container" class="AlpinePhotoTiles_container_class">\r\n<div id="id254-hidden-parent" class="AlpinePhotoTiles_parent_class">\r\n<div id="id254-by-link" class="AlpinePhotoTiles-by-link"><a title="Widget by The Alpine Press" href="http://thealpinepress.com/">TAP</a></div>\r\n<div class="AlpinePhotoTiles-row"></div>\r\n<div class="AlpinePhotoTiles-row"></div>\r\n</div>\r\n</div>\r\n</div>', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2016-02-20 16:09:51', '2016-02-20 16:09:51', '', 1, 'http://smallholder.ag/1-revision-v1/', 0, 'revision', '', 0),
(190, 1, '2016-02-20 16:10:51', '2016-02-20 16:10:51', 'Árvore é um vegetal de tronco lenhoso cujos ramos só saem a certa altura do solo. Em termos biológicos é uma planta permanentemente lenhosa de grande porte, com raizes pivotantes, caule lenhoso do tipo tronco, que forma ramos bem acima do nível do solo e que se estendem até o ápice da raiz\r\n\r\nOs arbustos, além do menor porte, podem exibir ramos desde junto ao solo. Desta maneira apenas as gimnospermas e angiospermas dicotiledôneas lenhosas são consideradas espécies arbóreas.\r\n\r\nPor pequeno porte, embora não exista uma definição consensual, costuma-se entender uma altura mínima de quatro metros na maturidade. Em relação ao tamanho máximo estudos demonstram que uma árvore poderia atingir de 1 a 14 metros , sendo uma sequoia chamada Hyperion, localizada no Parque Nacional de Redwood ao norte de São Francisco, Estados Unidos, o maior exemplar vivo conhecido no momento, possuindo 115,55m.\r\n\r\nEssa definição exclui as palmeiras, que não possuem crescimento do diâmetro de seu caule para a formação do tronco, além do mesmo também não ser ramificado. Da mesma forma exclui plantas perenes lenhosas de pequeno porte, mas que se desenvolvem como se fossem árvores em miniatura como o salgueiro-anão herbáceo (‘’Salix herbacea L.’’) e o salgueiro-anão reticulado (‘’ Salix reticulata L.’’)\r\n\r\nEm 1961 o presidente Jânio Quadros declarou o pau-brasil a Árvore Nacional, sendo reservado ao Ipê-amarelo, da espécie Tabebuia vellosoi, o título de Flor Nacional.', 'As Arvores', '', 'inherit', 'closed', 'closed', '', '49-revision-v1', '', '', '2016-02-20 16:10:51', '2016-02-20 16:10:51', '', 49, 'http://smallholder.ag/49-revision-v1/', 0, 'revision', '', 0),
(192, 1, '2016-02-20 19:53:24', '2016-02-20 19:53:24', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Perferendis quam necessitatibus tempora commodi ad, ratione sint impedit, dicta quasi possimus quas dolore reiciendis nobis totam repellat nemo! Id, magni nobis.\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Perferendis quam necessitatibus tempora commodi ad, ratione sint impedit, dicta quasi possimus quas dolore reiciendis nobis totam repellat nemo! Id, magni nobis.\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Perferendis quam necessitatibus tempora commodi ad, ratione sint impedit, dicta quasi possimus quas dolore reiciendis nobis totam repellat nemo! Id, magni nobis.', 'Lorem Ipsum', '', 'inherit', 'closed', 'closed', '', '135-revision-v1', '', '', '2016-02-20 19:53:24', '2016-02-20 19:53:24', '', 135, 'http://smallholder.ag/135-revision-v1/', 0, 'revision', '', 0),
(193, 1, '2016-02-20 19:55:35', '2016-02-20 19:55:35', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Perferendis quam necessitatibus tempora commodi ad, ratione sint impedit, dicta quasi possimus quas dolore reiciendis nobis totam repellat nemo! Id, magni nobis.\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Perferendis quam necessitatibus tempora commodi ad, ratione sint impedit, dicta quasi possimus quas dolore reiciendis nobis totam repellat nemo! Id, magni nobis.\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Perferendis quam necessitatibus tempora commodi ad, ratione sint impedit, dicta quasi possimus quas dolore reiciendis nobis totam repellat nemo! Id, magni nobis.', 'Lorem Ipsum', '', 'inherit', 'closed', 'closed', '', '135-revision-v1', '', '', '2016-02-20 19:55:35', '2016-02-20 19:55:35', '', 135, 'http://smallholder.ag/135-revision-v1/', 0, 'revision', '', 0),
(194, 1, '2016-02-24 23:30:41', '2016-02-24 23:30:41', '', '37caf44665f1fabb1fcab3928c41c177', '', 'inherit', 'open', 'closed', '', '37caf44665f1fabb1fcab3928c41c177', '', '', '2016-02-24 23:30:41', '2016-02-24 23:30:41', '', 137, 'http://smallholder.ag/wp-content/uploads/2016/02/37caf44665f1fabb1fcab3928c41c177.jpg', 0, 'attachment', 'image/jpeg', 0),
(195, 1, '2016-02-24 23:34:52', '2016-02-24 23:34:52', '', '9724140093_c24046df7d_b', '', 'inherit', 'open', 'closed', '', '9724140093_c24046df7d_b', '', '', '2016-02-24 23:34:52', '2016-02-24 23:34:52', '', 135, 'http://smallholder.ag/wp-content/uploads/2016/02/9724140093_c24046df7d_b.jpg', 0, 'attachment', 'image/jpeg', 0),
(196, 1, '2016-02-24 23:34:53', '2016-02-24 23:34:53', '', '30dc2fe75457200dc38ee77a53ad244c', '', 'inherit', 'open', 'closed', '', '30dc2fe75457200dc38ee77a53ad244c', '', '', '2016-02-24 23:34:53', '2016-02-24 23:34:53', '', 135, 'http://smallholder.ag/wp-content/uploads/2016/02/30dc2fe75457200dc38ee77a53ad244c.jpg', 0, 'attachment', 'image/jpeg', 0),
(197, 1, '2016-02-24 23:55:31', '2016-02-24 23:55:31', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', 'Lorem Ipsum', '', 'inherit', 'closed', 'closed', '', '135-revision-v1', '', '', '2016-02-24 23:55:31', '2016-02-24 23:55:31', '', 135, 'http://smallholder.ag/135-revision-v1/', 0, 'revision', '', 0),
(198, 1, '2016-02-24 23:56:09', '2016-02-24 23:56:09', 'aaaaaaaaaa aaaaaaaaaaa aaaaaaaaaaaa aaaaaaaaaaaaaa aaaaa aaaaaaaaaaaaaa aaaaaaaaaaaa aaaaaaaa aaaaaaaaaaaaaaaa aaaaaaaaaaaa aaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', 'Lorem Ipsum', '', 'inherit', 'closed', 'closed', '', '135-revision-v1', '', '', '2016-02-24 23:56:09', '2016-02-24 23:56:09', '', 135, 'http://smallholder.ag/135-revision-v1/', 0, 'revision', '', 0),
(199, 1, '2016-02-24 23:56:31', '2016-02-24 23:56:31', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Perferendis quam necessitatibus tempora commodi ad, ratione sint impedit, dicta quasi possimus quas dolore reiciendis nobis totam repellat nemo! Id, magni nobis.\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Perferendis quam necessitatibus tempora commodi ad, ratione sint impedit, dicta quasi possimus quas dolore reiciendis nobis totam repellat nemo! Id, magni nobis.\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Perferendis quam necessitatibus tempora commodi ad, ratione sint impedit, dicta quasi possimus quas dolore reiciendis nobis totam repellat nemo! Id, magni nobis.', 'Lorem Ipsum', '', 'inherit', 'closed', 'closed', '', '135-revision-v1', '', '', '2016-02-24 23:56:31', '2016-02-24 23:56:31', '', 135, 'http://smallholder.ag/135-revision-v1/', 0, 'revision', '', 0),
(200, 1, '2016-02-25 00:08:28', '2016-02-25 00:08:28', '', 'Parent Category', '', 'publish', 'closed', 'closed', '', 'acf_parent-category', '', '', '2016-02-25 02:20:28', '2016-02-25 02:20:28', '', 0, 'http://smallholder.ag/?post_type=acf&#038;p=200', 0, 'acf', '', 0),
(201, 1, '2016-02-25 00:26:17', '2016-02-25 00:26:17', '', 'Publications', '', 'inherit', 'closed', 'closed', '', '69-revision-v1', '', '', '2016-02-25 00:26:17', '2016-02-25 00:26:17', '', 69, 'http://smallholder.ag/69-revision-v1/', 0, 'revision', '', 0),
(202, 1, '2016-02-25 22:22:48', '2016-02-25 22:22:48', '', 'hero', '', 'inherit', 'open', 'closed', '', 'hero', '', '', '2016-02-25 22:22:48', '2016-02-25 22:22:48', '', 0, 'http://smallholder.ag/wp-content/uploads/2016/02/hero.jpg', 0, 'attachment', 'image/jpeg', 0),
(204, 1, '2016-02-26 00:42:52', '2016-02-26 00:42:52', 'Nam id nunc pulvinar, posuere libero in, venenatis nibh. Duis efficitur blandit massa non commodo. In purus ipsum, tincidunt et risus ut, interdum ultricies turpis. Nam risus urna, vestibulum et egestas non, molestie nec dui. Fusce sollicitudin rutrum eros, ac imperdiet dui varius sed. Sed scelerisque tempor massa in consectetur. Suspendisse euismod, magna rhoncus sodales vehicula, massa odio vehicula nulla, nec cursus tellus erat facilisis turpis. Quisque sollicitudin pellentesque ex non molestie. Pellentesque odio ex, ultrices ac lobortis vel, maximus vel elit. Sed mollis risus eu vehicula volutpat. Duis blandit nisl non lectus scelerisque elementum. Donec euismod metus tellus. Sed a pellentesque mauris, vel volutpat augue. Sed consequat non magna at aliquam. Curabitur mollis mattis iaculis. Praesent nunc quam, suscipit at consectetur id, dictum vel ligula.\r\n\r\nPellentesque in egestas erat. Suspendisse est enim, maximus eget ex vitae, venenatis placerat mi. Curabitur vestibulum vulputate feugiat. Aliquam ac elit in augue hendrerit tincidunt. Fusce ut odio a nisl eleifend hendrerit. Curabitur finibus porta orci, semper suscipit leo hendrerit eu. In sodales feugiat sem, sit amet porttitor turpis facilisis at. Proin non mauris orci. Nam posuere laoreet lectus ut fermentum. Suspendisse fringilla mi a est luctus commodo. Suspendisse et imperdiet libero. Curabitur in tortor a augue suscipit auctor. Etiam finibus sagittis tellus nec accumsan. Vivamus ultricies blandit purus. Nam tellus ante, iaculis ultrices leo vulputate, consequat dapibus nulla. Nullam ex libero, sollicitudin eget massa eu, consequat blandit justo.', 'Lorem Ipsum Unu', '', 'publish', 'open', 'open', '', 'lorem-ipsum-unu', '', '', '2016-02-26 00:43:36', '2016-02-26 00:43:36', '', 0, 'http://smallholder.ag/?p=204', 0, 'post', '', 0),
(205, 1, '2016-02-26 00:42:52', '2016-02-26 00:42:52', 'am id nunc pulvinar, posuere libero in, venenatis nibh. Duis efficitur blandit massa non commodo. In purus ipsum, tincidunt et risus ut, interdum ultricies turpis. Nam risus urna, vestibulum et egestas non, molestie nec dui. Fusce sollicitudin rutrum eros, ac imperdiet dui varius sed. Sed scelerisque tempor massa in consectetur. Suspendisse euismod, magna rhoncus sodales vehicula, massa odio vehicula nulla, nec cursus tellus erat facilisis turpis. Quisque sollicitudin pellentesque ex non molestie. Pellentesque odio ex, ultrices ac lobortis vel, maximus vel elit. Sed mollis risus eu vehicula volutpat. Duis blandit nisl non lectus scelerisque elementum. Donec euismod metus tellus. Sed a pellentesque mauris, vel volutpat augue. Sed consequat non magna at aliquam. Curabitur mollis mattis iaculis. Praesent nunc quam, suscipit at consectetur id, dictum vel ligula.\r\n\r\nPellentesque in egestas erat. Suspendisse est enim, maximus eget ex vitae, venenatis placerat mi. Curabitur vestibulum vulputate feugiat. Aliquam ac elit in augue hendrerit tincidunt. Fusce ut odio a nisl eleifend hendrerit. Curabitur finibus porta orci, semper suscipit leo hendrerit eu. In sodales feugiat sem, sit amet porttitor turpis facilisis at. Proin non mauris orci. Nam posuere laoreet lectus ut fermentum. Suspendisse fringilla mi a est luctus commodo. Suspendisse et imperdiet libero. Curabitur in tortor a augue suscipit auctor. Etiam finibus sagittis tellus nec accumsan. Vivamus ultricies blandit purus. Nam tellus ante, iaculis ultrices leo vulputate, consequat dapibus nulla. Nullam ex libero, sollicitudin eget massa eu, consequat blandit justo.', 'Lorem Ipsum Unu', '', 'inherit', 'closed', 'closed', '', '204-revision-v1', '', '', '2016-02-26 00:42:52', '2016-02-26 00:42:52', '', 204, 'http://smallholder.ag/204-revision-v1/', 0, 'revision', '', 0),
(207, 1, '2016-02-26 00:43:36', '2016-02-26 00:43:36', 'Nam id nunc pulvinar, posuere libero in, venenatis nibh. Duis efficitur blandit massa non commodo. In purus ipsum, tincidunt et risus ut, interdum ultricies turpis. Nam risus urna, vestibulum et egestas non, molestie nec dui. Fusce sollicitudin rutrum eros, ac imperdiet dui varius sed. Sed scelerisque tempor massa in consectetur. Suspendisse euismod, magna rhoncus sodales vehicula, massa odio vehicula nulla, nec cursus tellus erat facilisis turpis. Quisque sollicitudin pellentesque ex non molestie. Pellentesque odio ex, ultrices ac lobortis vel, maximus vel elit. Sed mollis risus eu vehicula volutpat. Duis blandit nisl non lectus scelerisque elementum. Donec euismod metus tellus. Sed a pellentesque mauris, vel volutpat augue. Sed consequat non magna at aliquam. Curabitur mollis mattis iaculis. Praesent nunc quam, suscipit at consectetur id, dictum vel ligula.\r\n\r\nPellentesque in egestas erat. Suspendisse est enim, maximus eget ex vitae, venenatis placerat mi. Curabitur vestibulum vulputate feugiat. Aliquam ac elit in augue hendrerit tincidunt. Fusce ut odio a nisl eleifend hendrerit. Curabitur finibus porta orci, semper suscipit leo hendrerit eu. In sodales feugiat sem, sit amet porttitor turpis facilisis at. Proin non mauris orci. Nam posuere laoreet lectus ut fermentum. Suspendisse fringilla mi a est luctus commodo. Suspendisse et imperdiet libero. Curabitur in tortor a augue suscipit auctor. Etiam finibus sagittis tellus nec accumsan. Vivamus ultricies blandit purus. Nam tellus ante, iaculis ultrices leo vulputate, consequat dapibus nulla. Nullam ex libero, sollicitudin eget massa eu, consequat blandit justo.', 'Lorem Ipsum Unu', '', 'inherit', 'closed', 'closed', '', '204-revision-v1', '', '', '2016-02-26 00:43:36', '2016-02-26 00:43:36', '', 204, 'http://smallholder.ag/204-revision-v1/', 0, 'revision', '', 0),
(208, 1, '2016-02-26 00:44:12', '2016-02-26 00:44:12', 'Sed ut molestie ex, a venenatis enim. Nam euismod, orci ut posuere condimentum, felis enim condimentum magna, ac viverra turpis erat non turpis. Aenean velit turpis, efficitur quis auctor nec, viverra nec velit. Etiam nec porttitor lacus. Sed dictum in nunc et porttitor. Ut id erat felis. Nulla facilisi. Sed ut mollis eros. Vestibulum id neque in mauris blandit scelerisque. Suspendisse eu dui elit. In hac habitasse platea dictumst. Aenean nec nunc ultrices, volutpat metus quis, mattis tortor. Maecenas sit amet egestas lorem. Mauris bibendum augue magna, eget eleifend nulla feugiat in. Pellentesque accumsan tellus at enim aliquam consequat.\r\n\r\nSuspendisse quam arcu, molestie nec enim sed, mollis fringilla lacus. Mauris quis mollis risus. Nulla consectetur tempus purus bibendum fermentum. Duis a convallis lectus, ut elementum leo. Etiam in tortor in nibh sollicitudin semper. Cras varius nunc eu justo cursus dapibus. Etiam vulputate viverra ex, ut aliquam ex ullamcorper eu. Quisque nec cursus erat. Pellentesque rhoncus odio vel luctus bibendum. Donec vel ex nisi.', 'Lorem Ipsum Du', '', 'publish', 'open', 'open', '', 'lorem-ipsum-du', '', '', '2016-02-26 00:44:38', '2016-02-26 00:44:38', '', 0, 'http://smallholder.ag/?p=208', 0, 'post', '', 0),
(209, 1, '2016-02-26 00:44:12', '2016-02-26 00:44:12', 'Sed ut molestie ex, a venenatis enim. Nam euismod, orci ut posuere condimentum, felis enim condimentum magna, ac viverra turpis erat non turpis. Aenean velit turpis, efficitur quis auctor nec, viverra nec velit. Etiam nec porttitor lacus. Sed dictum in nunc et porttitor. Ut id erat felis. Nulla facilisi. Sed ut mollis eros. Vestibulum id neque in mauris blandit scelerisque. Suspendisse eu dui elit. In hac habitasse platea dictumst. Aenean nec nunc ultrices, volutpat metus quis, mattis tortor. Maecenas sit amet egestas lorem. Mauris bibendum augue magna, eget eleifend nulla feugiat in. Pellentesque accumsan tellus at enim aliquam consequat.\r\n\r\nSuspendisse quam arcu, molestie nec enim sed, mollis fringilla lacus. Mauris quis mollis risus. Nulla consectetur tempus purus bibendum fermentum. Duis a convallis lectus, ut elementum leo. Etiam in tortor in nibh sollicitudin semper. Cras varius nunc eu justo cursus dapibus. Etiam vulputate viverra ex, ut aliquam ex ullamcorper eu. Quisque nec cursus erat. Pellentesque rhoncus odio vel luctus bibendum. Donec vel ex nisi.', 'Lorem Ipsum Du', '', 'inherit', 'closed', 'closed', '', '208-revision-v1', '', '', '2016-02-26 00:44:12', '2016-02-26 00:44:12', '', 208, 'http://smallholder.ag/208-revision-v1/', 0, 'revision', '', 0),
(211, 1, '2016-02-26 00:46:15', '2016-02-26 00:46:15', 'Sed id nisi a mi maximus sagittis. Vivamus ac placerat lectus. Nam et lorem vel nunc luctus lobortis. Fusce sed eros sit amet sem pellentesque fringilla vitae at diam. Integer in erat ut tellus semper tincidunt eu sed sem. Curabitur sed convallis nisl, non fermentum erat. Maecenas dui ipsum, pharetra ut est at, aliquet ornare tortor. Suspendisse tincidunt, mauris sit amet dictum tristique, diam sapien tincidunt diam, vitae elementum ante augue nec nisi.\r\n\r\nVestibulum ullamcorper tincidunt vehicula. Nullam at convallis augue. Nullam felis nulla, ullamcorper vel tempor ac, ullamcorper non purus. In blandit, lacus id egestas finibus, neque nisi eleifend est, ut pellentesque lorem sem eget nulla. Mauris vulputate quam justo, eu posuere magna convallis in. Vivamus tellus lacus, ornare vel dui vitae, mattis posuere nulla. Nullam urna justo, placerat ornare magna vel, feugiat laoreet dolor. Vivamus sed mi pharetra, laoreet neque a, bibendum libero. Mauris erat leo, tincidunt ut nulla vitae, fermentum consequat ligula. Aliquam vehicula a leo at rutrum. Nam ac interdum ligula. Cras lacinia mauris et neque pellentesque, sit amet pretium sem efficitur. Sed feugiat sem vitae libero rhoncus consectetur. Nullam libero felis, maximus id tristique a, volutpat vitae est. Quisque eu finibus orci. Nunc vulputate id elit sit amet efficitur.', 'Lorem Ipsum Tri', '', 'publish', 'open', 'open', '', 'lorem-ipsum-tri', '', '', '2016-02-26 00:46:15', '2016-02-26 00:46:15', '', 0, 'http://smallholder.ag/?p=211', 0, 'post', '', 0),
(212, 1, '2016-02-26 00:46:15', '2016-02-26 00:46:15', 'Sed id nisi a mi maximus sagittis. Vivamus ac placerat lectus. Nam et lorem vel nunc luctus lobortis. Fusce sed eros sit amet sem pellentesque fringilla vitae at diam. Integer in erat ut tellus semper tincidunt eu sed sem. Curabitur sed convallis nisl, non fermentum erat. Maecenas dui ipsum, pharetra ut est at, aliquet ornare tortor. Suspendisse tincidunt, mauris sit amet dictum tristique, diam sapien tincidunt diam, vitae elementum ante augue nec nisi.\r\n\r\nVestibulum ullamcorper tincidunt vehicula. Nullam at convallis augue. Nullam felis nulla, ullamcorper vel tempor ac, ullamcorper non purus. In blandit, lacus id egestas finibus, neque nisi eleifend est, ut pellentesque lorem sem eget nulla. Mauris vulputate quam justo, eu posuere magna convallis in. Vivamus tellus lacus, ornare vel dui vitae, mattis posuere nulla. Nullam urna justo, placerat ornare magna vel, feugiat laoreet dolor. Vivamus sed mi pharetra, laoreet neque a, bibendum libero. Mauris erat leo, tincidunt ut nulla vitae, fermentum consequat ligula. Aliquam vehicula a leo at rutrum. Nam ac interdum ligula. Cras lacinia mauris et neque pellentesque, sit amet pretium sem efficitur. Sed feugiat sem vitae libero rhoncus consectetur. Nullam libero felis, maximus id tristique a, volutpat vitae est. Quisque eu finibus orci. Nunc vulputate id elit sit amet efficitur.', 'Lorem Ipsum Tri', '', 'inherit', 'closed', 'closed', '', '211-revision-v1', '', '', '2016-02-26 00:46:15', '2016-02-26 00:46:15', '', 211, 'http://smallholder.ag/211-revision-v1/', 0, 'revision', '', 0),
(216, 1, '2016-02-26 00:48:29', '2016-02-26 00:48:29', 'Nullam non urna purus. Donec facilisis quis ligula at gravida. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Donec et diam elementum, vehicula nisl ac, venenatis est. Cras mauris ligula, sollicitudin quis tortor ut, varius iaculis neque. Sed eget nibh augue. Mauris et lorem nec nunc malesuada accumsan. Cras egestas placerat mi, nec dapibus nisi vehicula ac. Phasellus venenatis purus vel ex mollis, commodo dapibus velit aliquam. Donec tincidunt hendrerit erat, id luctus justo gravida eu. Aenean efficitur hendrerit lectus, at vehicula orci efficitur non. Ut pellentesque sapien ac ipsum accumsan, ut volutpat sapien tincidunt. Donec nec orci vitae enim gravida dapibus sit amet in lorem.\r\n\r\nSed dictum eros leo, nec commodo ante vulputate sodales. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis fringilla justo condimentum tempus cursus. Nulla vel condimentum diam. Nulla urna nisi, sollicitudin in elementum a, lobortis vestibulum neque. Nulla finibus turpis in nisi faucibus fermentum. Sed ut quam dolor. Vivamus viverra sed diam ac sollicitudin.', 'Lorem Ipsum Kvin', '', 'publish', 'open', 'open', '', 'lorem-ipsum-kvin', '', '', '2016-02-26 00:48:43', '2016-02-26 00:48:43', '', 0, 'http://smallholder.ag/?p=216', 0, 'post', '', 0),
(217, 1, '2016-02-26 00:48:29', '2016-02-26 00:48:29', 'Nullam non urna purus. Donec facilisis quis ligula at gravida. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Donec et diam elementum, vehicula nisl ac, venenatis est. Cras mauris ligula, sollicitudin quis tortor ut, varius iaculis neque. Sed eget nibh augue. Mauris et lorem nec nunc malesuada accumsan. Cras egestas placerat mi, nec dapibus nisi vehicula ac. Phasellus venenatis purus vel ex mollis, commodo dapibus velit aliquam. Donec tincidunt hendrerit erat, id luctus justo gravida eu. Aenean efficitur hendrerit lectus, at vehicula orci efficitur non. Ut pellentesque sapien ac ipsum accumsan, ut volutpat sapien tincidunt. Donec nec orci vitae enim gravida dapibus sit amet in lorem.\r\n\r\nSed dictum eros leo, nec commodo ante vulputate sodales. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis fringilla justo condimentum tempus cursus. Nulla vel condimentum diam. Nulla urna nisi, sollicitudin in elementum a, lobortis vestibulum neque. Nulla finibus turpis in nisi faucibus fermentum. Sed ut quam dolor. Vivamus viverra sed diam ac sollicitudin.', 'Lorem Ipsum Kvin', '', 'inherit', 'closed', 'closed', '', '216-revision-v1', '', '', '2016-02-26 00:48:29', '2016-02-26 00:48:29', '', 216, 'http://smallholder.ag/216-revision-v1/', 0, 'revision', '', 0),
(218, 1, '2016-02-26 00:49:23', '2016-02-26 00:49:23', 'Integer sed fermentum eros. Vestibulum et risus quis sem auctor venenatis ac in augue. Maecenas quis nisl sed mi vulputate convallis in vel velit. Fusce eros nunc, imperdiet eu tortor eu, gravida placerat neque. Sed eleifend nunc vel mattis sollicitudin. Donec in luctus dolor. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Fusce auctor, augue in pulvinar dictum, sapien tellus tincidunt enim, vitae finibus turpis nibh eu ligula. Nulla viverra arcu tellus. Mauris a urna imperdiet, imperdiet augue eget, volutpat orci. Maecenas faucibus, leo id molestie dignissim, nunc magna iaculis enim, ut ultrices lorem enim faucibus mauris. Pellentesque congue mauris a efficitur eleifend. Proin ligula dui, efficitur sed elementum at, malesuada ac neque.\r\n\r\nMorbi non scelerisque urna, ac tincidunt neque. Cras id risus nec eros maximus consectetur. Donec dictum vulputate sem vel rutrum. Praesent finibus fermentum ligula, at ultrices lectus ultricies feugiat. Donec eu rhoncus dui. Sed et hendrerit neque. Donec ullamcorper mollis quam, a tincidunt lectus sagittis ut. Fusce mattis lorem ac dignissim vulputate. Cras facilisis auctor luctus. Nunc tempus lorem et ipsum ornare, non faucibus nisl facilisis. Donec id elit vitae orci lacinia pellentesque eget eu massa. Donec tempor est ac neque bibendum aliquam.', 'Lorem Ipsum Ses', '', 'publish', 'open', 'open', '', 'lorem-ipsum-ses', '', '', '2016-02-26 00:49:23', '2016-02-26 00:49:23', '', 0, 'http://smallholder.ag/?p=218', 0, 'post', '', 0),
(219, 1, '2016-02-26 00:49:23', '2016-02-26 00:49:23', 'Integer sed fermentum eros. Vestibulum et risus quis sem auctor venenatis ac in augue. Maecenas quis nisl sed mi vulputate convallis in vel velit. Fusce eros nunc, imperdiet eu tortor eu, gravida placerat neque. Sed eleifend nunc vel mattis sollicitudin. Donec in luctus dolor. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Fusce auctor, augue in pulvinar dictum, sapien tellus tincidunt enim, vitae finibus turpis nibh eu ligula. Nulla viverra arcu tellus. Mauris a urna imperdiet, imperdiet augue eget, volutpat orci. Maecenas faucibus, leo id molestie dignissim, nunc magna iaculis enim, ut ultrices lorem enim faucibus mauris. Pellentesque congue mauris a efficitur eleifend. Proin ligula dui, efficitur sed elementum at, malesuada ac neque.\r\n\r\nMorbi non scelerisque urna, ac tincidunt neque. Cras id risus nec eros maximus consectetur. Donec dictum vulputate sem vel rutrum. Praesent finibus fermentum ligula, at ultrices lectus ultricies feugiat. Donec eu rhoncus dui. Sed et hendrerit neque. Donec ullamcorper mollis quam, a tincidunt lectus sagittis ut. Fusce mattis lorem ac dignissim vulputate. Cras facilisis auctor luctus. Nunc tempus lorem et ipsum ornare, non faucibus nisl facilisis. Donec id elit vitae orci lacinia pellentesque eget eu massa. Donec tempor est ac neque bibendum aliquam.', 'Lorem Ipsum Ses', '', 'inherit', 'closed', 'closed', '', '218-revision-v1', '', '', '2016-02-26 00:49:23', '2016-02-26 00:49:23', '', 218, 'http://smallholder.ag/218-revision-v1/', 0, 'revision', '', 0),
(221, 1, '2016-02-26 00:51:17', '2016-02-26 00:51:17', 'Sed et molestie lectus. Donec eu diam et risus sagittis tempus quis sit amet purus. Sed velit magna, hendrerit eu sem quis, tincidunt dictum turpis. Aliquam tincidunt est nec turpis porta tincidunt eu ut est. Nullam et pulvinar tortor. Maecenas nec eros id nulla cursus faucibus at id tortor. Nulla malesuada et tellus ut tincidunt. Quisque id posuere lacus. Aenean elementum accumsan erat, lobortis laoreet ante auctor ac. Donec sit amet odio fringilla, efficitur urna vitae, convallis ex. Aliquam erat volutpat. Vestibulum in purus vitae nibh tempor finibus. Nunc auctor diam vel sem dignissim, nec scelerisque sem tempor. Donec viverra felis in dui pharetra luctus.\r\n\r\nEtiam condimentum congue scelerisque. In eget pretium risus, vitae sollicitudin ante. Quisque orci nunc, hendrerit ut consectetur sed, pretium mattis tortor. Morbi in viverra elit, sed cursus enim. Mauris in aliquam massa. Nulla ut enim neque. Aliquam egestas libero placerat ex scelerisque, ut cursus ipsum pharetra. Quisque faucibus quam metus. Praesent a leo a urna rutrum vulputate sit amet et elit. Sed tristique est at risus mollis, sit amet mollis mi semper.', 'Lorem Ipsum Sep', '', 'publish', 'open', 'open', '', 'lorem-ipsum-sep', '', '', '2016-02-26 00:51:17', '2016-02-26 00:51:17', '', 0, 'http://smallholder.ag/?p=221', 0, 'post', '', 0),
(222, 1, '2016-02-26 00:51:17', '2016-02-26 00:51:17', 'Sed et molestie lectus. Donec eu diam et risus sagittis tempus quis sit amet purus. Sed velit magna, hendrerit eu sem quis, tincidunt dictum turpis. Aliquam tincidunt est nec turpis porta tincidunt eu ut est. Nullam et pulvinar tortor. Maecenas nec eros id nulla cursus faucibus at id tortor. Nulla malesuada et tellus ut tincidunt. Quisque id posuere lacus. Aenean elementum accumsan erat, lobortis laoreet ante auctor ac. Donec sit amet odio fringilla, efficitur urna vitae, convallis ex. Aliquam erat volutpat. Vestibulum in purus vitae nibh tempor finibus. Nunc auctor diam vel sem dignissim, nec scelerisque sem tempor. Donec viverra felis in dui pharetra luctus.\r\n\r\nEtiam condimentum congue scelerisque. In eget pretium risus, vitae sollicitudin ante. Quisque orci nunc, hendrerit ut consectetur sed, pretium mattis tortor. Morbi in viverra elit, sed cursus enim. Mauris in aliquam massa. Nulla ut enim neque. Aliquam egestas libero placerat ex scelerisque, ut cursus ipsum pharetra. Quisque faucibus quam metus. Praesent a leo a urna rutrum vulputate sit amet et elit. Sed tristique est at risus mollis, sit amet mollis mi semper.', 'Lorem Ipsum Sep', '', 'inherit', 'closed', 'closed', '', '221-revision-v1', '', '', '2016-02-26 00:51:17', '2016-02-26 00:51:17', '', 221, 'http://smallholder.ag/221-revision-v1/', 0, 'revision', '', 0),
(223, 1, '2016-02-26 00:51:50', '2016-02-26 00:51:50', 'Vivamus quis purus mattis lorem condimentum semper a eget elit. Aliquam eu pretium nulla. Nulla facilisi. Nam imperdiet pellentesque volutpat. Ut quis quam aliquam, convallis turpis vestibulum, pharetra lorem. Quisque dapibus mollis elementum. Ut in purus turpis. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nProin interdum suscipit eros sed lacinia. Nulla euismod neque feugiat metus lacinia, et tincidunt nunc tincidunt. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc pretium magna eget orci egestas efficitur. Cras eu est arcu. Maecenas vitae ullamcorper est, vitae facilisis mi. Mauris feugiat vestibulum est, consequat mollis tortor tempor ac. Nulla eleifend vel metus ut faucibus.\r\n\r\nMaecenas nec dolor ac tortor accumsan vestibulum a at velit. Mauris scelerisque est sit amet massa ultricies, id efficitur nulla ultrices. Sed euismod, est at porttitor lobortis, elit justo vulputate neque, eu maximus nisl sem quis leo. Duis ultricies rutrum sollicitudin. Duis vulputate rutrum lectus, quis pretium purus. Aenean ipsum lacus, tempor vel imperdiet hendrerit, tempor auctor neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nunc luctus mattis velit, at ultrices ipsum tristique sed. Nunc dictum quam tortor, quis efficitur odio rutrum placerat. Donec hendrerit pharetra mauris, ac suscipit arcu pharetra in. Aenean ut nibh in ligula ultricies bibendum id eu quam. Duis dui urna, tristique eu ligula sit amet, tempor venenatis quam. Nullam tempus aliquet dolor at laoreet. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nam non risus vitae turpis malesuada tempus.', 'Lorem Ipsum Ok', '', 'publish', 'open', 'open', '', 'lorem-ipsum-ok', '', '', '2016-02-26 00:51:50', '2016-02-26 00:51:50', '', 0, 'http://smallholder.ag/?p=223', 0, 'post', '', 0),
(224, 1, '2016-02-26 00:51:50', '2016-02-26 00:51:50', 'Vivamus quis purus mattis lorem condimentum semper a eget elit. Aliquam eu pretium nulla. Nulla facilisi. Nam imperdiet pellentesque volutpat. Ut quis quam aliquam, convallis turpis vestibulum, pharetra lorem. Quisque dapibus mollis elementum. Ut in purus turpis. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nProin interdum suscipit eros sed lacinia. Nulla euismod neque feugiat metus lacinia, et tincidunt nunc tincidunt. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc pretium magna eget orci egestas efficitur. Cras eu est arcu. Maecenas vitae ullamcorper est, vitae facilisis mi. Mauris feugiat vestibulum est, consequat mollis tortor tempor ac. Nulla eleifend vel metus ut faucibus.\r\n\r\nMaecenas nec dolor ac tortor accumsan vestibulum a at velit. Mauris scelerisque est sit amet massa ultricies, id efficitur nulla ultrices. Sed euismod, est at porttitor lobortis, elit justo vulputate neque, eu maximus nisl sem quis leo. Duis ultricies rutrum sollicitudin. Duis vulputate rutrum lectus, quis pretium purus. Aenean ipsum lacus, tempor vel imperdiet hendrerit, tempor auctor neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nunc luctus mattis velit, at ultrices ipsum tristique sed. Nunc dictum quam tortor, quis efficitur odio rutrum placerat. Donec hendrerit pharetra mauris, ac suscipit arcu pharetra in. Aenean ut nibh in ligula ultricies bibendum id eu quam. Duis dui urna, tristique eu ligula sit amet, tempor venenatis quam. Nullam tempus aliquet dolor at laoreet. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nam non risus vitae turpis malesuada tempus.', 'Lorem Ipsum Ok', '', 'inherit', 'closed', 'closed', '', '223-revision-v1', '', '', '2016-02-26 00:51:50', '2016-02-26 00:51:50', '', 223, 'http://smallholder.ag/223-revision-v1/', 0, 'revision', '', 0),
(247, 1, '2017-01-11 03:29:28', '2017-01-11 03:29:28', '', 'Beth A Plale', '', 'inherit', 'open', 'closed', '', 'beth-a-plale', '', '', '2017-01-11 03:29:28', '2017-01-11 03:29:28', '', 0, 'http://smallholder.ag/wp-content/uploads/2017/01/Beth-A-Plale.jpg', 0, 'attachment', 'image/jpeg', 0),
(248, 1, '2017-01-11 03:29:41', '2017-01-11 03:29:41', '', 'Armand Tossou', '', 'inherit', 'open', 'closed', '', 'armand-tossou', '', '', '2017-01-11 03:29:41', '2017-01-11 03:29:41', '', 0, 'http://smallholder.ag/wp-content/uploads/2017/01/Armand-Tossou.jpeg', 0, 'attachment', 'image/jpeg', 0),
(249, 1, '2017-01-11 03:30:12', '2017-01-11 03:30:12', '', 'Inna Kouper', '', 'inherit', 'open', 'closed', '', 'inna-kouper', '', '', '2017-01-11 03:30:12', '2017-01-11 03:30:12', '', 0, 'http://smallholder.ag/wp-content/uploads/2017/01/Inna-Kouper.jpg', 0, 'attachment', 'image/jpeg', 0),
(250, 1, '2017-01-11 03:30:24', '2017-01-11 03:30:24', '', 'Kathy Baylis', '', 'inherit', 'open', 'closed', '', 'kathy-baylis', '', '', '2017-01-11 03:30:24', '2017-01-11 03:30:24', '', 0, 'http://smallholder.ag/wp-content/uploads/2017/01/Kathy-Baylis.jpg', 0, 'attachment', 'image/jpeg', 0),
(251, 1, '2017-01-11 03:30:40', '2017-01-11 03:30:40', '', 'Kelly Caylor', '', 'inherit', 'open', 'closed', '', 'kelly-caylor', '', '', '2017-01-11 03:30:40', '2017-01-11 03:30:40', '', 0, 'http://smallholder.ag/wp-content/uploads/2017/01/Kelly-Caylor.jpeg', 0, 'attachment', 'image/jpeg', 0),
(252, 1, '2017-01-11 03:30:57', '2017-01-11 03:30:57', '', 'Lyndon Estes', '', 'inherit', 'open', 'closed', '', 'lyndon-estes', '', '', '2017-01-11 03:30:57', '2017-01-11 03:30:57', '', 0, 'http://smallholder.ag/wp-content/uploads/2017/01/Lyndon-Estes.jpeg', 0, 'attachment', 'image/jpeg', 0),
(253, 1, '2017-01-11 03:31:19', '2017-01-11 03:31:19', '', 'Megan Konar', '', 'inherit', 'open', 'closed', '', 'megan-konar', '', '', '2017-01-11 03:31:19', '2017-01-11 03:31:19', '', 0, 'http://smallholder.ag/wp-content/uploads/2017/01/Megan-Konar.jpeg', 0, 'attachment', 'image/jpeg', 0),
(254, 1, '2017-01-11 03:32:23', '2017-01-11 03:32:23', '', 'Natash Krell', '', 'inherit', 'open', 'closed', '', 'natash-krell', '', '', '2017-01-11 03:32:23', '2017-01-11 03:32:23', '', 0, 'http://smallholder.ag/wp-content/uploads/2017/01/Natash-Krell.png', 0, 'attachment', 'image/png', 0),
(255, 1, '2017-01-11 03:32:49', '2017-01-11 03:32:49', '', 'Nicole Jackson', '', 'inherit', 'open', 'closed', '', 'nicole-jackson', '', '', '2017-01-11 03:32:49', '2017-01-11 03:32:49', '', 0, 'http://smallholder.ag/wp-content/uploads/2017/01/Nicole-Jackson.jpg', 0, 'attachment', 'image/jpeg', 0),
(256, 1, '2017-01-11 03:33:20', '2017-01-11 03:33:20', '', 'patrese anderson', '', 'inherit', 'open', 'closed', '', 'patrese-anderson', '', '', '2017-01-11 03:33:20', '2017-01-11 03:33:20', '', 0, 'http://smallholder.ag/wp-content/uploads/2017/01/patrese-anderson.png', 0, 'attachment', 'image/png', 0),
(257, 1, '2017-01-11 03:33:32', '2017-01-11 03:33:32', '', 'Peng Chen', '', 'inherit', 'open', 'closed', '', 'peng-chen', '', '', '2017-01-11 03:33:32', '2017-01-11 03:33:32', '', 0, 'http://smallholder.ag/wp-content/uploads/2017/01/Peng-Chen.jpg', 0, 'attachment', 'image/jpeg', 0),
(258, 1, '2017-01-11 03:33:44', '2017-01-11 03:33:44', '', 'SHAHZEEN ATTARI', '', 'inherit', 'open', 'closed', '', 'shahzeen-attari', '', '', '2017-01-11 03:33:44', '2017-01-11 03:33:44', '', 0, 'http://smallholder.ag/wp-content/uploads/2017/01/SHAHZEEN-ATTARI.jpeg', 0, 'attachment', 'image/jpeg', 0),
(259, 1, '2017-01-11 03:33:58', '2017-01-11 03:33:58', '', 'Tom Evans', 'Tom Evans', 'inherit', 'open', 'closed', '', 'tom-evans', '', '', '2017-01-11 03:33:58', '2017-01-11 03:33:58', '', 0, 'http://smallholder.ag/wp-content/uploads/2017/01/Tom-Evans.jpg', 0, 'attachment', 'image/jpeg', 0),
(260, 1, '2017-01-11 04:11:50', '2017-01-11 04:11:50', '<span style="font-family: Arial, sans-serif; font-size: 1em; line-height: 1.5;">“We study key dimensions of agriculture livelihoods and development in sub-Saharan Africa (SSA), where smallholder farmers are and will continue to be the primary producers of food. We are particularly interested in understanding the impact of the continent’s increasing rainfall variability on food security, the sustainability of Africa’s accelerating agricultural development, and how SSA’s agricultural systems interact with and impact societies’ efforts to meet their water and energy needs. To provide the data we need to address these issues, we develop novel approaches to observing agricultural systems at high spatial and temporal resolutions.”</span>', 'About', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2017-01-11 04:11:50', '2017-01-11 04:11:50', '', 21, 'http://smallholder.ag/21-revision-v1/', 0, 'revision', '', 0),
(261, 1, '2017-01-11 04:11:59', '2017-01-11 04:11:59', '<span style="font-family: Arial, sans-serif; font-size: 1em; line-height: 1.5;">“We study key dimensions of agriculture livelihoods and development in sub-Saharan Africa (SSA), where smallholder farmers are and will continue to be the primary producers of food. We are particularly interested in understanding the impact of the continent’s increasing rainfall variability on food security, the sustainability of Africa’s accelerating agricultural development, and how SSA’s agricultural systems interact with and impact societies’ efforts to meet their water and energy needs. To provide the data we need to address these issues, we develop novel approaches to observing agricultural systems at high spatial and temporal resolutions.”</span>', 'About Us', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2017-01-11 04:11:59', '2017-01-11 04:11:59', '', 21, 'http://smallholder.ag/21-revision-v1/', 0, 'revision', '', 0),
(262, 1, '2017-01-11 04:17:25', '2017-01-11 04:17:25', '<span style="font-family: Arial, sans-serif; font-size: 1em; line-height: 1.5;">“We study key dimensions of agriculture livelihoods and development in sub-Saharan Africa (SSA), where smallholder farmers are and will continue to be the primary producers of food. We are particularly interested in understanding the impact of the continent’s increasing rainfall variability on food security, the sustainability of Africa’s accelerating agricultural development, and how SSA’s agricultural systems interact with and impact societies’ efforts to meet their water and energy needs. To provide the data we need to address these issues, we develop novel approaches to observing agricultural systems at high spatial and temporal resolutions.”</span>', 'About Us', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2017-01-11 04:17:25', '2017-01-11 04:17:25', '', 21, 'http://smallholder.ag/21-revision-v1/', 0, 'revision', '', 0),
(263, 1, '2017-01-11 04:21:40', '2017-01-11 04:21:40', '', 'projects', '', 'inherit', 'open', 'closed', '', 'projects-2', '', '', '2017-01-11 04:21:40', '2017-01-11 04:21:40', '', 23, 'http://smallholder.ag/wp-content/uploads/2016/02/projects.svg', 0, 'attachment', 'image/svg+xml', 0),
(264, 1, '2017-01-11 04:21:44', '2017-01-11 04:21:44', '', 'Projects', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2017-01-11 04:21:44', '2017-01-11 04:21:44', '', 23, 'http://smallholder.ag/23-revision-v1/', 0, 'revision', '', 0),
(265, 1, '2017-01-11 04:24:56', '2017-01-11 04:24:56', '', 'publications', '', 'inherit', 'open', 'closed', '', 'publications-2', '', '', '2017-01-11 04:24:56', '2017-01-11 04:24:56', '', 69, 'http://smallholder.ag/wp-content/uploads/2016/02/publications.svg', 0, 'attachment', 'image/svg+xml', 0),
(266, 1, '2017-01-11 04:25:01', '2017-01-11 04:25:01', '', 'Publications', '', 'inherit', 'closed', 'closed', '', '69-revision-v1', '', '', '2017-01-11 04:25:01', '2017-01-11 04:25:01', '', 69, 'http://smallholder.ag/69-revision-v1/', 0, 'revision', '', 0),
(267, 1, '2017-01-11 04:31:46', '2017-01-11 04:31:46', '', 'favicon', '', 'inherit', 'open', 'closed', '', 'favicon', '', '', '2017-01-11 04:31:46', '2017-01-11 04:31:46', '', 0, 'http://smallholder.ag/wp-content/uploads/2017/01/favicon.png', 0, 'attachment', 'image/png', 0),
(268, 1, '2017-01-11 19:59:18', '2017-01-11 19:59:18', '<p style="text-align: justify;"><span style="font-family: Arial, sans-serif; font-size: 1em; line-height: 1.5;">“We study key dimensions of agriculture livelihoods and development in sub-Saharan Africa (SSA), where smallholder farmers are and will continue to be the primary producers of food. We are particularly interested in understanding the impact of the continent’s increasing rainfall variability on food security, the sustainability of Africa’s accelerating agricultural development, and how SSA’s agricultural systems interact with and impact societies’ efforts to meet their water and energy needs. To provide the data we need to address these issues, we develop novel approaches to observing agricultural systems at high spatial and temporal resolutions.”</span></p>', 'About Us', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2017-01-11 19:59:18', '2017-01-11 19:59:18', '', 21, 'http://smallholder.ag/21-revision-v1/', 0, 'revision', '', 0),
(269, 1, '2017-01-13 16:26:05', '2017-01-13 16:26:05', '<p style="text-align: justify;"><span style="font-family: Arial, sans-serif; font-size: 1em; line-height: 1.5;">We study key dimensions of agriculture livelihoods and development in sub-Saharan Africa (SSA), where smallholder farmers are and will continue to be the primary producers of food. We are particularly interested in understanding the impact of the continent’s increasing rainfall variability on food security, the sustainability of Africa’s accelerating agricultural development, and how SSA’s agricultural systems interact with and impact societies’ efforts to meet their water and energy needs. To provide the data we need to address these issues, we develop novel approaches to observing agricultural systems at high spatial and temporal resolutions.</span></p>', 'About Us', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2017-01-13 16:26:05', '2017-01-13 16:26:05', '', 21, 'http://smallholder.ag/21-revision-v1/', 0, 'revision', '', 0),
(270, 1, '2017-01-14 21:15:49', '2017-01-14 21:15:49', '<p style="text-align: justify;"><span style="font-family: Arial, sans-serif; font-size: 1em; line-height: 1.5;">We study key dimensions of agriculture livelihoods and development in sub-Saharan Africa (SSA), where smallholder farmers are and will continue to be the primary producers of food. We are particularly interested in understanding the impact of the continent\'s increasing rainfall variability on food security, the sustainability of Africa\'s accelerating agricultural development, and how SSA\'s agricultural systems interact with and impact societies\' efforts to meet their water and energy needs. To provide the data we need to address these issues, we develop novel approaches to observing agricultural systems at high spatial and temporal resolutions.</span></p>', 'About Us', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2017-01-14 21:15:49', '2017-01-14 21:15:49', '', 21, 'http://smallholder.ag/21-revision-v1/', 0, 'revision', '', 0),
(271, 1, '2017-01-18 22:37:53', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-01-18 22:37:53', '0000-00-00 00:00:00', '', 0, 'http://smallholder.ag/?p=271', 0, 'post', '', 0),
(272, 1, '2017-01-19 15:25:36', '2017-01-19 15:25:36', '<p style="text-align: justify;">We have a pretty good idea of farmland distribution in Europe and North America, but we have a lot to learn about other parts of the world. Of particular note is Africa, which is predicted to experience an explosion in agriculture in the coming decades.</p>\r\n&nbsp;\r\n<p style="text-align: justify;">The best data that we have so far are not incredibly accurate. They are prone to overestimating and underestimating farmland in various locations. Due to the wide range of error and the unreliability of the data, it can be difficult to understand key issues such as food security, or to predict where agricultural expansion will happen.</p>\r\n&nbsp;\r\n<p style="text-align: justify;">As a result, we have launched this mapping initiative to get a better idea of where and how much farmland there is in Africa. We are trying to map African farmland using the power of the Internet.</p>\r\n&nbsp;\r\n<p style="text-align: right;"><a class="orange" href="http://mappingafrica.princeton.edu">mappingafrica.princeton.edu</a></p>', 'Mapping Africa Project', '', 'publish', 'open', 'open', '', 'mapping-africa-project', '', '', '2017-01-20 22:21:39', '2017-01-20 22:21:39', '', 0, 'http://smallholder.ag/?p=272', 0, 'post', '', 0),
(273, 1, '2017-01-19 15:25:30', '2017-01-19 15:25:30', '', 'map africa project banner', '', 'inherit', 'open', 'closed', '', 'map-africa-project-banner', '', '', '2017-01-19 15:25:30', '2017-01-19 15:25:30', '', 272, 'http://smallholder.ag/wp-content/uploads/2017/01/map-africa-project-banner.png', 0, 'attachment', 'image/png', 0) ;
INSERT INTO `wp_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(274, 1, '2017-01-19 15:25:36', '2017-01-19 15:25:36', 'We have a pretty good idea of farmland distribution in Europe and North America, but we have a lot to learn about other parts of the world. Of particular note is Africa, which is predicted to experience an explosion in agriculture in the coming decades.\r\n\r\nThe best data that we have so far are not incredibly accurate. They are prone to overestimating and underestimating farmland in various locations. Due to the wide range of error and the unreliability of the data, it can be difficult to understand key issues such as food security, or to predict where agricultural expansion will happen.\r\n\r\nAs a result, we have launched this mapping initiative to get a better idea of where and how much farmland there is in Africa. We are trying to map African farmland using the power of the Internet.', 'Mapping Africa Project', '', 'inherit', 'closed', 'closed', '', '272-revision-v1', '', '', '2017-01-19 15:25:36', '2017-01-19 15:25:36', '', 272, 'http://smallholder.ag/272-revision-v1/', 0, 'revision', '', 0),
(275, 1, '2017-01-19 15:26:15', '2017-01-19 15:26:15', 'We have a pretty good idea of farmland distribution in Europe and North America, but we have a lot to learn about other parts of the world. Of particular note is Africa, which is predicted to experience an explosion in agriculture in the coming decades.\r\n\r\nThe best data that we have so far are not incredibly accurate. They are prone to overestimating and underestimating farmland in various locations. Due to the wide range of error and the unreliability of the data, it can be difficult to understand key issues such as food security, or to predict where agricultural expansion will happen.\r\n\r\nAs a result, we have launched this mapping initiative to get a better idea of where and how much farmland there is in Africa. We are trying to map African farmland using the power of the Internet.', 'Mapping Africa Project', '', 'inherit', 'closed', 'closed', '', '272-revision-v1', '', '', '2017-01-19 15:26:15', '2017-01-19 15:26:15', '', 272, 'http://smallholder.ag/272-revision-v1/', 0, 'revision', '', 0),
(276, 1, '2017-01-19 15:27:38', '2017-01-19 15:27:38', 'We have a pretty good idea of farmland distribution in Europe and North America, but we have a lot to learn about other parts of the world. Of particular note is Africa, which is predicted to experience an explosion in agriculture in the coming decades.\r\n<br><br>\r\nThe best data that we have so far are not incredibly accurate. They are prone to overestimating and underestimating farmland in various locations. Due to the wide range of error and the unreliability of the data, it can be difficult to understand key issues such as food security, or to predict where agricultural expansion will happen.\r\n<br><br>\r\nAs a result, we have launched this mapping initiative to get a better idea of where and how much farmland there is in Africa. We are trying to map African farmland using the power of the Internet.', 'Mapping Africa Project', '', 'inherit', 'closed', 'closed', '', '272-revision-v1', '', '', '2017-01-19 15:27:38', '2017-01-19 15:27:38', '', 272, 'http://smallholder.ag/272-revision-v1/', 0, 'revision', '', 0),
(277, 1, '2017-01-19 15:27:58', '2017-01-19 15:27:58', 'We have a pretty good idea of farmland distribution in Europe and North America, but we have a lot to learn about other parts of the world. Of particular note is Africa, which is predicted to experience an explosion in agriculture in the coming decades.\r\n\r\n\r\nThe best data that we have so far are not incredibly accurate. They are prone to overestimating and underestimating farmland in various locations. Due to the wide range of error and the unreliability of the data, it can be difficult to understand key issues such as food security, or to predict where agricultural expansion will happen.\r\n\r\n\r\nAs a result, we have launched this mapping initiative to get a better idea of where and how much farmland there is in Africa. We are trying to map African farmland using the power of the Internet.', 'Mapping Africa Project', '', 'inherit', 'closed', 'closed', '', '272-revision-v1', '', '', '2017-01-19 15:27:58', '2017-01-19 15:27:58', '', 272, 'http://smallholder.ag/272-revision-v1/', 0, 'revision', '', 0),
(278, 1, '2017-01-19 15:28:08', '2017-01-19 15:28:08', 'We have a pretty good idea of farmland distribution in Europe and North America, but we have a lot to learn about other parts of the world. Of particular note is Africa, which is predicted to experience an explosion in agriculture in the coming decades.\r\n\r\n&nbsp;\r\n\r\nThe best data that we have so far are not incredibly accurate. They are prone to overestimating and underestimating farmland in various locations. Due to the wide range of error and the unreliability of the data, it can be difficult to understand key issues such as food security, or to predict where agricultural expansion will happen.\r\n\r\n&nbsp;\r\n\r\nAs a result, we have launched this mapping initiative to get a better idea of where and how much farmland there is in Africa. We are trying to map African farmland using the power of the Internet.', 'Mapping Africa Project', '', 'inherit', 'closed', 'closed', '', '272-revision-v1', '', '', '2017-01-19 15:28:08', '2017-01-19 15:28:08', '', 272, 'http://smallholder.ag/272-revision-v1/', 0, 'revision', '', 0),
(279, 1, '2017-01-20 22:17:55', '2017-01-20 22:17:55', 'We have a pretty good idea of farmland distribution in Europe and North America, but we have a lot to learn about other parts of the world. Of particular note is Africa, which is predicted to experience an explosion in agriculture in the coming decades.\n\n&nbsp;\n\nThe best data that we have so far are not incredibly accurate. They are prone to overestimating and underestimating farmland in various locations. Due to the wide range of error and the unreliability of the data, it can be difficult to understand key issues such as food security, or to predict where agricultural expansion will happen.\n\n&nbsp;\n\npAs a result, we have launched this mapping initiative to get a better idea of where and how much farmland there is in Africa. We are trying to map African farmland using the power of the Internet.\n\n&nbsp;\n<p style="text-align: right;"><a class="orange" href="http://mappingafrica.princeton.edu">mappingafrica.princeton.edu</a></p>', 'Mapping Africa Project', '', 'inherit', 'closed', 'closed', '', '272-autosave-v1', '', '', '2017-01-20 22:17:55', '2017-01-20 22:17:55', '', 272, 'http://smallholder.ag/272-autosave-v1/', 0, 'revision', '', 0),
(280, 1, '2017-01-20 22:16:24', '2017-01-20 22:16:24', 'We have a pretty good idea of farmland distribution in Europe and North America, but we have a lot to learn about other parts of the world. Of particular note is Africa, which is predicted to experience an explosion in agriculture in the coming decades.\r\n\r\n&nbsp;\r\n\r\nThe best data that we have so far are not incredibly accurate. They are prone to overestimating and underestimating farmland in various locations. Due to the wide range of error and the unreliability of the data, it can be difficult to understand key issues such as food security, or to predict where agricultural expansion will happen.\r\n\r\n&nbsp;\r\n\r\nAs a result, we have launched this mapping initiative to get a better idea of where and how much farmland there is in Africa. We are trying to map African farmland using the power of the Internet.\r\n<p style="text-align: right;"><a class="orange" href="http://mappingafrica.princeton.edu">mappingafrica.princeton.edu</a></p>', 'Mapping Africa Project', '', 'inherit', 'closed', 'closed', '', '272-revision-v1', '', '', '2017-01-20 22:16:24', '2017-01-20 22:16:24', '', 272, 'http://smallholder.ag/272-revision-v1/', 0, 'revision', '', 0),
(281, 1, '2017-01-20 22:16:41', '2017-01-20 22:16:41', 'We have a pretty good idea of farmland distribution in Europe and North America, but we have a lot to learn about other parts of the world. Of particular note is Africa, which is predicted to experience an explosion in agriculture in the coming decades.\r\n\r\n&nbsp;\r\n\r\nThe best data that we have so far are not incredibly accurate. They are prone to overestimating and underestimating farmland in various locations. Due to the wide range of error and the unreliability of the data, it can be difficult to understand key issues such as food security, or to predict where agricultural expansion will happen.\r\n\r\n&nbsp;\r\n\r\nAs a result, we have launched this mapping initiative to get a better idea of where and how much farmland there is in Africa. We are trying to map African farmland using the power of the Internet.\r\n\r\n&nbsp;\r\n<p style="text-align: right;"><a class="orange" href="http://mappingafrica.princeton.edu">mappingafrica.princeton.edu</a></p>', 'Mapping Africa Project', '', 'inherit', 'closed', 'closed', '', '272-revision-v1', '', '', '2017-01-20 22:16:41', '2017-01-20 22:16:41', '', 272, 'http://smallholder.ag/272-revision-v1/', 0, 'revision', '', 0),
(282, 1, '2017-01-20 22:18:55', '2017-01-20 22:18:55', '<p style="text-aling: justify;">We have a pretty good idea of farmland distribution in Europe and North America, but we have a lot to learn about other parts of the world. Of particular note is Africa, which is predicted to experience an explosion in agriculture in the coming decades.</p>\r\n\r\n&nbsp;\r\n\r\n<p style="text-aling: justify;">The best data that we have so far are not incredibly accurate. They are prone to overestimating and underestimating farmland in various locations. Due to the wide range of error and the unreliability of the data, it can be difficult to understand key issues such as food security, or to predict where agricultural expansion will happen.</p>\r\n\r\n&nbsp;\r\n<p style="text-aling: justify;">As a result, we have launched this mapping initiative to get a better idea of where and how much farmland there is in Africa. We are trying to map African farmland using the power of the Internet.</p>\r\n&nbsp;\r\n<p style="text-align: right;"><a class="orange" href="http://mappingafrica.princeton.edu">mappingafrica.princeton.edu</a></p>', 'Mapping Africa Project', '', 'inherit', 'closed', 'closed', '', '272-revision-v1', '', '', '2017-01-20 22:18:55', '2017-01-20 22:18:55', '', 272, 'http://smallholder.ag/272-revision-v1/', 0, 'revision', '', 0),
(283, 1, '2017-01-20 22:19:54', '2017-01-20 22:19:54', '<p style="text-align: justify;">We have a pretty good idea of farmland distribution in Europe and North America, but we have a lot to learn about other parts of the world. Of particular note is Africa, which is predicted to experience an explosion in agriculture in the coming decades.</p>\r\n\r\n&nbsp;\r\n\r\n<p style="text-align: justify;">The best data that we have so far are not incredibly accurate. They are prone to overestimating and underestimating farmland in various locations. Due to the wide range of error and the unreliability of the data, it can be difficult to understand key issues such as food security, or to predict where agricultural expansion will happen.</p>\r\n\r\n&nbsp;\r\n<p style="text-align: justify;">As a result, we have launched this mapping initiative to get a better idea of where and how much farmland there is in Africa. We are trying to map African farmland using the power of the Internet.</p>\r\n&nbsp;\r\n<p style="text-align: right;"><a class="orange" href="http://mappingafrica.princeton.edu">mappingafrica.princeton.edu</a></p>', 'Mapping Africa Project', '', 'inherit', 'closed', 'closed', '', '272-revision-v1', '', '', '2017-01-20 22:19:54', '2017-01-20 22:19:54', '', 272, 'http://smallholder.ag/272-revision-v1/', 0, 'revision', '', 0) ;

#
# End of data contents of table `wp_posts`
# --------------------------------------------------------



#
# Delete any existing table `wp_term_relationships`
#

DROP TABLE IF EXISTS `wp_term_relationships`;


#
# Table structure of table `wp_term_relationships`
#

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_term_relationships`
#
INSERT INTO `wp_term_relationships` ( `object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 3, 0),
(25, 2, 0),
(26, 2, 0),
(34, 3, 0),
(39, 3, 0),
(42, 3, 0),
(44, 3, 0),
(49, 3, 0),
(77, 2, 0),
(78, 2, 0),
(79, 2, 0),
(116, 7, 0),
(129, 6, 0),
(131, 8, 0),
(133, 8, 0),
(135, 8, 0),
(135, 16, 0),
(135, 17, 0),
(135, 18, 0),
(137, 8, 0),
(137, 14, 0),
(144, 2, 0),
(149, 3, 0),
(149, 15, 0),
(204, 3, 0),
(208, 3, 0),
(211, 3, 0),
(216, 3, 0),
(218, 3, 0),
(221, 3, 0),
(223, 3, 0),
(272, 4, 0) ;

#
# End of data contents of table `wp_term_relationships`
# --------------------------------------------------------



#
# Delete any existing table `wp_term_taxonomy`
#

DROP TABLE IF EXISTS `wp_term_taxonomy`;


#
# Table structure of table `wp_term_taxonomy`
#

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_term_taxonomy`
#
INSERT INTO `wp_term_taxonomy` ( `term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'nav_menu', '', 0, 6),
(3, 3, 'category', 'News\' Category', 0, 14),
(4, 4, 'category', 'Projects\' Category', 0, 1),
(5, 5, 'category', 'Publications\'s Category', 0, 0),
(6, 6, 'category', 'Water Consumption\'s Category', 5, 1),
(7, 7, 'accordion_cat', 'Publications\' Category', 0, 1),
(8, 8, 'category', 'Earth Observing Methods\' Category', 5, 4),
(14, 14, 'post_tag', '', 0, 1),
(15, 15, 'post_tag', '', 0, 1),
(16, 16, 'post_tag', '', 0, 1),
(17, 17, 'post_tag', '', 0, 1),
(18, 18, 'post_tag', '', 0, 1) ;

#
# End of data contents of table `wp_term_taxonomy`
# --------------------------------------------------------



#
# Delete any existing table `wp_termmeta`
#

DROP TABLE IF EXISTS `wp_termmeta`;


#
# Table structure of table `wp_termmeta`
#

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_termmeta`
#

#
# End of data contents of table `wp_termmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_terms`
#

DROP TABLE IF EXISTS `wp_terms`;


#
# Table structure of table `wp_terms`
#

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_terms`
#
INSERT INTO `wp_terms` ( `term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Main Menu', 'main-menu', 0),
(3, 'News', 'news', 0),
(4, 'Projects', 'projects', 0),
(5, 'Publications', 'publications', 0),
(6, 'Water Consumption', 'water-consumption', 0),
(7, 'Publications', 'publications', 0),
(8, 'Earth Observing Methods', 'earth-observing-methods', 0),
(14, 'Dandelion', 'dandelion', 0),
(15, 'Parsley', 'parsley', 0),
(16, 'Salsify', 'salsify', 0),
(17, 'Purslane', 'purslane', 0),
(18, 'Brussels', 'brussels', 0) ;

#
# End of data contents of table `wp_terms`
# --------------------------------------------------------



#
# Delete any existing table `wp_usermeta`
#

DROP TABLE IF EXISTS `wp_usermeta`;


#
# Table structure of table `wp_usermeta`
#

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=369 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_usermeta`
#
INSERT INTO `wp_usermeta` ( `umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'BKDF'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'wp_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', 'black_studio_tinymce_widget'),
(13, 1, 'show_welcome_panel', '1'),
(15, 1, 'wp_dashboard_quick_press_last_post_id', '271'),
(16, 1, 'wp_user-settings', 'libraryContent=browse&editor=tinymce&siteorigin_panels_setting_tab=general&align=center&mfold=o&unfold=1&hidetb=1'),
(17, 1, 'wp_user-settings-time', '1484950896'),
(18, 1, 'nav_menu_recently_edited', '2'),
(19, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(20, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:"add-post_tag";i:1;s:15:"add-post_format";}'),
(21, 1, 'wporg_favorites', ''),
(86, 1, 'so_panels_directory_enabled', '1'),
(87, 1, '_fl_builder_launched', '1'),
(88, 1, 'closedpostboxes_accordion_post', 'a:0:{}'),
(89, 1, 'metaboxhidden_accordion_post', 'a:1:{i:0;s:7:"slugdiv";}'),
(129, 1, 'closedpostboxes_post', 'a:0:{}'),
(130, 1, 'metaboxhidden_post', 'a:7:{i:0;s:16:"so-panels-panels";i:1;s:11:"postexcerpt";i:2;s:13:"trackbacksdiv";i:3;s:10:"postcustom";i:4;s:16:"commentstatusdiv";i:5;s:7:"slugdiv";i:6;s:9:"authordiv";}'),
(131, 1, 'closedpostboxes_acf', 'a:0:{}'),
(132, 1, 'metaboxhidden_acf', 'a:1:{i:0;s:7:"slugdiv";}'),
(133, 1, 'closedpostboxes_page', 'a:1:{i:0;s:12:"postimagediv";}'),
(134, 1, 'metaboxhidden_page', 'a:6:{i:0;s:16:"so-panels-panels";i:1;s:7:"acf_157";i:2;s:10:"postcustom";i:3;s:16:"commentstatusdiv";i:4;s:7:"slugdiv";i:5;s:9:"authordiv";}'),
(151, 9, 'nickname', 'tom.evans'),
(152, 9, 'first_name', 'Tom'),
(153, 9, 'last_name', 'Evans'),
(154, 9, 'description', 'Tom Evans is a geographer who studies adaptation to climate change in smallholder agricultural systems. His work primarily focuses on household-level decision-making and the use of spatial analysis (GIS, remote sensing, agent-based modeling) to understand couplings and feedbacks between people and the environment."'),
(155, 9, 'rich_editing', 'true'),
(156, 9, 'comment_shortcuts', 'false'),
(157, 9, 'admin_color', 'fresh'),
(158, 9, 'use_ssl', '0'),
(159, 9, 'show_admin_bar_front', 'true'),
(160, 9, 'wp_capabilities', 'a:1:{s:6:"editor";b:1;}'),
(161, 9, 'wp_user_level', '7'),
(162, 9, 'dismissed_wp_pointers', ''),
(163, 10, 'nickname', 'beth.plale'),
(164, 10, 'first_name', 'Beth A.'),
(165, 10, 'last_name', 'Plale'),
(166, 10, 'description', 'Beth A. Plale is Professor of Informatics and Computing at Indiana University where she directs the Data To Insight Center and serves as Science Director of the Pervasive Technology Institute.   Dr. Plale’s research interests are in Big Data, long-term preservation and curation of scientific and scholarly data, large-scale data management, metadata and provenance, data trustworthiness and security, and data-driven cyberinfrastructure and cloud computing. Plale is deeply engaged in interdisciplinary research and education in earth and environmental sciences, digital humanities, health, and social sciences.'),
(167, 10, 'rich_editing', 'true'),
(168, 10, 'comment_shortcuts', 'false'),
(169, 10, 'admin_color', 'fresh'),
(170, 10, 'use_ssl', '0'),
(171, 10, 'show_admin_bar_front', 'true'),
(172, 10, 'wp_capabilities', 'a:1:{s:6:"editor";b:1;}'),
(173, 10, 'wp_user_level', '7'),
(174, 10, 'dismissed_wp_pointers', ''),
(175, 11, 'nickname', 'inna.kouper'),
(176, 11, 'first_name', 'Inna'),
(177, 11, 'last_name', 'Kouper'),
(178, 11, 'description', 'Inna Kouper is a research scientist and assistant director of the Data to Insight Center at Indiana University Bloomington. Her research interests are in the history and sociology of knowledge, with a particular emphasis on the emerging technologies and data practices. Dr. Kouper is engaged in several interdisciplinary projects that develop tools to support research data curation, integration, and visualization.'),
(179, 11, 'rich_editing', 'true'),
(180, 11, 'comment_shortcuts', 'false'),
(181, 11, 'admin_color', 'fresh'),
(182, 11, 'use_ssl', '0'),
(183, 11, 'show_admin_bar_front', 'true'),
(184, 11, 'wp_capabilities', 'a:1:{s:6:"editor";b:1;}'),
(185, 11, 'wp_user_level', '7'),
(186, 11, 'dismissed_wp_pointers', ''),
(187, 12, 'nickname', 'peng.chen'),
(188, 12, 'first_name', 'Peng'),
(189, 12, 'last_name', 'Chen'),
(190, 12, 'description', 'Peng Chen is a Computer Science PhD at Indiana University, supervised by Prof. Beth Plale. His research interests are in Big Data provenance analytics, agent-based simulation, and distributed system. Dr. Chen has worked with Prof. Tom Evans on agent-based modeling of food security in Zambia for three years.'),
(191, 12, 'rich_editing', 'true'),
(192, 12, 'comment_shortcuts', 'false'),
(193, 12, 'admin_color', 'fresh'),
(194, 12, 'use_ssl', '0'),
(195, 12, 'show_admin_bar_front', 'true'),
(196, 12, 'wp_capabilities', 'a:1:{s:6:"editor";b:1;}'),
(197, 12, 'wp_user_level', '7'),
(198, 12, 'dismissed_wp_pointers', ''),
(199, 13, 'nickname', 'megan.konar'),
(200, 13, 'first_name', 'Megan'),
(201, 13, 'last_name', 'Konar'),
(202, 13, 'description', 'Megan Konar is an Assistant Professor in Civil and Environmental Engineering at the University of Illinois at Urbana Champaign. She conducts policy-relevant research that focuses on the intersection of water, food, and trade. Her research is interdisciplinary, drawing from hydrology, environmental science, and economics, and employs modeling, network analysis, and econometrics.'),
(203, 13, 'rich_editing', 'true'),
(204, 13, 'comment_shortcuts', 'false'),
(205, 13, 'admin_color', 'fresh'),
(206, 13, 'use_ssl', '0'),
(207, 13, 'show_admin_bar_front', 'true'),
(208, 13, 'wp_capabilities', 'a:1:{s:6:"editor";b:1;}'),
(209, 13, 'wp_user_level', '7'),
(210, 13, 'dismissed_wp_pointers', ''),
(211, 14, 'nickname', 'kathy.baylis'),
(212, 14, 'first_name', 'Kathy'),
(213, 14, 'last_name', 'Baylis'),
(214, 14, 'description', 'Kathy Baylis is an Associate Professor in the department of Agricultural and Consumer Economics at the University of Illinois. She joined the department after several years as an Assistant Professor at the University of British Columbia where she remains an adjunct faculty. She earned her PhD from the University of California at Berkeley in 2003, where she specialized in international agricultural policy and trade.  Her current research includes evaluating agricultural and trade policies and their effect on food security in China, India and Sub-Saharan Africa. In 2001-2002, Kathy was the staff economist in charge of agriculture and forestry for the Council of Economic Advisors in the White House, and in the mid-1990s, she worked as Executive Secretary of the National Farmers Union in Canada.  \r\n\r\nProfessor Baylis has helped bring in over $28 million in grants, and has supervised over 20 graduate students and 4 post-doctoral students.  She has published over 40 journal articles and book chapters on agriculture, forestry and environmental policy.  She has also coauthored a textbook on U.S. and Canadian agricultural policy, which is used in universities on both sides of the border.  A complete list of her publications and CV can be found at <a href="http://works.bepress.com/kathy_baylis/">works.bepress.com/kathy_baylis</a>'),
(215, 14, 'rich_editing', 'true'),
(216, 14, 'comment_shortcuts', 'false'),
(217, 14, 'admin_color', 'fresh'),
(218, 14, 'use_ssl', '0'),
(219, 14, 'show_admin_bar_front', 'true'),
(220, 14, 'wp_capabilities', 'a:1:{s:6:"editor";b:1;}') ;
INSERT INTO `wp_usermeta` ( `umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(221, 14, 'wp_user_level', '7'),
(222, 14, 'dismissed_wp_pointers', ''),
(223, 15, 'nickname', 'natasha.krell'),
(224, 15, 'first_name', 'Natasha'),
(225, 15, 'last_name', 'Krell'),
(226, 15, 'description', 'Natasha Krell  is a first year graduate student in the Department of Geography at the University of California, Santa Barbara. Her research interests are in the water-food-climate nexus and food security in Sub-Saharan Africa. Natasha is advised by Dr. Kelly Caylor.'),
(227, 15, 'rich_editing', 'true'),
(228, 15, 'comment_shortcuts', 'false'),
(229, 15, 'admin_color', 'fresh'),
(230, 15, 'use_ssl', '0'),
(231, 15, 'show_admin_bar_front', 'true'),
(232, 15, 'wp_capabilities', 'a:1:{s:6:"editor";b:1;}'),
(233, 15, 'wp_user_level', '7'),
(234, 15, 'dismissed_wp_pointers', ''),
(235, 16, 'nickname', 'nicole.jackson'),
(236, 16, 'first_name', 'Nicole'),
(237, 16, 'last_name', 'Jackson'),
(238, 16, 'description', 'Nicole Jackson is a PhD student in the Department of Civil and Environmental Engineering at the University of Illinois at Urbana-Champaign. Her research focuses on applying big data to understand the food-water nexus to promote food security in light of a changing climate.'),
(239, 16, 'rich_editing', 'true'),
(240, 16, 'comment_shortcuts', 'false'),
(241, 16, 'admin_color', 'fresh'),
(242, 16, 'use_ssl', '0'),
(243, 16, 'show_admin_bar_front', 'true'),
(244, 16, 'wp_capabilities', 'a:1:{s:6:"editor";b:1;}'),
(245, 16, 'wp_user_level', '7'),
(246, 16, 'dismissed_wp_pointers', ''),
(247, 17, 'nickname', 'shahzeen.attari'),
(248, 17, 'first_name', 'Shahzeen'),
(249, 17, 'last_name', 'Attari'),
(250, 17, 'description', 'Shahzeen’s research focuses on human behavior and resource use. She is an Assistant Professor at the School of Public and Environmental Affairs (SPEA) at Indiana University Bloomington. She received a PhD in Engineering and Public Policy and Civil and Environmental Engineering from Carnegie Mellon University, and then studied psychology as a postdoctoral fellow at the Earth Institute at Columbia University. She also goes by Shaz. '),
(251, 17, 'rich_editing', 'true'),
(252, 17, 'comment_shortcuts', 'false'),
(253, 17, 'admin_color', 'fresh'),
(254, 17, 'use_ssl', '0'),
(255, 17, 'show_admin_bar_front', 'true'),
(256, 17, 'wp_capabilities', 'a:1:{s:6:"editor";b:1;}'),
(257, 17, 'wp_user_level', '7'),
(258, 17, 'dismissed_wp_pointers', ''),
(259, 18, 'nickname', 'armand.tossou'),
(260, 18, 'first_name', 'Armand'),
(261, 18, 'last_name', 'Tossou'),
(262, 18, 'description', 'I am a 2nd Year PhD student in the Agricultural and Consumer Economics (ACE) program at UIUC. My overarching research question is "How can we best help improve the livelihood of smallholders through the adoption of appropriate technologies?"'),
(263, 18, 'rich_editing', 'true'),
(264, 18, 'comment_shortcuts', 'false'),
(265, 18, 'admin_color', 'fresh'),
(266, 18, 'use_ssl', '0'),
(267, 18, 'show_admin_bar_front', 'true'),
(268, 18, 'wp_capabilities', 'a:1:{s:6:"editor";b:1;}'),
(269, 18, 'wp_user_level', '7'),
(270, 18, 'dismissed_wp_pointers', ''),
(271, 19, 'nickname', 'patrese.anderson'),
(272, 19, 'first_name', 'Patrese'),
(273, 19, 'last_name', 'Anderson'),
(274, 19, 'description', 'I am currently a PhD student studying in the Department of Agriculture and Consumer Economics at UIUC. My primary research interests relate to climate change migration and labor markets in developing countries.'),
(275, 19, 'rich_editing', 'true'),
(276, 19, 'comment_shortcuts', 'false'),
(277, 19, 'admin_color', 'fresh'),
(278, 19, 'use_ssl', '0'),
(279, 19, 'show_admin_bar_front', 'true'),
(280, 19, 'wp_capabilities', 'a:1:{s:6:"editor";b:1;}'),
(281, 19, 'wp_user_level', '7'),
(282, 19, 'dismissed_wp_pointers', ''),
(283, 20, 'nickname', 'kelly.caylor'),
(284, 20, 'first_name', 'Kelly'),
(285, 20, 'last_name', 'Caylor'),
(286, 20, 'description', 'PI of Ecohydrology Lab at Princeton. Writes proposals and overdue project reports. Works with spectacular and brilliant people, whose achievements and successes are chronicled at <a href="http://caylor.princeton.edu">caylor.princeton.edu</a>'),
(287, 20, 'rich_editing', 'true'),
(288, 20, 'comment_shortcuts', 'false'),
(289, 20, 'admin_color', 'fresh'),
(290, 20, 'use_ssl', '0'),
(291, 20, 'show_admin_bar_front', 'true'),
(292, 20, 'wp_capabilities', 'a:1:{s:6:"editor";b:1;}'),
(293, 20, 'wp_user_level', '7'),
(294, 20, 'dismissed_wp_pointers', ''),
(295, 21, 'nickname', 'lyndon.estes'),
(296, 21, 'first_name', 'Lyndon'),
(297, 21, 'last_name', 'Estes'),
(298, 21, 'description', 'Agriculture is the dominant driver of terrestrial ecological change, and its impacts will continue to grow in the next few decades as our demands for food, fuel, and fiber increase. I am primarily interested in understanding how this continued agricultural development can be achieved for substantially lower environmental, and thus social, cost.  My work investigates three inter-related aspects of this problem: Finding tradeoffs that allow us to meet our rapidly increasing agricultural demands while minimizing their ecological costs, understanding the drivers of agricultural change, developing the datasets and methods needed to conduct this research. I study these issues across multiple scales of time and space, ranging from continental perspectives down to the level of individual rare species. I focus primarily on sub-Saharan Africa, where agricultural development is likely to be most rapid in the coming decades.'),
(299, 21, 'rich_editing', 'true'),
(300, 21, 'comment_shortcuts', 'false'),
(301, 21, 'admin_color', 'fresh'),
(302, 21, 'use_ssl', '0'),
(303, 21, 'show_admin_bar_front', 'true'),
(304, 21, 'wp_capabilities', 'a:1:{s:6:"editor";b:1;}'),
(305, 21, 'wp_user_level', '7'),
(306, 21, 'dismissed_wp_pointers', ''),
(308, 9, 'wp_dashboard_quick_press_last_post_id', '234'),
(310, 10, 'wp_dashboard_quick_press_last_post_id', '235'),
(312, 11, 'wp_dashboard_quick_press_last_post_id', '236'),
(314, 12, 'wp_dashboard_quick_press_last_post_id', '237'),
(316, 13, 'wp_dashboard_quick_press_last_post_id', '238'),
(318, 14, 'wp_dashboard_quick_press_last_post_id', '239'),
(320, 15, 'wp_dashboard_quick_press_last_post_id', '240'),
(322, 16, 'wp_dashboard_quick_press_last_post_id', '241'),
(324, 17, 'wp_dashboard_quick_press_last_post_id', '242'),
(326, 18, 'wp_dashboard_quick_press_last_post_id', '243'),
(328, 19, 'wp_dashboard_quick_press_last_post_id', '244'),
(330, 20, 'wp_dashboard_quick_press_last_post_id', '245'),
(332, 21, 'wp_dashboard_quick_press_last_post_id', '246'),
(336, 18, 'simple_local_avatar', 'a:9:{s:8:"media_id";i:248;s:4:"full";s:67:"http://smallholder.ag/wp-content/uploads/2017/01/Armand-Tossou.jpeg";i:96;s:73:"http://smallholder.ag/wp-content/uploads/2017/01/Armand-Tossou-96x96.jpeg";i:32;s:73:"http://smallholder.ag/wp-content/uploads/2017/01/Armand-Tossou-32x32.jpeg";i:512;s:75:"http://smallholder.ag/wp-content/uploads/2017/01/Armand-Tossou-512x512.jpeg";i:300;s:75:"http://smallholder.ag/wp-content/uploads/2017/01/Armand-Tossou-300x300.jpeg";i:200;s:75:"http://smallholder.ag/wp-content/uploads/2017/01/Armand-Tossou-200x200.jpeg";i:250;s:75:"http://smallholder.ag/wp-content/uploads/2017/01/Armand-Tossou-250x250.jpeg";i:400;s:75:"http://smallholder.ag/wp-content/uploads/2017/01/Armand-Tossou-400x400.jpeg";}') ;
INSERT INTO `wp_usermeta` ( `umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(337, 18, 'simple_local_avatar_rating', 'G'),
(338, 11, 'simple_local_avatar', 'a:6:{s:8:"media_id";i:249;s:4:"full";s:64:"http://smallholder.ag/wp-content/uploads/2017/01/Inna-Kouper.jpg";i:96;s:70:"http://smallholder.ag/wp-content/uploads/2017/01/Inna-Kouper-96x96.jpg";i:32;s:70:"http://smallholder.ag/wp-content/uploads/2017/01/Inna-Kouper-32x32.jpg";i:250;s:72:"http://smallholder.ag/wp-content/uploads/2017/01/Inna-Kouper-250x250.jpg";i:400;s:64:"http://smallholder.ag/wp-content/uploads/2017/01/Inna-Kouper.jpg";}'),
(339, 11, 'simple_local_avatar_rating', 'G'),
(340, 14, 'simple_local_avatar', 'a:10:{s:8:"media_id";i:250;s:4:"full";s:65:"http://smallholder.ag/wp-content/uploads/2017/01/Kathy-Baylis.jpg";i:96;s:71:"http://smallholder.ag/wp-content/uploads/2017/01/Kathy-Baylis-96x96.jpg";i:32;s:71:"http://smallholder.ag/wp-content/uploads/2017/01/Kathy-Baylis-32x32.jpg";i:250;s:73:"http://smallholder.ag/wp-content/uploads/2017/01/Kathy-Baylis-250x250.jpg";i:400;s:73:"http://smallholder.ag/wp-content/uploads/2017/01/Kathy-Baylis-400x400.jpg";i:380;s:73:"http://smallholder.ag/wp-content/uploads/2017/01/Kathy-Baylis-380x380.jpg";i:450;s:73:"http://smallholder.ag/wp-content/uploads/2017/01/Kathy-Baylis-450x450.jpg";i:500;s:73:"http://smallholder.ag/wp-content/uploads/2017/01/Kathy-Baylis-500x500.jpg";i:390;s:73:"http://smallholder.ag/wp-content/uploads/2017/01/Kathy-Baylis-390x390.jpg";}'),
(341, 14, 'simple_local_avatar_rating', 'G'),
(342, 20, 'simple_local_avatar', 'a:6:{s:8:"media_id";i:251;s:4:"full";s:66:"http://smallholder.ag/wp-content/uploads/2017/01/Kelly-Caylor.jpeg";i:96;s:72:"http://smallholder.ag/wp-content/uploads/2017/01/Kelly-Caylor-96x96.jpeg";i:32;s:72:"http://smallholder.ag/wp-content/uploads/2017/01/Kelly-Caylor-32x32.jpeg";i:250;s:66:"http://smallholder.ag/wp-content/uploads/2017/01/Kelly-Caylor.jpeg";i:400;s:66:"http://smallholder.ag/wp-content/uploads/2017/01/Kelly-Caylor.jpeg";}'),
(343, 20, 'simple_local_avatar_rating', 'G'),
(344, 21, 'simple_local_avatar', 'a:6:{s:8:"media_id";i:252;s:4:"full";s:66:"http://smallholder.ag/wp-content/uploads/2017/01/Lyndon-Estes.jpeg";i:96;s:72:"http://smallholder.ag/wp-content/uploads/2017/01/Lyndon-Estes-96x96.jpeg";i:32;s:72:"http://smallholder.ag/wp-content/uploads/2017/01/Lyndon-Estes-32x32.jpeg";i:250;s:74:"http://smallholder.ag/wp-content/uploads/2017/01/Lyndon-Estes-250x250.jpeg";i:400;s:74:"http://smallholder.ag/wp-content/uploads/2017/01/Lyndon-Estes-400x400.jpeg";}'),
(345, 21, 'simple_local_avatar_rating', 'G'),
(346, 13, 'simple_local_avatar', 'a:6:{s:8:"media_id";i:253;s:4:"full";s:65:"http://smallholder.ag/wp-content/uploads/2017/01/Megan-Konar.jpeg";i:96;s:71:"http://smallholder.ag/wp-content/uploads/2017/01/Megan-Konar-96x96.jpeg";i:32;s:71:"http://smallholder.ag/wp-content/uploads/2017/01/Megan-Konar-32x32.jpeg";i:250;s:73:"http://smallholder.ag/wp-content/uploads/2017/01/Megan-Konar-250x250.jpeg";i:400;s:73:"http://smallholder.ag/wp-content/uploads/2017/01/Megan-Konar-400x400.jpeg";}'),
(347, 13, 'simple_local_avatar_rating', 'G'),
(348, 15, 'simple_local_avatar', 'a:6:{s:8:"media_id";i:254;s:4:"full";s:65:"http://smallholder.ag/wp-content/uploads/2017/01/Natash-Krell.png";i:96;s:71:"http://smallholder.ag/wp-content/uploads/2017/01/Natash-Krell-96x96.png";i:32;s:71:"http://smallholder.ag/wp-content/uploads/2017/01/Natash-Krell-32x32.png";i:250;s:73:"http://smallholder.ag/wp-content/uploads/2017/01/Natash-Krell-250x250.png";i:400;s:73:"http://smallholder.ag/wp-content/uploads/2017/01/Natash-Krell-400x400.png";}'),
(349, 15, 'simple_local_avatar_rating', 'G'),
(350, 16, 'simple_local_avatar', 'a:6:{s:8:"media_id";i:255;s:4:"full";s:67:"http://smallholder.ag/wp-content/uploads/2017/01/Nicole-Jackson.jpg";i:96;s:73:"http://smallholder.ag/wp-content/uploads/2017/01/Nicole-Jackson-96x96.jpg";i:32;s:73:"http://smallholder.ag/wp-content/uploads/2017/01/Nicole-Jackson-32x32.jpg";i:250;s:75:"http://smallholder.ag/wp-content/uploads/2017/01/Nicole-Jackson-250x250.jpg";i:400;s:75:"http://smallholder.ag/wp-content/uploads/2017/01/Nicole-Jackson-400x400.jpg";}'),
(351, 16, 'simple_local_avatar_rating', 'G'),
(352, 19, 'simple_local_avatar', 'a:6:{s:8:"media_id";i:256;s:4:"full";s:69:"http://smallholder.ag/wp-content/uploads/2017/01/patrese-anderson.png";i:96;s:75:"http://smallholder.ag/wp-content/uploads/2017/01/patrese-anderson-96x96.png";i:32;s:75:"http://smallholder.ag/wp-content/uploads/2017/01/patrese-anderson-32x32.png";i:250;s:77:"http://smallholder.ag/wp-content/uploads/2017/01/patrese-anderson-250x250.png";i:400;s:77:"http://smallholder.ag/wp-content/uploads/2017/01/patrese-anderson-400x400.png";}'),
(353, 19, 'simple_local_avatar_rating', 'G'),
(354, 12, 'simple_local_avatar', 'a:6:{s:8:"media_id";i:257;s:4:"full";s:62:"http://smallholder.ag/wp-content/uploads/2017/01/Peng-Chen.jpg";i:96;s:68:"http://smallholder.ag/wp-content/uploads/2017/01/Peng-Chen-96x96.jpg";i:32;s:68:"http://smallholder.ag/wp-content/uploads/2017/01/Peng-Chen-32x32.jpg";i:250;s:70:"http://smallholder.ag/wp-content/uploads/2017/01/Peng-Chen-250x250.jpg";i:400;s:70:"http://smallholder.ag/wp-content/uploads/2017/01/Peng-Chen-400x400.jpg";}'),
(355, 12, 'simple_local_avatar_rating', 'G'),
(356, 17, 'simple_local_avatar', 'a:6:{s:8:"media_id";i:258;s:4:"full";s:69:"http://smallholder.ag/wp-content/uploads/2017/01/SHAHZEEN-ATTARI.jpeg";i:96;s:75:"http://smallholder.ag/wp-content/uploads/2017/01/SHAHZEEN-ATTARI-96x96.jpeg";i:32;s:75:"http://smallholder.ag/wp-content/uploads/2017/01/SHAHZEEN-ATTARI-32x32.jpeg";i:250;s:77:"http://smallholder.ag/wp-content/uploads/2017/01/SHAHZEEN-ATTARI-250x250.jpeg";i:400;s:69:"http://smallholder.ag/wp-content/uploads/2017/01/SHAHZEEN-ATTARI.jpeg";}'),
(357, 17, 'simple_local_avatar_rating', 'G'),
(358, 9, 'simple_local_avatar', 'a:9:{s:8:"media_id";i:259;s:4:"full";s:62:"http://smallholder.ag/wp-content/uploads/2017/01/Tom-Evans.jpg";i:96;s:68:"http://smallholder.ag/wp-content/uploads/2017/01/Tom-Evans-96x96.jpg";i:32;s:68:"http://smallholder.ag/wp-content/uploads/2017/01/Tom-Evans-32x32.jpg";i:250;s:70:"http://smallholder.ag/wp-content/uploads/2017/01/Tom-Evans-250x250.jpg";i:64;s:68:"http://smallholder.ag/wp-content/uploads/2017/01/Tom-Evans-64x64.jpg";i:26;s:68:"http://smallholder.ag/wp-content/uploads/2017/01/Tom-Evans-26x26.jpg";i:18;s:68:"http://smallholder.ag/wp-content/uploads/2017/01/Tom-Evans-18x18.jpg";i:400;s:70:"http://smallholder.ag/wp-content/uploads/2017/01/Tom-Evans-400x400.jpg";}'),
(359, 9, 'simple_local_avatar_rating', 'G'),
(361, 10, 'simple_local_avatar', 'a:6:{s:8:"media_id";i:247;s:4:"full";s:65:"http://smallholder.ag/wp-content/uploads/2017/01/Beth-A-Plale.jpg";i:96;s:71:"http://smallholder.ag/wp-content/uploads/2017/01/Beth-A-Plale-96x96.jpg";i:250;s:73:"http://smallholder.ag/wp-content/uploads/2017/01/Beth-A-Plale-250x250.jpg";i:32;s:71:"http://smallholder.ag/wp-content/uploads/2017/01/Beth-A-Plale-32x32.jpg";i:400;s:73:"http://smallholder.ag/wp-content/uploads/2017/01/Beth-A-Plale-400x400.jpg";}'),
(362, 10, 'simple_local_avatar_rating', 'G'),
(366, 9, 'wp_user-settings', 'libraryContent=browse&hidetb=1'),
(367, 9, 'wp_user-settings-time', '1484114159'),
(368, 1, 'session_tokens', 'a:1:{s:64:"17d1529e124d5680c125e6bde44a2120ef16e03532e1b99d793a82403759acaa";a:4:{s:10:"expiration";i:1485442743;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:104:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36";s:5:"login";i:1485269943;}}') ;

#
# End of data contents of table `wp_usermeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_users`
#

DROP TABLE IF EXISTS `wp_users`;


#
# Table structure of table `wp_users`
#

CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


#
# Data contents of table `wp_users`
#
INSERT INTO `wp_users` ( `ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'BKDF', '$P$B617mUMAEWcJi8o2nFruK0obmAUadZ0', 'bkdf', 'andres.angel@gmail.com', '', '2015-09-21 16:17:31', '', 0, 'BKDF'),
(9, 'tom.evans', '$P$BH4cBBA45tgMItUhj6nPLNt9h80Z0b0', 'tom-evans', 'evans@indiana.edu', '', '2017-01-11 02:51:01', '', 0, 'Tom Evans'),
(10, 'beth.plale', '$P$BSAquiF21/IRBB7nuZHrpycYwSIf36/', 'beth-plale', 'plale@indiana.edu', '', '2017-01-11 02:53:05', '', 0, 'Beth A. Plale'),
(11, 'inna.kouper', '$P$Bk/3J6qUFeV4e5A1.lW5RJ.xg4VDEv/', 'inna-kouper', 'inkouper@indiana.edu', '', '2017-01-11 02:54:00', '', 0, 'Inna Kouper'),
(12, 'peng.chen', '$P$BjHeCEmecKdd07O9oWagb.5R.RNkT71', 'peng-chen', 'chenpeng@umail.iu.edu', '', '2017-01-11 02:54:53', '', 0, 'Peng Chen'),
(13, 'megan.konar', '$P$Bk9j8MdDbm3xmSckFEEu66M5pOxXUy.', 'megan-konar', 'megankonar@gmail.com', '', '2017-01-11 02:55:41', '', 0, 'Megan Konar'),
(14, 'kathy.baylis', '$P$BrI4OnSo01lQnqtIsbL4XxBxWeHg07/', 'kathy-baylis', 'baylis@illinois.edu', '', '2017-01-11 02:56:54', '', 0, 'Kathy Baylis'),
(15, 'natasha.krell', '$P$BIH/AVbBkyeL9q.m8acnj9DW.I.vFi1', 'natasha-krell', 'nkrell@ucsb.edu', '', '2017-01-11 02:58:16', '', 0, 'Natasha Krell'),
(16, 'nicole.jackson', '$P$BrtUQu6kOUuFRYM4Vd00poyxqG7T3l.', 'nicole-jackson', 'ndjackso@illinois.edu', '', '2017-01-11 02:59:25', '', 0, 'Nicole Jackson'),
(17, 'shahzeen.attari', '$P$BeaXrc/ich.BwevqcbB5k3fGN/uw9k1', 'shahzeen-attari', 'sattari@indiana.edu', '', '2017-01-11 03:01:09', '', 0, 'Shahzeen Attari'),
(18, 'armand.tossou', '$P$BkKAE6.EPbBb9II0Kyhq8pXvfPeMlI1', 'armand-tossou', 'tossou2@illinois.edu', '', '2017-01-11 03:02:12', '', 0, 'Armand Tossou'),
(19, 'patrese.anderson', '$P$BIW23T12ZD5f5tLjBd275nSfFAmNPB.', 'patrese-anderson', 'pnander2@illinois.edu', '', '2017-01-11 03:03:34', '', 0, 'Patrese Anderson'),
(20, 'kelly.caylor', '$P$BWw65p8hkrGeqYfe0hG0Zf0yiBy2750', 'kelly-caylor', 'caylor@ucsb.edu', '', '2017-01-11 03:04:41', '', 0, 'Kelly Caylor'),
(21, 'lyndon.estes', '$P$B1OVnGd9kfSE3FLVXYzK.5kUzaRfjH1', 'lyndon-estes', 'lestes@princeton.edu', '', '2017-01-11 03:05:48', '', 0, 'Lyndon Estes') ;

#
# End of data contents of table `wp_users`
# --------------------------------------------------------

#
# Add constraints back in and apply any alter data queries.
#

