-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 02, 2022 at 04:13 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `entermarket`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `created_at`, `updated_at`, `name`, `email`, `password`) VALUES
(1, '2021-12-12 18:29:02', '2021-12-12 18:29:02', 'Success Ahon', 'succy2010@gmail.com', '$2y$10$jiIipxaBcRSAggnMXoTFXuc/kpHtXyKXvQF9tb6EyqQacQsmq/phC');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `store_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `store_id`, `created_at`, `updated_at`, `category_id`) VALUES
(1, 'Good mama', 1, '2022-01-03 17:40:43', '2022-01-03 17:40:43', 1),
(2, 'Klin', 1, '2022-01-03 17:41:38', '2022-01-03 17:41:38', 1),
(3, 'Dano', 1, '2022-01-03 17:58:40', '2022-01-03 17:58:40', 2),
(4, 'Indomie', 1, '2022-01-03 17:59:32', '2022-01-03 17:59:32', 5),
(5, 'Knorr', 1, '2022-01-03 18:00:21', '2022-01-03 18:00:21', 5),
(6, 'Hollandia', 1, '2022-01-03 18:04:14', '2022-01-03 18:04:14', 2),
(7, 'Cway', 1, '2022-01-03 18:05:37', '2022-01-03 18:05:37', 5),
(8, 'Durex', 1, '2022-01-03 18:50:25', '2022-01-03 18:50:25', 4);

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `brand_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `store_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `store_id` bigint(20) UNSIGNED DEFAULT NULL,
  `weight` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `product_id`, `quantity`, `price`, `brand_name`, `product_name`, `store_name`, `user_id`, `created_at`, `updated_at`, `description`, `image`, `store_id`, `weight`) VALUES
(76, 1, 1, 2200, 'Superman Action figure', 'Superman Action figure', 'Hubmart', 1, '2021-11-17 11:57:45', '2021-11-17 11:57:45', 'SUperman toy for children', 'https://res.cloudinary.com/bizguruh-com/image/upload/v1624019846/tim-mossholder-8R-mXppeakM-unsplash_gj7ykr.jpg', 1, NULL),
(84, 1, 2, 3500, 'jogg', 'jogg', 'Hubmart', 11, '2022-01-26 22:12:41', '2022-01-26 22:14:25', 'fff', NULL, 1, '10'),
(85, 1, 4, 3500, 'jogg', 'jogg', 'Hubmart', 12, '2022-01-26 22:25:10', '2022-01-26 22:25:21', 'fff', NULL, 1, '10');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Detergents', '2022-01-03 17:36:34', '2022-01-03 17:36:34'),
(2, 'Beverages', '2022-01-03 17:36:44', '2022-01-03 17:36:44'),
(3, 'Kitchen Items', '2022-01-03 17:38:15', '2022-01-03 17:38:15'),
(4, 'Condoms', '2022-01-03 17:39:11', '2022-01-03 17:39:11'),
(5, 'Grocery', '2022-01-03 17:39:48', '2022-01-03 17:39:48');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `linked_social_accounts`
--

CREATE TABLE `linked_social_accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `provider_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `linked_social_accounts`
--

INSERT INTO `linked_social_accounts` (`id`, `provider_id`, `provider_name`, `user_id`, `created_at`, `updated_at`) VALUES
(2, '102418319970772093165', 'google', 10, '2022-01-05 20:49:15', '2022-01-05 20:49:15');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2021_04_07_163426_create_vendors_table', 1),
(10, '2021_04_07_163439_create_admins_table', 1),
(11, '2021_06_15_223659_create_notifications_table', 1),
(12, '2021_06_15_225254_create_otp_table', 1),
(13, '2021_06_15_230905_create_carts_table', 1),
(14, '2021_06_15_232141_create_orders_table', 1),
(15, '2021_06_16_151539_create_linked_social_accounts_table', 1),
(16, '2021_07_23_121119_create_transactions_table', 1),
(17, '2021_08_14_215746_add_description_image_to_carts_table', 2),
(18, '2021_08_15_232141_create_orders_table', 3),
(24, '2021_08_15_005711_create_orders_table', 4),
(27, '2021_08_15_005812_create_order_histories_table', 5),
(28, '2021_08_15_020035_create_order_information_table', 5),
(29, '2021_08_15_121119_create_transactions_table', 6),
(30, '2021_08_15_182855_add_title_schedule_schedule_time_to_orders_table', 7),
(31, '2021_09_04_200001_create_stores_table', 8),
(32, '2021_09_04_234213_create_wishlists_table', 8),
(33, '2021_09_05_000926_create_stories_table', 8),
(34, '2021_09_14_122543_add_nullable_to_users_table', 9),
(35, '2021_09_15_225254_create_otp_table', 10),
(39, '2021_10_04_223128_create_products_table', 11),
(42, '2021_10_03_223143_create_categories_table', 12),
(43, '2021_10_03_233128_create_products_table', 12),
(44, '2021_10_04_001221_add_image_to_products_table', 12),
(45, '2021_10_04_021121_add_store_id_product_id_to_wishlists_table', 13),
(47, '2021_10_05_020040_add_store_id_to_carts_table', 14),
(51, '2021_10_07_234213_create_wishlists_table', 15),
(52, '2021_10_08_092413_create_wishlist_items_table', 15),
(54, '2021_10_08_185309_add_items_to_orders_table', 16),
(55, '2021_10_08_194557_create_reports_table', 17),
(63, '2021_10_10_005633_add_name_to_orders_table', 18),
(64, '2021_10_10_225113_add_pin_to_users_table', 19),
(65, '2021_10_15_022434_add_delivery_method_to_order_information_table', 20),
(72, '2021_10_26_021903_create_payments_table', 21),
(75, '2021_11_05_210828_add_sales_price_active_to_products_table', 22),
(76, '2021_11_05_210922_add_email_password_to_stores_table', 22),
(77, '2021_11_07_200751_create_brands_table', 23),
(78, '2021_11_07_201027_add_brand_id_to_products_table', 23),
(85, '2021_11_08_132022_create_store_orders_table', 24),
(86, '2021_11_13_175831_add_paymentcode_to_payments', 24),
(87, '2021_11_14_192656_add_shipping_method_to_orders_table', 25),
(88, '2021_12_02_205027_add_lat_long_to_stores_table', 26),
(89, '2021_12_03_230510_add_images_to_products_table', 27),
(90, '2021_12_09_171050_add_category_id_to_brands_table', 28),
(91, '2021_12_11_011136_add_payment_status_to_store_orders', 29),
(92, '2021_12_11_172858_add_place_to_stores_table', 30),
(93, '2021_12_12_174039_add_email_password_name_to_admins_table', 31),
(94, '2021_12_14_182357_add_weight_to_products_table', 32),
(95, '2021_12_14_182428_add_weight_to_orders_table', 32),
(96, '2021_12_28_145733_add_text_to_payments_table', 33),
(97, '2022_01_01_232642_add_weight_to_carts_table', 34),
(98, '2021_08_04_200001_create_stores_table', 35),
(99, '2022_01_06_183928_add_view_at_to_orders_table', 35),
(100, '2022_01_26_223434_change_address_in_users_table', 36);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('10a90619-fc70-452d-bd91-fb3a51d0fc9a', 'App\\Notifications\\NewUser', 'App\\Models\\User', 12, '{\"message\":\"Welcome to my hood\",\"url\":\"http:\\/\\/entermarket.com\"}', NULL, '2022-01-26 22:24:03', '2022-01-26 22:24:03'),
('138690f2-8523-4a4c-b766-72a3cde5f3a1', 'App\\Notifications\\NewOrderAlert', 'App\\Models\\Admin', 1, '{\"message\":\"Welcome to my hood\",\"url\":\"http:\\/\\/entermarket.com\"}', '2022-01-04 11:06:55', '2021-10-22 22:11:56', '2022-01-04 11:06:55'),
('18c4c7af-332b-4cfd-a09d-304f70c8aaa3', 'App\\Notifications\\NewUser', 'App\\Models\\User', 9, '{\"message\":\"Welcome to my hood\",\"url\":\"http:\\/\\/entermarket.com\"}', NULL, '2021-10-22 22:25:42', '2021-10-22 22:25:42'),
('285d9f1c-28dc-4725-965f-9db0319b4f67', 'App\\Notifications\\OrderCreated', 'App\\Models\\User', 10, '{\"message\":\"Your order has been created\",\"url\":\"http:\\/\\/entermarket.net\\/profile?showing=4\"}', NULL, '2021-12-10 23:54:37', '2021-12-10 23:54:37'),
('2abfbad8-d32f-489d-a20e-23f5597e8b4d', 'App\\Notifications\\OrderCreated', 'App\\Models\\User', 10, '{\"message\":\"Your order has been created\",\"url\":\"http:\\/\\/entermarket.net\\/profile?showing=4\"}', NULL, '2021-12-28 20:55:29', '2021-12-28 20:55:29'),
('2cee4818-d414-4b58-bcb3-5c0fa43447a3', 'App\\Notifications\\NewUser', 'App\\Models\\User', 7, '{\"message\":\"Welcome to my hood\",\"url\":\"http:\\/\\/entermarket.com\"}', NULL, '2021-10-22 22:10:20', '2021-10-22 22:10:20'),
('39f3739e-b2b2-41b7-b0c1-28b44d0ce332', 'App\\Notifications\\OrderCreated', 'App\\Models\\User', 10, '{\"message\":\"Your order has been created\",\"url\":\"http:\\/\\/entermarket.net\\/profile?showing=4\"}', NULL, '2021-12-28 20:52:59', '2021-12-28 20:52:59'),
('535723f3-abc7-484b-bfce-8a3274629986', 'App\\Notifications\\NewUser', 'App\\Models\\User', 11, '{\"message\":\"Welcome to my hood\",\"url\":\"http:\\/\\/entermarket.com\"}', NULL, '2022-01-26 22:08:01', '2022-01-26 22:08:01'),
('5836a03e-083f-417f-8cf3-443a51920544', 'App\\Notifications\\NewUser', 'App\\Models\\User', 3, '{\"message\":\"Welcome to my hood\",\"url\":\"http:\\/\\/entermarket.com\"}', NULL, '2021-10-08 19:56:39', '2021-10-08 19:56:39'),
('5a78e4b0-40ed-400e-a58d-cc1105b9afa7', 'App\\Notifications\\OrderCreated', 'App\\Models\\User', 1, '{\"message\":\"Order created\",\"url\":\"http:\\/\\/entermarket.com\"}', NULL, '2021-10-16 01:32:18', '2021-10-16 01:32:18'),
('5e144be6-9e78-4a84-8bf3-5eb35cb56c0e', 'App\\Notifications\\OrderCreated', 'App\\Models\\User', 3, '{\"message\":\"Order created\",\"url\":\"http:\\/\\/entermarket.com\"}', NULL, '2021-10-09 23:03:30', '2021-10-09 23:03:30'),
('66eee93b-a880-412b-b1da-d82d9d4d273b', 'App\\Notifications\\OrderCreated', 'App\\Models\\User', 3, '{\"message\":\"Order created\",\"url\":\"http:\\/\\/entermarket.com\"}', NULL, '2021-10-10 23:00:49', '2021-10-10 23:00:49'),
('6c4e5bd8-80b9-4e1f-9da4-605f812494d3', 'App\\Notifications\\NewUser', 'App\\Models\\User', 10, '{\"message\":\"Welcome to my hood\",\"url\":\"http:\\/\\/entermarket.com\"}', '2021-11-23 02:38:25', '2021-11-18 14:31:08', '2021-11-23 02:38:25'),
('707ddc9e-7733-403e-82f6-c816765ac231', 'App\\Notifications\\OrderCreated', 'App\\Models\\User', 3, '{\"message\":\"Order created\",\"url\":\"http:\\/\\/entermarket.com\"}', NULL, '2021-10-10 01:05:20', '2021-10-10 01:05:20'),
('729603da-da32-4c6a-8274-7369f574ea5b', 'App\\Notifications\\OrderCreated', 'App\\Models\\User', 1, '{\"message\":\"Order created\",\"url\":\"http:\\/\\/entermarket.com\"}', NULL, '2021-10-16 01:52:50', '2021-10-16 01:52:50'),
('a0798ef4-9f20-4ba8-b475-ef9b8094fbf4', 'App\\Notifications\\OrderCreated', 'App\\Models\\User', 3, '{\"message\":\"Order created\",\"url\":\"http:\\/\\/entermarket.com\"}', NULL, '2021-10-16 01:46:04', '2021-10-16 01:46:04'),
('a494bc52-bf13-417f-85ee-ef876edc7c7c', 'App\\Notifications\\OrderCreated', 'App\\Models\\User', 10, '{\"message\":\"Your order has been created\",\"url\":\"http:\\/\\/entermarket.net\\/profile?showing=4\"}', NULL, '2022-01-01 23:05:42', '2022-01-01 23:05:42'),
('a9a09cd8-0184-4e97-8790-de43327eb123', 'App\\Notifications\\OrderCreated', 'App\\Models\\User', 3, '{\"message\":\"Order created\",\"url\":\"http:\\/\\/entermarket.com\"}', NULL, '2021-10-15 01:34:49', '2021-10-15 01:34:49'),
('c318fd59-78ad-4cbb-83a5-ff8e3639eece', 'App\\Notifications\\OrderCreated', 'App\\Models\\User', 3, '{\"message\":\"Order created\",\"url\":\"http:\\/\\/entermarket.com\"}', NULL, '2021-10-09 23:04:39', '2021-10-09 23:04:39'),
('c33ae5cd-cce1-4954-b6f4-6166cefc83ba', 'App\\Notifications\\OrderCreated', 'App\\Models\\User', 3, '{\"message\":\"Order created\",\"url\":\"http:\\/\\/entermarket.com\"}', NULL, '2021-10-09 23:39:46', '2021-10-09 23:39:46'),
('c5f99bbf-047b-4705-9e50-b8bb751bb254', 'App\\Notifications\\OrderCreated', 'App\\Models\\User', 3, '{\"message\":\"Order created\",\"url\":\"http:\\/\\/entermarket.com\"}', NULL, '2021-11-14 18:14:04', '2021-11-14 18:14:04'),
('c8f1c15b-fafa-4592-8377-588d59432325', 'App\\Notifications\\OrderCreated', 'App\\Models\\User', 10, '{\"message\":\"Your order has been created\",\"url\":\"http:\\/\\/entermarket.net\\/profile?showing=4\"}', NULL, '2022-01-01 23:04:12', '2022-01-01 23:04:12'),
('c9a19309-926c-49bd-999d-1fe054d5b1dc', 'App\\Notifications\\OrderCreated', 'App\\Models\\User', 3, '{\"message\":\"Order created\",\"url\":\"http:\\/\\/entermarket.com\"}', NULL, '2021-10-09 23:03:57', '2021-10-09 23:03:57'),
('cfede75a-a55a-4dba-9c1e-1d467e92b015', 'App\\Notifications\\OrderCreated', 'App\\Models\\User', 3, '{\"message\":\"Order created\",\"url\":\"http:\\/\\/entermarket.com\"}', NULL, '2021-10-09 22:52:20', '2021-10-09 22:52:20'),
('dead2689-0f4a-4839-89ab-024754f6a8d7', 'App\\Notifications\\OrderCreated', 'App\\Models\\User', 3, '{\"message\":\"Order created\",\"url\":\"http:\\/\\/entermarket.com\"}', NULL, '2021-10-09 23:02:08', '2021-10-09 23:02:08'),
('ecffe5a6-3113-4ded-8f6c-8eb98b4130e8', 'App\\Notifications\\OrderCreated', 'App\\Models\\User', 3, '{\"message\":\"Order created\",\"url\":\"http:\\/\\/entermarket.com\"}', NULL, '2021-10-09 23:42:54', '2021-10-09 23:42:54'),
('ef0ba0de-671c-479c-9c0e-d5f6e0f60f41', 'App\\Notifications\\OrderCreated', 'App\\Models\\User', 3, '{\"message\":\"Order created\",\"url\":\"http:\\/\\/entermarket.com\"}', NULL, '2021-11-14 19:25:32', '2021-11-14 19:25:32');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('000b98bca045b2f871c3b43d59a5930d26c264e09fed4abd73d2454cd66c415921556febdce5b4a0', 3, 1, 'authToken', '[]', 1, '2021-10-21 22:57:04', '2021-10-21 22:57:04', '2022-10-21 23:57:04'),
('005acd5bd6b1f877a15395b97249fbf90967eb6cc1670fb92f838cffc0922ffda797a5fbb2064bba', 10, 1, 'authToken', '[]', 0, '2022-01-27 12:54:37', '2022-01-27 12:54:37', '2023-01-27 13:54:37'),
('0367bb3bf6c833b1c4fcc42b8035781f242be0b5352de864a5dcc93400780a88cf2327ef6a72f533', 10, 1, 'authToken', '[]', 0, '2021-11-23 20:20:27', '2021-11-23 20:20:27', '2022-11-23 21:20:27'),
('067323bd1807204fcf7419e867288043852cd4bac99b7855b1c0a0b04bd556286c4d58e3be1615a1', 10, 1, 'authToken', '[]', 1, '2022-01-04 10:08:47', '2022-01-04 10:08:47', '2023-01-04 11:08:47'),
('06f374278329905deb24ba0882f2d1a831878929d5b6defdc3aae4745888a74e6f023120c6cc6af5', 1, 1, 'authToken', '[]', 0, '2021-10-03 23:04:03', '2021-10-03 23:04:03', '2022-10-04 00:04:03'),
('0b343fd4f32627115226a01c263121afa40e4abd6b00c9db89b558c4c32a937c39dc3695d2a72f90', 1, 1, 'authToken', '[]', 0, '2021-12-24 19:30:12', '2021-12-24 19:30:12', '2022-12-24 20:30:12'),
('0bd9629288fa6233ccf949fcaafda458b372bcdd6d3ba22af9e1ded2bf4b494cf46845597bed0095', 10, 1, 'authToken', '[]', 0, '2021-11-23 20:39:14', '2021-11-23 20:39:14', '2022-11-23 21:39:14'),
('0cce80fe3bb352e2fd999ca11c1582714f94b19789d02d539202c5a21fd1d6ac4368222598b75f8a', 1, 2, NULL, '[]', 0, '2021-10-22 23:18:50', '2021-10-22 23:18:50', '2021-10-24 00:18:50'),
('0ddd41b3847be0b311fb127d1e1212fa7130419d4de918e7ae74eb074c7d733c7b78749d991dbbbc', 3, 1, 'authToken', '[]', 1, '2021-11-14 10:54:09', '2021-11-14 10:54:09', '2022-11-14 11:54:09'),
('0feb6ab2ae72ea200ea09f334ddb1ef8904e143ec88d913dd52a20b73bc3399af6387801523bf978', 3, 1, 'authToken', '[]', 1, '2021-11-14 10:31:12', '2021-11-14 10:31:12', '2022-11-14 11:31:12'),
('10ed4b189b932c372909de83fe81f3521fa42829f0a0a600759a3c9793ecc793eef420061d863713', 1, 2, NULL, '[]', 0, '2021-09-03 11:24:27', '2021-09-03 11:24:27', '2021-09-04 12:24:26'),
('140683116304e37e1f47f377a8582d51d027733bb6ddc9b7f67b616b535831825f2736afc308d181', 10, 1, 'authToken', '[]', 0, '2022-01-04 09:54:15', '2022-01-04 09:54:15', '2023-01-04 10:54:15'),
('1543f5e3a4de4f5855b5a2a4669c1fbc763ebcde1959b1eb47b9e19bee175521656c2dd96e2a7bc6', 3, 1, 'authToken', '[]', 1, '2021-11-14 10:36:40', '2021-11-14 10:36:40', '2022-11-14 11:36:40'),
('15c415958c5ef320dd511ea00d6ce92a50fb39e1d23a5b31a1c8fd7f75e9d29afb77ec925581ba78', 1, 2, NULL, '[]', 0, '2021-08-14 20:01:06', '2021-08-14 20:01:06', '2021-08-15 21:01:06'),
('179a9081f0d044d0142587f55d657b797acab00769888785ab7b53c8865865a7b135b45136daaa82', 10, 1, 'authToken', '[]', 0, '2021-11-23 20:20:57', '2021-11-23 20:20:57', '2022-11-23 21:20:57'),
('17bdbaf0602dd0975f457b7075fb33c06438fe4b35a781f8333eb79650443dfb1eacbe53739f1c0a', 10, 1, 'authToken', '[]', 0, '2021-11-23 20:38:30', '2021-11-23 20:38:30', '2022-11-23 21:38:30'),
('1c07ddfa1faec4edb8886b139dec2e49ddb9ced2af7e2b3f0df9f0129632480a7da23fa1b243cdc1', 10, 1, 'authToken', '[]', 0, '2021-11-23 20:33:25', '2021-11-23 20:33:25', '2022-11-23 21:33:25'),
('1c16519a4cfe7b2c204f8d2991e695e82346b239225a739137e23712e4d0e4afb592be6b74659c94', 3, 1, 'authToken', '[]', 1, '2021-11-14 10:48:19', '2021-11-14 10:48:19', '2022-11-14 11:48:19'),
('1caaf5e6fb9d23422608a5b96a71aa813d7c78734517da5bbee2f4ad49b3700c97347357164b052e', 1, 1, 'authToken', '[]', 0, '2022-01-03 17:48:32', '2022-01-03 17:48:32', '2023-01-03 18:48:32'),
('1cba5e892b6c4a041efcd88b6a71a48603d55e608b8e9a03f5c80b8525e6d3145baa1a96d095497f', 10, 1, 'authToken', '[]', 0, '2021-11-23 21:17:49', '2021-11-23 21:17:49', '2022-11-23 22:17:49'),
('1eb032f959a2b91fd9e998bcd2d59565b094ffab6170052abfd04c9e56eab069aa60105cedc9987b', 3, 1, 'authToken', '[]', 1, '2021-11-14 10:35:47', '2021-11-14 10:35:47', '2022-11-14 11:35:47'),
('22fb061e917eff8a26241f93a0517d2ae6def861d9e902d5af30600134137b33c5f68778a715d677', 10, 1, 'authToken', '[]', 1, '2022-02-02 12:52:46', '2022-02-02 12:52:46', '2023-02-02 13:52:46'),
('24271e8a7070de4be30fe0212cd6246677019908a3b61949c135bb97816310c96c24ad482366c39a', 10, 1, 'authToken', '[]', 0, '2022-01-06 19:20:00', '2022-01-06 19:20:00', '2023-01-06 20:20:00'),
('24f9f5668e8c0954a5ee827c8d34439dcf2b6f4ee1e178cad9eda64e8d7266043fdc5f33965fc0af', 10, 1, 'authToken', '[]', 0, '2022-01-27 12:54:10', '2022-01-27 12:54:10', '2023-01-27 13:54:10'),
('2a0c26fcb11df6b1d02ecc62a623ad2fb21443c667f480be629a38f2020225559f677eab3525f5a6', 3, 1, 'authToken', '[]', 1, '2021-11-14 11:45:39', '2021-11-14 11:45:39', '2022-11-14 12:45:39'),
('2a607d88c988a84cb1797f8f8a832f8ca2bee13acf3d8f2b93cbcd73884e98ad135270c26194e48e', 9, 1, 'authToken', '[]', 1, '2021-10-22 23:10:13', '2021-10-22 23:10:13', '2022-10-23 00:10:13'),
('2ad0570b14f5d2a985d231261da44f81d1abb229f789b011d186bc6273c6dd804e147b351bd9adac', 9, 1, 'authToken', '[]', 0, '2021-10-26 00:47:01', '2021-10-26 00:47:01', '2022-10-26 01:47:01'),
('2bc3443889ea3416ebbadb69846bf25310825a471d73628557f8617b1ab2bfb7b2f89dfb91b1db5a', 3, 1, 'authToken', '[]', 1, '2021-11-14 10:41:05', '2021-11-14 10:41:05', '2022-11-14 11:41:05'),
('2d432c449a47d99ef67a5db92188957f7fb4c5493ce7a080f6b634b2798d0772c913a0ed5bea433f', 10, 1, 'authToken', '[]', 0, '2022-01-27 12:51:38', '2022-01-27 12:51:38', '2023-01-27 13:51:38'),
('30c720af8abbdd953171b49f02b3d5a8c3b477e57051e8439b002e7a68635e545ddc220c53de9484', 10, 1, 'authToken', '[]', 0, '2022-01-27 12:53:12', '2022-01-27 12:53:12', '2023-01-27 13:53:12'),
('31ada9d9592722b380b40210dd52b0c909e88df416d1b5dbd88c99875851fd4139d06e0d6e08b959', 10, 1, 'authToken', '[]', 1, '2022-01-05 20:36:26', '2022-01-05 20:36:26', '2023-01-05 21:36:26'),
('325081cfd688f82185a38da4cfce9e83aaa680709d2fa87bf9a259d6e54006ffa6e556dfb735dd8a', 1, 1, 'authToken', '[]', 0, '2021-12-18 14:40:38', '2021-12-18 14:40:38', '2022-12-18 15:40:38'),
('3258750369e3774e42993cb9ebbb1e73513d33f3c1e2a7e9b8a927a3ab44b62885337bbb8c7c946e', 3, 1, 'authToken', '[]', 1, '2021-11-14 13:32:57', '2021-11-14 13:32:57', '2022-11-14 14:32:57'),
('357e44f645c05590a2b56361270bbf62351155b9ce4feda946e82520a74501054808f1a346a624cb', 1, 2, NULL, '[]', 0, '2021-10-22 23:21:50', '2021-10-22 23:21:50', '2021-10-24 00:21:50'),
('37406d6e7fb7458dc7b66d8dd276cf67def00dbe20a41951fd92e3b84ad77b75df326afd42cb333f', 10, 1, 'authToken', '[]', 1, '2022-01-27 12:05:04', '2022-01-27 12:05:04', '2023-01-27 13:05:04'),
('38762748d62934b125a4e4b56aeafa77f3720396b226570e334b44c6ff65d4bacfe4d8d6231ab866', 3, 1, 'authToken', '[]', 0, '2021-11-14 13:14:03', '2021-11-14 13:14:03', '2022-11-14 14:14:03'),
('395caf58d2c1f227a63327fe70d829edb6c9d442ea45e650037028a5c1477507bbfcc300acdf583f', 3, 1, 'authToken', '[]', 0, '2021-11-13 15:35:58', '2021-11-13 15:35:58', '2022-11-13 16:35:58'),
('3aa06f484092230cd92b35960dd927e158a62922dd08eee1044719e690f51955ad5f1063094c9ce1', 1, 1, 'authToken', '[]', 0, '2022-01-27 13:56:21', '2022-01-27 13:56:21', '2023-01-27 14:56:21'),
('3ac814140e48300a71e02e965b0b080b209f19a782e1e10c5b670fc8508e72895709d98b0a8ac640', 1, 1, 'authToken', '[]', 1, '2021-09-04 17:27:19', '2021-09-04 17:27:19', '2022-09-04 18:27:19'),
('3bf39fab1aad1c41553b5201b7ce8160d05515772a5d82181d92098637cc3c36d29a90f2abafb3b5', 10, 1, 'authToken', '[]', 0, '2022-01-27 12:49:44', '2022-01-27 12:49:44', '2023-01-27 13:49:44'),
('3cfb2b6f259ad80fc9ae6f6348c22e844bd76ce048537e27b739917bfbcd0ad8616dc7f81adea790', 10, 1, 'authToken', '[]', 0, '2022-01-27 11:39:41', '2022-01-27 11:39:41', '2023-01-27 12:39:41'),
('3f3ebc0cf53d9197ce8f4727caa95811ce2c85bfc25b79639fbe57c9bc76dcd52667f9e37dd2077c', 12, 1, 'authToken', '[]', 1, '2022-01-26 22:24:17', '2022-01-26 22:24:17', '2023-01-26 23:24:17'),
('3f90e70db34f65b95be02b3fd7aa2d32629ccc56381e03811f5df648f4a1025682330800a3b8b436', 10, 1, 'authToken', '[]', 0, '2022-01-04 10:00:07', '2022-01-04 10:00:07', '2023-01-04 11:00:07'),
('404f0b4ab6a950d700ddca2430a7a00992af14d5d6642e80954c5349b8975ea652c104a16d062058', 9, 1, 'authToken', '[]', 0, '2021-10-26 00:46:57', '2021-10-26 00:46:57', '2022-10-26 01:46:57'),
('41225b182350f2da039208282d3f2a4dba080895ecf0c04f911a7bce8d51dc9aac0899eb9d152e79', 3, 1, 'authToken', '[]', 0, '2021-10-07 13:10:55', '2021-10-07 13:10:55', '2022-10-07 14:10:55'),
('42711f90468d195e36c5b45ef272bd079a940d9bb7bf3777815af315a61bfe3afaaf52257533f7b8', 10, 1, 'authToken', '[]', 0, '2021-11-23 20:48:14', '2021-11-23 20:48:14', '2022-11-23 21:48:14'),
('46c8114495d6d1e5803016f329ef96ab14ca851a01f0319a19a1d077b833de0fc6778666ad2c1baf', 10, 1, 'authToken', '[]', 0, '2022-02-02 12:50:03', '2022-02-02 12:50:03', '2023-02-02 13:50:03'),
('46ef4be6cc652a1180cd64eed89da004e6f1640edd2d3edcd488d6db08b3eb0b27e2ce4bebba4aa9', 1, 1, 'authToken', '[]', 0, '2021-12-18 15:06:39', '2021-12-18 15:06:39', '2022-12-18 16:06:39'),
('49a53d20e5eba49ac05da7f3b8ac8e9884d168790a636ee8a6bcebb117b2dbe30fc2d199a2ed7d85', 1, 1, 'authToken', '[]', 1, '2021-09-05 22:02:03', '2021-09-05 22:02:03', '2022-09-05 23:02:03'),
('4a59782a0bb64cb69f7c12f202f6f40880dd9a9d119bd9716d2f06cab8f1a363245d133d843dfcfa', 1, 1, 'authToken', '[]', 0, '2021-10-03 10:38:10', '2021-10-03 10:38:10', '2022-10-03 11:38:10'),
('4b2d736eeed3fba024c128822f6c0d3eaa1c54040444b1196c35d1d85432a1a376cc401fbae0f2b4', 10, 1, 'authToken', '[]', 0, '2022-01-27 12:55:25', '2022-01-27 12:55:25', '2023-01-27 13:55:25'),
('4b8537e737b2c3451ff926a1c83d22debe5eb200a48d26017b9a5d1d73d75c448e6a95a66723712f', 3, 1, 'authToken', '[]', 1, '2021-11-14 10:41:26', '2021-11-14 10:41:26', '2022-11-14 11:41:26'),
('4ce96beb568e49f9c38e005652bd402d54fe58aad3535e257a45f0bf78e070edeb5cc3c44668edfd', 10, 1, 'authToken', '[]', 1, '2021-11-18 15:42:31', '2021-11-18 15:42:31', '2022-11-18 16:42:31'),
('4e07f3a24aaf4bbc1d85790d857020f6cd18abddf7c1cacf7f748e09a2fa00ed5942aa322604b398', 3, 1, 'authToken', '[]', 1, '2021-11-14 10:44:48', '2021-11-14 10:44:48', '2022-11-14 11:44:48'),
('502b4f221b53f829c6ea8bd849999b690cf55ec638ac3fe3424ce7287a07d2ce9d5123227f4fbe02', 12, 1, 'authToken', '[]', 0, '2022-01-26 22:24:03', '2022-01-26 22:24:03', '2023-01-26 23:24:03'),
('5141fac5085db13b1b11428db41869c272242da9161f6b99e8e015a7b04774731fca4622b1035855', 1, 1, 'authToken', '[]', 0, '2021-12-11 00:04:38', '2021-12-11 00:04:38', '2022-12-11 01:04:38'),
('5493c8d22ebb4a92f4008b350e1d44470fbfdebf7f02a61b8db7f7b967483eb05a990b0a4dd2f7b9', 1, 1, 'authToken', '[]', 0, '2021-09-05 22:03:45', '2021-09-05 22:03:45', '2022-09-05 23:03:45'),
('55383064e9f5df7ae299b4536faf1df5d266ceacf438eddc45c881fd72b5cf5d397384f17f404181', 10, 1, 'authToken', '[]', 0, '2021-12-03 22:27:45', '2021-12-03 22:27:45', '2022-12-03 23:27:45'),
('560aaf03c258cbd32113378e138d19807c916dfd030ebba34fa6953c83b23b04650ab6cec859c465', 10, 1, 'authToken', '[]', 0, '2021-12-09 00:01:21', '2021-12-09 00:01:21', '2022-12-09 01:01:21'),
('566e2c7593f84e101ec741e268d78a6cd2db988d9a5366c192a1445973305ae64389bff357c4a811', 3, 1, 'authToken', '[]', 0, '2021-10-10 22:09:39', '2021-10-10 22:09:39', '2022-10-10 23:09:39'),
('576d7bc95a0d2ccfb12a7b30a609c8533871e6b70ca17727f71b4e3e4d1ed92b42daea2ac45940fd', 3, 1, 'authToken', '[]', 1, '2021-10-15 00:20:59', '2021-10-15 00:20:59', '2022-10-15 01:20:59'),
('58384a3256418b1341c9bc726824022ebb25e9a69ecdc2383e9163dbf5f83a8336e7420a14e6afe2', 1, 1, 'authToken', '[]', 0, '2021-12-13 10:16:53', '2021-12-13 10:16:53', '2022-12-13 11:16:53'),
('58445f2b6cfb8f5c09eef06d73177effaaab7ab85c42d58ebdba9f4d24e25231ddead189fe7a6077', 10, 1, 'authToken', '[]', 0, '2021-11-23 20:30:41', '2021-11-23 20:30:41', '2022-11-23 21:30:41'),
('589e91d2add1af635864bb34580b7f5a2e3a922b102daaed07fa49f8fba651d38ebcfc5c56622929', 10, 1, 'authToken', '[]', 0, '2021-11-23 21:07:49', '2021-11-23 21:07:49', '2022-11-23 22:07:49'),
('5967b2468e4813977e2433b487371edcfcd639c38f5f122306c1802abbdb74ed10b2affbec0346d5', 10, 1, 'authToken', '[]', 0, '2021-12-28 12:14:30', '2021-12-28 12:14:30', '2022-12-28 13:14:30'),
('5986719978ee44901acbd47740f0abe2032e169e3e726a729be1b0090ca5986d2934fe6c9b54b558', 8, 1, 'authToken', '[]', 0, '2021-10-22 22:11:59', '2021-10-22 22:11:59', '2022-10-22 23:11:59'),
('5fe386f062ada91ba1eee8cc5a916ed6b7e033ee0271d95fb57397ce2ee3fdf43ee00d2dd11e070b', 10, 1, 'authToken', '[]', 0, '2021-11-23 21:01:52', '2021-11-23 21:01:52', '2022-11-23 22:01:52'),
('61fbc545d2607663a9d29b5c6c05ad618f4035c2adc5af9574fcb49ef913a70620563ad18f64e895', 3, 1, 'authToken', '[]', 1, '2021-11-14 10:42:40', '2021-11-14 10:42:40', '2022-11-14 11:42:40'),
('650b27ea53ef1cfe628772c19e1827cd6867d533b4d3c1bfd1b5ca8f6176bec7ec251c0d10ff4e24', 3, 1, 'authToken', '[]', 1, '2021-11-14 10:38:59', '2021-11-14 10:38:59', '2022-11-14 11:38:59'),
('665b4db3046811180ea0e8b2aaca488ad017b9c956ece1d3063b196b82a333c94ae8b7a4b382bb61', 10, 1, 'authToken', '[]', 0, '2022-01-04 09:58:50', '2022-01-04 09:58:50', '2023-01-04 10:58:50'),
('6797c051ec8d0dab8105ef48804cf6c07888543fd4ca5fbf7c95821b4b872bc9a1b0ec15f460eedf', 10, 1, 'authToken', '[]', 0, '2021-11-23 20:34:41', '2021-11-23 20:34:41', '2022-11-23 21:34:41'),
('68205ac233b24744e74f4344d3dee4a7f223a13f1f22821ffcfe4776a7403445162955694bb5a1a9', 10, 1, 'authToken', '[]', 0, '2021-12-09 17:35:22', '2021-12-09 17:35:22', '2022-12-09 18:35:22'),
('6827b97dcd0089c977df10897698ad36e6dee0566f56bbc7399534a23c0c7cf561a276e12b3514ce', 1, 1, 'authToken', '[]', 0, '2021-11-17 11:54:57', '2021-11-17 11:54:57', '2022-11-17 12:54:57'),
('6a087cfc8d5a013414f0e7ba69dd19974c0db3aab08317e0b51df0e392aa0bdd9aedab9036640cdd', 10, 1, 'authToken', '[]', 0, '2021-11-23 20:37:08', '2021-11-23 20:37:08', '2022-11-23 21:37:08'),
('6a5fa1a9d33025c27c70844e76ad79fb76ec52b566d38a4340fc9553f32c2cbc979072d5774e99ec', 1, 1, 'authToken', '[]', 0, '2022-01-01 23:14:09', '2022-01-01 23:14:09', '2023-01-02 00:14:09'),
('6ad6ddf00b7f9acdc5fac931ca28f6072ac3c7b823d549f6eb2d276864c62aa7dbc94faee9de8813', 3, 1, 'authToken', '[]', 1, '2021-11-14 13:14:16', '2021-11-14 13:14:16', '2022-11-14 14:14:16'),
('6f1df436e622a4d8ae835842cf09e68afcc73e27f170d0ce66ee2c8bc11781770c287e1a3e7282ce', 9, 1, 'authToken', '[]', 1, '2021-10-22 22:25:47', '2021-10-22 22:25:47', '2022-10-22 23:25:47'),
('7133add4c405a311e7b4ef87a420f1020734f5452cc4cb66ccd3d2bebbf2b091bb78ebd9c1684186', 10, 1, 'authToken', '[]', 1, '2022-02-02 12:53:26', '2022-02-02 12:53:26', '2023-02-02 13:53:26'),
('79785a330a6d233e987c262df9f31d90d16599e6f35fe005c27de8cc78bcab51ab4b823267a91967', 10, 1, 'authToken', '[]', 0, '2022-01-04 10:00:10', '2022-01-04 10:00:10', '2023-01-04 11:00:10'),
('7a06db577f92463065ed71d35e0bc8606c9efce708eefe2af1ca3500ff8a45563add26916f9acfb4', 1, 2, NULL, '[]', 0, '2021-10-22 23:27:41', '2021-10-22 23:27:41', '2021-10-24 00:27:40'),
('812100e8e606c5efc560a23dfceda3a59df2b81c280c04652371cebc717722600aa12dc5ce6fb152', 9, 1, 'authToken', '[]', 0, '2021-10-26 00:47:35', '2021-10-26 00:47:35', '2022-10-26 01:47:35'),
('83609d6523bb0359cc31b9f854ef1c9850496d80beb59a84cf26f9e7a10689085bba1a75232a6dc6', 9, 1, 'authToken', '[]', 0, '2021-10-22 22:25:42', '2021-10-22 22:25:42', '2022-10-22 23:25:42'),
('8672e4599fec0476555d5404757b7305ae59a4b8a9f4f9cdd73b09db15e4b8352b9919c2ba4a7bd1', 10, 1, 'authToken', '[]', 0, '2022-01-04 10:13:03', '2022-01-04 10:13:03', '2023-01-04 11:13:03'),
('869221d06a0f7b893af7c9e7c29c9281270aadf2649010f2ff179b72325890b900f9259705ff9064', 11, 1, 'authToken', '[]', 0, '2022-01-26 22:08:15', '2022-01-26 22:08:15', '2023-01-26 23:08:15'),
('89f9871ad99301ff6010cfc970bf57c838d022ed4cf772b64518a5de0d2818f0adcea7ca06c0e724', 1, 2, NULL, '[]', 0, '2021-08-30 11:41:08', '2021-08-30 11:41:08', '2021-08-31 12:41:08'),
('8b8fe1857217a4845e85283ece78307395e633f1b23181a10f4ab6bb93bc745c552c339f89981f10', 1, 1, 'authToken', '[]', 0, '2021-11-17 11:55:59', '2021-11-17 11:55:59', '2022-11-17 12:55:59'),
('8b95aca7e5fd7657c5eb264795eea516c18c6706472e0733283dd1aaecaef570c63384e7bc21587b', 3, 1, 'authToken', '[]', 0, '2021-11-13 15:35:41', '2021-11-13 15:35:41', '2022-11-13 16:35:41'),
('94bfd84ba6cd698bd61567241f7d2de053c1bbda996ff3b14b5f05dda9af82e8461fb748f239466d', 10, 1, 'authToken', '[]', 0, '2022-01-01 22:40:53', '2022-01-01 22:40:53', '2023-01-01 23:40:53'),
('9531269940e2923f19556541d786e61d625dd28e144eb80160fb28041cbf5d77a704eca6753664ab', 10, 1, 'authToken', '[]', 0, '2022-01-04 10:08:19', '2022-01-04 10:08:19', '2023-01-04 11:08:19'),
('959a6f899117911e9a0a7b3f92781d72ea92c2ce6c03b71ecbd410130c84de03f11b9410d0e37436', 10, 1, 'authToken', '[]', 0, '2022-01-04 09:57:34', '2022-01-04 09:57:34', '2023-01-04 10:57:34'),
('959d66650ceaf206ca50b6ed7f29004ff5f67a17a73c452558ea9c473bdafe4d3c2e56169dd4efc6', 10, 1, 'authToken', '[]', 0, '2021-11-23 20:40:00', '2021-11-23 20:40:00', '2022-11-23 21:40:00'),
('9964d553c4087f314b7175d7bb762fa4973cbd368e7aa9cdc34d0bedd17937f40179020b3538f381', 3, 1, 'authToken', '[]', 1, '2021-11-13 15:58:12', '2021-11-13 15:58:12', '2022-11-13 16:58:12'),
('9afabe25521049e8e891aa595414bd62b632cd5c1b95ceb539889984053401b7186398a4d2bb3e51', 10, 2, NULL, '[]', 0, '2022-01-05 20:54:51', '2022-01-05 20:54:51', '2023-01-05 21:54:51'),
('9d1574ebad28a2d76eee8a6079c77d9d5ad948c2a8cb5fdf3c616b5838ddc12e2db2abf1afe74cd5', 3, 1, 'authToken', '[]', 0, '2021-11-13 15:36:14', '2021-11-13 15:36:14', '2022-11-13 16:36:14'),
('9dc56bef927a73c5457bedd52b9fe1f36a4c04b055b2994404eec69b7f37f853e212f19b972303c0', 10, 1, 'authToken', '[]', 0, '2022-01-01 22:44:19', '2022-01-01 22:44:19', '2023-01-01 23:44:19'),
('9e9b202747b0f35b4355b9bef7ec1a034ec2382f459b4c7ff7febd16c9031ae96ca4631f76d3ebef', 10, 1, 'authToken', '[]', 0, '2021-11-23 21:11:10', '2021-11-23 21:11:10', '2022-11-23 22:11:10'),
('9f7eb910247bdcb7c1fd184f66910f1acd4559eb391f6b4acc2073fb74034d6333f0f932d883076c', 10, 1, 'authToken', '[]', 1, '2022-01-27 12:57:24', '2022-01-27 12:57:24', '2023-01-27 13:57:24'),
('9f8f344a33049b99570ebb52f0817ea0f36575f6ccbe83a9c3ae70ae7fc9ca3bb9296eaf93636d18', 10, 1, 'authToken', '[]', 0, '2021-11-23 20:40:27', '2021-11-23 20:40:27', '2022-11-23 21:40:27'),
('a3317afc2d6f53360822f1b298c2402699565ec87906d9e43156cabbe6327dc5737df5d9ae97dfa2', 1, 1, 'authToken', '[]', 0, '2022-01-04 10:17:54', '2022-01-04 10:17:54', '2023-01-04 11:17:54'),
('a36af2717a606e9001e2491334f7f8f6b244545e8c421a543ef980e564c642688e2b4661ee101e8b', 10, 1, 'authToken', '[]', 1, '2022-01-10 12:41:40', '2022-01-10 12:41:40', '2023-01-10 13:41:40'),
('a55cacee14a29ea9b353e7e768c6159661a6c4801b594fa56a7c1262a9c1d1f1d23e125370d0d0e8', 10, 1, 'authToken', '[]', 0, '2022-01-27 12:56:07', '2022-01-27 12:56:07', '2023-01-27 13:56:07'),
('a821f6954b0bf6244a35c36f724cf885b83ec356136908c7745f5f46437cf44b32d7934c78a24207', 10, 1, 'authToken', '[]', 1, '2022-02-02 12:51:24', '2022-02-02 12:51:24', '2023-02-02 13:51:24'),
('aa6e6f09fc3fd4704e7ea090330bc4cab5a1f960a61a209ed47545013401799044a581cd0a0f0735', 3, 1, 'authToken', '[]', 1, '2021-11-14 10:42:50', '2021-11-14 10:42:50', '2022-11-14 11:42:50'),
('ab80bfef00d71f2ba8fd8261881b3d71f77b0512f31c9f111407b663ba7626f97e7b29fb940703c4', 10, 1, 'authToken', '[]', 0, '2021-12-10 23:50:51', '2021-12-10 23:50:51', '2022-12-11 00:50:51'),
('ad4d3fd7c800fbdf8fd330ae9a14982210b7680398dcc82a1f2aa5fcff25fadb35df1d90945ff603', 10, 1, 'authToken', '[]', 0, '2022-01-27 12:52:27', '2022-01-27 12:52:27', '2023-01-27 13:52:27'),
('ade048dad0f57fadd226937eb697a57ef944744f45645cf1a4c63f5d6d3f544d9c03bac786438520', 10, 1, 'authToken', '[]', 0, '2021-11-18 14:31:08', '2021-11-18 14:31:08', '2022-11-18 15:31:08'),
('ae7521322dde6ffc2fa097bb2d3192a2e0038eaf1421a7ef3c6e63467e2b911f92b05e2c708d7762', 10, 1, 'authToken', '[]', 0, '2022-01-01 22:43:20', '2022-01-01 22:43:20', '2023-01-01 23:43:20'),
('aebd3c8c995dfbc49adc7cd083a04d17adc202162063f9157bb07c455a38c87fa239e04e6feb1d1f', 3, 1, 'authToken', '[]', 0, '2021-11-13 15:35:59', '2021-11-13 15:35:59', '2022-11-13 16:35:59'),
('afac8028e7cfc46378d989ea4c106e150210352f5c296f69a0cbe664187dde303016ecf14269c4ad', 10, 1, 'authToken', '[]', 0, '2022-01-27 12:55:41', '2022-01-27 12:55:41', '2023-01-27 13:55:41'),
('b080c760a825e7e16215407b13693c2390501387c47e7aca7a7641b88eb855e3df134f0aff838909', 10, 1, 'authToken', '[]', 0, '2022-01-01 22:42:05', '2022-01-01 22:42:05', '2023-01-01 23:42:05'),
('b1530298b83e428f6010c6bd7a067450f1fae785e63568af237a87a00c8a9820e7a82df4a203a223', 10, 1, 'authToken', '[]', 0, '2022-01-27 12:40:54', '2022-01-27 12:40:54', '2023-01-27 13:40:54'),
('b16f0ad5dd1a4fc654aabc4070c939995e018abfe6bb605e48da3c5be9f907e9ea55698337255085', 1, 2, NULL, '[]', 1, '2021-10-22 23:21:10', '2021-10-22 23:21:10', '2021-10-24 00:21:10'),
('b1cc8773dd0f3d068f9d13a292eee6aea09df9d1345d2db3c325df93420686291f54682ccb22495c', 10, 1, 'authToken', '[]', 1, '2022-01-05 20:01:33', '2022-01-05 20:01:33', '2023-01-05 21:01:33'),
('b420490793fc4b86be1943a79e35ea0cf8cf12f9d818756baa4a73a533ac39aa7c9d5d980ed0938c', 3, 1, 'authToken', '[]', 0, '2021-11-14 12:24:58', '2021-11-14 12:24:58', '2022-11-14 13:24:58'),
('b44a11545b0f36abee000d8f040df2491bdf93c05b578566c824362fb91bedf3c11c503fba0395a3', 10, 1, 'authToken', '[]', 0, '2022-01-27 12:53:34', '2022-01-27 12:53:34', '2023-01-27 13:53:34'),
('b469247e94ff0ee9c0515a1fc0037b67251234e46e82726900dfa54e128a879c2573738e2d0abbe8', 3, 1, 'authToken', '[]', 0, '2021-09-11 01:12:33', '2021-09-11 01:12:33', '2022-09-11 02:12:33'),
('b4a2515cf827864ccb4b44937e4c139572490a8de135d341221a6ef5dda5ac769d002705929279d1', 3, 1, 'authToken', '[]', 1, '2021-11-14 18:12:55', '2021-11-14 18:12:55', '2022-11-14 19:12:55'),
('b5aebae14b4212bd9083753407ba5a475b7a5770786a04bcac8c6a1522299c71a2ee069ea6186df7', 1, 1, 'authToken', '[]', 0, '2022-01-27 13:57:28', '2022-01-27 13:57:28', '2023-01-27 14:57:28'),
('b6b8ad932cef7df85825cf8a950aec9e156ef7199f360e6187addb52862077431a2d3a26fc95f574', 1, 1, 'authToken', '[]', 0, '2021-12-12 18:34:54', '2021-12-12 18:34:54', '2022-12-12 19:34:54'),
('b75c4143f61361b875158782a51a9ca28442b435804551cfe685178cc26c8c09f48b34d3f443099a', 3, 1, 'authToken', '[]', 1, '2021-11-14 10:34:16', '2021-11-14 10:34:16', '2022-11-14 11:34:16'),
('bb80b872b234648db805c6a59a2db96f029ab7d7c2d81024e8cd5af2838f9d44280cf058ab069e78', 10, 1, 'authToken', '[]', 0, '2022-01-27 13:34:37', '2022-01-27 13:34:37', '2023-01-27 14:34:37'),
('bc460f749da2d765ea067587b5f271146652c97a387e9b51734036847a277dcae2a3efb24b6c0cdc', 3, 1, 'authToken', '[]', 1, '2021-10-03 21:28:13', '2021-10-03 21:28:13', '2022-10-03 22:28:13'),
('bde5a939abe6f814b4d87ee12784331e40cd3375e99bf51e1822e978296519daa83bcf96224dae04', 8, 1, 'authToken', '[]', 0, '2021-10-22 22:11:56', '2021-10-22 22:11:56', '2022-10-22 23:11:56'),
('bdfc4045868f94e2d979c09602808a278af0ab971d09c81f9acd0ffc008ca6d47b53b59718e6cad2', 1, 1, 'authToken', '[]', 0, '2021-12-13 11:07:37', '2021-12-13 11:07:37', '2022-12-13 12:07:37'),
('bf5e7eedefd7d1e568f7db846409488cf96abbf7e805d0bfe2e21b93b67bec09c5ddeb0c1b6dbaea', 3, 1, 'authToken', '[]', 1, '2021-11-13 15:51:45', '2021-11-13 15:51:45', '2022-11-13 16:51:45'),
('bf87853b7bbba2836b8d357a12f4252a25bd8a7d98f0f2a772f672cf22c64004c67ec6430e8cf300', 1, 2, NULL, '[]', 0, '2021-10-22 23:19:58', '2021-10-22 23:19:58', '2021-10-24 00:19:58'),
('c1712eb0fdc3ccb8ffd60abed5b80d6f9d60da4d3b1ae4cbdef3e0e1091d8e7dc5af96ec4b0ac96d', 1, 1, 'authToken', '[]', 0, '2021-12-09 11:29:06', '2021-12-09 11:29:06', '2022-12-09 12:29:06'),
('c17139ecc28473c2ec338ec8f04eea988a5c108914af16ff44d208078196298fd6184e8d65b68696', 3, 1, 'authToken', '[]', 0, '2021-11-13 15:35:44', '2021-11-13 15:35:44', '2022-11-13 16:35:44'),
('c2270daaae1bf6aaa0259ed527d0924fc49db659c2eb89b9a46b2326a783af0022bc0201b006fbff', 3, 1, 'authToken', '[]', 1, '2021-10-10 20:55:55', '2021-10-10 20:55:55', '2022-10-10 21:55:55'),
('c33f55d6a665f5da06c213f6bb1fb753a3e53628fe0461d64808bde4bdb6f3081be07404107122d4', 1, 1, 'authToken', '[]', 0, '2021-12-03 11:50:10', '2021-12-03 11:50:10', '2022-12-03 12:50:10'),
('c47c59e2519cc7ffd6592c99dc099577bc19684f2523b96cda9e5092c06b8bca145d09cd1a921d90', 1, 1, 'authToken', '[]', 0, '2021-11-17 07:59:20', '2021-11-17 07:59:20', '2022-11-17 08:59:20'),
('c67ff7f9bdea90c3af112dbc6235d39a55d925f4fe25ff4baa92acba80e797603d979e84557b5499', 1, 1, 'authToken', '[]', 0, '2021-12-12 18:43:48', '2021-12-12 18:43:48', '2022-12-12 19:43:48'),
('c8617906b77610c9d35356153ee3a7f79f83a85b79df3ccfd2fcb9e9d753feaab2de00dffd2716d9', 1, 1, 'authToken', '[]', 0, '2021-11-17 11:55:23', '2021-11-17 11:55:23', '2022-11-17 12:55:23'),
('c98a3b2c35f423203198992ed4488ecbb56004dc63114d0a262a1f63c2b65249c7812150fa2d2735', 1, 2, NULL, '[]', 0, '2021-10-22 23:20:28', '2021-10-22 23:20:28', '2021-10-24 00:20:28'),
('ca29a639dc8435f4bde601a11826f713cfcfd96791d97432e71dc63d465e825dc98173501dea9cc7', 10, 1, 'authToken', '[]', 0, '2022-01-01 22:44:00', '2022-01-01 22:44:00', '2023-01-01 23:44:00'),
('cba6711d77e0a4f77a048f8009b539f0e1acb36d3c85ff4967627d449f9b906338df8b710ffb1feb', 1, 1, 'authToken', '[]', 0, '2021-12-15 13:58:25', '2021-12-15 13:58:25', '2022-12-15 14:58:25'),
('cbb71cf97316d1ade3ab92305ce11c712654f845e4f36b64832c785212ef8ebba084a119673881d9', 10, 1, 'authToken', '[]', 0, '2022-01-27 16:43:26', '2022-01-27 16:43:26', '2023-01-27 17:43:26'),
('cd52fd0ec5a19731d4632b398e431ec9c23334b8320ad6804cf6beab113efc09cc203415a4f0f9a9', 3, 1, 'authToken', '[]', 0, '2021-10-16 01:40:13', '2021-10-16 01:40:13', '2022-10-16 02:40:13'),
('cd9be45652921abb3d7298abc5490deeb194cf43eaf146d7e45725ffaa5e36460f9e6b343695d461', 10, 1, 'authToken', '[]', 0, '2021-11-23 20:27:39', '2021-11-23 20:27:39', '2022-11-23 21:27:39'),
('cdaa59cc0bd5bf75ed929e1c050cba5b3ba89e31438bbdf605833066fef2c8835e9af6db7c1e07ec', 10, 1, 'authToken', '[]', 1, '2022-01-27 11:41:07', '2022-01-27 11:41:07', '2023-01-27 12:41:07'),
('ce843d96c0df7b364eaf7b13a0d73ef6c6f0834350986e553bf5f844c62b334548ff105287d84ad6', 3, 1, 'authToken', '[]', 1, '2021-11-14 10:52:39', '2021-11-14 10:52:39', '2022-11-14 11:52:39'),
('cffc546eabd4e27497a8cace4bc3d1a2979197792abc6abdadddfe1ea1ae556ee862fb7c7650559a', 1, 1, 'authToken', '[]', 1, '2021-09-04 17:23:57', '2021-09-04 17:23:57', '2022-09-04 18:23:57'),
('d1c51dec886787cb7b96bc379e79aef69295695c2f09863af48592ce544ecfa63bf179fb318aaf46', 3, 1, 'authToken', '[]', 1, '2021-11-14 10:40:41', '2021-11-14 10:40:41', '2022-11-14 11:40:41'),
('d208729649ce9206382fe7e2734ea18c371e7ea289648860a92764de81ae4c5606e0150d894bd33b', 10, 1, 'authToken', '[]', 0, '2022-01-01 22:45:39', '2022-01-01 22:45:39', '2023-01-01 23:45:39'),
('d223df55853ab385338dacd4aa8a8de21684b0a75ae05490f57b234a11e843fec422843b1f19cf37', 10, 1, 'authToken', '[]', 0, '2021-11-23 21:06:30', '2021-11-23 21:06:30', '2022-11-23 22:06:30'),
('d28e80a5169af82f3e57d07c16a10f5fda5af12e305c30101a32470e8ff2cf2ed604782ee1ebd351', 10, 1, 'authToken', '[]', 0, '2021-11-23 20:27:19', '2021-11-23 20:27:19', '2022-11-23 21:27:19'),
('d58725b15f0cd160575ed2deee2f1b1df363e303b6160f56650d12685e841c89f835a54b1407f644', 10, 1, 'authToken', '[]', 0, '2021-11-20 01:42:16', '2021-11-20 01:42:16', '2022-11-20 02:42:16'),
('d6c3e3f4fb7a4ed8de3eab13fc723502473702cd7833e022d17e516ee4b73f03f9cd13003d6a7dce', 10, 1, 'authToken', '[]', 1, '2021-11-18 14:31:21', '2021-11-18 14:31:21', '2022-11-18 15:31:21'),
('da809497e932fc7ea1b883079fe9e2e2f7d0e37e0e084758a7a7d0894c87163f5d504b0b12626f42', 10, 1, 'authToken', '[]', 0, '2021-11-23 21:02:31', '2021-11-23 21:02:31', '2022-11-23 22:02:31'),
('dac400e263532767153d42399d1d15801e76b3a2a3575ba87b965656895017edc37fa293cdfe2dfb', 1, 1, 'authToken', '[]', 1, '2021-09-07 21:55:48', '2021-09-07 21:55:48', '2022-09-07 22:55:48'),
('dc0f9552b587ef4e487ea4b313d891b87620ace3ea91ae44be5765d1d83c8f29a9e14ad6d8f7564f', 10, 1, 'authToken', '[]', 0, '2021-11-23 20:22:46', '2021-11-23 20:22:46', '2022-11-23 21:22:46'),
('dce984b7e2afa2a723b424f548e020d0a5da8b652f6ad07de12fd705b84dfcf1db1d21f812fa45c1', 10, 2, NULL, '[]', 1, '2022-01-05 20:49:15', '2022-01-05 20:49:15', '2023-01-05 21:49:15'),
('dea6f6033ea3c98b66e1ad269930c8e76f2f452f69ac32dc28f47cd9aa6d130e6b0570e9eb4bade9', 3, 1, 'authToken', '[]', 0, '2021-11-14 13:11:22', '2021-11-14 13:11:22', '2022-11-14 14:11:22'),
('dfb82370a6c8643c0a5ecebedda79ddc900b8e247aaf51ff425e100e08860d73c1845801d19b684c', 1, 1, 'authToken', '[]', 0, '2022-01-06 17:47:46', '2022-01-06 17:47:46', '2023-01-06 18:47:46'),
('e442b7977505eb26fd47637f045a475f8f7a60317f9c7b7fab088b549a9ea43bf71a3e42f1e173d7', 10, 1, 'authToken', '[]', 0, '2022-01-04 09:55:31', '2022-01-04 09:55:31', '2023-01-04 10:55:31'),
('e4adbb80cda4902c48b7904f0fa56d15407ef47de804120a6297471d994c08ddf454106e69daa346', 10, 1, 'authToken', '[]', 0, '2021-11-18 15:43:38', '2021-11-18 15:43:38', '2022-11-18 16:43:38'),
('e4bbfb7e7b11d3a4a83a167bbf770febf2043b33615458a621c9b1fd089b2b9bcf51cb7d331b7ced', 1, 1, 'authToken', '[]', 0, '2022-01-04 10:17:10', '2022-01-04 10:17:10', '2023-01-04 11:17:10'),
('e4e669f860621707604ee1fe316a2e4ead128aefb513fc49e590ca95b7219a9aca5b66819464febc', 1, 2, NULL, '[]', 0, '2021-11-17 11:56:53', '2021-11-17 11:56:53', '2022-11-17 12:56:53'),
('e4e8c00bbb5541e1bcad361753843e364b9733352bc4a41ff8111830f4662f71a83b05141f3cb314', 10, 1, 'authToken', '[]', 0, '2021-11-23 20:22:16', '2021-11-23 20:22:16', '2022-11-23 21:22:16'),
('e6778517398c953343fb045172866d30f1e8a71a799328499623be48ff5f7e1a09af3d14babc3769', 10, 1, 'authToken', '[]', 0, '2021-11-23 21:13:12', '2021-11-23 21:13:12', '2022-11-23 22:13:12'),
('e70115fea1ef8c72cb420fd79d6ffbf6e3fb77bf00a00914bf562ab7bcf91505d5e06628d4f26708', 11, 1, 'authToken', '[]', 0, '2022-01-26 22:08:01', '2022-01-26 22:08:01', '2023-01-26 23:08:01'),
('e7749e5221540c3f7dddeb651b57eb479e351904240422080c6f6fa94cd080fb61ee2894f969c822', 10, 1, 'authToken', '[]', 1, '2022-01-26 22:03:28', '2022-01-26 22:03:28', '2023-01-26 23:03:28'),
('ea42b39bae258be9c2c2f8ddaf0985e52841b39e396a1d8cd060c6338ed060df380e7ee538b067c6', 1, 1, 'authToken', '[]', 0, '2021-12-03 11:45:56', '2021-12-03 11:45:56', '2022-12-03 12:45:56'),
('ebd9a39d914c25fdddded0e29f3fdc1d3367e4633aefaa8c84e554229dfd572ae5760f8c5deaf714', 3, 1, 'authToken', '[]', 0, '2021-11-14 19:35:51', '2021-11-14 19:35:51', '2022-11-14 20:35:51'),
('edce1afb5f5e7c240828a0f3000af10e4bf499d335c02b2e9472db64561e2b5aafaf925b6fd86a09', 10, 2, NULL, '[]', 1, '2022-01-05 20:53:35', '2022-01-05 20:53:35', '2023-01-05 21:53:35'),
('edde53ea2b582f0af65b3472847f0f219a2a0f930e9b1a951fd2c37b873846e226c305eb53d68fc7', 10, 1, 'authToken', '[]', 0, '2021-11-23 20:44:06', '2021-11-23 20:44:06', '2022-11-23 21:44:06'),
('ef15a312442bae12448757d207f79168d626a05c10a8a994c02bf01b17ea3d0e1f7f401d6f56c69e', 1, 1, 'authToken', '[]', 0, '2021-12-12 18:29:26', '2021-12-12 18:29:26', '2022-12-12 19:29:26'),
('efa0f1f6267b5cdc53437f5a8d8ac47c577efc05cdd7d4e6d9a7090e178eefed4b0bf6e5226e8034', 10, 1, 'authToken', '[]', 0, '2021-11-29 12:14:05', '2021-11-29 12:14:05', '2022-11-29 13:14:05'),
('f49c0a625b229ba6a6b5c027134e046f0e5ccea60b303cade6bcb1c51723d1d38b1c009bbbeb9212', 10, 1, 'authToken', '[]', 1, '2022-01-04 10:10:24', '2022-01-04 10:10:24', '2023-01-04 11:10:24'),
('f5c4b1435c05db7a792d85ba9187bbccab6f68663e910397cf88dd36a540a6d4e749201a2838b28b', 10, 1, 'authToken', '[]', 1, '2022-01-10 13:00:42', '2022-01-10 13:00:42', '2023-01-10 14:00:42'),
('f988c5778ba9f14debdc86e3eca79d34c2684b02632810cb9bf5ecf4880602069de94cfdd91b549c', 1, 1, 'authToken', '[]', 1, '2021-09-04 17:23:39', '2021-09-04 17:23:39', '2022-09-04 18:23:39'),
('f9b7d278e47d698df3c78e37573c3447ee028ee130e5e016fc51d130093d29d96ce050c181b1fa58', 1, 2, NULL, '[]', 1, '2021-10-22 23:23:47', '2021-10-22 23:23:47', '2021-10-24 00:23:47'),
('faf8b2e9a9fb40f79489ef9f6264f82bc1cf99dd8ad0b335f35c449c817f97ee609f77d0a425c29f', 1, 1, 'authToken', '[]', 0, '2021-12-31 14:15:15', '2021-12-31 14:15:15', '2022-12-31 15:15:15'),
('fb489fbe38ff44f026ba589cbeabf9ce310d2d272b36289b6ee230a8df517b9054bb9b06553e745f', 7, 1, 'authToken', '[]', 0, '2021-10-22 22:10:21', '2021-10-22 22:10:21', '2022-10-22 23:10:21'),
('fd12d63a4424e3c541dab1c272261bef3bc148ad47b2834684f14e3c67684de10d839382e37a0501', 1, 1, 'authToken', '[]', 0, '2022-01-26 02:32:42', '2022-01-26 02:32:42', '2023-01-26 03:32:42'),
('ff075b7999dd3fddfe71cb457d26b46b374a8ddf17f2aa833f5dd9068e282ac7eaf05596ade42c54', 10, 1, 'authToken', '[]', 0, '2022-01-27 13:34:11', '2022-01-27 13:34:11', '2023-01-27 14:34:11');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'EnterMarket Personal Access Client', 'cT7JzoxDrnCNKwl2BiLF7blWcXhmY1IBC0ASoIOa', NULL, 'http://localhost', 1, 0, 0, '2021-08-14 19:56:53', '2021-08-14 19:56:53'),
(2, NULL, 'EnterMarket Password Grant Client', '4m2CwPSTg5Hra802Jdoky4MdLXdxCnL3F8VXeiID', 'users', 'http://localhost', 0, 1, 0, '2021-08-14 19:56:53', '2021-08-14 19:56:53');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2021-08-14 19:56:53', '2021-08-14 19:56:53');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_refresh_tokens`
--

INSERT INTO `oauth_refresh_tokens` (`id`, `access_token_id`, `revoked`, `expires_at`) VALUES
('2327bdc3b763c3cfa3060adfb9795d08165eb11899fbffb8083157378d7cec7a476bff7d51b92e06', 'f9b7d278e47d698df3c78e37573c3447ee028ee130e5e016fc51d130093d29d96ce050c181b1fa58', 0, '2022-10-23 00:23:47'),
('29aaf43ee72b506805321fb020ed887d10b1a4c026d5df976fbf289681b1b83331101c33b4a87805', 'b16f0ad5dd1a4fc654aabc4070c939995e018abfe6bb605e48da3c5be9f907e9ea55698337255085', 0, '2022-10-23 00:21:10'),
('2eea9dee963272555b2bb66f6a4d72d1c6a0b5c98d78b1677d5c700bb71325facd295c63ec54bf67', 'c98a3b2c35f423203198992ed4488ecbb56004dc63114d0a262a1f63c2b65249c7812150fa2d2735', 0, '2022-10-23 00:20:28'),
('3fcb9f4cd9907c63a9b7133023aaa38f8a4854d2184dfb764c56733b3de070813b3c018cded145ea', 'e4e669f860621707604ee1fe316a2e4ead128aefb513fc49e590ca95b7219a9aca5b66819464febc', 0, '2022-11-17 12:56:53'),
('402f0be9d1f76af90ba8ed6af93f697461c2b877bcf702e5e9f2a7e815ce74883754eea6f727e7ae', '10ed4b189b932c372909de83fe81f3521fa42829f0a0a600759a3c9793ecc793eef420061d863713', 0, '2022-09-03 12:24:27'),
('42e9f033663bac414d551ef61aef9c99e3742517b44f327e35c0623b658a7a674c6f41940c280dd4', 'dce984b7e2afa2a723b424f548e020d0a5da8b652f6ad07de12fd705b84dfcf1db1d21f812fa45c1', 0, '2023-01-05 21:49:15'),
('4e33c16ccaf28ced110aa0efae87205cc5d08fef8cc5ce8d4ca134034d8532e3f195f6c091ed3ade', '357e44f645c05590a2b56361270bbf62351155b9ce4feda946e82520a74501054808f1a346a624cb', 0, '2022-10-23 00:21:50'),
('5d1b571571d39fe175c6d2e50333b36812d9e71a0f27bb34cdc625ea01af3ff841aeff0c74d83030', '0cce80fe3bb352e2fd999ca11c1582714f94b19789d02d539202c5a21fd1d6ac4368222598b75f8a', 0, '2022-10-23 00:18:50'),
('89cb9b1713b06426c2eddadb2fc02dae3cbb0ffe96c84300e110dc8f1286ada2cb3d17eff4173099', '89f9871ad99301ff6010cfc970bf57c838d022ed4cf772b64518a5de0d2818f0adcea7ca06c0e724', 0, '2022-08-30 12:41:08'),
('ae37a47148839c225f553d02356e3552c3d98aac061f15e3ed6e90609284df0ffaca40d63ba06fb8', '7a06db577f92463065ed71d35e0bc8606c9efce708eefe2af1ca3500ff8a45563add26916f9acfb4', 0, '2022-10-23 00:27:41'),
('ba2e230be49d1f33f74e514f6a0674ee7457490bdc0ca1f86ce20d7f13439f86919db698ae74c389', '15c415958c5ef320dd511ea00d6ce92a50fb39e1d23a5b31a1c8fd7f75e9d29afb77ec925581ba78', 0, '2022-08-14 21:01:06'),
('d3dffbc26e12e1c5b1d62672ca274e8ee97ffef17fcfe74e50ab4a9731ceb6fb629dedc4214ebf75', '9afabe25521049e8e891aa595414bd62b632cd5c1b95ceb539889984053401b7186398a4d2bb3e51', 0, '2023-01-05 21:54:51'),
('d77f17463f2db53b30dd3d6894bd833da81386cf6a6b3ec607d81a70751729472e7330baa46fc8a8', 'bf87853b7bbba2836b8d357a12f4252a25bd8a7d98f0f2a772f672cf22c64004c67ec6430e8cf300', 0, '2022-10-23 00:19:58'),
('fc52eaea0ebe39d56b84742352a9326e5caea74f76f51fb9f998291444fc9e3219f206564ab6be12', 'edce1afb5f5e7c240828a0f3000af10e4bf499d335c02b2e9472db64561e2b5aafaf925b6fd86a09', 0, '2023-01-05 21:53:35');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `total_amount` int(11) NOT NULL,
  `tax` int(11) NOT NULL DEFAULT 0,
  `commission` int(11) NOT NULL DEFAULT 0,
  `shipping_charges` int(11) NOT NULL DEFAULT 0,
  `promo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount` int(11) NOT NULL DEFAULT 0,
  `grand_total` int(11) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isScheduled` tinyint(1) DEFAULT NULL,
  `schedule_time` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `items` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'Order-899',
  `payment_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `shipping_method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logistic` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logistic_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `view_at` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `order_no`, `status`, `total_amount`, `tax`, `commission`, `shipping_charges`, `promo`, `discount`, `grand_total`, `user_id`, `created_at`, `updated_at`, `title`, `isScheduled`, `schedule_time`, `items`, `name`, `payment_status`, `shipping_method`, `weight`, `logistic`, `logistic_status`, `view_at`) VALUES
(22, '15696389', 'pending', 902700, 0, 0, 0, 'none', 0, 902700, 3, '2021-10-04 00:17:08', '2021-10-04 00:17:08', 'Month delivery', 0, NULL, 25, 'Order-899', 'pending', '', '10', NULL, NULL, NULL),
(23, '59048896', 'pending', 1402000, 0, 0, 0, NULL, 0, 1402000, 3, '2021-10-09 22:52:20', '2021-10-09 22:52:20', 'Order', 0, '0:00', 8, 'Order-899', 'pending', '', '10', NULL, NULL, NULL),
(24, '37574790', 'pending', 802000, 0, 0, 0, NULL, 0, 802000, 3, '2021-10-09 23:02:08', '2021-10-09 23:02:08', 'Order', 0, '0:00', 5, 'Order-899', 'pending', '', '40', NULL, NULL, NULL),
(25, '75071150', 'pending', 802000, 0, 0, 0, NULL, 0, 802000, 3, '2021-10-09 23:03:30', '2021-10-09 23:03:30', 'Order', 0, '0:00', 5, 'Order-899', 'pending', '', '33', NULL, NULL, NULL),
(26, '40882933', 'pending', 802000, 0, 0, 0, NULL, 0, 802000, 3, '2021-10-09 23:03:57', '2021-10-09 23:03:57', 'Order', 0, '0:00', 5, 'Order-899', 'pending', '', '39', NULL, NULL, NULL),
(27, '88659878', 'pending', 802000, 0, 0, 0, NULL, 0, 802000, 3, '2021-10-09 23:04:39', '2021-10-09 23:04:39', 'Order', 0, '0:00', 5, 'Order-899', 'pending', '', '40', NULL, NULL, NULL),
(28, '25109772', 'pending', 802000, 0, 0, 0, NULL, 0, 802000, 3, '2021-10-09 23:39:46', '2021-10-09 23:39:46', 'Order', 0, '0:00', 5, 'Order-899', 'pending', '', '90', NULL, NULL, NULL),
(30, '20399639', 'pending', 8000, 0, 0, 0, NULL, 0, 8000, 3, '2021-10-09 23:42:54', '2021-10-10 01:10:09', 'Order', 0, '0:00', 4, 'Order-899', 'paid', '', '10', NULL, NULL, NULL),
(36, '75538675', 'pending', 6000, 0, 0, 0, NULL, 0, 6000, 3, '2021-10-10 01:05:20', '2021-10-10 01:05:20', 'Order', 0, '0:00', 3, NULL, 'pending', '', '30', NULL, NULL, NULL),
(37, '48829414', 'pending', 6000, 0, 0, 0, NULL, 0, 6000, 3, '2021-10-10 23:00:49', '2021-10-10 23:01:13', 'Order', 0, '0:00', 3, NULL, 'paid', '', '23', NULL, NULL, NULL),
(38, '92899026', 'pending', 202600, 0, 0, 0, NULL, 0, 202600, 3, '2021-10-15 01:34:49', '2022-01-02 00:00:32', 'Order', 0, '0:00', 5, NULL, 'paid', '', '35', NULL, 'out for delivery', NULL),
(39, '42163796', 'pending', 2000, 0, 0, 0, 'none', 0, 2000, 1, '2021-10-16 01:32:18', '2021-10-16 01:32:18', 'Month delivery', 1, NULL, 1, NULL, 'pending', '', '28', NULL, NULL, NULL),
(40, '32542601', 'pending', 200200, 0, 0, 0, NULL, 0, 200200, 3, '2021-10-16 01:46:04', '2021-10-16 01:46:04', 'Order', 1, '0:00', 2, NULL, 'pending', '', '20', NULL, NULL, NULL),
(41, '89525050', 'pending', 2000, 0, 0, 0, 'none', 0, 2000, 1, '2021-10-16 01:52:50', '2021-10-16 01:52:50', 'Month delivery', 1, NULL, 1, NULL, 'pending', '', '22', NULL, NULL, NULL),
(46, '88471097', 'pending', 4600, 0, 0, 0, NULL, 0, 4600, 3, '2021-11-14 15:18:23', '2021-11-14 15:18:23', 'Order', 0, '2021-11-14T15:18:03.231Z', 3, NULL, 'pending', '', '20', NULL, NULL, NULL),
(49, '69949587', 'assigned', 4600, 0, 0, 0, NULL, 0, 4600, 3, '2021-11-14 18:14:04', '2022-01-02 00:04:49', 'Order', 1, '2021-11-19', 3, 'Order-899', 'paid', '', '30', 'kwik', 'out for delivery', NULL),
(50, '45062031', 'assigned', 2200, 0, 0, 0, NULL, 0, 2200, 3, '2021-11-14 19:25:32', '2022-01-02 00:04:46', 'Order', 1, '2021-11-28', 1, 'Order-6754', 'paid', 'schedule', '35', 'gokada', 'out for delivery', NULL),
(51, '34278636', 'pending', 3500, 0, 0, 0, NULL, 0, 3500, 10, '2021-12-10 23:54:37', '2021-12-10 23:54:37', 'Order', 0, '2021-12-10T23:53:24.568Z', 1, 'Order-5598', 'pending', 'standard', '10', NULL, NULL, NULL),
(52, '74506528', 'assigned', 3500, 0, 0, 0, NULL, 0, 3500, 10, '2021-12-28 20:52:38', '2022-01-27 14:04:28', 'Order', 0, '2021-12-28T20:52:26.001Z', 1, 'Order-6527', 'paid', 'express', NULL, 'gokada', 'failed', '2022-01-27 15:04:28'),
(53, '10141567', 'pending', 10500, 0, 0, 0, NULL, 0, 10500, 10, '2022-01-01 23:01:14', '2022-01-01 23:01:14', 'Order', 0, '2022-01-01T23:00:19.337Z', 3, 'My Order', 'pending', 'standard', '30', NULL, NULL, NULL),
(54, '20237231', 'assigned', 10500, 0, 0, 0, NULL, 0, 10500, 10, '2022-01-01 23:03:31', '2022-01-27 14:04:19', 'Order', 0, '2022-01-01T23:01:57.156Z', 3, 'My Order', 'paid', 'express', '30', 'kwik', 'delivered', '2022-01-27 15:04:19'),
(57, '85324063', 'pending', 14000, 0, 0, 0, NULL, 0, 14000, 12, '2022-01-26 22:45:54', '2022-01-26 22:45:54', 'Order', 0, '2022-01-26T22:32:52.739Z', 4, 'Order-8859', 'pending', 'standard', '40', NULL, NULL, NULL),
(59, '30411556', 'pending', 14000, 0, 0, 0, NULL, 0, 14000, 12, '2022-01-27 00:35:59', '2022-01-27 00:35:59', 'Order', 0, '2022-01-27T00:35:51.995Z', 4, 'Order-5962', 'pending', 'standard', '40', NULL, NULL, NULL),
(61, '59627260', 'pending', 14000, 0, 0, 0, NULL, 0, 14000, 12, '2022-01-27 00:43:04', '2022-01-27 00:43:04', 'Order', 0, '2022-01-27T00:42:58.527Z', 4, 'Order-6664', 'pending', 'standard', '40', NULL, NULL, NULL),
(62, '37572973', 'pending', 14000, 0, 0, 0, NULL, 0, 14000, 12, '2022-01-27 00:50:28', '2022-01-27 00:50:28', 'Order', 0, '2022-01-27T00:50:22.791Z', 4, 'Order-1097', 'pending', 'standard', '40', NULL, NULL, NULL),
(63, '35660144', 'pending', 14000, 0, 0, 0, NULL, 0, 14000, 12, '2022-01-27 00:51:55', '2022-01-27 00:51:55', 'Order', 0, '2022-01-27T00:51:45.322Z', 4, 'Order-7584', 'pending', 'standard', '40', NULL, NULL, NULL),
(65, '82968176', 'pending', 16000, 0, 0, 0, NULL, 0, 16000, 10, '2022-01-27 16:59:10', '2022-01-27 16:59:10', 'Order', 0, '2022-01-27T16:56:18.611Z', 4, 'Order-3471', 'pending', 'standard', '40', NULL, NULL, NULL),
(66, '93654670', 'pending', 16000, 0, 0, 0, NULL, 0, 16000, 10, '2022-01-27 17:00:18', '2022-01-27 17:00:18', 'Order', 0, '2022-01-27T16:56:18.611Z', 4, 'Order-4268', 'pending', 'standard', '40', NULL, NULL, NULL),
(67, '84056645', 'pending', 16000, 0, 0, 0, NULL, 0, 16000, 10, '2022-01-27 17:00:29', '2022-01-27 17:00:29', 'Order', 0, '2022-01-27T16:56:18.611Z', 4, 'Order-9980', 'pending', 'standard', '40', NULL, NULL, NULL),
(68, '72799500', 'pending', 16000, 0, 0, 0, NULL, 0, 16000, 10, '2022-01-27 17:00:47', '2022-01-27 17:00:47', 'Order', 0, '2022-01-27T16:56:18.611Z', 4, 'Order-9817', 'pending', 'standard', '40', NULL, NULL, NULL),
(69, '88976305', 'pending', 16000, 0, 0, 0, NULL, 0, 16000, 10, '2022-01-27 17:02:27', '2022-01-27 17:02:27', 'Order', 0, '2022-01-27T16:56:18.611Z', 4, 'Order-2325', 'pending', 'standard', '40', NULL, NULL, NULL),
(70, '42858967', 'pending', 16000, 0, 0, 0, NULL, 0, 16000, 10, '2022-01-27 17:02:59', '2022-01-27 17:02:59', 'Order', 0, '2022-01-27T16:56:18.611Z', 4, 'Order-8380', 'pending', 'standard', '40', NULL, NULL, NULL),
(71, '26084460', 'pending', 16000, 0, 0, 0, NULL, 0, 16000, 10, '2022-01-27 17:03:21', '2022-01-27 17:03:21', 'Order', 0, '2022-01-27T16:56:18.611Z', 4, 'Order-3077', 'pending', 'standard', '40', NULL, NULL, NULL),
(72, '95499169', 'pending', 16000, 0, 0, 0, NULL, 0, 16000, 10, '2022-01-27 17:03:33', '2022-01-27 17:03:33', 'Order', 0, '2022-01-27T16:56:18.611Z', 4, 'Order-6513', 'pending', 'standard', '40', NULL, NULL, NULL),
(73, '97333908', 'pending', 16000, 0, 0, 0, NULL, 0, 16000, 10, '2022-01-27 17:03:44', '2022-01-27 17:03:44', 'Order', 0, '2022-01-27T16:56:18.611Z', 4, 'Order-4064', 'pending', 'standard', '40', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_histories`
--

CREATE TABLE `order_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `subtotal` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `brand_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `store_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `store_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_histories`
--

INSERT INTO `order_histories` (`id`, `product_id`, `subtotal`, `quantity`, `price`, `brand_name`, `product_name`, `store_name`, `description`, `image`, `user_id`, `order_id`, `created_at`, `updated_at`, `store_id`) VALUES
(17, NULL, 750000, 3, 250000, 'Ps5', 'Ps5', 'Hubmart', 'The PS5™ console unleashes new gaming possibilities that you never anticipated. Experience lightning fast loading with an ultra-high speed SSD, deeper immersion .', 'https://res.cloudinary.com/bizguruh-com/image/upload/v1624019846/tim-mossholder-8R-mXppeakM-unsplash_gj7ykr.jpg', 1, 22, '2021-10-04 00:17:08', '2021-10-04 00:17:08', 0),
(18, NULL, 150000, 1, 150000, 'Ps4', 'Ps4', 'Hubmart', 'The PS4™ console unleashes new gaming possibilities that you never anticipated. Experience lightning fast loading with an ultra-high speed SSD, deeper immersion .', 'https://res.cloudinary.com/bizguruh-com/image/upload/v1624019846/tim-mossholder-8R-mXppeakM-unsplash_gj7ykr.jpg', 1, 22, '2021-10-04 00:17:08', '2021-10-04 00:17:08', 0),
(19, NULL, 900, 1, 900, 'Sunlight Detergent', 'Sunlight Detergent', 'Hubmart', 'Sunlight 2in1 Spring Sensations Handwash Washing Powder is ready to get to work! Made with the best that Sunlight offer.', 'https://res.cloudinary.com/bizguruh-com/image/upload/v1624019846/tim-mossholder-8R-mXppeakM-unsplash_gj7ykr.jpg', 1, 22, '2021-10-04 00:17:08', '2021-10-04 00:17:08', 0),
(20, NULL, 1800, 2, 900, 'Sunlight Detergent', 'Sunlight Detergent', 'Spar', 'Sunlight 2in1 Spring Sensations Handwash Washing Powder is ready to get to work! Made with the best that Sunlight offer.', 'https://res.cloudinary.com/bizguruh-com/image/upload/v1624019846/tim-mossholder-8R-mXppeakM-unsplash_gj7ykr.jpg', 1, 22, '2021-10-04 00:17:08', '2021-10-04 00:17:08', 0),
(21, 1, 1400000, 7, 200000, 'Superman Action figure', 'Superman Action figure', 'Hubmart', 'SUperman toy for children', 'https://res.cloudinary.com/bizguruh-com/image/upload/v1624019846/tim-mossholder-8R-mXppeakM-unsplash_gj7ykr.jpg', 3, 23, '2021-10-09 22:52:20', '2021-10-09 22:52:20', 0),
(22, 3, 2000, 1, 2000, 'Denim Jean', 'Denim Jean', 'Hubmart', 'Jean for women', 'https://res.cloudinary.com/bizguruh-com/image/upload/v1624019846/tim-mossholder-8R-mXppeakM-unsplash_gj7ykr.jpg', 3, 23, '2021-10-09 22:52:20', '2021-10-09 22:52:20', 0),
(23, 1, 800000, 4, 200000, 'Superman Action figure', 'Superman Action figure', 'Hubmart', 'SUperman toy for children', 'https://res.cloudinary.com/bizguruh-com/image/upload/v1624019846/tim-mossholder-8R-mXppeakM-unsplash_gj7ykr.jpg', 3, 24, '2021-10-09 23:02:08', '2021-10-09 23:02:08', 0),
(24, 3, 2000, 1, 2000, 'Denim Jean', 'Denim Jean', 'Hubmart', 'Jean for women', 'https://res.cloudinary.com/bizguruh-com/image/upload/v1624019846/tim-mossholder-8R-mXppeakM-unsplash_gj7ykr.jpg', 3, 24, '2021-10-09 23:02:08', '2021-10-09 23:02:08', 0),
(25, 1, 800000, 4, 200000, 'Superman Action figure', 'Superman Action figure', 'Hubmart', 'SUperman toy for children', 'https://res.cloudinary.com/bizguruh-com/image/upload/v1624019846/tim-mossholder-8R-mXppeakM-unsplash_gj7ykr.jpg', 3, 25, '2021-10-09 23:03:30', '2021-10-09 23:03:30', 0),
(26, 3, 2000, 1, 2000, 'Denim Jean', 'Denim Jean', 'Hubmart', 'Jean for women', 'https://res.cloudinary.com/bizguruh-com/image/upload/v1624019846/tim-mossholder-8R-mXppeakM-unsplash_gj7ykr.jpg', 3, 25, '2021-10-09 23:03:30', '2021-10-09 23:03:30', 0),
(27, 1, 800000, 4, 200000, 'Superman Action figure', 'Superman Action figure', 'Hubmart', 'SUperman toy for children', 'https://res.cloudinary.com/bizguruh-com/image/upload/v1624019846/tim-mossholder-8R-mXppeakM-unsplash_gj7ykr.jpg', 3, 26, '2021-10-09 23:03:57', '2021-10-09 23:03:57', 0),
(28, 3, 2000, 1, 2000, 'Denim Jean', 'Denim Jean', 'Hubmart', 'Jean for women', 'https://res.cloudinary.com/bizguruh-com/image/upload/v1624019846/tim-mossholder-8R-mXppeakM-unsplash_gj7ykr.jpg', 3, 26, '2021-10-09 23:03:57', '2021-10-09 23:03:57', 0),
(29, 1, 800000, 4, 200000, 'Superman Action figure', 'Superman Action figure', 'Hubmart', 'SUperman toy for children', 'https://res.cloudinary.com/bizguruh-com/image/upload/v1624019846/tim-mossholder-8R-mXppeakM-unsplash_gj7ykr.jpg', 3, 27, '2021-10-09 23:04:39', '2021-10-09 23:04:39', 0),
(30, 3, 2000, 1, 2000, 'Denim Jean', 'Denim Jean', 'Hubmart', 'Jean for women', 'https://res.cloudinary.com/bizguruh-com/image/upload/v1624019846/tim-mossholder-8R-mXppeakM-unsplash_gj7ykr.jpg', 3, 27, '2021-10-09 23:04:39', '2021-10-09 23:04:39', 0),
(31, 1, 800000, 4, 200000, 'Superman Action figure', 'Superman Action figure', 'Hubmart', 'SUperman toy for children', 'https://res.cloudinary.com/bizguruh-com/image/upload/v1624019846/tim-mossholder-8R-mXppeakM-unsplash_gj7ykr.jpg', 3, 28, '2021-10-09 23:39:46', '2021-10-09 23:39:46', 0),
(32, 3, 2000, 1, 2000, 'Denim Jean', 'Denim Jean', 'Hubmart', 'Jean for women', 'https://res.cloudinary.com/bizguruh-com/image/upload/v1624019846/tim-mossholder-8R-mXppeakM-unsplash_gj7ykr.jpg', 3, 28, '2021-10-09 23:39:46', '2021-10-09 23:39:46', 0),
(34, 3, 8000, 4, 2000, 'Denim Jean', 'Denim Jean', 'Hubmart', 'Jean for women', 'https://res.cloudinary.com/bizguruh-com/image/upload/v1624019846/tim-mossholder-8R-mXppeakM-unsplash_gj7ykr.jpg', 3, 30, '2021-10-09 23:42:54', '2021-10-09 23:42:54', 0),
(40, 3, 6000, 3, 2000, 'Denim Jean', 'Denim Jean', 'Hubmart', 'Jean for women', 'https://res.cloudinary.com/bizguruh-com/image/upload/v1624019846/tim-mossholder-8R-mXppeakM-unsplash_gj7ykr.jpg', 3, 36, '2021-10-10 01:05:20', '2021-10-10 01:05:20', 0),
(41, 3, 6000, 3, 2000, 'Denim Jean', 'Denim Jean', 'Hubmart', 'Jean for women', 'https://res.cloudinary.com/bizguruh-com/image/upload/v1624019846/tim-mossholder-8R-mXppeakM-unsplash_gj7ykr.jpg', 3, 37, '2021-10-10 23:00:49', '2021-10-10 23:00:49', 0),
(42, 1, 200000, 1, 200000, 'Superman Action figure', 'Superman Action figure', 'Hubmart', 'SUperman toy for children', 'https://res.cloudinary.com/bizguruh-com/image/upload/v1624019846/tim-mossholder-8R-mXppeakM-unsplash_gj7ykr.jpg', 3, 38, '2021-10-15 01:34:49', '2021-10-15 01:34:49', 0),
(43, 2, 600, 3, 200, 'Waw Detergent', 'Waw Detergent', 'Hubmart', 'For washing and so much more', 'https://res.cloudinary.com/bizguruh-com/image/upload/v1624019846/tim-mossholder-8R-mXppeakM-unsplash_gj7ykr.jpg', 3, 38, '2021-10-15 01:34:49', '2021-10-15 01:34:49', 0),
(44, 3, 2000, 1, 2000, 'Denim Jean', 'Denim Jean', 'Hubmart', 'Jean for women', 'https://res.cloudinary.com/bizguruh-com/image/upload/v1624019846/tim-mossholder-8R-mXppeakM-unsplash_gj7ykr.jpg', 3, 38, '2021-10-15 01:34:49', '2021-10-15 01:34:49', 0),
(45, 3, 2000, 1, 2000, 'Denim Jean', 'Denim Jean', 'Spar', 'Jean for women', 'https://res.cloudinary.com/bizguruh-com/image/upload/v1624019846/tim-mossholder-8R-mXppeakM-unsplash_gj7ykr.jpg', 1, 39, '2021-10-16 01:32:18', '2021-10-16 01:32:18', 0),
(46, 1, 200000, 1, 200000, 'Superman Action figure', 'Superman Action figure', 'Hubmart', 'SUperman toy for children', 'https://res.cloudinary.com/bizguruh-com/image/upload/v1624019846/tim-mossholder-8R-mXppeakM-unsplash_gj7ykr.jpg', 3, 40, '2021-10-16 01:46:04', '2021-10-16 01:46:04', 0),
(47, 2, 200, 1, 200, 'Waw Detergent', 'Waw Detergent', 'Hubmart', 'For washing and so much more', 'https://res.cloudinary.com/bizguruh-com/image/upload/v1624019846/tim-mossholder-8R-mXppeakM-unsplash_gj7ykr.jpg', 3, 40, '2021-10-16 01:46:04', '2021-10-16 01:46:04', 0),
(48, 3, 2000, 1, 2000, 'Denim Jean', 'Denim Jean', 'Spar', 'Jean for women', 'https://res.cloudinary.com/bizguruh-com/image/upload/v1624019846/tim-mossholder-8R-mXppeakM-unsplash_gj7ykr.jpg', 1, 41, '2021-10-16 01:52:50', '2021-10-16 01:52:50', 0),
(57, 1, 4400, 2, 2200, 'Superman Action figure', 'Superman Action figure', 'Hubmart', 'SUperman toy for children', 'https://res.cloudinary.com/bizguruh-com/image/upload/v1624019846/tim-mossholder-8R-mXppeakM-unsplash_gj7ykr.jpg', 3, 46, '2021-11-14 15:18:23', '2021-11-14 15:18:23', 0),
(58, 2, 200, 1, 200, 'Waw Detergent', 'Waw Detergent', 'Hubmart', 'For washing and so much more', 'https://res.cloudinary.com/bizguruh-com/image/upload/v1624019846/tim-mossholder-8R-mXppeakM-unsplash_gj7ykr.jpg', 3, 46, '2021-11-14 15:18:23', '2021-11-14 15:18:23', 0),
(63, 1, 4400, 2, 2200, 'Superman Action figure', 'Superman Action figure', 'Hubmart', 'SUperman toy for children', 'https://res.cloudinary.com/bizguruh-com/image/upload/v1624019846/tim-mossholder-8R-mXppeakM-unsplash_gj7ykr.jpg', 3, 49, '2021-11-14 18:14:04', '2021-11-14 18:14:04', 0),
(64, 2, 200, 1, 200, 'Waw Detergent', 'Waw Detergent', 'Hubmart', 'For washing and so much more', 'https://res.cloudinary.com/bizguruh-com/image/upload/v1624019846/tim-mossholder-8R-mXppeakM-unsplash_gj7ykr.jpg', 3, 49, '2021-11-14 18:14:04', '2021-11-14 18:14:04', 0),
(65, 1, 2200, 1, 2200, 'Superman Action figure', 'Superman Action figure', 'Hubmart', 'SUperman toy for children', 'https://res.cloudinary.com/bizguruh-com/image/upload/v1624019846/tim-mossholder-8R-mXppeakM-unsplash_gj7ykr.jpg', 3, 50, '2021-11-14 19:25:32', '2021-11-14 19:25:32', 0),
(66, 1, 3500, 1, 3500, 'jogg', 'jogg', 'Hubmart', 'fff', NULL, 10, 51, '2021-12-10 23:54:37', '2021-12-10 23:54:37', 1),
(67, 1, 3500, 1, 3500, 'jogg', 'jogg', 'Hubmart', 'fff', NULL, 10, 52, '2021-12-28 20:52:38', '2021-12-28 20:52:38', 1),
(68, 1, 10500, 3, 3500, 'jogg', 'jogg', 'Hubmart', 'fff', NULL, 10, 53, '2022-01-01 23:01:14', '2022-01-01 23:01:14', 1),
(69, 1, 10500, 3, 3500, 'jogg', 'jogg', 'Hubmart', 'fff', NULL, 10, 54, '2022-01-01 23:03:31', '2022-01-01 23:03:31', 1),
(72, 1, 14000, 4, 3500, 'jogg', 'jogg', 'Hubmart', 'fff', NULL, 12, 57, '2022-01-26 22:45:54', '2022-01-26 22:45:54', 1),
(74, 1, 14000, 4, 3500, 'jogg', 'jogg', 'Hubmart', 'fff', NULL, 12, 59, '2022-01-27 00:35:59', '2022-01-27 00:35:59', 1),
(76, 1, 14000, 4, 3500, 'jogg', 'jogg', 'Hubmart', 'fff', NULL, 12, 61, '2022-01-27 00:43:04', '2022-01-27 00:43:04', 1),
(77, 1, 14000, 4, 3500, 'jogg', 'jogg', 'Hubmart', 'fff', NULL, 12, 62, '2022-01-27 00:50:28', '2022-01-27 00:50:28', 1),
(78, 1, 14000, 4, 3500, 'jogg', 'jogg', 'Hubmart', 'fff', NULL, 12, 63, '2022-01-27 00:51:55', '2022-01-27 00:51:55', 1),
(80, 1, 16000, 4, 4000, 'Hubmart', 'jogg', 'Hubmart', 'fff', NULL, 10, 65, '2022-01-27 16:59:10', '2022-01-27 16:59:10', 1),
(81, 1, 16000, 4, 4000, 'Hubmart', 'jogg', 'Hubmart', 'fff', NULL, 10, 66, '2022-01-27 17:00:18', '2022-01-27 17:00:18', 1),
(82, 1, 16000, 4, 4000, 'Hubmart', 'jogg', 'Hubmart', 'fff', NULL, 10, 67, '2022-01-27 17:00:29', '2022-01-27 17:00:29', 1),
(83, 1, 16000, 4, 4000, 'Hubmart', 'jogg', 'Hubmart', 'fff', NULL, 10, 68, '2022-01-27 17:00:47', '2022-01-27 17:00:47', 1),
(84, 1, 16000, 4, 4000, 'Hubmart', 'jogg', 'Hubmart', 'fff', NULL, 10, 69, '2022-01-27 17:02:27', '2022-01-27 17:02:27', 1),
(85, 1, 16000, 4, 4000, 'Hubmart', 'jogg', 'Hubmart', 'fff', NULL, 10, 70, '2022-01-27 17:02:59', '2022-01-27 17:02:59', 1),
(86, 1, 16000, 4, 4000, 'Hubmart', 'jogg', 'Hubmart', 'fff', NULL, 10, 71, '2022-01-27 17:03:21', '2022-01-27 17:03:21', 1),
(87, 1, 16000, 4, 4000, 'Hubmart', 'jogg', 'Hubmart', 'fff', NULL, 10, 72, '2022-01-27 17:03:33', '2022-01-27 17:03:33', 1),
(88, 1, 16000, 4, 4000, 'Hubmart', 'jogg', 'Hubmart', 'fff', NULL, 10, 73, '2022-01-27 17:03:44', '2022-01-27 17:03:44', 1);

-- --------------------------------------------------------

--
-- Table structure for table `order_information`
--

CREATE TABLE `order_information` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firstName` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastName` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_method` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phoneNumber` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pickup_location` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extra_instruction` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_method` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `delivery_method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_information`
--

INSERT INTO `order_information` (`id`, `firstName`, `lastName`, `shipping_method`, `shipping_address`, `city`, `state`, `email`, `phoneNumber`, `pickup_location`, `extra_instruction`, `payment_method`, `user_id`, `order_id`, `created_at`, `updated_at`, `delivery_method`) VALUES
(6, 'Success', 'Ahon', 'home deleivery', '10,aregbesola street', 'lagos', 'Lagos', 'succy2010@gmail.com', '08102588390', NULL, 'Go home', 'Online', 1, 22, '2021-10-04 00:17:08', '2021-10-04 00:17:08', ''),
(7, 'Success', 'Ahon', NULL, '10 Aregbesola Street, Alapere', 'Alimosho', 'Lagos State', 'successahon@gmail.com', '08102588399', NULL, 'Drop on my doorstep', NULL, 3, 23, '2021-10-09 22:52:20', '2021-10-09 22:52:20', ''),
(8, 'Success', 'Ahon', NULL, '10 Aregbesola Street, Alapere', 'Alimosho', 'Lagos State', 'successahon@gmail.com', '08102588399', NULL, 'Drop in my house', NULL, 3, 24, '2021-10-09 23:02:08', '2021-10-09 23:02:08', ''),
(9, 'Success', 'Ahon', NULL, '10 Aregbesola Street, Alapere', 'Alimosho', 'Lagos State', 'successahon@gmail.com', '08102588399', NULL, 'Drop in my house', NULL, 3, 25, '2021-10-09 23:03:30', '2021-10-09 23:03:30', ''),
(10, 'Success', 'Ahon', NULL, '10 Aregbesola Street, Alapere', 'Alimosho', 'Lagos State', 'successahon@gmail.com', '08102588399', NULL, 'Drop in my house', NULL, 3, 26, '2021-10-09 23:03:57', '2021-10-09 23:03:57', ''),
(11, 'Success', 'Ahon', NULL, '10 Aregbesola Street, Alapere', 'Alimosho', 'Lagos State', 'successahon@gmail.com', '08102588399', NULL, 'Drop in my house', NULL, 3, 27, '2021-10-09 23:04:39', '2021-10-09 23:04:39', ''),
(12, 'Success', 'Ahon', NULL, '10 Aregbesola Street, Alapere', 'Alimosho', 'Lagos State', 'successahon@gmail.com', '08102588399', NULL, 'Drop at my house ooo', NULL, 3, 28, '2021-10-09 23:39:46', '2021-10-09 23:39:46', ''),
(13, 'Success', 'Ahon', NULL, '10 Aregbesola Street, Alapere', 'Alimosho', 'Lagos State', 'successahon@gmail.com', '08102588399', NULL, 'Drop on my doorstep', NULL, 3, 30, '2021-10-09 23:42:54', '2021-10-09 23:42:54', ''),
(19, 'Success', 'Ahon', NULL, '10 Aregbesola Street, Alapere', 'Alimosho', 'Lagos State', 'successahon@gmail.com', '08102588399', NULL, NULL, NULL, 3, 36, '2021-10-10 01:05:20', '2021-10-10 01:05:20', ''),
(20, 'Success', 'Ahon', NULL, '10 Aregbesola Street, Alapere', 'Alimosho', 'Lagos State', 'successahon@gmail.com', '08102588399', NULL, 'Just drop the item on my stairs', NULL, 3, 37, '2021-10-10 23:00:49', '2021-10-10 23:00:49', ''),
(21, 'Success', 'Ahon', 'standard', '10 Aregbesola Street, Alapere', 'Alimosho', 'Lagos State', 'successahon@gmail.com', '08102588399', NULL, 'Drop at home', NULL, 3, 38, '2021-10-15 01:34:49', '2021-10-15 01:34:49', 'home'),
(22, 'Success', 'Ahon', 'standard', '10,aregbesola street', 'lagos', 'Lagos', 'succy20100@gmail.com', '08102588390', NULL, 'Go home', 'Online', 1, 39, '2021-10-16 01:32:18', '2021-10-16 01:32:18', 'home'),
(23, 'Success', 'Ahon', 'standard', '10 Aregbesola Street, Alapere', 'Alimosho', 'Lagos State', 'successahon@gmail.com', '08102588399', NULL, NULL, NULL, 3, 40, '2021-10-16 01:46:04', '2021-10-16 01:46:04', 'home'),
(24, 'Success', 'Ahon', 'standard', '10,aregbesola street', 'lagos', 'Lagos', 'succy20100@gmail.com', '08102588390', NULL, 'Go home', 'Online', 1, 41, '2021-10-16 01:52:50', '2021-10-16 01:52:50', 'home'),
(27, 'Success', 'Ahon', 'schedule', '10 Aregbesola Street, Alapere', 'Alimosho', 'Lagos State', 'successahon@gmail.com', '08102588399', NULL, NULL, NULL, 3, 49, '2021-11-14 18:14:04', '2021-11-14 18:14:04', 'home'),
(28, 'Success', 'Ahon', 'schedule', '10 Aregbesola Street, Alapere', 'Alimosho', 'Lagos State', 'successahon@gmail.com', '08102588399', NULL, 'nope', NULL, 3, 50, '2021-11-14 19:25:32', '2021-11-14 19:25:32', 'home'),
(29, 'Success', 'Arudovwen', 'standard', '10 Aregbesola Street, Alapere', NULL, 'Lagos State', 'succy2010@gmail.com', '08102588399', NULL, 'none', NULL, 10, 51, '2021-12-10 23:54:37', '2021-12-10 23:54:37', 'home'),
(30, 'Success', 'Arudovwen', 'express', '10 Aregbesola Street, Alapere', NULL, 'Lagos State', 'succy2010@gmail.com', '08102588399', NULL, 'Pray for me', NULL, 10, 52, '2021-12-28 20:52:38', '2021-12-28 20:52:38', 'home'),
(31, 'Success', 'Arudovwen', 'standard', '10 Aregbesola Street, Alapere', 'Alimosho', 'Lagos State', 'succy2010@gmail.com', '08102588399', NULL, 'No', NULL, 10, 53, '2022-01-01 23:01:14', '2022-01-01 23:01:14', 'home'),
(32, 'Success', 'Arudovwen', 'express', '10 Aregbesola Street, Alapere', NULL, 'Lagos State', 'succy2010@gmail.com', '08102588399', NULL, 'nope', NULL, 10, 54, '2022-01-01 23:03:31', '2022-01-01 23:03:31', 'home'),
(35, 'John', 'Snow', 'standard', '10 Aregbesola Street, Alapere', 'Ajeromi-Ifelodun', 'Lagos State', 'arudovwen@gmail.com', '08102588390', NULL, 'non', NULL, 12, 57, '2022-01-26 22:45:54', '2022-01-26 22:45:54', 'home'),
(37, 'John', 'Snow', 'standard', NULL, 'Ajeromi-Ifelodun', 'Lagos State', 'arudovwen@gmail.com', '08102588390', NULL, NULL, NULL, 12, 59, '2022-01-27 00:35:59', '2022-01-27 00:35:59', 'home'),
(39, 'John', 'Snow', 'standard', NULL, 'Ajeromi-Ifelodun', 'Lagos State', 'arudovwen@gmail.com', '08102588390', NULL, NULL, NULL, 12, 61, '2022-01-27 00:43:04', '2022-01-27 00:43:04', 'home'),
(40, 'John', 'Snow', 'standard', '10 Aregbesola Street, Alapere', 'Ajeromi-Ifelodun', 'Lagos State', 'arudovwen@gmail.com', '08102588399', NULL, 'h', NULL, 12, 62, '2022-01-27 00:50:28', '2022-01-27 00:50:28', 'home'),
(41, 'John', 'Snow', 'standard', '10 Aregbesola Street, Alapere', 'Ajeromi-Ifelodun', 'Lagos State', 'arudovwen@gmail.com', '08102588399', NULL, 'new', NULL, 12, 63, '2022-01-27 00:51:55', '2022-01-27 00:51:55', 'home'),
(43, 'Success', 'Arudovwen', 'standard', '10 Aregbesola Street, Alapere', 'Alimosho', 'Lagos State', 'succy2010@gmail.com', '08102588399', NULL, 'nop', NULL, 10, 65, '2022-01-27 16:59:10', '2022-01-27 16:59:10', 'home'),
(44, 'Success', 'Arudovwen', 'standard', '10 Aregbesola Street, Alapere', 'Alimosho', 'Lagos State', 'succy2010@gmail.com', '08102588399', NULL, 'nop', NULL, 10, 66, '2022-01-27 17:00:18', '2022-01-27 17:00:18', 'home'),
(45, 'Success', 'Arudovwen', 'standard', '10 Aregbesola Street, Alapere', 'Alimosho', 'Lagos State', 'succy2010@gmail.com', '08102588399', NULL, 'nop', NULL, 10, 67, '2022-01-27 17:00:29', '2022-01-27 17:00:29', 'home'),
(46, 'Success', 'Arudovwen', 'standard', '10 Aregbesola Street, Alapere', 'Alimosho', 'Lagos State', 'succy2010@gmail.com', '08102588399', NULL, 'nop', NULL, 10, 68, '2022-01-27 17:00:47', '2022-01-27 17:00:47', 'home'),
(47, 'Success', 'Arudovwen', 'standard', '10 Aregbesola Street, Alapere', 'Alimosho', 'Lagos State', 'succy2010@gmail.com', '08102588399', NULL, 'nop', NULL, 10, 69, '2022-01-27 17:02:27', '2022-01-27 17:02:27', 'home'),
(48, 'Success', 'Arudovwen', 'standard', '10 Aregbesola Street, Alapere', 'Alimosho', 'Lagos State', 'succy2010@gmail.com', '08102588399', NULL, 'nop', NULL, 10, 70, '2022-01-27 17:02:59', '2022-01-27 17:02:59', 'home'),
(49, 'Success', 'Arudovwen', 'standard', '10 Aregbesola Street, Alapere', 'Alimosho', 'Lagos State', 'succy2010@gmail.com', '08102588399', NULL, 'nop', NULL, 10, 71, '2022-01-27 17:03:21', '2022-01-27 17:03:21', 'home'),
(50, 'Success', 'Arudovwen', 'standard', '10 Aregbesola Street, Alapere', 'Alimosho', 'Lagos State', 'succy2010@gmail.com', '08102588399', NULL, 'nop', NULL, 10, 72, '2022-01-27 17:03:33', '2022-01-27 17:03:33', 'home'),
(51, 'Success', 'Arudovwen', 'standard', '10 Aregbesola Street, Alapere', 'Alimosho', 'Lagos State', 'succy2010@gmail.com', '08102588399', NULL, 'nop', NULL, 10, 73, '2022-01-27 17:03:44', '2022-01-27 17:03:44', 'home');

-- --------------------------------------------------------

--
-- Table structure for table `otp`
--

CREATE TABLE `otp` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `otp`
--

INSERT INTO `otp` (`id`, `user_id`, `code`, `created_at`, `updated_at`) VALUES
(1, 1, '596831', '2021-10-03 11:06:17', '2021-10-03 11:51:38');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('succy2010@gmail.com', 'N4t3a6U73zD6wICUSiloo9YIfPLdpe6k45QAPVSs', '2021-10-03 10:56:55');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` int(11) NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `network` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `transactionRef` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'initiated',
  `service` int(11) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `paymentCode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customerid` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `type`, `reference`, `amount`, `status`, `network`, `number`, `service_id`, `token`, `transactionRef`, `message`, `service`, `user_id`, `created_at`, `updated_at`, `paymentCode`, `customerid`) VALUES
(1, 'airtime', 'enaag022u9', 3000, 'success', NULL, '08160723910', NULL, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczpcL1wvYXBpLnBheXZpYW1lLmNvbVwvYXBpXC9hdXRoXC9sb2dpbiIsImlhdCI6MTYzNTIwOTI2NCwiZXhwIjoxNjM1MzA1MjY0LCJuYmYiOjE2MzUyMDkyNjQsImp0aSI6ImFuTnU5NFJBQmhVUEJDOE0iLCJzdWIiOjIzLCJwcnYiOiI4N2UwYWYxZWY5ZmQxNTgxMmZkZWM5NzE1M2ExNGUwYjA0NzU0NmFhIn0.KsL_SJyWTuePElzuL8K5QONjwWJL82n-9sK70_JJCa8', 'ARW|Web|3ARW0001|MTN|091021091844|QYVPEDVU', 'Sucessful', NULL, 9, '2021-10-26 11:52:32', '2021-10-26 11:52:51', NULL, NULL),
(2, 'airtime', 'y2r98lb7mv', 3000, 'pending', NULL, '08160723920', NULL, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczpcL1wvYXBpLnBheXZpYW1lLmNvbVwvYXBpXC9hdXRoXC9sb2dpbiIsImlhdCI6MTYzNTIwOTI2NCwiZXhwIjoxNjM1MzA1MjY0LCJuYmYiOjE2MzUyMDkyNjQsImp0aSI6ImFuTnU5NFJBQmhVUEJDOE0iLCJzdWIiOjIzLCJwcnYiOiI4N2UwYWYxZWY5ZmQxNTgxMmZkZWM5NzE1M2ExNGUwYjA0NzU0NmFhIn0.KsL_SJyWTuePElzuL8K5QONjwWJL82n-9sK70_JJCa8', NULL, 'initiated', NULL, 9, '2021-10-26 11:55:54', '2021-10-26 11:55:54', NULL, NULL),
(5, 'airtime', 'uere3s5rlu', 300, 'pending', NULL, '08160723910', NULL, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczpcL1wvYXBpLnBheXZpYW1lLmNvbVwvYXBpXC9hdXRoXC9sb2dpbiIsImlhdCI6MTYzNjgxOTA5MiwiZXhwIjoxNjM2OTE1MDkyLCJuYmYiOjE2MzY4MTkwOTIsImp0aSI6IkYwcUdwTVF3UVg0WHFRTjQiLCJzdWIiOjIzLCJwcnYiOiI4N2UwYWYxZWY5ZmQxNTgxMmZkZWM5NzE1M2ExNGUwYjA0NzU0NmFhIn0.XP5camcFEKg8B_t5h3TUjaqTj_OGnqMYImiZDjClDA8', NULL, 'initiated', NULL, 3, '2021-11-13 16:15:44', '2021-11-13 16:15:45', NULL, NULL),
(6, 'airtime', '8u9pnlr6le', 300, 'pending', NULL, '08160723910', NULL, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczpcL1wvYXBpLnBheXZpYW1lLmNvbVwvYXBpXC9hdXRoXC9sb2dpbiIsImlhdCI6MTYzNjgxOTA5MiwiZXhwIjoxNjM2OTE1MDkyLCJuYmYiOjE2MzY4MTkwOTIsImp0aSI6IkYwcUdwTVF3UVg0WHFRTjQiLCJzdWIiOjIzLCJwcnYiOiI4N2UwYWYxZWY5ZmQxNTgxMmZkZWM5NzE1M2ExNGUwYjA0NzU0NmFhIn0.XP5camcFEKg8B_t5h3TUjaqTj_OGnqMYImiZDjClDA8', NULL, 'initiated', NULL, 3, '2021-11-13 16:20:43', '2021-11-13 16:20:44', NULL, NULL),
(7, 'airtime', 'l7qfwzxr8w', 300, 'success', NULL, '08160723910', NULL, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczpcL1wvYXBpLnBheXZpYW1lLmNvbVwvYXBpXC9hdXRoXC9sb2dpbiIsImlhdCI6MTYzNjgxOTA5MiwiZXhwIjoxNjM2OTE1MDkyLCJuYmYiOjE2MzY4MTkwOTIsImp0aSI6IkYwcUdwTVF3UVg0WHFRTjQiLCJzdWIiOjIzLCJwcnYiOiI4N2UwYWYxZWY5ZmQxNTgxMmZkZWM5NzE1M2ExNGUwYjA0NzU0NmFhIn0.XP5camcFEKg8B_t5h3TUjaqTj_OGnqMYImiZDjClDA8', 'ARW|Web|3ARW0001|MTN|091021091844|QYVPEDVU', 'Sucessful', NULL, 3, '2021-11-13 16:21:52', '2021-11-13 16:26:48', NULL, NULL),
(8, 'data', '4cx63ymkng', 200, 'success', NULL, '08102588399', NULL, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczpcL1wvYXBpLnBheXZpYW1lLmNvbVwvYXBpXC9hdXRoXC9sb2dpbiIsImlhdCI6MTYzNjgxOTA5MiwiZXhwIjoxNjM2OTE1MDkyLCJuYmYiOjE2MzY4MTkwOTIsImp0aSI6IkYwcUdwTVF3UVg0WHFRTjQiLCJzdWIiOjIzLCJwcnYiOiI4N2UwYWYxZWY5ZmQxNTgxMmZkZWM5NzE1M2ExNGUwYjA0NzU0NmFhIn0.XP5camcFEKg8B_t5h3TUjaqTj_OGnqMYImiZDjClDA8', 'ARW|Web|3ARW0001|MTN|091021091844|QYVPEDVU', 'Sucessful', NULL, 3, '2021-11-13 16:33:50', '2021-11-13 16:34:50', NULL, NULL),
(9, 'airtime', 'n3onzx81bx', 4000, 'success', NULL, '08160723910', NULL, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczpcL1wvYXBpLnBheXZpYW1lLmNvbVwvYXBpXC9hdXRoXC9sb2dpbiIsImlhdCI6MTYzNjgxOTA5MiwiZXhwIjoxNjM2OTE1MDkyLCJuYmYiOjE2MzY4MTkwOTIsImp0aSI6IkYwcUdwTVF3UVg0WHFRTjQiLCJzdWIiOjIzLCJwcnYiOiI4N2UwYWYxZWY5ZmQxNTgxMmZkZWM5NzE1M2ExNGUwYjA0NzU0NmFhIn0.XP5camcFEKg8B_t5h3TUjaqTj_OGnqMYImiZDjClDA8', 'ARW|Web|3ARW0001|MTN|091021091844|QYVPEDVU', 'Sucessful', NULL, 3, '2021-11-13 16:37:54', '2021-11-13 16:38:20', NULL, NULL),
(10, 'data', '3su7io4vfg', 200, 'pending', NULL, '08102588399', NULL, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczpcL1wvYXBpLnBheXZpYW1lLmNvbVwvYXBpXC9hdXRoXC9sb2dpbiIsImlhdCI6MTYzNjgxOTA5MiwiZXhwIjoxNjM2OTE1MDkyLCJuYmYiOjE2MzY4MTkwOTIsImp0aSI6IkYwcUdwTVF3UVg0WHFRTjQiLCJzdWIiOjIzLCJwcnYiOiI4N2UwYWYxZWY5ZmQxNTgxMmZkZWM5NzE1M2ExNGUwYjA0NzU0NmFhIn0.XP5camcFEKg8B_t5h3TUjaqTj_OGnqMYImiZDjClDA8', NULL, 'initiated', NULL, 3, '2021-11-13 16:41:57', '2021-11-13 16:41:58', NULL, NULL),
(11, 'data', '7dbydx9giu', 300, 'success', NULL, '08102588399', NULL, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczpcL1wvYXBpLnBheXZpYW1lLmNvbVwvYXBpXC9hdXRoXC9sb2dpbiIsImlhdCI6MTYzNjgxOTA5MiwiZXhwIjoxNjM2OTE1MDkyLCJuYmYiOjE2MzY4MTkwOTIsImp0aSI6IkYwcUdwTVF3UVg0WHFRTjQiLCJzdWIiOjIzLCJwcnYiOiI4N2UwYWYxZWY5ZmQxNTgxMmZkZWM5NzE1M2ExNGUwYjA0NzU0NmFhIn0.XP5camcFEKg8B_t5h3TUjaqTj_OGnqMYImiZDjClDA8', 'ARW|Web|3ARW0001|MTN|091021091844|QYVPEDVU', 'Sucessful', NULL, 3, '2021-11-13 17:10:57', '2021-11-13 17:12:21', NULL, NULL),
(12, 'cable', 'h5gnahww55', 7900, 'pending', NULL, NULL, NULL, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczpcL1wvYXBpLnBheXZpYW1lLmNvbVwvYXBpXC9hdXRoXC9sb2dpbiIsImlhdCI6MTYzNjgxOTA5MiwiZXhwIjoxNjM2OTE1MDkyLCJuYmYiOjE2MzY4MTkwOTIsImp0aSI6IkYwcUdwTVF3UVg0WHFRTjQiLCJzdWIiOjIzLCJwcnYiOiI4N2UwYWYxZWY5ZmQxNTgxMmZkZWM5NzE1M2ExNGUwYjA0NzU0NmFhIn0.XP5camcFEKg8B_t5h3TUjaqTj_OGnqMYImiZDjClDA8', NULL, 'initiated', NULL, 3, '2021-11-14 09:56:55', '2021-11-14 09:56:56', NULL, NULL),
(13, 'cable', '812zx4w13a', 7900, 'pending', NULL, NULL, NULL, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczpcL1wvYXBpLnBheXZpYW1lLmNvbVwvYXBpXC9hdXRoXC9sb2dpbiIsImlhdCI6MTYzNjgxOTA5MiwiZXhwIjoxNjM2OTE1MDkyLCJuYmYiOjE2MzY4MTkwOTIsImp0aSI6IkYwcUdwTVF3UVg0WHFRTjQiLCJzdWIiOjIzLCJwcnYiOiI4N2UwYWYxZWY5ZmQxNTgxMmZkZWM5NzE1M2ExNGUwYjA0NzU0NmFhIn0.XP5camcFEKg8B_t5h3TUjaqTj_OGnqMYImiZDjClDA8', NULL, 'initiated', NULL, 3, '2021-11-14 10:01:34', '2021-11-14 10:01:34', NULL, NULL),
(14, 'cable', 'pu9nv40wpn', 6200, 'pending', NULL, NULL, NULL, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczpcL1wvYXBpLnBheXZpYW1lLmNvbVwvYXBpXC9hdXRoXC9sb2dpbiIsImlhdCI6MTYzNjgxOTA5MiwiZXhwIjoxNjM2OTE1MDkyLCJuYmYiOjE2MzY4MTkwOTIsImp0aSI6IkYwcUdwTVF3UVg0WHFRTjQiLCJzdWIiOjIzLCJwcnYiOiI4N2UwYWYxZWY5ZmQxNTgxMmZkZWM5NzE1M2ExNGUwYjA0NzU0NmFhIn0.XP5camcFEKg8B_t5h3TUjaqTj_OGnqMYImiZDjClDA8', NULL, 'initiated', NULL, 3, '2021-11-14 10:06:01', '2021-11-14 10:06:02', NULL, NULL),
(15, 'cable', 'uh5mmsfb9n', 16000, 'success', NULL, NULL, NULL, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczpcL1wvYXBpLnBheXZpYW1lLmNvbVwvYXBpXC9hdXRoXC9sb2dpbiIsImlhdCI6MTYzNjgxOTA5MiwiZXhwIjoxNjM2OTE1MDkyLCJuYmYiOjE2MzY4MTkwOTIsImp0aSI6IkYwcUdwTVF3UVg0WHFRTjQiLCJzdWIiOjIzLCJwcnYiOiI4N2UwYWYxZWY5ZmQxNTgxMmZkZWM5NzE1M2ExNGUwYjA0NzU0NmFhIn0.XP5camcFEKg8B_t5h3TUjaqTj_OGnqMYImiZDjClDA8', 'ARW|Web|3ARW0001|GTV|091021091844|QYVPEDVU', 'Sucessful', NULL, 3, '2021-11-14 10:15:19', '2021-11-14 10:16:12', '10444', '7030490218'),
(16, 'airtime', 'utstvl28lp', 80, 'pending', NULL, '08067536448', NULL, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczpcL1wvYXBpLnBheXZpYW1lLmNvbVwvYXBpXC9hdXRoXC9sb2dpbiIsImlhdCI6MTYzNjg4NjcwMiwiZXhwIjoxNjM2OTgyNzAyLCJuYmYiOjE2MzY4ODY3MDIsImp0aSI6IjQzaHJRejkzczlweDJFb0MiLCJzdWIiOjIzLCJwcnYiOiI4N2UwYWYxZWY5ZmQxNTgxMmZkZWM5NzE1M2ExNGUwYjA0NzU0NmFhIn0.4X0JXRJ7mIDW3fpPxTuSG6S6lYApNRIYMR4tr9mXhkc', NULL, 'initiated', NULL, 3, '2021-11-14 10:45:48', '2021-11-14 10:45:49', NULL, NULL),
(17, 'cable', '2frz3twmxe', 16600, 'pending', NULL, NULL, NULL, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczpcL1wvYXBpLnBheXZpYW1lLmNvbVwvYXBpXC9hdXRoXC9sb2dpbiIsImlhdCI6MTYzNjg4NjcwMiwiZXhwIjoxNjM2OTgyNzAyLCJuYmYiOjE2MzY4ODY3MDIsImp0aSI6IjQzaHJRejkzczlweDJFb0MiLCJzdWIiOjIzLCJwcnYiOiI4N2UwYWYxZWY5ZmQxNTgxMmZkZWM5NzE1M2ExNGUwYjA0NzU0NmFhIn0.4X0JXRJ7mIDW3fpPxTuSG6S6lYApNRIYMR4tr9mXhkc', NULL, 'initiated', NULL, 3, '2021-11-14 10:46:58', '2021-11-14 10:47:00', '10462', '7030490218'),
(18, 'airtime', 'uclf560geh', 400, 'pending', NULL, '08103738888', NULL, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczpcL1wvYXBpLnBheXZpYW1lLmNvbVwvYXBpXC9hdXRoXC9sb2dpbiIsImlhdCI6MTYzNjg4NjkwMCwiZXhwIjoxNjM2OTgyOTAwLCJuYmYiOjE2MzY4ODY5MDAsImp0aSI6Ilpya3I3aG13WW9PVU15MWMiLCJzdWIiOjIzLCJwcnYiOiI4N2UwYWYxZWY5ZmQxNTgxMmZkZWM5NzE1M2ExNGUwYjA0NzU0NmFhIn0.hxYv28QQ77NtBNoPUCwA_j_i1-D9MqlP86Gf-d-Zovw', NULL, 'initiated', NULL, 3, '2021-11-14 10:48:41', '2021-11-14 10:48:41', NULL, NULL),
(19, 'airtime', 'rj77lgo645', 500, 'success', NULL, '08102844944', NULL, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczpcL1wvYXBpLnBheXZpYW1lLmNvbVwvYXBpXC9hdXRoXC9sb2dpbiIsImlhdCI6MTYzNjg4NzE2MCwiZXhwIjoxNjM2OTgzMTYwLCJuYmYiOjE2MzY4ODcxNjAsImp0aSI6IklNZ2l2aTZFc3FVUGZ3SHoiLCJzdWIiOjIzLCJwcnYiOiI4N2UwYWYxZWY5ZmQxNTgxMmZkZWM5NzE1M2ExNGUwYjA0NzU0NmFhIn0.4_csgtf4uS6eVDXkBT9H7OSRothvaNhryZ0h5EMWF1c', 'ARW|Web|3ARW0001|MTN|091021091844|QYVPEDVU', 'Sucessful', NULL, 3, '2021-11-14 10:52:56', '2021-11-14 10:53:35', NULL, NULL),
(20, 'airtime', 'ywfpmifcs4', 400, 'success', NULL, '08160723910', NULL, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczpcL1wvYXBpLnBheXZpYW1lLmNvbVwvYXBpXC9hdXRoXC9sb2dpbiIsImlhdCI6MTYzNjg4NzI1MSwiZXhwIjoxNjM2OTgzMjUxLCJuYmYiOjE2MzY4ODcyNTEsImp0aSI6IjMyQjZldmxVRUNjTFJ5clUiLCJzdWIiOjIzLCJwcnYiOiI4N2UwYWYxZWY5ZmQxNTgxMmZkZWM5NzE1M2ExNGUwYjA0NzU0NmFhIn0.A8B43xkP-S0s5zg8mVrQiiQna_j55CVd9LvAIyXT-jw', 'ARW|Web|3ARW0001|MTN|091021091844|QYVPEDVU', 'Sucessful', NULL, 3, '2021-11-14 10:54:32', '2021-11-14 10:54:48', NULL, NULL),
(21, 'airtime', 'ui90009vhi', 200, 'pending', NULL, '08102588399', NULL, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczpcL1wvYXBpLnBheXZpYW1lLmNvbVwvYXBpXC9hdXRoXC9sb2dpbiIsImlhdCI6MTYzODE4ODA1NCwiZXhwIjoxNjM4Mjg0MDU0LCJuYmYiOjE2MzgxODgwNTQsImp0aSI6InZxcUNxZ1JHTUVwakVBT1YiLCJzdWIiOjIzLCJwcnYiOiI4N2UwYWYxZWY5ZmQxNTgxMmZkZWM5NzE1M2ExNGUwYjA0NzU0NmFhIn0.52CMR7kAq-1AwcR2fDy9HxlvNHFkDRsucHGv5iesyuY', NULL, 'initiated', NULL, 10, '2021-11-29 12:14:45', '2021-11-29 12:14:46', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `manufacture_date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expiry_date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `in_stock` int(11) NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `store_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '(DC2Type:json)',
  `sales_price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `brand_id` bigint(20) UNSIGNED DEFAULT NULL,
  `weight` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `product_desc`, `price`, `manufacture_date`, `expiry_date`, `product_no`, `batch_no`, `in_stock`, `category_id`, `store_id`, `created_at`, `updated_at`, `image`, `sales_price`, `active`, `brand_id`, `weight`) VALUES
(1, 'Good Mama Laundry Detergent Washing Soap  -900g', 'GOOD MAMA LAUNDRY DETERGENT WASHING SOAP Contains the Power of Stain Removal Ingredients, Which helps to Remove tough Stains in Just One wash. This Powder Detergent has Got you Covered When you Need to Wash Dirty Laundries. It Comes with High-performance Cleaning Agents and Enhanced with Fresh Sensation Aroma. The Powder Detergents Keeps Clothes Sparkling Clean with its Powerful Formula. The Detergent Removes Tough Stains on Clothes as Well as Grease and Residues. The Powder Detergent is Concentrated and Uniquely Formulated with Natural Soap Additives that Cut Through Stains Making it Sparkling Clean While being Gentle on your Clothes.', 1300, NULL, NULL, '343361', NULL, 20, 1, 1, '2022-01-03 18:12:54', '2022-01-03 19:31:02', '[\"https:\\/\\/res.cloudinary.com\\/entermarket\\/image\\/upload\\/v1641233555\\/erulec5cikwrtbqc8hb2.jpg\",\"https:\\/\\/res.cloudinary.com\\/entermarket\\/image\\/upload\\/v1641233555\\/rsuyibakrdkvtkgwx2d9.jpg\"]', '1250', 1, 1, '0.9'),
(2, 'Good Mama Laundry Detergent Washing Soap  -190g', 'GOOD MAMA LAUNDRY DETERGENT WASHING SOAP Contains the Power of Stain Removal Ingredients, Which helps to Remove tough Stains in Just One wash. This Powder Detergent has Got you Covered When you Need to Wash Dirty Laundries. It Comes with High-performance Cleaning Agents and Enhanced with Fresh Sensation Aroma. The Powder Detergents Keeps Clothes Sparkling Clean with its Powerful Formula. The Detergent Removes Tough Stains on Clothes as Well as Grease and Residues. The Powder Detergent is Concentrated and Uniquely Formulated with Natural Soap Additives that Cut Through Stains Making it Sparkling Clean While being Gentle on your Clothes.', 100, NULL, NULL, '309506', NULL, 30, 1, 1, '2022-01-03 18:12:54', '2022-01-03 19:31:03', '[\"https:\\/\\/res.cloudinary.com\\/entermarket\\/image\\/upload\\/v1641233565\\/xb2tztjlwzfzdexxvsis.jpg\",\"https:\\/\\/res.cloudinary.com\\/entermarket\\/image\\/upload\\/v1641233565\\/pbed29s6otyxckisva6e.jpg\"]', '90', 1, 1, '.19'),
(3, 'Indomie Onion Flavour', 'Popular for its exotic taste, Indomie Onion Chicken flavour is made of rich ingredients, spices and chicken flavour. This flavour comes with a sachet of seasoning oil made from fresh onions in vegetable oil, which when cooked together with the seasoning sachet gives a nutrition and irresistible serving, rich in taste and aroma.', 1400, NULL, NULL, '379204', NULL, 22, 5, 1, '2022-01-03 18:26:32', '2022-01-09 09:34:02', '[\"https:\\/\\/res.cloudinary.com\\/entermarket\\/image\\/upload\\/v1641234067\\/grgf1fbifibypyciwdh7.jpg\",\"https:\\/\\/res.cloudinary.com\\/entermarket\\/image\\/upload\\/v1641234067\\/a9enop6ioxke0zmv19i8.jpg\"]', '1230', 1, 4, '1'),
(4, 'Indomie Regular (Indomitables)', 'Popular for its exotic taste, Indomie Onion Chicken flavour is made of rich ingredients, spices and chicken flavour. This flavour comes with a sachet of seasoning oil made from fresh onions in vegetable oil, which when cooked together with the seasoning sachet gives a nutrition and irresistible serving, rich in taste and aroma.', 1200, NULL, NULL, '734036', NULL, 15, 5, 1, '2022-01-03 18:26:32', '2022-01-03 19:31:03', '[\"https:\\/\\/res.cloudinary.com\\/entermarket\\/image\\/upload\\/v1641234143\\/gv6rgn0xfex6nkpjflmr.jpg\",\"https:\\/\\/res.cloudinary.com\\/entermarket\\/image\\/upload\\/v1641234143\\/wstwdphsidlgaoqdhynx.jpg\"]', '1150', 1, 4, '1'),
(5, 'Indomie Relish', 'Popular for its exotic taste, Indomie Relish Chicken flavour is made of rich ingredients, spices and chicken flavour. This flavour comes with a sachet of seasoning oil made from fresh onions in vegetable oil, which when cooked together with the seasoning sachet gives a nutrition and irresistible serving, rich in taste and aroma.', 800, NULL, NULL, '154583', NULL, 12, 5, 1, '2022-01-03 18:26:32', '2022-01-03 19:31:04', '[\"https:\\/\\/res.cloudinary.com\\/entermarket\\/image\\/upload\\/v1641234197\\/b9avaibd0xklkshcrztt.jpg\"]', '750', 1, 4, '0.18'),
(6, 'Klin Detergent - 1000g', 'So Klin Concentrate detergent powder provides powerful cleaning for your clothes and it is renowned for working well on whites. Can also be used for kitchen, bath room and toilet walls. It’s new Odour Guard Technology - offers effective odour control even after long soak or indoor drying', 350, NULL, NULL, '32367', NULL, 20, 1, 1, '2022-01-03 18:26:32', '2022-01-03 19:31:05', '[\"https:\\/\\/res.cloudinary.com\\/entermarket\\/image\\/upload\\/v1641234309\\/lllc5mpzl3mazjxetoaj.jpg\",\"https:\\/\\/res.cloudinary.com\\/entermarket\\/image\\/upload\\/v1641234309\\/hk0jxalkhw6fkmgro8ar.jpg\"]', '330', 1, 2, '1'),
(7, 'So Klin - 190g', 'So Klin Concentrate detergent powder provides powerful cleaning for your clothes and it is renowned for working well on whites. Can also be used for kitchen, bath room and toilet walls. It’s new Odour Guard Technology - offers effective odour control even after long soak or indoor drying', 120, NULL, NULL, '889464', NULL, 16, 1, 1, '2022-01-03 18:26:32', '2022-01-09 09:34:02', '[\"https:\\/\\/res.cloudinary.com\\/entermarket\\/image\\/upload\\/v1641234384\\/rm97lii7esbxznwryivz.jpg\",\"https:\\/\\/res.cloudinary.com\\/entermarket\\/image\\/upload\\/v1641234384\\/pukx2zjkmfvlilxk9jp5.jpg\"]', '110', 1, 2, '0.19'),
(8, 'Cway Dispenser', 'it does not require electricity to operate, just close the pump on top of a standard plastic water bottle and then press down the pump to have water gush out for drinking.', 600, NULL, NULL, '852068', NULL, 25, 5, 1, '2022-01-03 18:45:33', '2022-01-03 19:31:06', '[\"https:\\/\\/res.cloudinary.com\\/entermarket\\/image\\/upload\\/v1641235442\\/v5gugzr9h4dhtki20pfb.jpg\",\"https:\\/\\/res.cloudinary.com\\/entermarket\\/image\\/upload\\/v1641235442\\/mjufcokwapxnvvfrcmmn.jpg\"]', '550', 1, 7, '1'),
(9, 'Cway Bottle water', 'it does not require electricity to operate, just close the pump on top of a standard plastic water bottle and then press down the pump to have water gush out for drinking.', 1500, NULL, NULL, '577372', NULL, 98, 5, 1, '2022-01-03 18:45:33', '2022-01-05 19:35:21', '[\"https:\\/\\/res.cloudinary.com\\/entermarket\\/image\\/upload\\/v1641235478\\/tx2s8aca5fffjdlppdwn.jpg\",\"https:\\/\\/res.cloudinary.com\\/entermarket\\/image\\/upload\\/v1641235479\\/l7rsp5g6s0vd6h0bza02.jpg\"]', '1450', 1, 7, '1'),
(10, 'Dano Sachet Milk 90g - 12pcs', 'Dano Skimmed Milk Powder - It is an excellent choice of milk powder with 0.1 fat. It is specially formulated for consumers who want to maximize the benefits of milk but minimize the intake of fats.', 600, NULL, NULL, '376652', NULL, 139, 2, 1, '2022-01-03 18:49:38', '2022-01-13 06:59:55', '[\"https:\\/\\/res.cloudinary.com\\/entermarket\\/image\\/upload\\/v1641235674\\/mvwtoltwliu434h4f2is.jpg\",\"https:\\/\\/res.cloudinary.com\\/entermarket\\/image\\/upload\\/v1641235674\\/l8v4bnegiunpmwfltawb.jpg\"]', '550', 1, 3, '0.9'),
(11, 'Dano Milk 400g x1', 'Dano Skimmed Milk Powder - It is an excellent choice of milk powder with 0.1 fat. It is specially formulated for consumers who want to maximize the benefits of milk but minimize the intake of fats.', 500, NULL, NULL, '367236', NULL, 10, 2, 1, '2022-01-03 18:49:38', '2022-01-09 09:34:02', '[\"https:\\/\\/res.cloudinary.com\\/entermarket\\/image\\/upload\\/v1641235773\\/aoor8wnduqnmlskl4d3x.jpg\",\"https:\\/\\/res.cloudinary.com\\/entermarket\\/image\\/upload\\/v1641235773\\/hrj60u1gxudkqduok2ri.jpg\"]', '450', 1, 3, '0.4'),
(12, 'Durex Condom Icy Blue', 'Durex Extra Safe Condoms have been designed to offer you maximum protection during sex. Made from slightly thicker latex and extra silicone lubrication, Extra Safe Condoms can offer peace of mind without having to forfeit any of the pleasure. Relax and let yourself go.\nThe Durex Extra Safe condom is a thicker condom. It has a nominal width of 52.5mm with an easy-on shape. It is intimate and comfortable, lubricated and made of natural rubber latex. Each box of Durex Extra Safe 3\'s contains 3 pieces condoms.\nFeel safe and confident with the World\'s No. 1 Condom Brand.', 10500, NULL, NULL, '571937', NULL, 16, 4, 1, '2022-01-03 18:53:53', '2022-01-10 08:17:44', '[\"https:\\/\\/res.cloudinary.com\\/entermarket\\/image\\/upload\\/v1641235972\\/nvijku2daf94pk2xrwhc.jpg\",\"https:\\/\\/res.cloudinary.com\\/entermarket\\/image\\/upload\\/v1641235972\\/vczubuha4gqyrfyrtayk.jpg\"]', '10000', 1, 8, '1'),
(13, 'Durex Condom Rosey Red', 'Durex Extra Safe Condoms have been designed to offer you maximum protection during sex. Made from slightly thicker latex and extra silicone lubrication, Extra Safe Condoms can offer peace of mind without having to forfeit any of the pleasure. Relax and let yourself go.\nThe Durex Extra Safe condom is a thicker condom. It has a nominal width of 52.5mm with an easy-on shape. It is intimate and comfortable, lubricated and made of natural rubber latex. Each box of Durex Extra Safe 3\'s contains 3 pieces condoms.\nFeel safe and confident with the World\'s No. 1 Condom Brand.', 15000, NULL, NULL, '271685', NULL, 24, 4, 1, '2022-01-03 18:53:53', '2022-01-09 09:34:02', '[\"https:\\/\\/res.cloudinary.com\\/entermarket\\/image\\/upload\\/v1641236028\\/pebxpbwkjvlmwrzpvh9h.jpg\",\"https:\\/\\/res.cloudinary.com\\/entermarket\\/image\\/upload\\/v1641236028\\/pcprdqdndjrosi3wcahc.jpg\"]', '14599', 1, 8, '1'),
(14, 'Bag of Rice', 'Bag of rice', 31000, NULL, NULL, '808297', NULL, -33, 5, 1, '2022-01-03 19:01:54', '2022-01-10 08:17:44', '[\"https:\\/\\/res.cloudinary.com\\/entermarket\\/image\\/upload\\/v1641236508\\/avpthlaf8gnd65q3jh5w.jpg\"]', '29500', 1, NULL, '50');

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reports`
--

INSERT INTO `reports` (`id`, `message`, `user_id`, `order_id`, `created_at`, `updated_at`) VALUES
(1, 'send', 3, 22, '2021-10-08 19:12:35', '2021-10-08 19:12:35'),
(2, 'Hi', 1, 22, '2021-10-08 19:24:51', '2021-10-08 19:24:51'),
(3, 'report', 10, 54, '2022-01-06 19:46:59', '2022-01-06 19:46:59');

-- --------------------------------------------------------

--
-- Table structure for table `stores`
--

CREATE TABLE `stores` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `api_endpoint` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `db_host` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `db_username` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `db_password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lat` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `long` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `place` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stores`
--

INSERT INTO `stores` (`id`, `name`, `location`, `image`, `connection`, `api_endpoint`, `db_host`, `db_username`, `db_password`, `created_at`, `updated_at`, `email`, `password`, `lat`, `long`, `place`) VALUES
(1, 'Shopperholics', '10 Ogudu Rd, Ojota 105102, Lagos, Nigeria', 'https://res.cloudinary.com/entermarket/image/upload/v1641230730/hqxv9upj94jzqjmsnqys.png', 'null', 'null', 'null', 'null', 'null', '2022-01-03 17:25:34', '2022-01-03 17:25:34', 'shopperholics@gmail.com', '$2y$10$SaJYD4dCql5SXH2D0DbiF.h4nTQBda9Ibdw2p7sV83p.7qXf871.6', '6.5878882', '3.3805482', 'Ojota'),
(3, 'Winnie Supermarket', '10 Admiralty Way, Lekki Phase 1 105102, Lekki, Nigeria', 'https://res.cloudinary.com/entermarket/image/upload/v1641378192/unojeu3orzckxwcidmdi.png', 'null', 'null', 'null', 'null', 'null', '2022-01-05 10:23:48', '2022-01-05 10:23:48', 'winnie@gmail.com', '$2y$10$c9uOmNTr6xleuFu/Hz1dGuYfrN4oSAIVxnveZ9s41ZSBho94UCcPO', '6.448041', '3.480237', 'Lekki Phase I'),
(4, 'Ebeano Supermarket', 'Ketu 105102, Lagos, Nigeria', 'https://res.cloudinary.com/entermarket/image/upload/v1641378927/ijei4eeg2ndfqc0wlmse.png', 'null', 'null', 'null', 'null', 'null', '2022-01-05 10:35:38', '2022-01-05 10:35:38', 'ebeanotest@gmail.com', '$2y$10$cz1qaXnhUSxVIGCdMs28B.f0xEoE9xQS6duib8dqmGKvECneDOf5a', '6.5973037', '3.3904469', 'Kosofe');

-- --------------------------------------------------------

--
-- Table structure for table `store_orders`
--

CREATE TABLE `store_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `price` int(11) NOT NULL DEFAULT 0,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `subtotal` int(11) NOT NULL DEFAULT 1,
  `order_no` int(11) NOT NULL,
  `store_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `payment_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `store_orders`
--

INSERT INTO `store_orders` (`id`, `price`, `quantity`, `subtotal`, `order_no`, `store_id`, `product_id`, `user_id`, `created_at`, `updated_at`, `payment_status`) VALUES
(8, 3500, 1, 3500, 34278636, 1, 1, 10, '2021-12-10 23:54:37', '2021-12-10 23:54:37', 'pending'),
(9, 3500, 1, 3500, 74506528, 1, 1, 10, '2021-12-28 20:52:38', '2021-12-28 20:55:28', 'paid'),
(10, 3500, 3, 10500, 10141567, 1, 1, 10, '2022-01-01 23:01:14', '2022-01-01 23:01:14', 'pending'),
(11, 3500, 3, 10500, 20237231, 1, 1, 10, '2022-01-01 23:03:31', '2022-01-01 23:05:42', 'paid'),
(14, 3500, 4, 14000, 85324063, 1, 1, 12, '2022-01-26 22:45:54', '2022-01-26 22:45:54', 'pending'),
(16, 3500, 4, 14000, 30411556, 1, 1, 12, '2022-01-27 00:35:59', '2022-01-27 00:35:59', 'pending'),
(18, 3500, 4, 14000, 59627260, 1, 1, 12, '2022-01-27 00:43:04', '2022-01-27 00:43:04', 'pending'),
(19, 3500, 4, 14000, 37572973, 1, 1, 12, '2022-01-27 00:50:28', '2022-01-27 00:50:28', 'pending'),
(20, 3500, 4, 14000, 35660144, 1, 1, 12, '2022-01-27 00:51:55', '2022-01-27 00:51:55', 'pending'),
(22, 4000, 4, 16000, 82968176, 1, 1, 10, '2022-01-27 16:59:10', '2022-01-27 16:59:10', 'pending'),
(23, 4000, 4, 16000, 93654670, 1, 1, 10, '2022-01-27 17:00:18', '2022-01-27 17:00:18', 'pending'),
(24, 4000, 4, 16000, 84056645, 1, 1, 10, '2022-01-27 17:00:29', '2022-01-27 17:00:29', 'pending'),
(25, 4000, 4, 16000, 72799500, 1, 1, 10, '2022-01-27 17:00:47', '2022-01-27 17:00:47', 'pending'),
(26, 4000, 4, 16000, 88976305, 1, 1, 10, '2022-01-27 17:02:27', '2022-01-27 17:02:27', 'pending'),
(27, 4000, 4, 16000, 42858967, 1, 1, 10, '2022-01-27 17:02:59', '2022-01-27 17:02:59', 'pending'),
(28, 4000, 4, 16000, 26084460, 1, 1, 10, '2022-01-27 17:03:21', '2022-01-27 17:03:21', 'pending'),
(29, 4000, 4, 16000, 95499169, 1, 1, 10, '2022-01-27 17:03:33', '2022-01-27 17:03:33', 'pending'),
(30, 4000, 4, 16000, 97333908, 1, 1, 10, '2022-01-27 17:03:44', '2022-01-27 17:03:44', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `stories`
--

CREATE TABLE `stories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stories`
--

INSERT INTO `stories` (`id`, `image`, `user_id`, `created_at`, `updated_at`) VALUES
(4, 'image url (string)', 1, '2021-10-04 01:32:14', '2021-10-04 01:32:14'),
(5, 'image url (string)', 1, '2021-10-04 01:32:17', '2021-10-04 01:32:17');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `reference` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `trxref` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `reference`, `message`, `trxref`, `amount`, `type`, `mode`, `status`, `content`, `user_id`, `order_id`, `created_at`, `updated_at`) VALUES
(1, 'mehuk5kf9x', 'Verification successful', 'epc2uwa4cj3260r', 1000000, 'online', 'paysatck', '1', NULL, 1, 22, '2021-10-04 00:45:47', '2021-10-04 00:55:21'),
(2, 'uki5kinxrv', 'pending', 'whru63i3iy3koqt', 1000000, 'online', 'paysatck', 'pending', NULL, 1, 22, '2021-10-09 14:33:02', '2021-10-09 14:33:02'),
(3, 'pch5agb3op', 'pending', '8hqgirurkemnbjw', 1000000, 'online', 'paysatck', 'pending', NULL, 1, 22, '2021-10-09 14:34:39', '2021-10-09 14:34:39'),
(4, 't2glely8gz', 'pending', '5jr4y30jbcjj6x3', 1000000, 'online', 'paysatck', 'pending', NULL, 1, 22, '2021-10-09 14:37:15', '2021-10-09 14:37:15'),
(5, 'llmkuujw3h', 'pending', '589n1x5nab6dlnk', 140200000, 'online', 'paysatck', 'pending', NULL, 3, 23, '2021-10-09 22:52:35', '2021-10-09 22:52:35'),
(6, 'n5oqfetcjc', 'pending', 'wwkr3sk30eg2s39', 80200000, 'online', 'paysatck', 'pending', NULL, 3, 24, '2021-10-09 23:02:12', '2021-10-09 23:02:12'),
(7, 'vha1kionxe', 'pending', 'epsegu7ls8f2f8x', 80200000, 'online', 'paysatck', 'pending', NULL, 3, 25, '2021-10-09 23:03:35', '2021-10-09 23:03:35'),
(8, 'i8xjy51dlk', 'pending', 'fgz1pxvdg7ttl96', 80200000, 'online', 'paysatck', 'pending', NULL, 3, 26, '2021-10-09 23:03:58', '2021-10-09 23:03:58'),
(9, 'drdv37p480', 'pending', '1juhwxgbdrxtsil', 80200000, 'online', 'paysatck', 'pending', NULL, 3, 27, '2021-10-09 23:04:40', '2021-10-09 23:04:40'),
(10, 'sh5tw666h9', 'pending', 'n39hhs17asrmy3h', 80200000, 'online', 'paysatck', 'pending', NULL, 3, 28, '2021-10-09 23:39:47', '2021-10-09 23:39:47'),
(11, 'ijadzc3a00', 'Verification successful', 'dt8bgwje3u9p58w', 800000, 'online', 'paysatck', '1', NULL, 3, 30, '2021-10-09 23:42:55', '2021-10-10 00:29:50'),
(12, 'fj9tz56tfe', 'Verification successful', 'cvwimfcgxspeyv7', 800000, 'online', 'paysatck', '1', NULL, 3, 30, '2021-10-10 01:08:56', '2021-10-10 20:51:06'),
(13, 'zbdeqxaw0g', 'Verification successful', 'nw9i5dkjcpc83b8', 600000, 'online', 'paysatck', '1', NULL, 3, 37, '2021-10-10 23:00:51', '2021-10-10 23:01:13'),
(14, 'jlas1e930z', 'Verification successful', '8rrsyhkkzov7hnl', 20260000, 'online', 'paysatck', '1', NULL, 3, 38, '2021-10-15 01:34:50', '2021-10-15 02:14:06'),
(15, '07y5jed1j5', 'pending', '07wdm2vi3cp7ecm', 200000, 'online', 'paysatck', 'pending', NULL, 1, 39, '2021-10-16 01:32:19', '2021-10-16 01:32:19'),
(16, '7jj06ykk4i', 'pending', 'qfek7gojv3ny0hl', 20020000, 'online', 'paysatck', 'pending', NULL, 3, 40, '2021-10-16 01:46:05', '2021-10-16 01:46:05'),
(17, '3dlk8q0jj4', 'pending', 'oerh2cwfcgvdahg', 200000, 'online', 'paysatck', 'pending', NULL, 1, 41, '2021-10-16 01:52:51', '2021-10-16 01:52:51'),
(18, 'yd1hq2vbmt', 'Verification successful', '12z7juuved70d5q', 460000, 'online', 'paystack', '1', NULL, 3, 49, '2021-11-14 18:14:05', '2021-11-14 18:37:16'),
(19, 'p5nijkpf0y', 'Verification successful', 'x56dck92bmw9ov4', 220000, 'online', 'paystack', '1', NULL, 3, 50, '2021-11-14 19:25:33', '2021-11-14 19:31:28'),
(20, 'p1vwtx2snn', 'pending', 'ljd0exeacodwdr6', 350000, 'online', 'paystack', 'pending', NULL, 10, 51, '2021-12-10 23:54:38', '2021-12-10 23:54:38'),
(21, '8pwj4rvya3', 'Verification successful', 'w3ruvs7mzt071w0', 350000, 'online', 'paystack', '1', NULL, 10, 52, '2021-12-28 20:52:40', '2021-12-28 20:55:28'),
(22, '9s8lvoxrhs', 'pending', '4ni60c5u8gulas7', 1050000, 'online', 'paystack', 'pending', NULL, 10, 53, '2022-01-01 23:01:31', '2022-01-01 23:01:31'),
(23, 'svgd4jbh7d', 'Verification successful', 'jni18005bfuruf3', 1050000, 'online', 'paystack', '1', NULL, 10, 54, '2022-01-01 23:03:47', '2022-01-01 23:05:42'),
(24, 'nh7zxwu5hs', 'pending', 'mxcv75kf107vvrt', 1400000, 'online', 'paystack', 'pending', NULL, 12, 57, '2022-01-26 22:45:55', '2022-01-26 22:45:55'),
(25, '30b8glwz7v', 'pending', 'bi6fdplu2jiydn9', 1400000, 'online', 'paystack', 'pending', NULL, 12, 59, '2022-01-27 00:36:00', '2022-01-27 00:36:00'),
(26, '510b0nxizd', 'pending', '63uav5hw1hf28um', 1400000, 'online', 'paystack', 'pending', NULL, 12, 61, '2022-01-27 00:43:06', '2022-01-27 00:43:06'),
(27, 'me3o221lzl', 'pending', '0zy942mx1rx2jak', 1400000, 'online', 'paystack', 'pending', NULL, 12, 63, '2022-01-27 00:51:56', '2022-01-27 00:51:56'),
(28, 'mcybfwik7q', 'pending', 'gicucv45m97f797', 1600000, 'online', 'paystack', 'pending', NULL, 10, 73, '2022-01-27 17:03:45', '2022-01-27 17:03:45');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firstName` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastName` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '(DC2Type:json)',
  `dob` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phoneNumber` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profileImage` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `pin` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '$2y$10$FrrIx2mpsUHuWhtcNav6X.M3clxnKk5rFIDmkquWjEt3izeXfzrmK'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstName`, `lastName`, `address`, `dob`, `gender`, `city`, `state`, `country`, `phoneNumber`, `profileImage`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `pin`) VALUES
(10, 'Success', 'Arudovwen', '[{\"address\":\"10 Aregbesola Street, Alapere\",\"city\":\"Alimosho\",\"state\":\"Lagos State\",\"phoneNumber\":\"08102588399\",\"contact\":\"Success Ahon\",\"contact_email\":\"successahon@gmail.com\"}]', '28', NULL, NULL, 'Lagos State', NULL, '08102588399', 'https://res.cloudinary.com/entermarket/image/upload/v1639045974/mfwaiqhqqjulfea4xcky.jpg', 'succy2010@gmail.com', NULL, '$2y$10$1C5rbJWAVOQFV6cEdu7Vy.C3zGfoZ3N7SR2KbaRU8c2qjT7ViTVia', NULL, '2021-11-18 14:31:08', '2022-01-27 17:03:44', '$2y$10$FrrIx2mpsUHuWhtcNav6X.M3clxnKk5rFIDmkquWjEt3izeXfzrmK'),
(12, 'John', 'Snow', '[{\"address\":null,\"city\":\"Ajeromi-Ifelodun\",\"state\":\"Lagos State\"},{\"address\":\"10 Aregbesola Street, Alapere\",\"city\":\"Ajeromi-Ifelodun\",\"state\":\"Lagos State\",\"phoneNumber\":\"08102588399\"}]', NULL, NULL, 'Ajeromi-Ifelodun', 'Lagos State', NULL, '08102588390', 'http://localhost:8000/img/profile.jpeg', 'arudovwen@gmail.com', NULL, '$2y$10$c7/YRpwiIA.pAZ4dA9XYzOGQR8n1/CVVXWWlXIyS.77Lk4/eNQYYi', NULL, '2022-01-26 22:24:03', '2022-01-27 00:51:55', '$2y$10$FrrIx2mpsUHuWhtcNav6X.M3clxnKk5rFIDmkquWjEt3izeXfzrmK');

-- --------------------------------------------------------

--
-- Table structure for table `vendors`
--

CREATE TABLE `vendors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `name`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Monthly', 3, '2021-10-08 09:42:13', '2021-10-08 09:42:13'),
(2, 'Gamer', 3, '2021-10-08 09:43:25', '2021-10-08 09:43:25'),
(3, 'Gamer2', 3, '2021-10-08 09:43:44', '2021-10-08 09:43:44'),
(5, 'Gaming', 1, '2021-10-08 19:31:32', '2021-10-08 19:31:32'),
(6, 'Gamer2', 10, '2021-12-03 23:20:04', '2021-12-03 23:20:04');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist_items`
--

CREATE TABLE `wishlist_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `wishlist_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `store_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`),
  ADD KEY `brands_store_id_foreign` (`store_id`),
  ADD KEY `brands_category_id_foreign` (`category_id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_user_id_foreign` (`user_id`),
  ADD KEY `carts_store_id_foreign` (`store_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `linked_social_accounts`
--
ALTER TABLE `linked_social_accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `linked_social_accounts_user_id_foreign` (`user_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indexes for table `order_histories`
--
ALTER TABLE `order_histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_histories_user_id_foreign` (`user_id`),
  ADD KEY `order_histories_order_id_foreign` (`order_id`),
  ADD KEY `order_histories_store_id_foreign` (`store_id`) USING BTREE;

--
-- Indexes for table `order_information`
--
ALTER TABLE `order_information`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_information_user_id_foreign` (`user_id`),
  ADD KEY `order_information_order_id_foreign` (`order_id`);

--
-- Indexes for table `otp`
--
ALTER TABLE `otp`
  ADD PRIMARY KEY (`id`),
  ADD KEY `otp_user_id_foreign` (`user_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payments_user_id_foreign` (`user_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_store_id_foreign` (`store_id`),
  ADD KEY `products_brand_id_foreign` (`brand_id`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reports_user_id_foreign` (`user_id`),
  ADD KEY `reports_order_id_foreign` (`order_id`);

--
-- Indexes for table `stores`
--
ALTER TABLE `stores`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `store_orders`
--
ALTER TABLE `store_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_orders_store_id_foreign` (`store_id`),
  ADD KEY `store_orders_product_id_foreign` (`product_id`),
  ADD KEY `store_orders_user_id_foreign` (`user_id`);

--
-- Indexes for table `stories`
--
ALTER TABLE `stories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stories_user_id_foreign` (`user_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_user_id_foreign` (`user_id`),
  ADD KEY `transactions_order_id_foreign` (`order_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_phonenumber_unique` (`phoneNumber`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `vendors`
--
ALTER TABLE `vendors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wishlists_user_id_foreign` (`user_id`);

--
-- Indexes for table `wishlist_items`
--
ALTER TABLE `wishlist_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wishlist_items_wishlist_id_foreign` (`wishlist_id`),
  ADD KEY `wishlist_items_product_id_foreign` (`product_id`),
  ADD KEY `wishlist_items_store_id_foreign` (`store_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `linked_social_accounts`
--
ALTER TABLE `linked_social_accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `order_histories`
--
ALTER TABLE `order_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `order_information`
--
ALTER TABLE `order_information`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `otp`
--
ALTER TABLE `otp`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `stores`
--
ALTER TABLE `stores`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `store_orders`
--
ALTER TABLE `store_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `stories`
--
ALTER TABLE `stories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `vendors`
--
ALTER TABLE `vendors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `wishlist_items`
--
ALTER TABLE `wishlist_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
