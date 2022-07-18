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
-- Database: `lawyer`
--

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `city_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `city_name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'sit quo', 'sit-quo', '2022-02-12 09:25:31', '2022-02-12 09:25:31'),
(2, 'est a', 'est-a', '2022-02-12 09:25:31', '2022-02-12 09:25:31'),
(3, 'voluptatem quis', 'voluptatem-quis', '2022-02-12 09:25:31', '2022-02-12 09:25:31'),
(4, 'velit necessitatibus', 'velit-necessitatibus', '2022-02-12 09:25:31', '2022-02-12 09:25:31'),
(5, 'dolorem dolorem', 'dolorem-dolorem', '2022-02-12 09:25:31', '2022-02-12 09:25:31'),
(6, 'ex modi', 'ex-modi', '2022-02-12 09:25:31', '2022-02-12 09:25:31'),
(7, 'sapiente incidunt', 'sapiente-incidunt', '2022-02-12 09:25:31', '2022-02-12 09:25:31'),
(8, 'animi nulla', 'animi-nulla', '2022-02-12 09:25:31', '2022-02-12 09:25:31'),
(9, 'vitae occaecati', 'vitae-occaecati', '2022-02-12 09:25:31', '2022-02-12 09:25:31'),
(10, 'amet et', 'amet-et', '2022-02-12 09:25:31', '2022-02-12 09:25:31'),
(13, 'ipsa omnis', 'ipsa-omnis', '2022-02-12 09:27:58', '2022-02-12 09:27:58'),
(14, 'non rerum', 'non-rerum', '2022-02-12 09:27:58', '2022-02-12 09:27:58'),
(15, 'cupiditate voluptas', 'cupiditate-voluptas', '2022-02-12 09:27:58', '2022-02-12 09:27:58'),
(16, 'sit nostrum', 'sit-nostrum', '2022-02-12 09:27:58', '2022-02-12 09:27:58'),
(17, 'tempora nesciunt', 'tempora-nesciunt', '2022-02-12 09:27:58', '2022-02-12 09:27:58'),
(18, 'veritatis omnis', 'veritatis-omnis', '2022-02-12 09:27:58', '2022-02-12 09:27:58'),
(19, 'dolore consequatur', 'dolore-consequatur', '2022-02-12 09:27:58', '2022-02-12 09:27:58'),
(20, 'voluptatum fugiat', 'voluptatum-fugiat', '2022-02-12 09:27:58', '2022-02-12 09:27:58'),
(21, 'Multan City', 'multan-city', '2022-02-13 08:44:16', '2022-02-13 08:44:16'),
(22, 'Islamabad', 'islamabad', '2022-02-28 13:42:47', '2022-02-28 13:42:47');

-- --------------------------------------------------------

--
-- Table structure for table `courts`
--

CREATE TABLE `courts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `city_id` bigint(20) UNSIGNED NOT NULL,
  `courtname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courts`
--

INSERT INTO `courts` (`id`, `city_id`, `courtname`, `slug`, `created_at`, `updated_at`) VALUES
(1, 20, 'aliquid aut', 'aliquid-aut', '2022-02-12 09:29:22', '2022-02-12 09:29:22'),
(2, 18, 'aut id', 'aut-id', '2022-02-12 09:29:22', '2022-02-12 09:29:22'),
(3, 14, 'facilis ea', 'facilis-ea', '2022-02-12 09:29:22', '2022-02-12 09:29:22'),
(5, 14, 'sunt aut', 'sunt-aut', '2022-02-12 09:29:22', '2022-02-12 09:29:22'),
(6, 15, 'quisquam est', 'quisquam-est', '2022-02-12 09:29:22', '2022-02-12 09:29:22'),
(7, 7, 'laudantium inventore', 'laudantium-inventore', '2022-02-12 09:29:22', '2022-02-12 09:29:22'),
(8, 7, 'ipsa dolorum', 'ipsa-dolorum', '2022-02-12 09:29:22', '2022-02-12 09:29:22'),
(9, 20, 'possimus odit', 'possimus-odit', '2022-02-12 09:29:23', '2022-02-12 09:29:23'),
(10, 6, 'dignissimos nobis', 'dignissimos-nobis', '2022-02-12 09:29:23', '2022-02-12 09:29:23'),
(11, 9, 'a maiores', 'a-maiores', '2022-02-12 09:29:23', '2022-02-12 09:29:23'),
(12, 9, 'in autem', 'in-autem', '2022-02-12 09:29:23', '2022-02-12 09:29:23'),
(13, 7, 'non molestiae', 'non-molestiae', '2022-02-12 09:29:23', '2022-02-12 09:29:23'),
(14, 18, 'consectetur quas', 'consectetur-quas', '2022-02-12 09:29:23', '2022-02-12 09:29:23'),
(15, 17, 'ex eligendi', 'ex-eligendi', '2022-02-12 09:29:23', '2022-02-12 09:29:23'),
(16, 1, 'voluptates vitae', 'voluptates-vitae', '2022-02-12 09:29:23', '2022-02-12 09:29:23'),
(17, 6, 'doloremque sapiente', 'doloremque-sapiente', '2022-02-12 09:29:23', '2022-02-12 09:29:23'),
(18, 2, 'rerum officiis', 'rerum-officiis', '2022-02-12 09:29:23', '2022-02-12 09:29:23'),
(19, 1, 'mollitia cum', 'mollitia-cum', '2022-02-12 09:29:23', '2022-02-12 09:29:23'),
(20, 14, 'veritatis laudantium', 'veritatis-laudantium', '2022-02-12 09:29:23', '2022-02-12 09:29:23'),
(21, 21, 'High Court', 'high-court', '2022-02-13 10:11:22', '2022-02-13 10:11:22');

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
-- Table structure for table `hirings`
--

CREATE TABLE `hirings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `petition_id` bigint(20) UNSIGNED NOT NULL,
  `remarks` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `evidence` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `court_document` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `next_hiring_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hirings`
--

INSERT INTO `hirings` (`id`, `petition_id`, `remarks`, `evidence`, `court_document`, `next_hiring_date`, `created_at`, `updated_at`) VALUES
(1, 13, 'Vitae rerum hic facere commodi similique expedita. Dolorem modi ea in et. Pariatur quas ea sint aut quia consequatur dolorem laudantium. Et minima blanditiis reiciendis laborum dolores est. Neque ut amet provident quia magnam. Sequi quos facere incidunt adipisci. Quaerat excepturi enim unde. Atque aut iusto rerum quisquam voluptatem vel dolorem. Quidem incidunt error deleniti ad qui laudantium. Delectus et et dignissimos rem quae aspernatur ea maiores.', 'evidence126.png', 'court157.png', '2022-02-16', '2022-02-12 10:35:45', '2022-02-12 10:35:45'),
(2, 15, 'Rerum qui rerum excepturi. Et veritatis et saepe voluptate dolor esse. Id repellendus non velit perspiciatis hic omnis quasi. Similique quia provident in ab. Doloribus impedit adipisci rerum dolorum est doloribus tenetur. Voluptatum nobis illo ea et beatae eos. Ut qui aliquid sint at quis aut fugiat eos. Rerum mollitia omnis amet molestias impedit quia ipsa. Soluta quis rem rerum numquam.', 'evidence40.png', 'court176.png', '2022-03-14', '2022-02-12 10:35:45', '2022-02-12 10:35:45'),
(3, 9, 'Non repellat quasi ut et consequatur. Dolores perferendis molestiae assumenda dolores et nam quasi est. Recusandae odio perspiciatis dolorem natus. Harum omnis nulla quae porro assumenda. Tempore at ut omnis consequatur voluptatum est. Voluptas sed natus sed omnis. Sed sed ratione eveniet enim. Ut facere ab reprehenderit exercitationem blanditiis optio fugiat. Facere quos laudantium pariatur perferendis quod.', 'evidence13.png', 'court29.png', '2022-02-27', '2022-02-12 10:35:45', '2022-02-12 10:35:45'),
(4, 16, 'Velit sit voluptate aut qui et molestiae. Et sunt eum iste ad ut corrupti vel. Veritatis quia ea cupiditate asperiores aspernatur corrupti. Voluptate autem est ea. Ut nulla et sed iste rerum aliquam laborum. Esse ut animi reprehenderit fugiat aut deserunt. Quos laborum nemo aut soluta dolorem dicta impedit. Natus perspiciatis nulla sed odit.', 'evidence153.png', 'court10.png', '2022-02-12', '2022-02-12 10:35:45', '2022-02-12 10:35:45'),
(5, 9, 'Asperiores voluptate natus occaecati et voluptate sed. Omnis et sapiente dolore quis aliquam. Assumenda voluptas quia qui. Illo quo aut quia nobis dolorem officia. Magnam commodi excepturi perspiciatis temporibus quibusdam error ut. Magnam mollitia doloribus autem est dolor natus. Ex blanditiis libero accusantium aperiam consectetur ut debitis.', 'evidence128.png', 'court151.png', '2022-03-23', '2022-02-12 10:35:45', '2022-02-12 10:35:45'),
(6, 10, 'Quas blanditiis est et natus rerum. Architecto harum corrupti et consequuntur qui magni. Esse et consequatur consequatur maxime et qui dolor. Ea tempore pariatur soluta rerum est aut doloremque. Voluptatem harum magnam minus tempore dolorum praesentium veniam. Repellendus sit deserunt error qui quaerat doloribus perspiciatis. Quod quod quisquam nisi quia.', 'evidence160.png', 'court18.png', '2022-02-16', '2022-02-12 10:35:45', '2022-02-12 10:35:45'),
(7, 18, 'Qui et eum repellendus sed. Enim voluptatem amet voluptates magni voluptatem laboriosam. Et voluptatem ducimus omnis sint dolore. Adipisci sit doloremque minus voluptatibus enim est. Qui magnam non maxime cumque a culpa sint unde. Dolores ut officiis veniam dolores. Aut inventore repellat ea velit laboriosam. Maiores quia autem molestiae. Molestiae dolorem qui ullam voluptas minus itaque. Aut nihil quibusdam et. Aliquam alias sapiente sint et voluptatem. Corporis sit ut maiores ab.', 'evidence196.png', 'court57.png', '2022-03-16', '2022-02-12 10:35:45', '2022-02-12 10:35:45'),
(8, 11, 'Eaque et sed ab nulla excepturi quae. Cum ut doloribus nulla et culpa numquam. Officiis quasi saepe labore. Possimus ut est et sint. Culpa perspiciatis aut saepe dolor assumenda voluptas. Quae atque placeat accusamus quod vero asperiores nostrum voluptatem. Et sint eveniet accusamus molestiae. Sit repellat quisquam debitis vel suscipit a. Molestiae corporis ullam est saepe. Non ea iure sed. Et dolor aspernatur voluptatem modi quaerat ut. Beatae et animi aperiam modi corrupti.', 'evidence79.png', 'court136.png', '2022-03-27', '2022-02-12 10:35:45', '2022-02-12 10:35:45'),
(9, 3, 'Debitis est ad beatae ea quisquam. Sit molestiae eum aut eligendi recusandae officia sit. Sed corporis aliquid rem. Quam quisquam sunt neque eos autem temporibus voluptates culpa. Dolorem iure corrupti id. Non nostrum numquam maiores. Nihil aperiam veniam doloribus eius harum autem harum. Tempore delectus sapiente molestiae quos. Est doloremque dicta soluta nobis id. Earum et aut eaque quo.', 'evidence148.png', 'court53.png', '2022-02-19', '2022-02-12 10:35:45', '2022-02-12 10:35:45'),
(10, 3, 'Optio suscipit et omnis excepturi quo atque omnis laudantium. Rem harum ex mollitia ipsum molestias. Voluptas sint dolorem aut exercitationem autem aspernatur ut. Quae perferendis consectetur facere necessitatibus iusto neque tempore. Eius ut vitae corporis perferendis adipisci repudiandae. Porro similique nihil a qui numquam earum maiores. Laudantium ut iure quas voluptatum explicabo rerum.', 'evidence190.png', 'court5.png', '2022-03-09', '2022-02-12 10:35:45', '2022-02-12 10:35:45'),
(11, 12, 'Alias voluptatum voluptatibus non deleniti. In facilis quia alias et aut. Aut dignissimos vel eos facilis. Expedita quidem alias dolores et ut tempore in. In qui possimus numquam tempore atque est totam. Tempora vel facilis amet iure aspernatur nostrum nulla. Et quos eum labore dolorem. Voluptatem reiciendis aut nam.', 'evidence163.png', 'court76.png', '2022-03-25', '2022-02-12 10:35:45', '2022-02-12 10:35:45'),
(12, 17, 'Sapiente beatae quia nostrum voluptatem. Vero praesentium qui beatae rerum autem quis. Eius repellendus illum blanditiis adipisci quaerat excepturi atque quia. In facilis occaecati natus quaerat sit. Fugit ut exercitationem et qui ab deserunt accusantium non. Doloribus quas quae ut ut et ratione. Aut et et ducimus velit aut molestias velit dolores. Facilis aliquam consequuntur est non sint. Rerum velit quibusdam commodi molestiae laudantium sit libero. Et veniam et quo sint animi.', 'evidence99.png', 'court181.png', '2022-02-21', '2022-02-12 10:35:45', '2022-02-12 10:35:45'),
(14, 8, 'Omnis ut nostrum eos mollitia rerum accusantium laboriosam. Delectus corporis occaecati totam sapiente modi sit ipsa. Dolorum voluptatem odit et debitis. Quasi ipsa exercitationem nam. At maiores assumenda beatae in et quidem facilis. Incidunt aliquam consequatur harum dolorum ut est. Cumque expedita et impedit ut. Et suscipit aspernatur aspernatur voluptatum et. Quod molestiae qui sit odit. Numquam modi eum aperiam animi.', 'evidence112.png', 'court179.png', '2022-03-04', '2022-02-12 10:35:45', '2022-02-12 10:35:45'),
(15, 2, 'Iusto dolor similique voluptas quidem voluptas distinctio soluta. Aut et excepturi mollitia facilis perspiciatis eaque. Rem veritatis voluptatem omnis et ex velit. Voluptas sit cum fugit aperiam nisi. Qui ut nobis deleniti eos placeat. Commodi quibusdam qui eaque quis quia magnam quibusdam. Aliquam ullam iure ut. Debitis quo dicta accusantium aut sequi non velit. Et magnam sit et qui tenetur laborum est. Blanditiis ratione veritatis sequi aut sed.', 'evidence82.png', 'court52.png', '2022-03-09', '2022-02-12 10:35:45', '2022-02-12 10:35:45'),
(17, 10, 'Corrupti aut aperiam necessitatibus rerum omnis voluptates id. Aut dolore impedit esse quis laborum. Sunt eaque consequatur est culpa facilis. Laudantium vel odio dolorum corrupti doloribus nobis dolor dolorem. Perspiciatis qui ea ad necessitatibus odio nobis et debitis. Esse ab dolorem odio numquam aliquid. Sunt velit et quis repudiandae eum repudiandae adipisci deserunt. Et modi culpa voluptas ducimus repellat sunt et. Exercitationem qui nulla autem est delectus repellendus qui.', 'evidence149.png', 'court7.png', '2022-03-26', '2022-02-12 10:35:45', '2022-02-12 10:35:45'),
(18, 3, 'Sed et fuga consectetur deserunt est voluptatem voluptatum quo. Atque labore et repellendus corrupti qui. Et molestiae est magni. Facere voluptas aut assumenda tempore aut. Sapiente quas est expedita. Iusto quibusdam et dolores ipsam dolor consequatur non architecto. Voluptates totam consequatur consequatur vel est. Architecto et ipsam placeat aperiam. Atque enim corrupti magni mollitia. Aut ipsa qui voluptates qui. Perspiciatis facilis ipsa commodi vero.', 'evidence139.png', 'court140.png', '2022-02-16', '2022-02-12 10:35:45', '2022-02-12 10:35:45'),
(19, 14, 'Temporibus aut odit optio eos harum. Neque qui sunt tempora. Numquam repellendus natus asperiores corporis tempora. Consequuntur maxime sint magni molestiae quos. Repellat necessitatibus non qui repudiandae. Sed totam autem natus nemo ipsam dolorem. Provident nobis aperiam tenetur repellendus veritatis temporibus. Commodi commodi eius aut et. Iste a voluptatum minus harum deleniti natus et. Sint perferendis in provident et illo aspernatur. Praesentium doloremque porro ullam laboriosam.', 'evidence185.png', 'court191.png', '2022-03-16', '2022-02-12 10:35:45', '2022-02-12 10:35:45'),
(20, 11, 'Ea accusantium quia qui omnis dolor voluptatem impedit corrupti. Consequatur delectus quod cumque sed occaecati sit et. Optio rerum ipsam consectetur id ipsa. Culpa est eveniet ad. Voluptate quas dolores tempore. Ea sint voluptatem expedita quo qui ipsam ducimus. Ab quis aut est quasi similique fugiat autem.', 'evidence6.png', 'court178.png', '2022-02-25', '2022-02-12 10:35:45', '2022-02-12 10:35:45'),
(21, 11, 'Qui ipsum qui sunt quam ducimus ut ad. Et possimus fugiat ut qui. Laborum et cupiditate voluptate et enim esse. Quos eius in molestias vel culpa. Et mollitia aut omnis sint voluptas esse hic. Vero enim necessitatibus voluptatem necessitatibus consequuntur vel. Eveniet nostrum voluptas quia harum neque tempora. Occaecati placeat quod sunt ut nihil. Autem itaque fugiat velit voluptatem porro. Asperiores omnis et sed doloribus amet iusto. Hic temporibus et voluptatum libero et ducimus mollitia.', 'evidence147.png', 'court59.png', '2022-03-18', '2022-02-12 10:35:45', '2022-02-12 10:35:45'),
(22, 11, 'Eaque sequi in incidunt placeat doloremque fugit animi. Consequatur deleniti tempora nulla cum harum beatae deserunt. Veniam velit occaecati mollitia quidem alias sint. Rerum dolor optio ut facere id. Excepturi sed eum eum modi vitae vitae voluptas. Et accusamus quo inventore dolores. Amet quasi laboriosam nisi et qui dolorum. Officia adipisci quia est nisi amet. Commodi nisi omnis est eos voluptas eveniet velit. Laborum dolor quis et error enim.', 'evidence189.png', 'court168.png', '2022-02-15', '2022-02-12 10:35:45', '2022-02-12 10:35:45'),
(23, 13, 'Est consequatur minima ut magnam accusamus cupiditate. Fugiat in aliquid at nisi animi. Mollitia omnis magni id adipisci. Suscipit provident facilis dolorem nam architecto qui. Eaque dolor voluptatem animi expedita perspiciatis asperiores. Voluptatum nemo consequuntur ad. Sint ullam accusamus nesciunt quia voluptas enim voluptas. Non blanditiis cupiditate recusandae consequatur eos ea laborum enim. Saepe aliquid totam quia sit vitae in.', 'evidence24.png', 'court58.png', '2022-02-16', '2022-02-12 10:35:45', '2022-02-12 10:35:45'),
(24, 6, 'Nihil odit sapiente ut repellat est in. Culpa quaerat voluptatem tempore numquam voluptatem porro enim. Molestiae voluptas unde debitis asperiores. Harum veritatis ab est. Ut alias voluptas sit enim repudiandae fuga quibusdam. Enim reiciendis suscipit culpa eaque est. Temporibus deleniti dolorem perferendis provident aut saepe molestias. Velit fuga et officiis unde aspernatur. Fuga ducimus ipsum sit eos. Doloremque doloribus voluptatum soluta possimus.', 'evidence199.png', 'court25.png', '2022-03-10', '2022-02-12 10:35:45', '2022-02-12 10:35:45'),
(25, 1, 'Nam non numquam odio asperiores. Voluptas accusantium qui aut voluptas rerum vitae. Dolores est eveniet sunt esse soluta adipisci et. Cupiditate quia maxime et totam. Autem autem nihil voluptas fuga rem. Totam beatae non ex doloribus. Ullam eius voluptas dignissimos omnis commodi aut ea. Nobis et dolorem numquam deserunt. Qui natus neque commodi tempore. Accusantium rem deleniti in nisi molestiae ut.', 'evidence84.png', 'court17.png', '2022-02-16', '2022-02-12 10:35:45', '2022-02-12 10:35:45'),
(26, 15, 'Sed debitis voluptatibus dolor optio tenetur. Non quis minus placeat libero. Aliquam vitae tempore consequatur. Molestias et esse quo voluptatem. Corrupti aperiam a optio occaecati dolorum tenetur esse. Numquam aliquid quaerat magni nisi voluptatibus modi ullam. Aperiam et sed laboriosam doloremque tenetur ullam error. Maxime ut at aperiam et. Consequatur vel cum enim molestias. Pariatur quia recusandae qui id exercitationem recusandae ipsam. Accusamus maxime nam sint sed tenetur.', 'evidence132.png', 'court60.png', '2022-03-07', '2022-02-12 10:35:45', '2022-02-12 10:35:45'),
(27, 16, 'Enim beatae fugit ab cum consequatur. Sapiente aut sapiente suscipit repellendus quibusdam. Placeat molestias labore et aut odio debitis est. Consequatur et velit voluptas aut architecto sit et. Laborum ut illum corporis quod fuga saepe odit. Mollitia omnis commodi laborum amet et sed. Beatae nihil ut et rem. Sapiente sit maiores quisquam voluptatem. Fuga itaque praesentium qui eveniet praesentium.', 'evidence85.png', 'court182.png', '2022-03-24', '2022-02-12 10:35:45', '2022-02-12 10:35:45'),
(28, 16, 'Est vitae libero expedita sed. Et sint ut et qui tempore. Ut perferendis aut repellendus consequatur. Corporis alias sint vero id eaque animi beatae temporibus. Est fugit fuga dolorem aut aut temporibus. Quidem possimus ducimus repellendus sint nihil hic enim. Deserunt sapiente sunt et ab rerum voluptates rerum. Aut ullam rerum ab praesentium odit non assumenda blanditiis.', 'evidence107.png', 'court38.png', '2022-02-17', '2022-02-12 10:35:45', '2022-02-12 10:35:45'),
(29, 1, 'Eum quibusdam architecto odio et minima voluptas. Molestias praesentium dolor ut doloremque provident facere. Neque aut veniam suscipit at. Eum sed fuga tempora distinctio officiis. Nesciunt necessitatibus ut nihil laborum aperiam. Iure temporibus quo possimus sint.', 'evidence162.png', 'court3.png', '2022-03-04', '2022-02-12 10:35:45', '2022-02-12 10:35:45'),
(30, 7, 'Iste dolorum molestiae dolore excepturi placeat alias. Quia illo eos amet ipsam quod non. Culpa placeat rerum nostrum quae in optio. Et laborum enim accusamus quas esse. Aut et ea perspiciatis sed in. Et officia qui qui et. Quos minima repellat doloremque voluptate dolor autem. Et id commodi harum est eius. Quod atque quia similique molestiae est dolorem. Delectus voluptas magni illo tempora et nulla. Qui molestias animi ab voluptatem.', 'evidence45.png', 'court71.png', '2022-02-26', '2022-02-12 10:35:45', '2022-02-12 10:35:45'),
(31, 8, 'Ab laudantium est quia inventore commodi quia. Magnam cumque labore rerum ad impedit ut. Molestiae est earum est modi laborum. Quos aspernatur et fuga consequatur libero consectetur quia ipsa. Sit officiis enim voluptas rerum molestiae ut. Quo iste praesentium ratione necessitatibus sed voluptas quia. Dolores sapiente atque aut unde aut rem voluptate.', 'evidence83.png', 'court102.png', '2022-03-03', '2022-02-12 10:35:45', '2022-02-12 10:35:45'),
(32, 13, 'Nisi quo minus repellendus accusamus error. Aut pariatur ut pariatur doloribus. Qui aut similique maxime harum omnis consequatur magni quos. Ex est velit voluptate optio ipsam commodi. Minima in accusamus et eligendi iusto saepe. Vel neque ut voluptates nesciunt maiores. Cum voluptate harum non sed est omnis praesentium. Fugiat corrupti quibusdam est vel occaecati fugit vel. Dolor quae maiores repellat dignissimos ea expedita. Sed vel magni quas aut dolorum corporis modi quam.', 'evidence55.png', 'court165.png', '2022-03-26', '2022-02-12 10:35:45', '2022-02-12 10:35:45'),
(33, 4, 'Rem odio voluptatem placeat repellat eveniet. Eos ea ratione in dolore qui consequatur velit ut. Sit veritatis facilis facilis qui ea. Quia amet consequatur quo dolore vero. Voluptatibus perferendis consequatur error et praesentium. Eligendi eveniet sequi et hic. Fugiat quis veniam eveniet. Dignissimos placeat nobis in velit in. Temporibus hic tempora aut laudantium. Dolores velit aut in ea odit. Unde perferendis est dolorem et sed.', 'evidence145.png', 'court48.png', '2022-03-09', '2022-02-12 10:35:45', '2022-02-12 10:35:45'),
(34, 18, 'Maxime explicabo non impedit explicabo. Sunt nihil non amet tenetur. Nisi dolor provident explicabo est dolor. Quis pariatur deserunt itaque qui impedit dolorem omnis. Autem sed officia vitae enim natus. Nesciunt ab rem quia corporis hic. Officiis ad delectus vitae fugiat vitae. Repellendus illum maiores dolor temporibus suscipit aliquam. Quaerat aperiam non autem voluptas. Accusamus molestiae unde officiis.', 'evidence158.png', 'court68.png', '2022-03-08', '2022-02-12 10:35:45', '2022-02-12 10:35:45'),
(35, 3, 'Fugit dolorem totam natus assumenda laborum aliquid repudiandae. At voluptate voluptatem omnis nostrum cum qui eum. Consectetur officiis praesentium sequi qui non sit dignissimos. Cupiditate alias maiores magnam cum aut blanditiis aut. Non quam ipsa magnam molestiae ipsam optio. Voluptas maxime in eaque quae maiores necessitatibus. Non dolor ea quibusdam consequatur voluptas vero. Magnam commodi voluptatum consequatur molestiae dolor.', 'evidence66.png', 'court31.png', '2022-03-01', '2022-02-12 10:35:45', '2022-02-12 10:35:45'),
(36, 10, 'Aliquam sint in ipsam nesciunt. Fuga est doloribus commodi facere autem sapiente. Eum assumenda est vitae ut molestias laudantium odio nulla. Aut commodi sed fugiat illo atque laboriosam molestiae voluptatum. Maxime nostrum sed delectus. Quia voluptatem qui sed non ratione qui. Saepe voluptatem excepturi laborum sequi dolore voluptas eaque. Placeat et esse sit tenetur nostrum culpa vero. Repellat numquam cumque ullam alias eum atque. Sit officia a sit iste vel maiores.', 'evidence77.png', 'court56.png', '2022-02-23', '2022-02-12 10:35:45', '2022-02-12 10:35:45'),
(37, 11, 'Maxime sapiente modi non dolores cumque et fugit. Cum rerum enim quia omnis rerum. Omnis tempora rerum repellat dolores est. Quisquam non placeat et qui dolorem repellat. Dignissimos impedit corporis omnis voluptatem dolor ipsa. Est aut perferendis beatae. Qui iure tempora nemo architecto. Id harum accusantium rerum. Expedita dolore nisi hic occaecati repellat aut sunt. Fugit corporis explicabo sit nemo cumque.', 'evidence33.png', 'court198.png', '2022-02-28', '2022-02-12 10:35:45', '2022-02-12 10:35:45'),
(38, 1, 'Molestiae repellendus quia officia qui cum delectus dolorem hic. Omnis doloremque dicta aut minus placeat. Quibusdam et perspiciatis labore laborum. Ab ut et officia sed. Et animi ipsum consectetur deserunt distinctio. Tempora eum odio sint aut voluptatem. Dolores nesciunt corporis est nam quia. Saepe inventore explicabo iste. Labore consequatur laboriosam tempore odit quas quis magnam laudantium. Dolore delectus placeat aut. Nihil voluptatem ex ea ea earum error.', 'evidence32.png', 'court172.png', '2022-03-05', '2022-02-12 10:35:45', '2022-02-12 10:35:45'),
(39, 7, 'A dolorum quibusdam iusto velit quis velit. Aut eos aut dolor vitae. Quo unde impedit cumque dolores. Inventore consequatur et ut illum. Quo sequi non eum sunt. Culpa inventore veritatis eveniet autem. Provident voluptas odio inventore eum illo beatae. Illum quo corrupti aut dolore. Aut fugiat assumenda necessitatibus voluptas totam. Fuga eveniet maiores optio voluptatum.', 'evidence177.png', 'court39.png', '2022-02-17', '2022-02-12 10:35:45', '2022-02-12 10:35:45'),
(40, 17, 'Dolorum nobis earum reiciendis velit. Quis pariatur veniam ex eum tempora animi. Quod excepturi facere quidem dicta et sed. Labore autem veritatis vel aut quia non. Consequatur odio laboriosam deleniti dolores aut omnis. Quia nemo voluptatum nam deleniti recusandae et. Voluptatibus vero eum ipsam omnis et. Nobis modi saepe fugit aut ea quam dolores.', 'evidence120.png', 'court138.png', '2022-03-15', '2022-02-12 10:35:45', '2022-02-12 10:35:45'),
(44, 13, 'aaaaaaaaaaaaad', ',16448035080.png', ',16448035080.png', '2022-02-15', '2022-02-13 20:51:48', '2022-02-13 20:51:48');

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
(6, '2022_02_12_104649_create_sessions_table', 1),
(7, '2022_02_12_132710_create_cities_table', 2),
(8, '2022_02_12_132812_create_courts_table', 3),
(9, '2022_02_12_141857_add_slug_to_cities_table', 4),
(10, '2022_02_12_142102_add_slug_to_courts_table', 5),
(11, '2022_02_12_143135_create_petitions_table', 6),
(12, '2022_02_12_152052_create_hirings_table', 7),
(13, '2022_02_12_164756_add_status_to_petitions_table', 8);

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
-- Table structure for table `petitions`
--

CREATE TABLE `petitions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `court_id` bigint(20) UNSIGNED NOT NULL,
  `city_id` bigint(20) UNSIGNED NOT NULL,
  `case` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `files` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `clientname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `town` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `province` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `case_amount` decimal(12,2) NOT NULL,
  `taken_amount` decimal(12,2) NOT NULL,
  `case_start_date` date NOT NULL,
  `status` enum('active','complete') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `petitions`
--

INSERT INTO `petitions` (`id`, `user_id`, `court_id`, `city_id`, `case`, `files`, `clientname`, `mobile`, `address`, `town`, `province`, `case_amount`, `taken_amount`, `case_start_date`, `status`, `created_at`, `updated_at`) VALUES
(1, 7, 8, 18, 'Unde culpa et doloremque earum. Et quo rerum alias. Quia a tempora ad.', ',16447084400.png', 'Esse fugiat quae voluptatem illum.', '03006473561', 'Et aut doloribus facere error illo iste. Repudiandae sit architecto ut culpa impedit voluptates rerum dolore. Qui pariatur tempora commodi earum nesciunt. Tenetur corporis aut sit qui est.', 'Lahore', 'Punjab', '1200000.00', '500000.00', '2022-01-05', 'active', '2022-02-12 10:11:48', '2022-02-28 14:23:41'),
(2, 13, 20, 20, 'Error rem ipsam repudiandae. Dolore ut praesentium ut ex. Commodi corrupti reprehenderit non.', 'case11.png', 'Reiciendis inventore adipisci dolores rerum quae.', '03006473550', 'Quam fugiat aut nemo molestias asperiores quisquam nemo. Velit architecto quos vel. Cupiditate rerum velit corrupti eius et est.', 'Sint voluptatem odio nihil.', 'Sit non sed et et autem eum ut sed.', '170121.00', '45000.00', '2022-02-13', 'active', '2022-02-12 10:11:48', '2022-02-12 10:11:48'),
(3, 13, 19, 8, 'Quibusdam non ut facilis autem laborum. Culpa totam similique officia fugit placeat qui.', 'case7.png', 'Explicabo nam qui ducimus reiciendis consequatur.', '03006473541', 'Dignissimos molestiae asperiores voluptatum quod. Nulla eos ut quasi quisquam. Cupiditate aut reprehenderit quasi.', 'Sed et et ea alias inventore.', 'Facere corrupti temporibus aperiam voluptas.', '127621.00', '45000.00', '2022-02-13', 'active', '2022-02-12 10:11:48', '2022-02-12 10:11:48'),
(4, 14, 8, 8, 'Animi ea facere qui. Alias repudiandae aut deserunt sit. Neque eveniet vel autem quam non sit.', 'case18.png', 'Quae et ut facilis id qui in.', '03006473597', 'Officia sit optio aut. Quae in veritatis impedit voluptatibus architecto sed. Quis eum cum consequatur ipsa. Beatae architecto eos voluptatum voluptas nisi.', 'Quis ab saepe eos.', 'Quos dolor ratione dolorem.', '301697.00', '45000.00', '2022-02-12', 'active', '2022-02-12 10:11:48', '2022-02-12 10:11:48'),
(5, 17, 2, 16, 'Explicabo enim quia velit delectus. Velit maxime blanditiis eum.', 'case6.png', 'Ipsum expedita possimus ad in vel.', '03006473529', 'Quo quibusdam qui non earum. Laboriosam repudiandae perspiciatis molestiae repudiandae. Laudantium consequatur at quae minus quidem consequuntur. Aperiam sunt itaque est dolorem voluptates.', 'Molestiae quaerat nihil velit.', 'Nihil porro assumenda assumenda ut.', '426891.00', '45000.00', '2022-02-13', 'active', '2022-02-12 10:11:48', '2022-02-12 10:11:48'),
(6, 19, 3, 17, 'Veniam dignissimos in ratione. Beatae hic explicabo perferendis fugiat.', 'case2.png', 'Sequi voluptates ipsam a quos ad quaerat autem.', '03006473521', 'Enim recusandae eveniet dignissimos est nemo beatae vitae magni. Enim odit qui molestiae consequatur. Ullam officia nam ad tempore. Omnis excepturi autem quia soluta dolorem quae.', 'Et optio accusantium quae.', 'Veritatis iste repellendus sit rerum et sed.', '371036.00', '45000.00', '2022-02-13', 'active', '2022-02-12 10:11:48', '2022-02-12 10:11:48'),
(7, 15, 13, 10, 'Hic in et dolores sunt magnam. Distinctio ut saepe ut debitis. Vel at quo quaerat autem ea quae.', 'case21.png', 'Qui rerum mollitia atque dolor.', '03006473546', 'Iste quis dolor est. Doloremque similique beatae at cumque labore consequuntur. Iste neque et odit. Dolores et provident a velit. Qui magni sed dolor rem.', 'Ullam qui ex et vel sit.', 'Earum quia eaque quo quia ipsa aliquam eum.', '145865.00', '45000.00', '2022-02-13', 'active', '2022-02-12 10:11:48', '2022-02-12 10:11:48'),
(8, 11, 14, 20, 'Est libero omnis impedit. Reiciendis delectus aperiam accusantium totam rerum earum quisquam.', 'case5.png', 'Minima quasi vero sit culpa.', '03006473529', 'Excepturi sint molestiae qui laborum est dolore. Ullam quisquam nemo quia expedita est voluptatem et. Sunt in similique sit sapiente. Maxime quisquam quis minima id et asperiores dolorem possimus.', 'Quo sit omnis ea.', 'Non error omnis voluptas eius.', '378322.00', '45000.00', '2022-02-12', 'active', '2022-02-12 10:11:48', '2022-02-12 10:11:48'),
(9, 7, 19, 18, 'Autem eveniet dicta adipisci sapiente laudantium laudantium deserunt. Aspernatur repellat quis est.', 'case17.png', 'Ducimus alias ut iste a aut.', '03006473567', 'Eius voluptates ut consequuntur. Non possimus qui rerum pariatur. Dolorum sit ut atque hic in rerum vero.', 'Aut maiores minima velit non id quia.', 'Rerum omnis tenetur mollitia.', '421629.00', '45000.00', '2022-02-13', 'active', '2022-02-12 10:11:48', '2022-02-12 10:11:48'),
(10, 8, 17, 17, 'Doloribus pariatur accusantium mollitia vel aut aliquid. Eum in omnis fugiat dolor minus doloribus.', 'case15.png', 'Doloremque numquam ea ipsum eaque.', '03006473560', 'Animi iure alias ipsa accusantium velit ab. Ut a dolor id laudantium. Est eveniet nihil molestiae impedit modi et. Distinctio expedita nulla nostrum porro placeat qui rerum. Consectetur omnis eaque qui est. In et quam veniam molestias eligendi.', 'Vel reiciendis libero cumque ea.', 'Cum quod ea voluptate repudiandae.', '280994.00', '45000.00', '2022-02-13', 'active', '2022-02-12 10:11:48', '2022-02-12 10:11:48'),
(11, 11, 16, 10, 'Quo illo aut ratione impedit. Voluptatum non placeat eum tempora. Numquam ut et et autem.', 'case9.png', 'Laboriosam quos provident odit atque unde non.', '03006473511', 'Ea dolorum quia aut voluptatem eligendi quod at. Quia quisquam dolorem dolores pariatur repellat. Quia non at sunt amet nam vitae. Consequuntur minus itaque qui aut facilis quos cupiditate eos. Deleniti aut eos asperiores in recusandae.', 'Quos quis libero eum voluptatum.', 'Doloribus doloremque cum ad.', '266810.00', '45000.00', '2022-02-13', 'active', '2022-02-12 10:11:48', '2022-02-12 10:11:48'),
(12, 6, 9, 9, 'Consequatur tempore repellendus id et cumque. Consequatur omnis ducimus ipsum.', 'case19.png', 'Minima distinctio voluptatibus ut.', '03006473512', 'Voluptatem id deserunt ipsa ullam autem placeat. Quod beatae nemo autem doloremque. Repudiandae totam dolorem voluptas similique ut labore iste. Veritatis illum consequuntur et libero rerum quidem natus.', 'Explicabo et corrupti eos placeat quod.', 'Molestiae dolores veritatis sit molestias.', '97509.00', '45000.00', '2022-02-12', 'active', '2022-02-12 10:11:48', '2022-02-12 10:11:48'),
(13, 15, 16, 2, 'Autem aliquam aut quibusdam voluptatem repellat. Omnis ut itaque nesciunt doloremque deleniti.', 'case14.png', 'Et eius et excepturi nemo sit.', '03006473540', 'Sit aperiam qui aut quis explicabo velit. Ut earum deserunt doloribus. Et vel sunt debitis rerum praesentium. Qui nobis distinctio optio est saepe. Qui porro qui et velit sapiente voluptatem consequatur.', 'Explicabo dolor accusamus voluptas.', 'Facilis nihil ab et nihil sit.', '350932.00', '45000.00', '2022-02-12', 'active', '2022-02-12 10:11:48', '2022-02-12 10:11:48'),
(14, 9, 8, 8, 'Debitis temporibus dolor non delectus quia et. Accusantium deleniti repellat ut.', 'case12.png', 'Voluptas nemo facilis et quidem.', '03006473526', 'Quam perferendis dolor modi voluptates. Aut voluptate quisquam esse non at dicta. Excepturi explicabo cupiditate distinctio corrupti non nisi.', 'Eius autem voluptates distinctio.', 'Quis enim rerum temporibus magnam et rerum.', '188991.00', '45000.00', '2022-02-13', 'active', '2022-02-12 10:11:48', '2022-02-12 10:11:48'),
(15, 20, 8, 14, 'Deserunt velit qui quidem itaque voluptas cum rerum. Sint aut modi quia molestiae repudiandae.', 'case8.png', 'Modi qui voluptatem et eligendi.', '03006473569', 'Fugit minus esse necessitatibus itaque. Illum est repellendus quia est sunt. Magni animi est delectus molestiae. Incidunt sint recusandae non delectus fugiat vel quia inventore.', 'Impedit magni fugiat at et nemo.', 'Qui libero ea iusto nostrum temporibus sint.', '174112.00', '45000.00', '2022-02-13', 'active', '2022-02-12 10:11:48', '2022-02-12 10:11:48'),
(16, 16, 20, 7, 'Sunt ullam tempora dicta a. Voluptatem sequi non odit fugiat. Odio et quis cum repudiandae ex.', 'case3.png', 'Voluptatem hic doloribus fuga et est.', '03006473548', 'Ea eos facere aspernatur et. Voluptate est laboriosam deleniti voluptates natus expedita qui. Dolorem dolores cumque quia quam error qui.', 'Ut sint qui at earum qui a.', 'Quaerat animi quis est iure.', '398079.00', '45000.00', '2022-02-13', 'active', '2022-02-12 10:11:48', '2022-02-12 10:11:48'),
(17, 17, 18, 10, 'Qui est rem vel ut sit cum. Consequuntur nihil nisi maiores quia voluptas eum ipsum.', 'case10.png', 'Tempora occaecati quaerat velit sit ea.', '03006473529', 'Vero laboriosam nihil ex officia. Et hic iste veniam quod. Dignissimos sint assumenda commodi est.', 'Velit id esse impedit et quaerat.', 'Modi placeat vel sed sed laborum id fugiat.', '228200.00', '45000.00', '2022-02-13', 'active', '2022-02-12 10:11:48', '2022-02-12 10:11:48'),
(18, 11, 16, 2, 'Dicta ipsam quia aut molestiae voluptas ex autem. Sint delectus consequatur repellat.', 'case1.png', 'Veritatis ex assumenda neque incidunt.', '03006473520', 'Numquam sunt aspernatur deserunt praesentium dolores suscipit. Consectetur voluptatem consequatur libero ducimus beatae minus explicabo. Molestiae libero harum sit id consectetur commodi repellat facere.', 'Sed iure animi nesciunt sunt ea.', 'Nam delectus mollitia ipsa dignissimos quia.', '377513.00', '45000.00', '2022-02-12', 'active', '2022-02-12 10:11:48', '2022-02-12 10:11:48'),
(19, 20, 11, 9, 'Ullam voluptas et aut. Commodi incidunt accusamus corporis dolorem. Placeat veritatis modi nihil.', 'case20.png', 'Maiores sint exercitationem eos est quia et.', '03006473569', 'Optio illum sit quo et. Et quasi ut culpa voluptates impedit. Rerum iure et laborum incidunt eos ad. Sint occaecati deleniti saepe a.', 'Labore quia vero est maiores quod.', 'Nulla dolores voluptas commodi.', '59981.00', '45000.00', '2022-02-13', 'active', '2022-02-12 10:11:48', '2022-02-12 10:11:48');

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
('54B5xWmU6OkyYdmmPbmGpi4didKJHAFXV7gXgdyC', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiT0lZc1JtSE9NdTkyc2NZeTk5d0N5Z0phOXJRWXlIa1JMbzliY2ZucCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi9hbGwvdXNlci9saXN0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjU6InV0eXBlIjtzOjM6IkFETSI7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMCQzWU1idGhaME40YXBlS3ZJcjdIanp1U1pjcFZFRldCWDd4dFdVUXJHQzBLVUtmaHNnUUtxTyI7czoyMToicGFzc3dvcmRfaGFzaF9zYW5jdHVtIjtzOjYwOiIkMnkkMTAkM1lNYnRoWjBONGFwZUt2SXI3SGp6dVNaY3BWRUZXQlg3eHRXVVFyR0MwS1VLZmhzZ1FLcU8iO30=', 1649350274);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `utype` enum('USR','ADM') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USR' COMMENT 'ADM for Admin & USR for user',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `utype`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Muhammad Aslam', 'admin@gmail.com', 'ADM', '2022-02-13 19:11:55', '$2y$10$3YMbthZ0N4apeKvIr7HjzuSZcpVEFWBX7xtWUQrGC0KUKfhsgQKqO', NULL, NULL, NULL, NULL, NULL, '2022-02-12 06:05:01', '2022-02-13 19:11:55'),
(2, 'Muhammad Ashraf', 'user@gmail.com', 'USR', '2022-02-13 19:18:51', '$2y$10$AKE8M9nds74fDynP0ypfCe4VIHOPZcGmiBJjvYN1TyMdSZcbxAQIS', NULL, NULL, NULL, NULL, NULL, '2022-02-12 07:53:51', '2022-02-13 19:18:51'),
(3, 'Lawrence Gleason', 'cristina17@example.com', 'USR', '2022-02-12 09:25:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'WrgbhjYkzJCNAaHc4pMl5nWPxgtRCPWiPZbtVZ4l5W2zVPkEksXYlPrlHYeo', NULL, NULL, '2022-02-12 09:25:31', '2022-02-12 09:25:31'),
(4, 'Willa Douglas', 'ludie23@example.net', 'USR', '2022-02-12 09:25:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'oxmD5ZMgeo', NULL, NULL, '2022-02-12 09:25:31', '2022-02-12 09:25:31'),
(5, 'Leslie Boehm', 'ukessler@example.org', 'USR', '2022-02-12 09:25:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, '5oYtjLsixU', NULL, NULL, '2022-02-12 09:25:31', '2022-02-12 09:25:31'),
(6, 'Mrs. Salma Kuhn Sr.', 'tremblay.maida@example.org', 'USR', '2022-02-12 09:25:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'ZlH8sSwvIK', NULL, NULL, '2022-02-12 09:25:31', '2022-02-12 09:25:31'),
(7, 'Prof. Ceasar Corkery IV', 'yundt.vito@example.org', 'USR', '2022-02-12 09:25:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'OH3CMQFRys', NULL, NULL, '2022-02-12 09:25:31', '2022-02-12 09:25:31'),
(8, 'Mr. Ryleigh Hessel V', 'bartoletti.ian@example.com', 'USR', '2022-02-12 09:25:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'WW4ImVOEva', NULL, NULL, '2022-02-12 09:25:31', '2022-02-12 09:25:31'),
(9, 'Albertha Leffler', 'lkris@example.com', 'USR', '2022-02-12 09:25:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'RXIvbA8Vyz', NULL, NULL, '2022-02-12 09:25:31', '2022-02-12 09:25:31'),
(10, 'Ezekiel Schowalter', 'marian.windler@example.com', 'USR', '2022-02-12 09:25:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'kAzxqR80KP', NULL, NULL, '2022-02-12 09:25:31', '2022-02-12 09:25:31'),
(11, 'Brown Cruickshank', 'zora.schmitt@example.org', 'USR', '2022-02-12 09:25:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'Rlw5ly8OoZ', NULL, NULL, '2022-02-12 09:25:31', '2022-02-12 09:25:31'),
(12, 'Michele Hettinger', 'anissa73@example.org', 'USR', '2022-02-12 09:25:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'ojj2Dy8LEL', NULL, NULL, '2022-02-12 09:25:31', '2022-02-12 09:25:31'),
(13, 'Ms. Willie Brakus Jr.', 'akeem.mcclure@example.net', 'USR', '2022-02-12 09:27:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'qCxnM5AYNc', NULL, NULL, '2022-02-12 09:27:58', '2022-02-12 09:27:58'),
(14, 'Mr. Foster Johnston', 'laurianne20@example.org', 'USR', '2022-02-12 09:27:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'juauSIKwEd', NULL, NULL, '2022-02-12 09:27:58', '2022-02-12 09:27:58'),
(15, 'Mariana Donnelly', 'mariana@gmail.com', 'USR', '2022-02-12 09:27:58', '$2y$10$3YsHJMZw.84rB4hgweTH3.L8vNgWYtT6hiVRO64Lg4j3ObJLJZvJi', NULL, NULL, '3XoFdwOW628OGbDgRbl3VrIzoEq8aYdZplwxRP1FcQYtmXtd8OQoapck6ikc', NULL, NULL, '2022-02-12 09:27:58', '2022-02-28 14:21:44'),
(16, 'Candelario Becker', 'parker45@example.com', 'USR', '2022-02-12 09:27:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'Jc2iM1eaiL', NULL, NULL, '2022-02-12 09:27:58', '2022-02-12 09:27:58'),
(17, 'Shanna Daugherty', 'verner69@example.net', 'USR', '2022-02-12 09:27:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'PUeAQB48PU', NULL, NULL, '2022-02-12 09:27:58', '2022-02-12 09:27:58'),
(18, 'Citlalli Pollich', 'kprice@example.com', 'USR', '2022-02-12 09:27:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'mbE3QMPOsB', NULL, NULL, '2022-02-12 09:27:58', '2022-02-12 09:27:58'),
(19, 'Elvera Macejkovic', 'catherine.schmitt@example.com', 'USR', '2022-02-12 09:27:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'Tfm6vMEPnF', NULL, NULL, '2022-02-12 09:27:58', '2022-02-12 09:27:58'),
(20, 'Graciela Shields', 'goldner.mervin@example.com', 'USR', '2022-02-12 09:27:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'ga10Cj0D5D', NULL, NULL, '2022-02-12 09:27:58', '2022-02-12 09:27:58'),
(21, 'Prof. Milton Funk', 'krajcik.craig@example.net', 'USR', '2022-02-12 09:27:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'rq8LyRWFoc', NULL, NULL, '2022-02-12 09:27:58', '2022-02-12 09:27:58'),
(22, 'Jacinthe Spencer', 'beulah.kuhic@example.net', 'USR', '2022-02-12 09:27:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, '9L3WLs4yy2', NULL, NULL, '2022-02-12 09:27:58', '2022-02-12 09:27:58'),
(24, 'Muhammad Aslam', 'aslamsubeng123@gmail.com', 'USR', '2022-02-28 13:59:48', '$2y$10$f6KOfgZLlxO2yc4I171Za.oNd/ngdlXOGY18Oe3h.X2MG1PariNue', NULL, NULL, NULL, NULL, NULL, '2022-02-28 13:54:23', '2022-02-28 13:59:48'),
(25, 'Muhammad Ashraf', 'blogger@gmail.com', 'USR', NULL, '$2y$10$JJWmTCTGHbuJRtKdAeSIuO46YEGSPI.r1JvhcKHeQ9i1SUC9M.YKe', NULL, NULL, NULL, NULL, NULL, '2022-04-07 11:50:11', '2022-04-07 11:50:11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courts`
--
ALTER TABLE `courts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `courts_city_id_foreign` (`city_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `hirings`
--
ALTER TABLE `hirings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hirings_petition_id_foreign` (`petition_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
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
-- Indexes for table `petitions`
--
ALTER TABLE `petitions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `petitions_user_id_foreign` (`user_id`),
  ADD KEY `petitions_court_id_foreign` (`court_id`),
  ADD KEY `petitions_city_id_foreign` (`city_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `courts`
--
ALTER TABLE `courts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hirings`
--
ALTER TABLE `hirings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `petitions`
--
ALTER TABLE `petitions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `courts`
--
ALTER TABLE `courts`
  ADD CONSTRAINT `courts_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `hirings`
--
ALTER TABLE `hirings`
  ADD CONSTRAINT `hirings_petition_id_foreign` FOREIGN KEY (`petition_id`) REFERENCES `petitions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `petitions`
--
ALTER TABLE `petitions`
  ADD CONSTRAINT `petitions_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `petitions_court_id_foreign` FOREIGN KEY (`court_id`) REFERENCES `courts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `petitions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
