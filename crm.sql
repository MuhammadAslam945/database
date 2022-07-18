-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 18, 2022 at 11:01 PM
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
-- Database: `ecrm`
--

-- --------------------------------------------------------

--
-- Table structure for table `advances`
--

CREATE TABLE `advances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `resturant_id` bigint(20) UNSIGNED NOT NULL,
  `resturant_advance_request_id` bigint(20) UNSIGNED NOT NULL,
  `commission_rate` decimal(8,2) NOT NULL,
  `advance_payment` int(11) NOT NULL,
  `month` enum('jan','feb','mar','apr','may','jun','july','aug','sep','oct','nov','dec') COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total` double(12,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `advances`
--

INSERT INTO `advances` (`id`, `resturant_id`, `resturant_advance_request_id`, `commission_rate`, `advance_payment`, `month`, `detail`, `total`, `created_at`, `updated_at`) VALUES
(1, 4, 1, '10.00', 10000, 'may', '<b>Payment Deposited In Bank</b>\r\n<b>Check: 123456</b>\r\n<b>Bank : HBL Multan</b>', 10000.00, '2022-06-14 13:49:22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bonuses`
--

CREATE TABLE `bonuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `bonus` decimal(8,2) NOT NULL DEFAULT 0.00,
  `month` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year` year(4) DEFAULT NULL,
  `status` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL,
  `reason` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bonuses`
--

INSERT INTO `bonuses` (`id`, `user_id`, `bonus`, `month`, `year`, `status`, `reason`, `created_at`, `updated_at`) VALUES
(1, 33, '1000.00', '06', 2022, '0', '<p><strong>Neew Urgent Bonus</strong></p>', '2022-06-28 16:01:41', '2022-06-28 16:01:41');

-- --------------------------------------------------------

--
-- Table structure for table `business_worths`
--

CREATE TABLE `business_worths` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `intial_investment_payment` decimal(12,2) DEFAULT 0.00,
  `inital_investment_date` date DEFAULT NULL,
  `new_investment_payment` decimal(12,2) DEFAULT 0.00,
  `new_investment_date` date DEFAULT NULL,
  `total_investment_payment` decimal(12,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `business_worths`
--

INSERT INTO `business_worths` (`id`, `intial_investment_payment`, `inital_investment_date`, `new_investment_payment`, `new_investment_date`, `total_investment_payment`, `created_at`, `updated_at`) VALUES
(1, '100000.00', '2022-03-02', '0.00', '0000-00-00', '100000.00', '2022-03-02 15:55:58', '2022-06-09 15:34:58'),
(2, '0.00', NULL, '4500.00', '2022-06-06', '104500.00', '2022-06-09 14:13:06', '2022-06-09 15:34:58'),
(3, '0.00', NULL, '1000.00', '2022-06-05', '105500.00', '2022-06-09 14:18:04', '2022-06-09 15:34:58'),
(4, '0.00', NULL, '40000.00', '2022-06-08', '145500.00', '2022-06-09 19:57:28', '2022-06-09 15:34:58'),
(5, '0.00', NULL, '2000.00', '2022-06-10', '147500.00', '2022-06-09 14:59:21', '2022-06-09 15:34:58'),
(6, '0.00', NULL, '2000.00', '2022-06-10', '149500.00', '2022-06-09 15:00:52', '2022-06-09 15:34:58'),
(10, '0.00', NULL, '10000.00', '2022-06-09', '155500.00', '2022-06-09 15:42:07', '2022-06-09 15:42:07'),
(11, '0.00', NULL, '10000.00', '2022-06-18', '165500.00', '2022-06-18 18:46:32', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `expense_amount` decimal(8,2) DEFAULT NULL,
  `expense_month` enum('jan','feb','mar','apr','may','june','july','aug','sep','oct','nov','dec') COLLATE utf8mb4_unicode_ci NOT NULL,
  `weak` enum('1st','2nd','3rd','4th','5th') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1st',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `expenses`
--

INSERT INTO `expenses` (`id`, `user_id`, `expense_amount`, `expense_month`, `weak`, `created_at`, `updated_at`) VALUES
(1, 4, '200.00', 'jan', '1st', '2022-06-21 09:04:55', '2022-06-21 09:04:55'),
(2, 4, '500.00', 'jan', '2nd', '2022-06-21 09:44:05', '2022-06-21 09:44:05'),
(3, 4, '300.00', 'jan', '3rd', '2022-06-21 09:44:18', '2022-06-21 09:44:18'),
(4, 4, '2000.00', 'jan', '4th', '2022-06-21 09:44:53', '2022-06-21 09:44:53');

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
-- Table structure for table `fleets`
--

CREATE TABLE `fleets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'users.png',
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'inactive',
  `contract` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contract_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fleets`
--

INSERT INTO `fleets` (`id`, `user_id`, `name`, `slug`, `logo`, `mobile`, `address`, `latitude`, `longitude`, `status`, `contract`, `contract_date`, `created_at`, `updated_at`) VALUES
(3, 26, 'laudantium qui', 'laudantium-qui', 'users.png', NULL, 'Et perferendis aut et et distinctio et alias. Suscipit autem quod voluptatem quod. Et omnis assumenda voluptas aliquam quasi delectus.', '30.399774', '71.285173', 'inactive', NULL, NULL, '2022-06-02 10:23:40', '2022-06-02 10:23:40'),
(6, 29, 'quae officiis', 'quae-officiis', 'users.png', NULL, 'Ipsa a et occaecati laudantium. Odit iure natus vero sunt iste debitis quam. Nemo illum dolorem necessitatibus modi et.', '30.766131', '71.641613', 'inactive', NULL, NULL, '2022-06-02 10:23:40', '2022-06-02 10:23:40'),
(9, 27, 'distinctio perferendis', 'distinctio-perferendis', 'users.png', NULL, 'Accusamus odio consequatur optio inventore doloremque qui enim. Quos nulla sed autem voluptatum. Totam quo totam alias aut aut sapiente. Soluta hic non omnis et nisi cum.', '30.518867', '71.487242', 'inactive', NULL, NULL, '2022-06-02 10:26:24', '2022-06-02 10:26:24'),
(10, 28, 'aut architecto', 'aut-architecto', 'users.png', NULL, 'Quis tenetur magni veritatis. Id autem id veniam unde rerum libero deleniti.', '30.687531', '71.761637', 'inactive', NULL, NULL, '2022-06-02 10:26:24', '2022-06-02 10:26:24'),
(18, 30, 'consequatur perferendis', 'consequatur-perferendis', 'users.png', NULL, 'Deleniti dolores placeat velit voluptate est. Corrupti libero voluptas tempora dicta. Est praesentium quam illum aspernatur voluptas. In quas quidem expedita omnis aspernatur ex.', '30.765791', '71.270384', 'inactive', NULL, NULL, '2022-06-02 10:27:28', '2022-06-02 10:27:28'),
(23, 6, 'Muhammad Aslam', 'muhammad-aslam', '1655398606.jpg', '03136593635', 'Hussnain town street 4 Dr Kamran wali gali piran ghaib road Multa, Punjab Pakistan\n', '27585.98012356149', '71.50691281495045', 'inactive', NULL, NULL, '2022-06-16 02:54:13', '2022-06-16 11:56:46');

-- --------------------------------------------------------

--
-- Table structure for table `fleet_balances`
--

CREATE TABLE `fleet_balances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fleet_id` bigint(20) UNSIGNED NOT NULL,
  `this_month_earning` double NOT NULL DEFAULT 0,
  `month` enum('JAN','FEB','MAR','APR','MAY','JUNE','JULY','AUG','SEP','OCT','NOV','DEC') COLLATE utf8mb4_unicode_ci NOT NULL,
  `commission` double NOT NULL,
  `withdraw` double NOT NULL DEFAULT 0,
  `detail` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remaining` double NOT NULL,
  `total` double NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fleet_balances`
--

INSERT INTO `fleet_balances` (`id`, `fleet_id`, `this_month_earning`, `month`, `commission`, `withdraw`, `detail`, `remaining`, `total`, `created_at`, `updated_at`) VALUES
(1, 23, 2500, 'MAY', 250, 1800, '<b>The Payment Has Been Send To Your address</b>', 450, 2500, '2022-06-18 19:48:34', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `fleet_commissions`
--

CREATE TABLE `fleet_commissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fleet_id` bigint(20) UNSIGNED NOT NULL,
  `commission_rate` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fleet_commissions`
--

INSERT INTO `fleet_commissions` (`id`, `fleet_id`, `commission_rate`, `created_at`, `updated_at`) VALUES
(1, 23, '10.00', '2022-06-17 19:36:46', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `fleet_payment_requests`
--

CREATE TABLE `fleet_payment_requests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fleet_id` bigint(20) UNSIGNED NOT NULL,
  `rtype` enum('INVEST','WITHDRAW','','') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INVEST',
  `Administration_approval` enum('Yes','No') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'No',
  `payment` double NOT NULL DEFAULT 0,
  `detail` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `investment_date` date DEFAULT NULL,
  `currency` enum('USD','ERO','AED','PKR') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ERO',
  `payment_approval_date` date DEFAULT NULL,
  `payment_cancel_date` date DEFAULT NULL,
  `payment_transfer` enum('Yes','No') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'No',
  `payment_transfer_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fleet_payment_requests`
--

INSERT INTO `fleet_payment_requests` (`id`, `fleet_id`, `rtype`, `Administration_approval`, `payment`, `detail`, `investment_date`, `currency`, `payment_approval_date`, `payment_cancel_date`, `payment_transfer`, `payment_transfer_date`, `created_at`, `updated_at`) VALUES
(1, 23, 'INVEST', 'Yes', 10000, '<b>Hi Sir</b>\r\n<br>\r\n<p>I want to buy your franchise in multan city</p>', '2022-06-20', 'PKR', '2022-06-18', NULL, 'Yes', '2022-06-18', '2022-06-18 18:38:23', '2022-06-18 13:40:32'),
(2, 23, 'WITHDRAW', 'Yes', 200, '<p><strong>Hi Sir,</strong></p>\n<p><strong>we need Our sales to continue good work</strong></p>\n<p><strong>best or regards</strong></p>\n<p><strong>MA Multan Francise</strong></p>\n<p>&nbsp;</p>', NULL, 'ERO', '2022-07-01', NULL, 'No', NULL, '2022-06-23 17:29:12', '2022-07-01 12:36:21');

-- --------------------------------------------------------

--
-- Table structure for table `f_profits`
--

CREATE TABLE `f_profits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fleet_id` bigint(20) UNSIGNED NOT NULL,
  `fleet_payment_request_id` bigint(20) UNSIGNED NOT NULL,
  `payment_deposite` decimal(8,2) NOT NULL DEFAULT 0.00,
  `detail` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remaining_payment` decimal(8,2) NOT NULL DEFAULT 0.00,
  `total_agree_payment` decimal(8,2) NOT NULL DEFAULT 0.00,
  `contract_expiry_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `f_profits`
--

INSERT INTO `f_profits` (`id`, `fleet_id`, `fleet_payment_request_id`, `payment_deposite`, `detail`, `remaining_payment`, `total_agree_payment`, `contract_expiry_date`, `created_at`, `updated_at`) VALUES
(2, 23, 1, '10000.00', '<p>Payment Received Invoice</p>\n<p><span style=\"color: fff; font-family: ubuntu-regular, sans-serif; font-size: 14px; white-space: nowrap; \">10000 ERO</span></p>\n<p><span style=\"color: fff; font-family: ubuntu-regular, sans-serif; font-size: 14px; white-space: nowrap; \">Inform net-cash has been received from the<br> client and remaining amount is 5000 according<br> to agreement</span></p>\n<p><strong><span style=\"color: fff; font-family: ubuntu-regular, sans-serif; font-size: 14px; white-space: nowrap; \">Receiver Department</span></strong></p>\n<p><strong><span style=\"color: #212529; font-family: ubuntu-regular, sans-serif; font-size: 14px; white-space: nowrap;>Account Department</span></strong></p>', '5000.00', '15000.00', '2023-12-31', '2022-06-18 13:40:32', '2022-06-18 13:40:32');

-- --------------------------------------------------------

--
-- Table structure for table `grand_profits`
--

CREATE TABLE `grand_profits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `profit_amount` decimal(8,2) DEFAULT NULL,
  `profit_month` enum('jan','feb','mar','apr','may','june','july','aug','sep','oct','nov','dec') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `grand_profits`
--

INSERT INTO `grand_profits` (`id`, `profit_amount`, `profit_month`, `created_at`, `updated_at`) VALUES
(1, '10000.00', 'jan', '2022-06-10 07:12:01', NULL),
(2, '10000.00', 'feb', '2022-06-21 10:09:43', '2022-06-21 10:09:43');

-- --------------------------------------------------------

--
-- Table structure for table `incomes`
--

CREATE TABLE `incomes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `income` double NOT NULL DEFAULT 0,
  `month` enum('jan','feb','mar','apr','may','june','july','aug','sep','oct','nov','dec') COLLATE utf8mb4_unicode_ci NOT NULL,
  `weak` enum('1st','2nd','3rd','4th','5th') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `incomes`
--

INSERT INTO `incomes` (`id`, `user_id`, `income`, `month`, `weak`, `created_at`, `updated_at`) VALUES
(1, 4, 500, 'jan', '1st', '2022-01-21 09:36:38', '2022-06-21 09:36:38'),
(2, 4, 1500, 'jan', '2nd', '2022-01-21 09:36:59', '2022-06-21 09:36:59'),
(3, 4, 2500, 'jan', '3rd', '2022-01-21 09:37:11', '2022-06-21 09:37:11'),
(4, 4, 8500, 'jan', '4th', '2022-06-21 09:37:25', '2022-06-21 09:37:25');

-- --------------------------------------------------------

--
-- Table structure for table `inventories`
--

CREATE TABLE `inventories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `material_purchase_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qunatity` int(11) NOT NULL,
  `instock` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inventory_demands`
--

CREATE TABLE `inventory_demands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reason` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `demand_status` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `demand_approval_date` date DEFAULT NULL,
  `demand_quantity` int(11) NOT NULL DEFAULT 0,
  `approved_quantity` int(11) NOT NULL DEFAULT 0,
  `per_item_cost` decimal(8,2) NOT NULL DEFAULT 0.00,
  `total_cost` decimal(8,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `inventory_demands`
--

INSERT INTO `inventory_demands` (`id`, `user_id`, `name`, `slug`, `reason`, `demand_status`, `demand_approval_date`, `demand_quantity`, `approved_quantity`, `per_item_cost`, `total_cost`, `created_at`, `updated_at`) VALUES
(1, 33, 'Motor Bike 150cc', 'motor-bike-150cc', 'To deliver orders client need new motor bike', '0', NULL, 1, 0, '0.00', '0.00', '2022-07-17 11:50:57', '2022-07-17 11:50:57'),
(2, 33, 'Motor Car\'s', 'motor-cars', 'Hi Sir,\nwe need two car\'s to continue vigilance.\n1.Honda Civic 1300cc\n2.Suzuki Atlas 1000cc', '0', NULL, 2, 0, '0.00', '0.00', '2022-07-17 12:41:41', '2022-07-17 12:41:41');

-- --------------------------------------------------------

--
-- Table structure for table `investments`
--

CREATE TABLE `investments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `partner_id` bigint(20) UNSIGNED NOT NULL,
  `initial_investment` int(11) DEFAULT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `new_investment` decimal(12,2) DEFAULT NULL,
  `total_investment` decimal(12,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `investments`
--

INSERT INTO `investments` (`id`, `partner_id`, `initial_investment`, `detail`, `new_investment`, `total_investment`, `created_at`, `updated_at`) VALUES
(1, 1, 40000, '<b>Bank:HBL</b><br> <b>Branch:Sameejabad</b><br> <b>City:Multan</b><br> <b>account Number:04477900311203</b><br>', '0.00', '40000.00', '2022-06-09 07:01:36', '2022-06-09 14:18:04'),
(2, 1, NULL, '<b>Account #:04477911344203</b><br>\n<b>Bank :HBL Pakistan</b><br>\n<b>check Number :44203</b><br>', '4500.00', '44500.00', '2022-06-09 14:09:54', '2022-06-09 14:18:04'),
(3, 1, NULL, '<b>Account #:04477911344203</b><br>\n<b>Bank :HBL Pakistan</b><br>\n<b>check Number :44203</b><br>', '4500.00', '49000.00', '2022-06-09 14:13:06', '2022-06-09 14:18:04'),
(4, 1, NULL, '<b>Account #:04477911344203</b><br>\n<b>Bank :HBL Pakistan</b><br>\n<b>check Number :44203</b><br>', '1000.00', '50000.00', '2022-06-09 14:18:04', '2022-06-09 14:18:04'),
(5, 1, NULL, '<b>djadkajh</b><br>\n<b>djadkajh</b><br>\n<b>djadkajh</b><br>', '2000.00', '52000.00', '2022-06-09 14:59:21', '2022-06-09 14:59:21'),
(6, 1, NULL, '<b>djadkajh</b><br>\n<b>djadkajh</b><br>\n<b>djadkajh</b><br>', '2000.00', '54000.00', '2022-06-09 15:00:52', '2022-06-09 15:00:52'),
(10, 3, 10000, '<b>Account #:04477911344203</b><br>\n<b>Bank :HBL Pakistan</b><br>\n<b>check Number :44203</b><br>', NULL, '10000.00', '2022-06-09 15:42:07', '2022-06-09 15:42:07');

-- --------------------------------------------------------

--
-- Table structure for table `materials`
--

CREATE TABLE `materials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `material_purchase_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `material_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock` int(11) NOT NULL DEFAULT 0,
  `dispatch` int(11) NOT NULL DEFAULT 0,
  `manufacture` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `material_issues`
--

CREATE TABLE `material_issues` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `issue_badge` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `material_purchases`
--

CREATE TABLE `material_purchases` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `inventory_demand_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `badge_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `materia_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity_purchase` int(11) NOT NULL DEFAULT 0,
  `cost` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `medical_leaves`
--

CREATE TABLE `medical_leaves` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `leaves_request` int(11) NOT NULL DEFAULT 0,
  `from` date NOT NULL,
  `to` date NOT NULL,
  `remaining_leaves` int(11) NOT NULL DEFAULT 0,
  `status` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL,
  `reason` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `medical_leaves`
--

INSERT INTO `medical_leaves` (`id`, `user_id`, `leaves_request`, `from`, `to`, `remaining_leaves`, `status`, `reason`, `created_at`, `updated_at`) VALUES
(1, 33, 2, '2022-07-06', '2022-07-07', 0, '0', '<p><strong>Due To Fever</strong></p>', '2022-06-28 14:35:40', '2022-06-28 14:35:40');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `sender_id` bigint(20) UNSIGNED NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `user_id`, `sender_id`, `message`, `created_at`, `updated_at`) VALUES
(1, 6, 4, '<p><strong>Hi Sir,</strong></p>\n<p>your request of 1000 ERO investment has been approved by administration.<br> We will arrange meeting with you&nbsp; ste terms and condition <br>of business in written from of contract.</p>\n<p><strong>Best regards</strong></p>\n<p><strong>Account Department INC</strong></p>\n<p><strong>Muhammad Affan</strong></p>', '2022-06-18 09:17:44', '2022-06-18 09:17:44'),
(2, 6, 4, '<p><strong>Hi Sir,</strong></p>\n<p>your request of 1000 ERO investment has been approved by administration.<br> We will arrange meeting with you&nbsp; ste terms and condition <br>of business in written from of contract.</p>\n<p><strong>Best regards</strong></p>\n<p><strong>Account Department INC</strong></p>\n<p><strong>Muhammad Affan</strong></p>', '2022-06-18 09:20:35', '2022-06-18 09:20:35'),
(3, 24, 4, '<p><strong>Hi Sir,</strong></p>\n<p>your request of 1000 ERO investment has been approved by administration.<br> We will arrange meeting with you&nbsp; ste terms and condition <br>of business in written from of contract.</p>\n<p><strong>Best regards</strong></p>\n<p><strong>Account Department INC</strong></p>\n<p><strong>Muhammad Affan</strong></p>', '2022-06-21 14:16:55', '2022-06-21 14:16:55'),
(4, 4, 6, '<p><strong>Thanks for your reply</strong></p>\n<p>I\'m very glad to here that news.</p>\n<p>Best regards</p>\n<p><strong>Muhammad Affan</strong></p>', '2022-06-23 14:52:26', '2022-06-23 14:52:26'),
(5, 4, 6, '<p><strong>Thanks for your reply</strong></p>\n<p>I\'m very glad to here that news.</p>\n<p>Best regards</p>\n<p><strong>Muhammad Affan</strong></p>', '2022-06-23 14:53:41', '2022-06-23 14:53:41');

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
(6, '2022_05_17_052418_create_sessions_table', 1),
(7, '2022_05_17_054421_create_permission_tables', 1),
(8, '2022_05_18_022730_add_new_columns_user_table', 2),
(9, '2022_05_29_173531_create_profiles_table', 3),
(10, '2022_05_30_014158_create_resturants_table', 4),
(11, '2022_05_30_015522_create_partners_table', 5),
(12, '2022_05_30_020815_create_shares_table', 6),
(13, '2022_05_30_021709_create_profits_table', 7),
(14, '2022_05_30_022507_create_resturants_table', 8),
(15, '2022_05_30_022552_create_r_profits_table', 9),
(16, '2022_05_30_023003_create_business_worths_table', 9),
(17, '2022_06_02_143503_create_fleets_table', 10),
(18, '2022_06_02_170428_create_f_profits_table', 11),
(19, '2022_06_03_183627_create_investments_table', 12),
(20, '2022_06_03_190251_add_new_column_shares_table', 13),
(21, '2022_06_08_072119_create_expenses_table', 14),
(22, '2022_06_08_072231_create_grand_profits_table', 14),
(23, '2022_06_13_160221_create_advances_table', 15),
(24, '2022_06_14_143843_create_resturant_commissions_table', 16),
(25, '2022_06_14_144004_create_resturant_balances_table', 16),
(26, '2022_06_14_144634_create_fleet_balances_table', 17),
(27, '2022_06_14_144702_create_fleet_commissions_table', 17),
(28, '2022_06_14_144924_create_fleet_balances_table', 18),
(29, '2022_06_14_172603_create_resturant_payment_requests_table', 19),
(30, '2022_06_14_173158_create_fleet_payment_requests_table', 20),
(31, '2022_06_14_173254_create_partner_payment_requests_table', 21),
(32, '2022_06_14_174017_add_new_column_to_resturant_payment_requests_table', 22),
(33, '2022_06_14_174357_add_new_column_to_fleet_payment_requests_table', 23),
(34, '2022_06_14_174433_add_new_column_to_partner_payment_requests_table', 23),
(35, '2022_06_14_174612_create_resturant_advance_requests_table', 24),
(36, '2022_06_18_132811_create_messages_table', 25),
(37, '2022_06_18_175928_add_new_column_to_f_profits_table', 26),
(38, '2022_06_18_181702_add_new_column_to_f_profits_table', 27),
(39, '2022_06_20_081349_add_coulmn_to_partner_payment_request_table', 28),
(40, '2022_06_20_085101_create_withdraws_table', 29),
(41, '2022_06_21_134157_add_new_column_to_expenses_table', 30),
(42, '2022_06_21_141731_create_incomes_table', 31),
(43, '2022_06_25_062240_add_new_column_partners_table', 32),
(44, '2022_06_25_073820_add_new_column_to_partner_payment_request_table', 33),
(45, '2022_06_25_074412_add_new_column_to_partner_payment_request_table', 34),
(46, '2022_06_26_141114_create_salaries_table', 35),
(47, '2022_06_27_063818_add_new_column_to_resturants_table', 36),
(48, '2022_06_27_102858_add_new_column_to_resturan_advance_payment', 37),
(49, '2022_06_27_182139_add_new_column_to_r_profits_tabel', 38),
(50, '2022_06_28_174721_create_medical_leaves_table', 39),
(51, '2022_06_28_175050_create_pre_leaves_table', 39),
(52, '2022_06_28_175242_create_bonuses_table', 39),
(53, '2022_06_28_180326_create_monthly_pays_table', 40),
(54, '2022_06_28_181615_create_pre_leaves_table', 41),
(55, '2022_06_28_185907_add_new_column_to_mdeical_leaves_table', 42),
(56, '2022_06_28_200733_add_new_column_to_pre_leaves_table', 43),
(57, '2022_07_17_012655_create_inventory_demands_table', 44),
(58, '2022_07_17_013655_create_material_purchases_table', 44),
(59, '2022_07_17_014655_create_materials_table', 44),
(60, '2022_07_17_023729_create_material_issues_table', 44),
(61, '2022_07_17_023812_create_inventories_table', 44);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `monthly_pays`
--

CREATE TABLE `monthly_pays` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `month` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` date NOT NULL,
  `basic` decimal(8,2) NOT NULL,
  `mdeical_allownce` decimal(8,2) NOT NULL,
  `convince_allownce` decimal(8,2) NOT NULL,
  `transfer_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `partners`
--

CREATE TABLE `partners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'inactive',
  `contract` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `partners`
--

INSERT INTO `partners` (`id`, `user_id`, `firstname`, `lastname`, `image`, `address`, `mobile`, `status`, `contract`, `created_at`, `updated_at`) VALUES
(1, 21, 'Muhammad', 'Ashan', 'users.png', 'Qui a architecto accusamus sed cupiditate placeat ', '+9230012345172', 'inactive', 'contract.jfif', '2022-06-02 10:29:20', '2022-06-25 02:29:09'),
(3, 22, 'voluptatem quibusdam', 'perferendis et', 'users.png', 'Impedit suscipit dolore et. Sit vel minima nihil culpa eum. Quod est voluptatem tempora dolorem tempore aspernatur. Molestias dolorem itaque consectetur sit est doloremque sint optio.', '9230012345339', 'inactive', NULL, '2022-06-02 10:29:20', '2022-06-02 10:29:20'),
(4, 31, NULL, NULL, 'users.png', NULL, NULL, 'active', NULL, '2022-06-09 04:49:20', '2022-06-09 04:49:20'),
(6, 34, NULL, NULL, 'users.png', NULL, NULL, 'inactive', NULL, '2022-07-02 05:44:19', '2022-07-02 05:44:19');

-- --------------------------------------------------------

--
-- Table structure for table `partner_payment_requests`
--

CREATE TABLE `partner_payment_requests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `partner_id` bigint(20) UNSIGNED NOT NULL,
  `rtype` enum('INVEST','WITHDRAW') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INVEST',
  `Administration_approval` enum('Yes','No') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'No',
  `payment` double NOT NULL DEFAULT 0,
  `currency` enum('USD','ERU','AED','PKR') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USD',
  `detail` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_approval_date` date DEFAULT NULL,
  `payment_cancel_date` date DEFAULT NULL,
  `payment_transfer` enum('Yes','No') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'No',
  `payment_transfer_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `partner_payment_requests`
--

INSERT INTO `partner_payment_requests` (`id`, `partner_id`, `rtype`, `Administration_approval`, `payment`, `currency`, `detail`, `payment_approval_date`, `payment_cancel_date`, `payment_transfer`, `payment_transfer_date`, `created_at`, `updated_at`) VALUES
(1, 1, 'WITHDRAW', 'Yes', 1000, 'USD', NULL, '2022-06-22', NULL, 'Yes', '2022-06-20', '2022-06-15 08:16:52', '2022-06-20 11:15:44'),
(2, 3, 'WITHDRAW', 'Yes', 500, 'USD', NULL, '2022-06-22', NULL, 'Yes', '2022-06-12', '2022-06-17 08:16:52', '2022-06-20 11:28:16'),
(3, 1, 'INVEST', 'Yes', 5000, 'USD', 'Hi Sir\n<br>\nwe Want to invest more in your company', '2022-07-05', NULL, 'No', NULL, '2022-06-25 02:51:28', '2022-07-05 13:57:01'),
(4, 1, 'WITHDRAW', 'No', 500, 'USD', 'Please sir,\nRelease My profit', NULL, NULL, 'No', NULL, '2022-06-25 03:28:54', '2022-06-25 03:28:54');

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
-- Table structure for table `pre_leaves`
--

CREATE TABLE `pre_leaves` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `leaves_request` int(11) NOT NULL DEFAULT 0,
  `from` date NOT NULL,
  `to` date NOT NULL,
  `remaining_leaves` int(11) NOT NULL DEFAULT 0,
  `status` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL,
  `reason` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pre_leaves`
--

INSERT INTO `pre_leaves` (`id`, `user_id`, `leaves_request`, `from`, `to`, `remaining_leaves`, `status`, `reason`, `created_at`, `updated_at`) VALUES
(1, 33, 12, '2022-07-06', '2022-07-17', 0, '0', '<p><strong>Want To spend some time with</strong></p>\n<p><strong>my family.</strong></p>', '2022-06-28 15:12:14', '2022-06-28 15:12:14');

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `designation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pay` decimal(8,2) DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `user_id`, `firstname`, `lastname`, `image`, `address`, `designation`, `pay`, `mobile`, `created_at`, `updated_at`) VALUES
(1, 33, NULL, NULL, NULL, NULL, 'EMP', NULL, NULL, '2022-06-26 11:09:07', '2022-06-26 11:09:07');

-- --------------------------------------------------------

--
-- Table structure for table `profits`
--

CREATE TABLE `profits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `partner_id` bigint(20) UNSIGNED NOT NULL,
  `month` enum('jan','feb','mar','apr','may','jun','july','aug','sep','oct','nov','dec') COLLATE utf8mb4_unicode_ci NOT NULL,
  `this_month_profit` int(11) NOT NULL,
  `this_month_payment_transfer` decimal(8,2) NOT NULL,
  `remaining` decimal(8,2) NOT NULL DEFAULT 0.00,
  `total_taken_payment` decimal(12,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profits`
--

INSERT INTO `profits` (`id`, `partner_id`, `month`, `this_month_profit`, `this_month_payment_transfer`, `remaining`, `total_taken_payment`, `created_at`, `updated_at`) VALUES
(3, 1, 'may', 1531, '1000.00', '531.00', '1000.00', '2022-06-20 11:25:05', '2022-06-20 11:25:05'),
(4, 3, 'may', 687, '500.00', '187.00', '500.00', '2022-06-20 11:28:16', '2022-06-20 11:28:16');

-- --------------------------------------------------------

--
-- Table structure for table `resturants`
--

CREATE TABLE `resturants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contract` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `resturants`
--

INSERT INTO `resturants` (`id`, `user_id`, `name`, `slug`, `logo`, `address`, `mobile`, `contract`, `status`, `created_at`, `updated_at`) VALUES
(2, 23, 'est aliquid', 'est-aliquid', NULL, 'Modi quis sequi dolores eligendi placeat cumque et. Amet quia adipisci dignissimos nesciunt. Rerum quis delectus veritatis ut dolore.', '9230012345206', NULL, 'active', '2022-06-02 10:27:05', '2022-07-14 17:09:08'),
(4, 24, 'Maharam Dhaba', 'maharam-dhaba', '1656313693.jpg', 'Omnis nulla assumenda voluptas dolorem molestiae. Qui cupiditate deserunt qui aut. Cupiditate beatae vitae similique nulla saepe corrupti est.', '+9230012345908', NULL, 'active', '2022-06-02 10:27:05', '2022-07-14 18:47:26'),
(7, 23, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2022-07-15 13:38:41', '2022-07-15 13:38:41'),
(8, 24, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2022-07-15 13:39:22', '2022-07-15 13:39:22'),
(9, 25, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2022-07-15 13:39:28', '2022-07-15 13:39:28'),
(10, 35, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2022-07-15 13:39:30', '2022-07-15 13:39:30'),
(11, 36, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2022-07-15 13:39:43', '2022-07-15 13:39:43');

-- --------------------------------------------------------

--
-- Table structure for table `resturant_advance_requests`
--

CREATE TABLE `resturant_advance_requests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `resturant_id` bigint(20) UNSIGNED NOT NULL,
  `Administration_approval` enum('Yes','No') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'No',
  `payment` double NOT NULL DEFAULT 0,
  `detail` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_approval_date` date DEFAULT NULL,
  `payment_cancel_date` date DEFAULT NULL,
  `payment_transfer` enum('Yes','No') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'No',
  `payment_transfer_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `resturant_advance_requests`
--

INSERT INTO `resturant_advance_requests` (`id`, `resturant_id`, `Administration_approval`, `payment`, `detail`, `payment_approval_date`, `payment_cancel_date`, `payment_transfer`, `payment_transfer_date`, `created_at`, `updated_at`) VALUES
(1, 4, 'Yes', 10000, NULL, '2022-07-15', '2022-07-15', 'Yes', '2022-06-10', '2022-06-05 19:12:18', '2022-07-15 09:39:58'),
(2, 4, 'Yes', 5000, '<p>hi Sir,</p>\n<p>We need some Amount in term of advance to expend our business</p>\n<p>So please give us some amount in advance.</p>\n<p>Best POf Regards</p>\n<h3 class=\"page-title text-dark\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; font-weight: 500; line-height: 1.2; font-size: 1.125rem; text-shadow: none; font-family: ubuntu-medium, sans-serif; --bs-text-opacity: 1; color: #343a40; background-color: #f2edf3;\">&nbsp;William Yost</h3>', '2022-07-15', '2022-07-15', 'No', NULL, '2022-06-27 05:42:55', '2022-07-15 09:39:43'),
(3, 4, 'Yes', 5000, '<p>hi Sir,</p>\n<p>We need some Amount in term of advance to expend our business</p>\n<p>So please give us some amount in advance.</p>\n<p>Best POf Regards</p>\n<h3 class=\"page-title text-dark\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; font-weight: 500; line-height: 1.2; font-size: 1.125rem; text-shadow: none; font-family: ubuntu-medium, sans-serif; --bs-text-opacity: 1; color: #343a40; background-color: #f2edf3;\">&nbsp;William Yost</h3>', '2022-07-15', '2022-07-15', 'No', NULL, '2022-06-27 05:44:12', '2022-07-15 07:26:04');

-- --------------------------------------------------------

--
-- Table structure for table `resturant_balances`
--

CREATE TABLE `resturant_balances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `resturant_id` bigint(20) UNSIGNED NOT NULL,
  `total_earning` double NOT NULL DEFAULT 0,
  `commission` double NOT NULL,
  `withdraw` double NOT NULL DEFAULT 0,
  `detail` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `advance` double NOT NULL,
  `remaining` double NOT NULL DEFAULT 0,
  `balance` double(12,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `resturant_balances`
--

INSERT INTO `resturant_balances` (`id`, `resturant_id`, `total_earning`, `commission`, `withdraw`, `detail`, `advance`, `remaining`, `balance`, `created_at`, `updated_at`) VALUES
(1, 4, 3500, 350, 3000, 'Payment Deposited In Bank Check: 123456 Bank : HBL Multan', 10000, 150, -9850.00, '2022-06-14 15:06:26', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `resturant_commissions`
--

CREATE TABLE `resturant_commissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `resturant_id` bigint(20) UNSIGNED NOT NULL,
  `commission_rate` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `resturant_commissions`
--

INSERT INTO `resturant_commissions` (`id`, `resturant_id`, `commission_rate`, `created_at`, `updated_at`) VALUES
(1, 4, '10.00', '2022-06-01 15:05:07', NULL),
(2, 2, '12.00', '2022-06-02 15:05:07', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `resturant_payment_requests`
--

CREATE TABLE `resturant_payment_requests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `resturant_id` bigint(20) UNSIGNED NOT NULL,
  `Administration_approval` enum('Yes','No') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'No',
  `payment` double NOT NULL DEFAULT 0,
  `detail` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_approval_date` date DEFAULT NULL,
  `payment_cancel_date` date DEFAULT NULL,
  `payment_transfer` enum('Yes','No') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'No',
  `payment_transfer_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `resturant_payment_requests`
--

INSERT INTO `resturant_payment_requests` (`id`, `resturant_id`, `Administration_approval`, `payment`, `detail`, `payment_approval_date`, `payment_cancel_date`, `payment_transfer`, `payment_transfer_date`, `created_at`, `updated_at`) VALUES
(1, 4, 'Yes', 10000, NULL, '2022-07-15', NULL, 'No', NULL, '2022-06-05 19:10:39', '2022-07-15 09:41:22'),
(2, 4, 'Yes', 200, '<p><strong>Hi Sir,</strong></p>\n<p><strong>Please Release Our Sale Funds</strong></p>\n<p><strong>Thanks in Advance</strong></p>', '2022-07-15', NULL, 'No', NULL, '2022-06-27 14:03:15', '2022-07-15 09:38:37');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `r_profits`
--

CREATE TABLE `r_profits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `resturant_id` bigint(20) UNSIGNED NOT NULL,
  `commission_rate` decimal(8,2) NOT NULL,
  `commission` double NOT NULL DEFAULT 0,
  `month` enum('jan','feb','mar','apr','may','jun','july','aug','sep','oct','nov','dec') COLLATE utf8mb4_unicode_ci NOT NULL,
  `this_month_ordered` int(11) NOT NULL,
  `this_month_earning` double(12,2) DEFAULT NULL,
  `total_order_recieved` int(11) NOT NULL,
  `this_month_payment_taken` decimal(8,2) NOT NULL,
  `remaining_payment` decimal(8,2) NOT NULL,
  `total` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `r_profits`
--

INSERT INTO `r_profits` (`id`, `resturant_id`, `commission_rate`, `commission`, `month`, `this_month_ordered`, `this_month_earning`, `total_order_recieved`, `this_month_payment_taken`, `remaining_payment`, `total`, `created_at`, `updated_at`) VALUES
(1, 4, '10.00', 350, 'may', 40, 3500.00, 40, '3000.00', '150.00', '3000.00', '2022-05-26 14:18:28', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `salaries`
--

CREATE TABLE `salaries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `designation` enum('Admin','Manager','SaleManager','Assistant','Accountant','InvesntoryManager','PurchaseManager','Staff') COLLATE utf8mb4_unicode_ci NOT NULL,
  `contract` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `basic_pay` decimal(8,2) NOT NULL DEFAULT 0.00,
  `medical_allownce` decimal(8,2) NOT NULL DEFAULT 0.00,
  `convince_allownce` decimal(8,2) NOT NULL DEFAULT 0.00,
  `medical_leaves` decimal(8,2) NOT NULL DEFAULT 0.00,
  `pre_leaves` decimal(8,2) NOT NULL DEFAULT 0.00,
  `annual_bonus` decimal(8,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `salaries`
--

INSERT INTO `salaries` (`id`, `user_id`, `designation`, `contract`, `basic_pay`, `medical_allownce`, `convince_allownce`, `medical_leaves`, `pre_leaves`, `annual_bonus`, `created_at`, `updated_at`) VALUES
(1, 33, 'Admin', NULL, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '2022-06-26 11:13:53', '2022-06-26 11:13:53');

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
('4AvW7ME1XPv2qvazI1RypwCyaVLeI4bz6zAuBlmq', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiaVZnc3BGVnExbTlabkNxSEFJc2JhUlQ4VlFMeFBTWTh3dll3RG1tbiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1658092882);

-- --------------------------------------------------------

--
-- Table structure for table `shares`
--

CREATE TABLE `shares` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `partner_id` bigint(20) UNSIGNED NOT NULL,
  `initial_shares` decimal(12,2) DEFAULT NULL,
  `new_shares` decimal(12,2) DEFAULT NULL,
  `shares_sale` decimal(12,2) DEFAULT 0.00,
  `total_shares` decimal(12,2) NOT NULL DEFAULT 0.00,
  `shares_sale_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shares`
--

INSERT INTO `shares` (`id`, `partner_id`, `initial_shares`, `new_shares`, `shares_sale`, `total_shares`, `shares_sale_date`, `created_at`, `updated_at`) VALUES
(1, 1, '4.00', '0.00', '0.00', '4.00', NULL, '2022-06-08 06:50:14', '2022-06-09 14:18:04'),
(2, 1, NULL, '4.13', '0.00', '8.13', NULL, '2022-06-09 14:13:06', '2022-06-09 14:18:04'),
(3, 1, NULL, '0.91', '0.00', '9.04', NULL, '2022-06-09 14:18:04', '2022-06-09 14:18:04'),
(4, 1, NULL, '0.27', '0.00', '9.31', NULL, '2022-06-09 15:00:52', '2022-06-09 15:00:52'),
(5, 3, '6.87', NULL, '0.00', '6.87', NULL, '2022-06-09 15:42:07', '2022-06-09 15:42:07');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `utype` enum('SUPADM','ADM','MAN','ACC','ASS','FLE','SALE','PUR','INV','EMP','PAR','RES') COLLATE utf8mb4_unicode_ci DEFAULT 'EMP',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `added_partners_table` enum('1','0','','') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `utype`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `added_partners_table`, `created_at`, `updated_at`) VALUES
(1, 'Margie Hill', 'supadmin@gmail.com', 'SUPADM', '2022-05-17 21:49:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, '1Jzv9laXjOlUMwspPlL7nc5Ad2E9lTbF6qGlVNxXCsJCzxi31bPshGaJU3Jx', NULL, NULL, '1', '2022-05-17 21:49:29', '2022-07-01 13:41:42'),
(2, 'Dr. Houston Beer DDS', 'admin@gmail.com', 'ADM', '2022-05-17 21:49:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'oeijV0el0riszMldwnDjiefBRYXJMi9STI5wSIx4mDzvvJJoMplwS1QS3kHc', NULL, NULL, '0', '2022-05-17 21:49:29', '2022-05-17 21:49:29'),
(3, 'Lonnie Bode', 'tessie25@example.net', 'MAN', '2022-05-17 21:49:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'Uvol36t2xp', NULL, NULL, '0', '2022-05-17 21:49:29', '2022-05-17 21:49:29'),
(4, 'Zoila Yundt', 'accountant@gmail.com', 'ACC', '2022-05-17 21:49:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'f2ELJgA8QOLefdNA8rH3BwcRPixiWQ49ZLTDbh3ytNPNFH4qAz7GqxSVaxWQ', NULL, NULL, '0', '2022-05-17 21:49:29', '2022-05-17 21:49:29'),
(5, 'Morton Cummerata', 'waters.whitney@example.net', 'ASS', '2022-05-17 21:49:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'ieACsztIjQ', NULL, NULL, '0', '2022-05-17 21:49:29', '2022-05-17 21:49:29'),
(6, 'MA Multan Franchise', 'fleet@gmail.com', 'FLE', '2022-05-17 21:49:29', '$2y$10$9KZsXFfN4J3rM5wWNFu3h.lA5DtG1Cz1uSE5DTJeaFqfKGUPFTJke', NULL, NULL, NULL, 'hRwazjtJITF4bdVIdWCc7GN7Yl0D4qALwuI9gdx45G9vSLbu6JnDhOciDf5a', NULL, NULL, '1', '2022-05-17 21:49:29', '2022-07-01 13:44:03'),
(7, 'Heath Wisoky PhD', 'oberbrunner.elaina@example.net', 'SALE', '2022-05-17 21:49:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'apRWT9juJy', NULL, NULL, '0', '2022-05-17 21:49:29', '2022-05-17 21:49:29'),
(8, 'Art Mitchell', 'rolfson.jennie@example.com', 'PUR', '2022-05-17 21:49:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'ZS48e0KaT8', NULL, NULL, '0', '2022-05-17 21:49:29', '2022-05-17 21:49:29'),
(9, 'Scotty Lakin', 'raymundo21@example.net', 'INV', '2022-05-17 21:49:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'z4xNHNVujH', NULL, NULL, '0', '2022-05-17 21:49:29', '2022-05-17 21:49:29'),
(21, 'Urban Bernier', 'partner@gmail.com', 'PAR', '2022-06-02 10:15:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'o2y25zPSpG', NULL, NULL, '1', '2022-06-02 10:15:27', '2022-06-02 10:15:27'),
(22, 'Paige Willms DVM', 'partner1@gmail.com', 'PAR', '2022-06-02 10:15:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'SbakaxnEgm', NULL, NULL, '1', '2022-06-02 10:15:27', '2022-06-02 10:15:27'),
(23, 'Davion Champlin', 'krystina45@example.net', 'RES', '2022-06-02 10:15:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'H8IVOaec5L', NULL, NULL, '1', '2022-06-02 10:15:27', '2022-07-15 13:37:24'),
(24, 'William Yost', 'resturant@gmail.com', 'RES', '2022-06-02 10:15:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, '6mH0eQBtz3qhkdjmeRIbWt56BPk32nmhMbscNyloBUnqhei3gwIxw26uWvON', NULL, NULL, '1', '2022-06-02 10:15:27', '2022-07-15 13:39:22'),
(25, 'Camryn King', 'tiffany.hane@example.net', 'RES', '2022-06-02 10:15:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, '5G9i0OGF3T', NULL, NULL, '1', '2022-06-02 10:15:27', '2022-07-15 13:39:27'),
(26, 'Oma Ankunding', 'mertz.tracy@example.org', 'FLE', '2022-06-02 10:15:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 't74gVD9SjZ', NULL, NULL, '1', '2022-06-02 10:15:27', '2022-07-16 17:45:28'),
(27, 'Tomasa Tillman', 'farrell.deonte@example.com', 'FLE', '2022-06-02 10:15:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'k7DK2R2MI3', NULL, NULL, '1', '2022-06-02 10:15:27', '2022-07-16 17:45:33'),
(28, 'Nya Stoltenberg', 'hartmann.randall@example.com', 'FLE', '2022-06-02 10:15:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'NiZWsjpErP', NULL, NULL, '1', '2022-06-02 10:15:27', '2022-07-16 17:45:36'),
(29, 'Myriam Barton V', 'sienna56@example.org', 'FLE', '2022-06-02 10:15:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'ZobugDgCkn', NULL, NULL, '1', '2022-06-02 10:15:27', '2022-07-16 17:45:37'),
(30, 'Prof. Woodrow Carter III', 'jadon61@example.net', 'FLE', '2022-06-02 10:15:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'LJ9NOpo1u6', NULL, NULL, '1', '2022-06-02 10:15:27', '2022-07-16 17:45:41'),
(31, 'Muhammad Aslam', 'muhaffan945@gmail.com', 'PAR', NULL, '$2y$10$zkC7c1FRX4OdneoPjT3P/uMXPCOBJkRGN20d51lgaE665KVJiCP9K', NULL, NULL, NULL, NULL, NULL, NULL, '1', '2022-06-06 11:47:27', '2022-06-09 04:56:09'),
(32, 'AslamUser', 'aslamsubeng123@gmail.com', 'FLE', NULL, '$2y$10$DbywxFdm3ohdU4FaimZI0euDoEsBO6nqrzo9gaL5YCDJvP6cdHxI.', NULL, NULL, NULL, NULL, NULL, NULL, '1', '2022-06-06 11:54:44', '2022-07-16 17:45:43'),
(33, 'Staff', 'staff@gmail.com', 'EMP', '2022-06-26 14:22:14', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, NULL, NULL, NULL, '0', '2022-06-26 14:22:14', NULL),
(34, 'Ashaan Enterprises', 'ashaan@gmail.com', 'PAR', NULL, '$2y$10$oeQOrARldm34fmwekObk7uoBvW1zoVABGvRGmRI5A6e10pkyq7ZCG', NULL, NULL, NULL, NULL, NULL, NULL, '1', '2022-07-02 05:13:29', '2022-07-02 05:44:19'),
(35, 'Multan Dhaba', 'multan@gmail.com', 'RES', NULL, '$2y$10$qW7tJ/82vNaQiY8m8mYeNur8iq3kPOFY/5rbgtlw28B4Yro09UH5u', NULL, NULL, NULL, NULL, NULL, NULL, '1', '2022-07-15 13:10:43', '2022-07-15 13:39:30'),
(36, 'Aslam Dhaba', 'multan123@gmail.com', 'RES', NULL, '$2y$10$dzo1lUrOAK7D2W1b/W.WlOFQDy7st0qCkkaAWi0zBhpGnSkNK2HLi', NULL, NULL, NULL, NULL, NULL, NULL, '1', '2022-07-15 13:12:15', '2022-07-15 13:39:43'),
(37, 'ihsanzia', 'ahsan@gmail.com', 'MAN', NULL, '$2y$10$GGsScJB8zTI8eL5p8xIdXeiBKbGCG6/D3TMIB9TuQJ1zpII4JM63u', NULL, NULL, NULL, NULL, NULL, NULL, '0', '2022-07-16 21:18:14', '2022-07-16 21:18:14'),
(38, 'Aleena', 'aleena@gmail.com', 'ASS', NULL, '$2y$10$lA0qQMv4H6fXrdc7ws0roO6rUOwqYO7k6gvhjnRmtQOEDtKBlpaHm', NULL, NULL, NULL, NULL, NULL, NULL, '0', '2022-07-16 21:20:15', '2022-07-16 21:20:15');

-- --------------------------------------------------------

--
-- Table structure for table `withdraws`
--

CREATE TABLE `withdraws` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `partner_id` bigint(20) UNSIGNED NOT NULL,
  `partner_payment_request_id` bigint(20) UNSIGNED NOT NULL,
  `payment` double DEFAULT NULL,
  `month` enum('jan','feb','mar','apr','may','jun','jul','aug','sep','oct','nov','dec') COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `withdraws`
--

INSERT INTO `withdraws` (`id`, `partner_id`, `partner_payment_request_id`, `payment`, `month`, `detail`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1000, 'may', '<b>Your profit has been issued</b>\n<br>\n<b>Department Issue</b><br>\n<b>Account</b>', '2022-06-20 11:25:05', '2022-06-20 11:25:05'),
(2, 3, 2, 500, 'may', '<b>Your profit has been issued</b>\n<br>\n<b>Department Issue</b><br>\n<b>Account</b>', '2022-06-20 11:28:16', '2022-06-20 11:28:16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `advances`
--
ALTER TABLE `advances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `advances_resturant_id_foreign` (`resturant_id`);

--
-- Indexes for table `bonuses`
--
ALTER TABLE `bonuses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bonuses_user_id_foreign` (`user_id`);

--
-- Indexes for table `business_worths`
--
ALTER TABLE `business_worths`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `expenses_user_id_foreign` (`user_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `fleets`
--
ALTER TABLE `fleets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fleets_user_id_foreign` (`user_id`);

--
-- Indexes for table `fleet_balances`
--
ALTER TABLE `fleet_balances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fleet_balances_fleet_id_foreign` (`fleet_id`);

--
-- Indexes for table `fleet_commissions`
--
ALTER TABLE `fleet_commissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fleet_commissions_fleet_id_foreign` (`fleet_id`);

--
-- Indexes for table `fleet_payment_requests`
--
ALTER TABLE `fleet_payment_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fleet_payment_requests_fleet_id_foreign` (`fleet_id`);

--
-- Indexes for table `f_profits`
--
ALTER TABLE `f_profits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `f_profits_fleet_id_foreign` (`fleet_id`),
  ADD KEY `f_profits_fleet_payment_request_id_foreign` (`fleet_payment_request_id`);

--
-- Indexes for table `grand_profits`
--
ALTER TABLE `grand_profits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `incomes`
--
ALTER TABLE `incomes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventories`
--
ALTER TABLE `inventories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `inventories_material_purchase_id_foreign` (`material_purchase_id`);

--
-- Indexes for table `inventory_demands`
--
ALTER TABLE `inventory_demands`
  ADD PRIMARY KEY (`id`),
  ADD KEY `inventory_demands_user_id_foreign` (`user_id`);

--
-- Indexes for table `investments`
--
ALTER TABLE `investments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `investments_partner_id_foreign` (`partner_id`);

--
-- Indexes for table `materials`
--
ALTER TABLE `materials`
  ADD PRIMARY KEY (`id`),
  ADD KEY `materials_material_purchase_id_foreign` (`material_purchase_id`);

--
-- Indexes for table `material_issues`
--
ALTER TABLE `material_issues`
  ADD PRIMARY KEY (`id`),
  ADD KEY `material_issues_user_id_foreign` (`user_id`);

--
-- Indexes for table `material_purchases`
--
ALTER TABLE `material_purchases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `material_purchases_inventory_demand_id_foreign` (`inventory_demand_id`);

--
-- Indexes for table `medical_leaves`
--
ALTER TABLE `medical_leaves`
  ADD PRIMARY KEY (`id`),
  ADD KEY `medical_leaves_user_id_foreign` (`user_id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `messages_user_id_foreign` (`user_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `monthly_pays`
--
ALTER TABLE `monthly_pays`
  ADD PRIMARY KEY (`id`),
  ADD KEY `monthly_pays_user_id_foreign` (`user_id`);

--
-- Indexes for table `partners`
--
ALTER TABLE `partners`
  ADD PRIMARY KEY (`id`),
  ADD KEY `partners_user_id_foreign` (`user_id`);

--
-- Indexes for table `partner_payment_requests`
--
ALTER TABLE `partner_payment_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `partner_payment_requests_partner_id_foreign` (`partner_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `pre_leaves`
--
ALTER TABLE `pre_leaves`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pre_leaves_user_id_foreign` (`user_id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profiles_user_id_foreign` (`user_id`);

--
-- Indexes for table `profits`
--
ALTER TABLE `profits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profits_partner_id_foreign` (`partner_id`);

--
-- Indexes for table `resturants`
--
ALTER TABLE `resturants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `resturants_user_id_foreign` (`user_id`);

--
-- Indexes for table `resturant_advance_requests`
--
ALTER TABLE `resturant_advance_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `resturant_advance_requests_resturant_id_foreign` (`resturant_id`);

--
-- Indexes for table `resturant_balances`
--
ALTER TABLE `resturant_balances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `resturant_balances_resturant_id_foreign` (`resturant_id`);

--
-- Indexes for table `resturant_commissions`
--
ALTER TABLE `resturant_commissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `resturant_commissions_resturant_id_foreign` (`resturant_id`);

--
-- Indexes for table `resturant_payment_requests`
--
ALTER TABLE `resturant_payment_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `resturant_table_id` (`resturant_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `r_profits`
--
ALTER TABLE `r_profits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `r_profits_resturant_id_foreign` (`resturant_id`);

--
-- Indexes for table `salaries`
--
ALTER TABLE `salaries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `salaries_user_id_foreign` (`user_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `shares`
--
ALTER TABLE `shares`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shares_partner_id_foreign` (`partner_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `withdraws`
--
ALTER TABLE `withdraws`
  ADD PRIMARY KEY (`id`),
  ADD KEY `withdraws_partner_id_foreign` (`partner_id`),
  ADD KEY `withdraws_partner_payment_request_id_foreign` (`partner_payment_request_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `advances`
--
ALTER TABLE `advances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bonuses`
--
ALTER TABLE `bonuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `business_worths`
--
ALTER TABLE `business_worths`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fleets`
--
ALTER TABLE `fleets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `fleet_balances`
--
ALTER TABLE `fleet_balances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `fleet_commissions`
--
ALTER TABLE `fleet_commissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `fleet_payment_requests`
--
ALTER TABLE `fleet_payment_requests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `f_profits`
--
ALTER TABLE `f_profits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `grand_profits`
--
ALTER TABLE `grand_profits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `incomes`
--
ALTER TABLE `incomes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `inventories`
--
ALTER TABLE `inventories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inventory_demands`
--
ALTER TABLE `inventory_demands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `investments`
--
ALTER TABLE `investments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `materials`
--
ALTER TABLE `materials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `material_issues`
--
ALTER TABLE `material_issues`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `material_purchases`
--
ALTER TABLE `material_purchases`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `medical_leaves`
--
ALTER TABLE `medical_leaves`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `monthly_pays`
--
ALTER TABLE `monthly_pays`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `partners`
--
ALTER TABLE `partners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `partner_payment_requests`
--
ALTER TABLE `partner_payment_requests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pre_leaves`
--
ALTER TABLE `pre_leaves`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `profits`
--
ALTER TABLE `profits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `resturants`
--
ALTER TABLE `resturants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `resturant_advance_requests`
--
ALTER TABLE `resturant_advance_requests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `resturant_balances`
--
ALTER TABLE `resturant_balances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `resturant_commissions`
--
ALTER TABLE `resturant_commissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `resturant_payment_requests`
--
ALTER TABLE `resturant_payment_requests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `r_profits`
--
ALTER TABLE `r_profits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `salaries`
--
ALTER TABLE `salaries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shares`
--
ALTER TABLE `shares`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `withdraws`
--
ALTER TABLE `withdraws`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `advances`
--
ALTER TABLE `advances`
  ADD CONSTRAINT `advances_resturant_id_foreign` FOREIGN KEY (`resturant_id`) REFERENCES `resturants` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bonuses`
--
ALTER TABLE `bonuses`
  ADD CONSTRAINT `bonuses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `expenses`
--
ALTER TABLE `expenses`
  ADD CONSTRAINT `expenses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `fleets`
--
ALTER TABLE `fleets`
  ADD CONSTRAINT `fleets_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `fleet_balances`
--
ALTER TABLE `fleet_balances`
  ADD CONSTRAINT `fleet_balances_fleet_id_foreign` FOREIGN KEY (`fleet_id`) REFERENCES `fleets` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `fleet_commissions`
--
ALTER TABLE `fleet_commissions`
  ADD CONSTRAINT `fleet_commissions_fleet_id_foreign` FOREIGN KEY (`fleet_id`) REFERENCES `fleets` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `fleet_payment_requests`
--
ALTER TABLE `fleet_payment_requests`
  ADD CONSTRAINT `fleet_payment_requests_fleet_id_foreign` FOREIGN KEY (`fleet_id`) REFERENCES `fleets` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `f_profits`
--
ALTER TABLE `f_profits`
  ADD CONSTRAINT `f_profits_fleet_id_foreign` FOREIGN KEY (`fleet_id`) REFERENCES `fleets` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `f_profits_fleet_payment_request_id_foreign` FOREIGN KEY (`fleet_payment_request_id`) REFERENCES `fleet_payment_requests` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `inventories`
--
ALTER TABLE `inventories`
  ADD CONSTRAINT `inventories_material_purchase_id_foreign` FOREIGN KEY (`material_purchase_id`) REFERENCES `material_purchases` (`id`);

--
-- Constraints for table `inventory_demands`
--
ALTER TABLE `inventory_demands`
  ADD CONSTRAINT `inventory_demands_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `investments`
--
ALTER TABLE `investments`
  ADD CONSTRAINT `investments_partner_id_foreign` FOREIGN KEY (`partner_id`) REFERENCES `partners` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `materials`
--
ALTER TABLE `materials`
  ADD CONSTRAINT `materials_material_purchase_id_foreign` FOREIGN KEY (`material_purchase_id`) REFERENCES `material_purchases` (`id`);

--
-- Constraints for table `material_issues`
--
ALTER TABLE `material_issues`
  ADD CONSTRAINT `material_issues_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `material_purchases`
--
ALTER TABLE `material_purchases`
  ADD CONSTRAINT `material_purchases_inventory_demand_id_foreign` FOREIGN KEY (`inventory_demand_id`) REFERENCES `inventory_demands` (`id`);

--
-- Constraints for table `medical_leaves`
--
ALTER TABLE `medical_leaves`
  ADD CONSTRAINT `medical_leaves_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `monthly_pays`
--
ALTER TABLE `monthly_pays`
  ADD CONSTRAINT `monthly_pays_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `partners`
--
ALTER TABLE `partners`
  ADD CONSTRAINT `partners_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `partner_payment_requests`
--
ALTER TABLE `partner_payment_requests`
  ADD CONSTRAINT `partner_payment_requests_partner_id_foreign` FOREIGN KEY (`partner_id`) REFERENCES `partners` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `pre_leaves`
--
ALTER TABLE `pre_leaves`
  ADD CONSTRAINT `pre_leaves_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `profiles`
--
ALTER TABLE `profiles`
  ADD CONSTRAINT `profiles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `profits`
--
ALTER TABLE `profits`
  ADD CONSTRAINT `profits_partner_id_foreign` FOREIGN KEY (`partner_id`) REFERENCES `partners` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `resturants`
--
ALTER TABLE `resturants`
  ADD CONSTRAINT `resturants_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `resturant_advance_requests`
--
ALTER TABLE `resturant_advance_requests`
  ADD CONSTRAINT `resturant_advance_requests_resturant_id_foreign` FOREIGN KEY (`resturant_id`) REFERENCES `resturants` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `resturant_balances`
--
ALTER TABLE `resturant_balances`
  ADD CONSTRAINT `resturant_balances_resturant_id_foreign` FOREIGN KEY (`resturant_id`) REFERENCES `resturants` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `resturant_commissions`
--
ALTER TABLE `resturant_commissions`
  ADD CONSTRAINT `resturant_commissions_resturant_id_foreign` FOREIGN KEY (`resturant_id`) REFERENCES `resturants` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `resturant_payment_requests`
--
ALTER TABLE `resturant_payment_requests`
  ADD CONSTRAINT `resturant_table_id` FOREIGN KEY (`resturant_id`) REFERENCES `resturants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `r_profits`
--
ALTER TABLE `r_profits`
  ADD CONSTRAINT `r_profits_resturant_id_foreign` FOREIGN KEY (`resturant_id`) REFERENCES `resturants` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `salaries`
--
ALTER TABLE `salaries`
  ADD CONSTRAINT `salaries_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `shares`
--
ALTER TABLE `shares`
  ADD CONSTRAINT `shares_partner_id_foreign` FOREIGN KEY (`partner_id`) REFERENCES `partners` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `withdraws`
--
ALTER TABLE `withdraws`
  ADD CONSTRAINT `withdraws_partner_id_foreign` FOREIGN KEY (`partner_id`) REFERENCES `partners` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `withdraws_partner_payment_request_id_foreign` FOREIGN KEY (`partner_payment_request_id`) REFERENCES `partner_payment_requests` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
