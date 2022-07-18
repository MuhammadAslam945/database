-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 18, 2022 at 11:03 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `logo`, `created_at`, `updated_at`) VALUES
(1, 'incidunt ', 'incidunt', 'homepage-new-cat-3.webp', '2022-04-26 03:57:04', '2022-05-10 23:29:38'),
(2, 'et magnam', 'et-magnam', 'homepage-new-cat-1.webp', '2022-04-26 03:57:04', '2022-04-26 03:57:04'),
(3, 'modi sed', 'modi-sed', 'homepage-new-cat-5.webp', '2022-04-26 03:57:04', '2022-04-26 03:57:04'),
(4, 'ipsum voluptatem', 'ipsum-voluptatem', 'homepage-new-cat-4.webp', '2022-04-26 03:57:04', '2022-04-26 03:57:04'),
(5, 'nemo qui', 'nemo-qui', 'homepage-new-cat-7.webp', '2022-04-26 03:57:04', '2022-04-26 03:57:04'),
(6, 'dolor ut', 'dolor-ut', 'homepage-new-cat-9.webp', '2022-04-26 03:57:04', '2022-04-26 03:57:04'),
(7, 'sed aut', 'sed-aut', 'homepage-new-cat-8.webp', '2022-04-26 03:57:04', '2022-04-26 03:57:04'),
(8, 'sequi dolores', 'sequi-dolores', 'homepage-new-cat-6.webp', '2022-04-26 03:57:04', '2022-04-26 03:57:04'),
(9, 'deserunt officia', 'deserunt-officia', 'homepage-new-cat-2.webp', '2022-04-26 03:57:04', '2022-04-26 03:57:04'),
(10, 'Fresh', 'fresh', 'fresh.png', '2022-05-08 14:57:42', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('fixed','percent') COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` double(12,2) NOT NULL,
  `cart_value` double(12,2) NOT NULL,
  `expiry_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `code`, `type`, `value`, `cart_value`, `expiry_date`, `created_at`, `updated_at`) VALUES
(1, '0FF100', 'fixed', 100.00, 1000.00, '2022-05-30', '2022-04-26 14:51:58', '2022-05-11 00:51:32'),
(2, 'OFF15', 'percent', 15.00, 5000.00, '2022-06-30', '2022-04-26 15:59:24', '2022-05-11 01:14:48'),
(3, 'OFF200', 'fixed', 200.00, 1000.00, '2022-05-31', '2022-05-11 00:50:34', '2022-05-11 00:50:34'),
(4, 'OFF300', 'fixed', 300.00, 1000.00, '2022-05-31', '2022-05-11 00:50:51', '2022-05-11 00:50:51');

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
-- Table structure for table `home_categories`
--

CREATE TABLE `home_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sel_categories` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_of_products` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(6, '2022_04_07_204255_create_sessions_table', 1),
(7, '2022_04_08_174356_create_categories_table', 1),
(8, '2022_04_08_174518_create_sub_categories_table', 1),
(9, '2022_04_08_174603_create_products_table', 1),
(10, '2022_04_08_174618_create_brands_table', 1),
(11, '2022_04_08_174632_create_sliders_table', 1),
(12, '2022_04_08_194955_create_settings_table', 1),
(13, '2022_04_21_173429_add_new_column_to_products_table', 1),
(14, '2022_04_22_175729_create_orders_table', 1),
(15, '2022_04_22_180049_create_order_items_table', 1),
(16, '2022_04_22_180126_create_shippings_table', 1),
(17, '2022_04_22_180149_create_transactions_table', 1),
(18, '2022_04_22_183213_create_reviews_table', 1),
(19, '2022_04_22_183308_create_contacts_table', 1),
(20, '2022_04_22_183603_create_coupons_table', 1),
(21, '2022_04_22_183856_create_home_categories_table', 1),
(22, '2022_04_23_152316_add_fb_id_column_in_users_table', 1),
(23, '2022_04_23_173911_add_stock_status_column_in_products_table', 1),
(24, '2022_04_26_085416_create_shoppingcarts_table', 2),
(25, '2022_05_06_120158_create_profiles_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `subtotal` decimal(12,2) NOT NULL,
  `discount` decimal(12,2) NOT NULL DEFAULT 0.00,
  `tax` decimal(12,2) NOT NULL,
  `total` decimal(12,2) NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `province` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zipcode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('ordered','canceled','delivered','dispatch','process','onway') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ordered',
  `is_shipping_different` tinyint(1) NOT NULL DEFAULT 0,
  `delivered_date` date DEFAULT NULL,
  `canceled_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `subtotal`, `discount`, `tax`, `total`, `firstname`, `lastname`, `mobile`, `email`, `line1`, `line2`, `city`, `province`, `country`, `zipcode`, `status`, `is_shipping_different`, `delivered_date`, `canceled_date`, `created_at`, `updated_at`) VALUES
(5, 2, '1080.00', '0.00', '226.80', '1306.80', 'Muhammad', 'Aslam', '03106473564', 'muhaffan945@gmail.com', 'Hussnain town street 4', 'Dr Kamran wali gali', 'Multan', 'Punjab', 'Pakistan', '6000', 'ordered', 0, NULL, NULL, '2022-04-27 06:17:40', '2022-05-11 02:15:24'),
(6, 2, '1570.00', '0.00', '157.00', '1727.00', 'Muhammad', 'Aslam', '03106473564', 'muhaffan945@gmail.com', 'Hussnain town street 4', 'Dr Kamran wali gali', 'Multan', 'Punjab', 'Pakistan', '6000', 'ordered', 1, NULL, '2022-05-07', '2022-05-06 14:23:40', '2022-05-11 02:14:02'),
(7, 2, '617.00', '0.00', '61.70', '678.70', 'Muhammad', 'Aslam', '03106473564', 'muhaffan945@gmail.com', 'Hussnain town street 4', 'Dr Kamran wali gali', 'Multan', 'Punjab', 'Pakistan', '6000', 'ordered', 0, NULL, NULL, '2022-05-06 15:46:29', '2022-05-06 15:46:29'),
(8, 2, '180.00', '0.00', '18.00', '198.00', 'Muhammad', 'Aslam', '03106473564', 'muhaffan945@gmail.com', 'Hussnain town street 4', 'Dr Kamran wali gali', 'Multan', 'Punjab', 'Pakistan', '6000', 'ordered', 0, NULL, NULL, '2022-05-07 00:23:27', '2022-05-07 00:23:27'),
(9, 2, '735.00', '0.00', '73.50', '808.50', 'Muhammad', 'Aslam', '03106473564', 'muhaffan945@gmail.com', 'Hussnain town street 4', 'Dr Kamran wali gali', 'Multan', 'Punjab', 'Pakistan', '6000', 'ordered', 0, NULL, NULL, '2022-05-07 01:17:44', '2022-05-07 01:17:44'),
(10, 2, '735.00', '0.00', '73.50', '808.50', 'Muhammad', 'Aslam', '03106473564', 'muhaffan945@gmail.com', 'Hussnain town street 4', 'Dr Kamran wali gali', 'Multan', 'Punjab', 'Pakistan', '6000', 'ordered', 0, NULL, NULL, '2022-05-07 01:30:23', '2022-05-07 01:30:23'),
(11, 2, '2205.00', '0.00', '220.50', '2425.50', 'Muhammad', 'Aslam', '03106473564', 'muhaffan945@gmail.com', 'Hussnain town street 4', 'Dr Kamran wali gali', 'Multan', 'Punjab', 'Pakistan', '6000', 'ordered', 0, NULL, NULL, '2022-05-07 01:33:37', '2022-05-07 01:33:37'),
(16, 2, '1470.00', '0.00', '147.00', '1617.00', 'Muhammad', 'Aslam', '03106473564', 'muhaffan945@gmail.com', 'Hussnain town street 4', 'Dr Kamran wali gali', 'Multan', 'Punjab', 'Pakistan', '6000', 'ordered', 1, NULL, NULL, '2022-05-07 01:43:13', '2022-05-07 01:43:13'),
(17, 2, '5145.00', '0.00', '514.50', '5659.50', 'Muhammad', 'Aslam', '03106473564', 'muhaffan945@gmail.com', 'Hussnain town street 4', 'Dr Kamran wali gali', 'Multan', 'Punjab', 'Pakistan', '6000', 'ordered', 1, NULL, NULL, '2022-05-07 01:56:28', '2022-05-07 01:56:28'),
(19, 2, '1875.00', '0.00', '187.50', '2062.50', 'Muhammad', 'Aslam', '03106473564', 'muhaffan945@gmail.com', 'Hussnain town street 4', 'Dr Kamran wali gali', 'Multan', 'Punjab', 'Pakistan', '6000', 'ordered', 1, NULL, NULL, '2022-05-07 02:35:30', '2022-05-07 02:35:30'),
(20, 2, '180.00', '0.00', '18.00', '198.00', 'Muhammad', 'Aslam', '03106473564', 'muhaffan945@gmail.com', 'Hussnain town street 4', 'Dr Kamran wali gali', 'Multan', 'Punjab', 'Pakistan', '6000', 'ordered', 0, NULL, NULL, '2022-05-08 00:12:34', '2022-05-08 00:12:34'),
(21, 2, '838.00', '0.00', '83.80', '921.80', 'Muhammad', 'Aslam', '03106473564', 'muhaffan945@gmail.com', 'Hussnain town street 4', 'Dr Kamran wali gali', 'Multan', 'Punjab', 'Pakistan', '6000', 'ordered', 0, NULL, NULL, '2022-05-08 00:16:45', '2022-05-08 00:16:45'),
(22, 2, '735.00', '0.00', '73.50', '808.50', 'Muhammad', 'Aslam', '03106473564', 'muhaffan945@gmail.com', 'Hussnain town street 4', 'Dr Kamran wali gali', 'Multan', 'Punjab', 'Pakistan', '6000', 'ordered', 0, NULL, NULL, '2022-05-08 00:18:38', '2022-05-08 00:18:38'),
(23, 2, '932.00', '0.00', '93.20', '1025.20', 'Muhammad', 'Aslam', '03106473564', 'muhaffan945@gmail.com', 'Hussnain town street 4', 'Dr Kamran wali gali', 'Multan', 'Punjab', 'Pakistan', '6000', 'ordered', 0, NULL, NULL, '2022-05-08 00:28:25', '2022-05-08 00:28:25'),
(24, 2, '1003.00', '0.00', '100.30', '1103.30', 'Muhammad', 'Aslam', '03106473564', 'muhaffan945@gmail.com', 'Hussnain town street 4', 'Dr Kamran wali gali', 'Multan', 'Punjab', 'Pakistan', '6000', 'ordered', 0, NULL, NULL, '2022-05-08 00:34:08', '2022-05-08 00:34:08'),
(25, 2, '735.00', '0.00', '73.50', '808.50', 'Ch', 'Aslam', '03106473564', 'aslamsub123@gmail.com', 'Hussnain town street 4, Dr Kamran wali gali', 'hkhiuh', 'Multan', 'Punjab', 'Pakistan', '6000', 'ordered', 0, NULL, NULL, '2022-05-08 00:38:51', '2022-05-08 00:38:51'),
(26, 2, '555.00', '0.00', '55.50', '610.50', 'Ch', 'Aslam', '03106473564', 'aslamsubeng123@gmail.com', 'Hussnain town street 4, Dr Kamran wali gali', 'ffyfhvhvytf', 'Multan', 'Punjab', 'Pakistan', '6000', 'ordered', 0, NULL, NULL, '2022-05-08 00:39:54', '2022-05-08 00:39:54'),
(27, 2, '180.00', '0.00', '18.00', '198.00', 'Ch', 'Aslam', '03106473564', 'aslamsubeng123@gmail.com', 'Hussnain town street 4, Dr Kamran wali gali', 'ffyfhvhvytf', 'Multan', 'Punjab', 'Pakistan', '6000', 'ordered', 0, NULL, NULL, '2022-05-08 00:43:52', '2022-05-08 00:43:52'),
(28, 2, '685.00', '0.00', '68.50', '753.50', 'Ch', 'Aslam', '03106473564', 'aslamsubeng123@gmail.com', 'Hussnain town street 4, Dr Kamran wali gali', 'gjgjg', 'Multan', 'Punjab', 'Pakistan', '6000', 'ordered', 0, NULL, NULL, '2022-05-08 00:45:45', '2022-05-08 00:45:45'),
(29, 2, '885.00', '0.00', '88.50', '973.50', 'Ch', 'Aslam', '03106473564', 'aslamsubeng123@gmail.com', 'Hussnain town street 4, Dr Kamran wali gali', 'ffyfhvhvytf', 'Multan', 'Punjab', 'Pakistan', '6000', 'ordered', 0, NULL, NULL, '2022-05-08 00:47:17', '2022-05-08 00:47:17'),
(30, 2, '764.00', '0.00', '76.40', '840.40', 'Ch', 'Aslam', '03106473564', 'aslamsubeng123@gmail.com', 'Hussnain town street 4, Dr Kamran wali gali', 'ffyfhvhvytf', 'Multan', 'Punjab', 'Pakistan', '6000', 'process', 0, NULL, NULL, '2022-05-08 00:49:20', '2022-05-12 14:56:38'),
(31, 2, '932.00', '0.00', '93.20', '1025.20', 'Muhammad', 'Aslam', '03106473564', 'muhaffan945@gmail.com', 'Hussnain town street 4', 'Dr Kamran wali gali', 'Multan', 'Punjab', 'Pakistan', '6000', 'ordered', 0, NULL, NULL, '2022-05-08 02:27:29', '2022-05-08 02:27:29'),
(32, 2, '838.00', '0.00', '83.80', '921.80', 'Muhammad', 'Aslam', '03106473564', 'muhaffan945@gmail.com', 'Hussnain town street 4', 'Dr Kamran wali gali', 'Multan', 'Punjab', 'Pakistan', '6000', 'ordered', 0, NULL, NULL, '2022-05-08 02:29:45', '2022-05-08 02:29:45'),
(33, 2, '316.00', '0.00', '31.60', '347.60', 'Muhammad', 'Aslam', '03106473564', 'muhaffan945@gmail.com', 'Hussnain town street 4', 'Dr Kamran wali gali', 'Multan', 'Punjab', 'Pakistan', '6000', 'ordered', 0, NULL, NULL, '2022-05-08 02:36:58', '2022-05-08 02:36:58'),
(34, 2, '945.00', '0.00', '94.50', '1039.50', 'Muhammad', 'Aslam', '03106473564', 'muhaffan945@gmail.com', 'Hussnain town street 4', 'Dr Kamran wali gali', 'Multan', 'Punjab', 'Pakistan', '6000', 'ordered', 0, NULL, NULL, '2022-05-08 02:39:18', '2022-05-08 02:39:18'),
(35, 2, '812.00', '0.00', '81.20', '893.20', 'Muhammad', 'Aslam', '03106473564', 'muhaffan945@gmail.com', 'Hussnain town street 4', 'Dr Kamran wali gali', 'Multan', 'Punjab', 'Pakistan', '6000', 'ordered', 0, NULL, NULL, '2022-05-08 02:40:43', '2022-05-08 02:40:43'),
(36, 2, '481.00', '0.00', '48.10', '529.10', 'Muhammad', 'Aslam', '03106473564', 'muhaffan945@gmail.com', 'Hussnain town street 4', 'Dr Kamran wali gali', 'Multan', 'Punjab', 'Pakistan', '6000', 'ordered', 0, NULL, NULL, '2022-05-08 02:43:06', '2022-05-08 02:43:06'),
(37, 2, '316.00', '0.00', '31.60', '347.60', 'Muhammad', 'Aslam', '03106473564', 'muhaffan945@gmail.com', 'Hussnain town street 4', 'Dr Kamran wali gali', 'Multan', 'Punjab', 'Pakistan', '6000', 'onway', 0, NULL, NULL, '2022-05-08 02:47:56', '2022-05-12 14:56:29'),
(38, 2, '4872.00', '0.00', '487.20', '5359.20', 'Ch', 'Aslam', '03106473564', 'aslamsubeng123@gmail.com', 'Hussnain town street 4, Dr Kamran wali gali', 'ffyfhvhvytf', 'Multan', 'Punjab', 'Pakistan', '6000', 'onway', 0, NULL, NULL, '2022-05-10 00:57:52', '2022-05-12 14:56:03'),
(39, 2, '1275.00', '0.00', '127.50', '1402.50', 'Muhammad', 'Azzan', '03106473564', 'aslamsubeng123@gmail.com', 'Hussnain Town', 'Hussnain Town', 'Multan', 'Punjab', 'Pakistan', '59590', 'dispatch', 0, NULL, NULL, '2022-05-10 01:11:16', '2022-05-12 14:53:35'),
(40, 2, '8038.00', '0.00', '803.80', '8841.80', 'Muhammad', 'Azzan', '03106473564', 'aslamsubeng123@gmail.com', 'Hussnain Town', 'Hussnain Town', 'Multan', 'Punjab', 'Pakistan', '59590', 'process', 0, NULL, NULL, '2022-05-10 01:18:39', '2022-05-12 14:52:31'),
(41, 2, '11940.00', '0.00', '1194.00', '13134.00', 'Muhammad', 'Azzan', '03106473564', 'aslamsubeng123@gmail.com', 'Hussnain Town', 'Hussnain Town', 'Multan', 'Punjab', 'Pakistan', '59590', 'dispatch', 0, NULL, NULL, '2022-05-10 01:24:45', '2022-05-12 14:45:24'),
(42, 2, '4717.50', '832.50', '471.75', '5189.25', 'Muhammad', 'Azzan', '03106473564', 'aslamsubeng123@gmail.com', 'Hussnain Town', 'Hussnain Town', 'Multan', 'Punjab', 'Pakistan', '59590', 'process', 0, NULL, NULL, '2022-05-11 01:13:18', '2022-05-12 14:44:56'),
(43, 2, '1034.00', '200.00', '103.40', '1137.40', 'Muhammad', 'Azzan', '03106473564', 'aslamsubeng123@gmail.com', 'Hussnain Town', 'Hussnain Town', 'Multan', 'Punjab', 'Pakistan', '59590', 'process', 0, NULL, NULL, '2022-05-11 01:22:03', '2022-05-12 14:39:46');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `rstatus` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `product_id`, `order_id`, `price`, `quantity`, `rstatus`, `created_at`, `updated_at`) VALUES
(5, 25, 5, '180.00', 6, 1, '2022-04-27 06:17:40', '2022-05-06 09:03:09'),
(6, 20, 6, '735.00', 1, 0, '2022-05-06 14:23:40', '2022-05-06 14:23:40'),
(7, 32, 6, '203.00', 1, 0, '2022-05-06 14:23:40', '2022-05-06 14:23:40'),
(8, 34, 6, '452.00', 1, 0, '2022-05-06 14:23:40', '2022-05-06 14:23:40'),
(9, 25, 6, '180.00', 1, 0, '2022-05-06 14:23:40', '2022-05-06 14:23:40'),
(10, 1, 7, '617.00', 1, 0, '2022-05-06 15:46:29', '2022-05-06 15:46:29'),
(11, 25, 8, '180.00', 1, 0, '2022-05-07 00:23:27', '2022-05-07 00:23:27'),
(12, 20, 9, '735.00', 1, 0, '2022-05-07 01:17:44', '2022-05-07 01:17:44'),
(13, 20, 10, '735.00', 1, 0, '2022-05-07 01:30:23', '2022-05-07 01:30:23'),
(14, 20, 11, '735.00', 3, 0, '2022-05-07 01:33:37', '2022-05-07 01:33:37'),
(15, 20, 16, '735.00', 2, 0, '2022-05-07 01:43:13', '2022-05-07 01:43:13'),
(16, 20, 17, '735.00', 7, 0, '2022-05-07 01:56:28', '2022-05-07 01:56:28'),
(21, 25, 19, '180.00', 1, 0, '2022-05-07 02:35:30', '2022-05-07 02:35:30'),
(22, 42, 19, '358.00', 1, 0, '2022-05-07 02:35:30', '2022-05-07 02:35:30'),
(23, 34, 19, '452.00', 1, 0, '2022-05-07 02:35:30', '2022-05-07 02:35:30'),
(24, 33, 19, '885.00', 1, 0, '2022-05-07 02:35:30', '2022-05-07 02:35:30'),
(25, 25, 20, '180.00', 1, 0, '2022-05-08 00:12:34', '2022-05-08 00:12:34'),
(26, 2, 21, '838.00', 1, 0, '2022-05-08 00:16:45', '2022-05-08 00:16:45'),
(27, 20, 22, '735.00', 1, 0, '2022-05-08 00:18:38', '2022-05-08 00:18:38'),
(28, 6, 23, '932.00', 1, 0, '2022-05-08 00:28:26', '2022-05-08 00:28:26'),
(29, 5, 24, '687.00', 1, 0, '2022-05-08 00:34:08', '2022-05-08 00:34:08'),
(30, 7, 24, '316.00', 1, 0, '2022-05-08 00:34:08', '2022-05-08 00:34:08'),
(31, 20, 25, '735.00', 1, 0, '2022-05-08 00:38:51', '2022-05-08 00:38:51'),
(32, 14, 26, '555.00', 1, 0, '2022-05-08 00:39:54', '2022-05-08 00:39:54'),
(33, 25, 27, '180.00', 1, 0, '2022-05-08 00:43:52', '2022-05-08 00:43:52'),
(34, 39, 28, '685.00', 1, 0, '2022-05-08 00:45:45', '2022-05-08 00:45:45'),
(35, 33, 29, '885.00', 1, 0, '2022-05-08 00:47:17', '2022-05-08 00:47:17'),
(36, 30, 30, '764.00', 1, 0, '2022-05-08 00:49:20', '2022-05-08 00:49:20'),
(37, 6, 31, '932.00', 1, 0, '2022-05-08 02:27:29', '2022-05-08 02:27:29'),
(38, 2, 32, '838.00', 1, 0, '2022-05-08 02:29:45', '2022-05-08 02:29:45'),
(39, 7, 33, '316.00', 1, 0, '2022-05-08 02:36:58', '2022-05-08 02:36:58'),
(40, 21, 34, '945.00', 1, 0, '2022-05-08 02:39:18', '2022-05-08 02:39:18'),
(41, 10, 35, '812.00', 1, 0, '2022-05-08 02:40:44', '2022-05-08 02:40:44'),
(42, 43, 36, '481.00', 1, 0, '2022-05-08 02:43:06', '2022-05-08 02:43:06'),
(43, 7, 37, '316.00', 1, 0, '2022-05-08 02:47:56', '2022-05-08 02:47:56'),
(44, 10, 38, '812.00', 6, 0, '2022-05-10 00:57:52', '2022-05-10 00:57:52'),
(45, 20, 39, '735.00', 1, 0, '2022-05-10 01:11:16', '2022-05-10 01:11:16'),
(46, 25, 39, '180.00', 3, 0, '2022-05-10 01:11:16', '2022-05-10 01:11:16'),
(47, 1, 40, '617.00', 1, 0, '2022-05-10 01:18:39', '2022-05-10 01:18:39'),
(48, 5, 40, '687.00', 2, 0, '2022-05-10 01:18:39', '2022-05-10 01:18:39'),
(49, 10, 40, '812.00', 4, 0, '2022-05-10 01:18:39', '2022-05-10 01:18:39'),
(50, 35, 40, '933.00', 3, 0, '2022-05-10 01:18:39', '2022-05-10 01:18:39'),
(51, 2, 41, '838.00', 5, 0, '2022-05-10 01:24:45', '2022-05-10 01:24:45'),
(52, 7, 41, '316.00', 5, 0, '2022-05-10 01:24:45', '2022-05-10 01:24:45'),
(53, 1, 41, '617.00', 10, 0, '2022-05-10 01:24:45', '2022-05-10 01:24:45'),
(54, 14, 42, '555.00', 10, 0, '2022-05-11 01:13:18', '2022-05-11 01:13:18'),
(55, 1, 43, '617.00', 2, 0, '2022-05-11 01:22:03', '2022-05-11 01:22:03');

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `images` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_desc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stock_status` enum('Instock','Outofstock') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Instock',
  `price` decimal(8,2) DEFAULT NULL,
  `sale_price` decimal(8,2) NOT NULL DEFAULT 0.00,
  `SKU` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `sale_quantity` int(11) NOT NULL DEFAULT 0,
  `featured` enum('1','0') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `slug`, `image`, `images`, `short_desc`, `desc`, `stock_status`, `price`, `sale_price`, `SKU`, `quantity`, `sale_quantity`, `featured`, `weight`, `color`, `created_at`, `updated_at`) VALUES
(1, 7, 'est est', 'est-est', 'product4.jpg', NULL, 'Omnis ducimus suscipit voluptatem voluptas laudantium repellendus nemo. Cum ut corrupti cupiditate.', 'At id voluptatum dolor quisquam numquam. Cum delectus impedit odit nostrum id. Eligendi magnam quia sapiente quo asperiores sequi. Atque ut cumque aut aliquam qui quis. Qui velit eveniet quas eum. Eum quod dolorem reiciendis qui quis vel. Dicta aliquam et repudiandae sunt eos veritatis maiores. Ex nam sunt voluptatem. Architecto temporibus itaque deleniti. Qui rerum sunt ipsam assumenda. Eos accusantium quia et non pariatur ab.', 'Instock', '617.00', '0.00', 'CHIRON327', 69, 13, NULL, 618, NULL, '2022-04-26 03:57:04', '2022-05-11 01:22:03'),
(2, 7, 'quo quo', 'quo-quo', 'product43.jpg', NULL, 'Ea autem consequatur deleniti tenetur ipsa mollitia quas. Maxime nam earum in maxime.', 'Optio incidunt odio laborum ut. Impedit nesciunt suscipit repellat veritatis et porro. Ex vero odio eum et sequi a. Tenetur a qui ipsa non error. Odit atque aliquid voluptatem est sapiente ex fugit. Ea voluptatem doloremque nesciunt dolores dignissimos enim ex. Corrupti quo explicabo beatae. Voluptas eum iure nostrum laboriosam ab provident. Esse exercitationem recusandae architecto porro aliquid voluptatibus. Iure hic nihil delectus rerum. Provident necessitatibus eos deserunt repellendus.', 'Instock', '838.00', '0.00', 'CHIRON493', 54, 7, NULL, 941, NULL, '2022-04-26 03:57:04', '2022-05-10 01:24:45'),
(3, 3, 'id consequuntur', 'id-consequuntur', 'product28.jpg', NULL, 'Sunt tempore ea sapiente quis recusandae quae nam. Sit assumenda fuga dicta et est.', 'Odio rem quo fuga odit possimus sed natus. Inventore non est ab itaque et praesentium. Et culpa voluptatibus reprehenderit sint quisquam. Reprehenderit est quis sed molestias. Expedita animi accusamus laboriosam reprehenderit. Vero sed in aspernatur fugit dicta ut. Et iste officiis rem hic dignissimos exercitationem aut qui. Soluta rerum ratione sequi illum. Ipsa voluptates sed et minus rem debitis. Et voluptas aperiam et. Aspernatur sequi quia non et animi numquam numquam.', 'Instock', '460.00', '0.00', 'CHIRON184', 76, 3, NULL, 687, NULL, '2022-04-26 03:57:04', '2022-04-26 03:57:04'),
(4, 7, 'exercitationem officiis', 'exercitationem-officiis', 'product11.jpg', NULL, 'Nemo blanditiis rem eum non vel. Consectetur in ducimus praesentium optio.', 'Repudiandae sint dolorem alias reiciendis repellendus rerum magni. Sunt beatae deleniti distinctio omnis consequuntur impedit sed sit. Ut provident non harum est a dolore. Nam dicta mollitia eum saepe. Atque omnis quidem omnis et harum qui vitae. Sequi sit et rerum dolor voluptatem quae. Enim molestiae quia quis et incidunt non. Laboriosam dolor sed quis magnam provident quis odit.', 'Instock', '620.00', '0.00', 'CHIRON758', 15, 1, NULL, 738, NULL, '2022-04-26 03:57:04', '2022-04-26 03:57:04'),
(5, 5, 'a sit', 'a-sit', 'product2.jpg', NULL, 'Dolores veritatis quidem consequatur libero ea non. Aut incidunt et vel delectus.', 'Officia harum eos magnam rerum omnis. Consectetur eos maiores qui dolorem rerum non. Eos in sint libero modi aspernatur excepturi. Officia repudiandae hic magnam. Et unde in occaecati accusantium perspiciatis quae eos. Veritatis porro odio hic et. Unde atque cupiditate praesentium. Est est sed officiis corporis. Soluta sed tenetur quos dolor dolor. Ratione dolor cupiditate et cum. Qui in et sed non reiciendis corporis natus. Veniam sunt facere omnis doloribus.', 'Instock', '687.00', '0.00', 'CHIRON46', 34, 0, NULL, 627, NULL, '2022-04-26 03:57:04', '2022-05-10 01:18:39'),
(6, 4, 'ex non', 'ex-non', 'product4.jpg', NULL, 'Quidem id numquam et eligendi consectetur quos. Et delectus autem non velit qui.', 'Libero sint corporis sit. Explicabo sit minus ea modi. Et nesciunt unde nulla veniam neque numquam veniam at. Deleniti aliquid at quis a. Quis quisquam commodi ullam occaecati ea. Veritatis quo quo unde qui. Quis iste nobis et id nam perspiciatis similique inventore. Earum ex iusto magnam perspiciatis molestias sapiente.', 'Instock', '932.00', '0.00', 'CHIRON1696', 44, 0, NULL, 143, NULL, '2022-04-26 03:57:04', '2022-05-08 02:27:29'),
(7, 1, 'qui sit', 'qui-sit', 'product22.jpg', NULL, 'Suscipit iste hic voluptatibus possimus delectus. Nisi quos provident fugit perspiciatis.', 'Aliquam corporis aut earum qui sint. A enim nesciunt voluptate consequuntur. Sit iure cupiditate sed quo excepturi. Sed quos asperiores ratione sit ipsa. Deleniti iusto corrupti labore aut magnam dicta. Recusandae similique molestiae in dolores. Eligendi iure vero commodi deserunt laborum. Et eos laudantium vel ut non et. Error totam atque laborum aut provident ut.', 'Instock', '316.00', '0.00', 'CHIRON1420', 19, 5, NULL, 566, NULL, '2022-04-26 03:57:04', '2022-05-10 01:24:45'),
(8, 7, 'voluptatum qui', 'voluptatum-qui', 'product24.jpg', NULL, 'Laboriosam enim sed officiis maiores et earum occaecati. Culpa deserunt nihil velit et.', 'Blanditiis asperiores fuga quidem sit maxime voluptate dolores cupiditate. Sapiente sed quod in fugit itaque aut perferendis. Maiores fuga quia autem quos nemo fugit. Quia veritatis sint eaque. Reprehenderit error nemo quia reiciendis assumenda voluptas repellendus. Ut aspernatur non magni voluptatum molestias molestiae odit et. Illum ex aut ut beatae ea enim atque.', 'Instock', '430.00', '0.00', 'CHIRON1117', 57, 0, NULL, 671, NULL, '2022-04-26 03:57:04', '2022-04-26 03:57:04'),
(9, 6, 'sapiente porro', 'sapiente-porro', 'product41.jpg', NULL, 'Nemo cumque ipsam qui porro ea est occaecati. Voluptas sunt nihil hic voluptatem nemo.', 'Possimus fugit laborum facere labore. Et accusamus temporibus ratione possimus expedita eos accusamus. Et et dignissimos repellat illo. Numquam ut aut voluptatem distinctio atque tempora eos. Recusandae et autem et nemo eligendi quo. Et omnis rerum et voluptatum. Sit voluptatibus incidunt enim nostrum placeat consequatur quis et. Et occaecati porro qui sed. Ab ut mollitia laborum voluptates. Corporis odit veniam quis iste eos deleniti suscipit. Quia sed nulla qui sed rem.', 'Instock', '780.00', '0.00', 'CHIRON859', 91, 0, NULL, 791, NULL, '2022-04-26 03:57:04', '2022-04-26 03:57:04'),
(10, 8, 'distinctio et', 'distinctio-et', 'product34.jpg', NULL, 'Et cupiditate aut id odio harum dolor. Natus illo doloremque nostrum.', 'Voluptates consequatur porro sit eum. Placeat est ea iusto aut. Ratione consequatur adipisci labore velit debitis minima qui. Voluptatibus minus beatae autem accusamus aperiam. Iusto voluptatum et natus quaerat quibusdam. Laborum numquam explicabo ab minima qui. Saepe suscipit consectetur voluptate non eveniet unde. Iste dolorem doloribus autem voluptates numquam labore ut. Nemo aut et nulla deserunt asperiores quo.', 'Instock', '812.00', '0.00', 'CHIRON454', 18, 14, NULL, 940, NULL, '2022-04-26 03:57:04', '2022-05-10 01:18:39'),
(11, 9, 'excepturi possimus', 'excepturi-possimus', 'product13.jpg', NULL, 'Animi atque similique minima. Officiis est ut quis et porro.', 'In repellendus ut labore hic. Illo ab est beatae aperiam blanditiis. Ea dolorem modi nemo aspernatur earum cupiditate ratione. Repellat expedita odit quia aspernatur. Porro a deleniti sapiente itaque et. Cupiditate dolores in odio sit. Blanditiis quos dolor quidem officia. Molestias eos et culpa aperiam et ducimus nesciunt. Nihil numquam et quod ullam repellendus id. Dolor assumenda quo et. Quisquam quos et eum eaque esse voluptatem fugit est.', 'Instock', '369.00', '0.00', 'CHIRON1236', 63, 0, NULL, 552, NULL, '2022-04-26 03:57:04', '2022-04-26 03:57:04'),
(12, 6, 'ut sit', 'ut-sit', 'product3.jpg', NULL, 'Laudantium eum in similique quo nemo et. Aut ut ipsa laborum. Eos nemo sed et sint.', 'Odit ducimus omnis voluptatibus. Sit laborum deleniti neque id sit quam deleniti. Laboriosam officiis repellat quibusdam consequatur cum consequatur necessitatibus. Voluptatem soluta ea ipsum laudantium cupiditate. Quam iusto sed sequi libero. Ducimus quod ut qui facilis hic sunt. Quisquam dolore minus tempore tempora voluptatibus dicta architecto fugiat. Incidunt reprehenderit esse voluptas corrupti. Aspernatur provident vitae iure provident cum autem reprehenderit. Iure fuga quaerat error et.', 'Instock', '577.00', '0.00', 'CHIRON1662', 71, 0, NULL, 94, NULL, '2022-04-26 03:57:04', '2022-04-26 03:57:04'),
(13, 6, 'ut consequatur', 'ut-consequatur', 'product49.jpg', NULL, 'Rerum id quo incidunt ullam. Unde illum dignissimos quae quidem aliquam autem voluptatum molestiae.', 'Enim reiciendis recusandae tenetur aut aut et cupiditate. Voluptatem consequuntur nemo sint quo ex omnis. Quae ut provident earum quis sint. Maxime nesciunt provident iusto eligendi saepe qui. Deserunt non vel dicta tempora deserunt doloremque placeat autem. Magnam voluptatum itaque voluptates eos. A consequuntur alias esse similique voluptatem eos est. Architecto explicabo distinctio qui optio rem. Dolorem aliquam quia corporis consequatur praesentium.', 'Instock', '466.00', '0.00', 'CHIRON378', 35, 0, NULL, 853, NULL, '2022-04-26 03:57:04', '2022-04-26 03:57:04'),
(14, 8, 'id ullam', 'id-ullam', 'product15.jpg', NULL, 'Eveniet deleniti labore numquam et. Animi consequatur nihil saepe. Ut harum debitis alias.', 'Consectetur labore similique commodi delectus voluptate omnis rem. Rerum sit velit possimus vel veniam cumque minus. Quia sequi nostrum ullam omnis aspernatur earum. Autem nihil voluptas et accusantium aspernatur. Doloremque autem eos odit vel exercitationem vel. Consequatur fuga et voluptates tempore distinctio sit saepe itaque. Qui ipsam blanditiis id odit. Commodi non ut recusandae sed in ipsam ab velit.', 'Instock', '555.00', '0.00', 'CHIRON844', 64, 10, NULL, 851, NULL, '2022-04-26 03:57:04', '2022-05-11 01:13:18'),
(15, 7, 'veritatis aut', 'veritatis-aut', 'product42.jpg', NULL, 'Animi eum autem facere nostrum. Officiis id accusantium similique quis qui.', 'Qui soluta porro dolor neque et qui vitae. Modi fuga doloremque et amet quidem illo expedita esse. Reiciendis voluptates et consequatur voluptas eum. Suscipit ut non nemo praesentium similique repellat. Libero expedita illo animi dolor aut. Id dolor voluptates ullam eveniet deleniti consectetur distinctio. Impedit occaecati quos voluptas excepturi. Id sed accusantium corporis provident quasi est odit. Libero error unde et labore ut laboriosam.', 'Instock', '592.00', '0.00', 'CHIRON557', 33, 0, NULL, 562, NULL, '2022-04-26 03:57:04', '2022-04-26 03:57:04'),
(16, 6, 'totam sed', 'totam-sed', 'product35.jpg', NULL, 'Laboriosam fugit quia quia quas vitae optio tempora. Perferendis dolorem aspernatur maiores quod.', 'Consequatur sed quis doloribus non. Accusantium itaque molestias modi nemo ut. At sit qui explicabo ut modi dolor ab nulla. Laborum consequatur doloribus aliquid sapiente eius cupiditate delectus. Nesciunt nemo sit qui commodi eaque ipsam labore. Rerum ipsum eaque autem excepturi dolorum voluptas. Nihil iste enim blanditiis nostrum fugit consectetur. Est perferendis et accusamus quia soluta. Assumenda quibusdam rerum atque illum quas reprehenderit. Qui suscipit exercitationem asperiores earum.', 'Instock', '916.00', '0.00', 'CHIRON1512', 79, 0, NULL, 582, NULL, '2022-04-26 03:57:04', '2022-04-26 03:57:04'),
(17, 9, 'eum ad', 'eum-ad', 'product15.jpg', NULL, 'Nemo doloremque sit dolore dolorem. Est autem quos sit numquam sunt. Non ad sit eligendi aut est.', 'Explicabo autem enim dolorem quidem quidem. Reiciendis blanditiis possimus illum nisi qui fuga. Et beatae quidem enim et delectus. Velit suscipit provident nihil repellendus et. Voluptatem necessitatibus sequi accusamus expedita nostrum. Provident delectus ab omnis laudantium nihil exercitationem veniam. Totam tenetur minus laboriosam qui recusandae.', 'Instock', '110.00', '0.00', 'CHIRON210', 37, 0, NULL, 432, NULL, '2022-04-26 03:57:04', '2022-04-26 03:57:04'),
(18, 4, 'cumque provident', 'cumque-provident', 'product29.jpg', NULL, 'Minima et unde quasi. Qui esse et labore quos debitis ea sapiente.', 'Explicabo ratione in debitis placeat. Eligendi laudantium consequatur quia quasi mollitia. Animi ipsa quibusdam architecto ullam maxime. Id eum reprehenderit perspiciatis nihil beatae quae eos. Modi qui libero maiores dolores eum consequuntur amet. Non dicta quia alias doloribus ex ex architecto velit.', 'Instock', '924.00', '0.00', 'CHIRON1937', 47, 0, NULL, 92, NULL, '2022-04-26 03:57:04', '2022-04-26 03:57:04'),
(19, 9, 'voluptatem cum', 'voluptatem-cum', 'product48.jpg', NULL, 'Quis qui et aut provident facere voluptatem. Minus voluptas dicta est recusandae.', 'Qui quasi rerum culpa repellat consequatur voluptatem ut. Dolorum omnis quasi est laboriosam labore. Vitae nam vel eum. Laboriosam nostrum eum molestias sed. Iure beatae eos dolores vitae quo. Aliquid veritatis voluptate et et excepturi dolorem quisquam vitae. Vero sunt nam eum eligendi cum et quo ad. Beatae incidunt sint ex recusandae magni et et. Distinctio quisquam tenetur voluptatem at eius. Qui et aut quo ut qui sit. Atque voluptas ab est voluptatem adipisci.', 'Instock', '752.00', '0.00', 'CHIRON1473', 40, 0, NULL, 533, NULL, '2022-04-26 03:57:04', '2022-04-26 03:57:04'),
(20, 8, 'qui ipsa', 'qui-ipsa', 'product24.jpg', NULL, 'Voluptas qui pariatur est. Dolorem eveniet consectetur nam inventore.', 'Totam quibusdam incidunt et deleniti officia aliquid. Non repellendus facere praesentium officiis. Error consequatur magni nisi repellendus sunt et enim itaque. Voluptatum libero ullam ipsum ex ducimus. Eos nam consequuntur iste quae. Impedit nostrum consequatur facere tempore. Aliquam natus aliquid corrupti perferendis itaque ea.', 'Instock', '735.00', '0.00', 'CHIRON240', 35, 15, NULL, 50, NULL, '2022-04-26 03:57:04', '2022-05-10 01:11:16'),
(21, 5, 'veritatis voluptatem', 'veritatis-voluptatem', 'product41.jpg', NULL, 'Et ut dolorem deserunt porro. Officiis dolorum possimus qui quia.', 'Enim delectus eos fuga ad autem. Eum ducimus ex rerum debitis quis. Dolore sed ad numquam quo laudantium. Cumque aliquid consequatur quisquam et aut nemo. Maxime qui ducimus vel officiis est rerum. Odio reprehenderit voluptate distinctio. Et dolorem sunt sed ipsam ad dolorem velit repellat. Accusantium voluptatem nostrum omnis consequatur. Unde itaque suscipit sunt laudantium illo est. Nostrum qui magnam eveniet dolorem. Quia placeat amet omnis eum vitae. Quos voluptatem veritatis sint.', 'Instock', '945.00', '0.00', 'CHIRON1610', 54, 0, NULL, 763, NULL, '2022-04-26 03:57:04', '2022-05-08 02:39:18'),
(22, 6, 'qui id', 'qui-id', 'product45.jpg', NULL, 'Explicabo molestiae dolor expedita quo. Voluptatem reiciendis est tenetur ut officia animi.', 'Dolorem voluptates id est a mollitia veniam. Neque itaque nemo accusantium omnis repellat cum quis. Magni dolorum dolorum aspernatur voluptatibus hic quisquam. Suscipit quo sunt voluptatem at qui facilis necessitatibus. Asperiores eius reiciendis natus ut consectetur impedit dolorum. Minus qui aliquid impedit sit blanditiis ipsa et consequatur. Quos optio earum dolorem eveniet. Est omnis fugit fuga sapiente est. Rerum omnis esse vitae. Est accusantium illum deleniti error.', 'Instock', '772.00', '0.00', 'CHIRON34', 60, 0, NULL, 250, NULL, '2022-04-26 03:57:04', '2022-04-26 03:57:04'),
(23, 4, 'adipisci quis', 'adipisci-quis', 'product34.jpg', NULL, 'Harum aut ea ex magnam sunt in. Nihil nulla quo velit quis.', 'Laborum quam consequatur harum itaque et qui provident. Saepe odio laboriosam doloremque quo. Repudiandae et et consequatur iste quas reprehenderit. Similique ullam voluptas eum at quis voluptatem iure. Repellendus qui recusandae ducimus ad dolores. Consequatur eum aliquid eveniet praesentium ut harum. Aliquid eos voluptas necessitatibus corrupti id eum.', 'Instock', '839.00', '0.00', 'CHIRON681', 69, 0, NULL, 426, NULL, '2022-04-26 03:57:04', '2022-04-26 03:57:04'),
(24, 6, 'est ut', 'est-ut', 'product48.jpg', NULL, 'Nemo et qui aspernatur ut sed ut. Eligendi beatae aut ratione. Repellat et laborum et quia.', 'Eum in incidunt et voluptatem eveniet quo. Corrupti ut et corrupti sunt. Laudantium cum et sit et voluptate blanditiis. Dolores doloremque officia dolores atque voluptas similique sint similique. Unde blanditiis suscipit nulla voluptates. Enim deserunt adipisci rerum totam veniam. Numquam quia possimus consequatur eos et voluptate sunt.', 'Instock', '711.00', '0.00', 'CHIRON1909', 58, 0, NULL, 85, NULL, '2022-04-26 03:57:04', '2022-04-26 03:57:04'),
(25, 8, 'natus in', 'natus-in', 'product31.jpg', NULL, 'Et dolor nemo explicabo ullam. Aut nobis assumenda et minus quis.', 'Non placeat tempora tempore quia. Ipsa aspernatur itaque ut quia. Impedit animi nam et vero. Accusantium maxime ea officia ea. Aut aut vero aut molestias. Ut consequatur minus reprehenderit est repellat. Vel voluptates quas repellendus cumque. Dolorem quis perferendis repudiandae accusantium rem voluptatem sunt. Et consequuntur delectus quia sit quos voluptatem beatae dolorem. Veniam molestias vero quia quae qui blanditiis deserunt.', 'Instock', '180.00', '0.00', 'CHIRON132', 48, 3, NULL, 730, NULL, '2022-04-26 03:57:04', '2022-05-10 01:11:16'),
(26, 6, 'molestias facilis', 'molestias-facilis', 'product5.jpg', NULL, 'Nobis magnam sint quas enim dignissimos vero aut. Autem mollitia cupiditate rerum saepe.', 'Quo et eum tempora eligendi. Vitae minus assumenda aperiam. Ut dolores corporis eveniet mollitia sit saepe est. Dolores sunt impedit et ea esse incidunt qui quos. Fugiat qui consectetur vel perferendis sapiente aut sunt. Omnis ea harum deleniti eligendi vitae quia. Tenetur incidunt aut debitis soluta.', 'Instock', '229.00', '0.00', 'CHIRON1979', 69, 0, NULL, 145, NULL, '2022-04-26 03:57:04', '2022-04-26 03:57:04'),
(27, 5, 'omnis ab', 'omnis-ab', 'product47.jpg', NULL, 'Enim exercitationem qui molestias doloremque et sed illum. Qui pariatur voluptas facilis fugiat.', 'Eos optio distinctio eius recusandae. Occaecati consequatur voluptatibus maxime aut qui incidunt. Debitis beatae dignissimos est. Tenetur qui eius possimus odit. Dolorem aut dolore iure omnis. Optio reiciendis soluta in modi eius dolor aliquid. Minus id fugiat natus deserunt ab quisquam. Iusto enim excepturi aut itaque.', 'Instock', '798.00', '0.00', 'CHIRON878', 72, 0, NULL, 167, NULL, '2022-04-26 03:57:04', '2022-04-26 03:57:04'),
(28, 5, 'veniam iusto', 'veniam-iusto', 'product31.jpg', NULL, 'Et omnis eum sit quis eaque ducimus. Rerum debitis quod et. Non blanditiis sed similique nulla est.', 'Doloribus assumenda neque vel unde quod ea eaque. Itaque id excepturi inventore perferendis. Ab et nam adipisci est tenetur. Illum iusto et quo architecto pariatur quod. Deserunt ratione harum quia voluptatibus qui sed dicta. Consequatur aliquid vitae repellat quis nemo animi fugiat sint.', 'Instock', '277.00', '0.00', 'CHIRON1674', 21, 0, NULL, 595, NULL, '2022-04-26 03:57:04', '2022-04-26 03:57:04'),
(29, 6, 'dolores impedit', 'dolores-impedit', 'product36.jpg', NULL, 'Repellat inventore dolorem perspiciatis harum. Et excepturi ipsa qui.', 'Doloribus aut vero excepturi dolor fuga sed quasi. Et officia nihil doloremque. Nostrum odit explicabo et. Ut iusto et qui sit porro maiores inventore. Aut sed blanditiis et necessitatibus occaecati fugit. Est minima similique nisi vel. Soluta consequatur perspiciatis accusantium sunt consectetur officiis velit. Ut dignissimos minima officia asperiores voluptatem expedita. Modi exercitationem incidunt voluptatibus odit quos. Repellat commodi reiciendis eius deserunt sed.', 'Instock', '174.00', '0.00', 'CHIRON780', 90, 0, NULL, 631, NULL, '2022-04-26 03:57:04', '2022-04-26 03:57:04'),
(30, 1, 'occaecati quis', 'occaecati-quis', 'product26.jpg', NULL, 'Cumque temporibus aperiam facilis nobis. Velit consectetur illo facilis. Est qui qui molestiae.', 'Tenetur quis quis rerum et corporis. Harum error aut ab dolor. Quo aut neque eum reiciendis optio architecto. Reprehenderit ad molestiae illo modi veniam neque. Mollitia et omnis numquam id minus omnis aut. Voluptatem accusantium voluptates ex. Et aut tempora repellat nihil placeat qui. Repellendus harum est aliquam ex accusantium. Id vel soluta recusandae velit voluptatem eius eligendi. Dolorem saepe officiis aut architecto ad soluta id aut. Officiis hic in quod praesentium.', 'Instock', '764.00', '0.00', 'CHIRON1084', 87, 0, NULL, 477, NULL, '2022-04-26 03:57:04', '2022-05-08 00:49:20'),
(31, 4, 'aliquam minus', 'aliquam-minus', 'product37.jpg', NULL, 'Omnis qui aut quis et. Sint odit vel neque qui. Quia ipsam veritatis autem ex quibusdam rerum.', 'Rerum natus et nulla corporis atque laudantium. Deleniti soluta consectetur qui qui. Corporis et laudantium nostrum aperiam maxime. Autem unde expedita rem est mollitia. Vel minima optio sit veritatis aut aut ut. Odio aperiam dolores et ut quia eius. Ut dolorum ut corporis amet. Adipisci quia sint aliquam deleniti nemo nesciunt odio. Sed non quos sed consectetur id tenetur fugiat. Fugit in ipsum ullam odit aut eveniet numquam. Sit culpa iste aspernatur dolor. Qui ad ut nam.', 'Instock', '928.00', '0.00', 'CHIRON906', 80, 0, NULL, 425, NULL, '2022-04-26 03:57:04', '2022-04-26 03:57:04'),
(32, 8, 'distinctio sed', 'distinctio-sed', 'product38.jpg', NULL, 'Est aliquid in praesentium excepturi. Nihil hic fuga nemo eos. Rerum deleniti dolorum sit voluptas.', 'Provident sed non libero ad aspernatur commodi facere. Omnis ut saepe magnam nostrum optio eos molestiae. Voluptatem porro sequi quo harum ab delectus. Quasi sed qui ut aliquid optio. Nihil quo ducimus aut. Ut quo excepturi voluptates iure minus sint earum voluptate. Nihil dolore dolore aut atque aut a. Ullam officiis soluta consequatur in. Eligendi aspernatur non eos voluptas veritatis ipsa. Quae sit culpa recusandae et aut beatae. Est nostrum at ut deleniti.', 'Instock', '203.00', '0.00', 'CHIRON1875', 96, 0, NULL, 700, NULL, '2022-04-26 03:57:04', '2022-04-26 03:57:04'),
(33, 1, 'atque sed', 'atque-sed', 'product27.jpg', NULL, 'Harum in sint accusantium veniam. Et adipisci ea non aut. Et tempora qui ea iusto.', 'Optio ex similique eius enim perspiciatis nihil dolorum. Sapiente id maiores porro quae nostrum voluptatum. Et ipsa voluptatibus ut debitis reiciendis. Ut voluptatum praesentium non iure iusto eos. Ex quas esse modi ducimus vero totam. Quia ipsum sed odio qui animi repudiandae. Consequatur cupiditate qui perspiciatis reiciendis et expedita. Harum repellat sed odit et. Eos culpa nam accusamus in. Dolores officiis aut earum enim aperiam.', 'Instock', '885.00', '0.00', 'CHIRON1634', 53, 0, NULL, 657, NULL, '2022-04-26 03:57:04', '2022-05-08 00:47:17'),
(34, 8, 'et cupiditate', 'et-cupiditate', 'product15.jpg', NULL, 'Ut est doloribus sequi voluptatibus doloribus aliquam. In ut rerum commodi eligendi repellat.', 'Eum ullam alias repellat repellendus quia. Sunt non et ut perspiciatis non iusto. Voluptate deleniti culpa pariatur ipsum eligendi delectus ducimus. Sit eos soluta nobis voluptas distinctio. Facere ex quo eius iste in doloremque. Quae vitae ducimus dolores rerum aut blanditiis. Quae qui tempore itaque illum. Eligendi quia id sunt quo qui dolore velit. Incidunt odio dolore voluptates enim. Ut omnis ipsum est officia.', 'Instock', '452.00', '0.00', 'CHIRON489', 25, 0, NULL, 493, NULL, '2022-04-26 03:57:04', '2022-05-07 02:35:30'),
(35, 9, 'cum est', 'cum-est', 'product17.jpg', NULL, 'Rerum velit soluta error sapiente porro a. Sint quaerat ipsum voluptas. Nam unde eos tenetur ut.', 'Eum ipsa minus nihil quod ad quia aut labore. Dolorum aut et doloremque maiores dolores velit. Aut sint sunt mollitia voluptatem. Beatae odio doloremque neque consectetur quae. Et itaque est qui maxime quibusdam et. Nulla animi rerum quidem iusto nulla officia culpa ducimus. Qui id ex eos ea cum doloremque. Repellat voluptate quos fuga cum quo aliquam et accusantium. Architecto ex sint ratione. Dolores possimus quos reiciendis id.', 'Instock', '933.00', '0.00', 'CHIRON1185', 27, 0, NULL, 676, NULL, '2022-04-26 03:57:04', '2022-05-10 01:18:39'),
(36, 6, 'omnis consequatur', 'omnis-consequatur', 'product32.jpg', NULL, 'Necessitatibus dolor qui nam debitis. Molestiae libero eveniet quod qui.', 'Molestiae rerum dolorem ad dolores enim fuga libero commodi. Velit in porro fugit qui voluptas et et. Occaecati accusantium omnis perspiciatis id pariatur. Corrupti magni nam vitae omnis quaerat. Eum numquam blanditiis minima nam et. Cupiditate eveniet et est natus corrupti velit sapiente. Hic magnam possimus repellendus labore sit iste laudantium.', 'Instock', '600.00', '0.00', 'CHIRON313', 84, 0, NULL, 92, NULL, '2022-04-26 03:57:04', '2022-04-26 03:57:04'),
(37, 2, 'enim est', 'enim-est', 'product17.jpg', NULL, 'Nostrum itaque qui a aut. Quis qui maiores aut harum quo facere alias.', 'Laboriosam dignissimos sint vero et. Tempora eum consequuntur natus possimus tempore. Eligendi tenetur qui fugit deserunt sed et. Quia iure numquam perspiciatis pariatur et. Quia dolor ullam delectus nostrum eum et. Deleniti qui nisi aut. Accusantium consequatur quis iure veritatis debitis ut modi aspernatur. Perferendis fugiat aut a facilis ut delectus sed. Fugit expedita et autem tenetur. Ea est praesentium dolores quo quia fugit.', 'Instock', '926.00', '0.00', 'CHIRON1104', 89, 0, NULL, 98, NULL, '2022-04-26 03:57:04', '2022-04-26 03:57:04'),
(38, 7, 'incidunt dolor', 'incidunt-dolor', 'product26.jpg', NULL, 'Debitis sed qui dolores aut. Dicta deleniti ad eum deserunt nesciunt.', 'Veniam earum quia veniam ex sed. Hic sed voluptatibus voluptas omnis sed perspiciatis eligendi natus. Soluta qui ex ea voluptas. Praesentium deserunt aperiam quia aliquid. Suscipit quos soluta occaecati sint fugit omnis. A est provident repellendus quisquam animi. Laboriosam eligendi deleniti expedita. Non illum a illo molestias nihil eveniet. Omnis quam aperiam quod laudantium quasi. Eveniet provident incidunt temporibus sit nesciunt.', 'Instock', '793.00', '0.00', 'CHIRON1587', 38, 0, NULL, 586, NULL, '2022-04-26 03:57:04', '2022-04-26 03:57:04'),
(39, 5, 'fuga delectus', 'fuga-delectus', 'product24.jpg', NULL, 'Consequatur aut repellendus quo. In rerum iusto eos ipsum aliquid illum aut. Rerum et aut qui.', 'Autem accusamus ut voluptatibus voluptas dignissimos enim. Maiores quo ut quis consequatur odit. Molestiae rerum minima velit corrupti quis omnis unde. Eius veniam sed qui et et. Repellendus reiciendis ut aperiam dolore quis cum. Ut molestiae tempore inventore sed autem ullam dicta. Velit et dolore voluptas dolores rerum harum. Sint consequatur recusandae quisquam optio repudiandae. Aliquid voluptatem aut nesciunt aut. Molestiae error est aut deleniti vel.', 'Instock', '685.00', '0.00', 'CHIRON307', 38, 0, NULL, 920, NULL, '2022-04-26 03:57:04', '2022-05-08 00:45:45'),
(40, 9, 'ut est', 'ut-est', 'product1.jpg', NULL, 'Eum doloremque velit quas non qui. Occaecati laboriosam corporis quia optio praesentium id sunt.', 'Eum dolore molestiae vero libero. Quas veritatis possimus sequi aut voluptatem sint. Iste magni doloribus facere laboriosam quis. Pariatur deleniti est sed minima. Corporis perspiciatis totam a. Expedita aut maiores nemo beatae. Est ex libero aliquid ea doloremque molestiae excepturi. Eos commodi quia voluptatum voluptas ut occaecati. Earum quam et cumque consectetur dolor. Amet saepe ab illo assumenda aut.', 'Instock', '285.00', '0.00', 'CHIRON1735', 35, 0, NULL, 180, NULL, '2022-04-26 03:57:04', '2022-04-26 03:57:04'),
(41, 7, 'sint et', 'sint-et', 'product43.jpg', NULL, 'Aut nesciunt assumenda at eum. Laborum eos est id. Tempore qui architecto id deleniti.', 'Et impedit distinctio vero velit. Libero aperiam ipsam non doloribus. Consequuntur eaque fugit et voluptas. Sed illum officiis quidem nisi libero ea. Qui dolore et nobis maxime similique accusantium. Sint et culpa quia nemo adipisci nostrum numquam. Animi distinctio fugit rem suscipit dolor cum eos. Aut nisi aut nesciunt dolorem fugit at ea. Ullam aliquam id voluptatibus maiores similique maiores. Quisquam sapiente nobis officiis voluptate rerum. Neque sit est rem vitae dicta eaque.', 'Instock', '492.00', '0.00', 'CHIRON448', 46, 0, NULL, 670, NULL, '2022-04-26 03:57:04', '2022-04-26 03:57:04'),
(42, 8, 'perspiciatis quod', 'perspiciatis-quod', 'product49.jpg', NULL, 'Sint perspiciatis vitae sequi. Velit quia sequi quos. Fugiat minima ut qui molestiae.', 'Temporibus quos occaecati quasi temporibus voluptatibus nisi numquam. Ut harum ea inventore rerum. Fugit nostrum perspiciatis rerum ipsum reprehenderit cumque tempora mollitia. Hic soluta aliquid harum ullam assumenda. Et voluptatem autem quaerat ea voluptas iusto quia. Quis deleniti facere numquam ea ut. Impedit odit eveniet quia eligendi.', 'Instock', '358.00', '0.00', 'CHIRON1605', 32, 0, NULL, 669, NULL, '2022-04-26 03:57:04', '2022-05-07 02:35:30'),
(43, 8, 'accusamus quas', 'accusamus-quas', 'product35.jpg', NULL, 'Molestias aperiam fugit ipsa optio necessitatibus eos at. Velit nam dolorum qui sunt a.', 'Ducimus tenetur nobis aut quibusdam ex necessitatibus. Illo praesentium nihil impedit velit et. Molestiae consequatur molestiae provident. Reprehenderit temporibus tempore voluptatibus. Porro tempora et quo reiciendis laudantium saepe a. Temporibus voluptatem ut odio labore. Dolor autem repellendus cum. Quas magnam eveniet incidunt exercitationem animi veniam. Beatae dolor reiciendis molestiae ut numquam.', 'Instock', '481.00', '0.00', 'CHIRON633', 53, 0, NULL, 474, NULL, '2022-04-26 03:57:04', '2022-05-08 02:43:06'),
(44, 3, 'debitis beatae', 'debitis-beatae', 'product15.jpg', NULL, 'Cupiditate nostrum eos fugiat illo sunt fuga quia. Animi dicta itaque enim voluptas consectetur.', 'Ut inventore ut est. Omnis at nihil vero voluptatem. Quas sit itaque et dolor ullam. Voluptatibus qui facilis est aliquid cum quod. Dolore non ullam delectus. Ea quia qui quis sit veritatis eum. Ullam maxime voluptates incidunt. Labore id consequatur facere tempora ex molestias. Ex dolores et dolor et unde.', 'Instock', '867.00', '0.00', 'CHIRON873', 59, 0, NULL, 304, NULL, '2022-04-26 03:57:04', '2022-04-26 03:57:04'),
(45, 9, 'esse minus', 'esse-minus', 'product29.jpg', NULL, 'Vel et dolores veritatis iusto. Molestiae dicta ut et est aut. Omnis perspiciatis quasi aliquid.', 'Mollitia reprehenderit cupiditate voluptatem voluptatem iste illo eum et. Qui dolorem eum ut impedit voluptatum iste. Aut totam ratione nihil iste facilis reiciendis sit. Dolores voluptatem aspernatur exercitationem est tenetur neque consequatur. Est ea recusandae iusto hic. Aut qui quae a vel nobis. Asperiores ea aliquam a minus laudantium. Reprehenderit enim molestiae et non. Et dolor eum maxime tempore quis excepturi. Possimus sit aut iure.', 'Instock', '373.00', '0.00', 'CHIRON580', 88, 0, NULL, 205, NULL, '2022-04-26 03:57:04', '2022-04-26 03:57:04'),
(46, 9, 'non temporibus', 'non-temporibus', 'product36.jpg', NULL, 'Quibusdam voluptatem dolores nostrum illum. Ut officia doloremque et atque tempora omnis.', 'Hic consequatur blanditiis animi aliquam dolorem harum. Qui facere quibusdam et dolor facere sit. Corrupti ut non fugit sed veniam aut voluptatem. Nihil tempora hic deleniti mollitia et aut. Dolore totam inventore quidem est eum neque. Eum nobis dolor sint id. Blanditiis alias laudantium voluptas esse labore. Vitae quasi ea harum numquam. Non voluptas alias reprehenderit quasi illo excepturi. Nam aut ut est voluptas amet dolorem. Quasi ut ut quis voluptatibus.', 'Instock', '152.00', '0.00', 'CHIRON1685', 42, 0, NULL, 739, NULL, '2022-04-26 03:57:04', '2022-04-26 03:57:04'),
(47, 7, 'iusto voluptatem', 'iusto-voluptatem', 'product33.jpg', NULL, 'Voluptas odit cupiditate quaerat vero sed. Modi vel unde minima. Nam ea veritatis quis dolores.', 'Deleniti dignissimos veniam eum aliquid omnis molestiae et. Quam deserunt non et et qui sunt. Qui possimus nesciunt ratione. Qui explicabo at dolor alias deleniti optio ab dolorum. Accusamus non eveniet molestiae voluptatem nesciunt. Perferendis eveniet cupiditate consequuntur deserunt quae odit. Doloremque rerum quia id eius quidem molestiae. Fuga vero repellendus ducimus tenetur. Quis pariatur doloremque magni earum ut fugiat repellat. Laboriosam autem occaecati deserunt quibusdam.', 'Instock', '396.00', '0.00', 'CHIRON1398', 62, 0, NULL, 331, NULL, '2022-04-26 03:57:04', '2022-04-26 03:57:04'),
(48, 8, 'reiciendis perspiciatis', 'reiciendis-perspiciatis', 'product32.jpg', NULL, 'Est odit aut fugit aperiam odit. Rerum ipsam assumenda dolores quam explicabo cum.', 'Quod unde voluptate reiciendis et quia ab numquam. Ex consequatur sint corporis eius totam saepe ipsum soluta. Beatae harum quis ad et sed. Cum eaque deserunt impedit est ducimus. Voluptatem sit corrupti expedita doloremque vitae excepturi distinctio dolorum. Sint consequatur ea aut unde. Dolores ut ea dolorem dolore omnis. Sed est beatae sint ut eveniet esse est. Ut rerum eius velit asperiores eos.', 'Instock', '601.00', '0.00', 'CHIRON385', 89, 0, NULL, 960, NULL, '2022-04-26 03:57:04', '2022-04-26 03:57:04'),
(49, 2, 'tempore ut', 'tempore-ut', 'product18.jpg', NULL, 'Tempora eveniet quod quibusdam neque non. In earum consequatur eos. Illo est numquam sint quia in.', 'Eveniet architecto velit reiciendis ex. Numquam et nulla impedit. Facere voluptas iste ducimus quae. Ex et quasi modi saepe placeat totam quibusdam ut. Amet dignissimos illo beatae nostrum reprehenderit. Magnam nesciunt nostrum autem asperiores. Saepe voluptatem excepturi iusto repellendus quibusdam. Ut non quia amet repellat quidem rem cumque. Aut dolor corrupti velit dignissimos. Temporibus nostrum fuga necessitatibus nam magnam. Dolor laudantium sed facere ea dignissimos.', 'Instock', '755.00', '0.00', 'CHIRON54', 92, 0, NULL, 921, NULL, '2022-04-26 03:57:04', '2022-04-26 03:57:04'),
(50, 7, 'sit cum', 'sit-cum', 'product24.jpg', NULL, 'In minima nisi odio id et. Laborum qui repellat aspernatur. Ut dolorem dolores est corrupti.', 'Nemo labore aut beatae dolores molestias quae veritatis. Esse adipisci sunt est. Beatae omnis et et consectetur placeat eius. Cum est mollitia aspernatur sed non laborum consequuntur. Quo animi asperiores dolorem. Dolorem nulla neque officia aut. Distinctio quidem et laboriosam commodi sed ea in. Reprehenderit culpa et voluptas quos et unde omnis. Ducimus ut ea hic et. Dolorum repellendus ut eaque voluptatem atque.', 'Instock', '441.00', '0.00', 'CHIRON1713', 42, 0, NULL, 39, NULL, '2022-04-26 03:57:04', '2022-04-26 03:57:04'),
(51, 1, 'Abc Df', 'abc-df', '1656563876.png', ',16565638760.png,16565638761.png,16565638762.png', '<p><strong>fkfhcnaln ajdldjaljd</strong></p>\n<p>&nbsp;</p>', '<p><strong>dadhadkajanadancadalkd</strong></p>\n<p><strong>adaldamcadkadamal</strong></p>\n<p><strong>dadpad[p</strong></p>', 'Instock', '12.00', '10.00', 'CHIRON123456', 100, 0, NULL, 20, NULL, '2022-06-30 04:37:56', '2022-06-30 04:37:56');

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `line1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `line2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `province` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zipcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `user_id`, `image`, `phone`, `line1`, `line2`, `city`, `province`, `country`, `zipcode`, `created_at`, `updated_at`) VALUES
(1, 2, '1651843374.jpg', '+923136593635', 'Hussnain town street 4', 'Dr Kamran wali gali', 'Multan', 'Punjab', 'Pakistan', '6000', '2022-05-06 07:08:35', '2022-05-06 08:22:54');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `rating` int(11) NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `rating`, `comment`, `order_item_id`, `created_at`, `updated_at`) VALUES
(1, 5, 'Very Nice and fresh as mention in product description', 5, '2022-05-06 09:03:09', '2022-05-06 09:03:09');

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
('wlP6gwWaMtLsWZF5LFCz8b6UKS23xMSPzqtJfIng', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiQzZLdWcxYzl2OU9sdmlIRGZIQWFsWVlVQ0VWVDM0Nld2VGxqdDFIciI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czo1OiJ1dHlwZSI7czozOiJBRE0iO30=', 1656564045);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

CREATE TABLE `shippings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `province` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zipcode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shippings`
--

INSERT INTO `shippings` (`id`, `order_id`, `firstname`, `lastname`, `mobile`, `email`, `line1`, `line2`, `city`, `province`, `country`, `zipcode`, `created_at`, `updated_at`) VALUES
(1, 6, 'Muhammad', 'Aslam', '03106473564', 'muhaffan945@gmail.com', 'Hussnain town street 4', 'Dr Kamran wali gali', 'Multan', 'Punjab', 'Pakistan', '6000', '2022-05-06 14:23:40', '2022-05-06 14:23:40'),
(2, 16, 'Muhammad', 'Aslam', '03106473564', 'muhaffan945@gmail.com', 'Hussnain town street 4', 'Dr Kamran wali gali', 'Multan', 'Punjab', 'Pakistan', '6000', '2022-05-07 01:43:13', '2022-05-07 01:43:13'),
(3, 17, 'Muhammad', 'Aslam', '03106473564', 'muhaffan945@gmail.com', 'Hussnain town street 4', 'Dr Kamran wali gali', 'Multan', 'Punjab', 'Pakistan', '6000', '2022-05-07 01:56:28', '2022-05-07 01:56:28'),
(4, 19, 'Muhammad', 'Aslam', '03106473564', 'muhaffan945@gmail.com', 'Hussnain town street 4', 'Dr Kamran wali gali', 'Multan', 'Punjab', 'Pakistan', '6000', '2022-05-07 02:35:30', '2022-05-07 02:35:30');

-- --------------------------------------------------------

--
-- Table structure for table `shoppingcart`
--

CREATE TABLE `shoppingcart` (
  `identifier` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instance` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shoppingcart`
--

INSERT INTO `shoppingcart` (`identifier`, `instance`, `content`, `created_at`, `updated_at`) VALUES
('aslamsubeng123@gmail.com', 'cart', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:1:{s:32:\"027c91341fd5cf4d2579b49c4b6a90da\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":9:{s:5:\"rowId\";s:32:\"027c91341fd5cf4d2579b49c4b6a90da\";s:2:\"id\";i:1;s:3:\"qty\";i:2;s:4:\"name\";s:7:\"est est\";s:5:\"price\";d:617;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:18:\"App\\Models\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:10;s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved\";b:0;}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-05-11 01:21:43', NULL),
('user@gmail.com', 'cart', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:4:{s:32:\"0d881817bb81e6017d2df92d0313f607\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":9:{s:5:\"rowId\";s:32:\"0d881817bb81e6017d2df92d0313f607\";s:2:\"id\";i:25;s:3:\"qty\";i:1;s:4:\"name\";s:8:\"natus in\";s:5:\"price\";d:180;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:18:\"App\\Models\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:10;s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved\";b:0;}s:32:\"8c9a90e4053cd74dcb83515e745419ae\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":9:{s:5:\"rowId\";s:32:\"8c9a90e4053cd74dcb83515e745419ae\";s:2:\"id\";i:42;s:3:\"qty\";i:1;s:4:\"name\";s:17:\"perspiciatis quod\";s:5:\"price\";d:358;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:18:\"App\\Models\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:10;s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved\";b:0;}s:32:\"1d3bf986c109d443f161bb3962491282\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":9:{s:5:\"rowId\";s:32:\"1d3bf986c109d443f161bb3962491282\";s:2:\"id\";i:34;s:3:\"qty\";i:1;s:4:\"name\";s:13:\"et cupiditate\";s:5:\"price\";d:452;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:18:\"App\\Models\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:10;s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved\";b:0;}s:32:\"c1db1025126b9d1b9a0ca862b0a51f07\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":9:{s:5:\"rowId\";s:32:\"c1db1025126b9d1b9a0ca862b0a51f07\";s:2:\"id\";i:33;s:3:\"qty\";i:1;s:4:\"name\";s:9:\"atque sed\";s:5:\"price\";d:885;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:18:\"App\\Models\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:10;s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved\";b:0;}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-05-07 02:03:29', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `heading` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `category_id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 1, 'autem omnis', 'autem-omnis', '2022-04-26 03:57:04', '2022-04-26 03:57:04'),
(2, 7, 'placeat eum', 'placeat-eum', '2022-04-26 03:57:04', '2022-04-26 03:57:04'),
(3, 4, 'aut non', 'aut-non', '2022-04-26 03:57:04', '2022-04-26 03:57:04'),
(4, 5, 'eligendi sed', 'eligendi-sed', '2022-04-26 03:57:04', '2022-04-26 03:57:04'),
(5, 7, 'enim corrupti', 'enim-corrupti', '2022-04-26 03:57:04', '2022-04-26 03:57:04'),
(6, 7, 'quidem doloremque', 'quidem-doloremque', '2022-04-26 03:57:04', '2022-04-26 03:57:04'),
(7, 3, 'aliquid aut', 'aliquid-aut', '2022-04-26 03:57:04', '2022-04-26 03:57:04'),
(8, 5, 'iure animi', 'iure-animi', '2022-04-26 03:57:04', '2022-04-26 03:57:04'),
(9, 5, 'pariatur animi', 'pariatur-animi', '2022-04-26 03:57:04', '2022-04-26 03:57:04'),
(10, 6, 'aut suscipit', 'aut-suscipit', '2022-04-26 03:57:04', '2022-04-26 03:57:04'),
(11, 3, 'sequi cumque', 'sequi-cumque', '2022-04-26 03:57:04', '2022-04-26 03:57:04'),
(12, 2, 'nihil magnam', 'nihil-magnam', '2022-04-26 03:57:04', '2022-04-26 03:57:04'),
(13, 2, 'explicabo vel', 'explicabo-vel', '2022-04-26 03:57:04', '2022-04-26 03:57:04'),
(14, 9, 'eos asperiores', 'eos-asperiores', '2022-04-26 03:57:04', '2022-04-26 03:57:04'),
(15, 5, 'autem sint', 'autem-sint', '2022-04-26 03:57:04', '2022-04-26 03:57:04'),
(16, 3, 'veritatis non', 'veritatis-non', '2022-04-26 03:57:04', '2022-04-26 03:57:04'),
(17, 2, 'animi fuga', 'animi-fuga', '2022-04-26 03:57:04', '2022-04-26 03:57:04'),
(18, 7, 'et rerum', 'et-rerum', '2022-04-26 03:57:04', '2022-04-26 03:57:04'),
(19, 3, 'iste natus', 'iste-natus', '2022-04-26 03:57:04', '2022-04-26 03:57:04'),
(20, 4, 'nisi nostrum', 'nisi-nostrum', '2022-04-26 03:57:04', '2022-04-26 03:57:04'),
(21, 4, 'est ad', 'est-ad', '2022-04-26 03:57:04', '2022-04-26 03:57:04'),
(22, 5, 'odit dolor', 'odit-dolor', '2022-04-26 03:57:04', '2022-04-26 03:57:04'),
(23, 3, 'autem dolores', 'autem-dolores', '2022-04-26 03:57:04', '2022-04-26 03:57:04'),
(24, 3, 'eaque est', 'eaque-est', '2022-04-26 03:57:04', '2022-04-26 03:57:04'),
(25, 7, 'aperiam ut', 'aperiam-ut', '2022-04-26 03:57:04', '2022-04-26 03:57:04'),
(26, 4, 'autem porro', 'autem-porro', '2022-04-26 03:57:04', '2022-04-26 03:57:04'),
(27, 4, 'similique animi', 'similique-animi', '2022-04-26 03:57:04', '2022-04-26 03:57:04'),
(28, 2, 'sequi voluptatum', 'sequi-voluptatum', '2022-04-26 03:57:04', '2022-04-26 03:57:04'),
(29, 5, 'sequi aut', 'sequi-aut', '2022-04-26 03:57:04', '2022-04-26 03:57:04'),
(30, 5, 'non ipsa', 'non-ipsa', '2022-04-26 03:57:04', '2022-04-26 03:57:04'),
(31, 10, 'Fruits', 'fruits', '2022-05-08 14:58:57', NULL),
(32, 10, 'Vegetables', 'vegetables', '2022-05-08 14:59:54', NULL),
(33, 10, 'Meat', 'meat', '2022-05-08 14:59:54', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `mode` enum('cod','card','paypal') COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('pending','approved','declined','refunded') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `user_id`, `order_id`, `mode`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 5, 'card', 'approved', '2022-04-27 06:17:45', '2022-04-27 06:17:45'),
(2, 2, 6, 'cod', 'pending', '2022-05-06 14:23:40', '2022-05-06 14:23:40'),
(3, 2, 7, 'cod', 'pending', '2022-05-06 15:46:29', '2022-05-06 15:46:29'),
(4, 2, 8, 'cod', 'pending', '2022-05-07 00:23:27', '2022-05-07 00:23:27'),
(5, 2, 9, 'cod', 'pending', '2022-05-07 01:17:44', '2022-05-07 01:17:44'),
(6, 2, 10, 'cod', 'pending', '2022-05-07 01:30:23', '2022-05-07 01:30:23'),
(7, 2, 11, 'cod', 'pending', '2022-05-07 01:33:37', '2022-05-07 01:33:37'),
(8, 2, 16, 'cod', 'pending', '2022-05-07 01:43:13', '2022-05-07 01:43:13'),
(9, 2, 17, 'cod', 'pending', '2022-05-07 01:56:28', '2022-05-07 01:56:28'),
(10, 2, 19, 'card', 'approved', '2022-05-07 02:35:36', '2022-05-07 02:35:36'),
(11, 2, 20, 'cod', 'pending', '2022-05-08 00:12:34', '2022-05-08 00:12:34'),
(12, 2, 21, 'cod', 'pending', '2022-05-08 00:16:45', '2022-05-08 00:16:45'),
(13, 2, 22, 'cod', 'pending', '2022-05-08 00:18:38', '2022-05-08 00:18:38'),
(14, 2, 23, 'cod', 'pending', '2022-05-08 00:28:26', '2022-05-08 00:28:26'),
(15, 2, 24, 'cod', 'pending', '2022-05-08 00:34:08', '2022-05-08 00:34:08'),
(16, 2, 25, 'cod', 'pending', '2022-05-08 00:38:51', '2022-05-08 00:38:51'),
(17, 2, 26, 'cod', 'pending', '2022-05-08 00:39:54', '2022-05-08 00:39:54'),
(18, 2, 27, 'cod', 'pending', '2022-05-08 00:43:52', '2022-05-08 00:43:52'),
(19, 2, 28, 'cod', 'pending', '2022-05-08 00:45:45', '2022-05-08 00:45:45'),
(20, 2, 29, 'cod', 'pending', '2022-05-08 00:47:17', '2022-05-08 00:47:17'),
(21, 2, 30, 'cod', 'pending', '2022-05-08 00:49:20', '2022-05-08 00:49:20'),
(22, 2, 31, 'cod', 'pending', '2022-05-08 02:27:29', '2022-05-08 02:27:29'),
(23, 2, 32, 'cod', 'pending', '2022-05-08 02:29:45', '2022-05-08 02:29:45'),
(24, 2, 33, 'cod', 'pending', '2022-05-08 02:36:58', '2022-05-08 02:36:58'),
(25, 2, 34, 'cod', 'pending', '2022-05-08 02:39:18', '2022-05-08 02:39:18'),
(26, 2, 35, 'cod', 'pending', '2022-05-08 02:40:44', '2022-05-08 02:40:44'),
(27, 2, 36, 'cod', 'pending', '2022-05-08 02:43:06', '2022-05-08 02:43:06'),
(28, 2, 37, 'cod', 'pending', '2022-05-08 02:47:56', '2022-05-08 02:47:56'),
(29, 2, 38, 'cod', 'pending', '2022-05-10 00:57:52', '2022-05-10 00:57:52'),
(30, 2, 39, 'cod', 'pending', '2022-05-10 01:11:16', '2022-05-10 01:11:16'),
(31, 2, 40, 'cod', 'pending', '2022-05-10 01:18:39', '2022-05-10 01:18:39'),
(32, 2, 41, 'cod', 'pending', '2022-05-10 01:24:45', '2022-05-10 01:24:45'),
(33, 2, 42, 'cod', 'pending', '2022-05-11 01:13:18', '2022-05-11 01:13:18'),
(34, 2, 43, 'cod', 'pending', '2022-05-11 01:22:03', '2022-05-11 01:22:03');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fb_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `utype` enum('USR','ADM') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USR' COMMENT 'USR stand for customer and ADm stand for Admin',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fb_id`, `google_id`, `name`, `email`, `utype`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, 'Lottie Dicki', 'admin@gmail.com', 'ADM', '2022-04-26 03:57:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'K7KRf5tFpAJsiASZK2Qwy1LkLQlxScjLs3BV43U6EvTf7KjSzCLwxMbalLTl', NULL, NULL, '2022-04-26 03:57:03', '2022-04-26 03:57:03'),
(2, NULL, NULL, 'Muhammad Aslam', 'aslamsubeng123@gmail.com', 'USR', '2022-04-26 03:57:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'VheyjFsMrCPGSdRh66latzTMPWw9fd3NF1YNDqcyrqUYKbKmnQ2SPf669vpE', NULL, NULL, '2022-04-26 03:57:03', '2022-05-06 07:25:38'),
(3, NULL, NULL, 'Ramon O\'Keefe IV', 'beer.elza@example.org', 'USR', '2022-04-26 03:57:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'TzRJQqkMAF', NULL, NULL, '2022-04-26 03:57:03', '2022-04-26 03:57:03'),
(4, NULL, NULL, 'Mr. Jakob Pacocha MD', 'elbert69@example.net', 'USR', '2022-04-26 03:57:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'q8l4wW9r7r', NULL, NULL, '2022-04-26 03:57:03', '2022-04-26 03:57:03'),
(5, NULL, NULL, 'Jannie Hickle', 'dnitzsche@example.net', 'USR', '2022-04-26 03:57:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'vCxOZ9ngy0', NULL, NULL, '2022-04-26 03:57:03', '2022-04-26 03:57:03'),
(6, NULL, NULL, 'Ansel Kautzer', 'reilly.evert@example.com', 'USR', '2022-04-26 03:57:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, '7LlaPZSHFZ', NULL, NULL, '2022-04-26 03:57:03', '2022-04-26 03:57:03'),
(7, NULL, NULL, 'Cassidy Pagac', 'turcotte.fleta@example.net', 'USR', '2022-04-26 03:57:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, '338q4YSAS6', NULL, NULL, '2022-04-26 03:57:04', '2022-04-26 03:57:04'),
(8, NULL, NULL, 'Dr. Destini Sanford II', 'alexys.mclaughlin@example.org', 'USR', '2022-04-26 03:57:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'hEZLnjS3Kw', NULL, NULL, '2022-04-26 03:57:04', '2022-04-26 03:57:04'),
(9, NULL, NULL, 'Hertha Johnston', 'hiram40@example.org', 'USR', '2022-04-26 03:57:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, '6T1ZuyTAXn', NULL, NULL, '2022-04-26 03:57:04', '2022-04-26 03:57:04'),
(10, NULL, NULL, 'Adriana Haag DDS', 'mauer@example.org', 'USR', '2022-04-26 03:57:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'GKobwoKxuT', NULL, NULL, '2022-04-26 03:57:04', '2022-04-26 03:57:04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `coupons_code_unique` (`code`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `home_categories`
--
ALTER TABLE `home_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_product_id_foreign` (`product_id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`);

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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profiles_user_id_foreign` (`user_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_order_item_id_foreign` (`order_item_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shippings`
--
ALTER TABLE `shippings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shippings_order_id_foreign` (`order_id`);

--
-- Indexes for table `shoppingcart`
--
ALTER TABLE `shoppingcart`
  ADD PRIMARY KEY (`identifier`,`instance`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sub_categories_category_id_foreign` (`category_id`);

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
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `home_categories`
--
ALTER TABLE `home_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `profiles`
--
ALTER TABLE `profiles`
  ADD CONSTRAINT `profiles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_order_item_id_foreign` FOREIGN KEY (`order_item_id`) REFERENCES `order_items` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `shippings`
--
ALTER TABLE `shippings`
  ADD CONSTRAINT `shippings_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD CONSTRAINT `sub_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
