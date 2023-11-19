-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 19, 2023 at 02:34 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_ecommerce2`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Category 1', 'category-1', '2023-11-03 09:22:40', '2023-11-03 09:22:40'),
(2, NULL, 1, 'Category 2', 'category-2', '2023-11-03 09:22:40', '2023-11-03 09:22:40');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Laptops', 'laptops', '2023-11-03 09:26:59', '2023-11-03 09:26:59'),
(2, 'Desktops', 'desktops', '2023-11-03 09:27:01', '2023-11-03 09:27:01'),
(3, 'Mobile phones', 'mobile-phones', '2023-11-03 09:27:03', '2023-11-03 09:27:03'),
(4, 'Tablets', 'tablets', '2023-11-03 09:27:07', '2023-11-03 09:27:07'),
(5, 'Tv\'s', 'tvs', '2023-11-03 09:27:09', '2023-11-03 09:27:09'),
(6, 'Camerals', 'camerals', '2023-11-03 09:27:14', '2023-11-03 09:27:14'),
(7, 'Head phones', 'head-phone', '2023-11-03 09:27:14', '2023-11-03 09:27:14');

-- --------------------------------------------------------

--
-- Table structure for table `category_product`
--

CREATE TABLE `category_product` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_product`
--

INSERT INTO `category_product` (`id`, `product_id`, `category_id`, `created_at`, `updated_at`) VALUES
(39, 1, 2, '2023-11-07 09:21:46', '2023-11-07 09:21:46'),
(42, 2, 7, '2023-11-07 09:24:30', '2023-11-07 09:24:30'),
(43, 3, 6, '2023-11-07 09:25:29', '2023-11-07 09:25:29'),
(44, 4, 2, '2023-11-07 09:28:41', '2023-11-07 09:28:41'),
(45, 5, 7, '2023-11-07 09:29:13', '2023-11-07 09:29:13'),
(46, 6, 6, '2023-11-07 09:30:15', '2023-11-07 09:30:15'),
(47, 7, 1, '2023-11-07 09:31:12', '2023-11-07 09:31:12'),
(48, 9, 3, '2023-11-07 09:33:58', '2023-11-07 09:33:58'),
(49, 36, 2, '2023-11-12 07:28:20', '2023-11-12 07:28:20'),
(50, 36, 5, '2023-11-12 07:28:20', '2023-11-12 07:28:20'),
(51, 35, 3, '2023-11-12 07:29:02', '2023-11-12 07:29:02'),
(52, 34, 3, '2023-11-12 07:29:31', '2023-11-12 07:29:31'),
(53, 32, 3, '2023-11-12 07:30:04', '2023-11-12 07:30:04'),
(54, 32, 4, '2023-11-12 07:30:04', '2023-11-12 07:30:04'),
(55, 33, 3, '2023-11-12 07:30:55', '2023-11-12 07:30:55'),
(56, 31, 6, '2023-11-12 07:31:43', '2023-11-12 07:31:43'),
(57, 30, 3, '2023-11-12 07:32:05', '2023-11-12 07:32:05'),
(58, 30, 4, '2023-11-12 07:32:05', '2023-11-12 07:32:05'),
(59, 29, 6, '2023-11-12 07:32:29', '2023-11-12 07:32:29'),
(60, 28, 6, '2023-11-12 07:32:52', '2023-11-12 07:32:52'),
(61, 27, 6, '2023-11-12 07:33:19', '2023-11-12 07:33:19'),
(62, 26, 3, '2023-11-12 07:33:58', '2023-11-12 07:33:58'),
(63, 25, 6, '2023-11-12 07:34:28', '2023-11-12 07:34:28'),
(64, 24, 5, '2023-11-12 07:35:09', '2023-11-12 07:35:09'),
(65, 23, 1, '2023-11-12 07:35:48', '2023-11-12 07:35:48'),
(66, 22, 3, '2023-11-12 07:36:20', '2023-11-12 07:36:20'),
(67, 21, 1, '2023-11-12 07:42:50', '2023-11-12 07:42:50'),
(68, 20, 1, '2023-11-12 07:43:33', '2023-11-12 07:43:33'),
(69, 19, 1, '2023-11-12 07:44:12', '2023-11-12 07:44:12'),
(71, 17, 5, '2023-11-12 07:45:13', '2023-11-12 07:45:13'),
(73, 11, 7, '2023-11-12 07:46:29', '2023-11-12 07:46:29'),
(74, 12, 7, '2023-11-12 07:47:13', '2023-11-12 07:47:13'),
(75, 14, 7, '2023-11-12 07:47:56', '2023-11-12 07:47:56'),
(76, 13, 7, '2023-11-12 07:48:28', '2023-11-12 07:48:28'),
(77, 15, 7, '2023-11-12 07:49:17', '2023-11-12 07:49:17'),
(78, 16, 6, '2023-11-12 07:49:59', '2023-11-12 07:49:59'),
(79, 18, 7, '2023-11-12 07:50:46', '2023-11-12 07:50:46'),
(80, 10, 7, '2023-11-12 07:51:28', '2023-11-12 07:51:28');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` int(11) DEFAULT NULL,
  `percent_off` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `code`, `type`, `value`, `percent_off`, `created_at`, `updated_at`) VALUES
(1, 'ABC123', 'fixed', 30, NULL, '2023-11-03 09:28:56', '2023-11-03 09:28:56'),
(2, 'DEf456', 'percent', NULL, 50, '2023-11-03 09:28:57', '2023-11-03 09:28:57');

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
(22, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(23, 4, 'parent_id', 'select_dropdown', 'Parent', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(24, 4, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(25, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 4),
(26, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(27, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, NULL, 6),
(28, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(29, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(30, 5, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, NULL, 2),
(31, 5, 'category_id', 'text', 'Category', 1, 0, 1, 1, 1, 0, NULL, 3),
(32, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 4),
(33, 5, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 5),
(34, 5, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 6),
(35, 5, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(36, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8),
(37, 5, 'meta_description', 'text_area', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 9),
(38, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 10),
(39, 5, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(40, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 12),
(41, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 13),
(42, 5, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, NULL, 14),
(43, 5, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, NULL, 15),
(44, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(45, 6, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, NULL, 2),
(46, 6, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 3),
(47, 6, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 4),
(48, 6, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 5),
(49, 6, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 6),
(50, 6, 'meta_description', 'text', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 7),
(51, 6, 'meta_keywords', 'text', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 8),
(52, 6, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(53, 6, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, NULL, 10),
(54, 6, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, NULL, 11),
(55, 6, 'image', 'image', 'Page Image', 0, 1, 1, 1, 1, 1, NULL, 12),
(56, 7, 'id', 'hidden', 'Id', 1, 1, 1, 1, 1, 1, '{}', 1),
(57, 7, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(58, 7, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{}', 3),
(59, 7, 'details', 'text', 'Details', 0, 1, 1, 1, 1, 1, '{}', 4),
(60, 7, 'price', 'number', 'Price', 1, 1, 1, 1, 1, 1, '{}', 5),
(61, 7, 'description', 'rich_text_box', 'Description', 1, 1, 1, 1, 1, 1, '{}', 6),
(62, 7, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, '{\"on\":\"Yes\",\"off\":\"No\"}', 7),
(63, 7, 'quantity', 'number', 'Quantity', 1, 1, 1, 1, 1, 1, '{}', 8),
(64, 7, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 9),
(65, 7, 'images', 'multiple_images', 'Images', 0, 1, 1, 1, 1, 1, '{}', 10),
(66, 7, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 11),
(67, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 12),
(68, 8, 'id', 'hidden', 'Id', 1, 1, 1, 1, 1, 1, '{}', 1),
(69, 8, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(70, 8, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{}', 3),
(71, 8, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 4),
(72, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(80, 15, 'id', 'hidden', 'Id', 1, 1, 1, 1, 1, 1, '{}', 1),
(81, 15, 'code', 'text', 'Code', 1, 1, 1, 1, 1, 1, '{}', 2),
(82, 15, 'type', 'select_dropdown', 'Type', 1, 1, 1, 1, 1, 1, '{\"default\":\"fixed\",\"options\":{\"fixed\":\"Fixed value\",\"percent\":\" Percent off\"}}', 3),
(83, 15, 'value', 'text', 'Value', 0, 1, 1, 1, 1, 1, '{\"null\":\"\"}', 4),
(84, 15, 'percent_off', 'text', 'Percent Off', 0, 1, 1, 1, 1, 1, '{\"null\":\"\"}', 5),
(85, 15, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 6),
(86, 15, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(87, 16, 'id', 'hidden', 'Id', 1, 1, 1, 1, 1, 1, '{}', 1),
(88, 16, 'user_id', 'number', 'User Id', 0, 1, 1, 1, 1, 1, '{}', 2),
(89, 16, 'billing_email', 'text', 'Billing Email', 1, 1, 1, 1, 1, 1, '{}', 3),
(90, 16, 'billing_name', 'text', 'Billing Name', 1, 1, 1, 1, 1, 1, '{}', 4),
(91, 16, 'billing_address', 'text', 'Billing Address', 1, 1, 1, 1, 1, 1, '{}', 5),
(92, 16, 'billing_city', 'text', 'Billing City', 1, 1, 1, 1, 1, 1, '{}', 6),
(93, 16, 'billing_province', 'text', 'Billing Province', 1, 1, 1, 1, 1, 1, '{}', 7),
(94, 16, 'billing_postalcode', 'text', 'Billing Postalcode', 1, 1, 1, 1, 1, 1, '{}', 8),
(95, 16, 'billing_phone', 'number', 'Billing Phone', 1, 1, 1, 1, 1, 1, '{}', 9),
(96, 16, 'billing_name_on_card', 'text', 'Billing Name On Card', 1, 1, 1, 1, 1, 1, '{}', 10),
(97, 16, 'billing_discount', 'number', 'Billing Discount', 1, 1, 1, 1, 1, 1, '{}', 11),
(98, 16, 'billing_discount_code', 'text', 'Billing Discount Code', 0, 1, 1, 1, 1, 1, '{}', 12),
(99, 16, 'billing_subtotal', 'number', 'Billing Subtotal', 1, 1, 1, 1, 1, 1, '{}', 13),
(100, 16, 'billing_tax', 'number', 'Billing Tax', 1, 1, 1, 1, 1, 1, '{}', 14),
(101, 16, 'billing_total', 'number', 'Billing Total', 1, 1, 1, 1, 1, 1, '{}', 15),
(102, 16, 'billing_payment_gateway', 'text', 'Billing Payment Gateway', 1, 1, 1, 1, 1, 1, '{}', 16),
(103, 16, 'billing_shipped', 'checkbox', 'Billing Shipped', 1, 1, 1, 1, 1, 1, '{\"on\":\"Yes\",\"off\":\"No\"}', 17),
(104, 16, 'error', 'text', 'Error', 0, 1, 1, 1, 1, 1, '{}', 18),
(105, 16, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 1, 1, '{}', 19),
(106, 16, 'updated_at', 'timestamp', 'Updated At', 0, 1, 1, 1, 1, 1, '{}', 20);

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
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2023-11-03 09:22:12', '2023-11-03 09:22:12'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2023-11-03 09:22:12', '2023-11-03 09:22:12'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2023-11-03 09:22:12', '2023-11-03 09:22:12'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, NULL, '2023-11-03 09:22:33', '2023-11-03 09:22:33'),
(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, NULL, '2023-11-03 09:22:42', '2023-11-03 09:22:42'),
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, NULL, '2023-11-03 09:22:50', '2023-11-03 09:22:50'),
(7, 'products', 'products', 'Product', 'Products', 'voyager-documentation', 'App\\Models\\Product', NULL, 'App\\Http\\Controllers\\voyager\\ProductController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-11-07 09:16:06', '2023-11-07 10:53:16'),
(8, 'category', 'category', 'Category', 'Categories', 'voyager-tag', 'App\\Models\\Category', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2023-11-07 10:16:37', '2023-11-07 10:16:37'),
(15, 'coupons', 'coupons', 'Coupon', 'Coupons', 'voyager-dollar', 'App\\Models\\Coupon', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2023-11-07 11:01:25', '2023-11-07 11:01:25'),
(16, 'orders', 'orders', 'Order', 'Orders', NULL, 'App\\Models\\Order', NULL, 'App\\Http\\Controllers\\voyager\\OrderController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2023-11-07 12:20:01', '2023-11-07 12:20:01');

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
(1, 'admin', '2023-11-03 09:22:15', '2023-11-03 09:22:15'),
(2, 'main', '2023-11-03 09:37:18', '2023-11-03 09:37:18');

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
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2023-11-03 09:22:16', '2023-11-03 09:22:16', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 9, '2023-11-03 09:22:16', '2023-11-07 12:22:16', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 8, '2023-11-03 09:22:16', '2023-11-07 12:22:16', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 6, '2023-11-03 09:22:16', '2023-11-07 12:22:16', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 12, '2023-11-03 09:22:16', '2023-11-07 12:22:09', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2023-11-03 09:22:17', '2023-11-07 10:56:01', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2023-11-03 09:22:17', '2023-11-07 10:56:02', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2023-11-03 09:22:17', '2023-11-07 10:56:02', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2023-11-03 09:22:17', '2023-11-07 10:56:03', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 13, '2023-11-03 09:22:17', '2023-11-07 12:22:09', 'voyager.settings.index', NULL),
(11, 1, 'Categories', '', '_self', 'voyager-categories', NULL, NULL, 11, '2023-11-03 09:22:36', '2023-11-07 12:22:09', 'voyager.categories.index', NULL),
(12, 1, 'Posts', '', '_self', 'voyager-news', NULL, NULL, 7, '2023-11-03 09:22:46', '2023-11-07 12:22:16', 'voyager.posts.index', NULL),
(13, 1, 'Pages', '', '_self', 'voyager-file-text', NULL, NULL, 10, '2023-11-03 09:22:56', '2023-11-07 12:22:09', 'voyager.pages.index', NULL),
(14, 2, 'Shop', '', '_self', NULL, '#000000', NULL, 15, '2023-11-03 09:39:22', '2023-11-03 09:52:01', 'shop.index', 'null'),
(15, 2, 'About', '#', '_self', NULL, '#000000', NULL, 16, '2023-11-03 09:40:21', '2023-11-03 09:40:21', NULL, ''),
(16, 2, 'Blog', '#', '_self', NULL, '#000000', NULL, 17, '2023-11-03 09:40:49', '2023-11-03 09:40:49', NULL, ''),
(17, 2, 'Cart', '', '_self', NULL, '#000000', NULL, 18, '2023-11-03 09:41:52', '2023-11-03 09:52:20', 'cart.index', 'null'),
(18, 1, 'Products', '', '_self', 'voyager-bag', '#000000', NULL, 2, '2023-11-07 09:16:22', '2023-11-07 12:10:57', 'voyager.products.index', 'null'),
(19, 1, 'Categories', '', '_self', 'voyager-tag', NULL, NULL, 3, '2023-11-07 10:16:40', '2023-11-07 10:57:01', 'voyager.category.index', NULL),
(21, 1, 'Coupons', '', '_self', 'voyager-dollar', NULL, NULL, 4, '2023-11-07 11:01:27', '2023-11-07 11:01:55', 'voyager.coupons.index', NULL),
(22, 1, 'Orders', '', '_self', 'voyager-documentation', '#000000', NULL, 5, '2023-11-07 12:20:05', '2023-11-07 12:22:43', 'voyager.orders.index', 'null');

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
(39, '2014_10_12_000000_create_users_table', 1),
(40, '2014_10_12_100000_create_password_resets_table', 1),
(41, '2016_01_01_000000_add_voyager_user_fields', 1),
(42, '2016_01_01_000000_create_data_types_table', 1),
(43, '2016_01_01_000000_create_pages_table', 1),
(44, '2016_01_01_000000_create_posts_table', 1),
(45, '2016_02_15_204651_create_categories_table', 1),
(46, '2016_05_19_173453_create_menu_table', 1),
(47, '2016_10_21_190000_create_roles_table', 1),
(48, '2016_10_21_190000_create_settings_table', 1),
(49, '2016_11_30_135954_create_permission_table', 1),
(50, '2016_11_30_141208_create_permission_role_table', 1),
(51, '2016_12_26_201236_data_types__add__server_side', 1),
(52, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(53, '2017_01_14_005015_create_translations_table', 1),
(54, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(55, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(56, '2017_04_11_000000_alter_post_nullable_fields_table', 1),
(57, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(58, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(59, '2017_08_05_000000_add_group_to_settings_table', 1),
(60, '2017_11_26_013050_add_user_role_relationship', 1),
(61, '2017_11_26_015000_create_user_roles_table', 1),
(62, '2018_03_11_000000_add_user_settings', 1),
(63, '2018_03_14_000000_add_details_to_data_types_table', 1),
(64, '2018_03_16_000000_make_settings_value_nullable', 1),
(65, '2019_08_19_000000_create_failed_jobs_table', 1),
(66, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(67, '2023_09_12_102008_create_products_table', 1),
(68, '2023_09_23_122050_create_categories_table', 1),
(69, '2023_09_23_134357_create_category_product_table', 1),
(70, '2023_09_25_102943_create_coupons_table', 1),
(71, '2023_09_30_085522_add_image_to_products_table', 1),
(72, '2023_09_30_224158_add_images_to_products_table', 1),
(73, '2023_10_12_072842_create_orders_table', 1),
(74, '2023_10_12_080044_create_order_product_table', 1),
(75, '2023_10_31_191317_create_shoppingcart_table', 1),
(76, '2023_11_02_065520_add_quantity_to_products_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `billing_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_province` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_postalcode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_name_on_card` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_discount` int(11) NOT NULL DEFAULT 0,
  `billing_discount_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_subtotal` int(11) NOT NULL,
  `billing_tax` int(11) NOT NULL,
  `billing_total` int(11) NOT NULL,
  `billing_payment_gateway` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Stripe',
  `billing_shipped` tinyint(1) NOT NULL DEFAULT 0,
  `error` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `billing_email`, `billing_name`, `billing_address`, `billing_city`, `billing_province`, `billing_postalcode`, `billing_phone`, `billing_name_on_card`, `billing_discount`, `billing_discount_code`, `billing_subtotal`, `billing_tax`, `billing_total`, `billing_payment_gateway`, `billing_shipped`, `error`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin@admin.com', 'menu 34', 'No 19 mike street, Opp business road', 'Vegas', 'energy town', '12345', '0908783654', 'MIKE', 0, NULL, 539, 70, 609, 'Stripe', 0, NULL, '2023-11-07 10:04:31', '2023-11-07 10:04:31'),
(2, 1, 'admin@admin.com', 'Energy', 'No 19 mike street, Opp business road', 'Vegas', 'energy town', '12345', '0908783654', 'MIKE4', 0, NULL, 1, 0, 1, 'Stripe', 0, NULL, '2023-11-09 10:31:27', '2023-11-09 10:31:27'),
(3, 1, 'admin@admin.com', 'Energy', 'No 19 mike street, Opp business road', 'Vegas', 'energy town', '12345', '0908783654', 'MIKE4', 0, NULL, 1, 0, 1, 'Stripe', 0, NULL, '2023-11-09 10:33:47', '2023-11-09 10:33:47');

-- --------------------------------------------------------

--
-- Table structure for table `order_product`
--

CREATE TABLE `order_product` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `quantity` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_product`
--

INSERT INTO `order_product` (`id`, `order_id`, `product_id`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 1, '2023-11-07 10:04:32', '2023-11-07 10:04:32'),
(2, 1, 3, 1, '2023-11-07 10:04:33', '2023-11-07 10:04:33'),
(3, 2, 1, 1, '2023-11-09 10:31:29', '2023-11-09 10:31:29'),
(4, 2, 7, 1, '2023-11-09 10:31:30', '2023-11-09 10:31:30'),
(5, 2, 3, 1, '2023-11-09 10:31:31', '2023-11-09 10:31:31'),
(6, 3, 1, 1, '2023-11-09 10:33:48', '2023-11-09 10:33:48'),
(7, 3, 7, 1, '2023-11-09 10:33:49', '2023-11-09 10:33:49'),
(8, 3, 3, 1, '2023-11-09 10:33:49', '2023-11-09 10:33:49');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2023-11-03 09:22:58', '2023-11-03 09:22:58');

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
(1, 'browse_admin', NULL, '2023-11-03 09:22:18', '2023-11-03 09:22:18'),
(2, 'browse_bread', NULL, '2023-11-03 09:22:19', '2023-11-03 09:22:19'),
(3, 'browse_database', NULL, '2023-11-03 09:22:19', '2023-11-03 09:22:19'),
(4, 'browse_media', NULL, '2023-11-03 09:22:19', '2023-11-03 09:22:19'),
(5, 'browse_compass', NULL, '2023-11-03 09:22:20', '2023-11-03 09:22:20'),
(6, 'browse_menus', 'menus', '2023-11-03 09:22:20', '2023-11-03 09:22:20'),
(7, 'read_menus', 'menus', '2023-11-03 09:22:20', '2023-11-03 09:22:20'),
(8, 'edit_menus', 'menus', '2023-11-03 09:22:21', '2023-11-03 09:22:21'),
(9, 'add_menus', 'menus', '2023-11-03 09:22:21', '2023-11-03 09:22:21'),
(10, 'delete_menus', 'menus', '2023-11-03 09:22:21', '2023-11-03 09:22:21'),
(11, 'browse_roles', 'roles', '2023-11-03 09:22:21', '2023-11-03 09:22:21'),
(12, 'read_roles', 'roles', '2023-11-03 09:22:22', '2023-11-03 09:22:22'),
(13, 'edit_roles', 'roles', '2023-11-03 09:22:22', '2023-11-03 09:22:22'),
(14, 'add_roles', 'roles', '2023-11-03 09:22:22', '2023-11-03 09:22:22'),
(15, 'delete_roles', 'roles', '2023-11-03 09:22:22', '2023-11-03 09:22:22'),
(16, 'browse_users', 'users', '2023-11-03 09:22:22', '2023-11-03 09:22:22'),
(17, 'read_users', 'users', '2023-11-03 09:22:22', '2023-11-03 09:22:22'),
(18, 'edit_users', 'users', '2023-11-03 09:22:22', '2023-11-03 09:22:22'),
(19, 'add_users', 'users', '2023-11-03 09:22:23', '2023-11-03 09:22:23'),
(20, 'delete_users', 'users', '2023-11-03 09:22:23', '2023-11-03 09:22:23'),
(21, 'browse_settings', 'settings', '2023-11-03 09:22:23', '2023-11-03 09:22:23'),
(22, 'read_settings', 'settings', '2023-11-03 09:22:23', '2023-11-03 09:22:23'),
(23, 'edit_settings', 'settings', '2023-11-03 09:22:23', '2023-11-03 09:22:23'),
(24, 'add_settings', 'settings', '2023-11-03 09:22:24', '2023-11-03 09:22:24'),
(25, 'delete_settings', 'settings', '2023-11-03 09:22:24', '2023-11-03 09:22:24'),
(26, 'browse_categories', 'categories', '2023-11-03 09:22:37', '2023-11-03 09:22:37'),
(27, 'read_categories', 'categories', '2023-11-03 09:22:37', '2023-11-03 09:22:37'),
(28, 'edit_categories', 'categories', '2023-11-03 09:22:38', '2023-11-03 09:22:38'),
(29, 'add_categories', 'categories', '2023-11-03 09:22:38', '2023-11-03 09:22:38'),
(30, 'delete_categories', 'categories', '2023-11-03 09:22:39', '2023-11-03 09:22:39'),
(31, 'browse_posts', 'posts', '2023-11-03 09:22:47', '2023-11-03 09:22:47'),
(32, 'read_posts', 'posts', '2023-11-03 09:22:47', '2023-11-03 09:22:47'),
(33, 'edit_posts', 'posts', '2023-11-03 09:22:48', '2023-11-03 09:22:48'),
(34, 'add_posts', 'posts', '2023-11-03 09:22:48', '2023-11-03 09:22:48'),
(35, 'delete_posts', 'posts', '2023-11-03 09:22:48', '2023-11-03 09:22:48'),
(36, 'browse_pages', 'pages', '2023-11-03 09:22:57', '2023-11-03 09:22:57'),
(37, 'read_pages', 'pages', '2023-11-03 09:22:57', '2023-11-03 09:22:57'),
(38, 'edit_pages', 'pages', '2023-11-03 09:22:57', '2023-11-03 09:22:57'),
(39, 'add_pages', 'pages', '2023-11-03 09:22:57', '2023-11-03 09:22:57'),
(40, 'delete_pages', 'pages', '2023-11-03 09:22:58', '2023-11-03 09:22:58'),
(41, 'browse_products', 'products', '2023-11-07 09:16:17', '2023-11-07 09:16:17'),
(42, 'read_products', 'products', '2023-11-07 09:16:17', '2023-11-07 09:16:17'),
(43, 'edit_products', 'products', '2023-11-07 09:16:17', '2023-11-07 09:16:17'),
(44, 'add_products', 'products', '2023-11-07 09:16:17', '2023-11-07 09:16:17'),
(45, 'delete_products', 'products', '2023-11-07 09:16:17', '2023-11-07 09:16:17'),
(46, 'browse_category', 'category', '2023-11-07 10:16:39', '2023-11-07 10:16:39'),
(47, 'read_category', 'category', '2023-11-07 10:16:39', '2023-11-07 10:16:39'),
(48, 'edit_category', 'category', '2023-11-07 10:16:40', '2023-11-07 10:16:40'),
(49, 'add_category', 'category', '2023-11-07 10:16:40', '2023-11-07 10:16:40'),
(50, 'delete_category', 'category', '2023-11-07 10:16:40', '2023-11-07 10:16:40'),
(56, 'browse_coupons', 'coupons', '2023-11-07 11:01:25', '2023-11-07 11:01:25'),
(57, 'read_coupons', 'coupons', '2023-11-07 11:01:25', '2023-11-07 11:01:25'),
(58, 'edit_coupons', 'coupons', '2023-11-07 11:01:26', '2023-11-07 11:01:26'),
(59, 'add_coupons', 'coupons', '2023-11-07 11:01:26', '2023-11-07 11:01:26'),
(60, 'delete_coupons', 'coupons', '2023-11-07 11:01:26', '2023-11-07 11:01:26'),
(61, 'browse_orders', 'orders', '2023-11-07 12:20:04', '2023-11-07 12:20:04'),
(62, 'read_orders', 'orders', '2023-11-07 12:20:04', '2023-11-07 12:20:04'),
(63, 'edit_orders', 'orders', '2023-11-07 12:20:04', '2023-11-07 12:20:04'),
(64, 'add_orders', 'orders', '2023-11-07 12:20:04', '2023-11-07 12:20:04'),
(65, 'delete_orders', 'orders', '2023-11-07 12:20:04', '2023-11-07 12:20:04');

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
(2, 1),
(3, 1),
(4, 1),
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
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1);

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
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 0, NULL, 'Lorem Ipsum Post', NULL, 'This is the excerpt for the Lorem Ipsum Post', '<p>This is the body of the lorem ipsum post</p>', 'posts/post1.jpg', 'lorem-ipsum-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2023-11-03 09:22:48', '2023-11-03 09:22:48'),
(2, 0, NULL, 'My Sample Post', NULL, 'This is the excerpt for the sample Post', '<p>This is the body for the sample post, which includes the body.</p>\n                <h2>We can use all kinds of format!</h2>\n                <p>And include a bunch of other stuff.</p>', 'posts/post2.jpg', 'my-sample-post', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2023-11-03 09:22:49', '2023-11-03 09:22:49'),
(3, 0, NULL, 'Latest Post', NULL, 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', 'posts/post3.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2023-11-03 09:22:50', '2023-11-03 09:22:50'),
(4, 0, NULL, 'Yarr Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/post4.jpg', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2023-11-03 09:22:50', '2023-11-03 09:22:50');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int(11) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT 10,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `details`, `price`, `description`, `featured`, `quantity`, `image`, `images`, `created_at`, `updated_at`) VALUES
(1, 'Desktop Max', 'p1.png', '15 inch,max sound', 249, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate qui molestiae, delectus rem autem atque!</p>', 1, 8, 'products\\November2023\\10nwG47eKuxNco0eeLwU.png', NULL, '2023-11-03 09:27:18', '2023-11-09 10:34:15'),
(2, 'Headphone 360', 'p2.png', '1 inch,max sound', 139, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate qui molestiae, delectus rem autem atque!</p>', 1, 9, 'products\\November2023\\JBt3afRILCnvKJjyZOcn.png', '[\"products\\\\November2023\\\\PZrBvDhbHJUeIXOEIbwH.png\",\"products\\\\November2023\\\\ZPqxImhzblf7lJ28bYVG.png\",\"products\\\\November2023\\\\sDERYLFyTn4h8LNCDAmS.png\"]', '2023-11-03 09:27:49', '2023-11-07 10:05:00'),
(3, 'Cam Capsule 15', 'p3.png', '1 inch,360 brightness', 400, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate qui molestiae, delectus rem autem atque!</p>', 1, 8, 'products\\November2023\\SpIiwF5BUeYHDMKVjvNB.png', NULL, '2023-11-03 09:27:52', '2023-11-09 10:34:17'),
(4, 'Desktop pro', 'p4.png', '12 inch,mega sound', 2500, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate qui molestiae, delectus rem autem atque!</p>', 1, 10, 'products\\November2023\\4FsSMUGUzcxSJj4iqLhY.png', NULL, '2023-11-03 09:27:53', '2023-11-07 09:28:37'),
(5, 'Spyral Set 480', 'p5.png', 'Max sound, TB SSD, 32GB RAM', 150, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate qui molestiae, delectus rem autem atque!</p>', 1, 10, 'products\\November2023\\Q8W7ubuduIhfR7qohUpx.png', NULL, '2023-11-03 09:27:55', '2023-11-07 09:29:12'),
(6, 'Cam HD 10,00', 'p6.jpg', '2 inch, 360 brightness, 12GB RAM, 30GB INTERNAL', 450, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate qui molestiae, delectus rem autem atque!</p>', 1, 10, 'products\\November2023\\WJk3B6vcCy77qmG7anpk.jpg', NULL, '2023-11-03 09:27:57', '2023-11-07 09:30:11'),
(7, 'DELL Icon Elite', 'p7.png', '12 inch, 12GB RAM, 30GB INTERNAL', 400, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate qui molestiae, delectus rem autem atque!</p>', 1, 9, 'products\\November2023\\kSy8qFBHaAxQuhTDNjsD.png', NULL, '2023-11-03 09:27:59', '2023-11-09 10:34:17'),
(9, 'Samsung A1', 'p9.png', '3 inch, 6GB RAM, 60GB INTERNAL', 500, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate qui molestiae, delectus rem autem atque!</p>', 1, 10, 'products\\November2023\\Ix10l7ZlPhiDRwIZXuNH.png', NULL, '2023-11-03 09:28:01', '2023-11-07 09:33:51'),
(10, 'Spyral 850 Max', 'p10.png', '2 inch, 2GB RAM, 3GB INTERNAL', 700, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate qui molestiae, delectus rem autem atque!</p>', 1, 10, 'products\\November2023\\o3PZud0LSp49fUrmAZLR.png', NULL, '2023-11-03 09:28:04', '2023-11-12 07:51:26'),
(11, 'Spyral 9000 Pro', 'p11.png', 'Max sound, 3GB RAM, 7GB INTERNAL', 100, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate qui molestiae, delectus rem autem atque!</p>', 0, 10, 'products\\November2023\\Q73leDOHtlb8OlbY9126.png', NULL, '2023-11-03 09:28:07', '2023-11-12 07:46:28'),
(12, 'Omega 5010', 'p12.png', 'Minimun sound, 2GB RAM, 3GB INTERNAL', 700, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate qui molestiae, delectus rem autem atque!</p>', 0, 10, 'products\\November2023\\KcFpjK5iBNAUb9RSpif6.png', NULL, '2023-11-03 09:28:08', '2023-11-12 07:47:12'),
(13, 'Spyral 1810 Auto', 'p13.png', '2 inch, 2GB RAM, Max sound', 500, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate qui molestiae, delectus rem autem atque!</p>', 0, 10, 'products\\November2023\\HeWV60mXLtbMv7hJu2TE.png', NULL, '2023-11-03 09:28:10', '2023-11-12 07:48:27'),
(14, 'Mini Spyral A08', 'p14.png', '2 inch, 1GB RAM, 2GB INTERNAL', 630, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate qui molestiae, delectus rem autem atque!</p>', 1, 10, 'products\\November2023\\3W57yNv6vyNcfIjDlYCe.png', NULL, '2023-11-03 09:28:11', '2023-11-12 07:47:55'),
(15, 'Omega mini 9', 'p15.png', 'Max sound, 2GB RAM, 10GB INTERNAL', 790, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate qui molestiae, delectus rem autem atque!</p>', 1, 10, 'products\\November2023\\UDXhYxD2VqqrFAjowiks.png', NULL, '2023-11-03 09:28:12', '2023-11-12 07:49:16'),
(16, 'CC Cam 360', 'p16.png', 'Max brightness 10GB INTERNAL', 150, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate qui molestiae, delectus rem autem atque!</p>', 0, 10, 'products\\November2023\\C6PtcDipkMroUNudlQLu.png', NULL, '2023-11-03 09:28:15', '2023-11-12 07:49:54'),
(17, 'HD Para screen', 'p17.png', '10 inch, 360 brightness', 1090, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate qui molestiae, delectus rem autem atque!</p>', 0, 10, 'products\\November2023\\w3mrP2afTdK60gzKvY23.png', NULL, '2023-11-03 09:28:18', '2023-11-12 07:45:07'),
(18, 'North 9', 'p18.png', 'Max sound, 2GB RAM, 10GB INTERNAL', 190, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate qui molestiae, delectus rem autem atque!</p>', 1, 10, 'products\\November2023\\Lr1vfzJSRTIp7EitwmvO.png', NULL, '2023-11-03 09:28:19', '2023-11-12 07:50:45'),
(19, 'DELL HD Hybrid', 'p20.png', 'I-core, 9GB RAM, 490GB INTERNAL', 1790, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate qui molestiae, delectus rem autem atque!</p>', 0, 10, 'products\\November2023\\lgxGWvwsknLZdMv4IXIk.png', NULL, '2023-11-03 09:28:21', '2023-11-12 07:44:11'),
(20, 'DELL Elite Book 8', 'p21.png', 'I-core, 10GB RAM, 650GB INTERNAL', 2000, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate qui molestiae, delectus rem autem atque!</p>', 0, 10, 'products\\November2023\\xTnKjnWOhHwntTSptZwT.png', NULL, '2023-11-03 09:28:25', '2023-11-12 07:43:31'),
(21, 'HP Accurate Elite', 'p22.png', 'I-core, 10GB RAM, 650GB INTERNAL', 2300, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate qui molestiae, delectus rem autem atque!</p>', 0, 10, 'products\\November2023\\F0aIKryfKJFxrVeDh7ld.png', NULL, '2023-11-03 09:28:27', '2023-11-12 07:42:46'),
(22, 'Lenovo  Max', 'p23.png', '3 inch, 12MP, 12GB RAM, 30GB INTERNAL', 1800, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate qui molestiae, delectus rem autem atque!</p>', 0, 10, 'products\\November2023\\PB9oExbWmWrPLPDhQoEP.png', NULL, '2023-11-03 09:28:28', '2023-11-12 07:36:19'),
(23, 'HP Max Elite12', 'p26.png', 'I-core, 10GB RAM, 650GB INTERNAL', 900, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate qui molestiae, delectus rem autem atque!</p>', 0, 10, 'products\\November2023\\2yINjOSj3vDtxsmloZso.png', NULL, '2023-11-03 09:28:30', '2023-11-12 07:35:47'),
(24, 'Pramount HD 800', 'p27.png', '10 inch, 3D screen, 270 brightness', 2000, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate qui molestiae, delectus rem autem atque!</p>', 0, 10, 'products\\November2023\\a9ibRbDSHRTBdROCCbaM.png', NULL, '2023-11-03 09:28:33', '2023-11-12 07:35:07'),
(25, 'Cam HH mini', 'p28.png', '2 inch, 360 brightness, 12GB RAM, 30GB INTERNAL', 380, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate qui molestiae, delectus rem autem atque!</p>', 0, 10, 'products\\November2023\\mdZsW00mV68jF2VmJZMA.png', NULL, '2023-11-03 09:28:35', '2023-11-12 07:34:26'),
(26, 'Samsung 3D', 'p29.png', '10 inch, 3D screen, 270 brightness', 3100, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate qui molestiae, delectus rem autem atque!</p>', 0, 10, 'products\\November2023\\hVScX3CNYeqUM5UhiU5n.png', NULL, '2023-11-03 09:28:38', '2023-11-12 07:33:57'),
(27, 'Nikon 480', 'p30.png', '10 inch, 3D screen, 270 brightness', 3100, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate qui molestiae, delectus rem autem atque!</p>', 0, 10, 'products\\November2023\\gXacZQpAMJCqsbO3j04G.png', NULL, '2023-11-03 09:28:39', '2023-11-12 07:33:17'),
(28, 'CC Cam Night Duty', 'p31.png', '360 Night vision, 12GB RAM, 30GB INTERNAL', 1200, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate qui molestiae, delectus rem autem atque!</p>', 0, 10, 'products\\November2023\\COae6hbxUEMXcKMENi6Q.png', NULL, '2023-11-03 09:28:42', '2023-11-12 07:32:51'),
(29, 'Piko Cam 9', 'p33.png', '360 brightness, 12GB RAM, 30GB INTERNAL', 100, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate qui molestiae, delectus rem autem atque!</p>', 0, 10, 'products\\November2023\\cZnzoyVDjcVF0tOR9UHx.png', NULL, '2023-11-03 09:28:44', '2023-11-12 07:32:28'),
(30, 'Samsung A1 Tablet', 'p35.png', '4 inch, 360 brightness, 12GB RAM, 30GB INTERNAL', 540, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate qui molestiae, delectus rem autem atque!</p>', 0, 10, 'products\\November2023\\R6X4j9Gv3UoOPBMs6thZ.png', NULL, '2023-11-03 09:28:45', '2023-11-12 07:32:04'),
(31, 'Elite Camera', 'p37.png', '4 inch, 360 brightness, 12GB RAM, 30GB INTERNAL', 300, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate qui molestiae, delectus rem autem atque!</p>', 0, 10, 'products\\November2023\\wfsgsQxsru55eiK9o6cl.png', NULL, '2023-11-03 09:28:46', '2023-11-12 07:31:41'),
(32, 'Tecno tab Pro', 'p40.png', '5inch, 13MP, 5GB RAM, 42GB INTERNAL', 1700, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate qui molestiae, delectus rem autem atque!</p>', 0, 10, 'products\\November2023\\eQqiX4F9Wi3fo5SRBXws.png', NULL, '2023-11-03 09:28:48', '2023-11-12 07:30:00'),
(33, 'Infinix S15', 'p42.jpg', '2inch, 20MP, 7GB RAM, 64GB INTERNAL', 970, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate qui molestiae, delectus rem autem atque!</p>', 0, 10, 'products\\November2023\\DuAKCgXDCyQ0jyRnFmGG.jpg', NULL, '2023-11-03 09:28:50', '2023-11-12 07:30:53'),
(34, 'Iphone 12 Max', 'p43.png', '2inch, 24MP, 7GB RAM, 20GB INTERNAL', 1070, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate qui molestiae, delectus rem autem atque!</p>', 0, 10, 'products\\November2023\\4nNGudR556x3nCU1XhpF.jpg', NULL, '2023-11-03 09:28:51', '2023-11-12 07:29:27'),
(35, 'Tecno k60', 'p44.png', '2 inch, 4GB RAM, 50GB INTERNAL', 790, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate qui molestiae, delectus rem autem atque!</p>', 0, 10, 'products\\November2023\\MPR58QtOsLwOEDN0XkOc.jpg', NULL, '2023-11-03 09:28:53', '2023-11-12 07:29:00'),
(36, '3D Sharp 260', 'p50.png', '4 inch, 360 brightness, 12GB RAM, 30GB INTERNAL', 1500, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate qui molestiae, delectus rem autem atque!</p>', 0, 10, 'products\\November2023\\LJy34RDN2FuW9TqHdPOr.png', NULL, '2023-11-03 09:28:54', '2023-11-12 07:28:05');

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
(1, 'admin', 'Administrator', '2023-11-03 09:22:17', '2023-11-03 09:22:17'),
(2, 'user', 'Normal User', '2023-11-03 09:22:18', '2023-11-03 09:22:18');

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
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', 'settings\\November2023\\hI1iaKUFp8BCs418SW5u.jpg', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Eco store. Admin section', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', 'settings\\November2023\\g3EpPuN5J0dNOwSVpVXq.gif', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin'),
(11, 'site.stock_threshold', 'Stock Threshold', '5', NULL, 'text', 6, 'Site');

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

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2023-11-03 09:22:59', '2023-11-03 09:22:59'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2023-11-03 09:22:59', '2023-11-03 09:22:59'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2023-11-03 09:23:00', '2023-11-03 09:23:00'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2023-11-03 09:23:00', '2023-11-03 09:23:00'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2023-11-03 09:23:00', '2023-11-03 09:23:00'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2023-11-03 09:23:01', '2023-11-03 09:23:01'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2023-11-03 09:23:01', '2023-11-03 09:23:01'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2023-11-03 09:23:01', '2023-11-03 09:23:01'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2023-11-03 09:23:02', '2023-11-03 09:23:02'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2023-11-03 09:23:02', '2023-11-03 09:23:02'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2023-11-03 09:23:02', '2023-11-03 09:23:02'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2023-11-03 09:23:02', '2023-11-03 09:23:02'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2023-11-03 09:23:02', '2023-11-03 09:23:02'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2023-11-03 09:23:03', '2023-11-03 09:23:03'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2023-11-03 09:23:03', '2023-11-03 09:23:03'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2023-11-03 09:23:03', '2023-11-03 09:23:03'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2023-11-03 09:23:03', '2023-11-03 09:23:03'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2023-11-03 09:23:03', '2023-11-03 09:23:03'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2023-11-03 09:23:04', '2023-11-03 09:23:04'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2023-11-03 09:23:05', '2023-11-03 09:23:05'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2023-11-03 09:23:05', '2023-11-03 09:23:05'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2023-11-03 09:23:05', '2023-11-03 09:23:05'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2023-11-03 09:23:05', '2023-11-03 09:23:05'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2023-11-03 09:23:05', '2023-11-03 09:23:05'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2023-11-03 09:23:06', '2023-11-03 09:23:06'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2023-11-03 09:23:06', '2023-11-03 09:23:06'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2023-11-03 09:23:06', '2023-11-03 09:23:06'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2023-11-03 09:23:07', '2023-11-03 09:23:07'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2023-11-03 09:23:07', '2023-11-03 09:23:07'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2023-11-03 09:23:07', '2023-11-03 09:23:07');

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
(1, 1, 'Admin', 'admin@admin.com', 'users/default.png', NULL, '$2y$10$WC8fkR5MTCy.K15GAKdVA.0lyF4xywTjY6QyBll.0e7A3mB.Z3Gom', 'BtsYktGYBUewNCHNOIMFyVwxGM9WHGmdCppE9RFOIkCQgqCjPChnzC56A7jA', NULL, '2023-11-03 09:22:42', '2023-11-03 09:22:42'),
(2, 2, 'Eskanor', 'tik.eskanor@gmail.com', 'users/default.png', NULL, '$2y$10$lKnOHyTVz5/MW65VofwEjeCvdXwXYwSkrr7lXjY7Zy.Vlx.8FuTSy', NULL, NULL, '2023-11-03 10:26:16', '2023-11-03 10:26:17');

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
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category_name_unique` (`name`),
  ADD UNIQUE KEY `category_slug_unique` (`slug`);

--
-- Indexes for table `category_product`
--
ALTER TABLE `category_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_product_product_id_foreign` (`product_id`),
  ADD KEY `category_product_category_id_foreign` (`category_id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `coupons_code_unique` (`code`);

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
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indexes for table `order_product`
--
ALTER TABLE `order_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_product_order_id_foreign` (`order_id`),
  ADD KEY `order_product_product_id_foreign` (`product_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_name_unique` (`name`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`);

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
-- Indexes for table `shoppingcart`
--
ALTER TABLE `shoppingcart`
  ADD PRIMARY KEY (`identifier`,`instance`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `category_product`
--
ALTER TABLE `category_product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `order_product`
--
ALTER TABLE `order_product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `category_product`
--
ALTER TABLE `category_product`
  ADD CONSTRAINT `category_product_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `category_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

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
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `order_product`
--
ALTER TABLE `order_product`
  ADD CONSTRAINT `order_product_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `order_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

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
