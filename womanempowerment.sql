-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 29, 2021 at 08:23 AM
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
-- Database: `womanempowerment`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(5, 'Data entry/back office', NULL, '2021-04-20 23:18:15', '2021-04-20 23:18:15'),
(6, 'Data collector', NULL, '2021-04-20 23:18:38', '2021-04-20 23:18:38'),
(7, 'Search engine evaluator', NULL, '2021-04-20 23:18:54', '2021-04-20 23:18:54'),
(8, 'Social media labeling', NULL, '2021-04-20 23:19:11', '2021-04-20 23:19:11'),
(9, 'Packager', NULL, '2021-04-20 23:19:27', '2021-04-20 23:19:27'),
(10, 'Tele caller', NULL, '2021-04-20 23:19:49', '2021-04-20 23:19:49');

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(22, 4, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(23, 4, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 2),
(24, 4, 'description', 'text', 'Description', 0, 1, 1, 1, 1, 1, '{}', 3),
(25, 4, 'category_id', 'text', 'Category Id', 0, 1, 1, 1, 1, 1, '{}', 4),
(26, 4, 'location_id', 'text', 'Location Id', 0, 1, 1, 1, 1, 1, '{}', 5),
(27, 4, 'salary', 'text', 'Salary', 0, 1, 1, 1, 1, 1, '{}', 6),
(28, 4, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 7),
(29, 4, 'other_information', 'text', 'Other Information', 0, 1, 1, 1, 1, 1, '{}', 8),
(30, 4, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 9),
(31, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 10),
(32, 4, 'job_belongsto_category_relationship', 'relationship', 'category', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Category\",\"table\":\"categories\",\"type\":\"belongsTo\",\"column\":\"category_id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 11),
(33, 5, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(34, 5, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 2),
(35, 5, 'description', 'text', 'Description', 0, 1, 1, 1, 1, 1, '{}', 3),
(36, 5, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 4),
(37, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(38, 6, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(39, 6, 'city', 'text', 'City', 0, 1, 1, 1, 1, 1, '{}', 2),
(40, 6, 'adddress', 'text', 'Adddress', 0, 1, 1, 1, 1, 1, '{}', 3),
(41, 6, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 4),
(42, 6, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(43, 4, 'job_belongsto_location_relationship', 'relationship', 'locations', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Location\",\"table\":\"locations\",\"type\":\"belongsTo\",\"column\":\"location_id\",\"key\":\"id\",\"label\":\"city\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 12),
(44, 8, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(45, 8, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 2),
(46, 8, 'description', 'text', 'Description', 0, 1, 1, 1, 1, 1, '{}', 3),
(47, 8, 'content', 'rich_text_box', 'Content', 0, 1, 1, 1, 1, 1, '{}', 5),
(48, 8, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 6),
(49, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(50, 8, 'cover_img', 'image', 'Cover Img', 0, 1, 1, 1, 1, 1, '{}', 4);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2021-03-28 10:27:26', '2021-03-28 10:27:26'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2021-03-28 10:27:26', '2021-03-28 10:27:26'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2021-03-28 10:27:26', '2021-03-28 10:27:26'),
(4, 'jobs', 'jobs', 'Job', 'Jobs', NULL, 'App\\Models\\Job', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-03-28 10:50:49', '2021-04-11 06:50:56'),
(5, 'categories', 'categories', 'Category', 'Categories', 'voyager-list', 'App\\Models\\Category', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-04-06 17:46:39', '2021-04-06 17:47:06'),
(6, 'locations', 'locations', 'Location', 'Locations', 'voyager-milestone', 'App\\Models\\Location', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2021-04-06 17:49:27', '2021-04-06 17:49:27'),
(8, 'laws', 'laws', 'Law', 'Laws', NULL, 'App\\Models\\Law', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-04-06 17:53:22', '2021-04-13 08:31:50');

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
-- Table structure for table `helps`
--

CREATE TABLE `helps` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `salary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `other_information` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `title`, `description`, `category_id`, `location_id`, `salary`, `image`, `other_information`, `created_at`, `updated_at`) VALUES
(11, 'Handwriting and Offline Typing', NULL, 5, 22, '8000-30000', 'jobs\\April2021\\fkrZnZnO6J5DVMiLhmWJ.jpeg', 'We create opportunity for housewives, students, unemployed people, retired citizens etc. Money Making Program by Doing Simple English Handwriting in capital font. Company will provide you a novel. That novel you have to write in capital font in English capital latter. The Best Places to Find Work It is Home based Offline job which usually requires you to work 3 - 4 hour in a Day. Reference link - https://www.quikr.com/jobs/call-handwriting-and-offline-typing-job-work-from-home-ahmedabad/ p/354076953', '2021-04-20 23:21:00', '2021-04-21 00:09:32'),
(12, 'Form filling jobs, Data Entry Jobs', NULL, 5, 22, '10000-11000', 'jobs\\April2021\\MQKcpoFnwitYVaKylxgJ.jpeg', 'Still not earning from Internet? Dont worry! We show you the way to earn Real Internet Money. You can Earn Rs.300 600 for each and every successful Assignment. No Earning Limitation. Payment Guaranteed. For more details please contact or leave your email Id at this WhatsApp number. Ref link: https://www.quikr.com/jobs/part-time-jobs-full-time-jobs-form-filling-jobs-data-entry-jobs-ahmeda bad/p/353843357', '2021-04-20 23:22:00', '2021-04-21 00:11:32'),
(13, 'Atascadero Q4 2020 |Data Collector', NULL, 6, 22, '1440(per task)', 'jobs\\April2021\\nk6ZrXI5pTfw66sqfYWU.jpeg', 'Appen is currently conducting a study to understand how we can improve the quality of day-to-day interactions with home smart speakers, such as Amazon Echo and Google Home. As part of these efforts, we are currently looking for participants to share the transcripts of their voice commands to this type of home smart speakers. Ref link :- https://connect.appen.com/qrp/core/vendors/projects', '2021-04-20 23:24:00', '2021-04-21 00:24:58'),
(14, 'Arrow | Search Engine Evaluator', NULL, 7, 22, '210(per hour)', 'jobs\\April2021\\VMXPOYnZpPeVNagiP9JO.jpeg', 'Arrow: Search Ads Evaluator Help improve search ads results for one of the world\'s largest search engines! Here are the details you need to know to join: Have a smartphone, Gmail   address, and pass a Qualification Exam Minimum work requirements: 10 hours per week. ref link :- https://connect.appen.com/qrp/core/vendors/projects', '2021-04-20 23:25:48', '2021-04-20 23:25:48'),
(15, 'Clavey | Social Media Labelling', NULL, 8, 22, '262(per hour)', 'jobs\\April2021\\MI5JImLXHBXt3Uinyx6W.jpg', 'Clavey | Social Media Evaluator Help identify content that is harmful, with the goal of limiting the spread of dangerous content.   In this project, you will be tasked in identifying targets and attacks in social media posts to to help identify harmful content. Requirements:- 20 hours per week- Computer and stable internet connection - Native/Fluent in market language', '2021-04-20 23:27:00', '2021-04-21 00:17:47'),
(16, 'Pencil , pen, Rubber (Eraser )packing', NULL, 9, 22, '20,000 - 25,000', 'jobs\\April2021\\BfmVEcgIHpOZf4bk8i5R.jpeg', 'Pencil packing , pen packing , Rubber ( Eraser ) packing work from home and want to Earn Money. Ref link - https://www.quikr.com/jobs/pencil-packing-pen-packing-rubber-eraser-packing-work-from-home- and-earn-money.-ahmedabad/p/352647417', '2021-04-20 23:28:00', '2021-04-21 00:28:35'),
(22, 'Gujrati BPO /tele caller', NULL, 10, 22, '12000-13000', 'jobs\\April2021\\TszaVn9FbkSzR1QRpjGv.jpeg', 'Need Gujrati speaking tele caller, Must have a computer with internet. Ref link - https://www.quikr.com/jobs/gujrati-telecaller-ahmedabad/p/350921974', '2021-04-21 00:00:16', '2021-04-21 00:00:16'),
(23, 'BANKING DATA ENTRY', NULL, 5, 22, '20,000 - 25,000', 'jobs\\April2021\\l0J1rsHHtUsI5pqR5BD2.jpeg', 'Required candidate in Ahmedabad city for Data Entry /Back Office role. Apply now.', '2021-04-21 00:01:00', '2021-04-21 00:07:05'),
(24, 'Female web developer', NULL, 5, 22, '6,000 - 9,000', 'jobs\\April2021\\ro9HeZ8Pf8ZMqwbdsaFA.jpeg', 'we are mfg. company and we are looking for smart, good communication skill,experience female ref link https://www.quikr.com/jobs/female-required-website-developer-ahmedabad/p/346565590', '2021-04-21 00:01:47', '2021-04-21 00:01:47');

-- --------------------------------------------------------

--
-- Table structure for table `laws`
--

CREATE TABLE `laws` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `cover_img` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `laws`
--

INSERT INTO `laws` (`id`, `title`, `description`, `content`, `created_at`, `updated_at`, `cover_img`) VALUES
(7, 'Special Marriage Act, 1954', NULL, '<p class=\"MsoNormal\">The objectives of this act are to provide &ndash; a special form of marriage in certain cases, provide for the registration of certain marriages and, to provide for divorce. In a country like India and with the diverse religions and cast, when people from different faiths and caste chose to get married they do it under the Special Marriage Act.</p>\r\n<p class=\"MsoNormal\">It is not applicable to the state of Jammu and Kashmir and also extends to intending spouses who are Indian nationals and living abroad.</p>\r\n<p class=\"MsoNormal\">&nbsp;</p>', '2021-04-20 06:31:55', '2021-04-20 10:43:10', 'laws\\April2021\\T7ASWhsN7Ybv4U7VXA0D.jpg'),
(8, 'Molestation (Sec. 354 IPC)', NULL, '<p class=\"MsoNormal\" style=\"tab-stops: 102.75pt;\">Whoever assaults or uses criminal force to any woman, intending to outrage or knowing it to be likely that he will thereby outrage her modesty, shall be punished with imprisonment of either description for a term which may extend to five years, and shall also be liable to fine.</p>', '2021-04-20 06:33:21', '2021-04-20 10:43:42', 'laws\\April2021\\8gWzU1GbmRia3Mn5YRAt.jpg'),
(9, 'The Prohibition of Child Marriage Act, 2006', NULL, '<p class=\"MsoNormal\">According to the International Research Centre for Women, almost 47 percent of girls are married before the age of 18. Currently, India ranks 13 in the world when it comes to child marriages. Since child marriage has been steeped into the Indian culture and tradition for centuries, it has been tough eliminating it.</p>\r\n<p class=\"MsoNormal\">The Prohibition of Child Marriage Act was made effective in 2007. This act defines child marriage as a marriage where the groom or the bride is underage, that is, the bride is under 18 years of age or the boy is younger than 21 years.</p>\r\n<p class=\"MsoNormal\">&nbsp;</p>\r\n<p class=\"MsoNormal\">Parents trying to marry underage girls are subject to action under this law.</p>\r\n<p class=\"MsoNormal\">Since the law makes these marriages illegal, it acts as a major deterrent.</p>', '2021-04-20 06:34:25', '2021-04-20 10:44:39', 'laws\\April2021\\QJE1ykNuFgEvem0R3BNj.jpg'),
(10, 'The Protection of Women from Domestic Violence Act 2005', NULL, '<p class=\"MsoNormal\">The Protection of Women from Domestic Violence Act 2005 is an Act of the Parliament of India enacted to protect women from domestic violence. Primarily meant to provide protection to the wife or female live-in partner from domestic violence at the hands of the husband or male live-in partner or his relatives, the law also extends its protection to women living in a household such as sisters, widows, or mothers. Domestic violence under the act includes actual abuse or the threat of abuse whether physical, sexual, verbal, emotional, or economic. Harassment by way of unlawful dowry demands to the woman or her relatives would also be covered under this definition.</p>', '2021-04-20 06:36:16', '2021-04-20 10:45:55', 'laws\\April2021\\ckKZGlTZfpn3h53KxQV8.jpg'),
(11, 'The Hindu Women\'s Right to Property Act, 1937', NULL, '<p class=\"MsoNormal\">The Hindu Women\'s Right to Property Act, 1937 was one of the most important enactments that brought about changes to give better rights to women. The said Act was the outcome of discontent expressed by a sizeable section of society against the unsatisfactory affairs of the women\'s rights to property. Even the said Act did not give an absolute right to women. Under the said Act a widow was entitled to a limited interest over the property of her husband what was to be termed as Hindu widow\'s estate. The Act was amended in 1938 to exclude the widow from any interest in agricultural land.</p>', '2021-04-20 06:43:44', '2021-04-20 06:43:44', 'laws\\April2021\\v2j317XSJKQ2rrGqKGi1.jpg'),
(12, 'Indian Divorce Act, 1869 Act /  Also called the Indian Evidence Act, 1872', NULL, '<p class=\"MsoNormal\">The Indian Divorce Act allows the dissolution of marriage, mutual consent, nullity of marriage, judicial separation, and restitution of conjugal rights. Family Courts are established to file, hear, and dispose of such cases.</p>\r\n<p class=\"MsoNormal\"><span style=\"font-size: 10.5pt; line-height: 107%; font-family: \'Helvetica\',\'sans-serif\'; color: black; background: white;\">The Indian Divorce Act was drafted into the Indian legal system in the year 1869. In India divorce rules and procedure varies according to the community of the couple. As stated above divorce among Christians is governed by the Indian Divorce Act, 1869, Hindus, Buddhists, Sikhs, and Jains by the </span><span style=\"font-size: 10.5pt; line-height: 107%; font-family: Helvetica, sans-serif; background: white; color: #000000;\"><span style=\"font-size: 10.5pt; line-height: 107%; font-family: Helvetica, sans-serif; background: white;\">Hindu Marriage Act, 1955</span></span><span style=\"font-size: 10.5pt; line-height: 107%; font-family: \'Helvetica\',\'sans-serif\'; color: black; background: white;\">, Muslims by the Dissolution of Muslim Marriages Act, 1939, Parsis by the Parsi Marriage and Divorce Act, 1936 and the civil and inter-community marriages by the&nbsp;</span><span style=\"font-size: 10.5pt; line-height: 107%; font-family: Helvetica, sans-serif; color: #000000; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"box-sizing: border-box; font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; word-spacing: 0px;\">Special Marriage Act</span></span><span style=\"font-size: 10.5pt; line-height: 107%; font-family: Helvetica, sans-serif; color: black; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"box-sizing: border-box; font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px;\">,</span></span><span style=\"font-size: 10.5pt; line-height: 107%; font-family: \'Helvetica\',\'sans-serif\'; color: black; background: white;\"><span style=\"box-sizing: border-box; font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px;\"> 1956. The State of Jammu and Kashmir is excluded under the ambit of this divorce Act, though residents domiciled in other states but residing in Jammu and Kashmir would qualify for these rules and provisions.</span></span></p>', '2021-04-20 06:46:30', '2021-04-20 10:47:32', 'laws\\April2021\\8rTOiAejFwtoF0jByrUx.png'),
(13, 'Sexual Harassment (Sec. 509 IPC)', NULL, '<p class=\"MsoNormal\">Whoever, intending to insult the modesty of a woman, utters any word, makes any sound or gesture, or exhibits any object, intending that such gestures or object shall be seen, by such woman, or intrudes upon the privacy of such woman, shall be punished with imprisonment of either description for a term which may extend to three years, and shall also be liable to fine.</p>', '2021-04-20 06:49:17', '2021-04-20 07:22:43', 'laws\\April2021\\VjXHFtjtkVNeZFNQx3xi.png'),
(14, 'Dowry Prohibition Act, 1961', NULL, '<p class=\"MsoNormal\">According to this act, taking or giving of dowry at the time of the marriage to the bride or the bridegroom and their family is to be penalized. The Dowry system, giving and taking of dowry, is a norm in India. Dowry is often asked of the bride and her family by the groom and his family. The system has taken strong roots because women after marriage move in with their spouse and in-laws. Also, over the centuries, the lack of economic independence of women and the taboo towards divorce has resulted in bride burning. When demands for dowry even after marriage are not met by the girl&rsquo;s families, many women are tortured, beaten, and even burnt.</p>\r\n<p class=\"MsoNormal\">It is one of the major challenges that our society is grappling with. Women openly complaining about it has helped to spread the word and encourage other women to take a stand.</p>', '2021-04-20 06:50:22', '2021-04-20 10:48:40', 'laws\\April2021\\p7DiJ3De5srPT4PqQ82S.jpg'),
(15, 'Hindu Succession Act 1956', NULL, '<p class=\"MsoNormal\">According to section 6 of the Hindu Succession Act 1956, when a male Hindu dies after the commencement of this Act, having at the time of his death an interest in a Mithakshara coparcenary property, his interest in the property shall devolve by survivorship upon the surviving members of the coparcenary and not in accordance with this Act.</p>\r\n<p class=\"MsoNormal\">In case there are female relatives like daughter, widow, mother, daughter of predeceased son, daughter of a predeceased daughter, widow of a pre-deceased son, or widow of the pre-deceased son of a predeceased son, then the interest of the deceased co-parcenary will pass on to his heirs by succession and not by survivorship.</p>\r\n<p class=\"MsoNormal\">Where a Hindu dies after the commencement of the Amendment Act 2005, his interest in the property of the joint Hindu family governed by the Mithakshara Law shall devolve by testamentary or intestate succession and not by survivorship and the coparcenary property shall be deemed to have been divided as if a partition had taken place.</p>', '2021-04-20 06:53:01', '2021-04-20 10:54:58', 'laws\\April2021\\m8t7acPg99kJm3W1itNb.jpg'),
(16, 'The Medical Termination of Pregnancy Act', NULL, '<p class=\"MsoNormal\">The Medical Termination of Pregnancy (MTP) Act, which was enacted by the Indian Parliament in the year 1971 with the intention of reducing the incidence of illegal abortion and consequent maternal mortality and morbidity. The MTP Act came into effect on 1 April 1972 and was amended in the years 1975 and 2002.</p>\r\n<p class=\"MsoNormal\">Pregnancies not exceeding 12 weeks may be terminated based on a single opinion formed in good faith. In case of pregnancies exceeding 12 weeks but less than 20 weeks, termination needs the opinion of two doctors. The Act clearly states the conditions under which a pregnancy can be ended or aborted, the persons who are qualified to conduct the abortion, and the place of implementation. Some of these qualifications are as follows:</p>\r\n<p class=\"MsoListParagraphCxSpFirst\" style=\"margin-left: 20.25pt; mso-add-space: auto; text-indent: -18.0pt; mso-list: l0 level1 lfo1;\"><!-- [if !supportLists]--><span style=\"mso-bidi-font-family: Calibri; mso-bidi-theme-font: minor-latin;\"><span style=\"mso-list: Ignore;\">a)<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]-->Women whose physical and/or mental health were endangered by the pregnancy</p>\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left: 20.25pt; mso-add-space: auto; text-indent: -18.0pt; mso-list: l0 level1 lfo1;\"><!-- [if !supportLists]--><span style=\"mso-bidi-font-family: Calibri; mso-bidi-theme-font: minor-latin;\"><span style=\"mso-list: Ignore;\">b)<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]-->Women facing the birth of a potentially handicapped or malformed child</p>\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left: 20.25pt; mso-add-space: auto; text-indent: -18.0pt; mso-list: l0 level1 lfo1;\"><!-- [if !supportLists]--><span style=\"mso-bidi-font-family: Calibri; mso-bidi-theme-font: minor-latin;\"><span style=\"mso-list: Ignore;\">c)<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]-->Rape</p>\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left: 20.25pt; mso-add-space: auto; text-indent: -18.0pt; mso-list: l0 level1 lfo1;\"><!-- [if !supportLists]--><span style=\"mso-bidi-font-family: Calibri; mso-bidi-theme-font: minor-latin;\"><span style=\"mso-list: Ignore;\">d)<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]-->Pregnancies in unmarried girls under the age of eighteen with the consent of a guardian</p>\r\n<p class=\"MsoListParagraphCxSpLast\" style=\"margin-left: 20.25pt; mso-add-space: auto; text-indent: -18.0pt; mso-list: l0 level1 lfo1;\"><!-- [if !supportLists]--><span style=\"mso-bidi-font-family: Calibri; mso-bidi-theme-font: minor-latin;\"><span style=\"mso-list: Ignore;\">e)<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]-->Pregnancies in \"lunatics\" with the consent of a guardian</p>', '2021-04-20 06:56:00', '2021-04-20 10:54:28', 'laws\\April2021\\WG3rjOBPlWLWSySet9Wy.jpg'),
(17, 'The Marriage Laws(Amendment)', NULL, '<p class=\"MsoNormal\">To amend the Hindu Marriage Act, 1955 and the Special Marriage Act, 1954 to making divorce easier on the ground of irretrievable breakdown of marriage was introduced in the parliament in 2012. The Bill replaces the words \"not earlier than six months\" in Section13-B with the words \"Upon receipt of a petition.\"</p>\r\n<p class=\"MsoNormal\">It also provides a better safeguard to the wife by inserting section 13D by which the wife may oppose the grant of a decree on the ground that the dissolution of the marriage will resultingly rave financial hardship to her and that it would in all the circumstances be wrong to dissolve the marriage.</p>\r\n<p class=\"MsoNormal\">New section 13E provides restriction on decree for divorce affecting children born out of wedlock and states that a court shall not pass a decree of divorce under section 13C unless the court is satisfied that adequate provision for the maintenance of children born out of the marriage has been made consistently with the financial capacity of the parties to the marriage.</p>', '2021-04-20 06:58:47', '2021-04-20 10:54:01', 'laws\\April2021\\6iKnkyfnRyI3MqrV7jQY.png'),
(18, 'Torture, both mental and physical', NULL, '<p class=\"MsoNormal\" style=\"tab-stops: 108.0pt;\">Husband or relative of husband of a woman subjecting her to cruelty shall be punished with imprisonment of either description for a term which may extend to three years, and shall also be liable to fine.</p>', '2021-04-20 07:01:17', '2021-04-20 10:53:36', 'laws\\April2021\\c0On81xkuzt6a3Yi4fr6.jpg'),
(19, 'Indian Evidence Act, 1872', NULL, '<p class=\"MsoNormal\" style=\"tab-stops: 108.0pt;\">Section 114: Presumption as to the absence of consent in certain prosecutions for rape.- In a prosecution for rape under clause (a) or clause (b) or clause (c) or clause (d) or clause (e) or clause (g) of sub-section (2) of section 376 of the Indian Penal Code (45 of 1860), where sexual intercourse by the accused is proved and the question is whether it was without the consent of the woman alleged to have been raped and she states in her evidence before the Court that she did not consent, the Court shall presume that she did not consent.</p>', '2021-04-20 07:02:56', '2021-04-20 10:53:12', 'laws\\April2021\\TRrK0TWUDLhFGPXQ1GMd.jpg'),
(20, 'Equal Remuneration Act, 1976', NULL, '<p class=\"MsoNormal\" style=\"tab-stops: 257.25pt;\">This Act prevents discrimination in terms of remuneration. It provides for payment of equal recompense to men and women workers. It is necessary to know these and other laws in place to protect the interests of women. Only if you are aware of your rights can you fight against any injustice meted out to you at home, at the workplace, or in society.</p>', '2021-04-20 07:03:58', '2021-04-20 10:52:15', 'laws\\April2021\\YQQQlwtPXcGGIsvFBHS9.jpg'),
(21, 'Code of Criminsal Procedure,1973', NULL, '<p class=\"MsoNormal\" style=\"tab-stops: 257.25pt;\">Section 47(2) of the Code of Criminal Procedure requires that no place or apartment which is in the occupation of a female and who is not the person to be arrested shall be searched by any police officer etc before giving notice to the female occupier thereof that she is at liberty to withdraw therefrom.</p>\r\n<p class=\"MsoNormal\" style=\"tab-stops: 257.25pt;\">As per section 100(3) of the Code of Criminal Procedure, if a female is reasonably suspected of concealing about her person any article for which search can be made, such shall only be conducted by another woman with strict regard to decency.</p>\r\n<p class=\"MsoNormal\" style=\"tab-stops: 257.25pt;\">No made person below the age of fifteen years or a woman can be called by any police officer to the police station in connection with an investigation of any case.</p>', '2021-04-20 07:04:53', '2021-04-20 10:51:31', 'laws\\April2021\\R8vmpD70h03GT4vSg4Zh.jpg'),
(22, 'Maternity Benefit Act,1861', NULL, '<p class=\"MsoNormal\" style=\"tab-stops: 257.25pt;\">This act regulates the employment of women and maternity benefits mandated by law. It states that a woman employee who has worked in an organization for a period of at least 80 days during the 12 months preceding the date of her expected delivery is entitled to receive maternity benefits, which includes maternity leave, nursing breaks, medical allowance, etc.</p>', '2021-04-20 07:05:32', '2021-04-20 10:50:52', 'laws\\April2021\\BldR989H5GxG6AKHbl4G.jpg'),
(23, 'The Family Courts Act, 1954', NULL, '<p class=\"MsoNormal\" style=\"tab-stops: 257.25pt;\">The Court established to conclude upon matters relating to family law like matrimonial reliefs, custody of children, maintenance for wife and children is termed as Family Court. The Status of Women Committee in 1975 together with the report of the 59th Law Commission recommended the Central Government establish a separate judicial forum to settle family disputes immediately before the beginning of the trial proceedings. Hence it was decided to establish a family court in India by the Act of 1984. The Family Court shall have the same status as that of a District Court and shall exercise the jurisdiction accordingly and also be empowered to initiate suits and proceedings on par with the conditions stipulated by the Act. Where there is any chance for settlement of the dispute between the parties, the Family Court shall postpone the proceedings and take steps for settlement at the earliest. Under the Act, a party to the dispute cannot claim the service of a legal practitioner as of right, but the Court shall have the power to appoint a legal professional. An aggrieved party may, however, prefer an appeal to the High Court from an order of the Family Court. The High Court shall frame rules in the matters connected therewith, after publishing in the Gazette. The Act also confers power on the Central and State Government to formulate rules as prescribed under the Act.</p>', '2021-04-20 07:06:30', '2021-04-20 10:50:27', 'laws\\April2021\\L9jK9vq4X34FkMbHwnz3.jpg'),
(24, 'Rights of a Married Women', NULL, '<p class=\"MsoNormal\" style=\"tab-stops: 257.25pt;\">(a) The rights of adult/married women under general laws relating to employment and their physical well-being are being specially mentioned here. In this context, it may be noticed that Articles 15 and 16 of the Constitution of India prohibit discrimination of any citizen on the grounds inter-alia of sex, or in matters relating to employment or appointment to any elected office under the State.</p>\r\n<p class=\"MsoNormal\" style=\"tab-stops: 257.25pt;\">(b) Coming to the question of the physical well-being of married women, it may be pointed out here that in the event of the husband or his relatives subjecting such a woman to cruelty, they can be punished with imprisonment up to three years and fine under Section 498-A of the Indian Penal Code but the death of a married woman otherwise than under normal circumstances within 7 years of her marriage can be considered to be a dowry death if it is shown that soon before her death she was subjected to cruelty or harassment by her husband or any of his relatives, or in connection with any demand for dowry.</p>\r\n<p class=\"MsoNormal\" style=\"tab-stops: 257.25pt;\">(c) In the event of abetment to the commission of suicide by a woman, the abettor can be punished with imprisonment for a term, which may extend up to ten years besides a fine.</p>', '2021-04-20 07:07:08', '2021-04-20 10:49:18', 'laws\\April2021\\Otkhs8N4loYrRFWAcP9F.png');

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `id` int(10) UNSIGNED NOT NULL,
  `city` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adddress` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`id`, `city`, `adddress`, `created_at`, `updated_at`) VALUES
(22, 'Work From Home', NULL, '2021-04-20 23:17:52', '2021-04-20 23:17:52'),
(23, 'Ahmedabad', NULL, '2021-04-21 00:30:31', '2021-04-21 00:30:31'),
(24, 'Vadodara', NULL, '2021-04-21 00:30:41', '2021-04-21 00:30:41'),
(25, 'Jamnagar', NULL, '2021-04-21 00:30:51', '2021-04-21 00:30:51'),
(26, 'Rajkot', NULL, '2021-04-21 00:30:58', '2021-04-21 00:30:58'),
(27, 'Surat', NULL, '2021-04-21 00:31:38', '2021-04-21 00:31:38');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2021-03-28 10:27:26', '2021-03-28 10:27:26');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2021-03-28 10:27:26', '2021-03-28 10:27:26', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 5, '2021-03-28 10:27:26', '2021-03-28 10:27:26', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2021-03-28 10:27:26', '2021-03-28 10:27:26', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2021-03-28 10:27:26', '2021-03-28 10:27:26', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 9, '2021-03-28 10:27:26', '2021-03-28 10:27:26', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 10, '2021-03-28 10:27:26', '2021-03-28 10:27:26', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 11, '2021-03-28 10:27:26', '2021-03-28 10:27:26', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 12, '2021-03-28 10:27:26', '2021-03-28 10:27:26', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 13, '2021-03-28 10:27:26', '2021-03-28 10:27:26', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 14, '2021-03-28 10:27:26', '2021-03-28 10:27:26', 'voyager.settings.index', NULL),
(11, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 13, '2021-03-28 10:27:27', '2021-03-28 10:27:27', 'voyager.hooks', NULL),
(12, 1, 'Jobs', '', '_self', 'voyager-bag', '#000000', NULL, 15, '2021-03-28 10:50:49', '2021-04-06 17:45:54', 'voyager.jobs.index', 'null'),
(13, 1, 'Categories', '', '_self', 'voyager-list', '#000000', NULL, 16, '2021-04-06 17:46:39', '2021-04-06 17:47:24', 'voyager.categories.index', 'null'),
(14, 1, 'Locations', '', '_self', 'voyager-milestone', NULL, NULL, 17, '2021-04-06 17:49:27', '2021-04-06 17:49:27', 'voyager.locations.index', NULL),
(15, 1, 'Laws', '', '_self', 'voyager-documentation', '#000000', NULL, 18, '2021-04-06 17:53:22', '2021-04-06 17:53:58', 'voyager.laws.index', 'null');

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
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(23, '2019_08_19_000000_create_failed_jobs_table', 1);

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
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2021-03-28 10:27:26', '2021-03-28 10:27:26'),
(2, 'browse_bread', NULL, '2021-03-28 10:27:26', '2021-03-28 10:27:26'),
(3, 'browse_database', NULL, '2021-03-28 10:27:26', '2021-03-28 10:27:26'),
(4, 'browse_media', NULL, '2021-03-28 10:27:26', '2021-03-28 10:27:26'),
(5, 'browse_compass', NULL, '2021-03-28 10:27:26', '2021-03-28 10:27:26'),
(6, 'browse_menus', 'menus', '2021-03-28 10:27:26', '2021-03-28 10:27:26'),
(7, 'read_menus', 'menus', '2021-03-28 10:27:26', '2021-03-28 10:27:26'),
(8, 'edit_menus', 'menus', '2021-03-28 10:27:27', '2021-03-28 10:27:27'),
(9, 'add_menus', 'menus', '2021-03-28 10:27:27', '2021-03-28 10:27:27'),
(10, 'delete_menus', 'menus', '2021-03-28 10:27:27', '2021-03-28 10:27:27'),
(11, 'browse_roles', 'roles', '2021-03-28 10:27:27', '2021-03-28 10:27:27'),
(12, 'read_roles', 'roles', '2021-03-28 10:27:27', '2021-03-28 10:27:27'),
(13, 'edit_roles', 'roles', '2021-03-28 10:27:27', '2021-03-28 10:27:27'),
(14, 'add_roles', 'roles', '2021-03-28 10:27:27', '2021-03-28 10:27:27'),
(15, 'delete_roles', 'roles', '2021-03-28 10:27:27', '2021-03-28 10:27:27'),
(16, 'browse_users', 'users', '2021-03-28 10:27:27', '2021-03-28 10:27:27'),
(17, 'read_users', 'users', '2021-03-28 10:27:27', '2021-03-28 10:27:27'),
(18, 'edit_users', 'users', '2021-03-28 10:27:27', '2021-03-28 10:27:27'),
(19, 'add_users', 'users', '2021-03-28 10:27:27', '2021-03-28 10:27:27'),
(20, 'delete_users', 'users', '2021-03-28 10:27:27', '2021-03-28 10:27:27'),
(21, 'browse_settings', 'settings', '2021-03-28 10:27:27', '2021-03-28 10:27:27'),
(22, 'read_settings', 'settings', '2021-03-28 10:27:27', '2021-03-28 10:27:27'),
(23, 'edit_settings', 'settings', '2021-03-28 10:27:27', '2021-03-28 10:27:27'),
(24, 'add_settings', 'settings', '2021-03-28 10:27:27', '2021-03-28 10:27:27'),
(25, 'delete_settings', 'settings', '2021-03-28 10:27:27', '2021-03-28 10:27:27'),
(26, 'browse_hooks', NULL, '2021-03-28 10:27:27', '2021-03-28 10:27:27'),
(27, 'browse_jobs', 'jobs', '2021-03-28 10:50:49', '2021-03-28 10:50:49'),
(28, 'read_jobs', 'jobs', '2021-03-28 10:50:49', '2021-03-28 10:50:49'),
(29, 'edit_jobs', 'jobs', '2021-03-28 10:50:49', '2021-03-28 10:50:49'),
(30, 'add_jobs', 'jobs', '2021-03-28 10:50:49', '2021-03-28 10:50:49'),
(31, 'delete_jobs', 'jobs', '2021-03-28 10:50:49', '2021-03-28 10:50:49'),
(32, 'browse_categories', 'categories', '2021-04-06 17:46:39', '2021-04-06 17:46:39'),
(33, 'read_categories', 'categories', '2021-04-06 17:46:39', '2021-04-06 17:46:39'),
(34, 'edit_categories', 'categories', '2021-04-06 17:46:39', '2021-04-06 17:46:39'),
(35, 'add_categories', 'categories', '2021-04-06 17:46:39', '2021-04-06 17:46:39'),
(36, 'delete_categories', 'categories', '2021-04-06 17:46:39', '2021-04-06 17:46:39'),
(37, 'browse_locations', 'locations', '2021-04-06 17:49:27', '2021-04-06 17:49:27'),
(38, 'read_locations', 'locations', '2021-04-06 17:49:27', '2021-04-06 17:49:27'),
(39, 'edit_locations', 'locations', '2021-04-06 17:49:27', '2021-04-06 17:49:27'),
(40, 'add_locations', 'locations', '2021-04-06 17:49:27', '2021-04-06 17:49:27'),
(41, 'delete_locations', 'locations', '2021-04-06 17:49:27', '2021-04-06 17:49:27'),
(42, 'browse_laws', 'laws', '2021-04-06 17:53:22', '2021-04-06 17:53:22'),
(43, 'read_laws', 'laws', '2021-04-06 17:53:22', '2021-04-06 17:53:22'),
(44, 'edit_laws', 'laws', '2021-04-06 17:53:22', '2021-04-06 17:53:22'),
(45, 'add_laws', 'laws', '2021-04-06 17:53:22', '2021-04-06 17:53:22'),
(46, 'delete_laws', 'laws', '2021-04-06 17:53:22', '2021-04-06 17:53:22');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(2, 1),
(3, 1),
(4, 1),
(4, 2),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(27, 2),
(28, 1),
(28, 2),
(29, 1),
(29, 2),
(30, 1),
(30, 2),
(31, 1),
(31, 2),
(32, 1),
(32, 2),
(33, 1),
(33, 2),
(34, 1),
(34, 2),
(35, 1),
(35, 2),
(36, 1),
(36, 2),
(37, 1),
(37, 2),
(38, 1),
(38, 2),
(39, 1),
(39, 2),
(40, 1),
(40, 2),
(41, 1),
(41, 2),
(42, 1),
(42, 2),
(43, 1),
(43, 2),
(44, 1),
(44, 2),
(45, 1),
(45, 2),
(46, 1),
(46, 2);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2021-03-28 10:27:26', '2021-03-28 10:27:26'),
(2, 'user', 'Normal User', '2021-03-28 10:27:26', '2021-03-28 10:27:26');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Woman Empowerment', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'for indian woman', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', 'settings\\April2021\\Xy5mDNjSsDjRZCQXrl98.jpg', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', 'settings\\March2021\\nTR3jQ97KYxdZhHxewQY.jpg', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'WE', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'for indian woman', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', 'settings\\April2021\\ZyMuzofOqlyBAxixEklC.jpg', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', 'settings\\April2021\\04D4FDSZULR8um5en4RW.jpg', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 2, 'admin', 'admin@gmail.com', 'users/default.png', NULL, '$2y$10$4ttBmw0muWUWhCDhnbEl1ue4sB8b5vWzpQvCVvKkBx17tLY/PLqgi', NULL, '{\"locale\":\"en\"}', '2021-03-28 10:28:32', '2021-04-06 18:05:33'),
(2, 1, 'admin', 'admin@admin.com', 'users/default.png', NULL, '$2y$10$BvNG2VccJZg7vCd.r/72sOfyakNOvslS7W7IoN6bhfQ2qrK0T3bHO', NULL, NULL, '2021-04-06 17:43:11', '2021-04-06 17:43:11');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `helps`
--
ALTER TABLE `helps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `laws`
--
ALTER TABLE `laws`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

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
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `helps`
--
ALTER TABLE `helps`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `laws`
--
ALTER TABLE `laws`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
