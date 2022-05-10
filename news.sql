-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 22, 2021 at 08:27 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `news`
--

-- --------------------------------------------------------

--
-- Table structure for table `ads`
--

CREATE TABLE `ads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ads` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ads`
--

INSERT INTO `ads` (`id`, `link`, `ads`, `type`, `created_at`, `updated_at`) VALUES
(1, 'hjbjhbjhbjkhbkhb', 'image/ads/6091602bae3aa.jpg', 2, NULL, NULL),
(2, 'jkljnlkjnlknlkjlnlkklj', 'image/ads/6091608765681.jpg', 1, NULL, NULL),
(3, 'fgdfgdfgdfgdf', 'image/ads/6091677e1bd70.jpg', 1, NULL, NULL),
(4, 'rteerterter', 'image/ads/609167a1764e3.jpg', 2, NULL, NULL),
(5, 'dfsdsfsdfsdfsdfds', 'image/ads/609167b93573d.jpg', 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_hin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `soft_delete` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_en`, `category_hin`, `soft_delete`, `created_at`, `updated_at`) VALUES
(7, 'INTERNATIONAL', 'بین الملل', '0', NULL, NULL),
(8, 'SPORTS', 'ورزش', '0', NULL, NULL),
(9, 'BUSINESS', 'اقتصاد', '0', NULL, NULL),
(10, 'ENTERTAINMENT', 'سرگرمی', '0', NULL, NULL),
(11, 'LIFE STYLE', 'سبک زندگی', '0', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `district_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `district_hin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `district_en`, `district_hin`, `created_at`, `updated_at`) VALUES
(5, 'Bihar', 'بیهار', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `livetvs`
--

CREATE TABLE `livetvs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `embed_code` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `livetvs`
--

INSERT INTO `livetvs` (`id`, `embed_code`, `status`, `created_at`, `updated_at`) VALUES
(1, 'jknkjnnjknn', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2021_03_27_174526_create_sessions_table', 1),
(7, '2021_03_29_152336_create_categories_table', 2),
(8, '2021_03_29_152516_create_subcategories_table', 2),
(9, '2021_04_10_144210_create_district_table', 3),
(10, '2021_04_10_145719_create_subdistrict_table', 3),
(11, '2021_04_13_141050_create_posts_table', 4),
(12, '2021_04_20_160503_create_socils_table', 5),
(13, '2021_04_20_182403_create_seos_table', 6),
(14, '2021_04_20_194027_create_prayers_table', 7),
(16, '2021_04_20_201507_create_livetvs_table', 8),
(17, '2021_04_20_214303_create_notices_table', 9),
(18, '2021_04_20_222514_create_websites_table', 10),
(19, '2021_04_23_142211_create_photos_table', 11),
(20, '2021_04_23_163950_create_videos_table', 12),
(21, '2021_05_04_135214_create_ads_table', 13),
(22, '2021_05_11_154945_create_websitesettings_table', 14);

-- --------------------------------------------------------

--
-- Table structure for table `notices`
--

CREATE TABLE `notices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `notice` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notices`
--

INSERT INTO `notices` (`id`, `notice`, `status`, `created_at`, `updated_at`) VALUES
(1, 'ناذاذتاذنتذاناتذنتذااتذ', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

CREATE TABLE `photos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `photos`
--

INSERT INTO `photos` (`id`, `photo`, `title`, `type`, `created_at`, `updated_at`) VALUES
(1, 'image/photogallery/6082ebaab8ab9.jpg', 'jkbjblj`', '0', NULL, NULL),
(2, 'image/photogallery/6082ebcfb6d4b.jpg', 'hbjhbj', '1', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) DEFAULT NULL,
  `district_id` int(11) NOT NULL,
  `subdistrict_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `title_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_hin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details_en` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details_hin` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags_en` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags_hin` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `headline` int(11) DEFAULT NULL,
  `first_section` int(11) DEFAULT NULL,
  `first_section_thumbnail` int(11) DEFAULT NULL,
  `bigthumbnail` int(11) DEFAULT NULL,
  `post_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_month` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `subcategory_id`, `district_id`, `subdistrict_id`, `user_id`, `title_en`, `title_hin`, `image`, `details_en`, `details_hin`, `tags_en`, `tags_hin`, `headline`, `first_section`, `first_section_thumbnail`, `bigthumbnail`, `post_date`, `post_month`, `created_at`, `updated_at`) VALUES
(12, 7, 7, 5, 4, 1, 'hbjhbjbkbjbhkj', 'تدامنتدنتدنمدنت', 'image/postimg/6085bd1c33b51.jpg', '<p>hjbkjbhkjbhjbb<br></p>', '<p>bhjkbjhbkjbjbkjhbbj<br></p>', 'hjbkjbhj', 'hjbkjbhj', 1, 1, 1, 1, '25-04-21', 'April', NULL, NULL),
(13, 8, 13, 5, 4, 1, 'jgkhbbkjhbkjbhkjbkjbhkjbhkjhbkbj', 'اهامهتدخهدهخعتخهعتخعهتخهعتهخعتخع', 'image/postimg/6085bd6e2ff14.jpg', 'khgbjkhbkjhbkhbjkhbjbkhj', '<p>نتذمتذدتنذمننمدمنتدنمدنت<br></p>', NULL, NULL, 1, 1, 1, NULL, '25-04-21', 'April', NULL, NULL),
(14, 9, 16, 5, 6, 1, 'nlksdnklflksdnflskdfkl', 'ینبئمنسئبمنئبسمنئبمنسیئبمنئبسمنئب', 'image/postimg/60897f9379835.jpg', 'jknkjknkjnkjnkn', 'تندنتدنتدمنتدتنم', NULL, NULL, NULL, 1, 1, 1, '28-04-21', 'April', NULL, NULL),
(15, 7, 7, 5, 4, 1, 'jnkjnlknkjnlkjnkl', 'تدنتدمنتدمند', 'image/postimg/6089ad2db21d4.jpg', 'kjbblkjbljkblkjbkbkb', 'تذمنذنتذنتذذتذنتذتنذم', NULL, NULL, 1, 1, 1, NULL, '28-04-21', 'April', NULL, NULL),
(17, 9, 16, 5, 4, 1, 'gyuittuytuity', 'تنهختخهتختااااااااا', 'image/postimg/6089be80815c4.jpg', '<p>jkbbljnlnlkjnlklnkj<br></p>', '<p>اذمذعههعاهااهاهاهاهاهاهعاه<br></p>', NULL, NULL, 1, 1, NULL, NULL, '28-04-21', 'April', NULL, NULL),
(18, 10, 18, 5, 4, 1, 'shamgfytfytf', 'شمسنمددنمدنمدنتدن', 'image/postimg/6089c38e0f9e2.jpg', 'hbkjhbkhjbjbkjhbkhbkjhbk', '<p>تندمنتدمنتدنمتدمنتدمنتدمنتدمنددتدتن<br></p>', NULL, NULL, 1, 1, NULL, 1, '28-04-21', 'April', NULL, NULL),
(19, 8, 13, 5, 5, 1, 'dsfd;ld,f;s,d;l,;fs,d,fsdl;s,;', 'یکئبکمسئبکیبمکسیئکبئمسیم', 'image/postimg/608d63db19bb5.jpg', '<p>jnknkjnkjnlkjnkljnlkjnkjl<br></p>', '<p>تدنمتدمنتدمندتند<br></p>', NULL, NULL, 1, 1, NULL, 1, '01-05-21', 'May', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `prayers`
--

CREATE TABLE `prayers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fajr` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `johor` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `asor` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `magrib` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `eaha` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jummah` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `prayers`
--

INSERT INTO `prayers` (`id`, `fajr`, `johor`, `asor`, `magrib`, `eaha`, `jummah`, `created_at`, `updated_at`) VALUES
(1, 'jkhjhij', 'jhbiuhiuh', 'kjoijoi', 'lijiojo', 'ijoij', 'ijoij', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `seos`
--

CREATE TABLE `seos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `meta_author` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keyword` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_analytics` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_verification` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alexa_analytics` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seos`
--

INSERT INTO `seos` (`id`, `meta_author`, `meta_title`, `meta_keyword`, `meta_description`, `google_analytics`, `google_verification`, `alexa_analytics`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('SZo1njD8VYDjXgIxomR4hZOFQaYtvbel5SfQULYR', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:88.0) Gecko/20100101 Firefox/88.0', 'YTo3OntzOjM6InVybCI7YTowOnt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kYXNoYm9hcmQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjY6Il90b2tlbiI7czo0MDoiNjMzSWg5a0J6bVpKWUtqSnp0ZnljWFpDbzNLTTVrbFY4aXBFTjE2VCI7czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEwJDJQMzBaR3Z5VlFJMVplb1o3SDYyaS5zN1ZEQUdKaWhSNjl0R1h6emtHbG8vbk8vUVRyejlHIjtzOjIxOiJwYXNzd29yZF9oYXNoX3NhbmN0dW0iO3M6NjA6IiQyeSQxMCQyUDMwWkd2eVZRSTFaZW9aN0g2MmkuczdWREFHSmloUjY5dEdYenprR2xvL25PL1FUcno5RyI7fQ==', 1620771530);

-- --------------------------------------------------------

--
-- Table structure for table `socials`
--

CREATE TABLE `socials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `socials`
--

INSERT INTO `socials` (`id`, `facebook`, `twitter`, `youtube`, `linkedin`, `instagram`, `created_at`, `updated_at`) VALUES
(1, 'facebook.com/ele', 'twiter.com/ele', 'youtube.com/ele', 'linkedin.com/ele', 'instagram.com/ele', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subcategory_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subcategory_hin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `category_id`, `subcategory_en`, `subcategory_hin`, `created_at`, `updated_at`) VALUES
(7, '7', 'Asia', 'آسیا', NULL, NULL),
(8, '7', 'Europe', 'اروپا', NULL, NULL),
(9, '7', 'Americas', 'آمریکا', NULL, NULL),
(10, '7', 'Middle East', 'خاورمیانه', NULL, NULL),
(11, '7', 'India', 'هند', NULL, NULL),
(12, '7', 'China', 'چین', NULL, NULL),
(13, '8', 'Cricket', 'کریکت', NULL, NULL),
(14, '8', 'Football', 'فوتبال', NULL, NULL),
(15, '8', 'Local Sports', 'ورزش های محلی', NULL, NULL),
(16, '9', 'Local', 'محلی', NULL, NULL),
(17, '9', 'Global', 'جهانی', NULL, NULL),
(18, '10', 'Dhallywood', 'زالی وود', NULL, NULL),
(19, '10', 'Bollywood', 'بالیوود', NULL, NULL),
(20, '10', 'Hollywood', 'هالیوود', NULL, NULL),
(21, '11', 'Fashion', 'لباس', NULL, NULL),
(22, '11', 'Health', 'سلامتی', NULL, NULL),
(23, '11', 'Travel', 'سفر', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subdistricts`
--

CREATE TABLE `subdistricts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `district_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subdistrict_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subdistrict_hin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subdistricts`
--

INSERT INTO `subdistricts` (`id`, `district_id`, `subdistrict_en`, `subdistrict_hin`, `created_at`, `updated_at`) VALUES
(1, '3', 'hbhjbj', 'hbjhbjh', NULL, NULL),
(2, '3', 'jknkjnkjnkmikiio6565jkjnkjnkjnknjkjknknnknknknknknknkn', '21165126kmjkokpkpokpo', NULL, NULL),
(4, '5', 'Banka', 'بانکا', NULL, NULL),
(5, '5', 'Begusarai', 'بگوسارای', NULL, NULL),
(6, '5', 'Manjhaul', 'منجهول', NULL, NULL),
(7, '5', 'Ballia', 'بالیا', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  `district` int(11) DEFAULT NULL,
  `post` int(11) DEFAULT NULL,
  `setting` int(11) DEFAULT NULL,
  `website` int(11) DEFAULT NULL,
  `gallery` int(11) DEFAULT NULL,
  `ads` int(11) DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `mobile`, `address`, `image`, `gender`, `position`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `type`, `category`, `district`, `post`, `setting`, `website`, `gallery`, `ads`, `role`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', NULL, '$2y$10$2P30ZGvyVQI1ZeoZ7H62i.s7VDAGJihR69tGXzzkGlo/nO/QTrz9G', '2121215', 'jnkjnlknkljnkj51515kljnkjnlknkljn', '202105112112jpg', 'Male', 'CEO', NULL, NULL, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL, NULL, '2021-03-27 13:36:09', '2021-05-11 17:48:30'),
(5, 'shal', 'shal@gmail.com', NULL, '$2y$10$pNQWeew9tthOtPaxB8/oj.qUszzMFAHzg75W2AGjFHdp4GvYadOBi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, 1, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, NULL),
(8, 'taghi', 'taghi@gmail.com', NULL, '$2y$10$A2V/Y4GQJcv4Zz1.lMrAAOMlO.7IaGBtbvpu7NDuupPT6ufoaWzYa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, 1, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `embed_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `title`, `embed_code`, `type`, `created_at`, `updated_at`) VALUES
(1, 'jkbkkjbljkb', 'jkblkbnkljnkn', '1', NULL, NULL),
(2, 'jkdnckjsnkcj', 'jdknskjfnsdnk', '0', NULL, NULL),
(3, 'fererfer', 'dshfisdjiodj', '0', NULL, NULL),
(4, 'fdgfdgd', 'retertert', '0', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `websites`
--

CREATE TABLE `websites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `website_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `websites`
--

INSERT INTO `websites` (`id`, `website_name`, `website_link`, `created_at`, `updated_at`) VALUES
(1, 'ljnkjnk', 'jkbbkjnjknljn', NULL, NULL),
(2, 'jlnln;ln;kjnk;jn;knjlnlj;n;lkn;lknl;nlkn', 'jknljknkljnkllnlknknj561651611616161616156165', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `websitesettings`
--

CREATE TABLE `websitesettings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_en` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_hin` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_hin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `websitesettings`
--

INSERT INTO `websitesettings` (`id`, `logo`, `address_en`, `address_hin`, `phone_en`, `phone_hin`, `email`, `created_at`, `updated_at`) VALUES
(1, 'image/logo/609abc5823b40.jpg', 'hjbjhbjhbjkhbjhbkjbjhbkj<br>', 'تنذتندندنددم', '1515151', '21515155', 'kbjhbjh@g.com', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ads`
--
ALTER TABLE `ads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `livetvs`
--
ALTER TABLE `livetvs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notices`
--
ALTER TABLE `notices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prayers`
--
ALTER TABLE `prayers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seos`
--
ALTER TABLE `seos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `socials`
--
ALTER TABLE `socials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subdistricts`
--
ALTER TABLE `subdistricts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `websites`
--
ALTER TABLE `websites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `websitesettings`
--
ALTER TABLE `websitesettings`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ads`
--
ALTER TABLE `ads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `livetvs`
--
ALTER TABLE `livetvs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `notices`
--
ALTER TABLE `notices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `prayers`
--
ALTER TABLE `prayers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `seos`
--
ALTER TABLE `seos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `socials`
--
ALTER TABLE `socials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `subdistricts`
--
ALTER TABLE `subdistricts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `websites`
--
ALTER TABLE `websites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `websitesettings`
--
ALTER TABLE `websitesettings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
