-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 02, 2022 at 01:58 AM
-- Server version: 5.7.33-cll-lve
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ictconne_entermarket`
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
  `description` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `store_id` bigint(20) UNSIGNED DEFAULT NULL,
  `weight` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `product_id`, `quantity`, `price`, `brand_name`, `product_name`, `store_name`, `user_id`, `created_at`, `updated_at`, `description`, `image`, `store_id`, `weight`) VALUES
(1, 14, 21, 29500, 'Bag of Rice', 'Bag of Rice', 'Shopperholics', 2, '2022-01-06 11:53:18', '2022-01-07 09:34:56', 'Bag of rice', 'https://res.cloudinary.com/entermarket/image/upload/v1641236508/avpthlaf8gnd65q3jh5w.jpg', 1, '50'),
(2, 12, 3, 10000, 'Durex Condom Icy Blue', 'Durex Condom Icy Blue', 'Shopperholics', 2, '2022-01-06 12:03:54', '2022-01-06 12:57:12', 'Durex Extra Safe Condoms have been designed to offer you maximum protection during sex. Made from slightly thicker latex and extra silicone lubrication, Extra Safe Condoms can offer peace of mind without having to forfeit any of the pleasure. Relax and let yourself go.\nThe Durex Extra Safe condom is a thicker condom. It has a nominal width of 52.5mm with an easy-on shape. It is intimate and comfortable, lubricated and made of natural rubber latex. Each box of Durex Extra Safe 3\'s contains 3 pieces condoms.\nFeel safe and confident with the World\'s No. 1 Condom Brand.', 'https://res.cloudinary.com/entermarket/image/upload/v1641235972/nvijku2daf94pk2xrwhc.jpg', 1, '1');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `store_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `store_id`, `created_at`, `updated_at`) VALUES
(1, 'Detergents', 1, '2022-01-03 17:36:34', '2022-01-03 17:36:34'),
(2, 'Beverages', 1, '2022-01-03 17:36:44', '2022-01-03 17:36:44'),
(3, 'Kitchen Items', 1, '2022-01-03 17:38:15', '2022-01-03 17:38:15'),
(4, 'Condoms', 1, '2022-01-03 17:39:11', '2022-01-03 17:39:11'),
(5, 'Grocery', 1, '2022-01-03 17:39:48', '2022-01-03 17:39:48');

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
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
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
(12, '2021_06_15_230905_create_carts_table', 1),
(13, '2021_06_16_151539_create_linked_social_accounts_table', 1),
(14, '2021_08_04_200001_create_stores_table', 1),
(15, '2021_08_14_215746_add_description_image_to_carts_table', 1),
(16, '2021_08_15_005711_create_orders_table', 1),
(17, '2021_08_15_005812_create_order_histories_table', 1),
(18, '2021_08_15_020035_create_order_information_table', 1),
(19, '2021_08_15_121119_create_transactions_table', 1),
(20, '2021_08_15_182855_add_title_schedule_schedule_time_to_orders_table', 1),
(21, '2021_09_05_000926_create_stories_table', 1),
(22, '2021_09_14_122543_add_nullable_to_users_table', 1),
(23, '2021_09_15_225254_create_otp_table', 1),
(24, '2021_10_03_223143_create_categories_table', 1),
(25, '2021_10_03_233128_create_products_table', 1),
(26, '2021_10_04_001221_add_image_to_products_table', 1),
(27, '2021_10_05_020040_add_store_id_to_carts_table', 1),
(28, '2021_10_07_234213_create_wishlists_table', 1),
(29, '2021_10_08_092413_create_wishlist_items_table', 1),
(30, '2021_10_08_185309_add_items_to_orders_table', 1),
(31, '2021_10_08_194557_create_reports_table', 1),
(32, '2021_10_10_005633_add_name_to_orders_table', 1),
(33, '2021_10_10_225113_add_pin_to_users_table', 1),
(34, '2021_10_15_022434_add_delivery_method_to_order_information_table', 1),
(35, '2021_10_26_021903_create_payments_table', 1),
(36, '2021_11_05_210828_add_sales_price_active_to_products_table', 1),
(37, '2021_11_05_210922_add_email_password_to_stores_table', 1),
(38, '2021_11_07_200751_create_brands_table', 1),
(39, '2021_11_07_201027_add_brand_id_to_products_table', 1),
(40, '2021_11_08_132022_create_store_orders_table', 1),
(41, '2021_11_13_175831_add_paymentcode_to_payments', 1),
(42, '2021_11_14_192656_add_shipping_method_to_orders_table', 1),
(43, '2021_12_02_205027_add_lat_long_to_stores_table', 1),
(44, '2021_12_03_230510_add_images_to_products_table', 1),
(45, '2021_12_09_171050_add_category_id_to_brands_table', 1),
(46, '2021_12_11_011136_add_payment_status_to_store_orders', 1),
(47, '2021_12_11_172858_add_place_to_stores_table', 1),
(48, '2021_12_12_174039_add_email_password_name_to_admins_table', 1),
(49, '2021_12_14_182357_add_weight_to_products_table', 1),
(50, '2021_12_14_182428_add_weight_to_orders_table', 1),
(51, '2021_12_28_145733_add_text_to_payments_table', 1),
(52, '2022_01_01_232642_add_weight_to_carts_table', 1);

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
('638abd72-4f14-444d-8a55-9cb00de90860', 'App\\Notifications\\NewUser', 'App\\Models\\User', 2, '{\"message\":\"Welcome to my hood\",\"url\":\"http:\\/\\/entermarket.com\"}', '2022-01-06 12:33:11', '2022-01-04 15:24:23', '2022-01-06 12:33:11'),
('70bd04c4-74de-41e7-a2fb-9db5bfa84498', 'App\\Notifications\\OrderCreated', 'App\\Models\\User', 1, '{\"message\":\"Your order has been created\",\"url\":\"http:\\/\\/entermarket.net\\/profile?showing=4\"}', '2022-01-05 19:45:14', '2022-01-05 19:43:44', '2022-01-05 19:45:14'),
('7a688819-63e5-4774-af90-8736729b3699', 'App\\Notifications\\NewOrderAlert', 'App\\Models\\Admin', 1, '{\"message\":\"There is a new pending order\"}', '2022-01-06 00:16:11', '2022-01-05 19:43:44', '2022-01-06 00:16:11'),
('7d51e8eb-4667-49d3-a3ae-533e3c5260cc', 'App\\Notifications\\NewOrderAlert', 'App\\Models\\Admin', 1, '{\"message\":\"There is a new pending order\"}', '2022-01-06 00:16:22', '2022-01-05 19:41:47', '2022-01-06 00:16:22'),
('7e082003-2abf-4445-bef1-a4a5d121beb9', 'App\\Notifications\\OrderCreated', 'App\\Models\\User', 1, '{\"message\":\"Your order has been created\",\"url\":\"http:\\/\\/entermarket.net\\/profile?showing=4\"}', '2022-01-05 19:45:12', '2022-01-05 19:41:47', '2022-01-05 19:45:12'),
('8d064056-daf9-4fce-8ba7-17e096ccdec6', 'App\\Notifications\\OrderCreated', 'App\\Models\\User', 3, '{\"message\":\"Your order has been created and is being processed\",\"url\":\"http:\\/\\/entermarket.net\\/profile?showing=4\"}', '2022-01-06 19:44:30', '2022-01-06 19:43:50', '2022-01-06 19:44:30'),
('97f69ff6-c7f7-4aac-8d69-5b7781226d39', 'App\\Notifications\\NewOrderAlert', 'App\\Models\\Admin', 1, '{\"body\":\"There is a new pending order\"}', NULL, '2022-01-06 19:43:50', '2022-01-06 19:43:50'),
('be8ad77e-0750-45c6-adb9-01d1712628b3', 'App\\Notifications\\OrderCreated', 'App\\Models\\User', 1, '{\"message\":\"Your order has been created and is being processed\",\"url\":\"http:\\/\\/entermarket.net\\/profile?showing=4\"}', '2022-01-13 07:01:09', '2022-01-13 07:00:20', '2022-01-13 07:01:09'),
('d85ce6a0-e210-4c73-816a-ba8bc5e50f8b', 'App\\Notifications\\NewOrderAlert', 'App\\Models\\Admin', 1, '{\"body\":\"There is a new pending order\"}', NULL, '2022-01-13 07:00:20', '2022-01-13 07:00:20'),
('dcf4223c-6caa-4916-aa4b-41ed1d869c00', 'App\\Notifications\\NewUser', 'App\\Models\\User', 3, '{\"message\":\"Welcome to my hood\",\"url\":\"http:\\/\\/entermarket.com\"}', '2022-01-06 19:26:08', '2022-01-06 18:50:46', '2022-01-06 19:26:08');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('0461fc2868052de841e28cb3b0630527926414d326dcf886ba6232a8d2cfcc80c4adc5d89f4c2d69', 1, 1, 'authToken', '[]', 0, '2022-01-06 19:10:07', '2022-01-06 19:10:07', '2023-01-06 20:10:07'),
('06c960831162efb83fa55666f4e051ddf8ee84361a44bf05c53c425ff9233d743258a73f60e56824', 2, 1, 'authToken', '[]', 1, '2022-01-07 09:26:13', '2022-01-07 09:26:13', '2023-01-07 10:26:13'),
('0a385ecab3523a253790f578899babe80d524dcef437b36e23b3de29959c490aa7a827aa0f86a0af', 2, 1, 'authToken', '[]', 0, '2022-01-07 09:15:18', '2022-01-07 09:15:18', '2023-01-07 10:15:18'),
('132e15e839b888deef6885553f851253c8dcc0000b944edbd06e9a47c775764f8bec9962301ff4d8', 2, 1, 'authToken', '[]', 1, '2022-01-04 15:24:26', '2022-01-04 15:24:26', '2023-01-04 16:24:26'),
('13c6ce51e0f867c18da9353391443615a4569a3056328c5e86405ccad0c20eed62941612d59977f5', 3, 1, 'authToken', '[]', 0, '2022-01-06 18:50:46', '2022-01-06 18:50:46', '2023-01-06 19:50:46'),
('19f87c44ecced2111a75d3dbdaf135b38ec9877aacbe5b4f5a6f7beb0145a2bd0f649aa0d2711cab', 1, 1, 'authToken', '[]', 0, '2022-01-13 23:13:17', '2022-01-13 23:13:17', '2023-01-14 00:13:17'),
('1a87ed3b72c841b0c1876e8a79768ee64a29e8df0a9c1dff4da1e38466d4bd3f4a864c308ed55600', 1, 1, 'authToken', '[]', 0, '2022-01-03 16:36:47', '2022-01-03 16:36:47', '2023-01-03 17:36:47'),
('1d04fa4b3450ee071ade6b75457ce2d868c172017f5f62a9214ab1d84a8d8b21e5c4e0ff27f6ef9c', 1, 1, 'authToken', '[]', 1, '2022-01-10 12:30:10', '2022-01-10 12:30:10', '2023-01-10 13:30:10'),
('22a1b88ff174d7e0ceb0dc7276397d95dfed89323c11fac54a2f6dc28e79b6105d37190ab8cd3aca', 1, 1, 'authToken', '[]', 0, '2022-01-05 23:06:38', '2022-01-05 23:06:38', '2023-01-06 00:06:38'),
('24215c0bff3e093054a6e2558e02ed3b3855cdb2b04a21828d7fc6f41fbf1ade263be07568f4ddd0', 1, 1, 'authToken', '[]', 0, '2022-01-04 20:03:00', '2022-01-04 20:03:00', '2023-01-04 21:03:00'),
('268659e9db7b7c01d2efe3dbace3e4c64336fdf146d04896d64148bec3377ca8867f007be47760c3', 1, 1, 'authToken', '[]', 0, '2022-01-04 12:01:07', '2022-01-04 12:01:07', '2023-01-04 13:01:07'),
('3424fa3d6d9b409cb33f7e3f682190f450c3d2b5d907e66c2ee3efae18b19ba5e75aa88df052eb30', 1, 1, 'authToken', '[]', 1, '2022-01-05 19:22:05', '2022-01-05 19:22:05', '2023-01-05 20:22:05'),
('3f403d29f8aa8a8e213cd511f2ffe390ae9bdc250ad62be8755c2d311a8af94175ff8d1cacc00bba', 3, 1, 'authToken', '[]', 0, '2022-01-06 19:24:41', '2022-01-06 19:24:41', '2023-01-06 20:24:41'),
('40a3521ae2470ccc41444e917bcb26f33a9be7853e167416d5d8a9bf713a178ac2ff7023b5c80214', 1, 1, 'authToken', '[]', 0, '2022-01-06 17:20:15', '2022-01-06 17:20:15', '2023-01-06 18:20:15'),
('450852fc20360c87eb92f390276d8bfa79b188acb1d37349c169d0580f9224c28d84e341f4a1de92', 2, 1, 'authToken', '[]', 1, '2022-01-04 19:39:55', '2022-01-04 19:39:55', '2023-01-04 20:39:55'),
('5d483476de09815acdbe1ffb5fb31a5424c1123184db846ec17f5823a341963c5471def3872ea53c', 1, 1, 'authToken', '[]', 1, '2022-01-05 22:15:26', '2022-01-05 22:15:26', '2023-01-05 23:15:26'),
('60042906d5826d18ca2d0ece57fe5fbadf2c6294bd1e12f99a7fb48bed51658eed51d6e3e6506a83', 1, 1, 'authToken', '[]', 0, '2022-01-26 19:14:14', '2022-01-26 19:14:14', '2023-01-26 20:14:14'),
('7892e9ce24aa34282373bf755f9fcab7c1b4c9af706d94eabfe5efe7d462a1242dac5e54fdde9a20', 1, 1, 'authToken', '[]', 1, '2022-01-10 12:34:43', '2022-01-10 12:34:43', '2023-01-10 13:34:43'),
('80169081b869ff77bba9c3ddb16ea2e409ca56f053e4ca58d8363eb4f7a2438c3fd059547d892355', 1, 1, 'authToken', '[]', 0, '2022-01-12 05:37:14', '2022-01-12 05:37:14', '2023-01-12 06:37:14'),
('a4ea530256aba936633c7326e3891a4cc45ae3ebcd0acac49491b64dcafcfc57facc083c637d8b53', 1, 1, 'authToken', '[]', 1, '2022-01-04 10:09:29', '2022-01-04 10:09:29', '2023-01-04 11:09:29'),
('ad4a2c291a01e227b4eed109bc709b1add9c215672b9461bcf3dc66cf2316089bfb70ea3049cc94d', 1, 1, 'authToken', '[]', 0, '2022-01-06 16:03:22', '2022-01-06 16:03:22', '2023-01-06 17:03:22'),
('ad7fdc40728f3c3a2510dd06d86bc988d68c666772f5e443090b126f96035fd6d6280f57df6886e6', 2, 1, 'authToken', '[]', 0, '2022-01-04 15:24:23', '2022-01-04 15:24:23', '2023-01-04 16:24:23'),
('b36f88fe4078bfc56d3420effdc0b5957572595f376dceaabbc51d659f988ac0bfc1853ba534e669', 1, 1, 'authToken', '[]', 0, '2022-01-03 17:24:39', '2022-01-03 17:24:39', '2023-01-03 18:24:39'),
('b3caf7d675bc50f4c1416682d3101da0108679b72196e85a50ae04abb856e3785f270af2dc96c278', 1, 1, 'authToken', '[]', 0, '2022-01-06 00:03:01', '2022-01-06 00:03:01', '2023-01-06 01:03:01'),
('b5190b0dd93252422296b4683b225bac554dd54cc6838704828d406762dac798bc4a95fe23b9e727', 2, 1, 'authToken', '[]', 1, '2022-01-07 07:57:17', '2022-01-07 07:57:17', '2023-01-07 08:57:17'),
('b62132aea7b72fd55555e71e12e5d9c40edd5dcefe9ad73eff3df348174790dbd761af533e5cb4d5', 1, 1, 'authToken', '[]', 1, '2022-01-10 12:30:25', '2022-01-10 12:30:25', '2023-01-10 13:30:25'),
('b9b5679d7061c5d79f8045c5b8e1bcc44fff0a0093f9c24e7b113cac1d3adb608f9fe506b7faec64', 1, 1, 'authToken', '[]', 0, '2022-01-10 12:32:29', '2022-01-10 12:32:29', '2023-01-10 13:32:29'),
('bd2aab965e1d4202c0a405387b8ab206e1d0826cd27d626951eff6622989700bc239547f15aff9b0', 1, 1, 'authToken', '[]', 0, '2022-01-03 16:29:21', '2022-01-03 16:29:21', '2023-01-03 17:29:21'),
('c4109a27c9b8144b1a83f17859c98803c070e19f80e82976a1bc28527d717a5a1bb7098c0be4bd27', 2, 1, 'authToken', '[]', 0, '2022-01-06 11:43:23', '2022-01-06 11:43:23', '2023-01-06 12:43:23'),
('ce901194cdeefc13d49120a03d8e898ac0ecab61f6c1d47d8f7416c41480cdd70fd39d95594ef658', 2, 1, 'authToken', '[]', 0, '2022-01-06 11:45:23', '2022-01-06 11:45:23', '2023-01-06 12:45:23'),
('cf45b5ba421354ae1178c069af046104c4023d690489f0cb2a54c647b02ddfc0afeb96880db7f38d', 1, 1, 'authToken', '[]', 0, '2022-01-13 06:58:42', '2022-01-13 06:58:42', '2023-01-13 07:58:42'),
('d88401d102d568a365b3db991648cb51176948e81deadd65632376e873cc8c9fa8ac624c5947bee7', 1, 1, 'authToken', '[]', 0, '2022-01-03 17:26:16', '2022-01-03 17:26:16', '2023-01-03 18:26:16'),
('dc5c5b1b30df47c2e53cad36299f997384087bf8fbc9c2008229d544396132811cec2b16429ee6bf', 2, 1, 'authToken', '[]', 0, '2022-01-07 09:19:54', '2022-01-07 09:19:54', '2023-01-07 10:19:54'),
('e30fdb42143a6fc03a56759764bc0d19fb6e5574afed4cbcc68373f8a87e8a31415c2d4579c1b3b1', 1, 1, 'authToken', '[]', 1, '2022-01-05 20:35:21', '2022-01-05 20:35:21', '2023-01-05 21:35:21'),
('e42591765536773df00778336d5253217f4e24f6f894fc98e5bc82793bc924634edc3ec1ced870d0', 2, 1, 'authToken', '[]', 0, '2022-02-01 11:57:48', '2022-02-01 11:57:48', '2023-02-01 12:57:48'),
('ed1af089bcfd13b678e27b60dc5438b3a1c632e53fbfbcb67732686209ab2fd6ed37ed988fa228e0', 1, 1, 'authToken', '[]', 0, '2022-01-13 23:36:11', '2022-01-13 23:36:11', '2023-01-14 00:36:11'),
('fa7c50c7dce71b7ff019ad76143d152ff4a49516172e42364f9aa1e97ad5b55981be9d375f754f43', 1, 1, 'authToken', '[]', 0, '2022-01-07 09:56:35', '2022-01-07 09:56:35', '2023-01-07 10:56:35');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
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

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `total_amount` int(11) NOT NULL,
  `tax` int(11) NOT NULL DEFAULT '0',
  `commission` int(11) NOT NULL DEFAULT '0',
  `shipping_charges` int(11) NOT NULL DEFAULT '0',
  `promo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount` int(11) NOT NULL DEFAULT '0',
  `grand_total` int(11) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isScheduled` tinyint(1) NOT NULL DEFAULT '0',
  `schedule_time` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `items` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'Order-3470',
  `payment_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `shipping_method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logistic` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logistic_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `order_no`, `status`, `total_amount`, `tax`, `commission`, `shipping_charges`, `promo`, `discount`, `grand_total`, `user_id`, `created_at`, `updated_at`, `title`, `isScheduled`, `schedule_time`, `items`, `name`, `payment_status`, `shipping_method`, `weight`, `logistic`, `logistic_status`) VALUES
(3, '90994567', 'pending', 34860, 0, 0, 0, NULL, 0, 34860, 1, '2022-01-05 19:33:56', '2022-01-05 19:33:56', 'Order', 0, '2022-01-05T19:27:54.602Z', 7, 'January Shopping', 'pending', 'standard', '53', NULL, NULL),
(4, '46486818', 'assigned', 34860, 0, 0, 0, NULL, 0, 34860, 1, '2022-01-05 19:35:21', '2022-01-06 00:06:50', 'Order', 0, '2022-01-05T19:34:49.282Z', 7, 'January Shopping', 'paid', 'standard', '53', 'gokada', 'delivered'),
(5, '18873367', 'pending', 98500, 0, 0, 0, '0', 0, 98500, 2, '2022-01-06 12:51:22', '2022-01-06 12:51:22', 'Toys', 1, '2022-01-11T00:00:00.0000001-01-01T15:00:00.0000001-01-01T19:00:00.000', 4, 'Order-9167', 'pending', 'Standard', '151', NULL, NULL),
(6, '90277980', 'pending', 148000, 0, 0, 0, '0', 0, 148000, 2, '2022-01-06 12:58:14', '2022-01-06 12:58:14', 'toys', 1, '2022-01-12T00:00:00.0000001-01-01T07:00:00.0000001-01-01T17:00:00.000', 7, 'Order-5342', 'pending', 'Standard', '203', NULL, NULL),
(9, '98820304', 'pending', 33308, 0, 0, 0, '0', 0, 33308, 1, '2022-01-06 16:18:49', '2022-01-06 16:18:49', 'Shopping List', 1, '2022-01-07T00:00:00.0000001-01-01T12:00:00.0000001-01-01T12:00:00.000', 7, 'Order-6427', 'pending', 'Standard', '4', NULL, NULL),
(10, '68958183', 'pending', 96898, 0, 0, 0, '0', 0, 96898, 1, '2022-01-06 19:14:42', '2022-01-06 19:14:42', 'EM1', 1, '2022-03-02T00:00:00.0000001-01-01T14:00:00.0000001-01-01T14:29:00.000', 14, 'Order-2155', 'pending', 'Standard', '107', NULL, NULL),
(11, '87751448', 'pending', 10450, 0, 0, 0, NULL, 0, 10450, 3, '2022-01-06 19:34:28', '2022-01-06 19:34:28', 'Order', 0, '2022-01-06T19:31:17.199Z', 2, 'Order-3833', 'pending', 'standard', '1', NULL, NULL),
(12, '66870708', 'pending', 10450, 0, 0, 0, NULL, 0, 10450, 3, '2022-01-06 19:38:46', '2022-01-06 19:43:50', 'Order', 0, '2022-01-06T19:38:29.874Z', 2, 'Order-8173', 'paid', 'standard', '1', NULL, NULL),
(13, '99237296', 'pending', 26829, 0, 0, 0, NULL, 0, 26829, 1, '2022-01-07 09:58:00', '2022-01-07 09:58:00', 'Order', 0, '2022-01-07T09:57:41.950Z', 5, 'Order-4729', 'pending', 'standard', '3', NULL, NULL),
(14, '18303472', 'pending', 649500, 0, 0, 0, '0', 0, 649500, 2, '2022-01-08 22:39:08', '2022-01-08 22:39:08', 'Lagos', 1, '2022-01-19T00:00:00.0000001-01-01T17:00:00.0000001-01-01T17:00:00.000', 24, 'Order-5448', 'pending', 'Standard', '1053', NULL, NULL),
(15, '41391115', 'pending', 27159, 0, 0, 0, '0', 0, 27159, 1, '2022-01-09 09:34:02', '2022-01-09 09:34:02', 'best order', 1, '2022-01-09T00:00:00.0000001-01-01T13:00:00.0000001-01-01T15:00:00.000', 8, 'Order-7498', 'pending', 'Standard', '3', NULL, NULL),
(16, '17046318', 'pending', 649500, 0, 0, 0, '0', 0, 649500, 2, '2022-01-10 08:17:44', '2022-01-10 08:17:44', 'Montly', 1, '2022-01-12T00:00:00.0000001-01-01T08:00:00.0000001-01-01T17:00:00.000', 24, 'Order-4790', 'pending', 'Standard', '1053', NULL, NULL),
(17, '34064135', 'pending', 550, 0, 0, 0, NULL, 0, 550, 1, '2022-01-13 06:59:55', '2022-01-13 07:00:20', 'Order', 0, '2022-01-13T06:59:40.205Z', 1, 'Order-2949', 'paid', 'standard', '0', NULL, NULL);

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
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `store_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_histories`
--

INSERT INTO `order_histories` (`id`, `product_id`, `subtotal`, `quantity`, `price`, `brand_name`, `product_name`, `store_name`, `description`, `image`, `user_id`, `order_id`, `store_id`, `created_at`, `updated_at`) VALUES
(3, 14, 29500, 1, 29500, 'Bag of Rice', 'Bag of Rice', 'Shopperholics', 'Bag of rice', 'https://res.cloudinary.com/entermarket/image/upload/v1641236508/avpthlaf8gnd65q3jh5w.jpg', 1, 3, 1, '2022-01-05 19:33:56', '2022-01-05 19:33:56'),
(4, 10, 550, 1, 550, 'Dano Sachet Milk 90g - 12pcs', 'Dano Sachet Milk 90g - 12pcs', 'Shopperholics', 'Dano Skimmed Milk Powder - It is an excellent choice of milk powder with 0.1 fat. It is specially formulated for consumers who want to maximize the benefits of milk but minimize the intake of fats.', 'https://res.cloudinary.com/entermarket/image/upload/v1641235674/mvwtoltwliu434h4f2is.jpg', 1, 3, 1, '2022-01-05 19:33:56', '2022-01-05 19:33:56'),
(5, 11, 900, 2, 450, 'Dano Milk 400g x1', 'Dano Milk 400g x1', 'Shopperholics', 'Dano Skimmed Milk Powder - It is an excellent choice of milk powder with 0.1 fat. It is specially formulated for consumers who want to maximize the benefits of milk but minimize the intake of fats.', 'https://res.cloudinary.com/entermarket/image/upload/v1641235773/aoor8wnduqnmlskl4d3x.jpg', 1, 3, 1, '2022-01-05 19:33:56', '2022-01-05 19:33:56'),
(6, 9, 1450, 1, 1450, 'Cway Bottle water', 'Cway Bottle water', 'Shopperholics', 'it does not require electricity to operate, just close the pump on top of a standard plastic water bottle and then press down the pump to have water gush out for drinking.', 'https://res.cloudinary.com/entermarket/image/upload/v1641235478/tx2s8aca5fffjdlppdwn.jpg', 1, 3, 1, '2022-01-05 19:33:56', '2022-01-05 19:33:56'),
(7, 3, 2460, 2, 1230, 'Indomie Onion Flavour', 'Indomie Onion Flavour', 'Shopperholics', 'Popular for its exotic taste, Indomie Onion Chicken flavour is made of rich ingredients, spices and chicken flavour. This flavour comes with a sachet of seasoning oil made from fresh onions in vegetable oil, which when cooked together with the seasoning sachet gives a nutrition and irresistible serving, rich in taste and aroma.', 'https://res.cloudinary.com/entermarket/image/upload/v1641234067/grgf1fbifibypyciwdh7.jpg', 1, 3, 1, '2022-01-05 19:33:56', '2022-01-05 19:33:56'),
(8, 14, 29500, 1, 29500, 'Bag of Rice', 'Bag of Rice', 'Shopperholics', 'Bag of rice', 'https://res.cloudinary.com/entermarket/image/upload/v1641236508/avpthlaf8gnd65q3jh5w.jpg', 1, 4, 1, '2022-01-05 19:35:21', '2022-01-05 19:35:21'),
(9, 10, 550, 1, 550, 'Dano Sachet Milk 90g - 12pcs', 'Dano Sachet Milk 90g - 12pcs', 'Shopperholics', 'Dano Skimmed Milk Powder - It is an excellent choice of milk powder with 0.1 fat. It is specially formulated for consumers who want to maximize the benefits of milk but minimize the intake of fats.', 'https://res.cloudinary.com/entermarket/image/upload/v1641235674/mvwtoltwliu434h4f2is.jpg', 1, 4, 1, '2022-01-05 19:35:21', '2022-01-05 19:35:21'),
(10, 11, 900, 2, 450, 'Dano Milk 400g x1', 'Dano Milk 400g x1', 'Shopperholics', 'Dano Skimmed Milk Powder - It is an excellent choice of milk powder with 0.1 fat. It is specially formulated for consumers who want to maximize the benefits of milk but minimize the intake of fats.', 'https://res.cloudinary.com/entermarket/image/upload/v1641235773/aoor8wnduqnmlskl4d3x.jpg', 1, 4, 1, '2022-01-05 19:35:21', '2022-01-05 19:35:21'),
(11, 9, 1450, 1, 1450, 'Cway Bottle water', 'Cway Bottle water', 'Shopperholics', 'it does not require electricity to operate, just close the pump on top of a standard plastic water bottle and then press down the pump to have water gush out for drinking.', 'https://res.cloudinary.com/entermarket/image/upload/v1641235478/tx2s8aca5fffjdlppdwn.jpg', 1, 4, 1, '2022-01-05 19:35:21', '2022-01-05 19:35:21'),
(12, 3, 2460, 2, 1230, 'Indomie Onion Flavour', 'Indomie Onion Flavour', 'Shopperholics', 'Popular for its exotic taste, Indomie Onion Chicken flavour is made of rich ingredients, spices and chicken flavour. This flavour comes with a sachet of seasoning oil made from fresh onions in vegetable oil, which when cooked together with the seasoning sachet gives a nutrition and irresistible serving, rich in taste and aroma.', 'https://res.cloudinary.com/entermarket/image/upload/v1641234067/grgf1fbifibypyciwdh7.jpg', 1, 4, 1, '2022-01-05 19:35:21', '2022-01-05 19:35:21'),
(13, 14, 88500, 3, 29500, 'Bag of Rice', 'Bag of Rice', 'Shopperholics', 'Bag of rice', 'https://res.cloudinary.com/entermarket/image/upload/v1641236508/avpthlaf8gnd65q3jh5w.jpg', 2, 5, 1, '2022-01-06 12:51:22', '2022-01-06 12:51:22'),
(14, 12, 10000, 1, 10000, 'Durex Condom Icy Blue', 'Durex Condom Icy Blue', 'Shopperholics', 'Durex Extra Safe Condoms have been designed to offer you maximum protection during sex. Made from slightly thicker latex and extra silicone lubrication, Extra Safe Condoms can offer peace of mind without having to forfeit any of the pleasure. Relax and let yourself go.\nThe Durex Extra Safe condom is a thicker condom. It has a nominal width of 52.5mm with an easy-on shape. It is intimate and comfortable, lubricated and made of natural rubber latex. Each box of Durex Extra Safe 3\'s contains 3 pieces condoms.\nFeel safe and confident with the World\'s No. 1 Condom Brand.', 'https://res.cloudinary.com/entermarket/image/upload/v1641235972/nvijku2daf94pk2xrwhc.jpg', 2, 5, 1, '2022-01-06 12:51:22', '2022-01-06 12:51:22'),
(15, 14, 118000, 4, 29500, 'Bag of Rice', 'Bag of Rice', 'Shopperholics', 'Bag of rice', 'https://res.cloudinary.com/entermarket/image/upload/v1641236508/avpthlaf8gnd65q3jh5w.jpg', 2, 6, 1, '2022-01-06 12:58:14', '2022-01-06 12:58:14'),
(16, 12, 30000, 3, 10000, 'Durex Condom Icy Blue', 'Durex Condom Icy Blue', 'Shopperholics', 'Durex Extra Safe Condoms have been designed to offer you maximum protection during sex. Made from slightly thicker latex and extra silicone lubrication, Extra Safe Condoms can offer peace of mind without having to forfeit any of the pleasure. Relax and let yourself go.\nThe Durex Extra Safe condom is a thicker condom. It has a nominal width of 52.5mm with an easy-on shape. It is intimate and comfortable, lubricated and made of natural rubber latex. Each box of Durex Extra Safe 3\'s contains 3 pieces condoms.\nFeel safe and confident with the World\'s No. 1 Condom Brand.', 'https://res.cloudinary.com/entermarket/image/upload/v1641235972/nvijku2daf94pk2xrwhc.jpg', 2, 6, 1, '2022-01-06 12:58:14', '2022-01-06 12:58:14'),
(19, 13, 29198, 2, 14599, 'Durex Condom Rosey Red', 'Durex Condom Rosey Red', 'Shopperholics', 'Durex Extra Safe Condoms have been designed to offer you maximum protection during sex. Made from slightly thicker latex and extra silicone lubrication, Extra Safe Condoms can offer peace of mind without having to forfeit any of the pleasure. Relax and let yourself go.\nThe Durex Extra Safe condom is a thicker condom. It has a nominal width of 52.5mm with an easy-on shape. It is intimate and comfortable, lubricated and made of natural rubber latex. Each box of Durex Extra Safe 3\'s contains 3 pieces condoms.\nFeel safe and confident with the World\'s No. 1 Condom Brand.', 'https://res.cloudinary.com/entermarket/image/upload/v1641236028/pebxpbwkjvlmwrzpvh9h.jpg', 1, 9, 1, '2022-01-06 16:18:49', '2022-01-06 16:18:49'),
(24, 10, 1650, 3, 550, 'Dano Sachet Milk 90g - 12pcs', 'Dano Sachet Milk 90g - 12pcs', 'Shopperholics', 'Dano Skimmed Milk Powder - It is an excellent choice of milk powder with 0.1 fat. It is specially formulated for consumers who want to maximize the benefits of milk but minimize the intake of fats.', 'https://res.cloudinary.com/entermarket/image/upload/v1641235674/mvwtoltwliu434h4f2is.jpg', 1, 9, 1, '2022-01-06 16:18:49', '2022-01-06 16:18:49'),
(25, 3, 2460, 2, 1230, 'Indomie Onion Flavour', 'Indomie Onion Flavour', 'Shopperholics', 'Popular for its exotic taste, Indomie Onion Chicken flavour is made of rich ingredients, spices and chicken flavour. This flavour comes with a sachet of seasoning oil made from fresh onions in vegetable oil, which when cooked together with the seasoning sachet gives a nutrition and irresistible serving, rich in taste and aroma.', 'https://res.cloudinary.com/entermarket/image/upload/v1641234067/grgf1fbifibypyciwdh7.jpg', 1, 9, 1, '2022-01-06 16:18:49', '2022-01-06 16:18:49'),
(26, 13, 29198, 2, 14599, 'Durex Condom Rosey Red', 'Durex Condom Rosey Red', 'Shopperholics', 'Durex Extra Safe Condoms have been designed to offer you maximum protection during sex. Made from slightly thicker latex and extra silicone lubrication, Extra Safe Condoms can offer peace of mind without having to forfeit any of the pleasure. Relax and let yourself go.\nThe Durex Extra Safe condom is a thicker condom. It has a nominal width of 52.5mm with an easy-on shape. It is intimate and comfortable, lubricated and made of natural rubber latex. Each box of Durex Extra Safe 3\'s contains 3 pieces condoms.\nFeel safe and confident with the World\'s No. 1 Condom Brand.', 'https://res.cloudinary.com/entermarket/image/upload/v1641236028/pebxpbwkjvlmwrzpvh9h.jpg', 1, 10, 1, '2022-01-06 19:14:42', '2022-01-06 19:14:42'),
(27, 10, 1650, 3, 550, 'Dano Sachet Milk 90g - 12pcs', 'Dano Sachet Milk 90g - 12pcs', 'Shopperholics', 'Dano Skimmed Milk Powder - It is an excellent choice of milk powder with 0.1 fat. It is specially formulated for consumers who want to maximize the benefits of milk but minimize the intake of fats.', 'https://res.cloudinary.com/entermarket/image/upload/v1641235674/mvwtoltwliu434h4f2is.jpg', 1, 10, 1, '2022-01-06 19:14:42', '2022-01-06 19:14:42'),
(28, 3, 6150, 5, 1230, 'Indomie Onion Flavour', 'Indomie Onion Flavour', 'Shopperholics', 'Popular for its exotic taste, Indomie Onion Chicken flavour is made of rich ingredients, spices and chicken flavour. This flavour comes with a sachet of seasoning oil made from fresh onions in vegetable oil, which when cooked together with the seasoning sachet gives a nutrition and irresistible serving, rich in taste and aroma.', 'https://res.cloudinary.com/entermarket/image/upload/v1641234067/grgf1fbifibypyciwdh7.jpg', 1, 10, 1, '2022-01-06 19:14:42', '2022-01-06 19:14:42'),
(29, 14, 59000, 2, 29500, 'Bag of Rice', 'Bag of Rice', 'Shopperholics', 'Bag of rice', 'https://res.cloudinary.com/entermarket/image/upload/v1641236508/avpthlaf8gnd65q3jh5w.jpg', 1, 10, 1, '2022-01-06 19:14:42', '2022-01-06 19:14:42'),
(30, 11, 900, 2, 450, 'Dano Milk 400g x1', 'Dano Milk 400g x1', 'Shopperholics', 'Dano Skimmed Milk Powder - It is an excellent choice of milk powder with 0.1 fat. It is specially formulated for consumers who want to maximize the benefits of milk but minimize the intake of fats.', 'https://res.cloudinary.com/entermarket/image/upload/v1641235773/aoor8wnduqnmlskl4d3x.jpg', 1, 10, 1, '2022-01-06 19:14:43', '2022-01-06 19:14:43'),
(31, 11, 450, 1, 450, 'Dano Milk 400g x1', 'Dano Milk 400g x1', 'Shopperholics', 'Dano Skimmed Milk Powder - It is an excellent choice of milk powder with 0.1 fat. It is specially formulated for consumers who want to maximize the benefits of milk but minimize the intake of fats.', 'https://res.cloudinary.com/entermarket/image/upload/v1641235773/aoor8wnduqnmlskl4d3x.jpg', 3, 11, 1, '2022-01-06 19:34:28', '2022-01-06 19:34:28'),
(32, 12, 10000, 1, 10000, 'Durex Condom Icy Blue', 'Durex Condom Icy Blue', 'Shopperholics', 'Durex Extra Safe Condoms have been designed to offer you maximum protection during sex. Made from slightly thicker latex and extra silicone lubrication, Extra Safe Condoms can offer peace of mind without having to forfeit any of the pleasure. Relax and let yourself go.\nThe Durex Extra Safe condom is a thicker condom. It has a nominal width of 52.5mm with an easy-on shape. It is intimate and comfortable, lubricated and made of natural rubber latex. Each box of Durex Extra Safe 3\'s contains 3 pieces condoms.\nFeel safe and confident with the World\'s No. 1 Condom Brand.', 'https://res.cloudinary.com/entermarket/image/upload/v1641235972/nvijku2daf94pk2xrwhc.jpg', 3, 11, 1, '2022-01-06 19:34:28', '2022-01-06 19:34:28'),
(33, 11, 450, 1, 450, 'Dano Milk 400g x1', 'Dano Milk 400g x1', 'Shopperholics', 'Dano Skimmed Milk Powder - It is an excellent choice of milk powder with 0.1 fat. It is specially formulated for consumers who want to maximize the benefits of milk but minimize the intake of fats.', 'https://res.cloudinary.com/entermarket/image/upload/v1641235773/aoor8wnduqnmlskl4d3x.jpg', 3, 12, 1, '2022-01-06 19:38:46', '2022-01-06 19:38:46'),
(34, 12, 10000, 1, 10000, 'Durex Condom Icy Blue', 'Durex Condom Icy Blue', 'Shopperholics', 'Durex Extra Safe Condoms have been designed to offer you maximum protection during sex. Made from slightly thicker latex and extra silicone lubrication, Extra Safe Condoms can offer peace of mind without having to forfeit any of the pleasure. Relax and let yourself go.\nThe Durex Extra Safe condom is a thicker condom. It has a nominal width of 52.5mm with an easy-on shape. It is intimate and comfortable, lubricated and made of natural rubber latex. Each box of Durex Extra Safe 3\'s contains 3 pieces condoms.\nFeel safe and confident with the World\'s No. 1 Condom Brand.', 'https://res.cloudinary.com/entermarket/image/upload/v1641235972/nvijku2daf94pk2xrwhc.jpg', 3, 12, 1, '2022-01-06 19:38:46', '2022-01-06 19:38:46'),
(35, 13, 14599, 1, 14599, 'Durex Condom Rosey Red', 'Durex Condom Rosey Red', 'Shopperholics', 'Durex Extra Safe Condoms have been designed to offer you maximum protection during sex. Made from slightly thicker latex and extra silicone lubrication, Extra Safe Condoms can offer peace of mind without having to forfeit any of the pleasure. Relax and let yourself go.\nThe Durex Extra Safe condom is a thicker condom. It has a nominal width of 52.5mm with an easy-on shape. It is intimate and comfortable, lubricated and made of natural rubber latex. Each box of Durex Extra Safe 3\'s contains 3 pieces condoms.\nFeel safe and confident with the World\'s No. 1 Condom Brand.', 'https://res.cloudinary.com/entermarket/image/upload/v1641236028/pebxpbwkjvlmwrzpvh9h.jpg', 1, 13, 1, '2022-01-07 09:58:00', '2022-01-07 09:58:00'),
(36, 10, 550, 1, 550, 'Dano Sachet Milk 90g - 12pcs', 'Dano Sachet Milk 90g - 12pcs', 'Shopperholics', 'Dano Skimmed Milk Powder - It is an excellent choice of milk powder with 0.1 fat. It is specially formulated for consumers who want to maximize the benefits of milk but minimize the intake of fats.', 'https://res.cloudinary.com/entermarket/image/upload/v1641235674/mvwtoltwliu434h4f2is.jpg', 1, 13, 1, '2022-01-07 09:58:00', '2022-01-07 09:58:00'),
(37, 3, 1230, 1, 1230, 'Indomie Onion Flavour', 'Indomie Onion Flavour', 'Shopperholics', 'Popular for its exotic taste, Indomie Onion Chicken flavour is made of rich ingredients, spices and chicken flavour. This flavour comes with a sachet of seasoning oil made from fresh onions in vegetable oil, which when cooked together with the seasoning sachet gives a nutrition and irresistible serving, rich in taste and aroma.', 'https://res.cloudinary.com/entermarket/image/upload/v1641234067/grgf1fbifibypyciwdh7.jpg', 1, 13, 1, '2022-01-07 09:58:00', '2022-01-07 09:58:00'),
(38, 11, 450, 1, 450, 'Dano Milk 400g x1', 'Dano Milk 400g x1', 'Shopperholics', 'Dano Skimmed Milk Powder - It is an excellent choice of milk powder with 0.1 fat. It is specially formulated for consumers who want to maximize the benefits of milk but minimize the intake of fats.', 'https://res.cloudinary.com/entermarket/image/upload/v1641235773/aoor8wnduqnmlskl4d3x.jpg', 1, 13, 1, '2022-01-07 09:58:00', '2022-01-07 09:58:00'),
(39, 12, 10000, 1, 10000, 'Durex Condom Icy Blue', 'Durex Condom Icy Blue', 'Shopperholics', 'Durex Extra Safe Condoms have been designed to offer you maximum protection during sex. Made from slightly thicker latex and extra silicone lubrication, Extra Safe Condoms can offer peace of mind without having to forfeit any of the pleasure. Relax and let yourself go.\nThe Durex Extra Safe condom is a thicker condom. It has a nominal width of 52.5mm with an easy-on shape. It is intimate and comfortable, lubricated and made of natural rubber latex. Each box of Durex Extra Safe 3\'s contains 3 pieces condoms.\nFeel safe and confident with the World\'s No. 1 Condom Brand.', 'https://res.cloudinary.com/entermarket/image/upload/v1641235972/nvijku2daf94pk2xrwhc.jpg', 1, 13, 1, '2022-01-07 09:58:00', '2022-01-07 09:58:00'),
(40, 14, 619500, 21, 29500, 'Bag of Rice', 'Bag of Rice', 'Shopperholics', 'Bag of rice', 'https://res.cloudinary.com/entermarket/image/upload/v1641236508/avpthlaf8gnd65q3jh5w.jpg', 2, 14, 1, '2022-01-08 22:39:08', '2022-01-08 22:39:08'),
(41, 12, 30000, 3, 10000, 'Durex Condom Icy Blue', 'Durex Condom Icy Blue', 'Shopperholics', 'Durex Extra Safe Condoms have been designed to offer you maximum protection during sex. Made from slightly thicker latex and extra silicone lubrication, Extra Safe Condoms can offer peace of mind without having to forfeit any of the pleasure. Relax and let yourself go.\nThe Durex Extra Safe condom is a thicker condom. It has a nominal width of 52.5mm with an easy-on shape. It is intimate and comfortable, lubricated and made of natural rubber latex. Each box of Durex Extra Safe 3\'s contains 3 pieces condoms.\nFeel safe and confident with the World\'s No. 1 Condom Brand.', 'https://res.cloudinary.com/entermarket/image/upload/v1641235972/nvijku2daf94pk2xrwhc.jpg', 2, 14, 1, '2022-01-08 22:39:08', '2022-01-08 22:39:08'),
(42, 13, 14599, 1, 14599, 'Durex Condom Rosey Red', 'Durex Condom Rosey Red', 'Shopperholics', 'Durex Extra Safe Condoms have been designed to offer you maximum protection during sex. Made from slightly thicker latex and extra silicone lubrication, Extra Safe Condoms can offer peace of mind without having to forfeit any of the pleasure. Relax and let yourself go.\nThe Durex Extra Safe condom is a thicker condom. It has a nominal width of 52.5mm with an easy-on shape. It is intimate and comfortable, lubricated and made of natural rubber latex. Each box of Durex Extra Safe 3\'s contains 3 pieces condoms.\nFeel safe and confident with the World\'s No. 1 Condom Brand.', 'https://res.cloudinary.com/entermarket/image/upload/v1641236028/pebxpbwkjvlmwrzpvh9h.jpg', 1, 15, 1, '2022-01-09 09:34:02', '2022-01-09 09:34:02'),
(43, 10, 550, 1, 550, 'Dano Sachet Milk 90g - 12pcs', 'Dano Sachet Milk 90g - 12pcs', 'Shopperholics', 'Dano Skimmed Milk Powder - It is an excellent choice of milk powder with 0.1 fat. It is specially formulated for consumers who want to maximize the benefits of milk but minimize the intake of fats.', 'https://res.cloudinary.com/entermarket/image/upload/v1641235674/mvwtoltwliu434h4f2is.jpg', 1, 15, 1, '2022-01-09 09:34:02', '2022-01-09 09:34:02'),
(44, 3, 1230, 1, 1230, 'Indomie Onion Flavour', 'Indomie Onion Flavour', 'Shopperholics', 'Popular for its exotic taste, Indomie Onion Chicken flavour is made of rich ingredients, spices and chicken flavour. This flavour comes with a sachet of seasoning oil made from fresh onions in vegetable oil, which when cooked together with the seasoning sachet gives a nutrition and irresistible serving, rich in taste and aroma.', 'https://res.cloudinary.com/entermarket/image/upload/v1641234067/grgf1fbifibypyciwdh7.jpg', 1, 15, 1, '2022-01-09 09:34:02', '2022-01-09 09:34:02'),
(45, 11, 450, 1, 450, 'Dano Milk 400g x1', 'Dano Milk 400g x1', 'Shopperholics', 'Dano Skimmed Milk Powder - It is an excellent choice of milk powder with 0.1 fat. It is specially formulated for consumers who want to maximize the benefits of milk but minimize the intake of fats.', 'https://res.cloudinary.com/entermarket/image/upload/v1641235773/aoor8wnduqnmlskl4d3x.jpg', 1, 15, 1, '2022-01-09 09:34:02', '2022-01-09 09:34:02'),
(46, 12, 10000, 1, 10000, 'Durex Condom Icy Blue', 'Durex Condom Icy Blue', 'Shopperholics', 'Durex Extra Safe Condoms have been designed to offer you maximum protection during sex. Made from slightly thicker latex and extra silicone lubrication, Extra Safe Condoms can offer peace of mind without having to forfeit any of the pleasure. Relax and let yourself go.\nThe Durex Extra Safe condom is a thicker condom. It has a nominal width of 52.5mm with an easy-on shape. It is intimate and comfortable, lubricated and made of natural rubber latex. Each box of Durex Extra Safe 3\'s contains 3 pieces condoms.\nFeel safe and confident with the World\'s No. 1 Condom Brand.', 'https://res.cloudinary.com/entermarket/image/upload/v1641235972/nvijku2daf94pk2xrwhc.jpg', 1, 15, 1, '2022-01-09 09:34:02', '2022-01-09 09:34:02'),
(47, 7, 220, 2, 110, 'So Klin - 190g', 'So Klin - 190g', 'Shopperholics', 'So Klin Concentrate detergent powder provides powerful cleaning for your clothes and it is renowned for working well on whites. Can also be used for kitchen, bath room and toilet walls. It’s new Odour Guard Technology - offers effective odour control even after long soak or indoor drying', 'https://res.cloudinary.com/entermarket/image/upload/v1641234384/rm97lii7esbxznwryivz.jpg', 1, 15, 1, '2022-01-09 09:34:02', '2022-01-09 09:34:02'),
(48, 7, 110, 1, 110, 'So Klin - 190g', 'So Klin - 190g', 'Shopperholics', 'So Klin Concentrate detergent powder provides powerful cleaning for your clothes and it is renowned for working well on whites. Can also be used for kitchen, bath room and toilet walls. It’s new Odour Guard Technology - offers effective odour control even after long soak or indoor drying', 'https://res.cloudinary.com/entermarket/image/upload/v1641234384/rm97lii7esbxznwryivz.jpg', 1, 15, 1, '2022-01-09 09:34:02', '2022-01-09 09:34:02'),
(49, 14, 619500, 21, 29500, 'Bag of Rice', 'Bag of Rice', 'Shopperholics', 'Bag of rice', 'https://res.cloudinary.com/entermarket/image/upload/v1641236508/avpthlaf8gnd65q3jh5w.jpg', 2, 16, 1, '2022-01-10 08:17:44', '2022-01-10 08:17:44'),
(50, 12, 30000, 3, 10000, 'Durex Condom Icy Blue', 'Durex Condom Icy Blue', 'Shopperholics', 'Durex Extra Safe Condoms have been designed to offer you maximum protection during sex. Made from slightly thicker latex and extra silicone lubrication, Extra Safe Condoms can offer peace of mind without having to forfeit any of the pleasure. Relax and let yourself go.\nThe Durex Extra Safe condom is a thicker condom. It has a nominal width of 52.5mm with an easy-on shape. It is intimate and comfortable, lubricated and made of natural rubber latex. Each box of Durex Extra Safe 3\'s contains 3 pieces condoms.\nFeel safe and confident with the World\'s No. 1 Condom Brand.', 'https://res.cloudinary.com/entermarket/image/upload/v1641235972/nvijku2daf94pk2xrwhc.jpg', 2, 16, 1, '2022-01-10 08:17:44', '2022-01-10 08:17:44'),
(51, 10, 550, 1, 550, 'Dano Sachet Milk 90g - 12pcs', 'Dano Sachet Milk 90g - 12pcs', 'Shopperholics', 'Dano Skimmed Milk Powder - It is an excellent choice of milk powder with 0.1 fat. It is specially formulated for consumers who want to maximize the benefits of milk but minimize the intake of fats.', 'https://res.cloudinary.com/entermarket/image/upload/v1641235674/mvwtoltwliu434h4f2is.jpg', 1, 17, 1, '2022-01-13 06:59:55', '2022-01-13 06:59:55');

-- --------------------------------------------------------

--
-- Table structure for table `order_information`
--

CREATE TABLE `order_information` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firstName` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastName` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_method` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_address` text COLLATE utf8mb4_unicode_ci,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phoneNumber` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pickup_location` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extra_instruction` text COLLATE utf8mb4_unicode_ci,
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
(1, 'Success', 'Arudovwen', 'standard', '10 Aregbesola Street, Alapere', NULL, 'Lagos State', 'succy2010@gmail.com', '08102588399', NULL, 'Just call before you get to my door', NULL, 1, 3, '2022-01-05 19:33:56', '2022-01-05 19:33:56', 'home'),
(2, 'Success', 'Arudovwen', 'standard', '10 Aregbesola Street, Alapere', 'Ikeja', 'Lagos State', 'succy2010@gmail.com', '08102588399', NULL, 'Just call before you get to my gate please', NULL, 1, 4, '2022-01-05 19:35:21', '2022-01-05 19:35:21', 'home'),
(3, 'Fadil', 'Bakre', 'Standard', '1 Stockton St, Union Square, San Francisco, 94108, United States', 'Union Square', 'San Fransisco', 'fadilbakre@yahoo.com', '08161594784', NULL, 'None', 'Online', 2, 5, '2022-01-06 12:51:22', '2022-01-06 12:51:22', 'Home Delivery'),
(4, 'Fadil', 'Bakre', 'Standard', '1 Stockton St, Union Square, San Francisco, 94108, United States', 'Union', 'Square', 'fadilbakre@yahoo.com', '08161594784', NULL, 'None', 'Online', 2, 6, '2022-01-06 12:58:14', '2022-01-06 12:58:14', 'Home Delivery'),
(5, 'Success', 'Arudovwen', 'Standard', '60 Association Cl, , Lagos, 105102, Nigeria', 'Lagos a', 'Lagos', 'succy2010@gmail.com', '08169723910', NULL, 'deliver then call me', 'Online', 1, 9, '2022-01-06 16:18:49', '2022-01-06 16:18:49', 'Home Delivery'),
(6, 'Success', 'Arudovwen', 'Standard', '11a Kayode Falowo St, , Lagos, 105102, Nigeria', 'Lagos', 'Lagos', 'succy2010@gmail.com', '08026585522', NULL, 'Drop at Estate Gate', 'Online', 1, 10, '2022-01-06 19:14:43', '2022-01-06 19:14:43', 'Home Delivery'),
(7, 'COURTNEY', 'OGBE', 'standard', '2 Abudu Abayomi Off Yakoyo Road Ojodu Berger', 'Ikeja', 'Lagos State', 'courtneychamsogbe@gmail.com', '08059584389', NULL, 'Please call before coming', NULL, 3, 11, '2022-01-06 19:34:28', '2022-01-06 19:34:28', 'home'),
(8, 'COURTNEY', 'OGBE', 'standard', '2 Abudu Abayomi Off Yakoyo Road Ojodu Berger', 'Ikeja', 'Lagos State', 'courtneychamsogbe@gmail.com', '08059584389', NULL, 'Call first', NULL, 3, 12, '2022-01-06 19:38:46', '2022-01-06 19:38:46', 'home'),
(9, 'Success', 'Arudovwen', 'standard', '11a Kayode Falowo St, , Lagos, 105102, Nigeria', 'Lagos', 'Lagos', 'succy2010@gmail.com', '08026585522', NULL, NULL, NULL, 1, 13, '2022-01-07 09:58:00', '2022-01-07 09:58:00', 'home'),
(10, 'Fadil', 'Bakre', 'Standard', '1 Stockton St, Union Square, San Francisco, 94108, United States', 'Ikeja', 'Lagos', 'fadilbakre@yahoo.com', '08161594784', NULL, 'None', 'Online', 2, 14, '2022-01-08 22:39:08', '2022-01-08 22:39:08', 'Home Delivery'),
(11, 'Success', 'Arudovwen', 'Standard', '5 Close A, , Lagos, 105102, Nigeria', 'Lagos', 'Lagos', 'succy2010@gmail.com', '08022225423', NULL, 'deliver', 'Online', 1, 15, '2022-01-09 09:34:02', '2022-01-09 09:34:02', 'Home Delivery'),
(12, 'Fadil', 'Bakre', 'Standard', '1 Stockton St, Union Square, San Francisco, 94108, United States', 'Westham', 'Liverpool', 'fadilbakre@yahoo.com', '08161594784', NULL, 'None', 'Online', 2, 16, '2022-01-10 08:17:44', '2022-01-10 08:17:44', 'Home Delivery'),
(13, 'Success', 'Arudovwen', 'standard', '5 Close A, , Lagos, 105102, Nigeria', 'Lagos', 'Lagos', 'succy2010@gmail.com', '08022225423', NULL, NULL, NULL, 1, 17, '2022-01-13 06:59:55', '2022-01-13 06:59:55', 'home');

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

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `text` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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

INSERT INTO `payments` (`id`, `type`, `reference`, `amount`, `status`, `network`, `number`, `service_id`, `token`, `text`, `transactionRef`, `message`, `service`, `user_id`, `created_at`, `updated_at`, `paymentCode`, `customerid`) VALUES
(1, 'airtime', '2rt9tjhc9r', 300, 'success', NULL, '08160723910', NULL, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczpcL1wvYXBpLnBheXZpYW1lLmNvbVwvYXBpXC9hdXRoXC9sb2dpbiIsImlhdCI6MTY0MjExNjk3NCwiZXhwIjoxNjQyMjEyOTc0LCJuYmYiOjE2NDIxMTY5NzQsImp0aSI6IkFKYmNUSTlIOTlkeHdybmciLCJzdWIiOjQ5LCJwcnYiOiI4N2UwYWYxZWY5ZmQxNTgxMmZkZWM5NzE1M2ExNGUwYjA0NzU0NmFhIn0.kiwKCtRwgRdAd__xuXTzjs58k69B6exHvIA9YR04RPc', 'airtime payment', 'ARW|Web|3ARW0001|MTN|091021091844|QYVPEDVU', 'Sucessful', NULL, 1, '2022-01-13 23:44:05', '2022-01-13 23:44:30', NULL, NULL);

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
  `image` longtext COLLATE utf8mb4_unicode_ci COMMENT '(DC2Type:json)',
  `sales_price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `active` tinyint(1) NOT NULL DEFAULT '0',
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
  `price` int(11) NOT NULL DEFAULT '0',
  `quantity` int(11) NOT NULL DEFAULT '1',
  `subtotal` int(11) NOT NULL DEFAULT '1',
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
(1, 29500, 1, 29500, 90994567, 1, 14, 1, '2022-01-05 19:33:56', '2022-01-05 19:33:56', 'pending'),
(2, 550, 1, 550, 90994567, 1, 10, 1, '2022-01-05 19:33:56', '2022-01-05 19:33:56', 'pending'),
(3, 450, 2, 900, 90994567, 1, 11, 1, '2022-01-05 19:33:56', '2022-01-05 19:33:56', 'pending'),
(4, 1450, 1, 1450, 90994567, 1, 9, 1, '2022-01-05 19:33:56', '2022-01-05 19:33:56', 'pending'),
(5, 1230, 2, 2460, 90994567, 1, 3, 1, '2022-01-05 19:33:56', '2022-01-05 19:33:56', 'pending'),
(6, 29500, 1, 29500, 46486818, 1, 14, 1, '2022-01-05 19:35:21', '2022-01-05 19:43:44', 'paid'),
(7, 550, 1, 550, 46486818, 1, 10, 1, '2022-01-05 19:35:21', '2022-01-05 19:43:44', 'paid'),
(8, 450, 2, 900, 46486818, 1, 11, 1, '2022-01-05 19:35:21', '2022-01-05 19:43:44', 'paid'),
(9, 1450, 1, 1450, 46486818, 1, 9, 1, '2022-01-05 19:35:21', '2022-01-05 19:43:44', 'paid'),
(10, 1230, 2, 2460, 46486818, 1, 3, 1, '2022-01-05 19:35:21', '2022-01-05 19:43:44', 'paid'),
(11, 29500, 3, 88500, 18873367, 1, 14, 2, '2022-01-06 12:51:22', '2022-01-06 12:51:22', 'pending'),
(12, 10000, 1, 10000, 18873367, 1, 12, 2, '2022-01-06 12:51:22', '2022-01-06 12:51:22', 'pending'),
(13, 29500, 4, 118000, 90277980, 1, 14, 2, '2022-01-06 12:58:14', '2022-01-06 12:58:14', 'pending'),
(14, 10000, 3, 30000, 90277980, 1, 12, 2, '2022-01-06 12:58:14', '2022-01-06 12:58:14', 'pending'),
(15, 14599, 2, 29198, 98820304, 1, 13, 1, '2022-01-06 16:18:49', '2022-01-06 16:18:49', 'pending'),
(19, 550, 3, 1650, 98820304, 1, 10, 1, '2022-01-06 16:18:49', '2022-01-06 16:18:49', 'pending'),
(21, 1230, 2, 2460, 98820304, 1, 3, 1, '2022-01-06 16:18:49', '2022-01-06 16:18:49', 'pending'),
(24, 14599, 2, 29198, 68958183, 1, 13, 1, '2022-01-06 19:14:43', '2022-01-06 19:14:43', 'pending'),
(25, 550, 3, 1650, 68958183, 1, 10, 1, '2022-01-06 19:14:43', '2022-01-06 19:14:43', 'pending'),
(26, 1230, 5, 6150, 68958183, 1, 3, 1, '2022-01-06 19:14:43', '2022-01-06 19:14:43', 'pending'),
(27, 29500, 2, 59000, 68958183, 1, 14, 1, '2022-01-06 19:14:43', '2022-01-06 19:14:43', 'pending'),
(28, 450, 2, 900, 68958183, 1, 11, 1, '2022-01-06 19:14:43', '2022-01-06 19:14:43', 'pending'),
(29, 450, 1, 450, 87751448, 1, 11, 3, '2022-01-06 19:34:28', '2022-01-06 19:34:28', 'pending'),
(30, 10000, 1, 10000, 87751448, 1, 12, 3, '2022-01-06 19:34:28', '2022-01-06 19:34:28', 'pending'),
(31, 450, 1, 450, 66870708, 1, 11, 3, '2022-01-06 19:38:46', '2022-01-06 19:43:50', 'paid'),
(32, 10000, 1, 10000, 66870708, 1, 12, 3, '2022-01-06 19:38:46', '2022-01-06 19:43:50', 'paid'),
(33, 14599, 1, 14599, 99237296, 1, 13, 1, '2022-01-07 09:58:00', '2022-01-07 09:58:00', 'pending'),
(34, 550, 1, 550, 99237296, 1, 10, 1, '2022-01-07 09:58:00', '2022-01-07 09:58:00', 'pending'),
(35, 1230, 1, 1230, 99237296, 1, 3, 1, '2022-01-07 09:58:00', '2022-01-07 09:58:00', 'pending'),
(36, 450, 1, 450, 99237296, 1, 11, 1, '2022-01-07 09:58:00', '2022-01-07 09:58:00', 'pending'),
(37, 10000, 1, 10000, 99237296, 1, 12, 1, '2022-01-07 09:58:00', '2022-01-07 09:58:00', 'pending'),
(38, 29500, 21, 619500, 18303472, 1, 14, 2, '2022-01-08 22:39:08', '2022-01-08 22:39:08', 'pending'),
(39, 10000, 3, 30000, 18303472, 1, 12, 2, '2022-01-08 22:39:08', '2022-01-08 22:39:08', 'pending'),
(40, 14599, 1, 14599, 41391115, 1, 13, 1, '2022-01-09 09:34:02', '2022-01-09 09:34:02', 'pending'),
(41, 550, 1, 550, 41391115, 1, 10, 1, '2022-01-09 09:34:02', '2022-01-09 09:34:02', 'pending'),
(42, 1230, 1, 1230, 41391115, 1, 3, 1, '2022-01-09 09:34:02', '2022-01-09 09:34:02', 'pending'),
(43, 450, 1, 450, 41391115, 1, 11, 1, '2022-01-09 09:34:02', '2022-01-09 09:34:02', 'pending'),
(44, 10000, 1, 10000, 41391115, 1, 12, 1, '2022-01-09 09:34:02', '2022-01-09 09:34:02', 'pending'),
(45, 110, 2, 220, 41391115, 1, 7, 1, '2022-01-09 09:34:02', '2022-01-09 09:34:02', 'pending'),
(46, 110, 1, 110, 41391115, 1, 7, 1, '2022-01-09 09:34:02', '2022-01-09 09:34:02', 'pending'),
(47, 29500, 21, 619500, 17046318, 1, 14, 2, '2022-01-10 08:17:44', '2022-01-10 08:17:44', 'pending'),
(48, 10000, 3, 30000, 17046318, 1, 12, 2, '2022-01-10 08:17:44', '2022-01-10 08:17:44', 'pending'),
(49, 550, 1, 550, 34064135, 1, 10, 1, '2022-01-13 06:59:55', '2022-01-13 07:00:20', 'paid');

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
  `content` text COLLATE utf8mb4_unicode_ci,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `reference`, `message`, `trxref`, `amount`, `type`, `mode`, `status`, `content`, `user_id`, `order_id`, `created_at`, `updated_at`) VALUES
(1, 'y1bmw5yqkl', 'pending', '7getj8v7iu1nznd', 3486000, 'online', 'paystack', 'pending', NULL, 1, 3, '2022-01-05 19:33:57', '2022-01-05 19:33:57'),
(2, 'ms9pfda3bi', 'Verification successful', 'm0vpjqeyqf4r1ia', 3486000, 'online', 'paystack', '1', NULL, 1, 4, '2022-01-05 19:35:21', '2022-01-05 19:43:44'),
(3, 'q5x38fnc65', 'pending', '9wa0aaf4gmiqoht', 9850000, 'online', 'paystack', 'pending', NULL, 2, 5, '2022-01-06 12:51:23', '2022-01-06 12:51:23'),
(4, 'k4qeibp0gm', 'pending', 'fifn0opmafxfl1n', 14800000, 'online', 'paystack', 'pending', NULL, 2, 6, '2022-01-06 12:58:14', '2022-01-06 12:58:14'),
(5, 'y9bd8yk4b4', 'pending', 'bh3dk13q7pwgmaa', 3330800, 'online', 'paystack', 'pending', NULL, 1, 9, '2022-01-06 16:18:50', '2022-01-06 16:18:50'),
(6, '7lvg5k3po3', 'pending', 'z712fm1ry1y0oel', 9689800, 'online', 'paystack', 'pending', NULL, 1, 10, '2022-01-06 19:14:43', '2022-01-06 19:14:43'),
(7, 'x7i532g9co', 'pending', 'uo4ewpq9dn7hvls', 1045000, 'online', 'paystack', 'pending', NULL, 3, 11, '2022-01-06 19:34:28', '2022-01-06 19:34:28'),
(8, '3ar1dvfnd4', 'Verification successful', '5j0r413gu98kto1', 1045000, 'online', 'paystack', '1', NULL, 3, 12, '2022-01-06 19:38:46', '2022-01-06 19:43:50'),
(9, 'q0d0x2tukz', 'pending', 'tv2oa6rragg4ebv', 2682900, 'online', 'paystack', 'pending', NULL, 1, 13, '2022-01-07 09:58:00', '2022-01-07 09:58:00'),
(10, '59mwnxgx6c', 'pending', 'ptx0w9opky0kv0q', 64950000, 'online', 'paystack', 'pending', NULL, 2, 14, '2022-01-08 22:39:08', '2022-01-08 22:39:08'),
(11, '7fao35e16g', 'pending', '8e07fzi8l9duekw', 2715900, 'online', 'paystack', 'pending', NULL, 1, 15, '2022-01-09 09:34:03', '2022-01-09 09:34:03'),
(12, 'de7mk0kr0e', 'pending', 'xkufanig4kapgv6', 64950000, 'online', 'paystack', 'pending', NULL, 2, 16, '2022-01-10 08:17:45', '2022-01-10 08:17:45'),
(13, 'm53g984a4u', 'Verification successful', 'mc8k5co0k29bm8l', 55000, 'online', 'paystack', '1', NULL, 1, 17, '2022-01-13 06:59:55', '2022-01-13 07:00:20');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firstName` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastName` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `pin` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '$2y$10$LedctPkhz.WgHUX4nfgSIOVomhSEtNZ3VW5Sb0P1Jkqe4YeWR3/4W'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstName`, `lastName`, `address`, `dob`, `gender`, `city`, `state`, `country`, `phoneNumber`, `profileImage`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `pin`) VALUES
(1, 'Success', 'Arudovwen', '5 Close A, , Lagos, 105102, Nigeria', NULL, NULL, 'Lagos', 'Lagos', NULL, '08022225423', 'https://res.cloudinary.com/entermarket/image/upload/v1639045974/mfwaiqhqqjulfea4xcky.jpg', 'succy2010@gmail.com', NULL, '$2y$10$1C5rbJWAVOQFV6cEdu7Vy.C3zGfoZ3N7SR2KbaRU8c2qjT7ViTVia', NULL, '2021-11-18 14:31:08', '2022-01-09 09:34:02', '$2y$10$FrrIx2mpsUHuWhtcNav6X.M3clxnKk5rFIDmkquWjEt3izeXfzrmK'),
(2, 'Fadil', 'Bakre', '1 Stockton St, Union Square, San Francisco, 94108, United States', NULL, NULL, 'Westham', 'Liverpool', NULL, '08161594784', 'http://entermarket.payviame.com/img/profile.jpeg', 'fadilbakre@yahoo.com', NULL, '$2y$10$mJoo3t9fm9ss0a2vRcM2suo.YyeixI3cMHO3TNZDPfmL4/PyeCpcW', NULL, '2022-01-04 15:24:22', '2022-01-10 08:17:44', '$2y$10$LedctPkhz.WgHUX4nfgSIOVomhSEtNZ3VW5Sb0P1Jkqe4YeWR3/4W'),
(3, 'COURTNEY', 'OGBE', '2 Abudu Abayomi Off Yakoyo Road Ojodu Berger', NULL, NULL, 'Ikeja', 'Lagos State', NULL, '08059584389', 'https://entermarket.payviame.com/img/profile.jpeg', 'courtneychamsogbe@gmail.com', NULL, '$2y$10$jYMahm/K1Dn.fVUvDG1xw.80Sh6XvZKNugbhnayNcT/tUX0QWgBma', NULL, '2022-01-06 18:50:45', '2022-01-06 19:34:28', '$2y$10$LedctPkhz.WgHUX4nfgSIOVomhSEtNZ3VW5Sb0P1Jkqe4YeWR3/4W');

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
(1, 'My groove', 3, '2022-01-06 19:30:17', '2022-01-06 19:30:17');

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
-- Dumping data for table `wishlist_items`
--

INSERT INTO `wishlist_items` (`id`, `wishlist_id`, `product_id`, `store_id`, `created_at`, `updated_at`) VALUES
(1, 1, 12, 1, '2022-01-06 19:30:27', '2022-01-06 19:30:27'),
(2, 1, 12, 1, '2022-01-06 19:30:27', '2022-01-06 19:30:27'),
(3, 1, 12, 1, '2022-01-06 19:30:27', '2022-01-06 19:30:27'),
(4, 1, 12, 1, '2022-01-06 19:30:29', '2022-01-06 19:30:29'),
(5, 1, 12, 1, '2022-01-06 19:30:29', '2022-01-06 19:30:29'),
(6, 1, 12, 1, '2022-01-06 19:30:29', '2022-01-06 19:30:29');

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_store_id_foreign` (`store_id`);

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
  ADD KEY `order_histories_store_id_foreign` (`store_id`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `order_histories`
--
ALTER TABLE `order_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `order_information`
--
ALTER TABLE `order_information`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `otp`
--
ALTER TABLE `otp`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stores`
--
ALTER TABLE `stores`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `store_orders`
--
ALTER TABLE `store_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `stories`
--
ALTER TABLE `stories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `vendors`
--
ALTER TABLE `vendors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wishlist_items`
--
ALTER TABLE `wishlist_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `brands`
--
ALTER TABLE `brands`
  ADD CONSTRAINT `brands_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `brands_store_id_foreign` FOREIGN KEY (`store_id`) REFERENCES `stores` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_store_id_foreign` FOREIGN KEY (`store_id`) REFERENCES `stores` (`id`),
  ADD CONSTRAINT `carts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_store_id_foreign` FOREIGN KEY (`store_id`) REFERENCES `stores` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `linked_social_accounts`
--
ALTER TABLE `linked_social_accounts`
  ADD CONSTRAINT `linked_social_accounts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `order_histories`
--
ALTER TABLE `order_histories`
  ADD CONSTRAINT `order_histories_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `order_histories_store_id_foreign` FOREIGN KEY (`store_id`) REFERENCES `stores` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `order_histories_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `order_information`
--
ALTER TABLE `order_information`
  ADD CONSTRAINT `order_information_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `order_information_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `otp`
--
ALTER TABLE `otp`
  ADD CONSTRAINT `otp_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `products_store_id_foreign` FOREIGN KEY (`store_id`) REFERENCES `stores` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `reports`
--
ALTER TABLE `reports`
  ADD CONSTRAINT `reports_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `reports_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `store_orders`
--
ALTER TABLE `store_orders`
  ADD CONSTRAINT `store_orders_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `store_orders_store_id_foreign` FOREIGN KEY (`store_id`) REFERENCES `stores` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `store_orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `stories`
--
ALTER TABLE `stories`
  ADD CONSTRAINT `stories_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD CONSTRAINT `wishlists_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `wishlist_items`
--
ALTER TABLE `wishlist_items`
  ADD CONSTRAINT `wishlist_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `wishlist_items_store_id_foreign` FOREIGN KEY (`store_id`) REFERENCES `stores` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `wishlist_items_wishlist_id_foreign` FOREIGN KEY (`wishlist_id`) REFERENCES `wishlists` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
