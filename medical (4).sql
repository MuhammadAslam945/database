-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 18, 2022 at 11:06 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `medical`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `checkup_fees` decimal(10,0) DEFAULT NULL,
  `subtotal` decimal(10,0) NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` enum('male','female','shemale','don''t know') COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date NOT NULL,
  `problem` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `document` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `line1` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `line2` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `province` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zipcode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `doctor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `meeting_status` enum('held','schedule','cancel','') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'schedule',
  `meeting_type` enum('online','physical','') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `appointment_datetime` datetime DEFAULT NULL,
  `tax` decimal(8,2) DEFAULT NULL,
  `canceled_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`id`, `checkup_fees`, `subtotal`, `firstname`, `lastname`, `gender`, `mobile`, `email`, `dob`, `problem`, `document`, `line1`, `line2`, `city`, `province`, `country`, `zipcode`, `user_id`, `doctor_id`, `meeting_status`, `meeting_type`, `created_at`, `updated_at`, `appointment_datetime`, `tax`, `canceled_date`) VALUES
(43, '1500', '1680', 'Muhammad', 'Fizan', 'male', '03106473564', 'muhaffan945@gmail.com', '2008-10-26', 'Cold Fever', ',16405054550.png,16405054551.png,16405054552.png,16405054553.png', 'Hussnain town street 4', 'Dr Kamran wali gali', 'Multan', 'Punjab', 'Pakistan', '6000', 9, 1, 'cancel', 'physical', '2021-12-26 02:57:35', '2022-01-13 05:51:00', NULL, '180.00', '2022-01-13'),
(64, '1500', '1680', 'Muhammad', 'Aslam', 'male', '03106473564', 'aslamsubeng123@gmail.com', '2020-08-26', 'flu', ',16405118390.png,16405118391.png,16405118392.png', 'Hussnain town street 4', 'Dr Kamran wali gali', 'Multan', 'Punjab', 'Pakistan', '6000', 9, 1, 'held', 'online', '2021-12-26 04:43:59', '2021-12-26 12:15:00', NULL, '180.00', NULL),
(65, '1500', '1680', 'Muhammad', 'Aslam', 'male', '03106473564', 'aslamsubeng123@gmail.com', '2020-08-26', 'flu', ',16405119520.png,16405119521.png,16405119522.png', 'Hussnain town street 4', 'Dr Kamran wali gali', 'Multan', 'Punjab', 'Pakistan', '6000', 9, 1, 'held', 'online', '2021-12-26 04:45:52', '2021-12-26 12:16:06', NULL, '180.00', NULL),
(67, '1500', '1680', 'Muhammad', 'Aslam', 'male', '03106473564', 'aslamsubeng123@gmail.com', '2019-03-28', 'Cold Fever', ',16405420210.jpg,16405420211.png', 'Hussnain town street 4', 'Dr Kamran wali gali', 'Multan', 'Punjab', 'Pakistan', '6000', 9, 1, 'held', 'online', '2021-12-26 13:07:01', '2022-01-21 10:16:04', '2021-12-31 14:00:00', '180.00', NULL),
(71, '1500', '1680', 'Muhammad', 'Aslam', 'male', '03106473564', 'aslamsubeng123@gmail.com', '2019-10-26', 'Cold Fever', NULL, 'Hussnain town street 4', 'Dr Kamran wali gali', 'Multan', 'Punjab', 'Pakistan', '6000', 9, 1, 'held', 'online', '2021-12-26 13:24:45', '2022-01-13 09:05:02', '2021-12-31 14:00:00', '180.00', NULL),
(72, '1500', '1680', 'Muhammad', 'Ashraf', 'male', '03106473564', 'aslamsubeng123@gmail.com', '2019-07-20', 'Cold Fever', ',16418307500.png,16418307501.png', 'nr GOVT GHSS piran ghaib road multan Hussnain town st 4 h 12', 'Sngpl Multan', 'Multan', 'Punjab', 'Pakistan', '60000', 9, 2, 'cancel', 'online', '2022-01-10 11:05:50', '2022-01-13 05:20:00', '2022-01-27 01:00:00', '180.00', '2022-01-13'),
(78, '2000', '2240', 'Muhammad', 'Aslam', 'male', '03106473564', 'aslamsubeng123@gmail.com', '2008-07-24', 'cold flue', ',16428707850.png', 'Hussnain town street 4', 'kjkhhhihkjkhjh', 'Multan', 'punjab', 'Pakistan', '6000', 9, 1, 'schedule', 'online', '2022-01-22 11:59:45', '2022-01-22 11:59:45', '2022-01-28 23:00:00', '240.00', NULL),
(79, '4000', '4480', 'Muhammad', 'Aslam', 'male', '03106473564', 'aslamsubeng123@gmail.com', '1994-07-26', 'cough', ',16432051920.png', 'Hussnain Town', 'Stree 4 House 12', 'Multan', 'Punjab', 'Pakistan', '59050', 9, NULL, 'schedule', 'online', '2022-01-26 08:53:12', '2022-01-26 08:53:12', '2022-01-31 09:10:00', '480.00', NULL),
(80, '2000', '2240', 'Muhammad', 'Aslam', 'male', '03106473564', 'aslamsubeng123@gmail.com', '1994-11-26', 'Cough', NULL, 'Hussnain Town', 'Stree 4 House 12', 'Multan', 'Punjab', 'Pakistan', '59050', 9, NULL, 'schedule', 'online', '2022-01-26 08:55:41', '2022-01-26 08:55:41', '2022-01-28 09:00:00', '240.00', NULL),
(81, '2000', '2240', 'Muhammad', 'Aslam', 'male', '03106473564', 'aslamsubeng123@gmail.com', '2022-01-07', 'Cough', NULL, 'Hussnain Town', 'Stree 4 House 12', 'Multan', 'Punjab', 'Pakistan', '59050', 9, NULL, 'schedule', 'online', '2022-01-26 08:57:38', '2022-01-26 08:57:38', '2022-01-28 08:00:00', '240.00', NULL),
(82, '2000', '2240', 'Muhammad', 'Aslam', 'male', '03106473564', 'aslamsubeng123@gmail.com', '2021-06-26', 'Cough', NULL, 'Hussnain Town', 'Stree 4 House 12', 'Multan', 'Punjab', 'Pakistan', '59050', 9, NULL, 'schedule', 'online', '2022-01-26 09:00:18', '2022-01-26 09:00:18', '2022-01-26 10:03:00', '240.00', NULL),
(83, '2000', '2240', 'Muhammad', 'Aslam', 'male', '03106473564', 'aslamsubeng123@gmail.com', '2021-02-27', 'fever', NULL, 'Hussnain Town', 'Stree 4 House 12', 'Multan', 'Punjab', 'Pakistan', '59050', 9, NULL, 'schedule', 'online', '2022-01-26 09:02:24', '2022-01-26 09:02:24', '2022-01-27 12:02:00', '240.00', NULL),
(84, '2000', '2240', 'Muhammad', 'Aslam', 'male', '03106473564', 'aslamsubeng123@gmail.com', '2021-07-26', 'Covid', NULL, 'Hussnain Town', 'Stree 4 House 12', 'Multan', 'Punjab', 'Pakistan', '59050', 9, NULL, 'schedule', 'online', '2022-01-26 09:04:34', '2022-01-26 09:04:34', '2022-01-28 01:04:00', '240.00', NULL),
(88, '1500', '1680', 'Muhammad', 'Aslam', 'male', '03106473564', 'aslamsubeng123@gmail.com', '2020-07-26', 'Cold', NULL, 'Hussnain Town', 'Stree 4 House 12', 'Multan', 'Punjab', 'Pakistan', '59050', 9, NULL, 'schedule', 'online', '2022-01-26 09:15:15', '2022-01-26 09:15:15', '2022-01-26 00:20:00', '180.00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `appointment_reviews`
--

CREATE TABLE `appointment_reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `rating` int(11) NOT NULL,
  `behaviour` int(11) NOT NULL,
  `waiting_time` int(11) NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `onlinemeeting_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `appointment_reviews`
--

INSERT INTO `appointment_reviews` (`id`, `rating`, `behaviour`, `waiting_time`, `comment`, `onlinemeeting_id`, `created_at`, `updated_at`) VALUES
(1, 5, 5, 5, 'Found very humble and listen very carefully ', 5, '2022-01-10 06:12:04', '2022-01-10 06:12:04'),
(3, 4, 4, 4, 'very Professional', 4, '2022-01-10 06:56:25', '2022-01-10 06:56:25'),
(4, 3, 5, 2, 'Average Behaviour', 2, '2022-01-10 10:52:38', '2022-01-10 10:52:38'),
(5, 5, 5, 5, 'Excellent Experience', 2, '2022-01-10 10:54:00', '2022-01-10 10:54:00'),
(6, 5, 5, 5, 'Excellent Experience', 2, '2022-01-10 10:54:28', '2022-01-10 10:54:28'),
(7, 5, 5, 5, 'Excellent Experience', 1, '2022-01-10 10:55:04', '2022-01-10 10:55:04'),
(9, 5, 5, 5, 'Due To Personal Reasons Meeting was canceled by us', 6, '2022-01-21 15:32:59', '2022-01-21 15:32:59');

-- --------------------------------------------------------

--
-- Table structure for table `blogggers`
--

CREATE TABLE `blogggers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blog_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `blog` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogggers`
--

INSERT INTO `blogggers` (`id`, `blog_id`, `image`, `title`, `subtitle`, `blog`, `created_at`, `updated_at`) VALUES
(15, 15, '4.jpg', 'laborum ducimus', 'laborum-ducimus', 'Suscipit eum quos ut vel. Dignissimos tempora quibusdam cupiditate hic vel error. Delectus sunt delectus et dolores omnis aliquam iure. Eveniet aspernatur quis consequuntur quis similique adipisci officiis quae. Quia aperiam praesentium maxime id nam. Odit ipsam nihil et consectetur. Consequatur dolorum eum officiis quo voluptas rerum. Maxime numquam tempora quo voluptas. Dicta occaecati est repellat molestias quaerat quasi est. Maiores vel atque unde eligendi. Molestiae dolores aperiam aperiam omnis eos. Dolores ut velit veritatis deleniti sint maiores. Voluptatem magni iure soluta autem ut cupiditate. Labore inventore natus quo animi quasi non. Id deserunt maiores et fugiat quo. Est qui rem voluptatem voluptas et. Dicta consequatur quas repellat ducimus explicabo sed. Praesentium laboriosam dolores vel consequuntur consectetur assumenda. Cum sed dolor repellendus dolor. Perspiciatis hic aut harum enim. Dignissimos id repudiandae quod aut commodi esse quae.', '2022-02-03 13:55:59', '2022-02-03 13:55:59'),
(16, 15, '5.jpg', 'nostrum qui', 'nostrum-qui', 'Doloremque magni quasi et voluptates sed omnis hic. Non tempora fugiat dignissimos eos quaerat tempora. Earum qui quas excepturi nulla quia pariatur. Voluptas ea repudiandae suscipit voluptates ut quia. Labore aut facere qui provident et qui vel. Assumenda excepturi minus quibusdam impedit. Vitae porro consequatur velit quidem illum. Consequuntur et ea est enim quod officia illo suscipit. Odit labore aliquam nam. Et et nobis libero omnis aspernatur sed quia. Sint assumenda laborum vero sint nihil ratione quisquam. Quia esse magni quidem molestiae deserunt perferendis consequatur. Perspiciatis vitae quae distinctio ut est repudiandae. Dolor quaerat est veritatis rem soluta. Quibusdam provident tempore et occaecati sunt.', '2022-02-03 13:55:59', '2022-02-03 13:55:59'),
(17, 15, '2.jpg', 'ducimus adipisci', 'ducimus-adipisci', 'Animi consequatur esse repellat voluptas. Nemo temporibus rerum exercitationem magni consequatur qui ipsam dolore. In autem vero impedit veritatis dolores et. Adipisci modi ex libero dolor. Dolor id voluptate perferendis sit. Nemo necessitatibus repudiandae qui temporibus eum. Beatae reprehenderit asperiores ex vero. Natus nemo aut nostrum sed. Id quod rerum quod nobis hic expedita. Vel corrupti aliquam possimus quia deleniti sequi. Tempore odit enim odit voluptatem. Est deleniti ducimus autem voluptatem. Eum sapiente et et. Quidem id rerum provident libero. Perspiciatis veniam autem tenetur optio ut laborum. Explicabo atque animi nobis deleniti minima reiciendis assumenda. Minima et assumenda vero a explicabo et. Autem velit unde ipsam quidem odio soluta. Eos tempora nisi qui. At temporibus est nesciunt. Nam amet et in vel sit ut ab. Alias ea vitae ut non a. Doloribus et quasi impedit cumque temporibus. Amet perspiciatis doloremque est minus doloremque ipsum nihil esse.', '2022-02-03 13:55:59', '2022-02-03 13:55:59'),
(18, 15, '3.jpg', 'ut placeat', 'ut-placeat', 'Reprehenderit odio et a qui accusamus doloremque. Non dolorem explicabo numquam eligendi. Tempore explicabo sed sequi sed quo voluptatem. Mollitia qui qui voluptatem expedita accusamus impedit eos. Rem similique repudiandae minus nemo. Aut recusandae eligendi maxime alias. Ut distinctio voluptatum ut et. Consectetur voluptates aliquam voluptatem qui reprehenderit enim voluptate minima. Debitis quasi consequatur dignissimos et non. Id ipsam qui asperiores mollitia ut esse. Velit delectus eaque magni. Blanditiis adipisci placeat quas commodi quis voluptatem. Dignissimos dolor deleniti doloremque assumenda. Accusamus hic earum labore. Quia autem rerum cum. Velit voluptatem qui eos ipsa. Sit quo ut inventore expedita recusandae culpa. Non nisi tempora aut voluptas voluptatem dolorum. Vel mollitia modi enim recusandae. Suscipit minus reiciendis voluptates nam commodi molestiae vitae vel. Ducimus aliquam soluta harum vel. Modi cupiditate vel voluptatem enim culpa placeat qui.', '2022-02-03 13:55:59', '2022-02-03 13:55:59'),
(19, 15, '1.jpg', 'et libero', 'et-libero', 'Deserunt porro nihil nihil. Assumenda voluptatum quae voluptatem sint neque. Exercitationem est sint perferendis aspernatur repudiandae et. Magnam voluptatibus eos aliquid corrupti. Animi accusantium architecto ut qui expedita reiciendis quasi aut. Dolorem qui veniam eligendi sed qui est. Dolores suscipit qui optio in. Nostrum sed dolorem quia architecto odit sit maxime consequatur. Dolores voluptatibus iusto aut commodi deleniti doloribus aut non. Repellendus fuga nostrum reiciendis cupiditate consequatur iusto recusandae. Porro sit architecto dolores sit voluptate et. Cumque non ex vel et molestiae. Aut quaerat harum nemo veritatis. Non consequuntur impedit aperiam totam non illo. Dolorem est eum harum dolorum non vero. Animi tempore omnis neque qui autem est eum. Est beatae consequatur voluptas consequatur eligendi. Et quidem at mollitia repellat ut facere earum. Placeat ut optio placeat officiis.', '2022-02-03 13:55:59', '2022-02-03 13:55:59');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `user_id`, `image`, `line1`, `line2`, `city`, `province`, `country`, `zipcode`, `created_at`, `updated_at`) VALUES
(1, 15, '1642522928.jpg', 'Hussnain town street 4, Dr Kamran wali gali', 'Sngpl Multan', 'Multan', 'Punjab', 'Pakistan', '60000', '2022-01-18 11:07:15', '2022-01-18 11:22:08');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'sed sed', 'sed-sed', '2021-12-12 21:47:33', '2021-12-12 21:47:33'),
(2, 'vel quia', 'vel-quia', '2021-12-12 21:47:33', '2021-12-12 21:47:33'),
(3, 'et at', 'et-at', '2021-12-12 21:47:34', '2021-12-12 21:47:34'),
(4, 'maxime optio', 'maxime-optio', '2021-12-12 21:47:34', '2021-12-12 21:47:34'),
(5, 'HEALTHCARE SUPPLIMENT', 'healthcare-suppliment', '2021-12-12 21:47:34', '2021-12-19 11:40:14'),
(6, 'Fever', 'fever', '2021-12-12 21:47:34', '2021-12-19 12:19:59'),
(8, 'sequi dolorem', 'sequi-dolorem', '2022-01-05 04:14:52', '2022-01-05 04:14:52'),
(9, 'autem blanditiis', 'autem-blanditiis', '2022-01-05 04:14:52', '2022-01-05 04:14:52'),
(10, 'distinctio nostrum', 'distinctio-nostrum', '2022-01-05 04:14:52', '2022-01-05 04:14:52'),
(11, 'quod ut', 'quod-ut', '2022-01-05 04:14:52', '2022-01-05 04:14:52'),
(12, 'consequatur laudantium', 'consequatur-laudantium', '2022-01-05 04:14:52', '2022-01-05 04:14:52'),
(13, 'velit quasi', 'velit-quasi', '2022-01-05 04:14:52', '2022-01-05 04:14:52');

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

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `phone`, `comment`, `created_at`, `updated_at`) VALUES
(1, 'Muhammad Aslam', 'user@gmail.com', '03106473564', 'Hi Asslam O Alikum', '2021-12-17 02:05:09', '2021-12-17 02:05:09'),
(2, 'Muhammad Aslam', 'aslamsubeng123@gmail.com', '03106473564', 'Hi,\nAslam O Alikum', '2022-01-19 15:26:09', '2022-01-19 15:26:09');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('fixed','percent') COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` decimal(8,2) NOT NULL,
  `cart_value` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expirey_date` date NOT NULL DEFAULT curdate()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `code`, `type`, `value`, `cart_value`, `created_at`, `updated_at`, `expirey_date`) VALUES
(1, 'OFF10', 'fixed', '100.00', '1000.00', '2021-12-13 00:49:01', '2021-12-13 00:55:59', '2022-12-15');

-- --------------------------------------------------------

--
-- Table structure for table `deliveries`
--

CREATE TABLE `deliveries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `deliveryboy_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `orderitem_id` bigint(20) UNSIGNED NOT NULL,
  `shipping_id` bigint(20) UNSIGNED NOT NULL,
  `status` enum('ordered','process','dispatch','deliverd') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'process',
  `supplier_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `delivery_boys`
--

CREATE TABLE `delivery_boys` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
-- Dumping data for table `delivery_boys`
--

INSERT INTO `delivery_boys` (`id`, `user_id`, `image`, `line1`, `line2`, `city`, `province`, `country`, `zipcode`, `created_at`, `updated_at`) VALUES
(1, 12, '1640951530.png', NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-31 06:33:46', '2021-12-31 06:52:10');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `degree` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `license_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_self` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `experience` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hospital_id` bigint(20) UNSIGNED DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `checkup_fees` decimal(8,2) DEFAULT NULL,
  `discount` decimal(8,2) DEFAULT NULL,
  `degree_certificate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `other_sertificate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_approval` enum('1','0') COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `profileImage` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `specialist` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `user_id`, `firstname`, `slug`, `degree`, `license_no`, `about_self`, `experience`, `hospital_id`, `city`, `state`, `country`, `checkup_fees`, `discount`, `degree_certificate`, `other_sertificate`, `admin_approval`, `profileImage`, `specialist`, `created_at`, `updated_at`) VALUES
(1, 5, 'Assist. Prof. Dr. Asher Ahmad Khan', 'assist-prof-dr-asher-ahmad-khan', '<ul id=\"acc_education\" class=\"list-style-type-blue list-unstyled pt-3 pt-md-0 text-muted mb-md-3 mb-lg-0 mx-0 row font-size-14-13_6\" style=\"box-sizing: border-box; padding-left: 0px; list-style: none; display: flex; flex-wrap: wrap; font-size: 14px; font-family: \'Open Sans\', Arial, sans-serif; background-color: #ffffff; color: var(--muted-color-4)  !important; padding-top: 0px !important; margin: 0px -7.5px 0px !important -7.5px;\">\n<li class=\"mb-2 pl-3 col-6\" style=\"box-sizing: border-box; padding-right: 7.5px; padding-left: 7.5px; position: relative; width: 330.75px; flex: 0 0 50%; max-width: 50%; margin-bottom: 0.5rem !important; color: var(--dark-color);\"><span style=\"box-sizing: border-box;\">M.B.B.S.</span>&nbsp;- Nishtar Medical University, Pakistan, 1995</li>\n<li class=\"mb-2 pl-3 col-6\" style=\"box-sizing: border-box; padding-right: 7.5px; padding-left: 7.5px; position: relative; width: 330.75px; flex: 0 0 50%; max-width: 50%; margin-bottom: 0.5rem !important; color: var(--dark-color);\">&nbsp;</li>\n<li class=\"mb-2 pl-3 col-6\" style=\"box-sizing: border-box; padding-right: 7.5px; padding-left: 7.5px; position: relative; width: 330.75px; flex: 0 0 50%; max-width: 50%; margin-bottom: 0.5rem !important; color: var(--dark-color);\"><span style=\"box-sizing: border-box;\">F.C.P.S.</span> - College of Physicians &amp; Surgeons Pakistan (CPSP), Pakistan,2002</li>\n</ul>\n<ul id=\"acc_education\" class=\"list-style-type-blue list-unstyled pt-3 pt-md-0 text-muted mb-md-3 mb-lg-0 mx-0 row font-size-14-13_6\" style=\"box-sizing: border-box; padding-left: 0px; list-style: none; display: flex; flex-wrap: wrap; font-size: 14px; font-family: \'Open Sans\', Arial, sans-serif; background-color: #ffffff; color: var(--muted-color-4)  !important; padding-top: 0px !important; margin: 0px -7.5px 0px !important -7.5px;\">\n<li class=\"mb-2 pl-3 col-6\" style=\"box-sizing: border-box; padding-right: 7.5px; padding-left: 7.5px; position: relative; width: 330.75px; flex: 0 0 50%; max-width: 50%; margin-bottom: 0.5rem !important; color: var(--dark-color);\"><span style=\"box-sizing: border-box;\">M.R.C.S</span>&nbsp;- Royal College of surgeon of Edinburgh , United Kingdom, 2006</li>\n</ul>', 'MBBS0010', '<p class=\"mb-lg-0 dark-color\" style=\"box-sizing: border-box; margin-top: 0px; color: #232426; font-family: \'Open Sans\', Arial, sans-serif; font-size: 16px; background-color: #ffffff; margin-bottom: 0px !important;\">Assist. Prof. Dr. Asher Ahmad Khan is one of the best General Surgeon in Multan. Not only does He have a number of certifications including M.B.B.S., F.C.P.S. and M.R.C.S but He also has 24 years of experience in his field. He is also a well trained Laparoscopic Surgeon. Patients in line to meet Assist. Prof. Dr. Asher Ahmad Khan normally do not have to wait more than Under 15 Min for their consultation. These patients were particularly impressed by the doctor checkup, staff behaviour and clinic environment.</p>\n<h2 style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; line-height: 1.2; font-size: 16px; color: #232426; font-family: \'Open Sans\', Arial, sans-serif; background-color: #ffffff;\">Fees</h2>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: var(--muted-color-2); font-family: \'Open Sans\', Arial, sans-serif; font-size: 16px; background-color: #ffffff;\">Assist. Prof. Dr. Asher Ahmad Khan normally charges a consultation fee that lies somewhere between Rs 1,200 and 1,500</p>', '<ul id=\"acc_experience\" class=\"list-style-type-blue list-unstyled text-muted pt-3 pt-md-0 pl-3 mb-md-3 mb-lg-0 font-size-14-13_6\" style=\"box-sizing: border-box; margin-top: 0px; list-style: none; font-size: 14px; font-family: \'Open Sans\', Arial, sans-serif; background-color: #ffffff; margin-bottom: 0px !important; color: var(--muted-color-4)  !important; padding-left: 1rem !important; padding-top: 0px !important;\">\n<li class=\"mb-2\" style=\"box-sizing: border-box; margin-bottom: 0.5rem !important; color: var(--dark-color);\">2017 - Present, Assist. Prof. Dr, Nishtar Medical College</li>\n</ul>', 17, 'Multan', 'Punjab', 'Pakistan', '2000.00', '200.00', ',16402941110.jpg', ',16393276550.jpg', '1', '1640294111.jpg', '1,2,5,8,12', '2021-12-23 04:55:18', '2022-01-10 09:34:25'),
(2, 6, 'Dr Arslan Ahmed Associate Professor', 'Dr. Arslan Akbar Saeed', '<ul id=\"acc_education\" class=\"list-style-type-blue list-unstyled pt-3 pt-md-0 text-muted mb-md-3 mb-lg-0 mx-0 row font-size-14-13_6\" style=\"box-sizing: border-box; padding-left: 0px; list-style: none; display: flex; flex-wrap: wrap; font-size: 14px; font-family: \'Open Sans\', Arial, sans-serif; background-color: #ffffff; color: #6c757d !important; padding-top: 0px !important; margin: 0px -7.5px 1rem !important -7.5px;\">\n<li class=\"mb-2 pl-3 col-6\" style=\"box-sizing: border-box; padding-right: 7.5px; padding-left: 7.5px; position: relative; width: 338.75px; flex: 0 0 50%; max-width: 50%; margin-bottom: 0.5rem !important; color: var(--dark-color);\"><span style=\"box-sizing: border-box;\">M.B.B.S</span>&nbsp;- University of Health Sciences, 2007</li>\n<li class=\"mb-2 pl-3 col-6\" style=\"box-sizing: border-box; padding-right: 7.5px; padding-left: 7.5px; position: relative; width: 338.75px; flex: 0 0 50%; max-width: 50%; margin-bottom: 0.5rem !important; color: var(--dark-color);\">&nbsp;</li>\n<li class=\"mb-2 pl-3 col-6\" style=\"box-sizing: border-box; padding-right: 7.5px; padding-left: 7.5px; position: relative; width: 338.75px; flex: 0 0 50%; max-width: 50%; margin-bottom: 0.5rem !important; color: var(--dark-color);\"><span style=\"box-sizing: border-box;\">F.C.P.S. (Nephrology)</span> - College of Physicians and Surgeons Pakistan,2019</li>\n<li class=\"mb-2 pl-3 col-6\" style=\"box-sizing: border-box; padding-right: 7.5px; padding-left: 7.5px; position: relative; width: 338.75px; flex: 0 0 50%; max-width: 50%; margin-bottom: 0.5rem !important; color: var(--dark-color);\">&nbsp;</li>\n<li class=\"mb-2 pl-3 col-6\" style=\"box-sizing: border-box; padding-right: 7.5px; padding-left: 7.5px; position: relative; width: 338.75px; flex: 0 0 50%; max-width: 50%; margin-bottom: 0.5rem !important; color: var(--dark-color);\">&nbsp;</li>\n<li class=\"mb-2 pl-3 col-6\" style=\"box-sizing: border-box; padding-right: 7.5px; padding-left: 7.5px; position: relative; width: 338.75px; flex: 0 0 50%; max-width: 50%; margin-bottom: 0.5rem !important; color: var(--dark-color);\">&nbsp;</li>\n<li class=\"mb-2 pl-3 col-6\" style=\"box-sizing: border-box; padding-right: 7.5px; padding-left: 7.5px; position: relative; width: 338.75px; flex: 0 0 50%; max-width: 50%; margin-bottom: 0.5rem !important; color: var(--dark-color);\"><span style=\"box-sizing: border-box;\">M.P.H</span>&nbsp;- Australian Medical University, 2010</li>\n<li class=\"mb-2 pl-3 col-6\" style=\"box-sizing: border-box; padding-right: 7.5px; padding-left: 7.5px; position: relative; width: 338.75px; flex: 0 0 50%; max-width: 50%; margin-bottom: 0.5rem !important; color: var(--dark-color);\">&nbsp;</li>\n<li class=\"mb-2 pl-3 col-6\" style=\"box-sizing: border-box; padding-right: 7.5px; padding-left: 7.5px; position: relative; width: 338.75px; flex: 0 0 50%; max-width: 50%; margin-bottom: 0.5rem !important; color: var(--dark-color);\"><span style=\"box-sizing: border-box;\">M.C.H.D</span>&nbsp;- University of Canberra, 2011</li>\n</ul>', 'MBBS10002', '<p class=\"mb-lg-0 dark-color\" style=\"box-sizing: border-box; margin-top: 0px; color: #232426; font-family: \'Open Sans\', Arial, sans-serif; font-size: 16px; background-color: #ffffff; margin-bottom: 0px !important;\">Dr. Arslan Akbar Saeed is a highly qualified Nephrologist with a number of certifications including M.B.B.S, F.C.P.S. (Nephrology), M.P.H and M.C.H.D as well as 10 years of experience in his field Dr. Arslan Akbar Saeed offers a number of different services and treatments such as Kidney Biopsy, Nephritic Syndrome, Renal Failure, Renal Failure and Renal Stone. He is also very efficient so his patients rarely have to wait Under 15 Min for a consultation. These patients were particularly impressed by the doctor checkup, staff behaviour and clinic environment.</p>\n<h2 style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; line-height: 1.2; font-size: 16px; color: #232426; font-family: \'Open Sans\', Arial, sans-serif; background-color: #ffffff;\">Fees</h2>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: var(--muted-color-2); font-family: \'Open Sans\', Arial, sans-serif; font-size: 16px; background-color: #ffffff;\">Dr. Arslan Akbar Saeed&rsquo;s consultation fee is normally Rs 1,500 although this is subject to change based on various health packages and offers.</p>\n<h2 style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; line-height: 1.2; font-size: 16px; color: #232426; font-family: \'Open Sans\', Arial, sans-serif; background-color: #ffffff;\">Appointment Details</h2>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: var(--muted-color-2); font-family: \'Open Sans\', Arial, sans-serif; font-size: 16px; background-color: #ffffff;\">You can book an appointment with Dr. Arslan Akbar Saeed by using the \'book appointment\' button</p>', '<ul id=\"acc_experience\" class=\"list-style-type-blue list-unstyled text-muted pt-3 pt-md-0 pl-3 mb-md-3 mb-lg-0 font-size-14-13_6\" style=\"box-sizing: border-box; margin-top: 0px; list-style: none; font-size: 14px; font-family: \'Open Sans\', Arial, sans-serif; background-color: #ffffff; margin-bottom: 1rem !important; color: #6c757d !important; padding-left: 1rem !important; padding-top: 0px !important;\">\n<li class=\"mb-2\" style=\"box-sizing: border-box; margin-bottom: 0.5rem !important; color: var(--dark-color);\">2019 - Present, Consultant Nephrologist, Nishtar Hospital, Multan</li>\n</ul>', 1, 'Multan', 'Punjab', 'Pakistan', '1500.00', '0.00', ',16406327900.jpg', ',16406327900.jpg', '1', '1640632790.jpg', '2,4,6,8,10', '2021-12-26 13:36:48', '2021-12-28 05:23:24');

-- --------------------------------------------------------

--
-- Table structure for table `doctor_specialists`
--

CREATE TABLE `doctor_specialists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `doctor_specialists`
--

INSERT INTO `doctor_specialists` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'ratione sint', 'ratione-sint', '2022-01-10 09:12:15', '2022-01-10 09:12:15'),
(2, 'facilis commodi', 'facilis-commodi', '2022-01-10 09:12:15', '2022-01-10 09:12:15'),
(3, 'earum assumenda', 'earum-assumenda', '2022-01-10 09:12:15', '2022-01-10 09:12:15'),
(4, 'molestiae et', 'molestiae-et', '2022-01-10 09:12:15', '2022-01-10 09:12:15'),
(5, 'est at', 'est-at', '2022-01-10 09:12:15', '2022-01-10 09:12:15'),
(6, 'mollitia error', 'mollitia-error', '2022-01-10 09:12:15', '2022-01-10 09:12:15'),
(7, 'reiciendis pariatur', 'reiciendis-pariatur', '2022-01-10 09:12:15', '2022-01-10 09:12:15'),
(8, 'repellat quia', 'repellat-quia', '2022-01-10 09:12:15', '2022-01-10 09:12:15'),
(9, 'et quia', 'et-quia', '2022-01-10 09:12:15', '2022-01-10 09:12:15'),
(10, 'tempore eos', 'tempore-eos', '2022-01-10 09:12:15', '2022-01-10 09:12:15'),
(11, 'minus nulla', 'minus-nulla', '2022-01-10 09:12:15', '2022-01-10 09:12:15'),
(12, 'quis quo', 'quis-quo', '2022-01-10 09:12:15', '2022-01-10 09:12:15'),
(13, 'aliquid et', 'aliquid-et', '2022-01-10 09:12:15', '2022-01-10 09:12:15'),
(14, 'et explicabo', 'et-explicabo', '2022-01-10 09:12:15', '2022-01-10 09:12:15'),
(15, 'quisquam consequatur', 'quisquam-consequatur', '2022-01-10 09:12:15', '2022-01-10 09:12:15'),
(16, 'dicta voluptatem', 'dicta-voluptatem', '2022-01-10 09:12:15', '2022-01-10 09:12:15'),
(17, 'aperiam debitis', 'aperiam-debitis', '2022-01-10 09:12:15', '2022-01-10 09:12:15'),
(18, 'ut ullam', 'ut-ullam', '2022-01-10 09:12:15', '2022-01-10 09:12:15'),
(19, 'magni dolore', 'magni-dolore', '2022-01-10 09:12:15', '2022-01-10 09:12:15'),
(20, 'sed molestiae', 'sed-molestiae', '2022-01-10 09:12:15', '2022-01-10 09:12:15');

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

--
-- Dumping data for table `home_categories`
--

INSERT INTO `home_categories` (`id`, `sel_categories`, `no_of_products`, `created_at`, `updated_at`) VALUES
(1, '1,2,3,4', 5, '2021-12-13 12:36:58', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `home_sliders`
--

CREATE TABLE `home_sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_sliders`
--

INSERT INTO `home_sliders` (`id`, `title`, `subtitle`, `price`, `link`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Get Amazing 50% off', 'Get 50% discount on N95 Mask', '249', 'http://127.0.0.1:8000/shop', '1639402624.jpg', 1, '2021-12-12 23:37:04', '2021-12-12 23:37:04');

-- --------------------------------------------------------

--
-- Table structure for table `hospitals`
--

CREATE TABLE `hospitals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `hospital` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hospitals`
--

INSERT INTO `hospitals` (`id`, `hospital`, `slug`, `city`, `country`, `created_at`, `updated_at`) VALUES
(1, 'sed veritatis', 'sed-veritatis', 'nobis voluptates', 'Pakistan', '2022-01-10 07:29:49', '2022-01-10 07:29:49'),
(2, 'quia consequatur', 'quia-consequatur', 'dolores expedita', 'Pakistan', '2022-01-10 07:29:49', '2022-01-10 07:29:49'),
(3, 'labore minus', 'labore-minus', 'iure libero', 'Pakistan', '2022-01-10 07:29:49', '2022-01-10 07:29:49'),
(4, 'hic modi', 'hic-modi', 'quia quibusdam', 'Pakistan', '2022-01-10 07:29:49', '2022-01-10 07:29:49'),
(5, 'ut id', 'ut-id', 'repellat voluptates', 'Pakistan', '2022-01-10 07:29:49', '2022-01-10 07:29:49'),
(6, 'aut repellat', 'aut-repellat', 'cum perferendis', 'Pakistan', '2022-01-10 07:29:49', '2022-01-10 07:29:49'),
(7, 'sunt voluptatem', 'sunt-voluptatem', 'et et', 'Pakistan', '2022-01-10 07:29:49', '2022-01-10 07:29:49'),
(8, 'laboriosam rerum', 'laboriosam-rerum', 'voluptate aut', 'Pakistan', '2022-01-10 07:29:49', '2022-01-10 07:29:49'),
(9, 'sunt accusamus', 'sunt-accusamus', 'dolore cum', 'Pakistan', '2022-01-10 07:29:49', '2022-01-10 07:29:49'),
(10, 'et perferendis', 'et-perferendis', 'facilis praesentium', 'Pakistan', '2022-01-10 07:29:49', '2022-01-10 07:29:49'),
(11, 'et pariatur', 'et-pariatur', 'exercitationem est', 'Pakistan', '2022-01-10 07:29:49', '2022-01-10 07:29:49'),
(12, 'explicabo quasi', 'explicabo-quasi', 'iure dolore', 'Pakistan', '2022-01-10 07:29:49', '2022-01-10 07:29:49'),
(13, 'officia veniam', 'officia-veniam', 'aut ullam', 'Pakistan', '2022-01-10 07:29:49', '2022-01-10 07:29:49'),
(14, 'accusantium quia', 'accusantium-quia', 'ab est', 'Pakistan', '2022-01-10 07:29:50', '2022-01-10 07:29:50'),
(15, 'fugit eum', 'fugit-eum', 'autem officia', 'Pakistan', '2022-01-10 07:29:50', '2022-01-10 07:29:50'),
(16, 'eos veniam', 'eos-veniam', 'est atque', 'Pakistan', '2022-01-10 07:29:50', '2022-01-10 07:29:50'),
(17, 'consequatur delectus', 'consequatur-delectus', 'eaque cupiditate', 'Pakistan', '2022-01-10 07:29:50', '2022-01-10 07:29:50'),
(18, 'eligendi ut', 'eligendi-ut', 'adipisci est', 'Pakistan', '2022-01-10 07:29:50', '2022-01-10 07:29:50'),
(19, 'consequatur vitae', 'consequatur-vitae', 'odio libero', 'Pakistan', '2022-01-10 07:29:50', '2022-01-10 07:29:50'),
(20, 'aut voluptate', 'aut-voluptate', 'iure nisi', 'Pakistan', '2022-01-10 07:29:50', '2022-01-10 07:29:50'),
(21, 'voluptatibus ullam', 'voluptatibus-ullam', 'iusto enim', 'Pakistan', '2022-01-10 07:29:50', '2022-01-10 07:29:50'),
(22, 'eligendi facere', 'eligendi-facere', 'nihil non', 'Pakistan', '2022-01-10 07:29:50', '2022-01-10 07:29:50'),
(23, 'fugiat quod', 'fugiat-quod', 'ipsum est', 'Pakistan', '2022-01-10 07:29:50', '2022-01-10 07:29:50'),
(24, 'ut nisi', 'ut-nisi', 'a dicta', 'Pakistan', '2022-01-10 07:29:50', '2022-01-10 07:29:50'),
(25, 'voluptas accusamus', 'voluptas-accusamus', 'accusamus in', 'Pakistan', '2022-01-10 07:29:50', '2022-01-10 07:29:50'),
(26, 'corporis sit', 'corporis-sit', 'aperiam error', 'Pakistan', '2022-01-10 07:29:50', '2022-01-10 07:29:50'),
(27, 'maiores temporibus', 'maiores-temporibus', 'laudantium eveniet', 'Pakistan', '2022-01-10 07:29:50', '2022-01-10 07:29:50'),
(28, 'quis quis', 'quis-quis', 'qui dolorem', 'Pakistan', '2022-01-10 07:29:50', '2022-01-10 07:29:50'),
(29, 'corporis debitis', 'corporis-debitis', 'ut aspernatur', 'Pakistan', '2022-01-10 07:29:50', '2022-01-10 07:29:50'),
(30, 'laborum aliquid', 'laborum-aliquid', 'eum voluptatem', 'Pakistan', '2022-01-10 07:29:50', '2022-01-10 07:29:50'),
(31, 'voluptatibus sed', 'voluptatibus-sed', 'explicabo vitae', 'Pakistan', '2022-01-10 07:29:50', '2022-01-10 07:29:50'),
(32, 'repellat sed', 'repellat-sed', 'non nihil', 'Pakistan', '2022-01-10 07:29:50', '2022-01-10 07:29:50'),
(33, 'sapiente repellat', 'sapiente-repellat', 'ullam non', 'Pakistan', '2022-01-10 07:29:50', '2022-01-10 07:29:50'),
(34, 'neque ullam', 'neque-ullam', 'quas magnam', 'Pakistan', '2022-01-10 07:29:50', '2022-01-10 07:29:50'),
(35, 'est quia', 'est-quia', 'vel voluptates', 'Pakistan', '2022-01-10 07:29:50', '2022-01-10 07:29:50'),
(36, 'dolor occaecati', 'dolor-occaecati', 'dolore nisi', 'Pakistan', '2022-01-10 07:29:50', '2022-01-10 07:29:50'),
(37, 'ipsa officiis', 'ipsa-officiis', 'quam modi', 'Pakistan', '2022-01-10 07:29:50', '2022-01-10 07:29:50'),
(38, 'quo rerum', 'quo-rerum', 'libero mollitia', 'Pakistan', '2022-01-10 07:29:50', '2022-01-10 07:29:50'),
(39, 'sed quas', 'sed-quas', 'aut laboriosam', 'Pakistan', '2022-01-10 07:29:50', '2022-01-10 07:29:50'),
(40, 'repellat dolorem', 'repellat-dolorem', 'aliquid repudiandae', 'Pakistan', '2022-01-10 07:29:50', '2022-01-10 07:29:50'),
(41, 'optio dolores', 'optio-dolores', 'hic enim', 'Pakistan', '2022-01-10 07:29:50', '2022-01-10 07:29:50'),
(42, 'veritatis voluptates', 'veritatis-voluptates', 'temporibus aperiam', 'Pakistan', '2022-01-10 07:29:50', '2022-01-10 07:29:50'),
(43, 'nam iusto', 'nam-iusto', 'aliquid dignissimos', 'Pakistan', '2022-01-10 07:29:50', '2022-01-10 07:29:50'),
(44, 'aut eligendi', 'aut-eligendi', 'modi in', 'Pakistan', '2022-01-10 07:29:50', '2022-01-10 07:29:50'),
(45, 'quaerat possimus', 'quaerat-possimus', 'autem voluptatem', 'Pakistan', '2022-01-10 07:29:50', '2022-01-10 07:29:50'),
(46, 'error et', 'error-et', 'atque officia', 'Pakistan', '2022-01-10 07:29:50', '2022-01-10 07:29:50'),
(47, 'ad quibusdam', 'ad-quibusdam', 'ad sit', 'Pakistan', '2022-01-10 07:29:50', '2022-01-10 07:29:50'),
(48, 'delectus harum', 'delectus-harum', 'id quia', 'Pakistan', '2022-01-10 07:29:50', '2022-01-10 07:29:50'),
(49, 'neque eos', 'neque-eos', 'ab corrupti', 'Pakistan', '2022-01-10 07:29:50', '2022-01-10 07:29:50'),
(50, 'libero veritatis', 'libero-veritatis', 'sapiente inventore', 'Pakistan', '2022-01-10 07:29:50', '2022-01-10 07:29:50'),
(51, 'Online', 'online', 'Global', 'Global', '2022-01-22 16:21:08', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `managers`
--

CREATE TABLE `managers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
-- Dumping data for table `managers`
--

INSERT INTO `managers` (`id`, `user_id`, `image`, `line1`, `line2`, `city`, `province`, `country`, `zipcode`, `created_at`, `updated_at`) VALUES
(1, 13, '1640949371.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-30 06:16:41', '2021-12-31 06:16:11');

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
(6, '2021_12_13_104237_create_sessions_table', 1),
(7, '2021_12_13_105946_create_catregories_table', 2),
(8, '2021_12_13_113423_create_categpories_table', 3),
(9, '2021_12_13_113501_create_products_table', 3),
(10, '2021_12_13_114408_create_categories_table', 4),
(11, '2021_12_13_114535_create_products_table', 5),
(12, '2021_12_13_121232_create_doctors_table', 6),
(13, '2021_12_13_121517_create_sales_table', 7),
(14, '2021_12_13_121723_create_home_sliders_table', 8),
(15, '2021_12_13_121901_create_home_categories_table', 9),
(16, '2021_12_13_122015_create_coupons_table', 10),
(17, '2021_12_13_171103_add_expiry_date_to_coupons_table', 11),
(18, '2021_12_14_203528_create_orders_table', 12),
(19, '2021_12_14_203956_create_order_items_table', 12),
(20, '2021_12_14_204025_create_shippings_table', 12),
(21, '2021_12_14_204059_create_transactions_table', 12),
(22, '2021_12_16_204940_add_delivered_canceld_date_to_orders_table', 13),
(23, '2021_12_16_214638_create_reviews_table', 14),
(24, '2021_12_16_215122_add_rstatus_to_order_items_table', 14),
(25, '2021_12_17_051831_create_contacts_table', 15),
(26, '2021_12_17_205555_create_settings_table', 16),
(27, '2021_12_19_090210_create_shoppingcart_table', 17),
(28, '2021_12_19_144657_create_subcategories_table', 18),
(29, '2021_12_20_074813_create_profiles_table', 19),
(30, '2021_12_21_205809_create_suppliers_table', 20),
(31, '2021_12_23_060138_create_pharmacists_table', 21),
(32, '2021_12_23_223654_add_customer_receiving_sheet_to_orders_table', 22),
(33, '2021_12_24_095507_create_appointments_table', 23),
(34, '2021_12_24_174844_create_onlinemeetings_table', 23),
(35, '2021_12_26_075518_create_transaction1s_table', 24),
(36, '2021_12_26_174148_add_appointment_datetime_to_appointments_table', 25),
(37, '2021_12_28_144236_add_total_subtotal_tax_to_transaction1s_table', 26),
(38, '2021_12_28_145727_add_total_subtotal_tax_to_transactions_table', 27),
(39, '2021_12_29_191438_create_deliveries_table', 28),
(40, '2021_12_30_085442_add_deliveryboy_id_to_orders_table', 29),
(41, '2021_12_30_102901_create_managers_table', 30),
(42, '2021_12_30_103106_create_deleiverboys_table', 30),
(43, '2021_12_31_113132_create_delivery_boys_table', 31),
(44, '2021_12_31_163549_add_last_login_at_to_users_table', 32),
(45, '2021_12_31_194542_add_social_login_to_users_table', 33),
(46, '2022_01_03_195652_add_expiry_date_to_products_table', 34),
(47, '2022_01_04_185817_add_purchase_price_to_products_table', 35),
(48, '2022_01_04_194937_add_admin_approval_to_suppliers_table', 36),
(49, '2022_01_05_082259_create_pharmacist_tables_table', 37),
(50, '2022_01_05_085924_add__s_k_u_to_pharmacist_tables_table', 38),
(51, '2022_01_05_104853_create_perscriptions_table', 39),
(52, '2022_01_06_161749_add_admin_approval_to_pharmacists_table', 40),
(53, '2022_01_10_104532_create_appointment_reviews_table', 41),
(54, '2022_01_10_111312_add_rstatus_to_onlinemeetings_table', 42),
(55, '2022_01_10_122011_create_hospitals_table', 43),
(56, '2022_01_10_125905_create_doctor_specialists_table', 44),
(57, '2022_01_10_140938_add_slug_to_doctor_specialists_table', 45),
(58, '2022_01_10_210202_create_perscription_products_table', 46),
(59, '2022_01_11_154058_add__n_o_d_s_to_perscriptions_table', 47),
(60, '2022_01_12_215719_add_product_id_to_perscription_products_table', 48),
(61, '2022_01_13_024110_add_pharmacist_id_to_perscriptions_table', 49),
(62, '2022_01_13_101829_add_canceled_date_to_appointments_table', 50),
(63, '2022_01_13_104539_add_doctor_id_to_appointments_table', 51),
(64, '2022_01_13_105910_add_doctor_perscription_to_onlinemeetings_table', 52),
(65, '2022_01_18_155101_create_blogs_table', 53),
(66, '2022_01_18_162419_create_blogggers_table', 54),
(67, '2022_01_18_163443_add_image_to_bloggers_table', 55),
(68, '2022_01_20_134247_create_phramacy_orders_table', 56),
(69, '2022_01_20_141421_create_pharmacy_order_items_table', 57),
(70, '2022_01_21_204734_create_practices_table', 58),
(71, '2022_01_21_205727_add_days_to_practices_table', 59);

-- --------------------------------------------------------

--
-- Table structure for table `onlinemeetings`
--

CREATE TABLE `onlinemeetings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `doctor_id` bigint(20) UNSIGNED NOT NULL,
  `users_id` bigint(20) UNSIGNED NOT NULL,
  `meeting_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `appointment_id` bigint(20) UNSIGNED NOT NULL,
  `topic` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_at` datetime NOT NULL,
  `duration` int(11) NOT NULL COMMENT 'minutes',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'meeting_password',
  `start_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `join_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `doctor_perscription` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `rstatus` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `onlinemeetings`
--

INSERT INTO `onlinemeetings` (`id`, `doctor_id`, `users_id`, `meeting_id`, `appointment_id`, `topic`, `start_at`, `duration`, `password`, `start_url`, `join_url`, `doctor_perscription`, `created_at`, `updated_at`, `rstatus`) VALUES
(1, 1, 9, '83194431842', 64, 'Online Consultation', '2021-12-26 09:44:02', 60, 'online', 'https://us05web.zoom.us/wc/6931639507?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJpc3MiOiJ3ZWIiLCJjbHQiOjAsIm1udW0iOiI2OTMxNjM5NTA3Iiwic3RrIjoibjFHZU1vemw0X0lSNkc3eW1hZnNJdGQ2WDNBRDZWSldZWUFoMkg3MmFCOC5CZ1lnT1VwVGFVczNSMU5oVW04elZYUk9kekZTZURSemVUVnVkR2xoY1hKUFNVWkFOVEU1TXpGbFkyTTFOVGt5WWpJNVl6VmpNbVF3WWpVek9UVXdNalExTm1WbFlXRmlPVGhsWkRFM01EUXpZV05pTldFeU1EUXpZMlV4T0RabU9ERTJNQUFNY21Wc2NIaFhMMVZEWjBFOUFBUjFjekExQUFBQmZmWWdLamdBRW5VQUFBQSIsImF1ZCI6ImNsaWVudHNtIiwidWlkIjoicHdiTmtKVm1RSjZkZFVYeFdJREdMUSIsInNrIjoiMCIsInN0eSI6MTAwLCJ3Y2QiOiJ1czA1IiwiZXhwIjoxNjQwNTE5MDQyLCJpYXQiOjE2NDA1MTE4NDIsImFpZCI6InpZRXNxaUt2VFp5UExobkRRLW9OMGciLCJjaWQiOiIifQ.S4CR-l3V_IyQReLdVUQf_px3ERNaII7k27BoBhj4_L8', 'https://us05web.zoom.us/j/6931639507?pwd=R05jM1dtd04vL0M0aWU1YjJDdnBoQT09', NULL, '2021-12-26 04:44:02', '2022-01-10 10:55:04', 1),
(2, 1, 9, '86480913557', 65, 'Online Consultation', '2021-12-26 09:45:55', 60, 'online', 'https://us05web.zoom.us/wc/6931639507?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJpc3MiOiJ3ZWIiLCJjbHQiOjAsIm1udW0iOiI2OTMxNjM5NTA3Iiwic3RrIjoiQW1aWktid3ZsN012T3Ztb0xKc2Y5SVpJVXhlcnFSY1VnUVc0M1JTbVh1Yy5CZ1lnT1VwVGFVczNSMU5oVW04elZYUk9kekZTZURSemVUVnVkR2xoY1hKUFNVWkFOVEU1TXpGbFkyTTFOVGt5WWpJNVl6VmpNbVF3WWpVek9UVXdNalExTm1WbFlXRmlPVGhsWkRFM01EUXpZV05pTldFeU1EUXpZMlV4T0RabU9ERTJNQUFNY21Wc2NIaFhMMVZEWjBFOUFBUjFjekExQUFBQmZmWWg0a0FBRW5VQUFBQSIsImF1ZCI6ImNsaWVudHNtIiwidWlkIjoicHdiTmtKVm1RSjZkZFVYeFdJREdMUSIsInNrIjoiMCIsInN0eSI6MTAwLCJ3Y2QiOiJ1czA1IiwiZXhwIjoxNjQwNTE5MTU1LCJpYXQiOjE2NDA1MTE5NTUsImFpZCI6InpZRXNxaUt2VFp5UExobkRRLW9OMGciLCJjaWQiOiIifQ.7xcGH8W1IgaFbC93YKJ0ngoMczNhmgp3dtglaLE39TQ', 'https://us05web.zoom.us/j/6931639507?pwd=R05jM1dtd04vL0M0aWU1YjJDdnBoQT09', NULL, '2021-12-26 04:45:54', '2022-01-10 10:54:28', 1),
(4, 1, 9, '83299091922', 67, 'Online Consultation', '2021-12-26 18:07:04', 60, 'online', 'https://us05web.zoom.us/s/6931639507?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJpc3MiOiJ3ZWIiLCJjbHQiOjAsIm1udW0iOiI2OTMxNjM5NTA3Iiwic3RrIjoicW9sQjNiaG9Kb25qS250Rzd5TnF4Qm9fdWxQYlR3Y3VsX3E0TENpQ2JWRS5CZ1lnT1VwVGFVczNSMU5oVW04elZYUk9kekZTZURSemVUVnVkR2xoY1hKUFNVWkFOVEU1TXpGbFkyTTFOVGt5WWpJNVl6VmpNbVF3WWpVek9UVXdNalExTm1WbFlXRmlPVGhsWkRFM01EUXpZV05pTldFeU1EUXpZMlV4T0RabU9ERTJNQUFNY21Wc2NIaFhMMVZEWjBFOUFBUjFjekExQUFBQmZmZnN0TlFBRW5VQUFBQSIsImF1ZCI6ImNsaWVudHNtIiwidWlkIjoicHdiTmtKVm1RSjZkZFVYeFdJREdMUSIsInNrIjoiMCIsInN0eSI6MTAwLCJ3Y2QiOiJ1czA1IiwiZXhwIjoxNjQwNTQ5MjI0LCJpYXQiOjE2NDA1NDIwMjQsImFpZCI6InpZRXNxaUt2VFp5UExobkRRLW9OMGciLCJjaWQiOiIifQ.wh1vlB5SYifJtKkPPsLsBvIrrkQUhNsA3dZSTmb4am4', 'https://us05web.zoom.us/j/6931639507?pwd=R05jM1dtd04vL0M0aWU1YjJDdnBoQT09', NULL, '2021-12-26 13:07:04', '2022-01-10 06:56:25', 1),
(5, 1, 9, '89640051569', 71, 'Online Consultation', '2021-12-31 22:00:00', 60, 'online', 'https://us05web.zoom.us/s/6931639507?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJpc3MiOiJ3ZWIiLCJjbHQiOjAsIm1udW0iOiI2OTMxNjM5NTA3Iiwic3RrIjoiWko0TTlaRXFjeE95aVFHV1c2M0NtOVhWYUNrby1STDlRN2Q0dTRhdjFWWS5CZ1lnT1VwVGFVczNSMU5oVW04elZYUk9kekZTZURSemVUVnVkR2xoY1hKUFNVWkFOVEU1TXpGbFkyTTFOVGt5WWpJNVl6VmpNbVF3WWpVek9UVXdNalExTm1WbFlXRmlPVGhsWkRFM01EUXpZV05pTldFeU1EUXpZMlV4T0RabU9ERTJNQUFNY21Wc2NIaFhMMVZEWjBFOUFBUjFjekExQUFBQmZmZjg3aXNBRW5VQUFBQSIsImF1ZCI6ImNsaWVudHNtIiwidWlkIjoicHdiTmtKVm1RSjZkZFVYeFdJREdMUSIsInNrIjoiMCIsInN0eSI6MTAwLCJ3Y2QiOiJ1czA1IiwiZXhwIjoxNjQwNTUwMjg4LCJpYXQiOjE2NDA1NDMwODgsImFpZCI6InpZRXNxaUt2VFp5UExobkRRLW9OMGciLCJjaWQiOiIifQ.hybo4QKsbOa3je70PNkmZGI0GT0nHQ9ACIC365eKTdk', 'https://us05web.zoom.us/j/6931639507?pwd=R05jM1dtd04vL0M0aWU1YjJDdnBoQT09', '1642072899.png', '2021-12-26 13:24:47', '2022-01-13 06:21:39', 1),
(6, 2, 9, '82251464673', 72, 'Online Consultation', '2022-01-27 09:00:00', 45, 'online45', 'https://us05web.zoom.us/s/6931639507?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJpc3MiOiJ3ZWIiLCJjbHQiOjAsIm1udW0iOiI2OTMxNjM5NTA3Iiwic3RrIjoiRVRhZVZXMURPSE5FQnlVaHU4c0tFUWRoZy1SNTc4R081eXFGdDFvV1FhWS5CZ1lnT1VwVGFVczNSMU5oVW04elZYUk9kekZTZURSemVUVnVkR2xoY1hKUFNVWkFOVEU1TXpGbFkyTTFOVGt5WWpJNVl6VmpNbVF3WWpVek9UVXdNalExTm1WbFlXRmlPVGhsWkRFM01EUXpZV05pTldFeU1EUXpZMlV4T0RabU9ERTJNQUFNY21Wc2NIaFhMMVZEWjBFOUFBUjFjekExQUFBQmZrUzlKdUVBRW5VQUFBQSIsImF1ZCI6ImNsaWVudHNtIiwidWlkIjoicHdiTmtKVm1RSjZkZFVYeFdJREdMUSIsInNrIjoiMCIsInN0eSI6MTAwLCJ3Y2QiOiJ1czA1IiwiZXhwIjoxNjQxODM3OTU0LCJpYXQiOjE2NDE4MzA3NTQsImFpZCI6InpZRXNxaUt2VFp5UExobkRRLW9OMGciLCJjaWQiOiIifQ.ifylG1ghyNkdj2aw3DZzt82W3lAEjEV3LGnSGBZ1KOU', 'https://us05web.zoom.us/j/6931639507?pwd=Zys2Y1VMOHRTeVBoekZMYWJyNVRjdz09', NULL, '2022-01-10 11:05:53', '2022-01-21 15:32:59', 1),
(12, 1, 9, '81981233314', 78, 'Online Consultation', '2022-01-29 07:00:00', 20, 'online20', 'https://us05web.zoom.us/s/6931639507?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJpc3MiOiJ3ZWIiLCJjbHQiOjAsIm1udW0iOiI2OTMxNjM5NTA3Iiwic3RrIjoiclVDLUZBdTdISjFfeHROUmVMWFVQRFlEQ0NieklyX1pkY3RmV0JTcXlhYy5CZ1lnT1VwVGFVczNSMU5oVW04elZYUk9kekZTZURSemVUVnVkR2xoY1hKUFNVWkFOVEU1TXpGbFkyTTFOVGt5WWpJNVl6VmpNbVF3WWpVek9UVXdNalExTm1WbFlXRmlPVGhsWkRFM01EUXpZV05pTldFeU1EUXpZMlV4T0RabU9ERTJNQUFNY21Wc2NIaFhMMVZEWjBFOUFBUjFjekExQUFBQmZvSzYwallBRW5VQUFBQSIsImF1ZCI6ImNsaWVudHNtIiwidWlkIjoicHdiTmtKVm1RSjZkZFVYeFdJREdMUSIsInNrIjoiMCIsInN0eSI6MTAwLCJ3Y2QiOiJ1czA1IiwiZXhwIjoxNjQyODc3OTg4LCJpYXQiOjE2NDI4NzA3ODgsImFpZCI6InpZRXNxaUt2VFp5UExobkRRLW9OMGciLCJjaWQiOiIifQ.tl-RBc1AAQZT5xlLGzX81TzT_Zsfmr_3rxRdxLeLzQo', 'https://us05web.zoom.us/j/6931639507?pwd=cTNqTTBzTUxoZkVNMzljQTRTMy9HQT09', NULL, '2022-01-22 11:59:49', '2022-01-22 11:59:49', 0),
(13, 1, 9, '83026866474', 79, 'Online Consultation', '2022-01-31 17:10:00', 45, 'online45', 'https://us05web.zoom.us/s/6931639507?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6InB3Yk5rSlZtUUo2ZGRVWHhXSURHTFEiLCJpc3MiOiJ3ZWIiLCJzayI6IjAiLCJzdHkiOjEwMCwid2NkIjoidXMwNSIsImNsdCI6MCwibW51bSI6IjY5MzE2Mzk1MDciLCJleHAiOjE2NDMyMTI0MDEsImlhdCI6MTY0MzIwNTIwMSwiYWlkIjoiellFc3FpS3ZUWnlQTGhuRFEtb04wZyIsImNpZCI6IiJ9.Ky7KTO002vMc6IF0rTwA6tVsLlRwS-PDHObPhLUrX6I', 'https://us05web.zoom.us/j/6931639507?pwd=Zys2Y1VMOHRTeVBoekZMYWJyNVRjdz09', NULL, '2022-01-26 08:53:20', '2022-01-26 08:53:20', 0),
(14, 1, 9, '82428727228', 80, 'Online Consultation', '2022-01-28 17:00:00', 45, 'online45', 'https://us05web.zoom.us/s/6931639507?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6InB3Yk5rSlZtUUo2ZGRVWHhXSURHTFEiLCJpc3MiOiJ3ZWIiLCJzayI6IjAiLCJzdHkiOjEwMCwid2NkIjoidXMwNSIsImNsdCI6MCwibW51bSI6IjY5MzE2Mzk1MDciLCJleHAiOjE2NDMyMTI1NDUsImlhdCI6MTY0MzIwNTM0NSwiYWlkIjoiellFc3FpS3ZUWnlQTGhuRFEtb04wZyIsImNpZCI6IiJ9.RKjqzl4nFnEfSjdC6VgpyIIjNxJ0i39kd4WoX2E7cDk', 'https://us05web.zoom.us/j/6931639507?pwd=Zys2Y1VMOHRTeVBoekZMYWJyNVRjdz09', NULL, '2022-01-26 08:55:46', '2022-01-26 08:55:46', 0),
(15, 1, 9, '87864439143', 81, 'Online Consultation', '2022-01-28 16:00:00', 30, 'online30', 'https://us05web.zoom.us/s/6931639507?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6InB3Yk5rSlZtUUo2ZGRVWHhXSURHTFEiLCJpc3MiOiJ3ZWIiLCJzayI6IjAiLCJzdHkiOjEwMCwid2NkIjoidXMwNSIsImNsdCI6MCwibW51bSI6IjY5MzE2Mzk1MDciLCJleHAiOjE2NDMyMTI2NjQsImlhdCI6MTY0MzIwNTQ2NCwiYWlkIjoiellFc3FpS3ZUWnlQTGhuRFEtb04wZyIsImNpZCI6IiJ9.tnrCtwDQBwUHW-JAmLaa-6ypzdaKyFzEMK6ngEavf74', 'https://us05web.zoom.us/j/6931639507?pwd=OTZJbFBpb29QQzVxVTNya2VVcFQ2dz09', NULL, '2022-01-26 08:57:44', '2022-01-26 08:57:44', 0),
(16, 1, 9, '87939267584', 82, 'Online Consultation', '2022-01-26 18:03:00', 30, 'online30', 'https://us05web.zoom.us/s/6931639507?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6InB3Yk5rSlZtUUo2ZGRVWHhXSURHTFEiLCJpc3MiOiJ3ZWIiLCJzayI6IjAiLCJzdHkiOjEwMCwid2NkIjoidXMwNSIsImNsdCI6MCwibW51bSI6IjY5MzE2Mzk1MDciLCJleHAiOjE2NDMyMTI4NDksImlhdCI6MTY0MzIwNTY0OSwiYWlkIjoiellFc3FpS3ZUWnlQTGhuRFEtb04wZyIsImNpZCI6IiJ9.dINo6wUZSGpX3n2B5u5X7WsTlxhZUkeTtqlsw1Af4mM', 'https://us05web.zoom.us/j/6931639507?pwd=OTZJbFBpb29QQzVxVTNya2VVcFQ2dz09', NULL, '2022-01-26 09:00:49', '2022-01-26 09:00:49', 0),
(17, 1, 9, '83400084284', 83, 'Online Consultation', '2022-01-27 20:02:00', 42, 'online42', 'https://us05web.zoom.us/s/6931639507?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6InB3Yk5rSlZtUUo2ZGRVWHhXSURHTFEiLCJpc3MiOiJ3ZWIiLCJzayI6IjAiLCJzdHkiOjEwMCwid2NkIjoidXMwNSIsImNsdCI6MCwibW51bSI6IjY5MzE2Mzk1MDciLCJleHAiOjE2NDMyMTI5NTEsImlhdCI6MTY0MzIwNTc1MSwiYWlkIjoiellFc3FpS3ZUWnlQTGhuRFEtb04wZyIsImNpZCI6IiJ9.MBPgs9AhxxaIadJYiIRurlfZjjtOTGfP_IviCWOmOlg', 'https://us05web.zoom.us/j/6931639507?pwd=TWVIU1RYNGNqWVlYSk9FQzdsZ1hDZz09', NULL, '2022-01-26 09:02:31', '2022-01-26 09:02:31', 0),
(18, 1, 9, '83878714955', 84, 'Online Consultation', '2022-01-28 09:04:00', 10, 'online10', 'https://us05web.zoom.us/s/6931639507?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6InB3Yk5rSlZtUUo2ZGRVWHhXSURHTFEiLCJpc3MiOiJ3ZWIiLCJzayI6IjAiLCJzdHkiOjEwMCwid2NkIjoidXMwNSIsImNsdCI6MCwibW51bSI6IjY5MzE2Mzk1MDciLCJleHAiOjE2NDMyMTMwODcsImlhdCI6MTY0MzIwNTg4NywiYWlkIjoiellFc3FpS3ZUWnlQTGhuRFEtb04wZyIsImNpZCI6IiJ9.eiQCuVO0wuq-4QVJIvhrufyXLpAArHHYSqSmyXxpuZY', 'https://us05web.zoom.us/j/6931639507?pwd=bjRBYU9JbzNXN1dFdGo0N3JxbWNBZz09', NULL, '2022-01-26 09:04:47', '2022-01-26 09:04:47', 0),
(19, 2, 9, '81723183244', 88, 'Online Consultation', '2022-01-26 14:15:20', 40, 'online40', 'https://us05web.zoom.us/s/6931639507?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6InB3Yk5rSlZtUUo2ZGRVWHhXSURHTFEiLCJpc3MiOiJ3ZWIiLCJzayI6IjAiLCJzdHkiOjEwMCwid2NkIjoidXMwNSIsImNsdCI6MCwibW51bSI6IjY5MzE2Mzk1MDciLCJleHAiOjE2NDMyMTM3MjAsImlhdCI6MTY0MzIwNjUyMCwiYWlkIjoiellFc3FpS3ZUWnlQTGhuRFEtb04wZyIsImNpZCI6IiJ9.u4xTDQEhDbC9pNr21n7CT1GKxKB-5LxNdCQ1YdBajno', 'https://us05web.zoom.us/j/6931639507?pwd=VzhnczNCcFIvR2Y2OEFlSjREbFBtQT09', NULL, '2022-01-26 09:15:19', '2022-01-26 09:15:19', 0);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `subtotal` decimal(8,2) NOT NULL,
  `discount` decimal(8,2) NOT NULL DEFAULT 0.00,
  `tax` decimal(8,2) NOT NULL,
  `total` decimal(8,2) NOT NULL,
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
  `status` enum('ordered','cancel','delivered','process','dispatch','onaway') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ordered',
  `is_shipping_different` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `delivered_date` date DEFAULT NULL,
  `canceled_date` date DEFAULT NULL,
  `customer_order_receiving_sheet` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deliveryboy_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `subtotal`, `discount`, `tax`, `total`, `firstname`, `lastname`, `mobile`, `email`, `line1`, `line2`, `city`, `province`, `country`, `zipcode`, `status`, `is_shipping_different`, `created_at`, `updated_at`, `delivered_date`, `canceled_date`, `customer_order_receiving_sheet`, `deliveryboy_id`) VALUES
(6, 9, '100.00', '0.00', '12.00', '112.00', 'Muhammad', 'Aslam', '03106473564', 'user@gmail.com', 'Hussnain town street no 4 house no 12', 'nr govt girls high school piran ghaib road multan', 'Multan', 'Punjab', 'Pakistan', '600001', 'delivered', 1, '2021-12-15 14:40:16', '2022-01-07 19:01:44', '2022-01-08', NULL, NULL, 12),
(10, 9, '900.00', '100.00', '108.00', '1008.00', 'Muhammad', 'Aslam', '03106473564', 'user@gmail.com', 'Hussnain town street no 4 house no 12', 'nr govt girls high school piran ghaib road multan', 'Multan', 'Punjab', 'Pakistan', '600001', 'delivered', 1, '2021-12-15 16:28:33', '2022-01-26 07:46:16', '2022-01-26', NULL, NULL, NULL),
(11, 2, '85.00', '0.00', '10.20', '95.20', 'Muhammad', 'Aslam', '03106473564', 'aslamsubengr@gmail.com', 'Husssnain town', 'House no 12 street 4', 'Multan', 'Punjab', 'Pakistan', '59585', 'delivered', 1, '2021-12-22 23:09:05', '2022-01-26 07:52:18', '2022-01-26', NULL, NULL, NULL),
(12, 9, '90.00', '0.00', '10.80', '100.80', 'Muhammad', 'Ashraf', '03106473564', 'aslamsubeng123@gmail.com', 'nr GOVT GHSS piran ghaib road multan Hussnain town st 4 h 12', 'hussnain town', 'Multan', 'Punjab', 'Pakistan', '60000', 'onaway', 1, '2021-12-22 23:47:12', '2022-01-26 08:01:58', '2021-12-23', NULL, NULL, NULL),
(13, 9, '89.00', '0.00', '10.68', '99.68', 'Muhammad', 'Ashraf', '03106473564', 'aslamsubengr@gmail.com', 'nr GOVT GHSS piran ghaib road multan Hussnain town st 4 h 12', 'hussnain town', 'Multan', 'Punjab', 'Pakistan', '60000', 'process', 1, '2021-12-22 23:50:22', '2021-12-30 05:18:59', '2021-12-23', NULL, NULL, NULL),
(14, 9, '1056.00', '0.00', '126.72', '1182.72', 'Muhammad', 'Ashraf', '03106473564', 'aslamsubengr@gmail.com', 'nr GOVT GHSS piran ghaib road multan Hussnain town st 4 h 12', 'hussnain town', 'Multan', 'Punjab', 'Pakistan', '60000', 'process', 1, '2021-12-23 00:03:54', '2021-12-30 05:19:01', '2021-12-23', NULL, NULL, NULL),
(15, 9, '90.00', '0.00', '10.80', '100.80', 'Muhammad', 'Ashraf', '03106473564', 'aslamsubengr@gmail.com', 'nr GOVT GHSS piran ghaib road multan Hussnain town st 4 h 12', 'hussnain town', 'Multan', 'Punjab', 'Pakistan', '60000', 'process', 1, '2021-12-23 00:11:13', '2021-12-30 05:19:04', '2021-12-23', NULL, NULL, NULL),
(16, 9, '120.00', '0.00', '14.40', '134.40', 'Muhammad', 'Aslam', '03106473564', 'aslamsubeng123@gmail.com', 'Hussnain town street 4', 'Dr Kamran wali gali', 'Multan', 'Punjab', 'Pakistan', '6000', 'ordered', 0, '2021-12-28 14:44:12', '2021-12-28 14:44:12', NULL, NULL, NULL, NULL),
(17, 9, '100.00', '0.00', '12.00', '112.00', 'Muhammad', 'Aslam', '03106473564', 'aslamsubeng123@gmail.com', 'Hussnain town street 4', 'kjkhhhihkjkhjh', 'Multan', 'punjab', 'Pakistan', '6000', 'ordered', 0, '2021-12-29 03:08:14', '2021-12-29 03:08:14', NULL, NULL, NULL, NULL),
(18, 9, '100.00', '0.00', '12.00', '112.00', 'Muhammad', 'Ashraf', '03106473564', 'aslamsubeng123@gmail.com', 'nr GOVT GHSS piran ghaib road multan Hussnain town st 4 h 12', 'gali Dr Kamran wali', 'Multan', 'Punjab', 'Pakistan', '60000', 'ordered', 0, '2021-12-29 03:11:06', '2021-12-29 03:11:06', NULL, NULL, NULL, NULL),
(19, 9, '100.00', '0.00', '12.00', '112.00', 'Muhammad', 'Aslam', '03106473564', 'aslamsubeng123@gmail.com', 'Hussnain town street 4', 'kjkhhhihkjkhjh', 'Multan', 'punjab', 'Pakistan', '6000', 'ordered', 0, '2021-12-29 03:12:43', '2021-12-29 03:12:43', NULL, NULL, NULL, NULL),
(20, 9, '100.00', '0.00', '12.00', '112.00', 'Muhammad', 'Aslam', '03106473564', 'aslamsubeng123@gmail.com', 'Hussnain town street 4', 'kjkhhhihkjkhjh', 'Multan', 'punjab', 'Pakistan', '6000', 'process', 0, '2021-12-29 03:17:39', '2021-12-29 05:36:49', NULL, NULL, NULL, NULL),
(21, 9, '100.00', '0.00', '12.00', '112.00', 'Muhammad', 'Aslam', '03106473564', 'aslamsubeng123@gmail.com', 'Hussnain town street 4', 'kjkhhhihkjkhjh', 'Multan', 'punjab', 'Pakistan', '6000', 'process', 0, '2021-12-29 03:19:17', '2021-12-30 05:19:23', '2021-12-29', NULL, NULL, NULL),
(22, 9, '100.00', '0.00', '12.00', '112.00', 'Muhammad', 'Aslam', '03106473564', 'aslamsubeng123@gmail.com', 'Hussnain town street 4', 'kjkhhhihkjkhjh', 'Multan', 'punjab', 'Pakistan', '6000', 'ordered', 0, '2022-01-07 10:07:02', '2022-01-07 10:07:02', NULL, NULL, NULL, NULL),
(23, 9, '100.00', '0.00', '12.00', '112.00', 'Muhammad', 'Aslam', '03106473564', 'aslamsubeng123@gmail.com', 'Hussnain town street 4', 'kjkhhhihkjkhjh', 'Multan', 'punjab', 'Pakistan', '6000', 'ordered', 0, '2022-01-07 10:09:51', '2022-01-07 10:09:51', NULL, NULL, NULL, NULL),
(24, 9, '100.00', '0.00', '12.00', '112.00', 'Muhammad', 'Aslam', '03106473564', 'aslamsubeng123@gmail.com', 'Hussnain town street 4', 'kjkhhhihkjkhjh', 'Multan', 'punjab', 'Pakistan', '6000', 'ordered', 0, '2022-01-07 10:11:48', '2022-01-07 10:11:48', NULL, NULL, NULL, NULL),
(25, 9, '100.00', '0.00', '12.00', '112.00', 'Muhammad', 'Aslam', '03106473564', 'aslamsubeng123@gmail.com', 'Hussnain town street 4', 'kjkhhhihkjkhjh', 'Lahore', 'punjab', 'Pakistan', '6000', 'ordered', 0, '2022-01-07 10:13:57', '2022-01-07 10:13:57', NULL, NULL, NULL, NULL),
(26, 9, '100.00', '0.00', '12.00', '112.00', 'Muhammad', 'Aslam', '03106473564', 'aslamsubeng123@gmail.com', 'Hussnain town street 4', 'kjkhhhihkjkhjh', 'Gujrat', 'Harynia', 'India', '6000', 'ordered', 0, '2022-01-07 10:18:40', '2022-01-07 10:18:40', NULL, NULL, NULL, NULL),
(27, 9, '100.00', '0.00', '12.00', '112.00', 'Muhammad', 'Aslam', '03106473564', 'aslamsubeng123@gmail.com', 'Hussnain town street 4', 'kjkhhhihkjkhjh', 'Islamabad', 'punjab', 'Pakistan', '6000', 'ordered', 0, '2022-01-07 10:20:25', '2022-01-07 10:20:25', NULL, NULL, NULL, NULL),
(28, 9, '100.00', '0.00', '12.00', '112.00', 'Muhammad', 'Aslam', '03106473564', 'aslamsubeng123@gmail.com', 'Hussnain town street 4', 'kjkhhhihkjkhjh', 'Islamabad', 'punjab', 'Pakistan', '6000', 'ordered', 0, '2022-01-07 10:21:34', '2022-01-07 10:21:34', NULL, NULL, NULL, NULL),
(29, 15, '900.00', '100.00', '108.00', '1008.00', 'Muhammad', 'Aslam', '03106473564', 'aslamsubeng123@gmail.com', 'Hussnain town street 4', 'kjkhhhihkjkhjh', 'Multan', 'punjab', 'Pakistan', '6000', 'ordered', 1, '2022-01-19 15:59:12', '2022-01-19 15:59:12', NULL, NULL, NULL, NULL),
(30, 15, '900.00', '100.00', '108.00', '1008.00', 'Muhammad', 'Aslam', '03106473564', 'aslamsubeng123@gmail.com', 'Hussnain town street 4', 'kjkhhhihkjkhjh', 'Multan', 'punjab', 'Pakistan', '6000', 'ordered', 0, '2022-01-19 16:00:05', '2022-01-19 16:00:05', NULL, NULL, NULL, NULL),
(31, 9, '100.00', '0.00', '12.00', '112.00', 'Muhammad', 'Azzan', '03106473564', 'aslamsubeng123@gmail.com', 'Hussnain Town', 'Piran Ghaib road Multan', 'Multan', 'Punjab', 'Pakistan', '59050', 'ordered', 0, '2022-01-22 16:59:39', '2022-01-22 16:59:39', NULL, NULL, NULL, NULL),
(32, 9, '100.00', '0.00', '12.00', '112.00', 'Muhammad', 'Aslam', '03106473564', 'aslamsubeng123@gmail.com', 'Hussnain town street 4', 'kjkhhhihkjkhjh', 'Multan', 'punjab', 'Pakistan', '6000', 'ordered', 1, '2022-02-18 04:50:14', '2022-02-18 04:50:14', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `supplier_id` bigint(20) UNSIGNED DEFAULT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `rstatus` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `product_id`, `supplier_id`, `order_id`, `price`, `quantity`, `created_at`, `updated_at`, `rstatus`) VALUES
(4, 6, 2, 6, '100.00', 1, '2021-12-15 14:40:16', '2022-01-10 16:58:12', 1),
(9, 13, 1, 10, '100.00', 3, '2021-12-15 16:28:33', '2021-12-16 17:10:24', 1),
(10, 5, 4, 10, '100.00', 7, '2021-12-15 16:28:33', '2021-12-15 16:28:33', 0),
(11, 2, 1, 11, '85.00', 1, '2021-12-22 23:09:05', '2021-12-22 23:09:05', 0),
(12, 1, 1, 12, '90.00', 1, '2021-12-22 23:47:12', '2021-12-22 23:47:12', 0),
(13, 4, 1, 13, '89.00', 1, '2021-12-22 23:50:22', '2021-12-22 23:50:22', 0),
(14, 4, 1, 14, '89.00', 4, '2021-12-23 00:03:54', '2021-12-23 00:03:54', 0),
(15, 3, 4, 14, '100.00', 7, '2021-12-23 00:03:54', '2021-12-23 00:03:54', 0),
(16, 6, 2, 15, '90.00', 1, '2021-12-23 00:11:13', '2021-12-23 00:11:13', 0),
(17, 24, 1, 16, '120.00', 1, '2021-12-28 14:44:12', '2021-12-28 14:44:12', 0),
(18, 1, 1, 17, '100.00', 1, '2021-12-29 03:08:14', '2021-12-29 03:08:14', 0),
(19, 3, 4, 18, '100.00', 1, '2021-12-29 03:11:06', '2021-12-29 03:11:06', 0),
(20, 6, 2, 19, '100.00', 1, '2021-12-29 03:12:43', '2021-12-29 03:12:43', 0),
(21, 1, 1, 20, '100.00', 1, '2021-12-29 03:17:39', '2021-12-29 03:17:39', 0),
(22, 5, 4, 21, '100.00', 1, '2021-12-29 03:19:17', '2021-12-29 03:19:17', 0),
(23, 5, 4, 22, '100.00', 1, '2022-01-07 10:07:02', '2022-01-07 10:07:02', 0),
(24, 5, 4, 23, '100.00', 1, '2022-01-07 10:09:51', '2022-01-07 10:09:51', 0),
(25, 7, 3, 24, '100.00', 1, '2022-01-07 10:11:48', '2022-01-07 10:11:48', 0),
(26, 4, 1, 25, '100.00', 1, '2022-01-07 10:13:57', '2022-01-07 10:13:57', 0),
(27, 4, 1, 26, '100.00', 1, '2022-01-07 10:18:40', '2022-01-07 10:18:40', 0),
(28, 8, 2, 27, '100.00', 1, '2022-01-07 10:20:25', '2022-01-07 10:20:25', 0),
(29, 8, 2, 28, '100.00', 1, '2022-01-07 10:21:34', '2022-01-07 10:21:34', 0),
(30, 27, 1, 29, '100.00', 10, '2022-01-19 15:59:12', '2022-01-19 15:59:12', 0),
(31, 27, 1, 30, '100.00', 10, '2022-01-19 16:00:05', '2022-01-19 16:00:05', 0),
(32, 1, 1, 31, '100.00', 1, '2022-01-22 16:59:39', '2022-01-22 16:59:39', 0),
(33, 32, 3, 32, '100.00', 1, '2022-02-18 04:50:14', '2022-02-18 04:50:14', 0);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('user@gmail.com', '$2y$10$SS2vj7rJ5no49yPXZw95feR080NBAfKGrQobs8NMWPp43fuA9cWvy', '2021-12-19 01:36:01'),
('aslamsubengr@gmail.com', '$2y$10$Y44pH3qao4PcDNc27I7pEuLMyAyH4jqaO4Tnq0H3cqqpaoalNf88e', '2021-12-22 23:23:53');

-- --------------------------------------------------------

--
-- Table structure for table `perscriptions`
--

CREATE TABLE `perscriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `pharmacist_id` bigint(20) UNSIGNED DEFAULT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `line1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `line2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `province` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zipcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `images` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('upload','assign','dispatch','delivered','canceled') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'upload',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `NOD` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `perscriptions`
--

INSERT INTO `perscriptions` (`id`, `user_id`, `pharmacist_id`, `firstname`, `lastname`, `email`, `mobile`, `line1`, `line2`, `city`, `province`, `country`, `zipcode`, `images`, `status`, `created_at`, `updated_at`, `NOD`) VALUES
(1, 9, 2, 'Muhammad', 'Aslam', 'aslamsubeng123@gmail.com', '03106473564', 'Hussnain town street 4', 'kjkhhhihkjkhjh', 'Multan', 'punjab', 'Pakistan', '6000', ',16414562930.jpg,16414562931.png', 'assign', '2022-01-06 03:04:53', '2022-02-18 05:23:17', 2),
(2, 9, 1, 'Muhammad', 'Aslam', 'aslamsubeng123@gmail.com', '03106473564', 'Hussnain town street 4', 'kjkhhhihkjkhjh', 'Multan', 'punjab', 'Pakistan', '6000', ',16414563020.jpg,16414563021.png', 'delivered', '2022-01-06 03:05:02', '2022-01-12 21:50:06', 5),
(3, 9, 1, 'Muhammad', 'Aslam', 'aslamsubeng123@gmail.com', '03106473564', 'Hussnain town street 4', 'kjkhhhihkjkhjh', 'Multan', 'punjab', 'Pakistan', '6000', ',16414563100.jpg,16414563101.png', 'dispatch', '2022-01-06 03:05:10', '2022-01-20 15:08:41', 10),
(4, 9, 1, 'Muhammad', 'Aslam', 'aslamsubeng123@gmail.com', '03106473564', 'Hussnain town street 4', 'kjkhhhihkjkhjh', 'Multan', 'punjab', 'Pakistan', '6000', ',16414563120.jpg,16414563121.png', 'dispatch', '2022-01-06 03:05:12', '2022-01-20 15:08:48', 1),
(5, 9, 1, 'Muhammad', 'Aslam', 'aslamsubeng123@gmail.com', '03106473564', 'Hussnain town street 4', 'kjkhhhihkjkhjh', 'Multan', 'punjab', 'Pakistan', '6000', ',16414565420.jpg,16414565421.png', 'dispatch', '2022-01-06 03:09:02', '2022-01-20 15:08:51', 3),
(6, 15, 1, 'Muhammad', 'Aslam', 'aslamsubeng123@gmail.com', '03106473564', 'Hussnain town street 4', 'kjkhhhihkjkhjh', 'Multan', 'punjab', 'Pakistan', '59050', ',16426306320.jpg', 'dispatch', '2022-01-19 17:17:12', '2022-01-20 15:09:01', 5),
(7, 9, NULL, 'Muhammad', 'Aslam', 'aslamsubeng123@gmail.com', '03106473564', 'Hussnain town street 4', 'kjkhhhihkjkhjh', 'Multan', 'punjab', 'Pakistan', '6000', ',16451782180.png', 'upload', '2022-02-18 04:56:58', '2022-02-18 04:56:58', 2);

-- --------------------------------------------------------

--
-- Table structure for table `perscription_products`
--

CREATE TABLE `perscription_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `perscription_id` bigint(20) UNSIGNED NOT NULL,
  `pharmacist_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `product` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `discount` decimal(8,2) NOT NULL,
  `tax` decimal(8,2) NOT NULL,
  `total` decimal(8,2) NOT NULL,
  `days` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
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
-- Table structure for table `pharmacists`
--

CREATE TABLE `pharmacists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pharmacy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `registration_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pharmacy_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `province` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zipcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `admin_approval` enum('approved','pending') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pharmacists`
--

INSERT INTO `pharmacists` (`id`, `user_id`, `image`, `pharmacy_name`, `registration_no`, `pharmacy_address`, `city`, `province`, `country`, `zipcode`, `map`, `created_at`, `updated_at`, `admin_approval`) VALUES
(2, 10, '1643916482.jpg', 'Peer Sons Medical Store', 'PEE1002', 'Chowk Qazafi Khanewal road Multan', 'Multan', 'Punjab', 'Pakistan', '59050', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d55172.70867156484!2d71.42479599784986!3d30.200146929813503!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x393b336362e4efbb%3A0x66f45d412620dcfd!2sPeer%20and%20Sons%20Medical%20Store!5e0!3m2!1sen!2s!4v1643916120888!5m2!1sen!2s\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', '2022-02-03 19:18:24', '2022-02-03 14:28:02', 'approved');

-- --------------------------------------------------------

--
-- Table structure for table `pharmacist_tables`
--

CREATE TABLE `pharmacist_tables` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pharmacist_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(8,2) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expiry_date` date NOT NULL DEFAULT '2022-12-12',
  `manufacture_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `SKU` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pharmacist_tables`
--

INSERT INTO `pharmacist_tables` (`id`, `pharmacist_id`, `name`, `slug`, `price`, `quantity`, `description`, `expiry_date`, `manufacture_name`, `weight`, `created_at`, `updated_at`, `SKU`) VALUES
(602, 2, 'pariatur nihil', 'pariatur-nihil', '62.00', 43, 'Animi consectetur cupiditate modi voluptatibus tenetur. Sint occaecati quia perferendis dolore vero. Et qui qui tenetur. Rem dolores ab ipsa eius. Sit dolorem iusto quod porro voluptatem sit sunt. Excepturi est veritatis vero. Sit quis maiores est reprehenderit et unde. Qui doloremque sint non eum adipisci reiciendis quia veniam. Eius modi fugiat minus voluptates eius. Distinctio et et eius voluptatum porro error facere autem.', '2022-12-12', 'voluptas sed', 254, '2022-02-03 14:25:56', '2022-02-03 14:25:56', 'MED7112'),
(603, 2, 'blanditiis eum', 'blanditiis-eum', '57.00', 66, 'Vel temporibus at minus molestiae suscipit impedit voluptatem. Vero quibusdam animi dicta atque eos dolores hic. Consequatur sed sapiente qui vel voluptatem nulla. Possimus debitis a nobis fuga quia corporis cupiditate. Sint eligendi sed possimus voluptate in. Et illo dolorum impedit voluptatem. Laboriosam quo quaerat et est autem earum consectetur tempora.', '2022-12-12', 'id autem', 531, '2022-02-03 14:25:56', '2022-02-03 14:25:56', 'MED6662'),
(604, 2, 'repellat est', 'repellat-est', '9.00', 87, 'Voluptas tempora nemo aut quis nobis eligendi est. Maiores ab aut et. Incidunt officia enim quo consectetur deleniti animi nulla voluptatem. Dolorum voluptatibus nulla odit ab maiores. Nihil quia in autem nihil. Nobis ipsa animi dolorem maxime atque eum tempore. Autem consequatur cum rem fugiat rerum quasi ab. Eum eos itaque et non a. Libero qui consequatur quia illo recusandae assumenda architecto optio. Sit sequi atque aut.', '2022-12-12', 'accusamus aliquam', 641, '2022-02-03 14:25:56', '2022-02-03 14:25:56', 'MED6930'),
(605, 2, 'ratione eligendi', 'ratione-eligendi', '1.00', 89, 'Aliquid et ea ut et facilis. Dolor maxime aperiam aut incidunt sit. Eaque ipsa aut dignissimos dignissimos similique. Architecto cumque non fugiat ut. Iure possimus non voluptatem numquam occaecati ea repellat. Suscipit et placeat ullam laborum blanditiis consequatur ut. Ut eum sapiente mollitia consequatur in. Et illo sunt illo explicabo fugiat. Magnam quos in quisquam omnis fugiat.', '2022-12-12', 'id esse', 652, '2022-02-03 14:25:56', '2022-02-03 14:25:56', 'MED9961'),
(606, 2, 'aut occaecati', 'aut-occaecati', '49.00', 15, 'Et commodi dicta architecto ut. Iste repellat non totam voluptatem voluptatem quidem. Excepturi sint ipsum aliquam beatae. Similique atque quidem molestias et. Sapiente aut laborum dolorum accusantium autem. Est ut nulla ut autem doloribus nobis libero. Laudantium deserunt sed aut doloribus. Autem at vitae molestiae veniam officiis tempora ratione.', '2022-12-12', 'error sint', 692, '2022-02-03 14:25:56', '2022-02-03 14:25:56', 'MED3979'),
(607, 2, 'illum fugit', 'illum-fugit', '48.00', 12, 'Qui ea facere recusandae tempore. Rem illum numquam dolore ratione molestias. Natus amet vel perspiciatis culpa labore sit laudantium. Debitis et et reprehenderit qui qui dolor non. Sunt aut et cumque ducimus voluptatem beatae sequi. Nulla minima dolorem corrupti nam aspernatur sed magni libero. Fuga facere nemo accusantium nemo quos quibusdam. Iure aut enim aut exercitationem dolores ducimus laborum nesciunt. Sit est at sed in corporis nesciunt est.', '2022-12-12', 'sit est', 892, '2022-02-03 14:25:56', '2022-02-03 14:25:56', 'MED4023'),
(608, 2, 'est natus', 'est-natus', '20.00', 34, 'Occaecati itaque esse modi doloribus. Accusamus rerum molestias odio cupiditate est aut nihil. Excepturi eos animi aliquam vero. Est et debitis similique quia. Occaecati distinctio veritatis ut. Sed ipsum et at rerum. Id culpa quis perferendis ipsum quia animi sunt nihil. Nam et sequi qui quo iure aspernatur voluptates. Aliquid commodi officia excepturi cum omnis. Adipisci officiis impedit voluptas sed quod eligendi nobis quis. Consequatur autem explicabo soluta ea quo.', '2022-12-12', 'beatae error', 576, '2022-02-03 14:25:56', '2022-02-03 14:25:56', 'MED1503'),
(609, 2, 'nemo fugit', 'nemo-fugit', '35.00', 50, 'Quam numquam qui facere ut culpa fuga quaerat et. Qui aut laudantium et corrupti deserunt. Alias necessitatibus alias eveniet et. Et rem aspernatur vitae. Id illum reprehenderit eum impedit repellat aut. Quis deserunt repudiandae soluta voluptatem cupiditate neque. Officiis voluptatibus sapiente dolorum id. Repellendus dignissimos ullam soluta quis. Assumenda non dicta libero ut veritatis. Tenetur iste autem repellat consequuntur ea similique accusamus.', '2022-12-12', 'sapiente aut', 898, '2022-02-03 14:25:56', '2022-02-03 14:25:56', 'MED6537'),
(610, 2, 'optio ab', 'optio-ab', '32.00', 64, 'Nulla provident minima esse error. Nisi velit vel rerum qui. Sit recusandae maxime sequi reprehenderit. Sit veniam ipsam aperiam nobis iure mollitia vitae. Ut repudiandae voluptas error. Nihil vel vel facere unde eius. Possimus aliquam sed eos architecto voluptas nulla. Corporis odit quo alias est reprehenderit autem blanditiis. Est tempore alias delectus labore fugit sint omnis ratione. Asperiores quam a quia similique assumenda esse sapiente. Consequatur voluptatum sint veritatis.', '2022-12-12', 'molestias quo', 760, '2022-02-03 14:25:56', '2022-02-03 14:25:56', 'MED2463'),
(611, 2, 'ipsa distinctio', 'ipsa-distinctio', '56.00', 34, 'Saepe possimus quisquam ut ipsum commodi velit quas. Occaecati eum recusandae temporibus adipisci voluptate. Aut repudiandae sapiente facere error. Facilis vel in aspernatur nesciunt dolores. Expedita iste ut quisquam et modi vel laborum. Adipisci saepe soluta ut ex. Quae omnis laudantium est repudiandae. Fugit voluptatum quas reiciendis voluptas.', '2022-12-12', 'aut nihil', 693, '2022-02-03 14:25:56', '2022-02-03 14:25:56', 'MED9271'),
(612, 2, 'error consequatur', 'error-consequatur', '37.00', 94, 'Voluptatum reiciendis est et tempore. Sequi est deserunt reprehenderit eligendi. Id quod repellat quod ut sed omnis assumenda. Aperiam commodi ducimus maxime ducimus perferendis excepturi. Voluptatem ratione nihil nulla reiciendis est ratione. Qui quisquam aperiam aspernatur dignissimos est. Nihil ut et eum tempora eaque quam et. Laudantium sunt quasi magnam odio consequatur accusantium aperiam. Amet odio ut sequi vel modi. Dolorem nihil vel non ut. Fugiat veritatis laboriosam quasi et.', '2022-12-12', 'ex nihil', 335, '2022-02-03 14:25:56', '2022-02-03 14:25:56', 'MED1037'),
(613, 2, 'id ut', 'id-ut', '43.00', 62, 'Labore temporibus dicta et labore dolore fugit non at. Aut officiis inventore pariatur eius sapiente quas incidunt. Sint rerum blanditiis nisi minus et. Quia explicabo aut inventore corrupti velit consequatur. Officiis repellat perspiciatis quia ullam quas rerum. Quas sit sed et aliquam consectetur quis. Nemo corporis qui dolore corrupti ut quia architecto. Debitis alias ducimus et ipsam iste quisquam. Corrupti nesciunt veniam quae non accusantium optio. Iure quia culpa qui autem vel quia nemo.', '2022-12-12', 'dolorum ea', 397, '2022-02-03 14:25:56', '2022-02-03 14:25:56', 'MED7710'),
(614, 2, 'expedita reiciendis', 'expedita-reiciendis', '34.00', 72, 'Assumenda laudantium aut aut eius molestiae. Aut ea alias assumenda nulla totam. Iure odit possimus aut illo. Et aut maxime sint dolorem. Exercitationem esse ipsum et sed laboriosam eum omnis eligendi. Quam illo possimus voluptatem inventore est et. Magnam id voluptatem dolor reprehenderit quam dolores. Quo est explicabo nulla sequi. Earum recusandae veniam repellendus quo reiciendis. Laboriosam rerum dolor nihil omnis qui non.', '2022-12-12', 'dicta est', 432, '2022-02-03 14:25:56', '2022-02-03 14:25:56', 'MED338'),
(615, 2, 'recusandae id', 'recusandae-id', '80.00', 38, 'Sapiente provident qui et voluptatibus. Totam error officiis possimus quod. Suscipit ut quidem totam necessitatibus voluptatem inventore qui rerum. Ut reprehenderit et perferendis qui. In repellat voluptatem tempore quae recusandae aut enim. Nihil ab voluptas aut aliquid earum. Suscipit nostrum quis occaecati non et. Ut debitis aliquid quibusdam blanditiis saepe consectetur recusandae. Commodi praesentium maiores est blanditiis assumenda vitae porro.', '2022-12-12', 'deserunt cum', 343, '2022-02-03 14:25:56', '2022-02-03 14:25:56', 'MED9979'),
(616, 2, 'dicta molestiae', 'dicta-molestiae', '47.00', 33, 'Culpa dolorem ut et qui. Perferendis asperiores vel dolor et. Praesentium quasi sint quis quis. Blanditiis accusamus sunt tempora sunt. Et sint perferendis velit voluptatem. Eum occaecati in ullam nihil. Sint est culpa veniam. Sit nesciunt ea vel doloremque. Ex tenetur magnam et magnam suscipit dolores.', '2022-12-12', 'eos placeat', 804, '2022-02-03 14:25:56', '2022-02-03 14:25:56', 'MED2690'),
(617, 2, 'qui consequatur', 'qui-consequatur', '53.00', 69, 'Corporis eaque qui provident tempora rem. Dolor recusandae qui voluptates soluta laboriosam consectetur sed. Neque officiis occaecati exercitationem ut facere repellat. Amet accusantium nesciunt modi et et. Et occaecati est ab. Perspiciatis esse et libero a omnis a. Eos quidem cum veniam omnis odit saepe. Expedita eaque dolorum accusamus molestiae officiis ipsa aspernatur nam.', '2022-12-12', 'labore nulla', 182, '2022-02-03 14:25:56', '2022-02-03 14:25:56', 'MED7964'),
(618, 2, 'eaque autem', 'eaque-autem', '20.00', 36, 'Eos eaque non ad sapiente officiis. Veritatis cupiditate dolorem expedita dicta iste dolores ullam. Quas nostrum aperiam harum quia architecto. Aperiam et autem quaerat exercitationem. Reiciendis ipsum asperiores eius rerum sint consectetur dolores sint. Sit et eligendi adipisci ut voluptatem. Repudiandae officiis totam consequuntur enim esse quia.', '2022-12-12', 'quo reprehenderit', 914, '2022-02-03 14:25:56', '2022-02-03 14:25:56', 'MED4474'),
(619, 2, 'dolores maiores', 'dolores-maiores', '12.00', 15, 'Non ad provident quod odio ut incidunt esse. Odit possimus qui quis cum possimus voluptatem. Sed nam fuga qui in beatae. Animi vitae dolore dolores asperiores. Quo sunt sunt distinctio sunt aliquam voluptas quia suscipit. Rerum eius exercitationem molestias quae saepe ipsa. Dolorem dolore qui rerum quos et est. Eum magni repellendus molestias enim. Vel sint voluptas ut ipsa nisi voluptatum sapiente. Qui vitae facilis tempore modi.', '2022-12-12', 'nobis sunt', 405, '2022-02-03 14:25:56', '2022-02-03 14:25:56', 'MED702'),
(620, 2, 'et architecto', 'et-architecto', '57.00', 72, 'Et vero optio aliquid fugit. Et quis sed omnis repellat fugiat tempora quaerat. Voluptate ea voluptates consequatur consequatur. Qui eius qui reprehenderit culpa. Distinctio nesciunt excepturi neque sed. Consequatur excepturi doloremque rem sunt. Magni quaerat at ipsa enim inventore. Recusandae itaque quibusdam sed quia. Voluptatum quia voluptatem iusto et et. Quas enim magnam quasi architecto corrupti. Culpa aut quisquam esse quis veniam.', '2022-12-12', 'nobis exercitationem', 229, '2022-02-03 14:25:56', '2022-02-03 14:25:56', 'MED8161'),
(621, 2, 'dolorem optio', 'dolorem-optio', '72.00', 77, 'Dolor facere quia maiores ea consequatur et provident. Perferendis nesciunt qui quia deleniti consequatur. Quasi repellendus voluptate quae libero velit repudiandae sequi. Consectetur quidem nobis voluptas sequi aperiam. Quo ipsam et et architecto non voluptatem maiores praesentium. Ab quo fuga laboriosam necessitatibus laboriosam quaerat accusantium. Neque molestias veniam officiis libero iure magnam.', '2022-12-12', 'nam cumque', 360, '2022-02-03 14:25:56', '2022-02-03 14:25:56', 'MED7183'),
(622, 2, 'fuga non', 'fuga-non', '44.00', 75, 'Amet similique repudiandae illo rerum. Eaque ex et iste iure. Accusamus ex voluptatem illo voluptatem sit. Laudantium quam quia nisi vel nemo distinctio iusto. Autem ea unde omnis aperiam recusandae minus corporis. Voluptatum debitis qui eaque. Autem sit et dolores asperiores. Laborum et temporibus id ratione reiciendis modi molestiae.', '2022-12-12', 'dolore voluptatem', 529, '2022-02-03 14:25:56', '2022-02-03 14:25:56', 'MED8355'),
(623, 2, 'architecto dolorem', 'architecto-dolorem', '22.00', 15, 'Id aut suscipit repellendus est. Neque provident rem distinctio ullam. Magnam eius sint repellat libero qui est quam. Sed ab reiciendis ad et molestiae. Qui quaerat dolore magnam et. Quibusdam est nisi quisquam earum nobis eligendi. Qui earum nisi consectetur et. Dignissimos suscipit voluptatem in enim veritatis eius pariatur. Nihil eius voluptates velit impedit. Ut saepe dolor esse tenetur repellat sequi. At id nisi qui odit. Aliquid accusamus vel eos et. Est sit quisquam et.', '2022-12-12', 'facere molestias', 411, '2022-02-03 14:25:56', '2022-02-03 14:25:56', 'MED4028'),
(624, 2, 'dolor aperiam', 'dolor-aperiam', '99.00', 32, 'Perspiciatis fuga ut quibusdam quod eligendi. Nesciunt est qui adipisci quod nam. Nostrum minima at molestias. Ad culpa nihil officiis soluta. Esse est dolorem beatae. Ad dolorem non harum sit facere. Architecto fugiat vel corporis placeat excepturi quod magnam. Nostrum ex provident quia aperiam qui. Quidem laudantium dolorum eos dolore. Natus perferendis ipsa et ut molestias.', '2022-12-12', 'animi placeat', 312, '2022-02-03 14:25:56', '2022-02-03 14:25:56', 'MED9540'),
(625, 2, 'sed consequuntur', 'sed-consequuntur', '82.00', 11, 'Ut minima cupiditate consequatur voluptas quisquam saepe iure. Optio inventore iure nam repudiandae. Fugiat odit officia omnis est pariatur eveniet quo et. Incidunt dolores quam ipsa. Nesciunt ipsum hic eius facilis dicta nobis. Nulla accusamus qui quia sint praesentium tempore itaque. Eius explicabo consequuntur aut quo tempora. Aliquam quis impedit asperiores reiciendis alias enim laborum. Et et eaque adipisci aut. Cupiditate nihil dignissimos inventore quia qui beatae eaque.', '2022-12-12', 'modi voluptatum', 994, '2022-02-03 14:25:56', '2022-02-03 14:25:56', 'MED5668'),
(626, 2, 'ducimus non', 'ducimus-non', '61.00', 75, 'Et ut suscipit laborum consectetur ipsa soluta. Doloribus nobis et eligendi labore sit. Repudiandae est hic incidunt sapiente cum delectus minima. Nihil dolores beatae similique non dolores voluptatem voluptatum. Occaecati animi doloribus pariatur enim doloribus quam ut nobis. Repudiandae praesentium officiis omnis recusandae. Voluptatibus recusandae voluptatibus optio ipsa maiores. Ut soluta ipsum laborum.', '2022-12-12', 'voluptatem eos', 600, '2022-02-03 14:25:56', '2022-02-03 14:25:56', 'MED563'),
(627, 2, 'eius et', 'eius-et', '74.00', 95, 'Aut soluta adipisci cupiditate consequatur. Quia voluptatem repudiandae accusamus. Mollitia in odio sequi consequatur et id qui. Enim qui molestias et alias nihil rerum quo nostrum. Ad aut eos est est adipisci. Accusantium et impedit repudiandae sunt reprehenderit ipsum. Animi aut delectus consequatur et aspernatur ut aut.', '2022-12-12', 'et ratione', 599, '2022-02-03 14:25:56', '2022-02-03 14:25:56', 'MED5899'),
(628, 2, 'laboriosam facilis', 'laboriosam-facilis', '45.00', 62, 'Deserunt nihil architecto hic necessitatibus. Ipsa sunt est et labore. Vero quam repudiandae deserunt placeat. Quidem dolores quis voluptatem mollitia. Eligendi quae dolorum odit delectus. Odit rem natus impedit illo. Ea consequatur deserunt quae quia est. Ipsa explicabo repellat dolore repellat sint dolorum.', '2022-12-12', 'qui laborum', 38, '2022-02-03 14:25:56', '2022-02-03 14:25:56', 'MED8918'),
(629, 2, 'omnis sunt', 'omnis-sunt', '56.00', 71, 'Ut molestiae dolor aut quaerat quaerat veritatis. Fugit iste est deserunt. Commodi saepe nihil non soluta ut ut. Rerum quia dolorem corrupti. Adipisci sed molestiae omnis sit. Non autem quo odio ut. Velit dolorem molestiae et deserunt ut similique. Rerum quo voluptatem omnis deleniti sequi dignissimos suscipit. Sit dolore eligendi aut sit. Magnam nostrum veritatis atque aut. Facilis enim perferendis minus nam id nam qui.', '2022-12-12', 'laboriosam sed', 998, '2022-02-03 14:25:56', '2022-02-03 14:25:56', 'MED9648'),
(630, 2, 'sunt fugit', 'sunt-fugit', '25.00', 23, 'Qui qui ut odio ut. Dolores omnis maxime asperiores voluptatem. Culpa dolor aut et consequatur consequatur illo dolores. Doloribus et repellat facere aut nesciunt officia aut. Aut et laboriosam ipsa veniam. Repudiandae suscipit omnis eos excepturi eaque non. Asperiores nulla et explicabo temporibus. Dolor est saepe deserunt dolorum sunt. Rem et quaerat culpa. Accusamus fugit dicta aut consectetur inventore.', '2022-12-12', 'totam quas', 921, '2022-02-03 14:25:56', '2022-02-03 14:25:56', 'MED9751'),
(631, 2, 'quam reprehenderit', 'quam-reprehenderit', '96.00', 41, 'Doloribus quia fugit quo unde. Exercitationem maxime quis et earum vel nemo voluptate. Voluptatum ipsa est sint necessitatibus officia. Perferendis quaerat ut placeat qui ea dolorem nemo aperiam. Ad cupiditate qui veniam iste impedit quia. Quisquam facere ea delectus et cumque repellat. Facilis molestiae quo voluptatibus. Voluptatem facilis architecto dolorem quod distinctio. Provident eum harum quis est est. Deserunt voluptatem ad ut eligendi.', '2022-12-12', 'laboriosam omnis', 661, '2022-02-03 14:25:56', '2022-02-03 14:25:56', 'MED1040'),
(632, 2, 'nisi et', 'nisi-et', '54.00', 40, 'Ipsa aut odio repellendus ipsa. Recusandae quia consectetur tenetur dolores. Ea quos occaecati explicabo ab neque ut et ut. Iure rerum porro quia rerum qui reiciendis qui. Autem neque alias assumenda labore quia voluptatem. Modi voluptatem voluptatem sint dolorem aut. Officiis voluptate et nesciunt aliquid illo quo. Doloremque harum et quaerat ipsam possimus nihil ut voluptate. Ipsam ullam ut maiores adipisci. Maiores id occaecati laboriosam dolorum et quisquam.', '2022-12-12', 'ut nobis', 484, '2022-02-03 14:25:56', '2022-02-03 14:25:56', 'MED7858'),
(633, 2, 'officiis itaque', 'officiis-itaque', '55.00', 11, 'Tempore vitae cum corporis praesentium beatae. Nemo quia iure perspiciatis minima et illo illo. Molestias voluptate provident harum nam. Inventore accusantium dolorem et dolores et sapiente qui. Magni asperiores sequi minima et. Rerum facilis eum consequatur veniam. Eum quasi sit illo minima dignissimos vitae. Magni recusandae explicabo quo et quibusdam optio. Quis ut et error architecto.', '2022-12-12', 'facere ea', 374, '2022-02-03 14:25:56', '2022-02-03 14:25:56', 'MED2647'),
(634, 2, 'ut non', 'ut-non', '77.00', 55, 'Rerum quos dolorem veniam qui. Explicabo suscipit quia veritatis neque molestias enim nam. Unde necessitatibus sed sapiente blanditiis blanditiis inventore esse ut. Expedita similique quia rerum et commodi unde sit. Voluptate itaque accusantium qui eaque debitis. Dolorem non rerum mollitia quis ab impedit. Eos velit ab reiciendis voluptatem. Natus minus porro magnam amet. Sunt voluptas placeat quos deleniti nemo saepe.', '2022-12-12', 'at consequatur', 199, '2022-02-03 14:25:56', '2022-02-03 14:25:56', 'MED4184'),
(635, 2, 'quis temporibus', 'quis-temporibus', '14.00', 100, 'Animi eos sit occaecati voluptatibus et harum nesciunt minima. Minima odit quae reprehenderit aperiam repellat. Optio est sapiente qui illo. Tempora earum placeat enim sit ipsam ex earum. Aut cum sint ab tempore omnis. Maxime maxime sed sit perspiciatis aliquid libero. Asperiores molestias sint voluptatibus aspernatur. Ipsam est error consequuntur sunt. In qui quasi quod neque velit numquam ut. Harum eligendi excepturi veniam quis. Sed occaecati a reiciendis labore est aut.', '2022-12-12', 'qui voluptatem', 175, '2022-02-03 14:25:56', '2022-02-03 14:25:56', 'MED9319'),
(636, 2, 'quaerat molestiae', 'quaerat-molestiae', '98.00', 21, 'Est eum iure est earum distinctio ab ut. Aut architecto quo voluptas. Nobis sed velit voluptatem fugit voluptate. Esse adipisci reprehenderit sequi. Dolor nulla hic quia. Omnis sed aut et fuga id et beatae. Dignissimos architecto in pariatur. Vel nobis nobis non iste necessitatibus. Rerum accusantium omnis sunt aut. Neque cumque accusantium quia molestiae labore. Recusandae optio in voluptas nostrum saepe ratione voluptatem. Magni autem sapiente consectetur quia.', '2022-12-12', 'quia ut', 34, '2022-02-03 14:25:56', '2022-02-03 14:25:56', 'MED2200'),
(637, 2, 'consequatur doloribus', 'consequatur-doloribus', '24.00', 82, 'Vel atque saepe voluptates sapiente. Quis eos odio error excepturi. Sit maiores eos dolores reiciendis voluptate molestiae. Nam consequuntur officiis vel voluptas officia. Porro expedita aut rerum veritatis. Modi voluptatem et ullam deleniti saepe sed. Deleniti qui fugiat minus eligendi. Qui officia vel voluptas fuga in eos consequatur ut. Nobis ab nulla similique eos odit aut rerum fugiat. In assumenda illo necessitatibus sint inventore vel. Sed accusamus aut quia ut rem placeat quaerat.', '2022-12-12', 'nobis architecto', 430, '2022-02-03 14:25:56', '2022-02-03 14:25:56', 'MED8966'),
(638, 2, 'suscipit nihil', 'suscipit-nihil', '14.00', 50, 'Molestiae voluptate expedita necessitatibus. Aut corrupti eius eligendi voluptate non eaque. Eveniet sed aut dolorum voluptates enim omnis beatae asperiores. Rerum sed itaque rerum non. Ut incidunt atque in non sequi ab veritatis. Consequatur reprehenderit atque impedit non temporibus cumque accusantium. Tenetur quis sed recusandae. Incidunt minus occaecati labore corporis.', '2022-12-12', 'cupiditate dicta', 344, '2022-02-03 14:25:56', '2022-02-03 14:25:56', 'MED9712'),
(639, 2, 'aut maxime', 'aut-maxime', '24.00', 29, 'Occaecati ut velit atque sed quos. Sequi qui voluptas excepturi sit. Voluptatibus vero ipsum et. Voluptatem cupiditate eligendi nobis est. Possimus laboriosam quia et. Quibusdam et et nostrum dolores ipsa. Voluptas eos nam quia velit. Sequi voluptates molestiae ut consequuntur. Nisi magni vel nesciunt blanditiis soluta non. Vitae qui porro occaecati iste ut laboriosam.', '2022-12-12', 'soluta illum', 793, '2022-02-03 14:25:56', '2022-02-03 14:25:56', 'MED3451'),
(640, 2, 'labore tempora', 'labore-tempora', '60.00', 56, 'Nihil molestiae consequatur quisquam rerum dolor. Omnis commodi sed est dolor est porro cupiditate. Aut cupiditate qui adipisci molestiae maiores tenetur. Fuga ullam ut necessitatibus rerum sunt sunt ipsa molestiae. Eius assumenda aut exercitationem est. Officiis tempora repellat reiciendis ex. Repellat non repellat qui. Minima repellat quos vero dolor. Ut accusamus sapiente distinctio fugiat quia deserunt.', '2022-12-12', 'quo omnis', 239, '2022-02-03 14:25:56', '2022-02-03 14:25:56', 'MED7429'),
(641, 2, 'est laborum', 'est-laborum', '57.00', 90, 'Neque neque omnis soluta magni praesentium. Reiciendis ut omnis odit. Voluptatem aperiam enim quidem similique possimus soluta tempora. Itaque qui fugiat illo veritatis vel distinctio. In molestiae repellendus fugit amet. Asperiores occaecati et repudiandae commodi ipsam. Voluptatem est repellendus ex praesentium aut doloribus. Et omnis corrupti omnis qui aspernatur. Eos nam quaerat assumenda molestiae iste. Reiciendis libero sint ut nihil aliquid qui quam. Earum reiciendis sed ipsum porro qui.', '2022-12-12', 'sed illum', 288, '2022-02-03 14:25:56', '2022-02-03 14:25:56', 'MED77'),
(642, 2, 'molestiae aut', 'molestiae-aut', '28.00', 90, 'Soluta amet quibusdam molestiae nihil quis quia cupiditate et. Enim illo at quae molestiae tempore ut pariatur. Quaerat cumque et itaque ducimus. Quae aperiam a rerum eius. Magnam aut voluptatem reprehenderit inventore autem porro. Voluptas in maiores similique molestiae quis eligendi laudantium. Consequatur eligendi voluptas adipisci neque. Voluptatem qui doloribus aut quasi repudiandae.', '2022-12-12', 'consectetur dolor', 54, '2022-02-03 14:25:56', '2022-02-03 14:25:56', 'MED2638'),
(643, 2, 'praesentium dolorum', 'praesentium-dolorum', '80.00', 99, 'Labore quisquam repudiandae blanditiis qui dicta. Atque ducimus deserunt saepe voluptas. Cupiditate dolore qui magni. Est et est rem corporis a molestiae. Rerum cumque quidem fugit aut tenetur blanditiis accusamus. Accusamus laborum qui perferendis. Id nemo reiciendis consequatur non aut repudiandae. Ut officia libero animi officia omnis nemo quas. Non atque eum distinctio voluptas. Suscipit temporibus est itaque est.', '2022-12-12', 'ut officia', 921, '2022-02-03 14:25:56', '2022-02-03 14:25:56', 'MED2418'),
(644, 2, 'exercitationem voluptatem', 'exercitationem-voluptatem', '6.00', 82, 'Exercitationem nam consectetur impedit eligendi eaque ex iure. Nobis officia deleniti placeat voluptatem. Praesentium sint nihil quisquam voluptates quia reprehenderit similique. Qui beatae aut doloremque. Iusto quia et placeat ducimus impedit et. Laboriosam rerum mollitia sunt sit. Eaque consequuntur ab perferendis. Tempore consectetur sint asperiores qui qui sit voluptatem. Minus veritatis beatae dolor a praesentium suscipit harum. Dolorem voluptas numquam dolorem ipsam maxime.', '2022-12-12', 'consequatur sunt', 225, '2022-02-03 14:25:56', '2022-02-03 14:25:56', 'MED85'),
(645, 2, 'rerum magni', 'rerum-magni', '3.00', 42, 'Necessitatibus aut molestias ea nihil. Consectetur ipsa sed id sit quae quas. Quia officia libero consequatur fuga. Omnis expedita voluptatem iste sequi et. Corporis rerum ea vero. Ullam ad tenetur blanditiis ab perspiciatis cum dolores. Ipsa quisquam repellendus sed qui perspiciatis dolor perferendis. Aut quae natus nemo consequatur beatae aliquid beatae.', '2022-12-12', 'adipisci quo', 691, '2022-02-03 14:25:56', '2022-02-03 14:25:56', 'MED6513'),
(646, 2, 'rerum fugiat', 'rerum-fugiat', '94.00', 24, 'Similique aut commodi sapiente eveniet. Explicabo totam id ad dicta est. Quos odit a mollitia autem recusandae. Praesentium rerum nihil nesciunt et soluta odio blanditiis. Libero sed optio asperiores praesentium ullam aut minima. At eveniet et occaecati minima dignissimos quo. Autem et corrupti aperiam aliquam. Ducimus dignissimos esse quia quia autem rerum magnam.', '2022-12-12', 'dolorem esse', 202, '2022-02-03 14:25:56', '2022-02-03 14:25:56', 'MED3578'),
(647, 2, 'sed nulla', 'sed-nulla', '59.00', 55, 'Eum ea quia et esse. Consectetur velit quia eius enim qui nobis beatae commodi. Dolor odio ipsa recusandae sit. Maiores quo maiores doloribus aut qui. Necessitatibus maxime qui et quibusdam quis et eos. Dolor iure molestiae consequatur sint iure quia consequatur incidunt. Ratione enim eum ipsa debitis magni. Veniam a illo ex facilis quia occaecati. Eum non harum adipisci. Quia sed dolor sapiente et eaque voluptatem.', '2022-12-12', 'magnam doloremque', 142, '2022-02-03 14:25:56', '2022-02-03 14:25:56', 'MED6946'),
(648, 2, 'enim dignissimos', 'enim-dignissimos', '87.00', 50, 'Laborum accusantium aperiam reiciendis. Perspiciatis repudiandae et cumque dolore. Vitae debitis repudiandae quis delectus pariatur et libero vitae. Ea ea eum nihil aut. Quo rerum et ratione. Est molestias ab fuga enim. Neque ut eos quia voluptas esse. Qui necessitatibus id dolore sit. Est qui cumque nam itaque et quidem delectus eaque. Quos rerum est doloribus hic corporis occaecati doloribus. Nostrum omnis in porro eligendi.', '2022-12-12', 'perferendis in', 108, '2022-02-03 14:25:56', '2022-02-03 14:25:56', 'MED1994'),
(649, 2, 'est est', 'est-est', '11.00', 69, 'Beatae provident corporis atque ratione animi neque quis. Aut cumque aspernatur eveniet aut error quia. In distinctio quis consequuntur recusandae explicabo. Fuga repellat ratione non aliquid. Nulla molestiae hic omnis quibusdam corporis et ea. Fugit corrupti assumenda odio corporis delectus dolores. Quaerat voluptatem corrupti aliquid ipsum autem et. Ducimus laborum consectetur ipsum tempore odit et. Veritatis optio earum quos est debitis rem. Modi est est et libero.', '2022-12-12', 'voluptas qui', 222, '2022-02-03 14:25:56', '2022-02-03 14:25:56', 'MED2511'),
(650, 2, 'dolorem tempora', 'dolorem-tempora', '59.00', 47, 'Ex ea qui asperiores reiciendis. Accusamus laudantium voluptas voluptatem et omnis ut. Occaecati eius amet culpa pariatur ut ducimus perspiciatis. Aut aut qui vel rerum a rerum. Sunt facere excepturi excepturi et alias. Ipsam praesentium non dolorum libero. Quas est sed delectus porro. Fugit voluptas at sit ratione.', '2022-12-12', 'ullam ab', 959, '2022-02-03 14:25:56', '2022-02-03 14:25:56', 'MED3196'),
(651, 2, 'inventore qui', 'inventore-qui', '1.00', 37, 'Dolore ducimus alias est laborum est aspernatur culpa. Sit vero et iusto sint illo et. Dolorum laborum voluptatem optio enim suscipit corporis aliquid cupiditate. Rerum velit maiores exercitationem non deserunt aut. Commodi et voluptatum eius excepturi magnam. Explicabo dolor autem in ut qui porro. Rem officia consectetur consequatur illum quod. Labore iusto libero voluptates eos eos corrupti.', '2022-12-12', 'aliquam aliquam', 795, '2022-02-03 14:25:56', '2022-02-03 14:25:56', 'MED3190'),
(652, 2, 'eveniet eum', 'eveniet-eum', '95.00', 11, 'Molestias recusandae rerum earum nisi voluptatem. Voluptatem accusamus excepturi quasi debitis necessitatibus totam maxime et. Et quia sed quaerat et dolor tenetur. Veritatis eum et voluptas a odit qui. Eos dolores laudantium iure qui ipsa voluptas suscipit. Odio corporis quam occaecati vel maiores sit ut aut. Et dolorem suscipit ut sint. Magni qui doloremque id dolore soluta libero repellendus. Velit accusantium illum similique aliquam beatae tenetur.', '2022-12-12', 'voluptates voluptatibus', 164, '2022-02-03 14:25:56', '2022-02-03 14:25:56', 'MED2829'),
(653, 2, 'officia molestiae', 'officia-molestiae', '1.00', 49, 'Maiores perspiciatis nesciunt omnis vero quas. Ea eos quam voluptatem. Libero quo commodi velit. Illum ex quia consequatur sed. Esse enim rerum temporibus non iste. Minima consequuntur corporis dolorem error vero sed. Eveniet rerum molestiae quibusdam quo impedit maiores harum. Et ex eius quia dolorem. Numquam pariatur numquam voluptates doloremque officia tenetur. Commodi omnis eius iusto libero nesciunt.', '2022-12-12', 'eos sequi', 967, '2022-02-03 14:25:56', '2022-02-03 14:25:56', 'MED1811'),
(654, 2, 'illum est', 'illum-est', '45.00', 76, 'Quam nisi atque sed tempore nihil fugit suscipit. Veniam dolorem laborum modi. Et itaque sed sint ut. Quae dolorum reiciendis voluptas harum accusantium inventore fuga. Sapiente facere et atque dolorem et. Vel voluptas facere quas perferendis quas. Distinctio suscipit possimus officia architecto eius. Amet molestiae laborum magnam et nihil.', '2022-12-12', 'tempora officia', 391, '2022-02-03 14:25:56', '2022-02-03 14:25:56', 'MED4390'),
(655, 2, 'ut eius', 'ut-eius', '95.00', 50, 'Et sed est rerum debitis nihil. Sequi aliquam et sint laboriosam quo exercitationem. Quibusdam cum occaecati unde explicabo praesentium sit. Et ut quas esse deleniti. Quisquam et distinctio exercitationem in. Ut eos doloremque sed quo odit ipsa. Voluptatem voluptatibus qui doloremque est error laboriosam eius id. Ad repudiandae sit mollitia quasi nobis possimus fugiat laborum. Est nobis sed officiis sed magni debitis qui. Impedit officia ipsa est sint sunt consectetur eius.', '2022-12-12', 'nulla deserunt', 275, '2022-02-03 14:25:56', '2022-02-03 14:25:56', 'MED3631'),
(656, 2, 'sint voluptas', 'sint-voluptas', '63.00', 93, 'Illum nostrum ipsum mollitia sapiente officiis. Optio voluptatum sequi et tempora minima. Id repellat eum quia. Consequatur dolores qui qui consequatur sed ut ullam. Perspiciatis nam facilis cupiditate nam quis quod rerum. Asperiores corporis molestiae facere ut qui debitis nobis. Laudantium possimus hic ut veniam numquam asperiores. Sit aut asperiores expedita porro iure voluptatem magnam non. Consequatur enim nam aliquam ut deserunt. Excepturi laudantium ullam quam minus.', '2022-12-12', 'aliquam velit', 57, '2022-02-03 14:25:56', '2022-02-03 14:25:56', 'MED6094'),
(657, 2, 'sed excepturi', 'sed-excepturi', '19.00', 83, 'Ipsa autem iusto rerum velit. Labore architecto explicabo deserunt voluptatem velit non enim. Amet esse aut provident veniam qui aut pariatur. Velit labore in a est alias est. Et id mollitia illum repudiandae sit dolores id. Iure veniam ut voluptatem voluptatem quasi rerum. Quod sit similique earum hic. Ut quam officia aspernatur ad sint. Quae vel omnis vero omnis. Libero eos qui soluta voluptas praesentium omnis. Quas exercitationem quibusdam vitae. Quia a qui deserunt quaerat.', '2022-12-12', 'nihil voluptatem', 797, '2022-02-03 14:25:56', '2022-02-03 14:25:56', 'MED3172'),
(658, 2, 'autem sapiente', 'autem-sapiente', '6.00', 98, 'Quia harum rem hic et quia aut minima. Sapiente nam dignissimos a unde vitae aut corrupti. Ullam voluptates qui optio. Et sequi rerum rerum. Deserunt nihil velit quia aliquid aspernatur. Autem est soluta nostrum rerum tempore. Vel at ea omnis error rerum. Qui culpa eum fugit saepe accusantium. Quidem cumque animi voluptatem vitae vel non illo.', '2022-12-12', 'et non', 198, '2022-02-03 14:25:56', '2022-02-03 14:25:56', 'MED2626'),
(659, 2, 'tempore dicta', 'tempore-dicta', '92.00', 77, 'Nostrum dolorem culpa dignissimos qui. Omnis voluptatibus quo necessitatibus quis tempora corporis. Suscipit facere aspernatur dolor dolores dolores perspiciatis natus. Dicta possimus vero animi qui dicta voluptatem. Dolor rerum sed dolor dolorem deleniti. Et rerum occaecati ut ullam enim nostrum aut odio.', '2022-12-12', 'atque qui', 313, '2022-02-03 14:25:56', '2022-02-03 14:25:56', 'MED4572'),
(660, 2, 'ea qui', 'ea-qui', '59.00', 61, 'Sunt dolor explicabo cum voluptatibus nihil rem delectus. Mollitia ut sequi ea eveniet minus consequatur nesciunt. Nesciunt laborum ipsum sed eligendi. Sint rem et numquam soluta quae. Repellat et nihil laudantium distinctio voluptate tempore fuga. Quo minima qui non cumque hic ratione quis autem. Eos assumenda sit necessitatibus et velit non enim dignissimos. Aspernatur est sapiente dolorem nemo est.', '2022-12-12', 'ducimus ut', 204, '2022-02-03 14:25:56', '2022-02-03 14:25:56', 'MED2051'),
(661, 2, 'ab commodi', 'ab-commodi', '30.00', 98, 'Saepe similique eaque molestiae maxime facere iste reprehenderit. Qui est veniam fugit excepturi. Eaque et impedit nemo dignissimos nobis cum. Delectus doloremque quidem sint est quas harum voluptatem. Aut similique repudiandae quis aliquam recusandae. Quod expedita amet placeat dignissimos non ullam. Et repellendus laboriosam nisi molestias. Consequuntur laudantium tempore atque sapiente qui. Atque quo explicabo eligendi veniam aliquam. Commodi exercitationem et et ut.', '2022-12-12', 'pariatur porro', 937, '2022-02-03 14:25:56', '2022-02-03 14:25:56', 'MED3239'),
(662, 2, 'porro molestiae', 'porro-molestiae', '58.00', 43, 'Sed consectetur rem et vero veniam tempore accusantium officia. Qui vitae doloribus est ea nihil. Reiciendis maxime enim odit. Enim maiores est velit ipsa. Sit ipsam dignissimos accusamus quo est. Iusto hic et voluptatem nostrum sit in recusandae. Ut eius distinctio eos quam. Reiciendis iusto voluptates deserunt voluptatem repellendus. Porro est voluptas placeat repellat aliquid. Nam cupiditate quis sit. Unde sint earum voluptatibus ut adipisci quod ut.', '2022-12-12', 'delectus et', 892, '2022-02-03 14:25:56', '2022-02-03 14:25:56', 'MED9997'),
(663, 2, 'dolor exercitationem', 'dolor-exercitationem', '57.00', 16, 'Nemo ad quia beatae et quo ad accusantium porro. Voluptatum excepturi deserunt tempora. Architecto quaerat consequatur reiciendis odit. Voluptas numquam voluptate odio exercitationem voluptatem. Aut deserunt dolores qui eligendi aut. Similique dolor velit qui est sit consequatur. Molestiae non expedita expedita. Expedita sunt ab aspernatur laborum expedita qui id. Ad dolorem quod eligendi.', '2022-12-12', 'vitae eum', 904, '2022-02-03 14:25:56', '2022-02-03 14:25:56', 'MED8797'),
(664, 2, 'facere ex', 'facere-ex', '93.00', 68, 'Voluptas beatae facilis et nisi. Non saepe delectus ut ratione. Et quam voluptas et architecto eos praesentium quas. Deleniti enim quaerat voluptatem et aspernatur dignissimos consequatur. Qui ipsa non id natus. Corrupti blanditiis libero dolores maiores. Unde voluptate odio aliquam itaque et officiis qui at. Consequatur aut architecto est ea. Est in qui ratione ut.', '2022-12-12', 'reprehenderit saepe', 961, '2022-02-03 14:25:56', '2022-02-03 14:25:56', 'MED4697'),
(665, 2, 'ducimus unde', 'ducimus-unde', '5.00', 79, 'Vel reiciendis molestias non nihil amet libero id maxime. Rerum ex et corporis tempora debitis fugit. Doloribus pariatur laborum et sunt inventore vitae expedita. Quia nulla vel quia quia excepturi. Enim et est autem aliquam. Nulla eligendi in veniam rerum voluptatem nesciunt. Quasi numquam ut dolor sint in. Sint maxime dolor qui. Velit dolor aut amet magni.', '2022-12-12', 'aliquam temporibus', 680, '2022-02-03 14:25:56', '2022-02-03 14:25:56', 'MED5809'),
(666, 2, 'cumque placeat', 'cumque-placeat', '91.00', 97, 'Commodi voluptatem incidunt natus dolorem. Qui ipsa dolores aut numquam voluptates impedit amet. Enim et et ipsum expedita exercitationem. Mollitia repellendus ut consequatur officia. Ad eaque quas excepturi est non adipisci sed. Rerum ab molestias nam quis nostrum dolorem. Aut perferendis enim quia. Dolorem dolorem qui minima nostrum sunt totam qui. Ut saepe consequuntur qui totam et recusandae. Soluta sed rem magnam dolorem nihil.', '2022-12-12', 'voluptas animi', 598, '2022-02-03 14:25:56', '2022-02-03 14:25:56', 'MED2692'),
(667, 2, 'necessitatibus numquam', 'necessitatibus-numquam', '33.00', 31, 'Aliquid recusandae quasi voluptates odit. Autem ut inventore molestiae odit molestiae. Sint aut nobis sunt quia eum molestiae. Repudiandae accusamus ut non magni qui eos a. Aut et eum rerum. Et molestiae ut asperiores ipsam illo voluptas. Qui aliquam exercitationem eaque et natus earum impedit error. Possimus rem ipsum nulla qui distinctio blanditiis repellat. Quaerat eum incidunt eum rerum sed molestias vitae mollitia. Rerum et qui provident odio culpa et.', '2022-12-12', 'dolorem sit', 537, '2022-02-03 14:25:56', '2022-02-03 14:25:56', 'MED2389'),
(668, 2, 'ipsa laborum', 'ipsa-laborum', '35.00', 55, 'Facere ut praesentium et blanditiis officia qui sapiente. Distinctio quia in dolorem et deserunt quibusdam. Aut saepe at autem aperiam perferendis. Voluptatem debitis consequuntur fugiat architecto modi et ut. Ea velit quis neque amet nisi. Eum quis voluptas natus non dolorem. Ex quis voluptatem repellendus nihil fugiat nostrum voluptatem. Et qui occaecati distinctio perferendis est modi. In dolor at molestiae. Incidunt minus ut aut. Veritatis nisi cumque et dolorem debitis velit et.', '2022-12-12', 'perspiciatis tempora', 480, '2022-02-03 14:25:56', '2022-02-03 14:25:56', 'MED528'),
(669, 2, 'recusandae aut', 'recusandae-aut', '2.00', 11, 'Dolores vitae quis officia aspernatur. Nesciunt sapiente quo dolorem quos asperiores. Et ab est dolor eius ipsam. Reiciendis officia dolore ut fugiat. Nobis dolorum qui unde dolorem fugiat. Velit repellendus earum doloremque soluta. Porro fugiat inventore aperiam rem voluptatibus accusamus a voluptatem. Adipisci magnam illo natus facilis aliquid ad enim. Est voluptas aut et dolorem ut.', '2022-12-12', 'dolor culpa', 895, '2022-02-03 14:25:56', '2022-02-03 14:25:56', 'MED6591'),
(670, 2, 'ullam ratione', 'ullam-ratione', '10.00', 16, 'Esse occaecati voluptatem aut et. Molestiae a dicta impedit voluptate praesentium consequatur. Sunt qui ut nostrum perspiciatis. Et praesentium aut delectus. Quod soluta sed quia maxime corrupti consequuntur cupiditate aspernatur. Omnis quis voluptatem debitis nesciunt quia debitis harum. Quae ut enim non quo aut ut sed. Qui quod minima commodi omnis fugiat. Repellendus impedit ducimus soluta et. Sunt nulla aperiam eum. Amet autem veniam et.', '2022-12-12', 'asperiores harum', 771, '2022-02-03 14:25:56', '2022-02-03 14:25:56', 'MED1796'),
(671, 2, 'quia natus', 'quia-natus', '25.00', 50, 'Vero aperiam autem sunt voluptas. Qui similique consequuntur rerum veritatis amet totam. Sapiente non consequuntur praesentium sit qui molestiae. Aut aut qui cupiditate sed. Ex totam recusandae nobis. Unde eum voluptatem minus omnis. Et esse suscipit sed consequatur voluptatem architecto sed. Ipsa tempore voluptatem commodi asperiores ipsam sint. Eaque animi alias beatae totam et nam.', '2022-12-12', 'sed aut', 372, '2022-02-03 14:25:56', '2022-02-03 14:25:56', 'MED8251'),
(672, 2, 'quo aut', 'quo-aut', '33.00', 92, 'Odio quas et qui quisquam et et praesentium. Voluptas voluptatum quos assumenda aut. Dolorem delectus sit omnis. In quidem ea sit eaque et. Sed omnis sit tenetur qui iste et. Similique consequuntur est sapiente at quaerat officiis totam. Qui corporis accusamus voluptas sit. Non sit nemo molestias voluptas. Cum sunt neque sed veniam natus asperiores. Et est fuga incidunt. Architecto sint dolor modi tenetur nihil rerum maxime. Perferendis aliquid dolor autem assumenda.', '2022-12-12', 'ut optio', 35, '2022-02-03 14:25:56', '2022-02-03 14:25:56', 'MED2818'),
(673, 2, 'ducimus eveniet', 'ducimus-eveniet', '99.00', 88, 'Consequatur doloremque cumque necessitatibus quidem ea. Natus repellendus qui doloremque quia ullam. Modi est aut et quia consequatur. Est unde quam iure culpa. Explicabo autem ipsa reiciendis voluptates placeat. Amet dicta aliquam et voluptatum repellendus non rerum. Laborum dolorem molestias quia voluptas impedit consequatur. Enim sit voluptas iusto. Dolorem asperiores et inventore ipsam est minima officia. Quos sapiente vitae explicabo ullam fuga eligendi.', '2022-12-12', 'ut dolores', 39, '2022-02-03 14:25:56', '2022-02-03 14:25:56', 'MED2397'),
(674, 2, 'provident ipsa', 'provident-ipsa', '22.00', 82, 'Reprehenderit illum architecto cupiditate qui error omnis mollitia. Rerum molestiae veniam praesentium corporis dolores provident. Quis inventore neque dignissimos. Et id quia nulla maxime saepe dolores. Molestias itaque in quia consequatur magni. Aut eligendi sint accusantium harum. Excepturi sint dolor id aspernatur. Inventore ut laborum placeat.', '2022-12-12', 'in consequatur', 33, '2022-02-03 14:25:56', '2022-02-03 14:25:56', 'MED9820'),
(675, 2, 'animi et', 'animi-et', '84.00', 90, 'Nobis dolores deserunt ut rerum. Quis quidem ut aut molestias rerum quibusdam magnam. Cum beatae quis nihil. Commodi placeat vel omnis impedit quod autem doloremque pariatur. Sint omnis consequatur explicabo consequatur. Molestiae asperiores veniam laudantium velit iusto. Incidunt minus id tenetur repellat eos qui sapiente architecto. Odit nam et quis est fugit aut atque.', '2022-12-12', 'quasi ab', 258, '2022-02-03 14:25:56', '2022-02-03 14:25:56', 'MED3432'),
(676, 2, 'quis pariatur', 'quis-pariatur', '78.00', 55, 'Sit a rerum sit id eos. Perferendis ea incidunt necessitatibus. Magnam eos enim reiciendis corrupti. Consequatur voluptatibus quia nulla ea quibusdam suscipit aut. Consequuntur vel quaerat laboriosam quis. Exercitationem eum et quas excepturi. Quasi ad necessitatibus magni veritatis in. Aperiam ad nesciunt maxime nihil ullam ipsum. Sapiente odit voluptatum doloremque et nulla et.', '2022-12-12', 'eum sequi', 273, '2022-02-03 14:25:56', '2022-02-03 14:25:56', 'MED2949'),
(677, 2, 'ducimus a', 'ducimus-a', '9.00', 45, 'Sequi vel necessitatibus labore omnis laudantium voluptatem. Totam necessitatibus quis omnis vel amet modi. Reprehenderit et incidunt dolor consequuntur commodi quam enim. Unde corrupti et omnis. Vel reprehenderit voluptatem ut quo aut amet pariatur. Et dolor voluptatem molestias voluptatem in ut. Accusantium quae omnis magni in. Consectetur ducimus et iure nesciunt laborum veritatis.', '2022-12-12', 'quidem minima', 648, '2022-02-03 14:25:56', '2022-02-03 14:25:56', 'MED9095'),
(678, 2, 'necessitatibus beatae', 'necessitatibus-beatae', '89.00', 78, 'Vel impedit ratione nesciunt et. Expedita et ea quis consequatur qui nesciunt et. Eveniet perferendis et optio corporis officiis fugiat et. Ut dolores earum aut. Consequatur quaerat maiores ratione omnis quod odio. Necessitatibus illum est dignissimos quis quae facilis est. Possimus ea dolores sit aut ut ad perspiciatis. Minus id illum et similique reprehenderit.', '2022-12-12', 'voluptas aliquid', 282, '2022-02-03 14:25:56', '2022-02-03 14:25:56', 'MED3978'),
(679, 2, 'adipisci autem', 'adipisci-autem', '49.00', 75, 'Delectus nihil ex ut fugit nulla. Voluptatum et distinctio eligendi in tempore consectetur debitis et. Eum est quam accusamus ad dolorem. Explicabo animi tempora qui vero molestias omnis tempora. Perferendis rerum corporis aut eius sit. Quaerat non asperiores nesciunt architecto quo.', '2022-12-12', 'eveniet veritatis', 491, '2022-02-03 14:25:56', '2022-02-03 14:25:56', 'MED4202'),
(680, 2, 'rerum sit', 'rerum-sit', '94.00', 72, 'Repudiandae sit autem omnis qui eaque dolor quia. Deleniti odio at dolorum ut. Odio quaerat voluptatem a unde autem ab. Porro eveniet aliquid laudantium veritatis nobis laborum esse expedita. Molestiae eveniet aliquam et eaque dolorem molestias. Quia voluptate deserunt est.', '2022-12-12', 'dolor omnis', 498, '2022-02-03 14:25:56', '2022-02-03 14:25:56', 'MED8003'),
(681, 2, 'est molestiae', 'est-molestiae', '55.00', 77, 'Optio non ducimus sequi ea architecto debitis quae. Autem officia aut nam assumenda sit nobis rerum. Rem autem consequuntur minima corporis animi aut placeat. Assumenda ducimus ut dignissimos sunt natus. Est voluptas provident sunt. Eos eos maxime illo qui nobis. Sit eligendi fugit cumque id odit. Quis magni voluptatem et distinctio dolores soluta. Accusamus veritatis nihil adipisci voluptas maxime et pariatur.', '2022-12-12', 'neque nesciunt', 947, '2022-02-03 14:25:56', '2022-02-03 14:25:56', 'MED3569'),
(682, 2, 'nesciunt qui', 'nesciunt-qui', '38.00', 58, 'Aut ea sed id qui. Porro possimus non reiciendis ea voluptas. Eos quam architecto et quam ducimus. Commodi beatae voluptas error sit ab. Ducimus ad voluptates consequatur quidem natus nesciunt sit. Velit deserunt minima repellendus officia et. Corrupti et iure quaerat accusantium rerum quam. Mollitia eius culpa adipisci et inventore error.', '2022-12-12', 'porro non', 919, '2022-02-03 14:25:56', '2022-02-03 14:25:56', 'MED2496'),
(683, 2, 'voluptatem sint', 'voluptatem-sint', '63.00', 73, 'Neque ratione ullam sint odio. Nesciunt distinctio aut blanditiis ut. Voluptatem delectus in facere voluptatem. Nobis ut fugiat aut perspiciatis sunt quidem molestias. Quibusdam non id quia. Illum et molestiae ullam sed quia. Distinctio minus et qui debitis voluptatem autem. Assumenda ab et voluptas nobis.', '2022-12-12', 'assumenda et', 93, '2022-02-03 14:25:56', '2022-02-03 14:25:56', 'MED6017'),
(684, 2, 'facilis voluptatum', 'facilis-voluptatum', '16.00', 17, 'Excepturi at nesciunt vitae dolor. Adipisci hic reiciendis dignissimos qui velit. Ratione perferendis vel minus occaecati ea non amet. Explicabo quaerat ab debitis culpa veritatis rerum. Aut quod ipsum aliquam sapiente veniam voluptatibus. Aut quia dicta voluptas delectus incidunt repellat blanditiis facere. Ipsam voluptates ex eaque accusamus itaque sint. Rerum est velit atque iusto velit recusandae atque.', '2022-12-12', 'iusto ad', 249, '2022-02-03 14:25:56', '2022-02-03 14:25:56', 'MED1696'),
(685, 2, 'doloremque illum', 'doloremque-illum', '36.00', 12, 'Voluptatem porro distinctio aut a eum est et. Magnam et dolor aut sunt. Nihil ipsa quo libero officiis voluptatem maiores. Architecto reiciendis ipsa doloremque in. Qui maiores error itaque dolore. Accusantium id minima culpa nemo sunt vitae. Est dolore ipsum minima omnis voluptatem quis. Corporis nemo sit at eum et minus necessitatibus. Qui cumque quas accusantium iusto odio blanditiis.', '2022-12-12', 'beatae nobis', 588, '2022-02-03 14:25:56', '2022-02-03 14:25:56', 'MED7868'),
(686, 2, 'aut repudiandae', 'aut-repudiandae', '27.00', 89, 'Qui voluptas rerum laboriosam accusamus nesciunt tempora. Sunt corporis itaque dolorum ipsam modi minima amet. Voluptatem molestias dignissimos exercitationem. Sit molestiae dolores provident voluptatum tempora. Tempora veritatis dolorem dolorem non sed praesentium quis. Libero dicta aut et culpa. Voluptate placeat et corporis corrupti suscipit unde aspernatur.', '2022-12-12', 'neque sed', 470, '2022-02-03 14:25:56', '2022-02-03 14:25:56', 'MED9071'),
(687, 2, 'ipsam recusandae', 'ipsam-recusandae', '89.00', 76, 'Labore sint mollitia hic consectetur. Quae maiores et voluptas aspernatur eos. Aspernatur eaque assumenda saepe nostrum saepe. Consequatur et incidunt amet dolore veritatis blanditiis consequatur. Vel debitis rerum consequatur fugit sint quod qui provident. Magnam reiciendis fugiat a debitis asperiores. In praesentium corrupti omnis. Blanditiis sint vel totam. Explicabo adipisci consequatur molestiae quis soluta. Doloremque nostrum totam laborum et quis et. Deserunt ipsa nam rerum.', '2022-12-12', 'praesentium earum', 644, '2022-02-03 14:25:56', '2022-02-03 14:25:56', 'MED6082'),
(688, 2, 'unde eaque', 'unde-eaque', '70.00', 43, 'Explicabo neque quod accusamus repudiandae expedita qui ex. Praesentium et officia delectus nesciunt. Aliquid minus eligendi harum quia. Quae dolor quo minus aperiam asperiores qui assumenda commodi. Sapiente voluptatem quos quia necessitatibus quia aperiam et. Asperiores non saepe vitae culpa. Est autem reiciendis occaecati repellendus.', '2022-12-12', 'dolores molestiae', 391, '2022-02-03 14:25:56', '2022-02-03 14:25:56', 'MED363'),
(689, 2, 'quo libero', 'quo-libero', '60.00', 92, 'Natus corrupti et aliquam nam vel. Ullam dolores laudantium dolorem voluptates labore. Necessitatibus qui vero itaque sit. Illum expedita consequatur provident porro sit. Est et voluptates enim. Qui aut fuga excepturi quae hic soluta repellendus. Esse qui et quas et consequatur et placeat voluptas.', '2022-12-12', 'aut neque', 693, '2022-02-03 14:25:56', '2022-02-03 14:25:56', 'MED8384'),
(690, 2, 'libero provident', 'libero-provident', '16.00', 73, 'Distinctio eveniet ea est sint et error. Distinctio dolorem molestiae cumque vel. Dolorum eius aperiam dolores eos consequatur ex architecto. Blanditiis officiis asperiores facilis. Eveniet dolorem qui soluta dicta. Eos culpa earum porro omnis sit. Odio aperiam dicta veniam fugiat. Vel repudiandae voluptatem doloremque vero sit sint quos. Fugit saepe aut qui beatae voluptatem illum dicta.', '2022-12-12', 'voluptatem fuga', 230, '2022-02-03 14:25:56', '2022-02-03 14:25:56', 'MED9270');
INSERT INTO `pharmacist_tables` (`id`, `pharmacist_id`, `name`, `slug`, `price`, `quantity`, `description`, `expiry_date`, `manufacture_name`, `weight`, `created_at`, `updated_at`, `SKU`) VALUES
(691, 2, 'aut mollitia', 'aut-mollitia', '99.00', 91, 'Non facere et ea quidem cupiditate. Labore sit unde iste non placeat. Sit voluptatem autem dolor. Enim quos qui ipsa autem omnis. Et distinctio sequi in cupiditate eum quam facere nobis. Magnam eum officiis voluptatibus distinctio. Ab iure nisi nulla nam. Nostrum maxime temporibus id inventore dignissimos est. Consequuntur ut repellat iste aliquid aut ipsa saepe. Est nihil aut in eaque numquam culpa qui. Iure voluptates dolor et perspiciatis iure in. Commodi adipisci minima consectetur.', '2022-12-12', 'voluptatem voluptatem', 323, '2022-02-03 14:25:56', '2022-02-03 14:25:56', 'MED8917'),
(692, 2, 'eos rerum', 'eos-rerum', '77.00', 32, 'Aliquid explicabo et qui voluptas ut repudiandae vero. Consequuntur maiores error voluptas nihil vero quod. Nulla aliquam libero inventore. Iure aut autem repellat est deleniti. Quod eos recusandae natus saepe blanditiis repellendus. Deleniti adipisci aliquam autem vel totam neque dolorem in. Labore pariatur fugit nesciunt rem ea. Tempore quasi ex aut sed. Eveniet laboriosam quos esse quisquam culpa minima maxime. Autem explicabo distinctio sunt ex autem distinctio eos.', '2022-12-12', 'non est', 260, '2022-02-03 14:25:56', '2022-02-03 14:25:56', 'MED2560'),
(693, 2, 'ea quo', 'ea-quo', '37.00', 18, 'Minima aut et voluptas rem. Quo delectus rem sit deleniti similique atque tenetur debitis. In ab ipsam soluta debitis modi optio. Harum aut esse cum velit sunt cumque voluptas autem. Soluta nemo aliquam quaerat repudiandae qui. Excepturi explicabo in incidunt earum velit voluptatem. Velit dolorem dolor distinctio quia temporibus. Voluptatem eaque laudantium asperiores velit. Explicabo ut veniam sit explicabo ut quo cumque.', '2022-12-12', 'esse ratione', 971, '2022-02-03 14:25:56', '2022-02-03 14:25:56', 'MED8037'),
(694, 2, 'sit ipsum', 'sit-ipsum', '31.00', 58, 'Saepe in similique in quibusdam voluptatum ut. Asperiores quia rerum adipisci voluptatem animi sit. Laboriosam odit consequuntur aut omnis. Saepe accusamus quia quisquam voluptatem eius labore. Totam nostrum voluptatem nisi velit. Quis sequi commodi tenetur facere earum. Molestias et temporibus ut quas in in cumque ut. Molestias quis optio ut et quisquam. Sit beatae sapiente tempore excepturi accusamus.', '2022-12-12', 'consequuntur officiis', 809, '2022-02-03 14:25:56', '2022-02-03 14:25:56', 'MED3692'),
(695, 2, 'at aut', 'at-aut', '97.00', 16, 'Eos soluta pariatur esse qui praesentium. Aut dolores cum eum itaque voluptatem maxime id. Sed eos corrupti eum atque eos vero in. Delectus quidem numquam tempora et iusto laborum omnis. Veritatis quo commodi laboriosam esse. Itaque eos non est non esse voluptas. Impedit quasi similique sit quod consequatur. Aut aliquam harum accusamus odit ullam enim. Doloremque aut officia eos officia reiciendis. Nulla vel rerum odio sed. Quis excepturi quibusdam rerum provident animi.', '2022-12-12', 'eius tempora', 422, '2022-02-03 14:25:56', '2022-02-03 14:25:56', 'MED1928'),
(696, 2, 'consectetur minima', 'consectetur-minima', '6.00', 68, 'Modi sit quibusdam molestiae dolor. Et enim omnis assumenda harum quo impedit facilis. Aut corrupti atque esse voluptatem quod facere numquam. Delectus ex suscipit provident omnis sint numquam. Et dolorum atque eius deleniti occaecati. Iusto nobis quisquam dolor rem reprehenderit quae. Reprehenderit veritatis labore rerum qui ad impedit dolores. Qui sed adipisci vel qui ut ut. Aut quo ex similique ducimus eos nam. Magni aut eaque dolorum. Eius ea atque sint molestiae vel.', '2022-12-12', 'atque dolorum', 187, '2022-02-03 14:25:56', '2022-02-03 14:25:56', 'MED3218'),
(697, 2, 'odit rerum', 'odit-rerum', '59.00', 31, 'Tempora laudantium iusto voluptates numquam quibusdam perspiciatis. Qui consequatur et alias quae animi. Nulla non dignissimos fuga non dolorem quis itaque. Minima nihil autem error quia. Est consectetur sapiente aut necessitatibus dolores et facilis quasi. Omnis unde quia dolores enim odio omnis qui. Fugit officiis numquam in eos ad dolorem in aut. Quia eveniet dolorum repellendus laborum.', '2022-12-12', 'omnis possimus', 267, '2022-02-03 14:25:56', '2022-02-03 14:25:56', 'MED8321'),
(698, 2, 'similique quisquam', 'similique-quisquam', '88.00', 28, 'Et accusamus distinctio laudantium quaerat quo. Sed ut eum quam deleniti. Assumenda aut aut reiciendis. Amet id ipsum neque consequatur et neque sit. Quo adipisci aliquid nam excepturi tenetur. Ut qui quia et eius iusto. Voluptatem eum praesentium est expedita esse. Dolorem qui esse expedita provident odit sed. Eius in veniam ea alias. Nemo cum consequuntur sit qui qui. Qui maxime mollitia debitis aperiam. Nulla ut mollitia distinctio eum ut enim.', '2022-12-12', 'velit rerum', 384, '2022-02-03 14:25:56', '2022-02-03 14:25:56', 'MED9380'),
(699, 2, 'excepturi id', 'excepturi-id', '97.00', 39, 'Repellendus et nam et commodi. Maiores nihil cumque dolor sed tempore nisi enim. Velit quaerat numquam voluptatem molestiae id sit ipsum consequatur. Consequatur nobis sit facilis voluptatibus qui reiciendis magni. Voluptate doloribus totam minima rerum nostrum ad necessitatibus. Architecto perspiciatis est eaque est voluptatem. Aut deleniti eum esse dignissimos voluptatem dolore esse quibusdam. Natus ducimus consequatur culpa fugiat consequatur.', '2022-12-12', 'temporibus et', 646, '2022-02-03 14:25:56', '2022-02-03 14:25:56', 'MED9519'),
(700, 2, 'est unde', 'est-unde', '10.00', 78, 'Facere molestiae exercitationem hic consequatur fugit debitis. Quis molestiae est aliquam tempora iusto voluptatem. Quo saepe et non dolorem reprehenderit ab. Ut magni soluta dolores tenetur ipsum nemo consequuntur. Autem minus ex voluptas suscipit nobis. Saepe omnis aut dolorem numquam accusantium. Et sit at eaque. Modi ullam quaerat aperiam consequatur ratione. Alias et eum accusantium mollitia dicta et aut veniam. Sed sunt a quia est qui nam. Nostrum et quia unde. Eligendi sit non et.', '2022-12-12', 'quia voluptas', 196, '2022-02-03 14:25:56', '2022-02-03 14:25:56', 'MED5970'),
(701, 2, 'nihil aut', 'nihil-aut', '58.00', 10, 'Impedit est corporis vero consequatur quae blanditiis. Aut exercitationem nisi voluptates. Adipisci autem dolorum et aut ipsa omnis minus. Et iste doloribus quos provident assumenda voluptatum explicabo ab. Eum et autem modi dolor aut libero voluptates iure. Qui quia sapiente est molestias sint laborum. Et distinctio non illum dolorem vel accusamus nam. Quia quisquam occaecati dolore eum quasi velit veritatis. Et voluptatibus voluptas qui temporibus.', '2022-12-12', 'qui earum', 350, '2022-02-03 14:25:56', '2022-02-03 14:25:56', 'MED5242'),
(702, 2, 'ut cupiditate', 'ut-cupiditate', '73.00', 19, 'Voluptas quo voluptates fugit et. Optio impedit aliquam aut. Est expedita maxime optio omnis. Sit porro minima sequi perferendis sed. Occaecati rem sit possimus. Nobis asperiores iste in saepe labore. Id dolorem voluptate non voluptatibus tempora quas. Deserunt rerum molestiae rerum sint non quis. Minima voluptatem voluptate soluta quis. Corrupti eaque temporibus rem quisquam. Quas ab natus beatae rem.', '2022-12-12', 'dolores voluptate', 533, '2022-02-03 14:25:56', '2022-02-03 14:25:56', 'MED4824'),
(703, 2, 'maxime perspiciatis', 'maxime-perspiciatis', '74.00', 31, 'Non qui quibusdam dolorum. Provident voluptatum dolorum eaque deserunt numquam ut. Dolor praesentium incidunt quo aut. Necessitatibus quas cumque voluptatem eum. Illum explicabo saepe odio non error nihil doloremque vel. Laborum soluta repellendus laborum ducimus at occaecati reiciendis. Perspiciatis quaerat ab consectetur aut dignissimos. Eaque omnis eius eum dicta accusantium esse. Qui aut iste dolorem sit quia tenetur nihil qui.', '2022-12-12', 'facere laborum', 539, '2022-02-03 14:25:56', '2022-02-03 14:25:56', 'MED9714'),
(704, 2, 'similique reprehenderit', 'similique-reprehenderit', '63.00', 96, 'Omnis ut voluptatem excepturi iusto. Qui nesciunt est est alias quis. Ut quam nesciunt expedita aut consequatur aperiam. Vitae velit cupiditate doloremque et nostrum explicabo ut. Enim similique dolorem qui veritatis. Qui eligendi voluptates illo et odit nulla ut. A unde saepe sed doloribus pariatur blanditiis odio impedit. Aut ducimus repellendus fugit dignissimos nihil iure reiciendis blanditiis. Qui vitae neque soluta sed esse nihil nihil. Et voluptates facilis quo et nihil.', '2022-12-12', 'ut alias', 236, '2022-02-03 14:25:56', '2022-02-03 14:25:56', 'MED8903'),
(705, 2, 'id et', 'id-et', '66.00', 73, 'Quibusdam illum voluptatem voluptatibus voluptas dolores. Pariatur et in magnam eaque et. Nisi quo officiis fugit dolorem beatae et. Natus omnis nam totam. Qui minus consequatur magni voluptatum repellat ut. Ipsam qui sed fugit deserunt iusto quis ab. Sed soluta dolorum voluptates reiciendis aut. Voluptates iste facilis quo sint. Voluptatem vitae laudantium molestiae vitae officiis non.', '2022-12-12', 'nihil libero', 413, '2022-02-03 14:25:56', '2022-02-03 14:25:56', 'MED3048'),
(706, 2, 'perspiciatis recusandae', 'perspiciatis-recusandae', '18.00', 73, 'Aut voluptate amet aut sed. Vitae ut exercitationem accusamus. Harum nemo quis consequatur quisquam sit autem quo et. Ipsam rerum exercitationem eum aperiam similique. Aut recusandae deleniti dolorem velit amet. Reiciendis quia architecto exercitationem doloremque. Fugit sint expedita excepturi. Qui maxime error aut. In magnam ratione quia soluta nihil architecto ipsa et. Consequatur laborum alias ut est eum. Molestias voluptatum earum doloribus ratione.', '2022-12-12', 'et molestiae', 682, '2022-02-03 14:25:56', '2022-02-03 14:25:56', 'MED4289'),
(707, 2, 'debitis sunt', 'debitis-sunt', '46.00', 98, 'Assumenda porro tempore reprehenderit ex dolor iusto dicta vitae. Laudantium dolores illo quidem. Qui qui ea itaque eaque. Qui non facere omnis temporibus a repudiandae praesentium. In ut est hic distinctio qui perferendis non. Ipsa qui ut odio repellendus. Rerum ab eaque sit nihil. Inventore est sed possimus odio eligendi tempore molestias. Delectus sed qui qui ut et officiis. Ut voluptatem quaerat eum et dolores et magni.', '2022-12-12', 'et aut', 717, '2022-02-03 14:25:56', '2022-02-03 14:25:56', 'MED3004'),
(708, 2, 'quasi earum', 'quasi-earum', '52.00', 82, 'Perspiciatis labore nihil a et reiciendis hic est et. Aut vel id porro asperiores nostrum voluptate dolor nihil. Voluptas in quod et nihil minus et optio. Veniam vel quae dolorem consequuntur ut id aperiam id. Itaque harum expedita aut omnis quo. Quo qui repudiandae deserunt harum. Voluptas illum qui voluptatem adipisci. Natus quia rerum minus quod architecto autem laudantium exercitationem. Odit corporis fuga similique quo dicta dolor. Aut dolorem cum ullam incidunt.', '2022-12-12', 'ut vel', 581, '2022-02-03 14:25:56', '2022-02-03 14:25:56', 'MED1572'),
(709, 2, 'perspiciatis occaecati', 'perspiciatis-occaecati', '60.00', 60, 'Explicabo perferendis aliquid laborum ea dolor enim. Eos porro ducimus dolorem tempora. Est explicabo quasi distinctio odio ducimus nobis voluptatum. Debitis alias ipsum eius nostrum. Eaque aut aut occaecati cupiditate minus tempore aut. Asperiores labore debitis dolores dolores iusto aut. Molestiae ad non aut architecto quod exercitationem doloremque. Sed reiciendis est molestiae non.', '2022-12-12', 'tempora et', 601, '2022-02-03 14:25:56', '2022-02-03 14:25:56', 'MED6692'),
(710, 2, 'sequi voluptatem', 'sequi-voluptatem', '26.00', 96, 'Nam ut at neque autem odit. Esse enim quasi cupiditate amet aut. Consequatur ipsa a quis itaque quasi provident vitae aliquid. Tempore adipisci itaque exercitationem sapiente distinctio. Odio numquam inventore quia quod non. Ipsa labore modi vero et non asperiores aut. Ipsam tempora sed repudiandae ipsum. Quo velit itaque eos iste. Aut dolores quas commodi. Voluptatem quam at et doloribus aspernatur aut et. Omnis et consequatur qui voluptates.', '2022-12-12', 'reiciendis earum', 297, '2022-02-03 14:25:56', '2022-02-03 14:25:56', 'MED5643'),
(711, 2, 'sed qui', 'sed-qui', '32.00', 66, 'Amet ea nobis quis aut maiores. Rem neque est molestiae. Quia voluptate aut voluptatum alias est sit. Nihil rerum ullam est quidem. Non quia voluptate maxime alias delectus incidunt voluptatem error. Eum consequatur sit sed. Itaque cum earum modi. Doloribus velit et nemo. Provident qui hic pariatur omnis. Qui totam est esse voluptatibus laudantium saepe quis et. Tempore fugit tempora cum eveniet recusandae velit.', '2022-12-12', 'enim ex', 63, '2022-02-03 14:25:56', '2022-02-03 14:25:56', 'MED9727'),
(712, 2, 'soluta nihil', 'soluta-nihil', '80.00', 84, 'Accusamus praesentium veniam voluptatem voluptatibus autem sit iure. Occaecati alias consequatur quasi distinctio temporibus harum minima. Laborum voluptate et impedit non nesciunt ut aliquid ipsa. Quae assumenda amet et totam vel. Numquam exercitationem ipsa fugit fugit ea. Eligendi accusantium harum dolores soluta qui labore cupiditate repellendus. Excepturi sunt qui libero. Qui cupiditate aut libero incidunt optio. Sequi vero consequatur omnis necessitatibus.', '2022-12-12', 'odio iste', 318, '2022-02-03 14:25:56', '2022-02-03 14:25:56', 'MED2113'),
(713, 2, 'voluptatem modi', 'voluptatem-modi', '84.00', 96, 'Blanditiis qui accusamus consequatur veniam. Perferendis necessitatibus rerum et autem dolor sed. Eaque est quos laborum nam. Blanditiis at consequatur error earum voluptas. Ipsum facilis occaecati impedit neque maiores magnam veritatis. Voluptatem et voluptas consequatur velit. Accusamus repudiandae et quasi iusto itaque hic maxime.', '2022-12-12', 'quia ex', 660, '2022-02-03 14:25:56', '2022-02-03 14:25:56', 'MED6863'),
(714, 2, 'id voluptatem', 'id-voluptatem', '87.00', 12, 'Perferendis repellat doloribus animi ea dolore autem. Nihil sed iste rerum doloremque sequi a voluptatem. Occaecati amet eligendi ipsa occaecati. Qui enim alias laudantium eum nostrum et expedita. Delectus ipsam sapiente totam. Et accusamus doloribus maiores. Rerum et id quo aut enim hic. Esse est vel laudantium. Similique quidem consequatur quisquam. Libero assumenda et sed aliquam nobis consequuntur. Velit ipsa architecto adipisci rem corporis quaerat necessitatibus.', '2022-12-12', 'sit sed', 948, '2022-02-03 14:25:56', '2022-02-03 14:25:56', 'MED2773'),
(715, 2, 'vero et', 'vero-et', '67.00', 40, 'Dolor voluptatem eaque tempore hic. Consequatur velit occaecati dolorem exercitationem eum deleniti a. Mollitia laboriosam et voluptas et ut laborum reiciendis sint. Et odio consectetur quis ad nisi deleniti. Omnis deleniti tempore voluptas corporis non eum. Fuga et numquam corrupti. Architecto enim recusandae est. Voluptatem voluptatum quod ut. Occaecati quia odit numquam sed. Rerum quod voluptas quam. Voluptatem impedit pariatur voluptatem in omnis voluptas at. Ea rerum voluptatem veritatis.', '2022-12-12', 'aut facilis', 542, '2022-02-03 14:25:56', '2022-02-03 14:25:56', 'MED761'),
(716, 2, 'est eaque', 'est-eaque', '22.00', 35, 'Omnis facilis nam magni est perferendis. Vero vel placeat repellat. Quibusdam et molestias et rem dolores. Fuga praesentium ipsum porro est eaque. Voluptatibus incidunt voluptatem explicabo quidem sit. Excepturi eos voluptas impedit provident autem voluptas quae. Voluptatem eos qui quis dignissimos. Voluptatem accusamus cumque voluptas quis iusto distinctio quo est. Quaerat voluptatibus sapiente dolore ut aut aut. Qui illo amet recusandae excepturi unde et. Laborum voluptatem ut suscipit.', '2022-12-12', 'incidunt voluptatem', 804, '2022-02-03 14:25:56', '2022-02-03 14:25:56', 'MED8965'),
(717, 2, 'quod sit', 'quod-sit', '6.00', 31, 'Voluptate necessitatibus placeat accusamus voluptatum culpa et dolores quam. Reprehenderit numquam sit quae quos magnam. Consectetur quos perspiciatis aut et excepturi. Ullam et aut nihil. Voluptatem et tempore veniam autem ipsam. Ea perferendis sequi sed ut minima facere. Voluptas autem eaque tempora corrupti eligendi quia. Natus eveniet qui optio quidem minima. Laudantium id voluptas eum. Veniam ex dignissimos quasi non quia fugit corporis.', '2022-12-12', 'autem nemo', 465, '2022-02-03 14:25:56', '2022-02-03 14:25:56', 'MED2249'),
(718, 2, 'vel tempora', 'vel-tempora', '46.00', 87, 'Enim consequatur eligendi rerum sed deserunt omnis. Distinctio ut ut aliquid. Et perspiciatis ducimus reprehenderit recusandae blanditiis mollitia. In commodi et odio maiores sint. Aut praesentium natus earum perspiciatis fugiat facilis. Similique ut qui corporis dolor tempore amet voluptas.', '2022-12-12', 'sit vel', 656, '2022-02-03 14:25:56', '2022-02-03 14:25:56', 'MED9463'),
(719, 2, 'architecto mollitia', 'architecto-mollitia', '98.00', 41, 'Culpa ex mollitia vitae quibusdam ut. Accusantium vero ex consectetur in autem est laudantium. Soluta dolores voluptas corrupti blanditiis voluptatem corporis. Cumque ipsa quasi nam deserunt. Tempore laborum aut id labore in. Aut sed minus et soluta. Est rem voluptas ut enim est repudiandae sint. Maiores placeat ullam quidem quia voluptas qui est. Sed impedit ut vitae ut. Voluptatum asperiores voluptatibus qui voluptatem repellendus et et.', '2022-12-12', 'id labore', 832, '2022-02-03 14:25:56', '2022-02-03 14:25:56', 'MED2007'),
(720, 2, 'esse ipsa', 'esse-ipsa', '36.00', 31, 'Nostrum molestiae nulla ut unde reprehenderit. Totam tempora modi id non ipsum. Voluptate ipsam molestias quia. Corrupti ea incidunt perferendis ad dolorum. Veniam placeat sed consequuntur autem libero alias expedita. Dolore consequatur natus praesentium asperiores nostrum totam non. Suscipit quia nam et. Vero sit eligendi non placeat voluptatem. Illum repudiandae quia ut. Repudiandae sapiente totam itaque. Facilis et consequuntur at nihil quidem velit inventore.', '2022-12-12', 'consequuntur quas', 399, '2022-02-03 14:25:56', '2022-02-03 14:25:56', 'MED1527'),
(721, 2, 'ut omnis', 'ut-omnis', '3.00', 18, 'Asperiores est accusamus ipsa iste. Beatae dolore commodi commodi repellat et aspernatur. In quibusdam deserunt quaerat temporibus itaque. Qui aut accusamus quam odit vero in. Expedita voluptatem suscipit est. Quod repellendus distinctio praesentium voluptatem. Laboriosam asperiores expedita cumque eos autem est et. Eaque sed eum ut omnis ducimus iste explicabo.', '2022-12-12', 'deleniti dolores', 916, '2022-02-03 14:25:56', '2022-02-03 14:25:56', 'MED5966'),
(722, 2, 'doloremque aliquam', 'doloremque-aliquam', '76.00', 32, 'Itaque est ipsam qui sint. Voluptatem repellat voluptas sunt aspernatur molestias. Ipsum explicabo officiis quae voluptatem amet natus. Incidunt et hic tempore. Omnis reiciendis explicabo in. Ab tenetur reiciendis eos sit. Est incidunt itaque eaque facere cupiditate nemo sed provident. Placeat quod porro quia laudantium sit. Dolorum quaerat optio itaque temporibus. Repellendus excepturi ullam quidem iure aut rem iusto.', '2022-12-12', 'nesciunt ex', 720, '2022-02-03 14:25:56', '2022-02-03 14:25:56', 'MED3329'),
(723, 2, 'officia eligendi', 'officia-eligendi', '16.00', 28, 'Voluptas nisi magnam cupiditate deserunt eum blanditiis nisi. Magni illum nostrum repellat inventore voluptas impedit. Et perferendis aut tempore fugit dolorem minus saepe. Omnis facilis aliquid nobis modi. Eius similique nisi velit. Placeat asperiores accusamus et sint nulla. Soluta quis quia ad quae aut. Quia et velit beatae cumque et ut.', '2022-12-12', 'aut aspernatur', 138, '2022-02-03 14:25:56', '2022-02-03 14:25:56', 'MED4147'),
(724, 2, 'qui ut', 'qui-ut', '76.00', 38, 'Aliquid temporibus tenetur eum cupiditate eligendi dolores. Quod rerum voluptatem atque voluptas asperiores sint veniam. Assumenda at sequi consequatur voluptatem nemo. Dolor alias distinctio voluptatem incidunt odit error eligendi et. Tenetur ratione animi aut quos. Deserunt soluta quasi in rem vitae. Repellat ut qui cumque cumque qui. Repellat non laudantium a temporibus aut dolore. Dolores quibusdam quas vel et quis. Ut amet exercitationem laborum sapiente recusandae id.', '2022-12-12', 'eveniet illum', 598, '2022-02-03 14:25:56', '2022-02-03 14:25:56', 'MED4130'),
(725, 2, 'omnis dolor', 'omnis-dolor', '92.00', 76, 'Beatae possimus fugiat voluptates et. Voluptatem a molestias necessitatibus veniam eligendi. Porro voluptas voluptate ut. Ducimus quia dolorem fugiat delectus consequuntur. Autem dolores quasi recusandae est. Ullam in ut tenetur iste nostrum quibusdam quidem. Necessitatibus quasi ducimus sunt et. Rem laborum et nam soluta. Adipisci voluptatem ut quis inventore officia. Dolor repudiandae similique quae.', '2022-12-12', 'quis quae', 669, '2022-02-03 14:25:56', '2022-02-03 14:25:56', 'MED5214'),
(726, 2, 'eius tempore', 'eius-tempore', '10.00', 30, 'Eos ut perspiciatis sunt cumque cumque dolorum. Dolores nam animi molestiae enim quidem incidunt. Minus accusantium perferendis doloribus et nobis sapiente. Eum quo suscipit quia voluptas perferendis. Ab rerum architecto quo tenetur. Ipsa enim earum ipsam qui voluptas. Quas dignissimos dolorem reiciendis molestias ut est atque ipsum. Dignissimos consequuntur quo modi commodi deserunt suscipit accusamus voluptas. Beatae non excepturi et enim deserunt eaque.', '2022-12-12', 'architecto et', 926, '2022-02-03 14:25:56', '2022-02-03 14:25:56', 'MED9988'),
(727, 2, 'unde sunt', 'unde-sunt', '95.00', 32, 'In nostrum non distinctio non sed. Quas cupiditate deleniti adipisci laborum. Similique non voluptas quae fugiat. Rerum praesentium voluptas commodi fugit et vel. Quibusdam dolor deserunt ut error tempora in. Voluptate beatae alias quasi voluptatem voluptate non. Sit deleniti porro animi nisi assumenda. Totam amet ea ipsam fugit aliquam et dolorum. Fugit harum ut est et.', '2022-12-12', 'non deleniti', 519, '2022-02-03 14:25:56', '2022-02-03 14:25:56', 'MED7360'),
(728, 2, 'a quis', 'a-quis', '45.00', 70, 'Cupiditate nobis ex atque minima. Aut ullam dolorem cum sapiente consequatur odio dicta. Dicta voluptatem voluptas accusantium necessitatibus culpa possimus est commodi. Sunt voluptas veniam esse rerum. Voluptatibus eveniet quis dolorem ab. Quis cupiditate tenetur aperiam sit sint. Et fugit dicta qui nobis deserunt perspiciatis commodi.', '2022-12-12', 'perspiciatis pariatur', 373, '2022-02-03 14:25:57', '2022-02-03 14:25:57', 'MED6234'),
(729, 2, 'eos fugit', 'eos-fugit', '84.00', 79, 'Enim perspiciatis voluptate ratione nemo. Est nobis quaerat sunt animi repellat praesentium. Debitis rerum et quos molestiae laborum cumque sunt. Quis debitis quae quidem vitae voluptatem temporibus vel. Nam voluptatem voluptatem incidunt aut eius nam itaque. Repudiandae aspernatur ea officiis quis non voluptatem magni provident. Consequatur quaerat consequuntur numquam qui nobis quia. Non facilis quo non.', '2022-12-12', 'recusandae quia', 33, '2022-02-03 14:25:57', '2022-02-03 14:25:57', 'MED6613'),
(730, 2, 'quisquam vel', 'quisquam-vel', '7.00', 66, 'Et quibusdam omnis quisquam eligendi perferendis alias officia. Voluptas nihil est laborum. Iure ut quaerat iure modi in eum. Repudiandae voluptas dolore iusto labore voluptatibus corrupti et. Voluptatem necessitatibus voluptatum saepe error molestiae. Est non autem inventore quia doloribus est optio. Et autem et totam. Distinctio beatae quis rem asperiores. Quas fuga ut iure architecto accusamus vel sed.', '2022-12-12', 'et quae', 386, '2022-02-03 14:25:57', '2022-02-03 14:25:57', 'MED5587'),
(731, 2, 'odit qui', 'odit-qui', '17.00', 69, 'Assumenda ipsum sit nihil ratione. Velit aut eaque quia odio. Qui esse aliquam qui eos consequatur. Sequi debitis inventore adipisci animi delectus eius et. Corporis quis optio voluptate sint. Consequuntur similique eum occaecati. Aliquam velit labore accusamus recusandae est. Nisi officia animi similique sit nesciunt temporibus vel. Ut omnis in necessitatibus fuga. Dolores eum ex sit facilis blanditiis. Accusamus fuga nisi vero molestiae et placeat.', '2022-12-12', 'nihil praesentium', 198, '2022-02-03 14:25:57', '2022-02-03 14:25:57', 'MED5360'),
(732, 2, 'sed a', 'sed-a', '1.00', 27, 'Non architecto consequatur facilis sint aliquid. Sunt veniam accusantium necessitatibus provident quibusdam odit occaecati. Provident dolores dolorem aperiam ut eum ullam consequatur consequatur. Harum itaque dolorem iure pariatur quis tenetur et eveniet. Dolores sed minus et quis provident doloribus impedit. Esse porro accusamus aperiam neque et placeat et.', '2022-12-12', 'facere omnis', 120, '2022-02-03 14:25:57', '2022-02-03 14:25:57', 'MED7722'),
(733, 2, 'nostrum dolorem', 'nostrum-dolorem', '98.00', 63, 'Adipisci accusamus impedit laboriosam a at ut ex ad. Consequuntur aut soluta quos eveniet. Consectetur aut molestiae magnam dicta distinctio. Molestiae ipsa quasi explicabo ullam cumque ducimus beatae. Saepe eos voluptas facilis mollitia. Officiis aut aut minus eaque. Molestiae est quasi qui error. Labore beatae autem voluptatem assumenda occaecati doloremque dolorem. Quasi repellat et voluptates nesciunt fugit incidunt non. Voluptates unde minus non aut.', '2022-12-12', 'autem at', 665, '2022-02-03 14:25:57', '2022-02-03 14:25:57', 'MED7778'),
(734, 2, 'repudiandae et', 'repudiandae-et', '88.00', 96, 'Et expedita placeat libero praesentium illum non consectetur accusantium. Repudiandae occaecati eum dolor aperiam. Alias commodi rem aut iste illo. Dolorem saepe magni numquam. Qui assumenda veritatis eos rerum id. Deserunt laborum laudantium perspiciatis in. Quam eaque commodi modi est rerum tempora. Ut esse nostrum repellendus quis et. Rem eos quo voluptatem et aut. Distinctio voluptatem ut dolore sunt et magni.', '2022-12-12', 'voluptatem soluta', 353, '2022-02-03 14:25:57', '2022-02-03 14:25:57', 'MED4277'),
(735, 2, 'nulla molestias', 'nulla-molestias', '44.00', 42, 'Quo sunt quis et voluptatem laudantium qui qui eius. Labore dolor harum iusto nihil est quas quia. Nesciunt aut quos id veritatis voluptate et quibusdam. Quam voluptatem facere accusamus numquam sed. Ad illum facilis doloremque neque eligendi aut. Distinctio explicabo quia sed illo ut accusamus velit ducimus. Voluptates ex repudiandae adipisci eius laudantium nemo blanditiis. Laborum sint neque placeat est.', '2022-12-12', 'tempora voluptatem', 662, '2022-02-03 14:25:57', '2022-02-03 14:25:57', 'MED8937'),
(736, 2, 'enim vel', 'enim-vel', '36.00', 25, 'Alias et dolores quaerat qui explicabo. Dicta aut rerum suscipit occaecati. Nihil sapiente sit asperiores beatae. Quam numquam facilis eum impedit. Ea et asperiores nobis ipsa. Officiis sit labore ipsa ducimus et facere. Fugiat iste et et sunt. Veritatis repellendus aut in exercitationem iure culpa temporibus quae. Sunt porro impedit ex ab et cum.', '2022-12-12', 'consectetur sunt', 353, '2022-02-03 14:25:57', '2022-02-03 14:25:57', 'MED4148'),
(737, 2, 'aut beatae', 'aut-beatae', '14.00', 14, 'Reprehenderit iste adipisci corrupti et suscipit. Illo molestias dolorem quasi dolor quasi necessitatibus et. Enim animi quia modi voluptas voluptate. Id qui id nulla autem eveniet deleniti. Occaecati in vitae unde maiores. Velit corrupti est quis quas magnam. Sed autem illo rem consequuntur voluptatem eveniet. Qui at explicabo neque. Nulla et reprehenderit et reiciendis animi voluptates ipsa. Ullam rerum laudantium ut quos.', '2022-12-12', 'voluptatibus eligendi', 627, '2022-02-03 14:25:57', '2022-02-03 14:25:57', 'MED8781'),
(738, 2, 'cupiditate aut', 'cupiditate-aut', '1.00', 94, 'Natus doloremque eius quia et voluptatem magni. Dolore nesciunt mollitia libero quisquam quidem. A aspernatur harum aut id voluptatem. Dolorem reiciendis labore ut dolorum voluptatibus nostrum harum. Et perferendis expedita consectetur aut officiis quia numquam. Sed voluptate sed facere voluptas consequatur voluptas. Consectetur est enim aut modi. Officiis voluptatem hic quo optio voluptatum recusandae rerum placeat. Ad et distinctio repellat nam.', '2022-12-12', 'non occaecati', 60, '2022-02-03 14:25:57', '2022-02-03 14:25:57', 'MED7412'),
(739, 2, 'aut sequi', 'aut-sequi', '49.00', 77, 'Magnam accusantium reiciendis maiores molestiae non. Veniam rerum sequi magni. Et in cupiditate soluta consequatur enim sit aut. Necessitatibus molestias fuga consequatur soluta. Assumenda modi et enim error. Ex molestias vero velit labore ut quos. Repudiandae quis enim et praesentium est ut id ut. Voluptatem delectus aut sed laudantium ullam hic. Unde inventore dolorem dolores dolorem ipsam dolor quia. Et vel consequatur enim reprehenderit perspiciatis minima veritatis saepe.', '2022-12-12', 'sed eaque', 716, '2022-02-03 14:25:57', '2022-02-03 14:25:57', 'MED7331'),
(740, 2, 'nam quo', 'nam-quo', '52.00', 33, 'Deleniti quas numquam natus quaerat. Voluptas tenetur unde numquam cumque laudantium similique est. Error ducimus necessitatibus cumque fugiat cupiditate est quaerat quis. Aut ducimus ut aut eius dolorem. Rerum animi beatae numquam perspiciatis tenetur iusto iure. Consequatur amet iste voluptatem atque eligendi. Distinctio vel ea iusto delectus libero beatae non. Aperiam qui et cumque suscipit ipsa. Ratione sequi neque beatae eos. Quia reprehenderit dolor aut facilis.', '2022-12-12', 'magni eligendi', 43, '2022-02-03 14:25:57', '2022-02-03 14:25:57', 'MED3147'),
(741, 2, 'minima vel', 'minima-vel', '17.00', 67, 'Maxime nihil facere consequatur. Voluptatem natus dolores ea nesciunt. Eveniet pariatur qui aut quod. Dignissimos quia cupiditate impedit deserunt qui. Necessitatibus quisquam magni nesciunt similique. Et sit occaecati officiis deserunt maxime hic omnis. Cum totam dolor rem. Neque sed quae ad eos omnis rem. Quia eaque suscipit sed velit aliquid temporibus.', '2022-12-12', 'omnis qui', 288, '2022-02-03 14:25:57', '2022-02-03 14:25:57', 'MED2385'),
(742, 2, 'amet blanditiis', 'amet-blanditiis', '10.00', 91, 'Dolorem similique sequi vel consequuntur doloremque voluptates pariatur. Odio aperiam est in amet fuga. Soluta eligendi repellat necessitatibus. Vel exercitationem laboriosam at officia porro et praesentium ipsum. Vel voluptatem eum perspiciatis voluptatem voluptatum eos laboriosam soluta. Soluta repellendus et labore qui. Laudantium quas tempore deserunt molestiae id est qui. Quisquam est corrupti et excepturi quo. Et et ea laborum eum aperiam sunt.', '2022-12-12', 'quibusdam officia', 348, '2022-02-03 14:25:57', '2022-02-03 14:25:57', 'MED8031'),
(743, 2, 'harum provident', 'harum-provident', '19.00', 63, 'Et pariatur qui incidunt omnis. Quis aut et commodi ducimus suscipit fuga. Rerum possimus aperiam numquam et facere voluptatem sapiente. Voluptates omnis ullam saepe a nihil ut dolores quae. Itaque consequatur quis tenetur. Architecto quod et error perferendis et aperiam pariatur.', '2022-12-12', 'qui ratione', 871, '2022-02-03 14:25:57', '2022-02-03 14:25:57', 'MED3563'),
(744, 2, 'sunt illo', 'sunt-illo', '10.00', 71, 'Qui accusamus molestiae ut impedit modi. Quibusdam aut doloremque consequatur laboriosam consectetur. Et delectus et tempore officiis et voluptatum et. Dolores sequi sapiente impedit provident autem. Labore facilis distinctio ut sint aut iure. Quis animi qui perferendis magni non itaque quia. Et nesciunt illo eos. Omnis placeat porro et cumque.', '2022-12-12', 'aliquid voluptas', 684, '2022-02-03 14:25:57', '2022-02-03 14:25:57', 'MED1967'),
(745, 2, 'ea ipsam', 'ea-ipsam', '85.00', 13, 'Consequatur esse distinctio reprehenderit sed similique. Repellat quia animi velit temporibus id autem. Quas ut at mollitia eius. Vero voluptatum fugit deleniti magni doloribus. Qui rerum nisi est voluptatem eum sed est. Sunt commodi eum ipsam tempore. Nihil mollitia magnam velit dicta aliquam illum aut. Omnis assumenda consectetur suscipit voluptas. Suscipit veniam tempore aut ut. Aut iste odio eum. Praesentium eligendi consequatur ut sed ullam maiores ad. Ipsum est velit qui et quae dolorem.', '2022-12-12', 'omnis et', 409, '2022-02-03 14:25:57', '2022-02-03 14:25:57', 'MED7021'),
(746, 2, 'veritatis sit', 'veritatis-sit', '2.00', 82, 'Sed praesentium minima quos autem in. Quo necessitatibus cum molestiae aliquam unde. Vel et deleniti placeat eaque fuga minima. Animi eos id nam earum incidunt ut molestiae magnam. Asperiores magnam amet minima beatae praesentium totam impedit deserunt. Dicta sint illo totam ipsum aut. Unde modi repellat ratione eum. Recusandae quia repellat provident cupiditate. Odio doloribus ducimus labore voluptas sed. Et porro debitis minima fuga deleniti. Rerum praesentium iure explicabo nesciunt rerum.', '2022-12-12', 'molestias porro', 993, '2022-02-03 14:25:57', '2022-02-03 14:25:57', 'MED238'),
(747, 2, 'at enim', 'at-enim', '80.00', 36, 'Voluptatem voluptate culpa quaerat omnis numquam ullam. Dolorem harum quos ut nemo amet. Non adipisci quis cum. Repellat totam at expedita sit quod corporis nobis enim. Blanditiis sit repudiandae veritatis et. Quaerat nihil qui non repudiandae aut explicabo. Placeat vel earum et hic autem dolore. Dolor blanditiis perferendis sunt excepturi atque accusamus et. Asperiores cum quis et sapiente aut perferendis voluptatem. Aspernatur consequatur voluptate enim ut ullam.', '2022-12-12', 'qui sed', 225, '2022-02-03 14:25:57', '2022-02-03 14:25:57', 'MED5443'),
(748, 2, 'ut voluptates', 'ut-voluptates', '6.00', 61, 'Occaecati error officiis cum eligendi. Doloremque sequi optio omnis. Rerum earum fugit impedit facere omnis. Ut sint consequatur vero recusandae dolorem debitis dignissimos. Est velit corrupti nostrum repellendus provident quis quis quos. Est sed dolorum possimus odio illo voluptatem quis pariatur. Suscipit ipsum dolorem est unde ipsam et. Est cum reprehenderit fugit.', '2022-12-12', 'laboriosam et', 181, '2022-02-03 14:25:57', '2022-02-03 14:25:57', 'MED2428'),
(749, 2, 'reiciendis distinctio', 'reiciendis-distinctio', '10.00', 41, 'Culpa omnis accusamus et repellendus ea voluptate. Culpa repudiandae rerum quaerat officia repudiandae. Tempora expedita eos repudiandae qui sit. Eius animi sit est eligendi fugiat ab vel. Numquam voluptates veniam accusamus incidunt doloribus quod dicta. Voluptatum voluptatem esse commodi fuga quia. Nisi accusamus dolores cum optio qui. Quod vero autem nesciunt repudiandae natus quis. Rerum dignissimos harum voluptatem facilis maiores deserunt. Iste fugit autem quos nostrum neque qui adipisci.', '2022-12-12', 'qui voluptas', 821, '2022-02-03 14:25:57', '2022-02-03 14:25:57', 'MED8173'),
(750, 2, 'temporibus a', 'temporibus-a', '1.00', 63, 'Eum ratione qui dolor dicta. Ipsa modi cumque et accusamus maiores. Tempore illum adipisci eum earum. Deleniti consectetur non vel animi ut. Pariatur eum placeat reiciendis recusandae. Rem voluptatem aut eveniet consequuntur temporibus atque dolores. Ut ut laudantium earum aut repellendus. Quisquam dolor delectus eum in. Nesciunt enim eaque unde et illo sunt veritatis.', '2022-12-12', 'vel asperiores', 520, '2022-02-03 14:25:57', '2022-02-03 14:25:57', 'MED9298'),
(751, 2, 'ullam et', 'ullam-et', '12.00', 93, 'Est veniam ut ea aut iusto voluptatem exercitationem vel. Quis natus dolores repudiandae dicta laboriosam labore enim. Nemo ex minus totam quo accusantium ex. Veritatis dolorum quia perspiciatis ea suscipit veniam. Cumque rerum aspernatur distinctio distinctio in mollitia a. Laborum sunt tempora ea numquam earum sit corporis. Tempore commodi adipisci voluptas architecto excepturi voluptatem. Nisi eveniet et dolor in. Libero iusto dolores maiores eius.', '2022-12-12', 'in molestias', 561, '2022-02-03 14:25:57', '2022-02-03 14:25:57', 'MED4347'),
(752, 2, 'iste in', 'iste-in', '82.00', 74, 'Suscipit doloremque et sed officiis cupiditate voluptatum. Provident est quis minima. Aliquid aut quibusdam magni earum. Repudiandae voluptatem et quaerat dicta qui aliquid. Voluptas blanditiis laudantium alias quia autem laudantium beatae explicabo. Cupiditate et sint delectus aut et voluptatem. Doloribus et dolorem eius amet ab non rerum.', '2022-12-12', 'enim illo', 698, '2022-02-03 14:25:57', '2022-02-03 14:25:57', 'MED8248'),
(753, 2, 'voluptatem consequatur', 'voluptatem-consequatur', '35.00', 56, 'Et totam voluptas nostrum qui sed. Voluptates perferendis quasi non cum iusto recusandae. Esse illo eveniet qui aspernatur sunt. Natus aspernatur quidem esse veniam assumenda sit quibusdam. Ut fugiat est fugiat qui deserunt consequatur amet a. Aperiam sapiente quo molestiae in qui. Pariatur placeat rerum ut. Sit ipsum accusantium est saepe. Et minus quia mollitia modi beatae occaecati eligendi recusandae. Nisi vel enim molestiae quod ea hic maxime.', '2022-12-12', 'vel doloremque', 922, '2022-02-03 14:25:57', '2022-02-03 14:25:57', 'MED2658'),
(754, 2, 'corporis harum', 'corporis-harum', '95.00', 56, 'Consequuntur at expedita quos repudiandae ut deserunt. Modi enim est corrupti nemo quod. Odio ab rerum occaecati ut. Aliquid quidem dolor voluptates explicabo excepturi sed aliquid. Iusto dolore distinctio repudiandae excepturi. Quis et eaque et et a earum. Deleniti omnis porro doloribus corrupti debitis. Sit voluptas sit id commodi illo voluptatem. Vero nihil blanditiis ab architecto et tenetur. Aspernatur voluptas ut repellat dolore rerum hic voluptatem.', '2022-12-12', 'aliquid facilis', 236, '2022-02-03 14:25:57', '2022-02-03 14:25:57', 'MED9810'),
(755, 2, 'ex et', 'ex-et', '22.00', 71, 'Culpa id ipsum temporibus quos est id. Enim quaerat nesciunt possimus quae culpa. Dignissimos quisquam quia possimus corrupti facere nemo nihil rerum. Ipsa nihil omnis repudiandae aliquam sed. Deserunt dolores dolor voluptas et qui dolores rerum. Voluptas autem iste molestiae beatae. Amet quia labore atque voluptatem magnam sunt et atque.', '2022-12-12', 'id consequatur', 483, '2022-02-03 14:25:57', '2022-02-03 14:25:57', 'MED3659'),
(756, 2, 'eveniet delectus', 'eveniet-delectus', '75.00', 25, 'Est ipsum rem harum eos. Rem fugit ut nesciunt libero qui cupiditate. Quas voluptas et aliquam non fugiat voluptatem non et. Tempore quo at ad tempore consequatur ratione. Expedita et quia enim aspernatur ipsum. Omnis quis possimus commodi assumenda et aut accusamus. Quo minus sunt qui. Officiis in et est blanditiis error nostrum. Molestias et accusamus quo quo reiciendis non. Ut consequuntur et nihil et aut dolor. Inventore hic a dolor quia corporis. Et ratione hic est ad.', '2022-12-12', 'in ut', 679, '2022-02-03 14:25:57', '2022-02-03 14:25:57', 'MED9236'),
(757, 2, 'eum cupiditate', 'eum-cupiditate', '52.00', 91, 'Accusamus dolor excepturi fugiat quo veritatis. Aperiam quasi doloremque aliquam autem eaque aut. Ea laudantium voluptates iure totam et. Ratione praesentium velit sunt dicta perspiciatis. Dolor quia voluptatibus beatae atque quasi labore. Quo quibusdam expedita eos quibusdam nihil est dolores. Dolores doloribus dolores expedita iure recusandae debitis voluptatem rerum.', '2022-12-12', 'et dolores', 434, '2022-02-03 14:25:57', '2022-02-03 14:25:57', 'MED63'),
(758, 2, 'et dignissimos', 'et-dignissimos', '30.00', 76, 'Veniam ut exercitationem ad explicabo incidunt qui consectetur. Et velit odit voluptas perspiciatis. Aut consectetur reiciendis sequi ab. Quia harum provident possimus excepturi. Voluptas provident molestias dolorum illum. Odio libero voluptate sequi ab veritatis ut architecto quis. Maxime tenetur quod vel numquam dolorum. Deserunt voluptatem aut consequatur odio.', '2022-12-12', 'et id', 399, '2022-02-03 14:25:57', '2022-02-03 14:25:57', 'MED6532'),
(759, 2, 'ducimus aut', 'ducimus-aut', '83.00', 15, 'Sit velit illo possimus cupiditate ut ut quod dolor. Aut labore praesentium similique soluta autem blanditiis. Corporis omnis nihil hic eveniet nulla voluptatem. Perferendis facilis ea consequuntur et deserunt accusamus enim. Optio et nemo quia quia. Qui nisi magnam tempore dolorem exercitationem aliquam perspiciatis qui. Rerum explicabo corrupti perspiciatis. Consectetur dolorum sit non quia.', '2022-12-12', 'id quaerat', 669, '2022-02-03 14:25:57', '2022-02-03 14:25:57', 'MED4104'),
(760, 2, 'veritatis exercitationem', 'veritatis-exercitationem', '36.00', 51, 'Et iusto nulla adipisci deleniti dolorem temporibus aut. Et et et enim culpa ullam ea rerum. Qui sunt eius non et aut ullam. Nulla autem similique et. Culpa dignissimos sit et. Voluptatem sapiente quia et eligendi id. Deleniti commodi facere voluptas. Ea dolores saepe esse dicta. Sunt ad quod illum non. Illum ab modi nesciunt atque. Hic dolorum vel non.', '2022-12-12', 'quod itaque', 377, '2022-02-03 14:25:57', '2022-02-03 14:25:57', 'MED7754'),
(761, 2, 'nostrum inventore', 'nostrum-inventore', '15.00', 74, 'Minus fuga explicabo molestias tenetur. Magni et enim voluptas quam tempora. Odio sit possimus eum possimus inventore illo velit. Dolore nostrum quisquam quos quam nisi est doloribus molestiae. Perferendis et laudantium et similique id. Sequi a ut velit et maxime blanditiis. Impedit voluptatem beatae ipsum sunt modi commodi.', '2022-12-12', 'officia ut', 799, '2022-02-03 14:25:57', '2022-02-03 14:25:57', 'MED1938'),
(762, 2, 'eum tempore', 'eum-tempore', '24.00', 20, 'Est rerum sequi asperiores debitis. Possimus assumenda sed consectetur impedit. Mollitia aperiam magni unde rem quaerat et. Fuga veniam quos qui sunt debitis et. Voluptatem dolor et sed cumque suscipit omnis optio. Modi et deleniti dolor dolor est consectetur. Quae quaerat ab officiis et quas sint sapiente. Libero et sit sit excepturi sit voluptate enim dolore. Quaerat dolor dolor magnam tempore non exercitationem. Illum ut consequatur corporis iure fugit et nihil.', '2022-12-12', 'perspiciatis rerum', 259, '2022-02-03 14:25:57', '2022-02-03 14:25:57', 'MED8309'),
(763, 2, 'sunt aut', 'sunt-aut', '87.00', 82, 'Fugit eos inventore enim. Atque ut corrupti dolores eos molestiae quibusdam. Dolorum assumenda iusto facilis quaerat. Quisquam voluptatem amet quia illum nisi rerum. Consequatur fugit architecto id sed enim. Minima dolor fugit reiciendis id sit quis similique. Molestiae delectus quidem possimus beatae ipsam aliquid. Nostrum ut saepe molestiae esse et expedita architecto.', '2022-12-12', 'alias necessitatibus', 910, '2022-02-03 14:25:57', '2022-02-03 14:25:57', 'MED4689'),
(764, 2, 'qui tempora', 'qui-tempora', '77.00', 76, 'Ad eligendi expedita et occaecati hic reiciendis quas. Quasi ut nemo iure et hic ut hic. Nihil nihil aliquid aut odit reiciendis doloribus libero. Cumque animi et illo. Dolor laudantium voluptatem sunt. Provident consequatur sunt impedit facilis esse. Voluptatem esse illo voluptatem veritatis et reiciendis ut. Impedit ullam nihil aut excepturi et qui et.', '2022-12-12', 'voluptatem similique', 998, '2022-02-03 14:25:57', '2022-02-03 14:25:57', 'MED9449'),
(765, 2, 'magnam nobis', 'magnam-nobis', '9.00', 78, 'Molestias eveniet fuga quis qui id molestiae necessitatibus est. Ut quae animi non error. Est quas recusandae et velit quia tenetur. Nemo et animi et assumenda itaque accusamus aut qui. Debitis perferendis quis odio qui eaque doloremque. Sed ea est et sint aut assumenda eos. Est unde molestiae mollitia beatae dolore. Ut omnis et enim. Vero temporibus voluptas fugiat ratione doloremque quaerat.', '2022-12-12', 'accusamus quia', 525, '2022-02-03 14:25:57', '2022-02-03 14:25:57', 'MED1523'),
(766, 2, 'cupiditate consectetur', 'cupiditate-consectetur', '30.00', 64, 'Incidunt aut dolores repudiandae officia. Et distinctio eligendi ipsam deserunt ipsa voluptatibus et. Consequatur blanditiis velit sint blanditiis eos ut et. Pariatur aliquid tempora quis quam. Harum dolor aut facilis autem molestias eligendi dignissimos. Natus dolores accusamus est voluptas. Omnis omnis distinctio ipsam voluptatibus error provident. Enim porro nemo iure. Assumenda nisi aut corrupti ducimus dolore reprehenderit. Eligendi est ex nobis et perferendis.', '2022-12-12', 'nulla ut', 170, '2022-02-03 14:25:57', '2022-02-03 14:25:57', 'MED8489'),
(767, 2, 'voluptatem maiores', 'voluptatem-maiores', '94.00', 70, 'Est qui repellendus quaerat in possimus facere. Voluptatem rerum nulla et accusantium tempore voluptas. Est nulla hic ex impedit omnis tempore omnis. Facilis error sed sed perferendis autem nihil. Magnam ut est et non autem. Autem non amet aperiam consequatur dolorum qui consectetur reiciendis. Et distinctio id nemo omnis voluptatibus et culpa.', '2022-12-12', 'mollitia ex', 577, '2022-02-03 14:25:57', '2022-02-03 14:25:57', 'MED920'),
(768, 2, 'repudiandae est', 'repudiandae-est', '89.00', 49, 'Accusamus excepturi ex consequatur debitis nisi aperiam. Ut ea perspiciatis sunt quia ducimus eum repellat. Pariatur perferendis ipsum officia quas ipsum. Quibusdam nostrum expedita aut dignissimos molestiae autem nihil. Voluptatem maiores voluptas atque iusto. Cum et consequatur et consequatur ipsum ipsum occaecati. Aut est voluptatem quis et. Ad autem non tempora non ut ut asperiores. Iusto mollitia soluta aliquam ipsa assumenda ullam est.', '2022-12-12', 'qui quam', 11, '2022-02-03 14:25:57', '2022-02-03 14:25:57', 'MED2447'),
(769, 2, 'nemo omnis', 'nemo-omnis', '39.00', 41, 'Veritatis delectus accusantium harum natus et. Sed sed est distinctio cumque consequatur omnis. Ad et ducimus possimus non nulla. Et voluptatibus doloremque alias. Tempore alias et consectetur qui. Et tempora corrupti nostrum omnis itaque perferendis dolor dolore. Reprehenderit incidunt et ex dicta ut et excepturi. Dolore porro deleniti adipisci commodi magnam voluptatem expedita sit. Ut corrupti delectus vero quisquam.', '2022-12-12', 'sapiente est', 412, '2022-02-03 14:25:57', '2022-02-03 14:25:57', 'MED6281'),
(770, 2, 'nostrum voluptate', 'nostrum-voluptate', '64.00', 21, 'Dignissimos consequatur consequatur dicta facere. Illum recusandae omnis ipsam praesentium possimus est nesciunt. Fuga labore quo iusto illum id animi. Eum quisquam tenetur commodi officia quae est. Laudantium deleniti eveniet error dolor. Molestiae dicta nesciunt alias exercitationem. Eaque non harum qui vel et vitae. Omnis praesentium maiores eum. Voluptatem quo adipisci minima quae enim debitis. Doloremque voluptas quam omnis excepturi soluta enim. Modi facere saepe sed.', '2022-12-12', 'et repellat', 878, '2022-02-03 14:25:57', '2022-02-03 14:25:57', 'MED5750'),
(771, 2, 'quidem vel', 'quidem-vel', '91.00', 34, 'Sequi quidem non at eaque nostrum quidem. Molestias molestiae quae consequatur excepturi. Odit suscipit rerum quasi aliquam corrupti sit voluptas. Ut error saepe voluptatem cumque minus dolore. Repellat veritatis quia ipsa expedita consequatur soluta neque. Est a accusantium voluptas inventore error facilis. Nesciunt temporibus officiis perferendis pariatur est modi et. Quos et ad quas. Quis modi non possimus. Aut eos eum aspernatur qui in aut rerum. Tenetur nemo dolore culpa velit.', '2022-12-12', 'inventore sapiente', 197, '2022-02-03 14:25:57', '2022-02-03 14:25:57', 'MED898'),
(772, 2, 'ut molestiae', 'ut-molestiae', '53.00', 93, 'Illum aliquam optio aperiam et adipisci nostrum odit pariatur. Sed deserunt tempora dolores rerum porro unde. Qui dolorem molestiae ipsa quisquam repellendus dicta possimus. Quidem expedita ut voluptas ullam sunt eius reiciendis. Non quisquam harum rerum quaerat perspiciatis rerum nobis quia. Est sed autem qui sed eius. Qui vero eveniet asperiores consequatur commodi. Dolorem nisi sit quae sit.', '2022-12-12', 'occaecati fugiat', 71, '2022-02-03 14:25:57', '2022-02-03 14:25:57', 'MED7261'),
(773, 2, 'in expedita', 'in-expedita', '79.00', 98, 'Quia totam sit aliquid saepe optio hic. Maxime iste ea fugiat voluptas. Ea ipsum provident ullam tenetur. Totam porro magni ut enim aut rem et. Et sed ab ut inventore iure velit. Perspiciatis expedita nobis distinctio et aperiam repellat sed. Adipisci eos tempora rerum molestiae quis sunt. Voluptas asperiores illum sint amet fugit et id. Reiciendis necessitatibus voluptas et maiores totam.', '2022-12-12', 'ipsa ab', 89, '2022-02-03 14:25:57', '2022-02-03 14:25:57', 'MED6370'),
(774, 2, 'sit tempora', 'sit-tempora', '99.00', 34, 'Fugit qui ut laudantium. Earum repellat deserunt sunt consequuntur est molestiae. Tempore nihil quidem similique numquam. Vitae temporibus sunt aut placeat natus nostrum. Dolorem et distinctio dicta aut magni ipsum odio. Minima harum et ab eos. Molestias ea qui esse quae. Adipisci ea molestias libero. Reiciendis est amet suscipit ipsa. Ea expedita molestias sint nisi sit officia quia. Explicabo ut vel tempore hic autem rerum.', '2022-12-12', 'modi consequatur', 813, '2022-02-03 14:25:57', '2022-02-03 14:25:57', 'MED2551'),
(775, 2, 'facilis repellendus', 'facilis-repellendus', '63.00', 52, 'Iusto voluptatibus dolores sint sequi ad et. Hic sed doloribus odio aspernatur necessitatibus. Voluptatem velit qui eos molestiae. Quas dolores ullam quam voluptatem quos et est. Iure nobis architecto ipsum voluptas culpa sed. Aspernatur est in magnam neque nostrum. Illo et quaerat hic fugit molestiae quasi. Sed nobis iste repudiandae mollitia aut. Soluta unde omnis voluptas aliquid deserunt. Maiores accusantium voluptatem exercitationem rem.', '2022-12-12', 'quaerat possimus', 10, '2022-02-03 14:25:57', '2022-02-03 14:25:57', 'MED9410'),
(776, 2, 'fugit et', 'fugit-et', '94.00', 64, 'Rerum ut eaque porro voluptas eos. Quod dolor eum quia molestiae autem et. Aspernatur eaque optio sed sit possimus optio harum. Numquam sunt repudiandae id et sit quibusdam. Et iure velit doloremque et et. Nihil porro saepe necessitatibus. Cupiditate labore adipisci ipsam eveniet veniam. Unde suscipit voluptas laborum eaque. Rerum aspernatur quasi totam quis sit. Quisquam quod et et et eveniet ipsum. Est quis consectetur ut ut velit quia esse.', '2022-12-12', 'aut aut', 899, '2022-02-03 14:25:57', '2022-02-03 14:25:57', 'MED9771'),
(777, 2, 'quia quae', 'quia-quae', '43.00', 85, 'Et reiciendis ipsam dolorem sunt et et quia. Aut quos quidem qui aut dolorum. Corporis nesciunt consequatur dolor consequatur et aliquid. Voluptatem illum repudiandae aut voluptatibus iusto unde. A iure voluptas ad neque. Iure quae porro minus eligendi totam quae. Iusto error laudantium incidunt repellendus impedit quidem enim. Ex qui mollitia illo. Dolor reiciendis excepturi quam. Quasi voluptate beatae sit non deleniti dicta.', '2022-12-12', 'id dolorum', 840, '2022-02-03 14:25:57', '2022-02-03 14:25:57', 'MED5995');
INSERT INTO `pharmacist_tables` (`id`, `pharmacist_id`, `name`, `slug`, `price`, `quantity`, `description`, `expiry_date`, `manufacture_name`, `weight`, `created_at`, `updated_at`, `SKU`) VALUES
(778, 2, 'incidunt dolorum', 'incidunt-dolorum', '39.00', 65, 'Nobis quo beatae aut in. Dolores dignissimos dolore inventore animi dolor. Corporis ullam et suscipit deserunt maxime deleniti explicabo non. Consequatur qui quasi iste enim tenetur accusantium. Qui iste porro tenetur nobis veritatis. Aut illum harum esse ipsa consequuntur sed. Ratione et autem et sint impedit. Incidunt voluptatum delectus non eos et modi. Eligendi in et unde sed quisquam. Nobis ut mollitia nemo quidem.', '2022-12-12', 'aut aperiam', 584, '2022-02-03 14:25:57', '2022-02-03 14:25:57', 'MED4525'),
(779, 2, 'porro aperiam', 'porro-aperiam', '52.00', 59, 'Vero voluptate dolor similique cupiditate soluta iure et. Deleniti consequatur tempore blanditiis. Porro id quod ratione deleniti adipisci necessitatibus ratione. Omnis ut aliquid dolor beatae eveniet numquam. Voluptas dicta sint aperiam labore. Aut exercitationem ducimus nihil esse natus possimus at. Dolores laboriosam a voluptatem voluptatem omnis quibusdam dolorem magnam. Et suscipit quia provident et sit. Id deserunt aliquid corporis fugit reiciendis.', '2022-12-12', 'accusantium sed', 747, '2022-02-03 14:25:57', '2022-02-03 14:25:57', 'MED9454'),
(780, 2, 'quis ut', 'quis-ut', '44.00', 29, 'Facilis veniam sit distinctio voluptatem sunt molestias. Quia quas ut error incidunt. Magnam ipsum id impedit asperiores. Autem et ut qui aspernatur occaecati suscipit ex. Voluptatem velit nemo non perspiciatis quod voluptas. Unde excepturi sit voluptatum repudiandae atque enim. At eveniet amet rerum hic iure.', '2022-12-12', 'nihil et', 261, '2022-02-03 14:25:57', '2022-02-03 14:25:57', 'MED9793'),
(781, 2, 'ullam nihil', 'ullam-nihil', '82.00', 94, 'Quaerat corporis quidem sit tempora pariatur aut quia. Doloribus dolores ut voluptatibus nisi ut. Ratione non ab cum id aut. Doloribus autem explicabo nostrum numquam. Aliquid aperiam facere eos sed repudiandae earum corporis. Est ipsum eos voluptatem. Ullam dicta corporis maxime illum qui. Voluptatibus tempore autem rem similique incidunt. Odit vitae magni perspiciatis inventore nam aspernatur. Veniam atque sapiente vel. Est fugit saepe doloribus illo ipsa.', '2022-12-12', 'sed quia', 919, '2022-02-03 14:25:57', '2022-02-03 14:25:57', 'MED1658'),
(782, 2, 'aut ut', 'aut-ut', '89.00', 59, 'Consequatur quibusdam voluptate magni minima fugit totam. Voluptatem impedit aut temporibus quae tenetur. Molestiae ut velit nemo natus quia maiores rem. In est cupiditate veritatis amet id. Quia expedita vero praesentium similique in aut. Non ut rerum ipsa quo ex. Iusto totam enim nihil saepe temporibus quis. Occaecati ex inventore corporis eius. Molestiae cum incidunt sequi deserunt. Quis et saepe necessitatibus ipsam molestiae. Quia itaque incidunt est aut.', '2022-12-12', 'consequatur nulla', 917, '2022-02-03 14:25:57', '2022-02-03 14:25:57', 'MED8048'),
(783, 2, 'consequuntur velit', 'consequuntur-velit', '14.00', 68, 'A est id et maiores quia. Voluptates quaerat pariatur nihil in. Natus rerum necessitatibus doloribus. Dolor ab voluptas non animi. Itaque minus id tempore vel aliquam illo libero. Aut qui et et rem consequatur. Nulla non et molestiae architecto. Tempora dignissimos magni velit culpa nam. Aut id facere ullam similique totam explicabo modi. Voluptate recusandae mollitia vel et consequatur.', '2022-12-12', 'dolor non', 359, '2022-02-03 14:25:57', '2022-02-03 14:25:57', 'MED2169'),
(784, 2, 'occaecati quia', 'occaecati-quia', '84.00', 63, 'Sit quis qui sit quasi ipsum deserunt veniam adipisci. Quia perspiciatis placeat qui. Voluptates aliquid dolorem error ipsum corrupti nam sit. Error non neque et natus. Quis asperiores veniam qui saepe. Ipsam odio sapiente consequuntur in. Vel expedita facilis dolor vitae alias doloribus. Molestiae ipsam voluptas voluptatem et minus sunt accusamus et.', '2022-12-12', 'necessitatibus doloremque', 160, '2022-02-03 14:25:57', '2022-02-03 14:25:57', 'MED3399'),
(785, 2, 'suscipit neque', 'suscipit-neque', '85.00', 65, 'Sequi sunt laboriosam voluptatem repudiandae ut laborum et consequatur. Harum quod eligendi placeat aut. Nemo assumenda enim doloribus aut enim nihil assumenda. Eos explicabo quaerat molestiae error. Earum inventore cumque corrupti quasi. Eos dolor hic aperiam quae odit et vel dolor. Ad hic porro aut. Quia neque aut unde excepturi porro. Voluptate corporis illum aut ratione voluptatem. Id iure at odio a animi placeat ratione.', '2022-12-12', 'distinctio et', 692, '2022-02-03 14:25:57', '2022-02-03 14:25:57', 'MED6803'),
(786, 2, 'optio tempora', 'optio-tempora', '70.00', 33, 'Fugiat dignissimos distinctio perferendis magni sed quia. Inventore aperiam sequi consequatur. Laboriosam aut neque error sit ex corrupti tempora. Quasi accusantium sint nisi corporis neque harum. Provident eius non illo. Non sit rem dolor velit nihil quidem. Omnis fugit eos quasi dolore quibusdam pariatur officia qui. Natus alias perspiciatis non aspernatur voluptates rem neque cum. Quo voluptatem velit dicta. Laborum dolorem tenetur accusamus. Est commodi dolores commodi et.', '2022-12-12', 'qui perferendis', 101, '2022-02-03 14:25:57', '2022-02-03 14:25:57', 'MED3639'),
(787, 2, 'nesciunt rerum', 'nesciunt-rerum', '10.00', 73, 'Eius qui et eveniet iste debitis. Omnis minima minima omnis eligendi. Aperiam sit sed consequatur laborum omnis aut nesciunt. Totam consequatur non repellendus soluta iusto. Et magnam ut assumenda voluptate quidem. Quas voluptates et qui ad dolorum et blanditiis. Fuga et qui in est temporibus. Quasi earum ipsum iusto magnam aspernatur voluptate eaque.', '2022-12-12', 'molestiae facilis', 865, '2022-02-03 14:25:57', '2022-02-03 14:25:57', 'MED9910'),
(788, 2, 'et corrupti', 'et-corrupti', '81.00', 56, 'Magnam ducimus totam doloremque est. Aliquam architecto quia iste optio minima dolores. Voluptate est qui dolor et praesentium vitae iusto. Reiciendis est deserunt facilis est. Ex enim aut non similique architecto. Recusandae vero ut quasi ut ipsa. Qui velit sed dolores voluptate. Dolor repudiandae modi aut aut. Fugit aut omnis praesentium voluptas maxime eligendi. Consequatur veritatis architecto enim est omnis quia sunt. Qui quia nihil accusantium doloribus in.', '2022-12-12', 'excepturi labore', 576, '2022-02-03 14:25:57', '2022-02-03 14:25:57', 'MED6306'),
(789, 2, 'consequatur distinctio', 'consequatur-distinctio', '43.00', 81, 'Itaque id quia accusamus itaque quis perspiciatis voluptates. Aspernatur enim similique nesciunt. Tempora accusantium ab animi aliquam omnis pariatur. Exercitationem delectus quis debitis. Quidem perspiciatis incidunt consequatur harum saepe. Doloribus qui aut voluptas qui. Ad corporis quibusdam est qui dignissimos velit dolorem. Vel impedit voluptas in molestiae possimus illum labore. Enim aut natus itaque eum. Rem quis adipisci nisi sequi.', '2022-12-12', 'enim sequi', 67, '2022-02-03 14:25:57', '2022-02-03 14:25:57', 'MED2198'),
(790, 2, 'dolor sunt', 'dolor-sunt', '66.00', 87, 'Tenetur praesentium illo eligendi sit doloremque excepturi voluptatibus pariatur. Qui dolor impedit omnis deserunt. Est qui repudiandae iusto voluptatem. Placeat aut fugiat ratione iure id. Eius illum qui porro enim tempore. Totam id eveniet rem. Quas dolore tempora esse et.', '2022-12-12', 'esse repellat', 707, '2022-02-03 14:25:57', '2022-02-03 14:25:57', 'MED8120'),
(791, 2, 'eius explicabo', 'eius-explicabo', '11.00', 100, 'Quia unde ut inventore. Debitis deserunt qui quo facere rerum. Ea id accusamus beatae vitae quia maxime nobis voluptatem. Laboriosam voluptas praesentium tenetur adipisci iure eos cupiditate. Nesciunt id minima aut animi perspiciatis eveniet voluptatibus. Voluptatibus tenetur nemo et voluptatibus. Voluptatem saepe eligendi omnis doloribus. Similique sed et atque voluptas corrupti culpa eum quisquam.', '2022-12-12', 'aut deleniti', 50, '2022-02-03 14:25:57', '2022-02-03 14:25:57', 'MED8681'),
(792, 2, 'debitis error', 'debitis-error', '94.00', 22, 'Repellat praesentium quibusdam culpa. Voluptate neque nobis dolores. Sapiente pariatur eveniet quos qui hic ad voluptatem. Dolor mollitia explicabo est at. Et tempora maiores nemo vel atque doloremque et. Ut nam hic qui dolor ut ullam non. Adipisci nulla quaerat tempora dolor dolor. Aliquid consectetur autem in tempore illo. Quasi distinctio id odio dolore culpa. Reiciendis impedit autem voluptates explicabo. Accusamus autem quo aut aut minima delectus quos.', '2022-12-12', 'culpa placeat', 130, '2022-02-03 14:25:57', '2022-02-03 14:25:57', 'MED3666'),
(793, 2, 'eum consequatur', 'eum-consequatur', '56.00', 84, 'Nobis magnam provident modi et quo est. Molestiae eos placeat at ut. Neque perspiciatis asperiores voluptatibus repudiandae. Ex animi consequuntur asperiores praesentium repellendus eaque animi aspernatur. Aut dolorem omnis porro consequatur. Facere et autem quas. Accusantium aliquam quo vero adipisci tempore nesciunt. Dolor soluta autem non ratione quisquam. Libero aut enim voluptatem dolor tempore optio labore. Dolorum tempora itaque excepturi. Libero ex quibusdam perferendis esse.', '2022-12-12', 'dolor sequi', 316, '2022-02-03 14:25:57', '2022-02-03 14:25:57', 'MED6617'),
(794, 2, 'qui autem', 'qui-autem', '21.00', 78, 'Est sunt ea non dolor suscipit dolore minus. Corporis totam quos rerum sequi harum harum. Eligendi et saepe voluptas dolores repellat non. Omnis consequatur quidem fugit quisquam tempora quia. Modi sunt voluptas eos neque itaque quo. Atque quod velit expedita repudiandae voluptas eum. Quia vero assumenda eum dignissimos minima. Molestiae aut dolor officia est incidunt quasi fuga ipsum. Animi suscipit et rerum est.', '2022-12-12', 'enim quia', 606, '2022-02-03 14:25:57', '2022-02-03 14:25:57', 'MED8559'),
(795, 2, 'provident molestiae', 'provident-molestiae', '93.00', 69, 'Fugiat quos quo similique est. Corrupti nesciunt odio ipsam. Consequatur facere aspernatur voluptatem quo. Corrupti qui magnam iure excepturi aspernatur architecto distinctio similique. Dolorum similique voluptatem dolorum explicabo id quod. Commodi soluta facilis inventore non est aut. Beatae sed sequi et officia temporibus sit. Earum dicta laudantium dolorem. Porro vitae aut molestiae quae.', '2022-12-12', 'et quaerat', 691, '2022-02-03 14:25:57', '2022-02-03 14:25:57', 'MED5133'),
(796, 2, 'qui fugit', 'qui-fugit', '77.00', 28, 'Eum sunt cumque deleniti. Atque in et quaerat dolor. Dignissimos in aut et. Nihil ab adipisci aut qui ut atque laboriosam ex. Dolorum quibusdam hic debitis perferendis quia illo voluptatem. Beatae a aut occaecati. Magni totam dolor veritatis ut enim officiis. Excepturi et aut in voluptatum amet et atque. Provident et quia modi et facilis voluptatibus.', '2022-12-12', 'eaque eum', 708, '2022-02-03 14:25:57', '2022-02-03 14:25:57', 'MED3461'),
(797, 2, 'impedit quaerat', 'impedit-quaerat', '79.00', 20, 'Vel assumenda eaque omnis sit ab. Sit earum distinctio molestias modi voluptatibus error. Qui dolore suscipit vel nihil est tempore sapiente facilis. Consectetur sint aut vel qui. Iusto esse perspiciatis distinctio eum numquam odio enim. Ullam officiis odio distinctio est nostrum. Earum saepe error quidem in laboriosam corrupti. Quia omnis aut facilis ratione. Recusandae est saepe iure. Nihil aut eos eum nulla.', '2022-12-12', 'rerum nisi', 660, '2022-02-03 14:25:57', '2022-02-03 14:25:57', 'MED3864'),
(798, 2, 'tenetur voluptatem', 'tenetur-voluptatem', '13.00', 34, 'Temporibus repellendus cum error quidem voluptate error. Quibusdam velit aut perferendis officiis et. Voluptatibus commodi sed nam et sunt aliquam autem. Quo quis est doloribus dolorum. Consequatur dolor molestias vel sed tempore a vel. Consectetur reprehenderit impedit ad est exercitationem vel quas. Ullam quaerat cum autem voluptatum. Quia quod recusandae commodi est sit rem molestias.', '2022-12-12', 'aperiam earum', 846, '2022-02-03 14:25:57', '2022-02-03 14:25:57', 'MED5787'),
(799, 2, 'dolores cumque', 'dolores-cumque', '67.00', 39, 'Magni fugiat quis blanditiis ratione. Culpa et illo pariatur eveniet culpa ea tempora. Laudantium dolorem nihil dolorum possimus velit molestiae. Qui rerum quia assumenda autem ex ipsam provident. Sapiente officiis minus unde commodi repellat et ut. Dolore rerum autem consectetur iure sed necessitatibus placeat modi. Magni sit ex fuga eum. Consequuntur omnis ut quod quam sunt ea eligendi animi. Dolorem eveniet aut eligendi alias vel facilis. Voluptatum sed officiis dolore iusto et eos.', '2022-12-12', 'eaque ut', 607, '2022-02-03 14:25:57', '2022-02-03 14:25:57', 'MED1830'),
(800, 2, 'officia repellendus', 'officia-repellendus', '87.00', 93, 'Id officia occaecati et eaque nisi. Omnis dolor dolor voluptas eius. Nemo consequatur velit porro labore nisi. Est voluptate sunt assumenda mollitia minima et nihil. Qui quo optio voluptate non tempore. Quaerat inventore animi non architecto. Totam et nihil nisi est quidem quaerat reiciendis. Eaque consectetur adipisci nesciunt et totam omnis quo excepturi. Earum est mollitia voluptatem quia.', '2022-12-12', 'est qui', 691, '2022-02-03 14:25:57', '2022-02-03 14:25:57', 'MED3030'),
(801, 2, 'sunt nisi', 'sunt-nisi', '49.00', 38, 'Aut voluptatum aut culpa ab sint qui. Magnam necessitatibus dolorum sequi dicta cum. Aut sit amet velit sed. Laborum et suscipit et dolor ullam consequuntur molestiae. Numquam est quis libero. Voluptates velit quaerat eligendi quaerat assumenda. Repellat similique et est. Tenetur doloribus a quia commodi cumque reprehenderit officiis voluptatem.', '2022-12-12', 'omnis est', 352, '2022-02-03 14:25:57', '2022-02-03 14:25:57', 'MED7736');

-- --------------------------------------------------------

--
-- Table structure for table `pharmacy_order_items`
--

CREATE TABLE `pharmacy_order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `pharmacist_id` bigint(20) UNSIGNED NOT NULL,
  `phramacy_order_id` bigint(20) UNSIGNED NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pharmacy_order_items`
--

INSERT INTO `pharmacy_order_items` (`id`, `product_id`, `pharmacist_id`, `phramacy_order_id`, `price`, `quantity`, `created_at`, `updated_at`) VALUES
(16, 1, 1, 14, '100.00', 15, '2022-01-26 06:59:40', '2022-01-26 06:59:40'),
(17, 4, 1, 14, '100.00', 15, '2022-01-26 06:59:41', '2022-01-26 06:59:41'),
(18, 13, 1, 14, '100.00', 15, '2022-01-26 06:59:41', '2022-01-26 06:59:41'),
(19, 602, 2, 15, '62.00', 10, '2022-02-03 14:35:53', '2022-02-03 14:35:53'),
(20, 604, 2, 15, '9.00', 15, '2022-02-03 14:35:53', '2022-02-03 14:35:53'),
(21, 608, 2, 15, '20.00', 15, '2022-02-03 14:35:53', '2022-02-03 14:35:53'),
(22, 612, 2, 15, '37.00', 5, '2022-02-03 14:35:53', '2022-02-03 14:35:53'),
(23, 1, 1, 16, '100.00', 10, '2022-02-18 05:21:58', '2022-02-18 05:21:58'),
(24, 10, 1, 16, '1000.00', 15, '2022-02-18 05:21:58', '2022-02-18 05:21:58'),
(25, 24, 1, 17, '120.00', 1, '2022-02-18 05:22:30', '2022-02-18 05:22:30');

-- --------------------------------------------------------

--
-- Table structure for table `phramacy_orders`
--

CREATE TABLE `phramacy_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pharmacist_id` bigint(20) UNSIGNED NOT NULL,
  `subtotal` decimal(8,2) NOT NULL,
  `dsicount` decimal(8,2) NOT NULL DEFAULT 0.00,
  `tax` decimal(8,2) NOT NULL,
  `total` decimal(8,2) NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'COS',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `phramacy_orders`
--

INSERT INTO `phramacy_orders` (`id`, `pharmacist_id`, `subtotal`, `dsicount`, `tax`, `total`, `status`, `created_at`, `updated_at`) VALUES
(14, 1, '4500.00', '0.00', '540.00', '5040.00', 'COS', '2022-01-26 06:59:40', '2022-01-26 06:59:40'),
(15, 2, '1240.00', '0.00', '148.80', '1388.80', 'COS', '2022-02-03 14:35:53', '2022-02-03 14:35:53'),
(16, 1, '16000.00', '0.00', '1920.00', '17920.00', 'COS', '2022-02-18 05:21:57', '2022-02-18 05:21:57'),
(17, 1, '120.00', '0.00', '14.40', '134.40', 'COS', '2022-02-18 05:22:30', '2022-02-18 05:22:30');

-- --------------------------------------------------------

--
-- Table structure for table `practices`
--

CREATE TABLE `practices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `doctor_id` bigint(20) UNSIGNED NOT NULL,
  `hospital_id` bigint(20) UNSIGNED NOT NULL,
  `timing` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `days` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `practices`
--

INSERT INTO `practices` (`id`, `doctor_id`, `hospital_id`, `timing`, `days`, `created_at`, `updated_at`) VALUES
(2, 1, 9, '12:00-15:30', 'Wednesday-Friday', '2022-01-21 16:28:52', '2022-01-21 16:28:52'),
(3, 1, 12, '17:00-19:00', 'Wednesday-Friday', '2022-01-21 16:29:24', '2022-01-21 16:29:24'),
(4, 1, 19, '17:00-19:00', 'Monday-Tuesday', '2022-01-21 16:29:55', '2022-01-21 16:29:55'),
(5, 1, 51, '21:00-24:00', 'Monday-Friday', '2022-01-22 16:22:14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `regular_price` decimal(8,2) NOT NULL,
  `sale_price` decimal(8,2) DEFAULT NULL,
  `SKU` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock_status` enum('instock','outofstock') COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT 10,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `images` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_approval` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `subcategory_id` bigint(20) UNSIGNED DEFAULT NULL,
  `expiry_date` date NOT NULL DEFAULT '2022-12-12',
  `purchase_price` decimal(8,2) NOT NULL DEFAULT 50.00,
  `purchase_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `user_id`, `name`, `slug`, `short_description`, `description`, `regular_price`, `sale_price`, `SKU`, `stock_status`, `featured`, `quantity`, `image`, `images`, `category_id`, `admin_approval`, `created_at`, `updated_at`, `subcategory_id`, `expiry_date`, `purchase_price`, `purchase_name`) VALUES
(1, 1, 'voluptatem ut', 'voluptatem-ut', 'Voluptatem exercitationem id amet quia autem perspiciatis. Adipisci quaerat accusantium omnis debitis.', 'Ut et eius quas et totam. Et ut doloremque debitis aliquam. Dolorem vel et iste repudiandae deleniti. Aut inventore et culpa distinctio reprehenderit cumque. Consequatur iste earum culpa est corrupti laudantium assumenda. Dolorem est qui nemo facilis adipisci molestiae consectetur. Dolore adipisci ut saepe iure nihil eveniet autem aut. A expedita harum fugiat commodi voluptates magni. Ipsum illum non illum quia. Modi delectus assumenda ab natus voluptatem. Qui tempore sint eum occaecati.', '100.00', '90.00', 'MED911', 'instock', 0, 30, 'product20.png', ',16398925150.png', 1, '1', '2021-12-12 21:47:34', '2021-12-19 00:41:55', NULL, '2022-12-12', '50.00', NULL),
(2, 1, 'ratione a', 'ratione-a', 'Culpa et delectus officia voluptatem eum deserunt. Voluptas libero vitae id aut eum officiis. Sunt molestiae qui cum illo harum.', 'Quidem dicta est sed numquam ut sapiente. Doloremque quod quia provident est nemo suscipit. Maxime nobis suscipit molestiae. Eum est commodi sapiente autem rerum. Illo molestiae similique est cumque voluptas rem. Perspiciatis qui possimus consequuntur et recusandae. Neque expedita libero numquam odio accusamus tenetur quaerat. Quam at perferendis et assumenda pariatur. Aliquam sed dolore maxime accusantium repellendus est quia. Illum facere voluptate unde est sapiente.', '100.00', '85.00', 'MED5502', 'instock', 1, 51, 'product11.png', ',16398925830.png,16398925831.png', 4, '1', '2021-12-12 21:47:34', '2021-12-19 00:43:03', NULL, '2022-12-12', '50.00', NULL),
(3, 4, 'est quo', 'est-quo', 'Dolores hic accusamus voluptatem suscipit provident qui est. Fuga dolor et maxime delectus sint quos eius. Sed ad vel nostrum ratione at.', 'Maxime sapiente dolorum et doloribus quo. Quibusdam est expedita et animi ipsam ipsam non aliquam. Nostrum quas culpa minus excepturi necessitatibus eum quidem consectetur. Sunt ea rerum aut sit. Saepe sit nobis ad eveniet ut dicta. Voluptatibus illo a in earum. Voluptas labore ea consequuntur distinctio et consequatur. Quaerat sequi architecto qui optio alias. Possimus minima vero non ullam. Occaecati ullam saepe enim dolores sit. Eos exercitationem cum illo ut consequatur aliquid.', '100.00', NULL, 'MED8470', 'instock', 0, 74, 'product4.png', NULL, 1, '1', '2021-12-12 21:47:34', '2021-12-12 21:47:34', NULL, '2022-12-12', '50.00', NULL),
(4, 1, 'provident sed', 'provident-sed', 'Corporis asperiores aperiam ipsa voluptatem. Placeat sapiente voluptatibus ex dolorem. Sit illo autem beatae aperiam.', 'Dolor voluptatem eos consequatur aliquid. Ut qui fugit assumenda eaque nobis. Quidem similique ut quia possimus omnis itaque debitis. Veritatis magni dolorum neque et autem. Sed aliquam et sequi quidem dolor quasi et. Natus ut quia sint consectetur ab voluptas. Itaque dolores doloribus et quia.', '100.00', '89.00', 'MED2472', 'instock', 0, 20, 'product1.png', ',16398926420.png,product1.png', 5, '1', '2021-12-12 21:47:34', '2021-12-19 00:44:02', NULL, '2022-12-12', '50.00', NULL),
(5, 4, 'officiis ipsa', 'officiis-ipsa', 'Architecto aspernatur nihil quo odit. Dolores quo ea sequi voluptatum id et laboriosam. Quisquam dolor exercitationem aut ipsum ut architecto. Qui et et eum aut.', 'Consequuntur quidem incidunt pariatur similique velit delectus. Placeat quis a voluptatem delectus. Ea voluptas eos dolore nesciunt magnam. Facilis nobis velit earum qui necessitatibus. A a pariatur nulla sit accusantium quos. Quis totam sunt autem veritatis eos eaque rerum magnam. Commodi eos molestiae in animi neque eligendi ut ad.', '100.00', NULL, 'MED2951', 'instock', 0, 86, 'product7.png', NULL, 5, '1', '2021-12-12 21:47:34', '2021-12-12 21:47:34', NULL, '2022-12-12', '50.00', NULL),
(6, 2, 'sunt accusamus', 'sunt-accusamus', 'Aperiam fugit est soluta voluptas officia neque. Et ut consequuntur totam tempore. Blanditiis non enim qui mollitia est impedit omnis. At a excepturi et qui excepturi et.', 'Enim reiciendis ea impedit perspiciatis molestias. Quibusdam et necessitatibus id distinctio est est. Quas suscipit doloremque soluta voluptatem. Unde ab et inventore iure temporibus fuga officiis. Quos qui amet vero numquam dolor numquam ipsum voluptatem. Non ut quia velit ullam corporis. Qui qui vitae sit reiciendis eum. Repudiandae eaque cumque fugit iste. Nobis dolore dolor eum maxime enim dolor harum quidem. Non in explicabo et dolor.', '100.00', '90.00', 'MED5073', 'instock', 1, 92, 'product15.png', ',16401200440.jpg', 6, '1', '2021-12-12 21:47:34', '2021-12-21 15:54:04', 5, '2022-12-12', '50.00', NULL),
(7, 3, 'optio est', 'optio-est', 'Impedit est et hic nobis blanditiis. Sunt corporis quam sit ut.', 'Maiores fugiat dolores id inventore repellendus similique. Eum porro saepe ut autem. Consequuntur qui sint dolorem hic ipsa. Magni quo qui dolore quod dicta veritatis. Enim sed impedit amet esse facilis omnis et. Iusto accusamus autem amet quos. Dolores quam molestiae laborum iste nihil quia. Est quas consequatur accusantium et. Sint tenetur occaecati velit optio. Aut necessitatibus odit repellat voluptate. Sed qui et rerum corporis ex tempora praesentium iure.', '100.00', NULL, 'MED1417', 'instock', 0, 13, 'product18.png', NULL, 4, '1', '2021-12-12 21:47:35', '2021-12-12 21:47:35', NULL, '2022-12-12', '50.00', NULL),
(8, 2, 'vero voluptatem', 'vero-voluptatem', 'Dolorum non praesentium et suscipit quam itaque. Laborum sed magnam voluptatem inventore. Nulla omnis consequatur dicta ea quas minus.', 'Optio minus eum praesentium placeat doloremque quidem impedit. Incidunt sed voluptatem itaque ut. Est at et laboriosam consequatur. Nisi laudantium rerum iusto omnis blanditiis perspiciatis est. Assumenda aspernatur et quia quasi iste. Culpa facilis et quod corporis nostrum quia. Cum vitae quae a qui quibusdam ipsam quam. Quam quibusdam corrupti itaque aliquam ea repellendus. Quis sit reiciendis consequatur dolorem molestias repellendus omnis. Qui asperiores et voluptatem minima.', '100.00', '0.00', 'MED6777', 'instock', 1, 91, 'product17.png', NULL, 1, '1', '2021-12-12 21:47:35', '2021-12-23 00:54:22', NULL, '2022-12-12', '50.00', NULL),
(9, 4, 'tempora consectetur', 'tempora-consectetur', 'Rerum voluptas culpa numquam quam ab omnis sunt possimus. Et temporibus optio omnis autem. Sint adipisci nostrum quia aliquam aperiam adipisci nesciunt.', 'Animi fugiat quod occaecati nihil temporibus aut nemo dignissimos. Ipsum enim magnam amet qui modi illum. Omnis culpa id impedit omnis amet quo provident. Nostrum aut et praesentium accusantium placeat et quia. Quo eligendi nostrum quod et nisi unde id. Quo non libero ipsa. Libero qui beatae et est incidunt velit. Et nisi totam itaque incidunt est autem officiis. Sint quo fuga corporis ut. Quasi occaecati quaerat quasi.', '100.00', NULL, 'MED440', 'instock', 0, 89, 'product2.png', NULL, 5, '1', '2021-12-12 21:47:35', '2021-12-12 21:47:35', NULL, '2022-12-12', '50.00', NULL),
(10, 1, 'in tenetur', 'in-tenetur', 'Hic nisi rerum quibusdam illum. Voluptatem in blanditiis atque dolor. Velit ut possimus aut. Voluptatem non ratione aut nulla temporibus.', 'Qui occaecati cumque consequuntur reprehenderit qui rem consectetur. Ipsum odit eos quisquam quia. Suscipit et in consequatur. Vel sunt quis et magni qui et quos. Ex amet at maiores ut voluptate sit exercitationem. Officia eius eum et fugit dolorum qui aspernatur. Ut doloribus velit minima totam dolorum officiis. Officiis labore pariatur minus nam. Itaque sunt ratione consequuntur veniam ut laudantium quo. Alias sit sed est commodi corrupti.', '1000.00', '950.00', 'MED3809', 'instock', 1, 12, 'product14.png', ',16398927120.png', 4, '1', '2021-12-12 21:47:35', '2021-12-19 00:45:12', NULL, '2022-12-12', '50.00', NULL),
(11, 4, 'et ut', 'et-ut', 'Nihil est in nihil porro sunt. Veniam asperiores quo nam distinctio et nam. Nihil vel iure laudantium optio nesciunt consequatur. Deleniti quam voluptatum sint sunt dolorem nesciunt eius.', 'Ut et qui unde facilis ut animi facere. Quo voluptas qui repellendus nam accusantium suscipit. Qui ex ut temporibus delectus quis maiores et. Qui earum eum omnis quas perspiciatis dolore. Et ipsum est in modi in saepe animi. In et distinctio id aspernatur. Aut sint qui veritatis impedit aut. Possimus occaecati illum quam aut fugit. Accusamus delectus neque eius voluptatem alias reiciendis exercitationem.', '100.00', NULL, 'MED809', 'instock', 0, 33, 'product12.png', NULL, 3, '1', '2021-12-12 21:47:35', '2021-12-12 21:47:35', NULL, '2022-12-12', '50.00', NULL),
(12, 3, 'deserunt sed', 'deserunt-sed', 'Provident provident adipisci rem. Cupiditate et eum exercitationem dolore ut qui. Fuga eum dolores minus ea possimus numquam atque.', 'Consectetur incidunt nisi est voluptatibus totam sit doloremque a. Voluptatibus sed dignissimos error voluptas deleniti. Nesciunt ut debitis cupiditate debitis voluptas iusto officiis. Dicta dolores sit neque cumque fugiat laudantium. Esse quis deleniti expedita enim. Libero amet sunt est dolor ad. Voluptatibus reiciendis molestias pariatur est. Qui recusandae vero odio. Consequuntur nobis consequatur aut cupiditate odio necessitatibus maxime. Nobis ipsa quis voluptates neque quo hic molestiae.', '100.00', NULL, 'MED738', 'instock', 0, 92, 'product5.png', NULL, 5, '1', '2021-12-12 21:47:35', '2021-12-12 21:47:35', NULL, '2022-12-12', '50.00', NULL),
(13, 1, 'sapiente quia', 'sapiente-quia', 'Blanditiis optio et corporis maxime doloremque similique. Iste velit enim minima. Nobis saepe quia ullam quis officia.', 'Tenetur facilis tempore vitae id odit consequatur. Eius consequuntur autem recusandae voluptatibus. Unde asperiores excepturi sint voluptatum sunt ipsum occaecati. Tempore nihil magni in tenetur quaerat quas ex. Fugiat dolore quam velit laboriosam. Corrupti tempora ut voluptates itaque. Animi est minus sit totam vero quia velit. Pariatur sint cumque aut tempore reiciendis consectetur aut in. Reprehenderit autem vero perspiciatis est consectetur non.', '100.00', NULL, 'MED4957', 'instock', 0, 31, 'product3.png', NULL, 5, '1', '2021-12-12 21:47:35', '2021-12-12 21:47:35', NULL, '2022-12-12', '50.00', NULL),
(14, 4, 'et consequuntur', 'et-consequuntur', 'Quia voluptatem est non at reiciendis voluptatem. Ut exercitationem consequatur exercitationem porro incidunt. Omnis eos quo debitis natus maiores provident.', 'Tempore quidem eligendi quae quo. Impedit laborum nam et nisi. Id voluptatem adipisci quidem in quas. Corporis voluptas consequatur nemo minus dolores. Hic earum qui cum magni quia. Dolores facere quia neque ut. Tempore consectetur expedita provident vel sunt veritatis magnam. Quia ut illo aut quo. Aut possimus maxime vero est aut. Iure dolor non exercitationem cum. Ut est est accusantium quos minus autem. Aut magni non eaque adipisci inventore itaque ut.', '100.00', NULL, 'MED5338', 'instock', 0, 37, 'product10.png', NULL, 3, '1', '2021-12-12 21:47:35', '2021-12-12 21:47:35', NULL, '2022-12-12', '50.00', NULL),
(15, 1, 'non hic', 'non-hic', 'Quam dolorum placeat amet aspernatur. Et tenetur qui corrupti aut repellendus. Sit eum suscipit facere ea doloribus adipisci sint. Odit odio eius fuga.', 'Voluptate rem tempora cum. Possimus sint labore aut incidunt. Eveniet a aut et assumenda amet et omnis. Dolore ex libero a doloribus. Sit rerum deserunt earum eligendi ea doloremque. Ut ratione hic ab eos omnis. Aperiam velit vel molestiae ex eos. Autem ut vel est similique. Sunt minima ut aut ut consectetur qui. Dignissimos deleniti sint rerum rem.', '100.00', NULL, 'MED4911', 'instock', 0, 56, 'product6.png', NULL, 5, '1', '2021-12-12 21:47:35', '2021-12-12 21:47:35', NULL, '2022-12-12', '50.00', NULL),
(16, 4, 'debitis repellat', 'debitis-repellat', 'Molestiae odit excepturi reprehenderit quisquam incidunt est. Ipsa quidem nesciunt est sed repellendus. Expedita amet ut sint sint deleniti. Sed suscipit odio temporibus ut velit magnam nemo aut.', 'Et explicabo aliquam cum exercitationem voluptatibus dicta. Sapiente et et rem praesentium sit enim nam. Numquam sunt cum cupiditate perferendis vel quia. Incidunt vel et nihil vero dolorem eveniet eos. Qui fugit unde velit aut sapiente aut. Et qui neque et omnis praesentium. Voluptatem ut odio autem quam sit. Vitae deserunt est repellat sed quo est reiciendis. Natus et est aut inventore.', '100.00', NULL, 'MED5248', 'instock', 0, 28, 'product19.png', NULL, 1, '1', '2021-12-12 21:47:35', '2021-12-12 21:47:35', NULL, '2022-12-12', '50.00', NULL),
(17, 4, 'aut voluptas', 'aut-voluptas', 'Provident alias dolorem quod similique earum. Cum culpa magni error. Voluptatibus debitis velit qui nam molestiae ex odio.', 'Laborum recusandae sit eos itaque aut neque. Dolore vero earum eos deserunt nam vel. Sunt accusantium est ea illum. Maxime quibusdam reprehenderit est aliquam omnis enim aut. Esse voluptas modi est dolor sint autem. Et quae ut error et nesciunt aut dignissimos. Molestiae velit dolore aut quae maiores aut minus odit. Accusamus rerum aut molestias corporis veniam laboriosam nam. Et rem ea ullam repellendus eaque dicta quod neque. Fugit qui non molestiae delectus quidem. Est et non blanditiis.', '100.00', NULL, 'MED5344', 'instock', 0, 43, 'product9.png', NULL, 4, '1', '2021-12-12 21:47:36', '2021-12-12 21:47:36', NULL, '2022-12-12', '50.00', NULL),
(18, 4, 'quae inventore', 'quae-inventore', 'Incidunt qui earum quia aut occaecati qui. Magnam labore rem occaecati maiores eum.', 'Non neque natus provident aspernatur consequuntur officiis voluptatem. Possimus id magni sapiente hic ut quia. Nesciunt accusamus voluptas occaecati incidunt. Sed voluptate et esse fuga quis. Sequi iure rerum libero omnis itaque enim hic. Ipsum consequatur et provident voluptate itaque deleniti cupiditate. Repudiandae odit vel temporibus consectetur dolores deserunt. Vel reprehenderit ut est. Non cumque ut asperiores similique. Eum placeat nihil provident enim nisi quis voluptate.', '100.00', NULL, 'MED8741', 'instock', 0, 97, 'product16.png', NULL, 3, '1', '2021-12-12 21:47:36', '2021-12-12 21:47:36', NULL, '2022-12-12', '50.00', NULL),
(19, 2, 'voluptatem aut', 'voluptatem-aut', 'Beatae fugit amet et ratione quod repellendus ad. Earum molestiae quos laudantium est architecto. Sequi et consequuntur quam qui libero doloribus. Quos autem officia quibusdam ut.', 'Labore voluptatem sint fugiat saepe necessitatibus sit laborum. Ut inventore in pariatur consectetur cumque. Debitis est ea et. Est reprehenderit rerum molestiae quia molestiae. Ex non quos aut non. Enim dolor totam quo similique nihil doloribus. Odit commodi reiciendis et hic quam. Architecto ut aspernatur fuga rerum autem unde veniam. Provident et quis quae repellat ut numquam ea. Sit fugiat atque veniam et esse rerum. Est consequatur in quod ducimus. Quis consequuntur a rerum similique iste.', '100.00', '45.00', 'MED4145', 'instock', 1, 81, 'product13.png', NULL, 3, '1', '2021-12-12 21:47:36', '2021-12-23 00:55:16', NULL, '2022-12-12', '50.00', NULL),
(20, 2, 'rerum officiis', 'rerum-officiis', 'Ea quod dolor rerum sit. Sed debitis qui et dolor. Fugiat hic quod explicabo voluptatibus aut magnam impedit. Earum maxime ipsum ut sed.', 'Nostrum expedita qui dolorem exercitationem et vero aut. Et veniam laborum optio quaerat odit id earum est. Nemo quasi eligendi dolore et. Ex molestiae dignissimos voluptatem harum optio numquam. Alias minima officia qui enim ducimus iste placeat ut. Quibusdam doloremque ad iusto sunt aut maxime. Error aut ea quis quo deleniti. Aut non placeat velit ab. Culpa culpa et id sed suscipit. Ullam cum omnis reiciendis iure. Quasi quia illum et quas voluptas sit.', '100.00', '49.00', 'MED5206', 'instock', 1, 23, 'product8.png', NULL, 2, '1', '2021-12-12 21:47:36', '2021-12-23 00:56:11', NULL, '2022-12-12', '50.00', NULL),
(21, 3, 'consequuntur corporis', 'consequuntur-corporis', 'Labore amet inventore et blanditiis. Accusantium consequatur corrupti in expedita. Odit modi ab omnis vitae. Accusamus excepturi quia alias.', 'Neque sunt perferendis quos nihil. Nisi quae saepe et. Quia et odio doloribus consequuntur. Voluptas qui consequatur non excepturi earum. Tenetur voluptatem quo amet hic molestias aut. Libero pariatur quia cumque quo nam consequatur. Illum sed magni debitis beatae. Culpa omnis sed est veritatis perferendis. Odit facilis sed accusamus. Totam in eius enim.', '100.00', NULL, 'MED7509', 'instock', 0, 26, 'product21.png', NULL, 5, '1', '2021-12-12 21:47:36', '2021-12-12 21:47:36', NULL, '2022-12-12', '50.00', NULL),
(24, 1, 'CALPOL® Infant Suspension', 'calpol-infant-suspension', '<p><span style=\"color: #2f2f2f; font-family: \'Trebuchet MS\'; font-size: 16px; letter-spacing: 1.2px; background-color: #fdf8fb;\">The CALPOL</span><span style=\"box-sizing: inherit; font-size: 12px; line-height: 0; position: relative; vertical-align: baseline; top: -0.5em; color: #2f2f2f; font-family: \'Trebuchet MS\'; letter-spacing: 1.2px; background-color: #fdf8fb;\">&reg;</span><span style=\"color: #2f2f2f; font-family: \'Trebuchet MS\'; font-size: 16px; letter-spacing: 1.2px; background-color: #fdf8fb;\">&nbsp;Infant Suspension Range provides soothing relief from pain and fever for your children, when they need it most. It starts to work on fever in just 15 minutes but is still gentle on delicate tummies.</span></p>', '<ul style=\"box-sizing: inherit; padding: 2rem; list-style-position: initial; list-style-image: initial; margin: 0px 0px 0px 1rem; color: #333333; font-family: \'Trebuchet MS\'; font-size: 16px; background-color: rgba(236, 0, 126, 0.1);\">\n<li style=\"box-sizing: inherit; margin-bottom: 0.2em; padding-left: 0.5rem; line-height: 25px; text-align: start; color: #202020; letter-spacing: 1.5px;\">Gets to work on fever in just&nbsp; 15 minutes</li>\n<li style=\"box-sizing: inherit; margin-bottom: 0.2em; padding-left: 0.5rem; line-height: 25px; text-align: start; color: #202020; letter-spacing: 1.5px;\">Gentle on tummies</li>\n<li style=\"box-sizing: inherit; margin-bottom: 0.2em; padding-left: 0.5rem; line-height: 25px; text-align: start; color: #202020; letter-spacing: 1.5px;\">For babies and children aged&nbsp; from 2 months to 6 years&nbsp; weighing more than 4kg and&nbsp; not premature.</li>\n<li style=\"box-sizing: inherit; margin-bottom: 0.2em; padding-left: 0.5rem; line-height: 25px; text-align: start; color: #202020; letter-spacing: 1.5px;\">Available as: Original Strawberry Flavour 100ml and 200ml, Sugar Free Strawberry Flavour 100ml and 200ml, Sugar Free Colour Free Strawberry Flavour 100ml, Sachet 12x 5ml Strawberry Flavour, Sachet 20x 5ml Strawberry Flavour</li>\n<li style=\"box-sizing: inherit; margin-bottom: 0.2em; padding-left: 0.5rem; line-height: 25px; text-align: start; color: #202020; letter-spacing: 1.5px;\">Contains paracetamol</li>\n</ul>', '120.00', '115.00', 'MED10007', 'instock', 1, 45, '1639946222.jpg', ',16399462220.jpg,16399462221.jpg', 6, '1', '2021-12-19 15:37:02', '2021-12-19 16:05:27', 5, '2022-12-12', '50.00', NULL),
(25, 2, 'iure dolore', 'iure-dolore', 'Est a ratione provident qui. In dolorum rerum dolorem incidunt recusandae expedita ut et. Consequatur odio sed dolorem dolorem earum in sit. Earum aperiam voluptates placeat unde repudiandae.', 'Eaque recusandae ipsa sit nobis et. Corrupti nesciunt non omnis. Et sit dolores voluptatem iste. Ipsum ipsum enim recusandae accusamus occaecati. Iusto sint ducimus dolore maiores aut autem soluta. Enim culpa aliquid quidem sint est quo. Possimus repudiandae est velit quibusdam ipsa. Corporis voluptas at dolorem. Dolor similique porro et molestias ea voluptatum. Porro est velit ut. Facere delectus incidunt ea dolore doloribus libero. Voluptatibus quaerat maiores consequatur non cum quas.', '100.00', NULL, 'MED3906', 'instock', 0, 28, 'product13.png', NULL, 5, '0', '2022-01-05 04:14:52', '2022-01-05 04:14:52', NULL, '2022-12-12', '50.00', NULL),
(26, 3, 'et non', 'et-non', 'Natus et repellendus maxime quibusdam. Iste earum quas ut quae unde itaque. Temporibus rerum enim autem hic.', 'Deleniti et ex facilis totam expedita unde. Incidunt placeat laudantium modi totam repellendus doloribus. Inventore ea laborum exercitationem dolores. Non porro nobis explicabo. Quas fuga incidunt illo ea. Ut cum et ut doloribus. Et corrupti illo voluptas optio est commodi distinctio. Accusantium consectetur qui enim veritatis et quo natus. Accusamus ipsum voluptatem recusandae quis. Porro dolor atque id delectus reprehenderit dolor et.', '100.00', NULL, 'MED1966', 'instock', 0, 82, 'product7.png', NULL, 3, '0', '2022-01-05 04:14:52', '2022-01-05 04:14:52', NULL, '2022-12-12', '50.00', NULL),
(27, 1, 'non voluptatem', 'non-voluptatem', 'Animi sit quisquam quo consectetur. Quidem quod impedit enim expedita. Non sunt sunt facilis modi in.', 'Est soluta ut tempora nostrum laborum ad totam. Animi voluptatem officiis voluptatem sapiente. Tempore et est tempora nisi. Nihil nemo quia ea perspiciatis ut dolorem. Sunt quibusdam asperiores ea doloremque nemo qui. Quia consequuntur perferendis consequatur nihil sint saepe ut. Ea est placeat pariatur et inventore et.', '100.00', NULL, 'MED6548', 'instock', 0, 34, 'product4.png', NULL, 3, '0', '2022-01-05 04:14:52', '2022-01-05 04:14:52', NULL, '2022-12-12', '50.00', NULL),
(28, 2, 'saepe voluptatem', 'saepe-voluptatem', 'Qui aut et culpa dolore. Doloremque sequi eius a architecto. Et dolorum nam magni ad perspiciatis. Tenetur enim beatae beatae vero error fugit modi et.', 'Itaque qui totam deserunt magnam sequi voluptatibus. Dolores molestias at quia consequatur quis et qui. Velit asperiores maiores rerum et voluptatem sed autem. Et eum officiis tempore aperiam et modi. Quaerat debitis at minima dolores eveniet. Eum non aut dolor nemo in. Molestias incidunt omnis cumque. Voluptatem quia in cupiditate. Est eveniet dolor consequatur sed. Nihil nobis sed sunt repudiandae maiores quibusdam.', '100.00', NULL, 'MED2097', 'instock', 0, 23, 'product15.png', NULL, 5, '0', '2022-01-05 04:14:52', '2022-01-05 04:14:52', NULL, '2022-12-12', '50.00', NULL),
(29, 3, 'rem qui', 'rem-qui', 'Facere debitis dolor autem qui omnis. Rerum consequatur consectetur corporis ut libero sequi. Dolorem et neque et optio maiores odio.', 'Quas ullam rerum deserunt exercitationem qui et. Est voluptatem voluptatem voluptas non dolorem laboriosam. Cumque natus vel autem velit. Recusandae commodi incidunt odit vero. Rerum ducimus ea facere voluptates accusantium enim dolores. Dolore blanditiis consectetur culpa excepturi laudantium. Aliquid nobis eos pariatur sapiente aut fuga accusantium. Magni ipsum illo commodi neque repellat omnis. Quam mollitia dolores omnis optio.', '100.00', NULL, 'MED326', 'instock', 0, 55, 'product12.png', NULL, 5, '0', '2022-01-05 04:14:52', '2022-01-05 04:14:52', NULL, '2022-12-12', '50.00', NULL),
(30, 4, 'dolores dignissimos', 'dolores-dignissimos', 'Excepturi quas quia doloremque et vero soluta temporibus. Reiciendis vel non perspiciatis sed blanditiis.', 'Quia iusto illum in voluptas omnis dolores enim. Corporis distinctio nostrum similique aut mollitia qui et. Tenetur temporibus ut placeat placeat porro voluptates quae. Esse omnis aliquid ut autem. Mollitia culpa modi earum ut est nihil qui voluptate. Commodi fuga eos omnis ipsam eum aliquam ut qui. Et tenetur ad aut. Dolores et non rem consequatur eius voluptas. Deserunt aut voluptatibus facilis quasi temporibus quia. Quidem est repellendus similique dolor laborum sed voluptatem.', '100.00', NULL, 'MED592', 'instock', 0, 44, 'product19.png', NULL, 4, '0', '2022-01-05 04:14:52', '2022-01-05 04:14:52', NULL, '2022-12-12', '50.00', NULL),
(31, 4, 'vitae autem', 'vitae-autem', 'Voluptatum autem ea et earum sed sit. Et commodi et quisquam quos expedita tempora. Facere soluta reiciendis provident amet voluptatem atque et.', 'Reiciendis debitis quibusdam ut dolores dolorum qui. Placeat ut ipsam earum iure impedit. Voluptates quia nostrum temporibus aliquid. Veritatis et iste tenetur occaecati. Dolores excepturi consequatur magnam aspernatur quas quidem ad. Sed quo repellendus eum quia nobis. Ab ut tempore illo veniam non ea. Optio minima illo laudantium quo amet ut expedita. Dolores quo amet corporis praesentium et id doloremque.', '100.00', NULL, 'MED4058', 'instock', 0, 50, 'product8.png', NULL, 2, '0', '2022-01-05 04:14:52', '2022-01-05 04:14:52', NULL, '2022-12-12', '50.00', NULL),
(32, 3, 'aspernatur voluptatem', 'aspernatur-voluptatem', 'Rerum numquam qui numquam sed veritatis. Omnis natus aut cum sapiente. Et fugiat vero qui.', 'Ut doloribus et atque non nisi cum odio. Voluptate est quia et eligendi vel autem. Et est recusandae ut cum aspernatur. Consequatur neque atque quia aliquam aspernatur autem voluptatum. Reprehenderit non saepe eum et ipsa non. Sed vero aperiam incidunt. Ipsam dignissimos labore debitis ea praesentium. Consequuntur voluptatem distinctio quo vel. Possimus distinctio deleniti iusto quia omnis unde sunt. Et alias quaerat sed.', '100.00', NULL, 'MED4300', 'instock', 0, 43, 'product1.png', NULL, 5, '0', '2022-01-05 04:14:52', '2022-01-05 04:14:52', NULL, '2022-12-12', '50.00', NULL),
(33, 1, 'unde id', 'unde-id', 'Porro consequatur voluptas qui incidunt quas laudantium. Qui eaque veniam eligendi expedita est et quo.', 'Iure id eligendi cumque dolor. Quisquam sint dolor similique mollitia dignissimos. Rerum molestiae vel voluptas error quis quod. Velit vel possimus qui et occaecati eos et. Quae architecto dicta velit. Est cupiditate fuga repudiandae adipisci. Omnis veniam distinctio itaque. Ratione provident quia numquam saepe hic esse. Consequatur aliquid voluptatem ipsam beatae. Tempore voluptatum molestias voluptas omnis hic et. Voluptatibus modi iste reiciendis.', '100.00', NULL, 'MED718', 'instock', 0, 43, 'product11.png', NULL, 2, '0', '2022-01-05 04:14:52', '2022-01-05 04:14:52', NULL, '2022-12-12', '50.00', NULL),
(34, 1, 'labore nobis', 'labore-nobis', 'Non in commodi repellat quis quia quisquam dignissimos. Laboriosam eos asperiores cum exercitationem iure necessitatibus. Sed vel expedita reprehenderit beatae eos deserunt quos.', 'Labore ut ex ea iste nesciunt laboriosam et. Sequi aut et et eveniet eum cumque. Dolorem omnis voluptatibus ullam consequatur. Quo corrupti sunt est facilis expedita repellendus omnis. Vel ea voluptate odio voluptatum. Quia eius officiis perferendis ex in facilis. Voluptas atque modi neque dignissimos sit aut.', '100.00', NULL, 'MED9563', 'instock', 0, 95, 'product21.png', NULL, 4, '0', '2022-01-05 04:14:52', '2022-01-05 04:14:52', NULL, '2022-12-12', '50.00', NULL),
(35, 3, 'voluptatem maiores', 'voluptatem-maiores', 'Incidunt similique qui quae libero. Et vel vel qui dolorem blanditiis repellat. Hic non facere recusandae alias sunt ut quo. Quos reiciendis incidunt cumque.', 'Nisi qui sint velit. Veniam dolorem non porro suscipit sit rerum ut. Accusantium at a consequatur ipsa. Dolorem illum laboriosam non blanditiis. Quas tempora expedita rerum alias et. Aliquam eveniet et incidunt est soluta optio error. Fuga quia provident molestias atque voluptatum. Ea debitis consequatur incidunt ratione sint eligendi aliquam. Qui ipsam excepturi nisi soluta a. Est aut possimus quaerat et quia nostrum aut corrupti. Sit consequuntur aliquam et aliquam.', '100.00', NULL, 'MED4870', 'instock', 0, 38, 'product10.png', NULL, 2, '0', '2022-01-05 04:14:52', '2022-01-05 04:14:52', NULL, '2022-12-12', '50.00', NULL),
(36, 3, 'atque repellendus', 'atque-repellendus', 'Vitae aut repellendus possimus quo. Quaerat magni laudantium voluptate dicta officiis ut.', 'Iusto necessitatibus quos voluptatibus molestias autem sed possimus repellendus. Eligendi velit distinctio dolores dolorem qui unde aliquam veritatis. At sed possimus rerum eos. Et totam labore quae et nulla. Aperiam ea quo possimus sapiente. Voluptate blanditiis hic voluptates molestiae inventore laudantium voluptas. Ut est beatae qui velit. Neque id ut eaque rem asperiores. Enim ipsam ut sunt iste nesciunt. Natus sunt sit occaecati nemo et et.', '100.00', NULL, 'MED9530', 'instock', 0, 68, 'product20.png', NULL, 3, '0', '2022-01-05 04:14:52', '2022-01-05 04:14:52', NULL, '2022-12-12', '50.00', NULL),
(37, 4, 'unde et', 'unde-et', 'Sit reiciendis quidem exercitationem culpa. Consequatur non non vel illo dignissimos.', 'Assumenda aut eaque ut recusandae corrupti. Dolorum aut veritatis aliquid aliquam. Expedita minima temporibus dolor velit et iure. Velit quia eos quisquam at sit ut magni. Corrupti nesciunt odit voluptas id qui ea nemo. Commodi fugiat et possimus alias pariatur in. Cum dolores ea vero facere sit sed. Et eos autem ratione harum magni qui. Nemo est non saepe nisi. Quas quo similique accusamus provident officia rerum. Officiis placeat molestiae minus officiis dolore architecto.', '100.00', NULL, 'MED5654', 'instock', 0, 31, 'product3.png', NULL, 4, '0', '2022-01-05 04:14:52', '2022-01-05 04:14:52', NULL, '2022-12-12', '50.00', NULL),
(38, 4, 'laborum esse', 'laborum-esse', 'Et aperiam totam officiis perspiciatis. Qui vero quo commodi exercitationem. Recusandae quia id aut in.', 'Beatae non facilis laborum sunt. Est velit officia dicta aut. Quia odio rerum assumenda ut itaque voluptatem aspernatur. Voluptatem odio consequatur saepe quidem. Fugiat facilis non sunt iste iste suscipit. Est voluptatibus officiis magni eveniet eaque. Enim minus est fugit minus rerum labore aut et. Qui doloremque officiis quia id quis.', '100.00', NULL, 'MED8336', 'instock', 0, 15, 'product6.png', NULL, 2, '0', '2022-01-05 04:14:52', '2022-01-05 04:14:52', NULL, '2022-12-12', '50.00', NULL),
(39, 3, 'eos deleniti', 'eos-deleniti', 'Voluptas necessitatibus porro et culpa assumenda rerum quia. Tempora beatae exercitationem ut id cumque recusandae a. Omnis aliquam deleniti minima quo et officiis fugit est.', 'Tenetur voluptate similique non quisquam cum in consequatur vitae. Quibusdam asperiores velit sunt culpa minima iste dolores. Adipisci non odio maiores impedit excepturi dolore. Accusamus aut nihil nam aliquid molestiae debitis. Eligendi delectus odio omnis dolores. Non laboriosam rerum maiores non rem. Et veritatis et nihil placeat reprehenderit cumque optio. Autem possimus dolor incidunt labore odio.', '100.00', NULL, 'MED1929', 'instock', 0, 11, 'product2.png', NULL, 1, '0', '2022-01-05 04:14:52', '2022-01-05 04:14:52', NULL, '2022-12-12', '50.00', NULL),
(40, 2, 'aut quo', 'aut-quo', 'Modi aut et dolorem. Id consequuntur blanditiis itaque. Est qui inventore aut voluptate et unde. At a distinctio excepturi non doloremque.', 'Et sapiente reprehenderit magnam perspiciatis at unde explicabo. Earum facere et voluptatem veritatis. Soluta magni et odit a provident debitis. Est hic et et possimus eaque cum velit. Amet quia eaque voluptatum. Voluptate qui consequuntur fugit mollitia tempora consectetur sed. Ut amet aut amet nobis non omnis. Ut quo quis quis fugiat. Animi omnis a ut. Veritatis commodi illum vero non rerum. Dolorem aut libero veritatis explicabo ut perspiciatis.', '100.00', NULL, 'MED2763', 'instock', 0, 30, 'product17.png', NULL, 5, '0', '2022-01-05 04:14:52', '2022-01-05 04:14:52', NULL, '2022-12-12', '50.00', NULL),
(41, 1, 'aspernatur iste', 'aspernatur-iste', 'Eos quam est architecto quos enim quia dicta ut. Quibusdam non est nobis eum veritatis officiis quisquam quo. Suscipit enim vel et nam. Repellat ut non aliquid voluptates consequatur quis.', 'Quia molestias odio rerum modi quasi. Porro quia nihil eligendi repellendus commodi ut adipisci. Quod excepturi numquam et sed eum. Voluptas pariatur sequi vero ratione corporis ipsa. Enim voluptatibus quis qui accusantium corporis. Modi tempore recusandae inventore unde placeat. Amet eos sint nihil consequatur velit. Suscipit eos qui quibusdam qui. Quo ea voluptas molestiae. A doloribus non culpa fuga. Voluptas adipisci tenetur eos quo minus deserunt.', '100.00', NULL, 'MED38', 'instock', 0, 87, 'product14.png', NULL, 3, '0', '2022-01-05 04:14:52', '2022-01-05 04:14:52', NULL, '2022-12-12', '50.00', NULL),
(42, 1, 'voluptatibus magnam', 'voluptatibus-magnam', 'Repellendus consequuntur ipsum suscipit sint eius quibusdam. Sunt sequi deserunt nihil mollitia aliquam voluptatem laudantium aut. Qui sapiente quasi incidunt et repudiandae facilis error.', 'Dicta ut distinctio id commodi. Assumenda quia mollitia voluptas. Neque qui consectetur similique voluptatem deleniti officiis. Dolor incidunt quo libero veritatis aperiam dicta. Praesentium eligendi sapiente qui est tempora nam reiciendis. Voluptatem deleniti est corrupti et possimus quo et. Mollitia rerum quia unde iusto unde dolores. Voluptates corrupti qui deleniti necessitatibus aliquid unde. Odit enim saepe velit est non qui voluptatum.', '100.00', NULL, 'MED6543', 'instock', 0, 66, 'product5.png', NULL, 5, '0', '2022-01-05 04:14:52', '2022-01-05 04:14:52', NULL, '2022-12-12', '50.00', NULL),
(43, 1, 'odio nemo', 'odio-nemo', 'Sit consequatur distinctio non praesentium quas est. Error eum sit sed ab sed nobis veritatis.', 'Dicta aut nesciunt fugiat. At voluptas et doloremque natus et perferendis praesentium iste. Ut voluptas incidunt tempora est dolorem. Corrupti incidunt sapiente quis porro. Dolor porro non sint aperiam quos quaerat. Nobis labore enim reiciendis. In nemo quis soluta vero iusto occaecati et est. Sit omnis ex ut adipisci id velit laborum. Dolorem odio animi cum dolor. Itaque itaque ut aliquam nisi iste enim.', '100.00', NULL, 'MED9813', 'instock', 0, 11, 'product9.png', NULL, 5, '0', '2022-01-05 04:14:52', '2022-01-05 04:14:52', NULL, '2022-12-12', '50.00', NULL),
(44, 2, 'aut architecto', 'aut-architecto', 'Ipsam quisquam dolor quas minima. Voluptas eveniet tempore eum qui mollitia temporibus quaerat tempore. Tempore in et enim facilis accusamus impedit.', 'Provident doloremque dignissimos nulla ipsum sed. Quaerat officiis voluptatem voluptatibus est quis sit molestias est. Animi autem aliquam ut tenetur. Debitis nobis aspernatur quidem suscipit quas quibusdam dicta molestiae. Sunt debitis aut impedit rem aut. Ut aut omnis rerum veniam libero minima. Recusandae alias rem quasi sit tempore. Natus debitis porro quos minima fugit et et. Sint ut vel sed dicta temporibus.', '100.00', NULL, 'MED1589', 'instock', 0, 69, 'product16.png', NULL, 3, '0', '2022-01-05 04:14:52', '2022-01-05 04:14:52', NULL, '2022-12-12', '50.00', NULL),
(45, 2, 'id atque', 'id-atque', 'Commodi quae explicabo sed voluptatem. Enim dolorum sapiente quia qui ipsam officiis. Quaerat explicabo rerum et eos. Voluptas nulla sit voluptatum qui sunt vel.', 'A voluptas consequatur ducimus maxime. Voluptatem iusto velit nihil exercitationem placeat praesentium cumque. Asperiores aut vitae aut quis rerum dolorum dolores et. Reprehenderit possimus non nobis. Non est quaerat odio sint libero. Vitae rerum qui amet similique cum. Ipsa corporis suscipit sit maxime voluptas quod. Ullam accusamus qui tempora ea.', '100.00', NULL, 'MED5329', 'instock', 0, 85, 'product18.png', NULL, 2, '0', '2022-01-05 04:14:52', '2022-01-05 04:14:52', NULL, '2022-12-12', '50.00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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

INSERT INTO `profiles` (`id`, `user_id`, `image`, `line1`, `line2`, `city`, `province`, `country`, `zipcode`, `created_at`, `updated_at`) VALUES
(1, 9, '1639995389.png', 'Hussnain town street no 4 house no 12', 'nr govt girls high school piran ghaib road multan', 'Multan', 'Punjab', 'Pakistan', '60000', '2021-12-20 03:33:37', '2021-12-20 05:16:29'),
(2, 13, NULL, 'Hussnain town street 4', NULL, 'Multan', NULL, 'Pakistan', '6000', '2021-12-29 14:41:16', '2021-12-31 06:06:12'),
(3, 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-31 15:13:39', '2021-12-31 15:13:39');

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
(1, 5, 'Very Good and follow all quality standard.', 9, '2021-12-16 17:10:24', '2021-12-16 17:10:24'),
(2, 5, 'Excellent Product', 4, '2022-01-10 16:58:12', '2022-01-10 16:58:12');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sale_date` datetime NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `sale_date`, `status`, `created_at`, `updated_at`) VALUES
(1, '2022-12-30 14:48:00', 1, '2021-12-13 13:48:00', NULL);

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
('fNOvCEjLxNDbyX6w2yMKkRBT0jFRI6yAXuPjndD9', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.51 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMkc0cVJtdVZDbWFOZW9sem1aalhrN1lJTWRIZTdrR1Q0ZlBiczc2MSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fX0=', 1646347956),
('Me4ORHx7lRqFH3IrfZh3rnXGAvDzHf5EOWBfhDrx', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.75 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiY2w2MEllNHdYQVBSN1JZeUk1TEtHUGRHUTR0ZzNJaGxYZUpyc0pncCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1649535139);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `map` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinterest` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `youtube` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `email`, `phone`, `phone2`, `address`, `map`, `twitter`, `facebook`, `pinterest`, `instagram`, `youtube`, `created_at`, `updated_at`) VALUES
(1, 'uaemedicine@gmail.com', '03106473564', '03443262447', 'UAE Sharja', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3612.987267508402!2d55.15948321488336!3d25.102292341704654!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x6e9875c3e0bb3696!2s7HQQ4526%2BWM7!5e0!3m2!1sen!2s!4v1640783085360!5m2!1sen!2s\" width=\"1200\" height=\"600\" style=\"border:2;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', 'www.twitter.com', 'www.facebook.com', 'www.pinterest.com', 'www.instagram.com', 'www.youtube.com', '2021-12-17 21:18:01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

CREATE TABLE `shippings` (
  `id` bigint(20) UNSIGNED NOT NULL,
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
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `supplier_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shippings`
--

INSERT INTO `shippings` (`id`, `firstname`, `lastname`, `mobile`, `email`, `line1`, `line2`, `city`, `province`, `country`, `zipcode`, `order_id`, `product_id`, `supplier_id`, `created_at`, `updated_at`) VALUES
(3, 'Muhammad', 'Aslam', '03106473564', 'user@gmail.com', 'Hussnain town street no 4 house', '12', 'Multan', 'Punjab', 'Pakistan', '600001', 6, 6, NULL, '2021-12-15 14:40:16', '2021-12-15 14:40:16'),
(5, 'Muhammad', 'Aslam', '03106473564', 'user@gmail.com', 'Hussnain town street no 4 house', '12', 'Multan', 'Punjab', 'Pakistan', '600001', 10, 5, NULL, '2021-12-15 16:28:33', '2021-12-15 16:28:33'),
(6, 'Muhammad', 'Ashraf', '03106473564', 'aslamsubengr@gmail.com', 'Hussnain town st 4 h 12', 'nr GOVT GHSS piran ghaib road multan', 'Multan', 'Punjab', 'Pakistan', '60000', 11, 2, NULL, '2021-12-22 23:09:05', '2021-12-22 23:09:05'),
(7, 'Muhammad', 'Ashraf', '03106473564', 'aslamsubeng123@gmail.com', 'Hussnain town st 4 h 12', 'nr GOVT GHSS piran ghaib road multan', 'Multan', 'Punjab', 'Pakistan', '60000', 12, 1, NULL, '2021-12-22 23:47:12', '2021-12-22 23:47:12'),
(8, 'Muhammad', 'Ashraf', '03106473564', 'aslamsubengr@gmail.com', 'Hussnain town st 4 h 12', 'nr GOVT GHSS piran ghaib road multan', 'Multan', 'Punjab', 'Pakistan', '60000', 13, 4, NULL, '2021-12-22 23:50:22', '2021-12-22 23:50:22'),
(9, 'Muhammad', 'Ashraf', '03106473564', 'aslamsubengr@gmail.com', 'Hussnain town st 4 h 12', 'nr GOVT GHSS piran ghaib road multan', 'Multan', 'Punjab', 'Pakistan', '60000', 14, 3, NULL, '2021-12-23 00:03:54', '2021-12-23 00:03:54'),
(10, 'Muhammad', 'Ashraf', '03106473564', 'aslamsubengr@gmail.com', 'Hussnain town st 4 h 12', 'nr GOVT GHSS piran ghaib road multan', 'Multan', 'Punjab', 'Pakistan', '60000', 15, 6, NULL, '2021-12-23 00:11:13', '2021-12-23 00:11:13'),
(11, 'Muhammad', 'Aslam', '03106473564', 'aslamsubeng123@gmail.com', 'Hussnain town street 4', 'kjkhhhihkjkhjh', 'Multan', 'punjab', 'Pakistan', '6000', 29, 27, NULL, '2022-01-19 15:59:12', '2022-01-19 15:59:12'),
(12, 'Muhammad', 'Aslam', '03106473564', 'aslamsubeng123@gmail.com', 'Hussnain town street 4', 'kjkhhhihkjkhjh', 'Multan', 'punjab', 'Pakistan', '6000', 32, 32, NULL, '2022-02-18 04:50:14', '2022-02-18 04:50:14');

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
('admin@gmail.com', 'cart', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-01-09 17:01:44', NULL),
('admin@gmail.com', 'wishlist', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-01-07 10:16:46', NULL),
('aslamsubengr@gmail.com', 'cart', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:1:{s:32:\"18d6934483b994fb9943b43b7d7646bf\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":9:{s:5:\"rowId\";s:32:\"18d6934483b994fb9943b43b7d7646bf\";s:2:\"id\";i:8;s:3:\"qty\";i:1;s:4:\"name\";s:15:\"vero voluptatem\";s:5:\"price\";d:100;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:18:\"App\\Models\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:12;s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved\";b:0;}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2021-12-20 04:48:03', NULL),
('aslamsubengr@gmail.com', 'wishlist', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:1:{s:32:\"a775bac9cff7dec2b984e023b95206aa\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":9:{s:5:\"rowId\";s:32:\"a775bac9cff7dec2b984e023b95206aa\";s:2:\"id\";i:3;s:3:\"qty\";i:1;s:4:\"name\";s:7:\"est quo\";s:5:\"price\";d:100;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:18:\"App\\Models\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:12;s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved\";b:0;}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2021-12-20 04:48:03', NULL),
('blogger@gmail.com', 'cart', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-01-19 16:55:36', NULL),
('blogger@gmail.com', 'wishlist', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:2:{s:32:\"027c91341fd5cf4d2579b49c4b6a90da\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":9:{s:5:\"rowId\";s:32:\"027c91341fd5cf4d2579b49c4b6a90da\";s:2:\"id\";i:1;s:3:\"qty\";i:1;s:4:\"name\";s:13:\"voluptatem ut\";s:5:\"price\";d:100;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:18:\"App\\Models\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:12;s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved\";b:0;}s:32:\"370d08585360f5c568b18d1f2e4ca1df\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":9:{s:5:\"rowId\";s:32:\"370d08585360f5c568b18d1f2e4ca1df\";s:2:\"id\";i:2;s:3:\"qty\";i:1;s:4:\"name\";s:9:\"ratione a\";s:5:\"price\";d:100;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:18:\"App\\Models\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:12;s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved\";b:0;}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-01-19 16:55:36', NULL),
('phr@gmail.com', 'cart', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-01-20 14:20:26', NULL),
('sup@gmail.com', 'cart', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:1:{s:32:\"370d08585360f5c568b18d1f2e4ca1df\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":9:{s:5:\"rowId\";s:32:\"370d08585360f5c568b18d1f2e4ca1df\";s:2:\"id\";i:2;s:3:\"qty\";i:1;s:4:\"name\";s:9:\"ratione a\";s:5:\"price\";d:85;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:18:\"App\\Models\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:12;s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved\";b:0;}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2021-12-22 23:05:32', NULL),
('user@gmail.com', 'cart', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-02-18 10:01:55', NULL),
('user@gmail.com', 'wishlist', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-02-18 09:46:06', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `name`, `slug`, `category_id`, `created_at`, `updated_at`) VALUES
(3, 'Dengue Fever', 'dengue-fever', 6, '2021-12-19 12:20:28', '2021-12-19 12:20:28'),
(4, 'Malaria', 'malaria', 6, '2021-12-19 12:20:47', '2021-12-19 12:20:47'),
(5, 'Cold Fever', 'cold-fever', 6, '2021-12-19 12:21:11', '2021-12-19 12:21:11'),
(6, 'Headache', 'headache', 1, '2021-12-20 06:18:17', '2021-12-20 06:18:17');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `registration_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_address` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `province` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zipcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `admin_approval` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `user_id`, `image`, `company_name`, `registration_no`, `company_address`, `city`, `province`, `country`, `zipcode`, `created_at`, `updated_at`, `admin_approval`) VALUES
(1, 2, '1640237812.png', 'MA Pharmacy Enterprises', 'MA102PE', 'Industrial Estate Sher Shah Road Multan', 'Multan', 'Punjab', 'Pakistan', NULL, '2021-12-21 16:36:14', '2022-01-05 03:15:37', 'yes'),
(2, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-23 04:34:00', '2022-01-05 03:16:56', 'yes'),
(3, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-23 04:35:18', '2022-01-05 03:15:45', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `transaction1s`
--

CREATE TABLE `transaction1s` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `appointment_id` bigint(20) UNSIGNED NOT NULL,
  `mode` enum('cod','card','jazzcash','easypaisa') COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('pending','approved','canceled','refund') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `subtotal` decimal(8,2) NOT NULL,
  `tax` decimal(8,2) NOT NULL,
  `total` decimal(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transaction1s`
--

INSERT INTO `transaction1s` (`id`, `user_id`, `appointment_id`, `mode`, `status`, `created_at`, `updated_at`, `subtotal`, `tax`, `total`) VALUES
(1, 9, 43, 'cod', 'pending', '2021-12-26 02:57:35', '2021-12-26 02:57:35', '1500.00', '180.00', '1680.00'),
(2, 9, 65, 'card', 'approved', '2021-12-26 04:45:59', '2021-12-26 04:45:59', '1500.00', '180.00', '1680.00'),
(3, 9, 64, 'card', 'approved', '2021-12-26 17:13:50', NULL, '1500.00', '180.00', '1680.00'),
(4, 9, 67, 'card', 'approved', '2021-12-26 13:07:10', '2021-12-26 13:07:10', '1500.00', '180.00', '1680.00'),
(5, 9, 71, 'card', 'approved', '2021-12-26 13:24:54', '2021-12-26 13:24:54', '1500.00', '180.00', '1680.00'),
(6, 9, 72, 'card', 'approved', '2022-01-10 11:05:59', '2022-01-10 11:05:59', '1500.00', '180.00', '1680.00'),
(7, 9, 78, 'jazzcash', 'pending', '2022-01-22 11:59:49', '2022-01-22 11:59:49', '2000.00', '240.00', '2240.00'),
(8, 9, 79, 'jazzcash', 'pending', '2022-01-26 08:53:20', '2022-01-26 08:53:20', '4000.00', '480.00', '4480.00'),
(9, 9, 80, 'jazzcash', 'pending', '2022-01-26 08:55:46', '2022-01-26 08:55:46', '2000.00', '240.00', '2240.00'),
(10, 9, 81, 'jazzcash', 'pending', '2022-01-26 08:57:44', '2022-01-26 08:57:44', '2000.00', '240.00', '2240.00'),
(11, 9, 82, 'jazzcash', 'pending', '2022-01-26 09:00:49', '2022-01-26 09:00:49', '2000.00', '240.00', '2240.00'),
(12, 9, 83, 'easypaisa', 'pending', '2022-01-26 09:02:31', '2022-01-26 09:02:31', '2000.00', '240.00', '2240.00'),
(13, 9, 84, 'jazzcash', 'pending', '2022-01-26 09:04:47', '2022-01-26 09:04:47', '2000.00', '240.00', '2240.00'),
(17, 9, 88, 'easypaisa', 'pending', '2022-01-26 09:15:19', '2022-01-26 09:15:19', '1500.00', '180.00', '1680.00');

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
  `updated_at` timestamp NULL DEFAULT NULL,
  `subtotal` decimal(8,2) NOT NULL,
  `tax` decimal(8,2) NOT NULL,
  `total` decimal(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `user_id`, `order_id`, `mode`, `status`, `created_at`, `updated_at`, `subtotal`, `tax`, `total`) VALUES
(2, 9, 6, 'cod', 'approved', '2021-12-15 14:40:16', '2022-01-24 07:31:33', '100.00', '12.00', '112.00'),
(3, 9, 10, 'card', 'approved', '2021-12-15 16:28:41', '2021-12-15 16:28:41', '900.00', '108.00', '1008.00'),
(4, 2, 11, 'cod', 'pending', '2021-12-22 23:09:05', '2021-12-22 23:09:05', '85.00', '10.20', '95.20'),
(5, 9, 12, 'cod', 'pending', '2021-12-22 23:47:12', '2021-12-22 23:47:12', '90.00', '10.80', '100.80'),
(6, 9, 13, 'card', 'approved', '2021-12-22 23:50:29', '2021-12-22 23:50:29', '89.00', '10.68', '99.68'),
(7, 9, 14, 'card', 'approved', '2021-12-23 00:04:12', '2021-12-23 00:04:12', '1056.00', '126.72', '1182.72'),
(8, 9, 15, 'cod', 'pending', '2021-12-23 00:11:13', '2021-12-23 00:11:13', '90.00', '10.80', '100.80'),
(10, 9, 16, 'cod', 'pending', '2021-12-28 14:44:12', '2021-12-28 14:44:12', '120.00', '14.40', '134.40'),
(11, 9, 17, 'cod', 'pending', '2021-12-29 03:08:14', '2021-12-29 03:08:14', '100.00', '12.00', '112.00'),
(12, 9, 18, 'cod', 'pending', '2021-12-29 03:11:06', '2021-12-29 03:11:06', '100.00', '12.00', '112.00'),
(13, 9, 19, 'cod', 'pending', '2021-12-29 03:12:43', '2021-12-29 03:12:43', '100.00', '12.00', '112.00'),
(14, 9, 20, 'cod', 'pending', '2021-12-29 03:17:39', '2021-12-29 03:17:39', '100.00', '12.00', '112.00'),
(15, 9, 21, 'cod', 'pending', '2021-12-29 03:19:17', '2021-12-29 03:19:17', '100.00', '12.00', '112.00'),
(16, 9, 22, 'cod', 'pending', '2022-01-07 10:07:02', '2022-01-07 10:07:02', '100.00', '12.00', '112.00'),
(17, 9, 23, 'cod', 'pending', '2022-01-07 10:09:51', '2022-01-07 10:09:51', '100.00', '12.00', '112.00'),
(18, 9, 24, 'cod', 'pending', '2022-01-07 10:11:48', '2022-01-07 10:11:48', '100.00', '12.00', '112.00'),
(19, 9, 25, 'cod', 'pending', '2022-01-07 10:13:57', '2022-01-07 10:13:57', '100.00', '12.00', '112.00'),
(20, 9, 26, 'cod', 'pending', '2022-01-07 10:18:40', '2022-01-07 10:18:40', '100.00', '12.00', '112.00'),
(21, 9, 27, 'cod', 'pending', '2022-01-07 10:20:25', '2022-01-07 10:20:25', '100.00', '12.00', '112.00'),
(22, 9, 28, 'cod', 'pending', '2022-01-07 10:21:34', '2022-01-07 10:21:34', '100.00', '12.00', '112.00'),
(23, 15, 30, 'card', 'approved', '2022-01-19 16:00:12', '2022-01-19 16:00:12', '1000.00', '120.00', '1120.00'),
(24, 9, 31, 'cod', 'pending', '2022-01-22 16:59:39', '2022-01-22 16:59:39', '100.00', '12.00', '112.00'),
(25, 9, 32, 'cod', 'pending', '2022-02-18 04:50:14', '2022-02-18 04:50:14', '100.00', '12.00', '112.00');

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
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utype` enum('USR','ADM','PHR','DOC','SUP','DELBOY','DELMAN','BLOG') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `last_login_at` timestamp NULL DEFAULT NULL,
  `current_login_at` timestamp NULL DEFAULT NULL,
  `social_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `social_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `phone`, `utype`, `created_at`, `updated_at`, `last_login_at`, `current_login_at`, `social_id`, `social_type`) VALUES
(1, 'SuperAdmin', 'admin@gmail.com', '2021-12-29 07:41:49', '$2y$10$CefrTyHJ3HCKWEh9rBA2IOBYv2AvbuB9t/E8aO0yf4yDvo2bmdPn6', NULL, NULL, NULL, NULL, NULL, '03017419324', 'ADM', '2021-10-11 07:00:18', '2022-03-03 17:47:28', '2022-02-18 05:09:12', '2022-03-03 17:47:28', NULL, NULL),
(2, 'Supplier', 'sup@gmail.com', '2021-12-29 07:41:49', '$2y$10$/xVqsYKZoyqjp.51Sy7rH.IoBA.xjmi5FvTwihcFt2kqLFlCl5j3.', NULL, NULL, NULL, NULL, NULL, '03007419324', 'SUP', '2021-11-11 07:33:59', '2022-02-03 13:57:12', '2022-01-04 13:54:22', '2022-02-03 13:57:12', NULL, NULL),
(3, 'Supplier1', 'sup1@gmail.com', '2021-12-29 07:41:49', '$2y$10$UEFqojJ.nnYe2aAU6am/G.cH8HK6WTST8rhaJFI4S1.O0GhotXl2C', NULL, NULL, NULL, NULL, NULL, '03027419324', 'SUP', '2021-12-11 07:38:01', '2021-12-11 07:38:01', NULL, NULL, NULL, NULL),
(4, 'Supplier2', 'sup2@gmail.com', '2021-12-24 07:41:49', '$2y$10$V7HF2SrJcwajvd8S3ety8OOzANZgToXLYRZ.nehNrbNrR6cAjXwsG', NULL, NULL, NULL, NULL, NULL, '03037419324', 'SUP', '2021-12-11 07:39:14', '2021-12-11 07:39:14', NULL, NULL, NULL, NULL),
(5, 'Doctor', 'doc@gmail.com', '2021-12-21 07:41:49', '$2y$10$dBEJi66frWZlYjeQJNMVYefJUcRGmwWiRxm98y17u3MQ2dnPQBHti', NULL, NULL, NULL, NULL, NULL, '03047419324', 'DOC', '2021-10-11 07:40:46', '2022-01-21 15:22:36', '2022-01-21 09:55:08', '2022-01-21 15:22:36', NULL, NULL),
(6, 'Doctor1', 'doc1@gmail.com', '2021-12-19 07:41:49', '$2y$10$HbbuWYzsO7c9fjzaZexIV.rlLKo/GrNRnZE4kFpIkZhZZGF2t044K', NULL, NULL, NULL, NULL, NULL, '03057419324', 'DOC', '2021-02-11 07:41:40', '2021-12-11 07:41:40', NULL, NULL, NULL, NULL),
(7, 'Doctor2', 'doc2@gmail.com', '2021-12-24 07:41:49', '$2y$10$x70u.dTWoeKQU/vwwsfb9eCGvpoSkmW/nbvfMab5yKE4qubb.yCdm', NULL, NULL, NULL, NULL, NULL, '03067419324', 'DOC', '2021-01-11 07:42:42', '2021-12-11 07:42:42', NULL, NULL, NULL, NULL),
(8, 'Doctor3', 'doc3@gmail.com', '2021-12-25 07:41:49', '$2y$10$lexz/LMk9mu8f9XaP5ifc.eedTXe.SZMp1wdokY4gt2IPB67hk0Dy', NULL, NULL, NULL, NULL, NULL, '03077419324', 'DOC', '2021-12-11 07:44:50', '2021-12-11 07:44:50', NULL, NULL, NULL, NULL),
(9, 'Muhammad Aslam', 'user@gmail.com', '2021-12-29 07:41:49', '$2y$10$xhesRXjW/A0il3zMChtbKe9l7rJJfvBpCdRLqh.ynzKCYfWl72rs6', NULL, NULL, 'PhL96LYdHNWIgFCyGsxllEOUac4PClawoy6krCXuQGDeo1LauE3rHsZu2ewU', NULL, NULL, '03106473564', 'USR', '2021-12-11 07:46:06', '2022-02-18 06:22:01', '2022-02-18 06:21:40', '2022-02-18 06:22:01', NULL, NULL),
(10, 'MA Pharmacy', 'phr@gmail.com', '2021-12-29 07:41:49', '$2y$10$gMWBS2I1ssxIst5FCNHgx.GEyhZewgDHdaVQ2P36r58ZcN3g5ynCa', NULL, NULL, NULL, NULL, NULL, '03066473564', 'PHR', '2021-12-23 03:46:30', '2022-02-03 14:03:14', '2022-01-21 07:44:00', '2022-02-03 14:03:14', NULL, NULL),
(12, 'Mahar Aslam', 'delboy@gmail.com', '2021-12-29 07:41:49', '$2y$10$NpezDDMPn0c6zlhd4JuHuusYO820yU729ptRQtFkelJyN.37Wq0aK', NULL, NULL, NULL, NULL, NULL, '03443262447', 'DELBOY', '2021-12-29 07:39:50', '2022-02-03 11:51:55', '2021-12-31 11:48:38', '2022-02-03 11:51:55', NULL, NULL),
(13, 'Asad LAshari', 'delmanager@gmail.com', '2021-12-29 14:41:15', '$2y$10$3Nmyi6N1.rcHaIqsL.pMauxElcIpLOqteenRVM.wgpmXCpV6WH2ra', NULL, NULL, NULL, NULL, NULL, '03013638800', 'DELMAN', '2021-12-29 14:36:40', '2022-02-03 11:47:12', '2022-02-03 11:46:54', '2022-02-03 11:47:12', NULL, NULL),
(14, 'UAE Pharmacy', 'pharmacyuaeorder@gmail.com', '2021-12-31 15:13:38', 'eyJpdiI6IkVHSlZtNVNYZWM1ZUFnNFdydWRKVGc9PSIsInZhbHVlIjoiemVGVDBjbVlIVXdMeFdsWjJhSzJURFpvcGR0VUpucHUxNHlEZGpqYkYzMD0iLCJtYWMiOiJmNDc1ZDdjNzc3OGEyYmVlYWZhZGMwNDA2OTY3NGVlNmFkOTMyMDhlNGE0YTFjNjUwNjA5NTZkZWExYmIyZmI5IiwidGFnIjoiIn0=', NULL, NULL, NULL, NULL, NULL, NULL, 'USR', '2021-12-31 15:09:14', '2022-01-01 04:52:46', '2021-12-31 15:09:14', '2022-01-01 04:52:46', '112962393892491870053', 'google'),
(15, 'Muhammad Ashraf', 'blogger@gmail.com', '2022-01-18 15:28:59', '$2y$10$iQEym8ooUDNcXVdRb7GwveVVcnhZRC8yU6YdnE/IaH2tXMKFUQc4u', NULL, NULL, NULL, NULL, NULL, '03196473563', 'BLOG', '2022-01-18 10:28:21', '2022-01-19 15:13:07', '2022-01-18 18:59:14', '2022-01-19 15:13:07', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Appointments_user_id_foreign` (`user_id`),
  ADD KEY `appointments_doctor_id_foreign` (`doctor_id`);

--
-- Indexes for table `appointment_reviews`
--
ALTER TABLE `appointment_reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `appointment_reviews_onlinemeeting_id_foreign` (`onlinemeeting_id`);

--
-- Indexes for table `blogggers`
--
ALTER TABLE `blogggers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blogggers_blog_id_foreign` (`blog_id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blogs_user_id_foreign` (`user_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

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
-- Indexes for table `deliveries`
--
ALTER TABLE `deliveries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `deliveries_deliveryboy_id_foreign` (`deliveryboy_id`),
  ADD KEY `deliveries_order_id_foreign` (`order_id`),
  ADD KEY `deliveries_orderitem_id_foreign` (`orderitem_id`),
  ADD KEY `deliveries_shipping_id_foreign` (`shipping_id`),
  ADD KEY `deliveries_supplier_id_foreign` (`supplier_id`);

--
-- Indexes for table `delivery_boys`
--
ALTER TABLE `delivery_boys`
  ADD PRIMARY KEY (`id`),
  ADD KEY `delivery_boys_user_id_foreign` (`user_id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `doctors_user_id_foreign` (`user_id`),
  ADD KEY `hospotals_table_id_foreign_key_to_doctors` (`hospital_id`);

--
-- Indexes for table `doctor_specialists`
--
ALTER TABLE `doctor_specialists`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `home_sliders`
--
ALTER TABLE `home_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hospitals`
--
ALTER TABLE `hospitals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `managers`
--
ALTER TABLE `managers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `managers_user_id_foreign` (`user_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `onlinemeetings`
--
ALTER TABLE `onlinemeetings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `onlinemeetings_start_at_unique` (`start_at`),
  ADD KEY `onlinemeetings_doctor_id_foreign` (`doctor_id`),
  ADD KEY `onlinemeetings_users_id_foreign` (`users_id`),
  ADD KEY `onlinemeeting_appointment_id_foreign` (`appointment_id`);

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
-- Indexes for table `perscriptions`
--
ALTER TABLE `perscriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `perscriptions_user_id_foreign` (`user_id`),
  ADD KEY `perscriptions_pharmacist_id_foreign` (`pharmacist_id`);

--
-- Indexes for table `perscription_products`
--
ALTER TABLE `perscription_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `perscription_products_perscription_id_foreign` (`perscription_id`),
  ADD KEY `perscription_products_pharmacist_id_foreign` (`pharmacist_id`),
  ADD KEY `perscription_products_user_id_foreign` (`user_id`),
  ADD KEY `perscription_products_product_id_foreign` (`product_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `pharmacists`
--
ALTER TABLE `pharmacists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pharmacists_user_id_foreign` (`user_id`);

--
-- Indexes for table `pharmacist_tables`
--
ALTER TABLE `pharmacist_tables`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_table_id_as_users_id_foreign_key` (`pharmacist_id`);

--
-- Indexes for table `pharmacy_order_items`
--
ALTER TABLE `pharmacy_order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pharmacy_order_items_product_id_foreign` (`product_id`),
  ADD KEY `pharmacy_order_items_pharmacist_id_foreign` (`pharmacist_id`),
  ADD KEY `pharmacy_order_items_pharmacy_order_id_foreign` (`phramacy_order_id`);

--
-- Indexes for table `phramacy_orders`
--
ALTER TABLE `phramacy_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `phramacy_orders_pharmacist_id_foreign` (`pharmacist_id`);

--
-- Indexes for table `practices`
--
ALTER TABLE `practices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hospotals_table_id_foreign_key_to_practices` (`hospital_id`),
  ADD KEY `doctors_table_id_foreign_key_to_practices` (`doctor_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_user_id_foreign` (`user_id`),
  ADD KEY `Products_subcategory_id_foreign` (`subcategory_id`);

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
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subcategories_category_id_foreign` (`category_id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `suppliers_user_id_foreign` (`user_id`);

--
-- Indexes for table `transaction1s`
--
ALTER TABLE `transaction1s`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaction1s_user_id_foreign` (`user_id`),
  ADD KEY `transaction1s_appointment_id_foreign` (`appointment_id`);

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
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `appointment_reviews`
--
ALTER TABLE `appointment_reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `blogggers`
--
ALTER TABLE `blogggers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `deliveries`
--
ALTER TABLE `deliveries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `delivery_boys`
--
ALTER TABLE `delivery_boys`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `doctor_specialists`
--
ALTER TABLE `doctor_specialists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `home_categories`
--
ALTER TABLE `home_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `home_sliders`
--
ALTER TABLE `home_sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `hospitals`
--
ALTER TABLE `hospitals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `managers`
--
ALTER TABLE `managers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `onlinemeetings`
--
ALTER TABLE `onlinemeetings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `perscriptions`
--
ALTER TABLE `perscriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `perscription_products`
--
ALTER TABLE `perscription_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pharmacists`
--
ALTER TABLE `pharmacists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pharmacist_tables`
--
ALTER TABLE `pharmacist_tables`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=802;

--
-- AUTO_INCREMENT for table `pharmacy_order_items`
--
ALTER TABLE `pharmacy_order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `phramacy_orders`
--
ALTER TABLE `phramacy_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `practices`
--
ALTER TABLE `practices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `transaction1s`
--
ALTER TABLE `transaction1s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appointments`
--
ALTER TABLE `appointments`
  ADD CONSTRAINT `Appointments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `appointments_doctor_id_foreign` FOREIGN KEY (`doctor_id`) REFERENCES `doctors` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `appointment_reviews`
--
ALTER TABLE `appointment_reviews`
  ADD CONSTRAINT `appointment_reviews_onlinemeeting_id_foreign` FOREIGN KEY (`onlinemeeting_id`) REFERENCES `onlinemeetings` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `blogs`
--
ALTER TABLE `blogs`
  ADD CONSTRAINT `blogs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `deliveries`
--
ALTER TABLE `deliveries`
  ADD CONSTRAINT `deliveries_deliveryboy_id_foreign` FOREIGN KEY (`deliveryboy_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `deliveries_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `deliveries_orderitem_id_foreign` FOREIGN KEY (`orderitem_id`) REFERENCES `order_items` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `deliveries_shipping_id_foreign` FOREIGN KEY (`shipping_id`) REFERENCES `shippings` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `deliveries_supplier_id_foreign` FOREIGN KEY (`supplier_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `delivery_boys`
--
ALTER TABLE `delivery_boys`
  ADD CONSTRAINT `delivery_boys_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `doctors`
--
ALTER TABLE `doctors`
  ADD CONSTRAINT `hospotals_table_id_foreign_key_to_doctors` FOREIGN KEY (`hospital_id`) REFERENCES `hospitals` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `managers`
--
ALTER TABLE `managers`
  ADD CONSTRAINT `managers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `onlinemeetings`
--
ALTER TABLE `onlinemeetings`
  ADD CONSTRAINT `onlinemeeting_appointment_id_foreign` FOREIGN KEY (`appointment_id`) REFERENCES `appointments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `onlinemeetings_doctor_id_foreign` FOREIGN KEY (`doctor_id`) REFERENCES `doctors` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `onlinemeetings_users_id_foreign` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

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
-- Constraints for table `perscriptions`
--
ALTER TABLE `perscriptions`
  ADD CONSTRAINT `perscriptions_pharmacist_id_foreign` FOREIGN KEY (`pharmacist_id`) REFERENCES `perscriptions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `perscriptions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `perscription_products`
--
ALTER TABLE `perscription_products`
  ADD CONSTRAINT `perscription_products_perscription_id_foreign` FOREIGN KEY (`perscription_id`) REFERENCES `perscriptions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `perscription_products_pharmacist_id_foreign` FOREIGN KEY (`pharmacist_id`) REFERENCES `pharmacists` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `perscription_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `perscription_products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `perscription_products_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `pharmacists`
--
ALTER TABLE `pharmacists`
  ADD CONSTRAINT `pharmacists_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `pharmacist_tables`
--
ALTER TABLE `pharmacist_tables`
  ADD CONSTRAINT `users_table_id_as_users_id_foreign_key` FOREIGN KEY (`pharmacist_id`) REFERENCES `pharmacists` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `pharmacy_order_items`
--
ALTER TABLE `pharmacy_order_items`
  ADD CONSTRAINT `pharmacy_order_items_pharmacy_order_id_foreign` FOREIGN KEY (`phramacy_order_id`) REFERENCES `phramacy_orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `practices`
--
ALTER TABLE `practices`
  ADD CONSTRAINT `doctors_table_id_foreign_key_to_practices` FOREIGN KEY (`doctor_id`) REFERENCES `doctors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `hospotals_table_id_foreign_key_to_practices` FOREIGN KEY (`hospital_id`) REFERENCES `hospitals` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `Products_subcategory_id_foreign` FOREIGN KEY (`subcategory_id`) REFERENCES `subcategories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

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
-- Constraints for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD CONSTRAINT `subcategories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD CONSTRAINT `suppliers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transaction1s`
--
ALTER TABLE `transaction1s`
  ADD CONSTRAINT `transaction1s_appointment_id_foreign` FOREIGN KEY (`appointment_id`) REFERENCES `appointments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transaction1s_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

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
