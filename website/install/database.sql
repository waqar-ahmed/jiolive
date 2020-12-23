-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 16, 2020 at 07:31 AM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `v120_blank`
--

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

DROP TABLE IF EXISTS `ci_sessions`;
CREATE TABLE IF NOT EXISTS `ci_sessions` (
  `id` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `data` blob NOT NULL,
  KEY `ci_sessions_timestamp` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `ci_sessions`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE IF NOT EXISTS `comments` (
  `comments_id` int(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL,
  `video_id` int(20) NOT NULL,
  `comment_type` int(5) NOT NULL DEFAULT 1,
  `replay_for` int(10) DEFAULT 0,
  `comment` mediumtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `comment_at` datetime DEFAULT NULL,
  `publication` int(5) DEFAULT 0,
  PRIMARY KEY (`comments_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `config_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`config_id`)
) ENGINE=MyISAM AUTO_INCREMENT=262 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `config`
--

INSERT INTO `config` (`config_id`, `title`, `value`) VALUES
(194, 'system_name', 'OXOO - Android Live TV & Movie Portal'),
(195, 'site_name', 'My Movie Site'),
(196, 'business_address', ''),
(197, 'business_phone', ''),
(198, 'contact_email', 'contact@mydomain.com'),
(199, 'system_email', ''),
(200, 'system_short_name', 'OXOO'),
(201, 'slider_type', 'movie'),
(202, 'slide_per_page', ''),
(203, 'protocol', 'mail'),
(204, 'mailpath', '/usr/bin/sendmail'),
(205, 'smtp_host', 'smtp.gmail.com'),
(206, 'smtp_user', 'email@gmail.com'),
(207, 'smtp_pass', ''),
(208, 'smtp_port', '465'),
(209, 'smtp_crypto', 'ssl'),
(210, 'comments_approval', '1'),
(211, 'movie_per_page', '72'),
(212, 'purchase_code', 'item_purchase_code'),
(213, 'push_notification_enable', ''),
(214, 'onesignal_appid', 'one_signal_app_id_here'),
(215, 'onesignal_api_keys', 'one_signal_api_key_here'),
(216, 'mobile_apps_api_secret_key', 'default_mobile_apps_api_secret_key'),
(217, 'cron_key', 'default_cron_key'),
(218, 'db_backup', '1'),
(219, 'backup_schedule', '30'),
(220, 'version', '1.3.0'),
(221, 'terms', ''),
(222, 'total_movie_in_slider', '5'),
(223, 'preroll_ads_enable', '0'),
(224, 'preroll_ads_video', ''),
(225, 'admob_ads_enable', '1'),
(226, 'admob_publisher_id', ' pub-xxxxxxxxxxxxxx'),
(227, 'admob_app_id', 'ca-app-pub-xxxxxxxxxx~xxxxxxxxx'),
(228, 'admob_banner_ads_id', 'ca-app-pub-xxxxxxxxx/xxxxxxxxx'),
(229, 'admob_interstitial_ads_id', 'ca-app-pub-xxxxxxxxxxxxxxx/xxxxxxxxxx'),
(230, 'app_menu', 'vertical'),
(231, 'app_program_guide_enable', 'false'),
(232, 'app_mandatory_login', 'false'),
(233, 'genre_visible', 'true'),
(234, 'country_visible', 'false'),
(235, 'trial_enable', '1'),
(236, 'trial_period', '7'),
(237, 'paypal_email', 'paypal@yourwebsite.com'),
(238, 'currency_symbol', '$'),
(239, 'stripe_publishable_key', 'pk_test_fBUK0yZBlxsTrHoQudKGVD6s00EtEapeAl'),
(240, 'stripe_secret_key', 'sk_test_QgCvIIJGWMKwLeLrvROYIKAV00qsjPGf4n'),
(241, 'currency', 'USD'),
(256, 'program_guide_enable', '1'),
(242, 'mobile_ads_enable', '0'),
(243, 'mobile_ads_network', 'admob'),
(244, 'fan_native_ads_placement_id', 'xxxxxxxxxxxxx_xxxxxxxxxxxxx'),
(245, 'fan_banner_ads_placement_id', 'xxxxxxxxxx_xxxxxxxxxxxx'),
(246, 'fan_Interstitial_ads_placement_id', 'xxxxxxxxxxx_xxxxxxxxxxxxxx'),
(247, 'startapp_app_id', 'xxxxxxxxxxx'),
(248, 'paypal_client_id', 'xxxxxxxxxxxxxxxxxxxxxxxxxx'),
(249, 'exchange_rate_update_by_cron', '0'),
(250, 'enable_ribbon', '1'),
(251, 'apk_version_code', '15'),
(252, 'apk_version_name', 'v1.2.0'),
(253, 'apk_whats_new', 'New UI\r\nDownload option\r\nAdvanced Search\r\nSubscription'),
(254, 'latest_apk_url', 'http://oxoo.spagreen.net/demo/oxoo-v114.apk'),
(257, 'apk_update_is_skipable', '1'),
(258, 'season_order', 'DESC'),
(259, 'episode_order', 'DESC'),
(260, 'video_file_order', 'ASC'),
(261, 'video_source', 'video_source'),
(262, 'razorpay_key_id', 'xxxxxxxxxxx'),
(263, 'razorpay_key_secret', 'xxxxxxxxxxxx'),
(264, 'paypal_enable', 'true'),
(265, 'stripe_enable', 'true'),
(266, 'razorpay_enable', 'true'),
(267, 'razorpay_inr_exchange_rate', '1'),
(NULL, 'admob_native_ads_id', 'xxxxxxxxxxx'),
(NULL, 'offline_payment_enable', 'false'),
(NULL, 'offline_payment_title', 'Offline Payment'),
(NULL, 'offline_payment_instruction', 'Offline payment instruction goes here.');

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
CREATE TABLE IF NOT EXISTS `country` (
  `country_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `description` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `slug` varchar(128) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `publication` int(2) NOT NULL,
  PRIMARY KEY (`country_id`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`country_id`, `name`, `description`, `slug`, `publication`) VALUES
(1, 'International', '', 'international', 1),
(2, 'Asia', '', 'asia', 1),
(3, 'USA', '', 'usa', 1),
(4, 'China', '', 'china', 1),
(5, 'Japan', '', 'japan', 1),
(6, 'Korean', '', 'korean', 1),
(7, 'Nepal', '', 'nepal', 1),
(8, 'Thailand', '', 'thailand', 1),
(9, 'Tamil', '', 'tamil', 1),
(10, 'India', '', 'india', 1),
(11, 'France', '', 'france', 1),
(12, 'Italy', '', 'italy', 1),
(13, 'German', '', 'german', 1),
(14, 'London', '', 'london', 1),
(15, 'Canada', '', 'canada', 1),
(16, 'Denmark', '', 'denmark', 1),
(17, 'UK', '', 'uk', 1),
(18, 'Hong kong', '', 'hong-kong', 1),
(19, 'UAE', '', 'uae', 1),
(20, 'Australia', '', 'australia', 1),
(21, 'South Korea', '', 'south-korea', 1),
(22, 'Russia', '', 'russia', 1),
(23, ' Sweden', '', 'sweden', 1),
(24, 'Spain', '', 'spain', 1),
(25, 'Brazil', '', 'brazil', 1),
(26, 'Iran', '', 'iran', 1),
(27, 'Israel', '', 'israel', 1),
(28, 'Indonesia', '', 'indonesia', 1),
(29, 'Philippines', '', 'philippines', 1),
(30, ' Peru', ' Peru', 'peru', 1),
(31, ' Canada', ' Canada', 'canada', 1),
(32, ' Japan', ' Japan', 'japan', 1),
(33, ' USA', ' USA', 'usa', 1),
(34, ' Hong Kong', ' Hong Kong', 'hong-kong', 1),
(35, ' Mexico', ' Mexico', 'mexico', 1),
(36, ' New Zealand', ' New Zealand', 'new-zealand', 1),
(37, ' UK', ' UK', 'uk', 1),
(38, ' Denmark', ' Denmark', 'denmark', 1),
(39, ' Australia', ' Australia', 'australia', 1),
(40, ' Germany', ' Germany', 'germany', 1),
(41, ' Hungary', ' Hungary', 'hungary', 1),
(42, ' India', ' India', 'india', 1),
(43, 'Hungary', 'Hungary', 'hungary', 1),
(44, ' France', ' France', 'france', 1),
(45, ' China', ' China', 'china', 1),
(46, 'Chile', 'Chile', 'chile', 1),
(47, ' Argentina', ' Argentina', 'argentina', 1),
(48, 'Egypt', 'Egypt', 'egypt', 1),
(49, 'New Zealand', 'New Zealand', 'new-zealand', 1),
(50, 'Croatia', 'Croatia', 'croatia', 1),
(51, ' Switzerland', ' Switzerland', 'switzerland', 1),
(52, ' Tunisia', ' Tunisia', 'tunisia', 1),
(53, 'Belgium', 'Belgium', 'belgium', 1),
(68, 'United States of America', 'United States of America', 'united-states-of-america', 1),
(69, 'Bangladesh', 'Bangladesh', 'bangladesh', 1),
(70, 'United Kingdom', 'United Kingdom', 'united-kingdom', 1),
(71, 'Malaysia', 'Malaysia', 'malaysia', 1),
(72, 'South Africa', 'South Africa', 'south-africa', 1),
(73, 'Switzerland', 'Switzerland', 'switzerland', 1),
(74, 'Germany', 'Germany', 'germany', 1),
(75, 'Sweden', 'Sweden', 'sweden', 1),
(76, 'Bulgaria', 'Bulgaria', 'bulgaria', 1),
(77, 'Soviet Union', 'Soviet Union', 'soviet-union', 1),
(78, 'Netherlands', 'Netherlands', 'netherlands', 1),
(80, 'Malta', 'Malta', 'malta', 1),
(81, 'Taiwan', 'Taiwan', 'taiwan', 1),
(82, 'Argentina', 'Argentina', 'argentina', 1),
(83, 'Iceland', 'Iceland', 'iceland', 1),
(84, 'CA', 'CA', 'ca', 1),
(85, 'US', 'US', 'us', 1),
(86, 'GB', 'GB', 'gb', 1),
(87, '', '', '', 1),
(88, 'BE', 'BE', 'be', 1),
(89, 'Czech Republic', 'Czech Republic', 'czech-republic', 1),
(90, 'Slovakia', 'Slovakia', 'slovakia', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cron`
--

DROP TABLE IF EXISTS `cron`;
CREATE TABLE IF NOT EXISTS `cron` (
  `cron_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `action` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `image_url` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `save_to` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `videos_id` int(250) DEFAULT NULL,
  `admin_email_from` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `admin_email` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `email_to` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `email_sub` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `message` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`cron_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `currency`
--

DROP TABLE IF EXISTS `currency`;
CREATE TABLE IF NOT EXISTS `currency` (
  `currency_id` int(11) NOT NULL AUTO_INCREMENT,
  `country` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `currency` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `iso_code` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `symbol` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `exchange_rate` double NOT NULL DEFAULT 1,
  `default` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`currency_id`)
) ENGINE=MyISAM AUTO_INCREMENT=133 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `currency`
--

INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES
(1, 'Albania', 'Leke', 'ALL', 'Lek', 1, 0, 1),
(2, 'America', 'Dollars', 'USD', '$', 1, 0, 1),
(3, 'Afghanistan', 'Afghanis', 'AFN', '؋', 1, 0, 1),
(4, 'Argentina', 'Pesos', 'ARS', '$', 61.399228, 0, 1),
(5, 'Aruba', 'Guilders', 'AWG', 'ƒ', 1, 0, 1),
(6, 'Australia', 'Dollars', 'AUD', '$', 1.4882, 0, 1),
(7, 'Azerbaijan', 'New Manats', 'AZN', 'ман', 1, 0, 1),
(8, 'Bahamas', 'Dollars', 'BSD', '$', 1, 0, 1),
(9, 'Barbados', 'Dollars', 'BBD', '$', 1, 0, 1),
(10, 'Belarus', 'Rubles', 'BYR', 'p.', 1, 0, 1),
(11, 'Belgium', 'Euro', 'EUR', '€', 0.922379, 0, 1),
(12, 'Beliz', 'Dollars', 'BZD', 'BZ$', 1, 0, 1),
(13, 'Bermuda', 'Dollars', 'BMD', '$', 1, 0, 1),
(14, 'Bolivia', 'Bolivianos', 'BOB', '$b', 1, 0, 1),
(15, 'Bosnia and Herzegovina', 'Convertible Marka', 'BAM', 'KM', 1, 0, 1),
(16, 'Botswana', 'Pula', 'BWP', 'P', 1, 0, 1),
(17, 'Bulgaria', 'Leva', 'BGN', 'лв', 1.803753, 0, 1),
(18, 'Brazil', 'Reais', 'BRL', 'R$', 4.330496, 0, 1),
(19, 'Britain (United Kingdom)', 'Pounds', 'GBP', '£', 83, 0, 1),
(20, 'Brunei Darussalam', 'Dollars', 'BND', '$', 1, 0, 1),
(21, 'Cambodia', 'Riels', 'KHR', '៛', 1, 0, 1),
(22, 'Canada', 'Dollars', 'CAD', '$', 1.325097, 0, 1),
(23, 'Cayman Islands', 'Dollars', 'KYD', '$', 1, 0, 1),
(24, 'Chile', 'Pesos', 'CLP', '$', 794.622928, 0, 1),
(25, 'China', 'Yuan Renminbi', 'CNY', '¥', 6.984162, 0, 1),
(26, 'Colombia', 'Pesos', 'COP', '$', 3313, 0, 1),
(27, 'Costa Rica', 'Colón', 'CRC', '₡', 1, 0, 1),
(28, 'Croatia', 'Kuna', 'HRK', 'kn', 6.869981, 0, 1),
(29, 'Cuba', 'Pesos', 'CUP', '₱', 1, 0, 1),
(30, 'Cyprus', 'Euro', 'EUR', '€', 0.922379, 0, 1),
(31, 'Czech Republic', 'Koruny', 'CZK', 'Kč', 22.911451, 0, 1),
(32, 'Denmark', 'Kroner', 'DKK', 'kr', 6.890187, 0, 1),
(33, 'Dominican Republic', 'Pesos', 'DOP ', 'RD$', 53.507402, 0, 1),
(34, 'East Caribbean', 'Dollars', 'XCD', '$', 1, 0, 1),
(35, 'Egypt', 'Pounds', 'EGP', '£', 15.61815, 0, 1),
(36, 'El Salvador', 'Colones', 'SVC', '$', 1, 0, 1),
(37, 'England (United Kingdom)', 'Pounds', 'GBP', '£', 83, 0, 1),
(38, 'Euro', 'Euro', 'EUR', '€', 0.922379, 0, 1),
(39, 'Falkland Islands', 'Pounds', 'FKP', '£', 1, 0, 1),
(40, 'Fiji', 'Dollars', 'FJD', '$', 2.195918, 0, 1),
(41, 'France', 'Euro', 'EUR', '€', 0.922379, 0, 1),
(42, 'Ghana', 'Cedis', 'GHC', '¢', 1, 0, 1),
(43, 'Gibraltar', 'Pounds', 'GIP', '£', 1, 0, 1),
(44, 'Greece', 'Euro', 'EUR', '€', 0.922379, 0, 1),
(45, 'Guatemala', 'Quetzales', 'GTQ', 'Q', 7.63804, 0, 1),
(46, 'Guernsey', 'Pounds', 'GGP', '£', 1, 0, 1),
(47, 'Guyana', 'Dollars', 'GYD', '$', 1, 0, 1),
(48, 'Holland (Netherlands)', 'Euro', 'EUR', '€', 0.922379, 0, 1),
(49, 'Honduras', 'Lempiras', 'HNL', 'L', 1, 0, 1),
(50, 'Hong Kong', 'Dollars', 'HKD', '$', 7.767071, 0, 1),
(51, 'Hungary', 'Forint', 'HUF', 'Ft', 310.231043, 0, 1),
(52, 'Iceland', 'Kronur', 'ISK', 'kr', 126.858376, 0, 1),
(53, 'India', 'Rupees', 'INR', 'Rp', 71.40112, 0, 1),
(54, 'Indonesia', 'Rupiahs', 'IDR', 'Rp', 13612.651679, 0, 1),
(55, 'Iran', 'Rials', 'IRR', '﷼', 1, 0, 1),
(56, 'Ireland', 'Euro', 'EUR', '€', 0.922379, 0, 1),
(57, 'Isle of Man', 'Pounds', 'IMP', '£', 1, 0, 1),
(58, 'Israel', 'New Shekels', 'ILS', '₪', 3.427408, 0, 1),
(59, 'Italy', 'Euro', 'EUR', '€', 0.922379, 0, 1),
(60, 'Jamaica', 'Dollars', 'JMD', 'J$', 1, 0, 1),
(61, 'Japan', 'Yen', 'JPY', '¥', 109.814254, 0, 1),
(62, 'Jersey', 'Pounds', 'JEP', '£', 1, 0, 1),
(63, 'Kazakhstan', 'Tenge', 'KZT', 'лв', 376.834123, 0, 1),
(64, 'Korea (North)', 'Won', 'KPW', '₩', 1, 0, 1),
(65, 'Korea (South)', 'Won', 'KRW', '₩', 1183.94149, 0, 1),
(66, 'Kyrgyzstan', 'Soms', 'KGS', 'лв', 1, 0, 1),
(67, 'Laos', 'Kips', 'LAK', '₭', 1, 0, 1),
(68, 'Latvia', 'Lati', 'LVL', 'Ls', 1, 0, 1),
(69, 'Lebanon', 'Pounds', 'LBP', '£', 1, 0, 1),
(70, 'Liberia', 'Dollars', 'LRD', '$', 1, 0, 1),
(71, 'Liechtenstein', 'Switzerland Francs', 'CHF', 'CHF', 0.980752, 0, 1),
(72, 'Lithuania', 'Litai', 'LTL', 'Lt', 1, 0, 1),
(73, 'Luxembourg', 'Euro', 'EUR', '€', 0.922379, 0, 1),
(74, 'Macedonia', 'Denars', 'MKD', 'ден', 1, 0, 1),
(75, 'Malaysia', 'Ringgits', 'MYR', 'RM', 4.139749, 0, 1),
(76, 'Malta', 'Euro', 'EUR', '€', 0.922379, 0, 1),
(77, 'Mauritius', 'Rupees', 'MUR', '₨', 1, 0, 1),
(78, 'Mexico', 'Pesos', 'MXN', '$', 18.585695, 0, 1),
(79, 'Mongolia', 'Tugriks', 'MNT', '₮', 1, 0, 1),
(80, 'Mozambique', 'Meticais', 'MZN', 'MT', 1, 0, 1),
(81, 'Namibia', 'Dollars', 'NAD', '$', 1, 0, 1),
(82, 'Nepal', 'Rupees', 'NPR', '₨', 1, 0, 1),
(83, 'Netherlands Antilles', 'Guilders', 'ANG', 'ƒ', 1, 0, 1),
(84, 'Netherlands', 'Euro', 'EUR', '€', 0.922379, 0, 1),
(85, 'New Zealand', 'Dollars', 'NZD', '$', 1.553574, 0, 1),
(86, 'Nicaragua', 'Cordobas', 'NIO', 'C$', 1, 0, 1),
(87, 'Nigeria', 'Nairas', 'NGN', '₦', 1, 0, 1),
(88, 'North Korea', 'Won', 'KPW', '₩', 1, 0, 1),
(89, 'Norway', 'Krone', 'NOK', 'kr', 9.253793, 0, 1),
(90, 'Oman', 'Rials', 'OMR', '﷼', 1, 0, 1),
(91, 'Pakistan', 'Rupees', 'PKR', '₨', 154.392233, 0, 1),
(92, 'Panama', 'Balboa', 'PAB', 'B/.', 1, 0, 1),
(93, 'Paraguay', 'Guarani', 'PYG', 'Gs', 6626, 0, 1),
(94, 'Peru', 'Nuevos Soles', 'PEN', 'S/.', 3.383275, 0, 1),
(95, 'Philippines', 'Pesos', 'PHP', 'Php', 50.525693, 0, 1),
(96, 'Poland', 'Zlotych', 'PLN', 'zł', 3.917289, 0, 1),
(97, 'Qatar', 'Rials', 'QAR', '﷼', 1, 0, 1),
(98, 'Romania', 'New Lei', 'RON', 'lei', 4.396745, 0, 1),
(99, 'Russia', 'Rubles', 'RUB', 'руб', 63.537178, 0, 1),
(100, 'Saint Helena', 'Pounds', 'SHP', '£', 1, 0, 1),
(101, 'Saudi Arabia', 'Riyals', 'SAR', '﷼', 3.75061, 0, 1),
(102, 'Serbia', 'Dinars', 'RSD', 'Дин.', 1, 0, 1),
(103, 'Seychelles', 'Rupees', 'SCR', '₨', 1, 0, 1),
(104, 'Singapore', 'Dollars', 'SGD', '$', 1.390516, 0, 1),
(105, 'Slovenia', 'Euro', 'EUR', '€', 0.922379, 0, 1),
(106, 'Solomon Islands', 'Dollars', 'SBD', '$', 1, 0, 1),
(107, 'Somalia', 'Shillings', 'SOS', 'S', 1, 0, 1),
(108, 'South Africa', 'Rand', 'ZAR', 'R', 14.88117, 0, 1),
(109, 'South Korea', 'Won', 'KRW', '₩', 1183.94149, 0, 1),
(110, 'Spain', 'Euro', 'EUR', '€', 0.922379, 0, 1),
(111, 'Sri Lanka', 'Rupees', 'LKR', '₨', 1, 0, 1),
(112, 'Sweden', 'Kronor', 'SEK', 'kr', 9.694847, 0, 1),
(113, 'Switzerland', 'Francs', 'CHF', 'CHF', 0.980752, 0, 1),
(114, 'Suriname', 'Dollars', 'SRD', '$', 1, 0, 1),
(115, 'Syria', 'Pounds', 'SYP', '£', 1, 0, 1),
(116, 'Taiwan', 'New Dollars', 'TWD', 'NT$', 30.0056, 0, 1),
(117, 'Thailand', 'Baht', 'THB', '฿', 31.163295, 0, 1),
(118, 'Trinidad and Tobago', 'Dollars', 'TTD', 'TT$', 1, 0, 1),
(119, 'Turkey', 'Lira', 'TRY', 'TL', 6.053817, 0, 1),
(120, 'Turkey', 'Liras', 'TRL', '£', 1, 0, 1),
(121, 'Tuvalu', 'Dollars', 'TVD', '$', 1, 0, 1),
(122, 'Ukraine', 'Hryvnia', 'UAH', '₴', 24.336642, 0, 1),
(123, 'United Kingdom', 'Pounds', 'GBP', '£', 83, 0, 1),
(124, 'United States of America', 'Dollars', 'USD', '$', 1, 0, 1),
(125, 'Uruguay', 'Pesos', 'UYU', '$U', 37.880896, 0, 1),
(126, 'Uzbekistan', 'Sums', 'UZS', 'лв', 1, 0, 1),
(127, 'Vatican City', 'Euro', 'EUR', '€', 0.922379, 0, 1),
(128, 'Venezuela', 'Bolivares Fuertes', 'VEF', 'Bs', 1, 0, 1),
(129, 'Vietnam', 'Dong', 'VND', '₫', 1, 0, 1),
(130, 'Yemen', 'Rials', 'YER', '﷼', 1, 0, 1),
(131, 'Zimbabwe', 'Zimbabwe Dollars', 'ZWD', 'Z$', 1, 0, 1),
(132, 'Bangladesh', 'Taka', 'BDT', '৳', 83, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `download_link`
--

DROP TABLE IF EXISTS `download_link`;
CREATE TABLE IF NOT EXISTS `download_link` (
  `download_link_id` int(11) NOT NULL AUTO_INCREMENT,
  `videos_id` int(11) DEFAULT NULL,
  `link_title` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `resolution` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '720p',
  `file_size` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '00MB',
  `download_url` varchar(500) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `in_app_download` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`download_link_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `episodes`
--

DROP TABLE IF EXISTS `episodes`;
CREATE TABLE IF NOT EXISTS `episodes` (
  `episodes_id` int(11) NOT NULL AUTO_INCREMENT,
  `stream_key` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `videos_id` int(11) DEFAULT NULL,
  `seasons_id` int(11) DEFAULT NULL,
  `episodes_name` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `file_source` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `source_type` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `file_url` varchar(500) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `last_ep_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`episodes_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `genre`
--

DROP TABLE IF EXISTS `genre`;
CREATE TABLE IF NOT EXISTS `genre` (
  `genre_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `description` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `slug` varchar(128) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `publication` int(1) NOT NULL,
  `featured` int(2) DEFAULT 0,
  PRIMARY KEY (`genre_id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `genre`
--

INSERT INTO `genre` (`genre_id`, `name`, `description`, `slug`, `publication`, `featured`) VALUES
(1, 'Action', 'Action Movie<br>', 'action', 1, 0),
(2, 'TV Show', 'Tv Show <br>', 'tv-show', 1, 0),
(3, 'Si-Fi', '', 'si-fi', 1, 1),
(4, 'Adventure', 'Adventure Movies<br>', 'adventure', 1, 0),
(5, 'Animation', 'Animation Movies<br>', 'animation', 1, 1),
(6, 'Biography', 'Biography Movies<br>', 'biography', 1, 0),
(7, 'Comedy', 'Comedy Movies<br>', 'comedy', 1, 0),
(8, 'Crime', 'Crime Movies<br>', 'crime', 1, 0),
(9, 'Documentary', 'Documentary Movies<br>', 'documentary', 1, 0),
(10, 'Drama', '', 'drama', 1, 1),
(11, 'Family', 'Family<br>', 'family', 1, 0),
(12, 'Fantasy', 'Fantasy Movies<br>', 'fantasy', 1, 0),
(13, 'History', '', 'history', 1, 0),
(14, 'Horror', 'Horror Movies<br>', 'horror', 1, 0),
(15, 'Music', '', 'music', 1, 0),
(16, 'Musical', '', 'musical', 1, 0),
(17, 'Mystery', '', 'mystery', 1, 0),
(18, 'Thriller', '', 'thriller', 1, 1),
(19, 'War', '', 'war', 1, 0),
(20, 'Western', '', 'western', 1, 0),
(21, 'TV Series', '', 'tv-series', 1, 0),
(22, 'Romance', ' Romance', 'romance', 1, 0),
(23, 'Adventure', ' Adventure', 'adventure', 1, 0),
(24, 'Thriller', ' Thriller', 'thriller', 1, 0),
(25, 'Drama', ' Drama', 'drama', 1, 0),
(26, 'Fantasy', ' Fantasy', 'fantasy', 1, 0),
(27, 'Sci-Fi', ' Sci-Fi', 'sci-fi', 1, 0),
(28, 'Comedy', ' Comedy', 'comedy', 1, 0),
(29, 'Family', ' Family', 'family', 1, 0),
(30, 'Action', ' Action', 'action', 1, 0),
(31, 'Short', 'Short', 'short', 1, 0),
(32, 'Music', ' Music', 'music', 1, 0),
(33, 'History', ' History', 'history', 1, 0),
(34, 'Crime', ' Crime', 'crime', 1, 0),
(35, 'Western', ' Western', 'western', 1, 0),
(36, 'Sport', ' Sport', 'sport', 1, 0),
(37, 'Short', ' Short', 'short', 1, 0),
(38, 'Mystery', ' Mystery', 'mystery', 1, 0),
(39, 'Romance', 'Romance', 'romance', 1, 0),
(40, 'Action & Adventure', 'Action & Adventure', 'action-adventure', 1, 0),
(41, 'Sci-Fi & Fantasy', 'Sci-Fi & Fantasy', 'sci-fi-fantasy', 1, 0),
(42, 'Science Fiction', 'Science Fiction', 'science-fiction', 1, 0),
(44, 'TV Movie', 'TV Movie', 'tv-movie', 1, 0),
(45, 'News', 'News', 'news', 1, 0),
(46, 'Reality', 'Reality', 'reality', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `keys`
--

DROP TABLE IF EXISTS `keys`;
CREATE TABLE IF NOT EXISTS `keys` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT 'System',
  `key` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `level` int(2) NOT NULL,
  `ignore_limits` tinyint(1) NOT NULL DEFAULT 0,
  `is_private_key` tinyint(1) NOT NULL DEFAULT 0,
  `ip_addresses` mediumtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `date_created` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `keys`
--

INSERT INTO `keys` (`id`, `label`, `key`, `level`, `ignore_limits`, `is_private_key`, `ip_addresses`, `date_created`) VALUES
(1, 'Admin', 'deafult_api_key', 1, 0, 0, NULL, 1584340674);

-- --------------------------------------------------------

--
-- Table structure for table `languages_iso`
--

DROP TABLE IF EXISTS `languages_iso`;
CREATE TABLE IF NOT EXISTS `languages_iso` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` char(49) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `iso` char(2) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=136 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `languages_iso`
--

INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES
(1, 'English', 'en'),
(2, 'Afar', 'aa'),
(3, 'Abkhazian', 'ab'),
(4, 'Afrikaans', 'af'),
(5, 'Amharic', 'am'),
(6, 'Arabic', 'ar'),
(7, 'Assamese', 'as'),
(8, 'Aymara', 'ay'),
(9, 'Azerbaijani', 'az'),
(10, 'Bashkir', 'ba'),
(11, 'Belarusian', 'be'),
(12, 'Bulgarian', 'bg'),
(13, 'Bihari', 'bh'),
(14, 'Bislama', 'bi'),
(15, 'Bangla', 'bn'),
(16, 'Tibetan', 'bo'),
(17, 'Breton', 'br'),
(18, 'Catalan', 'ca'),
(19, 'Corsican', 'co'),
(20, 'Czech', 'cs'),
(21, 'Welsh', 'cy'),
(22, 'Danish', 'da'),
(23, 'German', 'de'),
(24, 'Bhutani', 'dz'),
(25, 'Greek', 'el'),
(26, 'Esperanto', 'eo'),
(27, 'Spanish', 'es'),
(28, 'Estonian', 'et'),
(29, 'Basque', 'eu'),
(30, 'Persian', 'fa'),
(31, 'Finnish', 'fi'),
(32, 'Fiji', 'fj'),
(33, 'Faeroese', 'fo'),
(34, 'French', 'fr'),
(35, 'Frisian', 'fy'),
(36, 'Irish', 'ga'),
(37, 'Scots/Gaelic', 'gd'),
(38, 'Galician', 'gl'),
(39, 'Guarani', 'gn'),
(40, 'Gujarati', 'gu'),
(41, 'Hausa', 'ha'),
(42, 'Hindi', 'hi'),
(43, 'Croatian', 'hr'),
(44, 'Hungarian', 'hu'),
(45, 'Armenian', 'hy'),
(46, 'Interlingua', 'ia'),
(47, 'Interlingue', 'ie'),
(48, 'Inupiak', 'ik'),
(49, 'Indonesian', 'in'),
(50, 'Icelandic', 'is'),
(51, 'Italian', 'it'),
(52, 'Hebrew', 'iw'),
(53, 'Japanese', 'ja'),
(54, 'Yiddish', 'ji'),
(55, 'Javanese', 'jw'),
(56, 'Georgian', 'ka'),
(57, 'Kazakh', 'kk'),
(58, 'Greenlandic', 'kl'),
(59, 'Cambodian', 'km'),
(60, 'Kannada', 'kn'),
(61, 'Korean', 'ko'),
(62, 'Kashmiri', 'ks'),
(63, 'Kurdish', 'ku'),
(64, 'Kirghiz', 'ky'),
(65, 'Latin', 'la'),
(66, 'Lingala', 'ln'),
(67, 'Laothian', 'lo'),
(68, 'Lithuanian', 'lt'),
(69, 'Latvian/Lettish', 'lv'),
(70, 'Malagasy', 'mg'),
(71, 'Maori', 'mi'),
(72, 'Macedonian', 'mk'),
(73, 'Malayalam', 'ml'),
(74, 'Mongolian', 'mn'),
(75, 'Moldavian', 'mo'),
(76, 'Marathi', 'mr'),
(77, 'Malay', 'ms'),
(78, 'Maltese', 'mt'),
(79, 'Burmese', 'my'),
(80, 'Nauru', 'na'),
(81, 'Nepali', 'ne'),
(82, 'Dutch', 'nl'),
(83, 'Norwegian', 'no'),
(84, 'Occitan', 'oc'),
(85, '(Afan)/Oromoor/Oriya', 'om'),
(86, 'Punjabi', 'pa'),
(87, 'Polish', 'pl'),
(88, 'Pashto/Pushto', 'ps'),
(89, 'Portuguese', 'pt'),
(90, 'Quechua', 'qu'),
(91, 'Rhaeto-Romance', 'rm'),
(92, 'Kirundi', 'rn'),
(93, 'Romanian', 'ro'),
(94, 'Russian', 'ru'),
(95, 'Kinyarwanda', 'rw'),
(96, 'Sanskrit', 'sa'),
(97, 'Sindhi', 'sd'),
(98, 'Sangro', 'sg'),
(99, 'Serbo-Croatian', 'sh'),
(100, 'Singhalese', 'si'),
(101, 'Slovak', 'sk'),
(102, 'Slovenian', 'sl'),
(103, 'Samoan', 'sm'),
(104, 'Shona', 'sn'),
(105, 'Somali', 'so'),
(106, 'Albanian', 'sq'),
(107, 'Serbian', 'sr'),
(108, 'Siswati', 'ss'),
(109, 'Sesotho', 'st'),
(110, 'Sundanese', 'su'),
(111, 'Swedish', 'sv'),
(112, 'Swahili', 'sw'),
(113, 'Tamil', 'ta'),
(114, 'Telugu', 'te'),
(115, 'Tajik', 'tg'),
(116, 'Thai', 'th'),
(117, 'Tigrinya', 'ti'),
(118, 'Turkmen', 'tk'),
(119, 'Tagalog', 'tl'),
(120, 'Setswana', 'tn'),
(121, 'Tonga', 'to'),
(122, 'Turkish', 'tr'),
(123, 'Tsonga', 'ts'),
(124, 'Tatar', 'tt'),
(125, 'Twi', 'tw'),
(126, 'Ukrainian', 'uk'),
(127, 'Urdu', 'ur'),
(128, 'Uzbek', 'uz'),
(129, 'Vietnamese', 'vi'),
(130, 'Volapuk', 'vo'),
(131, 'Wolof', 'wo'),
(132, 'Xhosa', 'xh'),
(133, 'Yoruba', 'yo'),
(134, 'Chinese', 'zh'),
(135, 'Zulu', 'zu');

-- --------------------------------------------------------

--
-- Table structure for table `live_tv`
--

DROP TABLE IF EXISTS `live_tv`;
CREATE TABLE IF NOT EXISTS `live_tv` (
  `live_tv_id` int(11) NOT NULL AUTO_INCREMENT,
  `tv_name` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `seo_title` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `live_tv_category_id` int(50) DEFAULT NULL,
  `slug` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `language` varchar(10) COLLATE utf8mb4_unicode_520_ci DEFAULT 'en',
  `stream_from` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `stream_label` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `stream_url` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `poster` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `thumbnail` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `focus_keyword` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_description` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `featured` int(2) DEFAULT 1,
  `is_paid` int(5) NOT NULL DEFAULT 1,
  `tags` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `publish` int(10) UNSIGNED DEFAULT 0,
  PRIMARY KEY (`live_tv_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `live_tv_category`
--

DROP TABLE IF EXISTS `live_tv_category`;
CREATE TABLE IF NOT EXISTS `live_tv_category` (
  `live_tv_category_id` int(11) NOT NULL AUTO_INCREMENT,
  `live_tv_category` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `live_tv_category_desc` mediumtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `status` int(11) DEFAULT 1,
  `slug` mediumtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`live_tv_category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `live_tv_category`
--

INSERT INTO `live_tv_category` (`live_tv_category_id`, `live_tv_category`, `live_tv_category_desc`, `status`, `slug`) VALUES
(1, 'Sports', 'All Sport TV Channel goes here', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `live_tv_program_guide`
--

DROP TABLE IF EXISTS `live_tv_program_guide`;
CREATE TABLE IF NOT EXISTS `live_tv_program_guide` (
  `live_tv_program_guide_id` int(11) NOT NULL AUTO_INCREMENT,
  `live_tv_id` int(50) NOT NULL,
  `title` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `video_url` mediumtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `type` enum('onaired','upcoming') COLLATE utf8mb4_unicode_520_ci DEFAULT 'upcoming',
  `status` int(50) NOT NULL DEFAULT 1,
  PRIMARY KEY (`live_tv_program_guide_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `live_tv_url`
--

DROP TABLE IF EXISTS `live_tv_url`;
CREATE TABLE IF NOT EXISTS `live_tv_url` (
  `live_tv_url_id` int(11) NOT NULL AUTO_INCREMENT,
  `stream_key` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `live_tv_id` int(11) DEFAULT NULL,
  `url_for` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `label` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `quality` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `url` mediumtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`live_tv_url_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

DROP TABLE IF EXISTS `logs`;
CREATE TABLE IF NOT EXISTS `logs` (
  `id` int(11) NOT NULL,
  `uri` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `method` varchar(6) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `params` mediumtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `api_key` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `time` int(11) NOT NULL,
  `rtime` float DEFAULT NULL,
  `authorized` varchar(1) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `response_code` smallint(3) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plan`
--

DROP TABLE IF EXISTS `plan`;
CREATE TABLE IF NOT EXISTS `plan` (
  `plan_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `day` int(50) DEFAULT 0,
  `screens` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `price` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`plan_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `plan`
--

INSERT INTO `plan` (`plan_id`, `name`, `day`, `screens`, `price`, `status`) VALUES
(1, 'Basic', 7, NULL, '2.50', 1),
(2, 'Starter', 30, NULL, '5.00', 1),
(3, 'Professional ', 90, NULL, '10.00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `quality`
--

DROP TABLE IF EXISTS `quality`;
CREATE TABLE IF NOT EXISTS `quality` (
  `quality_id` int(10) NOT NULL AUTO_INCREMENT,
  `quality` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `status` int(5) DEFAULT 1,
  PRIMARY KEY (`quality_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `quality`
--

INSERT INTO `quality` (`quality_id`, `quality`, `description`, `status`) VALUES
(1, '4K', 'High Defination', 1),
(2, 'HD', 'Sandard Defination', 1),
(3, 'SD', 'Ultra High Defination', 1),
(4, 'CAM', 'Web Camera Video', 1),
(7, 'LQ', 'Low Quality', 1),
(8, 'DVD', 'Digital Video Device', 1);

-- --------------------------------------------------------

--
-- Table structure for table `rest_logins`
--

DROP TABLE IF EXISTS `rest_logins`;
CREATE TABLE IF NOT EXISTS `rest_logins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `password` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `rest_logins`
--

INSERT INTO `rest_logins` (`id`, `username`, `password`, `status`) VALUES
(1, 'admin', 'rest_user_password', 1);

-- --------------------------------------------------------

--
-- Table structure for table `seasons`
--

DROP TABLE IF EXISTS `seasons`;
CREATE TABLE IF NOT EXISTS `seasons` (
  `seasons_id` int(11) NOT NULL AUTO_INCREMENT,
  `videos_id` int(11) DEFAULT NULL,
  `seasons_name` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `publish` int(11) DEFAULT 1,
  `order` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`seasons_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

DROP TABLE IF EXISTS `slider`;
CREATE TABLE IF NOT EXISTS `slider` (
  `slider_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(150) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `description` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `video_link` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `image_link` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `slug` varchar(150) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `action_type` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `action_btn_text` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `action_id` int(50) DEFAULT NULL,
  `action_url` mediumtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `order` int(50) NOT NULL DEFAULT 0,
  `publication` int(1) NOT NULL,
  PRIMARY KEY (`slider_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `star`
--

DROP TABLE IF EXISTS `star`;
CREATE TABLE IF NOT EXISTS `star` (
  `star_id` int(10) NOT NULL AUTO_INCREMENT,
  `star_type` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `star_name` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `star_desc` mediumtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `view` int(11) NOT NULL DEFAULT 1,
  `status` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`star_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscription`
--

DROP TABLE IF EXISTS `subscription`;
CREATE TABLE IF NOT EXISTS `subscription` (
  `subscription_id` int(50) NOT NULL AUTO_INCREMENT,
  `plan_id` int(50) NOT NULL,
  `user_id` int(50) NOT NULL,
  `price_amount` int(50) NOT NULL,
  `paid_amount` float NOT NULL,
  `timestamp_from` int(50) NOT NULL,
  `timestamp_to` int(50) NOT NULL,
  `payment_method` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `payment_info` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `payment_timestamp` int(50) NOT NULL,
  `recurring` int(10) NOT NULL DEFAULT 1,
  `status` int(5) NOT NULL DEFAULT 1,
  PRIMARY KEY (`subscription_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subtitle`
--

DROP TABLE IF EXISTS `subtitle`;
CREATE TABLE IF NOT EXISTS `subtitle` (
  `subtitle_id` int(11) NOT NULL AUTO_INCREMENT,
  `videos_id` int(50) NOT NULL,
  `video_file_id` int(50) DEFAULT NULL,
  `language` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `kind` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `src` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `srclang` varchar(5) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `common` int(2) DEFAULT 0,
  `status` int(2) DEFAULT 1,
  PRIMARY KEY (`subtitle_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tvseries_subtitle`
--

DROP TABLE IF EXISTS `tvseries_subtitle`;
CREATE TABLE IF NOT EXISTS `tvseries_subtitle` (
  `tvseries_subtitle_id` int(11) NOT NULL AUTO_INCREMENT,
  `videos_id` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `episodes_id` int(250) DEFAULT NULL,
  `language` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `kind` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `src` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `srclang` varchar(5) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `common` int(2) DEFAULT 0,
  `status` int(2) DEFAULT 1,
  PRIMARY KEY (`tvseries_subtitle_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `slug` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `username` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `email` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `is_password_set` int(5) NOT NULL DEFAULT 0 COMMENT '0 = unknown, 1=set, 2 =unset',
  `password` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `gender` int(2) DEFAULT 1,
  `role` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `token` mediumtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `theme` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT 'default',
  `theme_color` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT '#16163F',
  `join_date` datetime DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `deactivate_reason` mediumtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `status` int(10) NOT NULL DEFAULT 1,
  `phone` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `dob` date DEFAULT '0000-00-00',
  `firebase_auth_uid` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `name`, `slug`, `username`, `email`, `password`, `gender`, `role`, `token`, `theme`, `theme_color`, `join_date`, `last_login`, `deactivate_reason`, `status`, `phone`, `dob`, `firebase_auth_uid`) VALUES
(1, 'first_user_full_name', '', 'first_user_email', 'first_user_email', 'first_user_password', 1, 'admin', NULL, 'default', '#16163F', NULL, '2020-03-16 12:35:14', NULL, 1, NULL, '0000-00-00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

DROP TABLE IF EXISTS `videos`;
CREATE TABLE IF NOT EXISTS `videos` (
  `videos_id` int(11) NOT NULL AUTO_INCREMENT,
  `imdbid` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `title` varchar(150) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `seo_title` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `slug` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `stars` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `director` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `writer` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `rating` varchar(5) COLLATE utf8mb4_unicode_520_ci DEFAULT '0',
  `release` date DEFAULT NULL,
  `country` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `genre` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `video_type` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `runtime` varchar(10) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `video_quality` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT 'HD',
  `is_paid` int(5) NOT NULL DEFAULT 1,
  `publication` int(5) DEFAULT NULL,
  `trailer` int(5) DEFAULT 0,
  `trailler_youtube_source` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `enable_download` int(5) DEFAULT 1,
  `focus_keyword` mediumtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_description` mediumtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `tags` mediumtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `imdb_rating` varchar(5) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `is_tvseries` int(11) NOT NULL DEFAULT 0,
  `total_rating` int(50) DEFAULT 1,
  `today_view` int(250) DEFAULT 0,
  `weekly_view` int(250) DEFAULT 0,
  `monthly_view` int(250) DEFAULT 0,
  `total_view` int(250) DEFAULT 1,
  `last_ep_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`videos_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `video_file`
--

DROP TABLE IF EXISTS `video_file`;
CREATE TABLE IF NOT EXISTS `video_file` (
  `video_file_id` int(11) NOT NULL AUTO_INCREMENT,
  `stream_key` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `videos_id` int(11) DEFAULT NULL,
  `file_source` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `source_type` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `file_url` varchar(500) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `label` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Server#1',
  `order` int(50) NOT NULL DEFAULT 0,
  PRIMARY KEY (`video_file_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wish_list`
--

DROP TABLE IF EXISTS `wish_list`;
CREATE TABLE IF NOT EXISTS `wish_list` (
  `wish_list_id` int(11) NOT NULL AUTO_INCREMENT,
  `wish_list_type` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `videos_id` int(11) DEFAULT NULL,
  `episodes_id` int(200) DEFAULT NULL,
  `create_at` datetime DEFAULT NULL,
  `status` int(11) DEFAULT 1,
  PRIMARY KEY (`wish_list_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
COMMIT;

CREATE TABLE IF NOT EXISTS `episode_download_link` (
  `episode_download_link_id` int(11) NOT NULL,
  `videos_id` int(11) DEFAULT NULL,
  `season_id` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `link_title` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `resolution` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '720p',
  `file_size` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '00MB',
  `download_url` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `in_app_download` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


CREATE TABLE IF NOT EXISTS `report` (
  `report_id` int(11) NOT NULL,
  `type` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `id` int(50) DEFAULT NULL,
  `issue` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `report_datetime` datetime DEFAULT CURRENT_TIMESTAMP,
  `message` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `status` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE IF NOT EXISTS `request` (
  `request_id` int(11) NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `movie_name` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8_unicode_ci,
  `request_datetime` datetime DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
