-- --------------------------------------------------------
-- Hôte:                         127.0.0.1
-- Version du serveur:           8.0.30 - MySQL Community Server - GPL
-- SE du serveur:                Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Listage de la structure de la base pour clean-eco
CREATE DATABASE IF NOT EXISTS `clean-eco` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `clean-eco`;

-- Listage de la structure de table clean-eco. wp_commentmeta
CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Les données exportées n'étaient pas sélectionnées.

-- Listage de la structure de table clean-eco. wp_comments
CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint unsigned NOT NULL DEFAULT '0',
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Les données exportées n'étaient pas sélectionnées.

-- Listage de la structure de table clean-eco. wp_db7_forms
CREATE TABLE IF NOT EXISTS `wp_db7_forms` (
  `form_id` bigint NOT NULL AUTO_INCREMENT,
  `form_post_id` bigint NOT NULL,
  `form_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `form_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`form_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Les données exportées n'étaient pas sélectionnées.

-- Listage de la structure de table clean-eco. wp_links
CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint unsigned NOT NULL DEFAULT '1',
  `link_rating` int NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Les données exportées n'étaient pas sélectionnées.

-- Listage de la structure de table clean-eco. wp_options
CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=864 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Les données exportées n'étaient pas sélectionnées.

-- Listage de la structure de table clean-eco. wp_postmeta
CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=580 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Les données exportées n'étaient pas sélectionnées.

-- Listage de la structure de table clean-eco. wp_posts
CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=2377 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Les données exportées n'étaient pas sélectionnées.

-- Listage de la structure de table clean-eco. wp_revslider_css
CREATE TABLE IF NOT EXISTS `wp_revslider_css` (
  `id` int NOT NULL AUTO_INCREMENT,
  `handle` text NOT NULL,
  `settings` longtext,
  `hover` longtext,
  `advanced` longtext,
  `params` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `handle_index` (`handle`(64))
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Les données exportées n'étaient pas sélectionnées.

-- Listage de la structure de table clean-eco. wp_revslider_css_bkp
CREATE TABLE IF NOT EXISTS `wp_revslider_css_bkp` (
  `id` int NOT NULL AUTO_INCREMENT,
  `handle` text NOT NULL,
  `settings` longtext,
  `hover` longtext,
  `advanced` longtext,
  `params` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `handle_index` (`handle`(64))
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Les données exportées n'étaient pas sélectionnées.

-- Listage de la structure de table clean-eco. wp_revslider_layer_animations
CREATE TABLE IF NOT EXISTS `wp_revslider_layer_animations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `handle` text NOT NULL,
  `params` text NOT NULL,
  `settings` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Les données exportées n'étaient pas sélectionnées.

-- Listage de la structure de table clean-eco. wp_revslider_layer_animations_bkp
CREATE TABLE IF NOT EXISTS `wp_revslider_layer_animations_bkp` (
  `id` int NOT NULL AUTO_INCREMENT,
  `handle` text NOT NULL,
  `params` text NOT NULL,
  `settings` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Les données exportées n'étaient pas sélectionnées.

-- Listage de la structure de table clean-eco. wp_revslider_navigations
CREATE TABLE IF NOT EXISTS `wp_revslider_navigations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `handle` varchar(191) NOT NULL,
  `type` varchar(191) NOT NULL,
  `css` longtext NOT NULL,
  `markup` longtext NOT NULL,
  `settings` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Les données exportées n'étaient pas sélectionnées.

-- Listage de la structure de table clean-eco. wp_revslider_navigations_bkp
CREATE TABLE IF NOT EXISTS `wp_revslider_navigations_bkp` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `handle` varchar(191) NOT NULL,
  `type` varchar(191) NOT NULL,
  `css` longtext NOT NULL,
  `markup` longtext NOT NULL,
  `settings` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Les données exportées n'étaient pas sélectionnées.

-- Listage de la structure de table clean-eco. wp_revslider_sliders
CREATE TABLE IF NOT EXISTS `wp_revslider_sliders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` tinytext NOT NULL,
  `alias` tinytext,
  `params` longtext NOT NULL,
  `settings` text,
  `type` varchar(191) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `type_index` (`type`(8))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Les données exportées n'étaient pas sélectionnées.

-- Listage de la structure de table clean-eco. wp_revslider_sliders_bkp
CREATE TABLE IF NOT EXISTS `wp_revslider_sliders_bkp` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` tinytext NOT NULL,
  `alias` tinytext,
  `params` longtext NOT NULL,
  `settings` text,
  `type` varchar(191) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `type_index` (`type`(8))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Les données exportées n'étaient pas sélectionnées.

-- Listage de la structure de table clean-eco. wp_revslider_slides
CREATE TABLE IF NOT EXISTS `wp_revslider_slides` (
  `id` int NOT NULL AUTO_INCREMENT,
  `slider_id` int NOT NULL,
  `slide_order` int NOT NULL,
  `params` longtext NOT NULL,
  `layers` longtext NOT NULL,
  `settings` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `slider_id_index` (`slider_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Les données exportées n'étaient pas sélectionnées.

-- Listage de la structure de table clean-eco. wp_revslider_slides_bkp
CREATE TABLE IF NOT EXISTS `wp_revslider_slides_bkp` (
  `id` int NOT NULL AUTO_INCREMENT,
  `slider_id` int NOT NULL,
  `slide_order` int NOT NULL,
  `params` longtext NOT NULL,
  `layers` longtext NOT NULL,
  `settings` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `slider_id_index` (`slider_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Les données exportées n'étaient pas sélectionnées.

-- Listage de la structure de table clean-eco. wp_revslider_static_slides
CREATE TABLE IF NOT EXISTS `wp_revslider_static_slides` (
  `id` int NOT NULL AUTO_INCREMENT,
  `slider_id` int NOT NULL,
  `params` longtext NOT NULL,
  `layers` longtext NOT NULL,
  `settings` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `slider_id_index` (`slider_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Les données exportées n'étaient pas sélectionnées.

-- Listage de la structure de table clean-eco. wp_revslider_static_slides_bkp
CREATE TABLE IF NOT EXISTS `wp_revslider_static_slides_bkp` (
  `id` int NOT NULL AUTO_INCREMENT,
  `slider_id` int NOT NULL,
  `params` longtext NOT NULL,
  `layers` longtext NOT NULL,
  `settings` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `slider_id_index` (`slider_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Les données exportées n'étaient pas sélectionnées.

-- Listage de la structure de table clean-eco. wp_termmeta
CREATE TABLE IF NOT EXISTS `wp_termmeta` (
  `meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Les données exportées n'étaient pas sélectionnées.

-- Listage de la structure de table clean-eco. wp_terms
CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Les données exportées n'étaient pas sélectionnées.

-- Listage de la structure de table clean-eco. wp_term_relationships
CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint unsigned NOT NULL DEFAULT '0',
  `term_order` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Les données exportées n'étaient pas sélectionnées.

-- Listage de la structure de table clean-eco. wp_term_taxonomy
CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint unsigned NOT NULL DEFAULT '0',
  `count` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Les données exportées n'étaient pas sélectionnées.

-- Listage de la structure de table clean-eco. wp_usermeta
CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Les données exportées n'étaient pas sélectionnées.

-- Listage de la structure de table clean-eco. wp_users
CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Les données exportées n'étaient pas sélectionnées.

-- Listage de la structure de table clean-eco. wp_yoast_indexable
CREATE TABLE IF NOT EXISTS `wp_yoast_indexable` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `permalink` longtext COLLATE utf8mb4_unicode_520_ci,
  `permalink_hash` varchar(40) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `object_id` bigint DEFAULT NULL,
  `object_type` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `object_sub_type` varchar(32) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `author_id` bigint DEFAULT NULL,
  `post_parent` bigint DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_520_ci,
  `description` mediumtext COLLATE utf8mb4_unicode_520_ci,
  `breadcrumb_title` text COLLATE utf8mb4_unicode_520_ci,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `is_public` tinyint(1) DEFAULT NULL,
  `is_protected` tinyint(1) DEFAULT '0',
  `has_public_posts` tinyint(1) DEFAULT NULL,
  `number_of_pages` int unsigned DEFAULT NULL,
  `canonical` longtext COLLATE utf8mb4_unicode_520_ci,
  `primary_focus_keyword` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `primary_focus_keyword_score` int DEFAULT NULL,
  `readability_score` int DEFAULT NULL,
  `is_cornerstone` tinyint(1) DEFAULT '0',
  `is_robots_noindex` tinyint(1) DEFAULT '0',
  `is_robots_nofollow` tinyint(1) DEFAULT '0',
  `is_robots_noarchive` tinyint(1) DEFAULT '0',
  `is_robots_noimageindex` tinyint(1) DEFAULT '0',
  `is_robots_nosnippet` tinyint(1) DEFAULT '0',
  `twitter_title` text COLLATE utf8mb4_unicode_520_ci,
  `twitter_image` longtext COLLATE utf8mb4_unicode_520_ci,
  `twitter_description` longtext COLLATE utf8mb4_unicode_520_ci,
  `twitter_image_id` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `twitter_image_source` text COLLATE utf8mb4_unicode_520_ci,
  `open_graph_title` text COLLATE utf8mb4_unicode_520_ci,
  `open_graph_description` longtext COLLATE utf8mb4_unicode_520_ci,
  `open_graph_image` longtext COLLATE utf8mb4_unicode_520_ci,
  `open_graph_image_id` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `open_graph_image_source` text COLLATE utf8mb4_unicode_520_ci,
  `open_graph_image_meta` mediumtext COLLATE utf8mb4_unicode_520_ci,
  `link_count` int DEFAULT NULL,
  `incoming_link_count` int DEFAULT NULL,
  `prominent_words_version` int unsigned DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `blog_id` bigint NOT NULL DEFAULT '1',
  `language` varchar(32) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `region` varchar(32) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `schema_page_type` varchar(64) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `schema_article_type` varchar(64) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `has_ancestors` tinyint(1) DEFAULT '0',
  `estimated_reading_time_minutes` int DEFAULT NULL,
  `version` int DEFAULT '1',
  `object_last_modified` datetime DEFAULT NULL,
  `object_published_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `object_type_and_sub_type` (`object_type`,`object_sub_type`),
  KEY `object_id_and_type` (`object_id`,`object_type`),
  KEY `permalink_hash_and_object_type` (`permalink_hash`,`object_type`),
  KEY `subpages` (`post_parent`,`object_type`,`post_status`,`object_id`),
  KEY `prominent_words` (`prominent_words_version`,`object_type`,`object_sub_type`,`post_status`),
  KEY `published_sitemap_index` (`object_published_at`,`is_robots_noindex`,`object_type`,`object_sub_type`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Les données exportées n'étaient pas sélectionnées.

-- Listage de la structure de table clean-eco. wp_yoast_indexable_hierarchy
CREATE TABLE IF NOT EXISTS `wp_yoast_indexable_hierarchy` (
  `indexable_id` int unsigned NOT NULL,
  `ancestor_id` int unsigned NOT NULL,
  `depth` int unsigned DEFAULT NULL,
  `blog_id` bigint NOT NULL DEFAULT '1',
  PRIMARY KEY (`indexable_id`,`ancestor_id`),
  KEY `indexable_id` (`indexable_id`),
  KEY `ancestor_id` (`ancestor_id`),
  KEY `depth` (`depth`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Les données exportées n'étaient pas sélectionnées.

-- Listage de la structure de table clean-eco. wp_yoast_migrations
CREATE TABLE IF NOT EXISTS `wp_yoast_migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `version` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `wp_yoast_migrations_version` (`version`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Les données exportées n'étaient pas sélectionnées.

-- Listage de la structure de table clean-eco. wp_yoast_primary_term
CREATE TABLE IF NOT EXISTS `wp_yoast_primary_term` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint DEFAULT NULL,
  `term_id` bigint DEFAULT NULL,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `blog_id` bigint NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `post_taxonomy` (`post_id`,`taxonomy`),
  KEY `post_term` (`post_id`,`term_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Les données exportées n'étaient pas sélectionnées.

-- Listage de la structure de table clean-eco. wp_yoast_seo_links
CREATE TABLE IF NOT EXISTS `wp_yoast_seo_links` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) DEFAULT NULL,
  `post_id` bigint unsigned DEFAULT NULL,
  `target_post_id` bigint unsigned DEFAULT NULL,
  `type` varchar(8) DEFAULT NULL,
  `indexable_id` int unsigned DEFAULT NULL,
  `target_indexable_id` int unsigned DEFAULT NULL,
  `height` int unsigned DEFAULT NULL,
  `width` int unsigned DEFAULT NULL,
  `size` int unsigned DEFAULT NULL,
  `language` varchar(32) DEFAULT NULL,
  `region` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `link_direction` (`post_id`,`type`),
  KEY `indexable_link_direction` (`indexable_id`,`type`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb3;

-- Les données exportées n'étaient pas sélectionnées.

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
