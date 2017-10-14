-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 2017 年 10 月 14 日 15:44
-- サーバのバージョン： 10.0.31-MariaDB-0ubuntu0.16.04.2
-- PHP Version: 7.0.22-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `business-manners-quiz`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `admin_menu`
--

CREATE TABLE `admin_menu` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `admin_menu`
--

INSERT INTO `admin_menu` (`id`, `parent_id`, `order`, `title`, `icon`, `uri`, `created_at`, `updated_at`) VALUES
(1, 0, 1, 'Index', 'fa-bar-chart', '/', NULL, NULL),
(2, 0, 2, 'Admin', 'fa-tasks', '', NULL, NULL),
(3, 2, 3, 'Users', 'fa-users', 'auth/users', NULL, NULL),
(4, 2, 4, 'Roles', 'fa-user', 'auth/roles', NULL, NULL),
(5, 2, 5, 'Permission', 'fa-ban', 'auth/permissions', NULL, NULL),
(6, 2, 6, 'Menu', 'fa-bars', 'auth/menu', NULL, NULL),
(7, 2, 7, 'Operation log', 'fa-history', 'auth/logs', NULL, NULL),
(8, 2, 0, 'General-users', 'fa-user-plus', '/generalusers', '2017-10-10 06:26:16', '2017-10-10 06:28:25'),
(9, 2, 0, 'Quiz', 'fa-question-circle', '/quiz', '2017-10-10 06:37:23', '2017-10-12 10:40:23'),
(10, 2, 0, 'Information', 'fa-info-circle', '/information', '2017-10-12 10:40:59', '2017-10-12 10:41:17'),
(11, 2, 0, 'Keyword', 'fa-key', 'keyword', '2017-10-12 11:15:19', '2017-10-12 11:15:19');

-- --------------------------------------------------------

--
-- テーブルの構造 `admin_operation_log`
--

CREATE TABLE `admin_operation_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `admin_operation_log`
--

INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', 'GET', '::1', '[]', '2017-10-10 05:57:51', '2017-10-10 05:57:51'),
(2, 1, 'admin', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-10 05:57:59', '2017-10-10 05:57:59'),
(3, 1, 'admin/auth/users', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-10 05:58:10', '2017-10-10 05:58:10'),
(4, 1, 'admin', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-10 05:58:22', '2017-10-10 05:58:22'),
(5, 1, 'admin/auth/menu', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-10 05:58:28', '2017-10-10 05:58:28'),
(6, 1, 'admin/auth/menu', 'GET', '::1', '[]', '2017-10-10 05:59:51', '2017-10-10 05:59:51'),
(7, 1, 'admin', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-10 05:59:55', '2017-10-10 05:59:55'),
(8, 1, 'admin', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-10 06:10:47', '2017-10-10 06:10:47'),
(9, 1, 'admin/auth/menu', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-10 06:10:52', '2017-10-10 06:10:52'),
(10, 1, 'admin/auth/menu', 'GET', '::1', '[]', '2017-10-10 06:16:06', '2017-10-10 06:16:06'),
(11, 1, 'admin/auth/users', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-10 06:16:09', '2017-10-10 06:16:09'),
(12, 1, 'admin/auth/users', 'GET', '::1', '[]', '2017-10-10 06:16:36', '2017-10-10 06:16:36'),
(13, 1, 'admin/auth/users', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-10 06:16:39', '2017-10-10 06:16:39'),
(14, 1, 'admin/auth/users', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-10 06:16:46', '2017-10-10 06:16:46'),
(15, 1, 'admin/auth/users', 'GET', '::1', '[]', '2017-10-10 06:16:51', '2017-10-10 06:16:51'),
(16, 1, 'admin/users', 'GET', '::1', '[]', '2017-10-10 06:18:23', '2017-10-10 06:18:23'),
(17, 1, 'admin/auth/users', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-10 06:19:03', '2017-10-10 06:19:03'),
(18, 1, 'admin/users', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-10 06:19:06', '2017-10-10 06:19:06'),
(19, 1, 'admin/users', 'GET', '::1', '[]', '2017-10-10 06:19:41', '2017-10-10 06:19:41'),
(20, 1, 'admin/users', 'GET', '::1', '[]', '2017-10-10 06:19:51', '2017-10-10 06:19:51'),
(21, 1, 'admin/users', 'GET', '::1', '[]', '2017-10-10 06:20:15', '2017-10-10 06:20:15'),
(22, 1, 'admin/users', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-10 06:20:20', '2017-10-10 06:20:20'),
(23, 1, 'admin/users', 'GET', '::1', '[]', '2017-10-10 06:20:22', '2017-10-10 06:20:22'),
(24, 1, 'admin/auth/menu', 'GET', '::1', '[]', '2017-10-10 06:21:31', '2017-10-10 06:21:31'),
(25, 1, 'admin/auth/users', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-10 06:21:43', '2017-10-10 06:21:43'),
(26, 1, 'admin/auth/menu', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-10 06:21:50', '2017-10-10 06:21:50'),
(27, 1, 'admin/users', 'GET', '::1', '[]', '2017-10-10 06:22:06', '2017-10-10 06:22:06'),
(28, 1, 'admin/auth/menu', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-10 06:23:22', '2017-10-10 06:23:22'),
(29, 1, 'admin', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-10 06:23:28', '2017-10-10 06:23:28'),
(30, 1, 'admin', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-10 06:23:31', '2017-10-10 06:23:31'),
(31, 1, 'admin/auth/users', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-10 06:23:34', '2017-10-10 06:23:34'),
(32, 1, 'admin/auth/roles', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-10 06:23:35', '2017-10-10 06:23:35'),
(33, 1, 'admin/auth/menu', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-10 06:23:36', '2017-10-10 06:23:36'),
(34, 1, 'admin/auth/menu', 'POST', '::1', '{"parent_id":"2","title":"General-users","icon":"fa-user-plus","uri":"\\/admin\\/user","roles":[null],"_token":"v21arxXW1TP2429m7ebkuavF0G0qersaW51xq3yz"}', '2017-10-10 06:26:16', '2017-10-10 06:26:16'),
(35, 1, 'admin/auth/menu', 'GET', '::1', '[]', '2017-10-10 06:26:17', '2017-10-10 06:26:17'),
(36, 1, 'admin/auth/menu', 'GET', '::1', '[]', '2017-10-10 06:26:27', '2017-10-10 06:26:27'),
(37, 1, 'admin/auth/menu/8/edit', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-10 06:26:32', '2017-10-10 06:26:32'),
(38, 1, 'admin/auth/menu/8', 'PUT', '::1', '{"parent_id":"2","title":"General-users","icon":"fa-user-plus","uri":"\\/user","roles":[null],"_token":"v21arxXW1TP2429m7ebkuavF0G0qersaW51xq3yz","_method":"PUT","_previous_":"http:\\/\\/localhost\\/admin\\/auth\\/menu"}', '2017-10-10 06:26:44', '2017-10-10 06:26:44'),
(39, 1, 'admin/auth/menu', 'GET', '::1', '[]', '2017-10-10 06:26:44', '2017-10-10 06:26:44'),
(40, 1, 'admin/users', 'GET', '::1', '[]', '2017-10-10 06:26:51', '2017-10-10 06:26:51'),
(41, 1, 'admin', 'GET', '::1', '[]', '2017-10-10 06:26:58', '2017-10-10 06:26:58'),
(42, 1, 'admin/auth/menu', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-10 06:27:03', '2017-10-10 06:27:03'),
(43, 1, 'admin/auth/menu/8/edit', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-10 06:27:07', '2017-10-10 06:27:07'),
(44, 1, 'admin/auth/menu/8', 'PUT', '::1', '{"parent_id":"2","title":"General-users","icon":"fa-user-plus","uri":"\\/users","roles":[null],"_token":"v21arxXW1TP2429m7ebkuavF0G0qersaW51xq3yz","_method":"PUT","_previous_":"http:\\/\\/localhost\\/admin\\/auth\\/menu"}', '2017-10-10 06:27:15', '2017-10-10 06:27:15'),
(45, 1, 'admin/auth/menu', 'GET', '::1', '[]', '2017-10-10 06:27:15', '2017-10-10 06:27:15'),
(46, 1, 'admin/users', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-10 06:27:17', '2017-10-10 06:27:17'),
(47, 1, 'admin/auth/users', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-10 06:27:28', '2017-10-10 06:27:28'),
(48, 1, 'admin/auth/menu', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-10 06:27:35', '2017-10-10 06:27:35'),
(49, 1, 'admin/generalusers', 'GET', '::1', '[]', '2017-10-10 06:28:02', '2017-10-10 06:28:02'),
(50, 1, 'admin/auth/menu', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-10 06:28:07', '2017-10-10 06:28:07'),
(51, 1, 'admin/auth/menu/8/edit', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-10 06:28:11', '2017-10-10 06:28:11'),
(52, 1, 'admin/auth/menu/8', 'PUT', '::1', '{"parent_id":"2","title":"General-users","icon":"fa-user-plus","uri":"\\/generalusers","roles":[null],"_token":"v21arxXW1TP2429m7ebkuavF0G0qersaW51xq3yz","_method":"PUT","_previous_":"http:\\/\\/localhost\\/admin\\/auth\\/menu"}', '2017-10-10 06:28:25', '2017-10-10 06:28:25'),
(53, 1, 'admin/auth/menu', 'GET', '::1', '[]', '2017-10-10 06:28:25', '2017-10-10 06:28:25'),
(54, 1, 'admin/auth/menu/7/edit', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-10 06:28:28', '2017-10-10 06:28:28'),
(55, 1, 'admin/auth/menu', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-10 06:28:32', '2017-10-10 06:28:32'),
(56, 1, 'admin/auth/roles', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-10 06:28:35', '2017-10-10 06:28:35'),
(57, 1, 'admin/auth/roles/1/edit', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-10 06:28:47', '2017-10-10 06:28:47'),
(58, 1, 'admin/auth/menu', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-10 06:28:54', '2017-10-10 06:28:54'),
(59, 1, 'admin/generalusers', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-10 06:30:05', '2017-10-10 06:30:05'),
(60, 1, 'admin/generalusers', 'GET', '::1', '[]', '2017-10-10 06:30:51', '2017-10-10 06:30:51'),
(61, 1, 'admin/generalusers', 'GET', '::1', '[]', '2017-10-10 06:31:08', '2017-10-10 06:31:08'),
(62, 1, 'admin/generalusers', 'GET', '::1', '[]', '2017-10-10 06:31:09', '2017-10-10 06:31:09'),
(63, 1, 'admin/generalusers/1/edit', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-10 06:31:33', '2017-10-10 06:31:33'),
(64, 1, 'admin/generalusers', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-10 06:31:41', '2017-10-10 06:31:41'),
(65, 1, 'admin/auth/menu', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-10 06:31:44', '2017-10-10 06:31:44'),
(66, 1, 'admin/generalusers', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-10 06:32:31', '2017-10-10 06:32:31'),
(67, 1, 'admin/generalusers/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-10 06:32:35', '2017-10-10 06:32:35'),
(68, 1, 'admin/generalusers', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-10 06:32:38', '2017-10-10 06:32:38'),
(69, 1, 'admin/auth/menu', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-10 06:35:42', '2017-10-10 06:35:42'),
(70, 1, 'admin/quiz', 'GET', '::1', '[]', '2017-10-10 06:35:56', '2017-10-10 06:35:56'),
(71, 1, 'admin/auth/menu', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-10 06:36:07', '2017-10-10 06:36:07'),
(72, 1, 'admin/auth/menu', 'POST', '::1', '{"parent_id":"2","title":"quiz","icon":"fa-question-circle","uri":"\\/quiz","roles":[null],"_token":"v21arxXW1TP2429m7ebkuavF0G0qersaW51xq3yz"}', '2017-10-10 06:37:22', '2017-10-10 06:37:22'),
(73, 1, 'admin/auth/menu', 'GET', '::1', '[]', '2017-10-10 06:37:23', '2017-10-10 06:37:23'),
(74, 1, 'admin/quiz', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-10 06:37:30', '2017-10-10 06:37:30'),
(75, 1, 'admin/quiz', 'GET', '::1', '[]', '2017-10-10 06:39:13', '2017-10-10 06:39:13'),
(76, 1, 'admin/quiz', 'GET', '::1', '[]', '2017-10-10 06:39:41', '2017-10-10 06:39:41'),
(77, 1, 'admin/quiz', 'GET', '::1', '[]', '2017-10-10 06:39:48', '2017-10-10 06:39:48'),
(78, 1, 'admin/quiz', 'GET', '::1', '[]', '2017-10-10 06:40:37', '2017-10-10 06:40:37'),
(79, 1, 'admin/quiz/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-10 06:41:06', '2017-10-10 06:41:06'),
(80, 1, 'admin/quiz', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-10 06:41:09', '2017-10-10 06:41:09'),
(81, 1, 'admin/quiz', 'GET', '::1', '{"_pjax":"#pjax-container","per_page":"100"}', '2017-10-10 06:41:13', '2017-10-10 06:41:13'),
(82, 1, 'admin/quiz', 'GET', '::1', '{"_pjax":"#pjax-container","per_page":"100"}', '2017-10-10 06:41:13', '2017-10-10 06:41:13'),
(83, 1, 'admin/quiz/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-10 06:41:21', '2017-10-10 06:41:21'),
(84, 1, 'admin/quiz', 'GET', '::1', '{"per_page":"100","_pjax":"#pjax-container"}', '2017-10-10 06:41:24', '2017-10-10 06:41:24'),
(85, 1, 'admin/quiz/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-10 06:41:37', '2017-10-10 06:41:37'),
(86, 1, 'admin/quiz', 'GET', '::1', '{"per_page":"100","_pjax":"#pjax-container"}', '2017-10-10 06:41:55', '2017-10-10 06:41:55'),
(87, 1, 'admin/quiz/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-10 06:42:15', '2017-10-10 06:42:15'),
(88, 1, 'admin/quiz', 'GET', '::1', '{"per_page":"100","_pjax":"#pjax-container"}', '2017-10-10 06:42:18', '2017-10-10 06:42:18'),
(89, 1, 'admin/quiz', 'GET', '::1', '{"per_page":"100","_pjax":"#pjax-container"}', '2017-10-10 06:42:20', '2017-10-10 06:42:20'),
(90, 1, 'admin/quiz', 'GET', '::1', '{"per_page":"100","_pjax":"#pjax-container"}', '2017-10-10 06:42:21', '2017-10-10 06:42:21'),
(91, 1, 'admin/quiz', 'GET', '::1', '{"per_page":"100","_pjax":"#pjax-container"}', '2017-10-10 06:42:27', '2017-10-10 06:42:27'),
(92, 1, 'admin/quiz', 'GET', '::1', '{"per_page":"100","_pjax":"#pjax-container","_export_":"all"}', '2017-10-10 06:43:14', '2017-10-10 06:43:14'),
(93, 1, 'admin/quiz/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-10 06:43:22', '2017-10-10 06:43:22'),
(94, 1, 'admin/quiz', 'GET', '::1', '{"per_page":"100","_pjax":"#pjax-container"}', '2017-10-10 06:43:44', '2017-10-10 06:43:44'),
(95, 1, 'admin', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-10 06:43:47', '2017-10-10 06:43:47'),
(96, 1, 'admin/auth/users', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-10 06:43:49', '2017-10-10 06:43:49'),
(97, 1, 'admin/auth/users/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-10 06:43:54', '2017-10-10 06:43:54'),
(98, 1, 'admin/auth/users', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-10 06:44:00', '2017-10-10 06:44:00'),
(99, 1, 'admin/auth/roles', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-10 06:44:03', '2017-10-10 06:44:03'),
(100, 1, 'admin/auth/roles/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-10 06:44:06', '2017-10-10 06:44:06'),
(101, 1, 'admin/auth/roles', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-10 06:44:16', '2017-10-10 06:44:16'),
(102, 1, 'admin/auth/menu', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-10 06:44:20', '2017-10-10 06:44:20'),
(103, 1, 'admin/generalusers', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-10 06:44:23', '2017-10-10 06:44:23'),
(104, 1, 'admin/generalusers/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-10 06:44:25', '2017-10-10 06:44:25'),
(105, 1, 'admin/generalusers', 'POST', '::1', '{"_token":"v21arxXW1TP2429m7ebkuavF0G0qersaW51xq3yz","_previous_":"http:\\/\\/localhost\\/admin\\/generalusers"}', '2017-10-10 06:44:36', '2017-10-10 06:44:36'),
(106, 1, 'admin/generalusers/create', 'GET', '::1', '[]', '2017-10-10 06:44:37', '2017-10-10 06:44:37'),
(107, 1, 'admin/generalusers/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-10 06:49:02', '2017-10-10 06:49:02'),
(108, 1, 'admin/generalusers/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-10 06:49:03', '2017-10-10 06:49:03'),
(109, 1, 'admin/generalusers', 'POST', '::1', '{"_token":"v21arxXW1TP2429m7ebkuavF0G0qersaW51xq3yz"}', '2017-10-10 06:49:12', '2017-10-10 06:49:12'),
(110, 1, 'admin/generalusers/create', 'GET', '::1', '[]', '2017-10-10 06:49:13', '2017-10-10 06:49:13'),
(111, 1, 'admin/generalusers/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-10 06:49:16', '2017-10-10 06:49:16'),
(112, 1, 'admin/generalusers/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-10 06:49:18', '2017-10-10 06:49:18'),
(113, 1, 'admin/generalusers', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-10 06:49:18', '2017-10-10 06:49:18'),
(114, 1, 'admin/generalusers', 'GET', '::1', '[]', '2017-10-10 06:49:25', '2017-10-10 06:49:25'),
(115, 1, 'admin/generalusers/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-10 06:49:28', '2017-10-10 06:49:28'),
(116, 1, 'admin', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-10 06:49:50', '2017-10-10 06:49:50'),
(117, 1, 'admin/auth/users', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-10 06:49:52', '2017-10-10 06:49:52'),
(118, 1, 'admin/auth/menu', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-10 06:50:06', '2017-10-10 06:50:06'),
(119, 1, 'admin/auth/users', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-10 06:50:12', '2017-10-10 06:50:12'),
(120, 1, 'admin/auth/users/1/edit', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-10 06:50:16', '2017-10-10 06:50:16'),
(121, 1, 'admin/auth/users', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-10 06:50:28', '2017-10-10 06:50:28'),
(122, 1, 'admin/auth/menu', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-10 06:50:30', '2017-10-10 06:50:30'),
(123, 1, 'admin/auth/menu/8/edit', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-10 06:50:37', '2017-10-10 06:50:37'),
(124, 1, 'admin/auth/menu/8', 'PUT', '::1', '{"parent_id":"2","title":"General-users","icon":"fa-user-plus","uri":"\\/generalusers","roles":["1",null],"_token":"v21arxXW1TP2429m7ebkuavF0G0qersaW51xq3yz","_method":"PUT","_previous_":"http:\\/\\/localhost\\/admin\\/auth\\/menu"}', '2017-10-10 06:50:43', '2017-10-10 06:50:43'),
(125, 1, 'admin/auth/menu', 'GET', '::1', '[]', '2017-10-10 06:50:43', '2017-10-10 06:50:43'),
(126, 1, 'admin/generalusers', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-10 06:50:47', '2017-10-10 06:50:47'),
(127, 1, 'admin/generalusers/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-10 06:50:50', '2017-10-10 06:50:50'),
(128, 1, 'admin/generalusers', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-10 06:52:52', '2017-10-10 06:52:52'),
(129, 1, 'admin/generalusers/1/edit', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-10 06:52:55', '2017-10-10 06:52:55'),
(130, 1, 'admin/generalusers', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-10 06:53:18', '2017-10-10 06:53:18'),
(131, 1, 'admin/generalusers/1/edit', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-10 06:53:19', '2017-10-10 06:53:19'),
(132, 1, 'admin', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-10 06:54:53', '2017-10-10 06:54:53'),
(133, 1, 'admin/auth/users', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-10 06:54:57', '2017-10-10 06:54:57'),
(134, 1, 'admin/auth/users/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-10 06:55:03', '2017-10-10 06:55:03'),
(135, 1, 'admin/auth/permissions', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-10 06:58:20', '2017-10-10 06:58:20'),
(136, 1, 'admin/auth/permissions/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-10 06:58:33', '2017-10-10 06:58:33'),
(137, 1, 'admin/auth/permissions', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-10 06:58:39', '2017-10-10 06:58:39'),
(138, 1, 'admin/auth/permissions/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-10 06:58:51', '2017-10-10 06:58:51'),
(139, 1, 'admin/auth/permissions', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-10 06:58:59', '2017-10-10 06:58:59'),
(140, 1, 'admin/auth/permissions/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-10 06:59:07', '2017-10-10 06:59:07'),
(141, 1, 'admin/auth/permissions', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-10 06:59:10', '2017-10-10 06:59:10'),
(142, 1, 'admin/auth/menu', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-10 06:59:34', '2017-10-10 06:59:34'),
(143, 1, 'admin/auth/permissions', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-10 06:59:56', '2017-10-10 06:59:56'),
(144, 1, 'admin/auth/permissions/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-10 06:59:58', '2017-10-10 06:59:58'),
(145, 1, 'admin/auth/permissions', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-10 07:00:01', '2017-10-10 07:00:01'),
(146, 1, 'admin/auth/permissions/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-10 07:00:08', '2017-10-10 07:00:08'),
(147, 1, 'admin/auth/permissions', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-10 07:00:12', '2017-10-10 07:00:12'),
(148, 1, 'admin/auth/setting', 'GET', '::1', '[]', '2017-10-10 07:00:31', '2017-10-10 07:00:31'),
(149, 1, 'admin/auth/permissions', 'GET', '::1', '[]', '2017-10-10 07:00:45', '2017-10-10 07:00:45'),
(150, 1, 'admin/auth/permissions/1/edit', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-10 07:00:49', '2017-10-10 07:00:49'),
(151, 1, 'admin/auth/permissions', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-10 07:00:52', '2017-10-10 07:00:52'),
(152, 1, 'admin/auth/permissions/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-10 07:00:59', '2017-10-10 07:00:59'),
(153, 1, 'admin/auth/permissions', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-10 07:01:00', '2017-10-10 07:01:00'),
(154, 1, 'admin/auth/permissions/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-10 07:01:04', '2017-10-10 07:01:04'),
(155, 1, 'admin/auth/permissions', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-10 07:01:07', '2017-10-10 07:01:07'),
(156, 1, 'admin/auth/permissions/4/edit', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-10 07:01:17', '2017-10-10 07:01:17'),
(157, 1, 'admin/auth/permissions', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-10 07:01:26', '2017-10-10 07:01:26'),
(158, 1, 'admin/auth/permissions/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-10 07:03:23', '2017-10-10 07:03:23'),
(159, 1, 'admin/auth/permissions/create', 'GET', '::1', '[]', '2017-10-10 07:03:45', '2017-10-10 07:03:45'),
(160, 1, 'admin/auth/permissions', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-10 07:03:49', '2017-10-10 07:03:49'),
(161, 1, 'admin/auth/menu', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-10 07:04:55', '2017-10-10 07:04:55'),
(162, 1, 'admin/generalusers', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-10 07:04:57', '2017-10-10 07:04:57'),
(163, 1, 'admin/generalusers/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-10 07:04:59', '2017-10-10 07:04:59'),
(164, 1, 'admin/auth/menu', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-10 07:08:58', '2017-10-10 07:08:58'),
(165, 1, 'admin/auth/permissions', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-10 07:09:03', '2017-10-10 07:09:03'),
(166, 1, 'admin/generalusers', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-10 07:09:53', '2017-10-10 07:09:53'),
(167, 1, 'admin/generalusers/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-10 07:09:54', '2017-10-10 07:09:54'),
(168, 1, 'admin/generalusers', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-10 07:10:04', '2017-10-10 07:10:04'),
(169, 1, 'admin/auth/permissions/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-10 07:10:08', '2017-10-10 07:10:08'),
(170, 1, 'admin/auth/permissions', 'POST', '::1', '{"slug":"auth.general.users","name":"general user setting","http_method":["GET","POST","PUT","DELETE",null],"http_path":"\\/admin\\/generalusers\\/create","_token":"v21arxXW1TP2429m7ebkuavF0G0qersaW51xq3yz"}', '2017-10-10 07:10:27', '2017-10-10 07:10:27'),
(171, 1, 'admin/auth/permissions', 'GET', '::1', '[]', '2017-10-10 07:10:27', '2017-10-10 07:10:27'),
(172, 1, 'admin/auth/permissions/6/edit', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-10 07:10:33', '2017-10-10 07:10:33'),
(173, 1, 'admin/auth/menu', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-10 07:10:44', '2017-10-10 07:10:44'),
(174, 1, 'admin/generalusers', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-10 07:10:47', '2017-10-10 07:10:47'),
(175, 1, 'admin/generalusers/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-10 07:10:49', '2017-10-10 07:10:49'),
(176, 1, 'admin/auth/permissions', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-10 07:16:20', '2017-10-10 07:16:20'),
(177, 1, 'admin/generalusers', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-10 07:17:33', '2017-10-10 07:17:33'),
(178, 1, 'admin/quiz', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-10 07:17:37', '2017-10-10 07:17:37'),
(179, 1, 'admin/quiz/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-10 07:17:39', '2017-10-10 07:17:39'),
(180, 1, 'admin/quiz/create', 'GET', '::1', '[]', '2017-10-10 07:18:23', '2017-10-10 07:18:23'),
(181, 1, 'admin/quiz/create', 'GET', '::1', '[]', '2017-10-10 07:19:52', '2017-10-10 07:19:52'),
(182, 1, 'admin/quiz', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-10 07:20:04', '2017-10-10 07:20:04'),
(183, 1, 'admin/quiz/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-10 07:20:08', '2017-10-10 07:20:08'),
(184, 1, 'admin/generalusers/create', 'GET', '::1', '[]', '2017-10-10 07:22:22', '2017-10-10 07:22:22'),
(185, 1, 'admin/generalusers/create', 'GET', '::1', '[]', '2017-10-10 07:22:29', '2017-10-10 07:22:29'),
(186, 1, 'admin/quiz/create', 'GET', '::1', '[]', '2017-10-10 07:25:20', '2017-10-10 07:25:20'),
(187, 1, 'admin/quiz', 'POST', '::1', '{"Quiz_title":"aaaa","_token":"v21arxXW1TP2429m7ebkuavF0G0qersaW51xq3yz"}', '2017-10-10 07:25:47', '2017-10-10 07:25:47'),
(188, 1, 'admin/quiz/create', 'GET', '::1', '[]', '2017-10-10 07:25:48', '2017-10-10 07:25:48'),
(189, 1, 'admin/generalusers', 'POST', '::1', '{"name":null,"email":null,"_token":"v21arxXW1TP2429m7ebkuavF0G0qersaW51xq3yz"}', '2017-10-10 07:30:11', '2017-10-10 07:30:11'),
(190, 1, 'admin/generalusers/create', 'GET', '::1', '[]', '2017-10-10 07:30:11', '2017-10-10 07:30:11'),
(191, 1, 'admin/quiz', 'POST', '::1', '{"title":null,"_token":"v21arxXW1TP2429m7ebkuavF0G0qersaW51xq3yz"}', '2017-10-10 07:30:21', '2017-10-10 07:30:21'),
(192, 1, 'admin/quiz/create', 'GET', '::1', '[]', '2017-10-10 07:30:21', '2017-10-10 07:30:21'),
(193, 1, 'admin/quiz/create', 'GET', '::1', '[]', '2017-10-10 07:33:28', '2017-10-10 07:33:28'),
(194, 1, 'admin/quiz', 'POST', '::1', '{"title":null,"_token":"v21arxXW1TP2429m7ebkuavF0G0qersaW51xq3yz"}', '2017-10-10 07:33:30', '2017-10-10 07:33:30'),
(195, 1, 'admin/quiz/create', 'GET', '::1', '[]', '2017-10-10 07:33:30', '2017-10-10 07:33:30'),
(196, 1, 'admin/quiz/create', 'GET', '::1', '[]', '2017-10-10 07:33:45', '2017-10-10 07:33:45'),
(197, 1, 'admin/quiz', 'POST', '::1', '{"title":null,"_token":"v21arxXW1TP2429m7ebkuavF0G0qersaW51xq3yz"}', '2017-10-10 07:33:47', '2017-10-10 07:33:47'),
(198, 1, 'admin/quiz/create', 'GET', '::1', '[]', '2017-10-10 07:33:47', '2017-10-10 07:33:47'),
(199, 1, 'admin/quiz', 'POST', '::1', '{"title":"aaa","_token":"v21arxXW1TP2429m7ebkuavF0G0qersaW51xq3yz"}', '2017-10-10 07:33:53', '2017-10-10 07:33:53'),
(200, 1, 'admin/quiz/create', 'GET', '::1', '[]', '2017-10-10 07:33:54', '2017-10-10 07:33:54'),
(201, 1, 'admin/quiz/create', 'GET', '::1', '[]', '2017-10-10 07:35:45', '2017-10-10 07:35:45'),
(202, 1, 'admin/quiz/create', 'GET', '::1', '[]', '2017-10-10 07:36:30', '2017-10-10 07:36:30'),
(203, 1, 'admin/quiz/create', 'GET', '::1', '[]', '2017-10-10 07:37:40', '2017-10-10 07:37:40'),
(204, 1, 'admin/quiz/create', 'GET', '::1', '[]', '2017-10-10 07:39:43', '2017-10-10 07:39:43'),
(205, 1, 'admin/quiz', 'POST', '::1', '{"title":"\\u30ab\\u30eb\\u30dd\\u30af\\u30e9\\u30b7\\u30c3\\u30af\\u98a8\\u590f\\u796d\\u308a","answers_id":"31","_token":"v21arxXW1TP2429m7ebkuavF0G0qersaW51xq3yz"}', '2017-10-10 07:39:53', '2017-10-10 07:39:53'),
(206, 1, 'admin/quiz/create', 'GET', '::1', '[]', '2017-10-10 07:39:54', '2017-10-10 07:39:54'),
(207, 1, 'admin/quiz/create', 'GET', '::1', '[]', '2017-10-10 07:45:31', '2017-10-10 07:45:31'),
(208, 1, 'admin/quiz/create', 'GET', '::1', '[]', '2017-10-10 07:45:53', '2017-10-10 07:45:53'),
(209, 1, 'admin/quiz', 'POST', '::1', '{"title":"a","answers_id":"31","user_id":"1","_token":"v21arxXW1TP2429m7ebkuavF0G0qersaW51xq3yz"}', '2017-10-10 07:46:36', '2017-10-10 07:46:36'),
(210, 1, 'admin/quiz/create', 'GET', '::1', '[]', '2017-10-10 07:46:37', '2017-10-10 07:46:37'),
(211, 1, 'admin/quiz/create', 'GET', '::1', '[]', '2017-10-10 07:50:42', '2017-10-10 07:50:42'),
(212, 1, 'admin/quiz/create', 'GET', '::1', '[]', '2017-10-10 07:50:59', '2017-10-10 07:50:59'),
(213, 1, 'admin/quiz/create', 'GET', '::1', '[]', '2017-10-10 07:51:28', '2017-10-10 07:51:28'),
(214, 1, 'admin/quiz/create', 'GET', '::1', '[]', '2017-10-10 07:53:59', '2017-10-10 07:53:59'),
(215, 1, 'admin/quiz/create', 'GET', '::1', '[]', '2017-10-10 07:54:23', '2017-10-10 07:54:23'),
(216, 1, 'admin/quiz/create', 'GET', '::1', '[]', '2017-10-10 07:59:03', '2017-10-10 07:59:03'),
(217, 1, 'admin/quiz/create', 'GET', '::1', '[]', '2017-10-10 07:59:26', '2017-10-10 07:59:26'),
(218, 1, 'admin/quiz/create', 'GET', '::1', '[]', '2017-10-10 08:02:22', '2017-10-10 08:02:22'),
(219, 1, 'admin/quiz/create', 'GET', '::1', '[]', '2017-10-10 08:02:56', '2017-10-10 08:02:56'),
(220, 1, 'admin/quiz/create', 'GET', '::1', '[]', '2017-10-10 08:04:23', '2017-10-10 08:04:23'),
(221, 1, 'admin/quiz/create', 'GET', '::1', '[]', '2017-10-10 08:05:51', '2017-10-10 08:05:51'),
(222, 1, 'admin/quiz/create', 'GET', '::1', '[]', '2017-10-10 08:06:36', '2017-10-10 08:06:36'),
(223, 1, 'admin/quiz/create', 'GET', '::1', '[]', '2017-10-10 08:06:48', '2017-10-10 08:06:48'),
(224, 1, 'admin/quiz/create', 'GET', '::1', '[]', '2017-10-10 08:08:28', '2017-10-10 08:08:28'),
(225, 1, 'admin/quiz/create', 'GET', '::1', '[]', '2017-10-10 08:08:37', '2017-10-10 08:08:37'),
(226, 1, 'admin/quiz/create', 'GET', '::1', '[]', '2017-10-10 08:11:49', '2017-10-10 08:11:49'),
(227, 1, 'admin/quiz/create', 'GET', '::1', '[]', '2017-10-10 08:47:17', '2017-10-10 08:47:17'),
(228, 1, 'admin/quiz/create', 'GET', '::1', '[]', '2017-10-10 08:51:06', '2017-10-10 08:51:06'),
(229, 1, 'admin/quiz/create', 'GET', '::1', '[]', '2017-10-10 08:51:25', '2017-10-10 08:51:25'),
(230, 1, 'admin/quiz/create', 'GET', '::1', '[]', '2017-10-10 09:07:31', '2017-10-10 09:07:31'),
(231, 1, 'admin/quiz/create', 'GET', '::1', '[]', '2017-10-10 09:08:15', '2017-10-10 09:08:15'),
(232, 1, 'admin/quiz/create', 'GET', '::1', '[]', '2017-10-10 09:08:22', '2017-10-10 09:08:22'),
(233, 1, 'admin/quiz/create', 'GET', '::1', '[]', '2017-10-10 09:20:44', '2017-10-10 09:20:44'),
(234, 1, 'admin/quiz/create', 'GET', '::1', '[]', '2017-10-10 09:21:09', '2017-10-10 09:21:09'),
(235, 1, 'admin/quiz/create', 'GET', '::1', '[]', '2017-10-10 09:21:15', '2017-10-10 09:21:15'),
(236, 1, 'admin/quiz/create', 'GET', '::1', '[]', '2017-10-10 09:22:53', '2017-10-10 09:22:53'),
(237, 1, 'admin/quiz/create', 'GET', '::1', '[]', '2017-10-10 09:23:06', '2017-10-10 09:23:06'),
(238, 1, 'admin/quiz/create', 'GET', '::1', '[]', '2017-10-10 09:24:43', '2017-10-10 09:24:43'),
(239, 1, 'admin/quiz/create', 'GET', '::1', '[]', '2017-10-10 09:24:54', '2017-10-10 09:24:54'),
(240, 1, 'admin/quiz/create', 'GET', '::1', '[]', '2017-10-10 09:25:08', '2017-10-10 09:25:08'),
(241, 1, 'admin/quiz/create', 'GET', '::1', '[]', '2017-10-10 09:25:38', '2017-10-10 09:25:38'),
(242, 1, 'admin/quiz/create', 'GET', '::1', '[]', '2017-10-10 09:26:11', '2017-10-10 09:26:11'),
(243, 1, 'admin/quiz/create', 'GET', '::1', '[]', '2017-10-10 09:26:44', '2017-10-10 09:26:44'),
(244, 1, 'admin/quiz/create', 'GET', '::1', '[]', '2017-10-10 09:27:02', '2017-10-10 09:27:02'),
(245, 1, 'admin/quiz/create', 'GET', '::1', '[]', '2017-10-10 09:33:53', '2017-10-10 09:33:53'),
(246, 1, 'admin/quiz/create', 'GET', '::1', '[]', '2017-10-10 09:34:17', '2017-10-10 09:34:17'),
(247, 1, 'admin/quiz', 'POST', '::1', '{"title":"a","answer_id":"30","categories_id":"1","_token":"196MDrO1lfVwQYiSnUCodnqg4QjUTMSdvXzxepic"}', '2017-10-10 09:34:42', '2017-10-10 09:34:42'),
(248, 1, 'admin/quiz/create', 'GET', '::1', '[]', '2017-10-10 09:34:42', '2017-10-10 09:34:42'),
(249, 1, 'admin/quiz', 'POST', '::1', '{"title":"a","answer_id":"30","categories_id":"1","_token":"196MDrO1lfVwQYiSnUCodnqg4QjUTMSdvXzxepic"}', '2017-10-10 09:35:02', '2017-10-10 09:35:02'),
(250, 1, 'admin/quiz/create', 'GET', '::1', '[]', '2017-10-10 09:35:03', '2017-10-10 09:35:03'),
(251, 1, 'admin/quiz', 'POST', '::1', '{"title":"a","answers_id":"30","categories_id":"1","_token":"196MDrO1lfVwQYiSnUCodnqg4QjUTMSdvXzxepic"}', '2017-10-10 09:35:28', '2017-10-10 09:35:28'),
(252, 1, 'admin/quiz', 'GET', '::1', '[]', '2017-10-10 09:35:28', '2017-10-10 09:35:28'),
(253, 1, 'admin/quiz', 'GET', '::1', '{"page":"2","_pjax":"#pjax-container"}', '2017-10-10 09:35:33', '2017-10-10 09:35:33'),
(254, 1, 'admin/quiz/31/edit', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-10 09:35:39', '2017-10-10 09:35:39'),
(255, 1, 'admin/quiz', 'GET', '::1', '{"page":"2","_pjax":"#pjax-container"}', '2017-10-10 09:35:50', '2017-10-10 09:35:50'),
(256, 1, 'admin/quiz/31/edit', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-10 09:35:56', '2017-10-10 09:35:56'),
(257, 1, 'admin/quiz', 'GET', '::1', '{"page":"2","_pjax":"#pjax-container"}', '2017-10-10 09:36:50', '2017-10-10 09:36:50'),
(258, 1, 'admin/quiz/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-10 09:37:03', '2017-10-10 09:37:03'),
(259, 1, 'admin/quiz', 'GET', '::1', '{"page":"2","_pjax":"#pjax-container"}', '2017-10-10 09:37:07', '2017-10-10 09:37:07'),
(260, 1, 'admin/quiz/31/edit', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-10 09:43:49', '2017-10-10 09:43:49'),
(261, 1, 'admin/quiz/31/edit', 'GET', '::1', '[]', '2017-10-10 09:44:47', '2017-10-10 09:44:47'),
(262, 1, 'admin/quiz/31', 'PUT', '::1', '{"title":"a","answers_id":"30","categories_id":"5","_token":"196MDrO1lfVwQYiSnUCodnqg4QjUTMSdvXzxepic","_method":"PUT"}', '2017-10-10 09:45:26', '2017-10-10 09:45:26'),
(263, 1, 'admin/quiz', 'GET', '::1', '[]', '2017-10-10 09:45:26', '2017-10-10 09:45:26'),
(264, 1, 'admin/quiz', 'GET', '::1', '{"page":"2","_pjax":"#pjax-container"}', '2017-10-10 09:45:30', '2017-10-10 09:45:30'),
(265, 1, 'admin/quiz/31/edit', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-10 09:45:34', '2017-10-10 09:45:34'),
(266, 1, 'admin/quiz/31/edit', 'GET', '::1', '[]', '2017-10-10 09:46:01', '2017-10-10 09:46:01'),
(267, 1, 'admin/quiz', 'GET', '::1', '{"page":"2","_pjax":"#pjax-container"}', '2017-10-10 09:46:22', '2017-10-10 09:46:22'),
(268, 1, 'admin/quiz/31/edit', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-10 09:46:27', '2017-10-10 09:46:27'),
(269, 1, 'admin/quiz', 'GET', '::1', '{"page":"2","_pjax":"#pjax-container"}', '2017-10-10 09:46:33', '2017-10-10 09:46:33'),
(270, 1, 'admin/quiz/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-10 09:47:01', '2017-10-10 09:47:01'),
(271, 1, 'admin', 'GET', '::1', '[]', '2017-10-10 10:35:42', '2017-10-10 10:35:42'),
(272, 1, 'admin/auth/users', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-10 10:35:56', '2017-10-10 10:35:56'),
(273, 1, 'admin/quiz', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-10 10:36:00', '2017-10-10 10:36:00'),
(274, 1, 'admin/quiz', 'GET', '::1', '[]', '2017-10-10 10:47:27', '2017-10-10 10:47:27'),
(275, 1, 'admin/quiz/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-10 10:47:33', '2017-10-10 10:47:33'),
(276, 1, 'admin/quiz', 'GET', '::1', '[]', '2017-10-10 10:47:33', '2017-10-10 10:47:33'),
(277, 1, 'admin/quiz', 'GET', '::1', '[]', '2017-10-10 10:48:00', '2017-10-10 10:48:00'),
(278, 1, 'admin/quiz/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-10 10:48:02', '2017-10-10 10:48:02'),
(279, 1, 'admin/quiz', 'GET', '::1', '[]', '2017-10-10 10:48:03', '2017-10-10 10:48:03'),
(280, 1, 'admin/quiz/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-10 10:48:21', '2017-10-10 10:48:21'),
(281, 1, 'admin/quiz', 'GET', '::1', '[]', '2017-10-10 10:48:22', '2017-10-10 10:48:22'),
(282, 1, 'admin/quiz', 'GET', '::1', '[]', '2017-10-10 10:48:40', '2017-10-10 10:48:40'),
(283, 1, 'admin/quiz/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-10 10:48:43', '2017-10-10 10:48:43'),
(284, 1, 'admin/quiz/create', 'GET', '::1', '[]', '2017-10-10 10:48:43', '2017-10-10 10:48:43'),
(285, 1, 'admin/quiz/create', 'GET', '::1', '[]', '2017-10-10 10:48:59', '2017-10-10 10:48:59'),
(286, 1, 'admin/quiz/create', 'GET', '::1', '[]', '2017-10-10 10:49:17', '2017-10-10 10:49:17'),
(287, 1, 'admin/quiz/create', 'GET', '::1', '[]', '2017-10-10 10:50:35', '2017-10-10 10:50:35'),
(288, 1, 'admin/quiz/create', 'GET', '::1', '[]', '2017-10-10 10:50:57', '2017-10-10 10:50:57'),
(289, 1, 'admin/quiz/create', 'GET', '::1', '[]', '2017-10-10 10:51:32', '2017-10-10 10:51:32'),
(290, 1, 'admin/quiz/create', 'GET', '::1', '[]', '2017-10-10 10:53:18', '2017-10-10 10:53:18'),
(291, 1, 'admin/quiz/create', 'GET', '::1', '[]', '2017-10-10 10:53:51', '2017-10-10 10:53:51'),
(292, 1, 'admin/quiz/create', 'GET', '::1', '[]', '2017-10-10 10:54:14', '2017-10-10 10:54:14'),
(293, 1, 'admin/quiz/create', 'GET', '::1', '[]', '2017-10-10 10:54:26', '2017-10-10 10:54:26'),
(294, 1, 'admin/quiz/create', 'GET', '::1', '[]', '2017-10-10 10:54:46', '2017-10-10 10:54:46'),
(295, 1, 'admin/quiz/create', 'GET', '::1', '[]', '2017-10-10 10:55:02', '2017-10-10 10:55:02'),
(296, 1, 'admin/quiz/create', 'GET', '::1', '[]', '2017-10-10 10:55:51', '2017-10-10 10:55:51'),
(297, 1, 'admin/quiz/create', 'GET', '::1', '[]', '2017-10-10 10:56:29', '2017-10-10 10:56:29'),
(298, 1, 'admin/quiz/create', 'GET', '::1', '[]', '2017-10-10 10:57:00', '2017-10-10 10:57:00'),
(299, 1, 'admin/quiz/create', 'GET', '::1', '[]', '2017-10-10 10:58:06', '2017-10-10 10:58:06'),
(300, 1, 'admin/quiz/create', 'GET', '::1', '[]', '2017-10-10 10:58:48', '2017-10-10 10:58:48'),
(301, 1, 'admin/quiz/create', 'GET', '::1', '[]', '2017-10-10 10:59:08', '2017-10-10 10:59:08'),
(302, 1, 'admin/quiz/create', 'GET', '::1', '[]', '2017-10-10 10:59:54', '2017-10-10 10:59:54'),
(303, 1, 'admin/quiz/create', 'GET', '::1', '[]', '2017-10-10 11:01:48', '2017-10-10 11:01:48'),
(304, 1, 'admin/quiz/create', 'GET', '::1', '[]', '2017-10-10 11:02:01', '2017-10-10 11:02:01'),
(305, 1, 'admin/quiz/create', 'GET', '::1', '[]', '2017-10-10 11:03:19', '2017-10-10 11:03:19'),
(306, 1, 'admin/quiz/create', 'GET', '::1', '[]', '2017-10-10 11:04:02', '2017-10-10 11:04:02'),
(307, 1, 'admin/quiz/create', 'GET', '::1', '[]', '2017-10-10 11:05:19', '2017-10-10 11:05:19'),
(308, 1, 'admin/quiz/create', 'GET', '::1', '[]', '2017-10-10 11:05:37', '2017-10-10 11:05:37'),
(309, 1, 'admin/quiz/create', 'GET', '::1', '[]', '2017-10-10 11:06:13', '2017-10-10 11:06:13'),
(310, 1, 'admin/quiz/create', 'GET', '::1', '[]', '2017-10-10 11:07:18', '2017-10-10 11:07:18'),
(311, 1, 'admin/quiz/create', 'GET', '::1', '[]', '2017-10-10 11:07:33', '2017-10-10 11:07:33'),
(312, 1, 'admin/quiz/create', 'GET', '::1', '[]', '2017-10-10 11:07:57', '2017-10-10 11:07:57'),
(313, 1, 'admin/quiz/create', 'GET', '::1', '[]', '2017-10-10 11:08:18', '2017-10-10 11:08:18'),
(314, 1, 'admin/quiz/create', 'GET', '::1', '[]', '2017-10-10 11:09:18', '2017-10-10 11:09:18'),
(315, 1, 'admin/quiz/create', 'GET', '::1', '[]', '2017-10-10 11:09:34', '2017-10-10 11:09:34'),
(316, 1, 'admin/quiz/create', 'GET', '::1', '[]', '2017-10-10 11:09:52', '2017-10-10 11:09:52'),
(317, 1, 'admin/quiz/create', 'GET', '::1', '[]', '2017-10-10 11:10:07', '2017-10-10 11:10:07'),
(318, 1, 'admin/quiz/create', 'GET', '::1', '[]', '2017-10-10 11:10:52', '2017-10-10 11:10:52'),
(319, 1, 'admin/quiz/create', 'GET', '::1', '[]', '2017-10-10 11:11:21', '2017-10-10 11:11:21'),
(320, 1, 'admin/quiz', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-10 11:11:29', '2017-10-10 11:11:29'),
(321, 1, 'admin/quiz', 'GET', '::1', '{"_pjax":"#pjax-container","page":"2"}', '2017-10-10 11:11:32', '2017-10-10 11:11:32'),
(322, 1, 'admin/quiz/31/edit', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-10 11:11:36', '2017-10-10 11:11:36'),
(323, 1, 'admin/quiz/31', 'PUT', '::1', '{"title":"a","answers_id":"31","categories_id":"5","_token":"196MDrO1lfVwQYiSnUCodnqg4QjUTMSdvXzxepic","_method":"PUT","_previous_":"http:\\/\\/localhost\\/admin\\/quiz?&page=2"}', '2017-10-10 11:22:00', '2017-10-10 11:22:00'),
(324, 1, 'admin/quiz', 'GET', '::1', '{"page":"2"}', '2017-10-10 11:22:00', '2017-10-10 11:22:00'),
(325, 1, 'admin/quiz/30/edit', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-10 11:22:06', '2017-10-10 11:22:06'),
(326, 1, 'admin/quiz', 'GET', '::1', '{"page":"2","_pjax":"#pjax-container"}', '2017-10-10 11:22:11', '2017-10-10 11:22:11'),
(327, 1, 'admin', 'GET', '::1', '[]', '2017-10-11 00:30:33', '2017-10-11 00:30:33'),
(328, 1, 'admin/quiz', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-11 00:30:51', '2017-10-11 00:30:51'),
(329, 1, 'admin/quiz', 'GET', '::1', '{"_pjax":"#pjax-container","per_page":"100"}', '2017-10-11 00:31:02', '2017-10-11 00:31:02'),
(330, 1, 'admin/quiz/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-11 00:31:16', '2017-10-11 00:31:16'),
(331, 1, 'admin/quiz', 'GET', '::1', '{"per_page":"100","_pjax":"#pjax-container"}', '2017-10-11 00:31:22', '2017-10-11 00:31:22'),
(332, 1, 'admin/quiz', 'GET', '::1', '{"per_page":"100"}', '2017-10-11 00:36:50', '2017-10-11 00:36:50'),
(333, 1, 'admin/quiz/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-11 00:36:55', '2017-10-11 00:36:55'),
(334, 1, 'admin/quiz', 'POST', '::1', '{"title":null,"answers_id":"31","categories_id":"1","_token":"X5vzFyRwn4Ifkm7GhDZAMAxdtZYQqRGyMGlNZT8e","_previous_":"http:\\/\\/localhost\\/admin\\/quiz?&per_page=100"}', '2017-10-11 00:37:01', '2017-10-11 00:37:01'),
(335, 1, 'admin/quiz/create', 'GET', '::1', '[]', '2017-10-11 00:37:01', '2017-10-11 00:37:01'),
(336, 1, 'admin/quiz', 'POST', '::1', '{"title":"aaa","answers_id":"31","categories_id":"1","_token":"X5vzFyRwn4Ifkm7GhDZAMAxdtZYQqRGyMGlNZT8e"}', '2017-10-11 00:37:09', '2017-10-11 00:37:09'),
(337, 1, 'admin/quiz', 'GET', '::1', '[]', '2017-10-11 00:37:09', '2017-10-11 00:37:09'),
(338, 1, 'admin/quiz', 'GET', '::1', '{"page":"2","_pjax":"#pjax-container"}', '2017-10-11 00:37:18', '2017-10-11 00:37:18'),
(339, 1, 'admin/quiz/31/edit', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-11 00:38:02', '2017-10-11 00:38:02'),
(340, 1, 'admin/quiz/31', 'PUT', '::1', '{"title":"a","answers_id":"31","categories_id":"5","answer":{"answer_1":"aaa"},"_token":"X5vzFyRwn4Ifkm7GhDZAMAxdtZYQqRGyMGlNZT8e","_method":"PUT","_previous_":"http:\\/\\/localhost\\/admin\\/quiz?page=2"}', '2017-10-11 00:38:07', '2017-10-11 00:38:07'),
(341, 1, 'admin/quiz/31/edit', 'GET', '::1', '[]', '2017-10-11 00:38:08', '2017-10-11 00:38:08'),
(342, 1, 'admin/quiz/31/edit', 'GET', '::1', '[]', '2017-10-11 00:38:35', '2017-10-11 00:38:35'),
(343, 1, 'admin/quiz/31/edit', 'GET', '::1', '[]', '2017-10-11 00:44:12', '2017-10-11 00:44:12'),
(344, 1, 'admin/quiz/31/edit', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-11 00:44:21', '2017-10-11 00:44:21'),
(345, 1, 'admin/quiz/31', 'PUT', '::1', '{"title":"a","answers_id":"31","categories_id":"5","answer":{"answer_1":"aa","answer_2":null,"answer_3":null,"answer_4":null,"correct_answer_no":"1"},"_token":"X5vzFyRwn4Ifkm7GhDZAMAxdtZYQqRGyMGlNZT8e","_method":"PUT"}', '2017-10-11 00:44:31', '2017-10-11 00:44:31'),
(346, 1, 'admin/quiz/31/edit', 'GET', '::1', '[]', '2017-10-11 00:44:32', '2017-10-11 00:44:32'),
(347, 1, 'admin/quiz/31/edit', 'GET', '::1', '[]', '2017-10-11 00:45:43', '2017-10-11 00:45:43'),
(348, 1, 'admin/quiz/31/edit', 'GET', '::1', '[]', '2017-10-11 00:45:53', '2017-10-11 00:45:53'),
(349, 1, 'admin/quiz/31/edit', 'GET', '::1', '[]', '2017-10-11 00:46:01', '2017-10-11 00:46:01'),
(350, 1, 'admin/quiz/31/edit', 'GET', '::1', '[]', '2017-10-11 00:46:24', '2017-10-11 00:46:24'),
(351, 1, 'admin/quiz/31/edit', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-11 00:56:19', '2017-10-11 00:56:19'),
(352, 1, 'admin/quiz', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-11 00:56:24', '2017-10-11 00:56:24'),
(353, 1, 'admin/quiz/1/edit', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-11 00:57:14', '2017-10-11 00:57:14'),
(354, 1, 'admin/quiz', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-11 00:57:26', '2017-10-11 00:57:26'),
(355, 1, 'admin/quiz/1/edit', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-11 00:57:28', '2017-10-11 00:57:28'),
(356, 1, 'admin/quiz', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-11 00:57:33', '2017-10-11 00:57:33'),
(357, 1, 'admin/quiz', 'GET', '::1', '[]', '2017-10-11 00:58:26', '2017-10-11 00:58:26'),
(358, 1, 'admin/quiz/1/edit', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-11 00:58:34', '2017-10-11 00:58:34'),
(359, 1, 'admin/quiz/1/edit', 'GET', '::1', '[]', '2017-10-11 00:58:50', '2017-10-11 00:58:50'),
(360, 1, 'admin/quiz/1/edit', 'GET', '::1', '[]', '2017-10-11 00:59:13', '2017-10-11 00:59:13'),
(361, 1, 'admin/quiz/1/edit', 'GET', '::1', '[]', '2017-10-11 00:59:41', '2017-10-11 00:59:41'),
(362, 1, 'admin/quiz/1/edit', 'GET', '::1', '[]', '2017-10-11 01:00:04', '2017-10-11 01:00:04'),
(363, 1, 'admin/quiz/1/edit', 'GET', '::1', '[]', '2017-10-11 01:24:24', '2017-10-11 01:24:24'),
(364, 1, 'admin/quiz/1/edit', 'GET', '::1', '[]', '2017-10-11 01:24:59', '2017-10-11 01:24:59'),
(365, 1, 'admin/quiz/1/edit', 'GET', '::1', '[]', '2017-10-11 01:26:04', '2017-10-11 01:26:04'),
(366, 1, 'admin/quiz/1/edit', 'GET', '::1', '[]', '2017-10-11 01:27:13', '2017-10-11 01:27:13'),
(367, 1, 'admin/quiz/1/edit', 'GET', '::1', '[]', '2017-10-11 01:27:18', '2017-10-11 01:27:18'),
(368, 1, 'admin/quiz/1/edit', 'GET', '::1', '[]', '2017-10-11 01:27:27', '2017-10-11 01:27:27'),
(369, 1, 'admin/quiz/1', 'PUT', '::1', '{"title":"\\u30d1\\u30bd\\u30b3\\u30f3(PC)\\u306f\\u4f55\\u306e\\u7565\\u304b\\u3002","answers_id":"1","categories_id":"5","answer":{"answer_1":"Personal Computer","answer_2":"Pocket Computer","answer_3":"Programmable Controller","answer_4":"Programmable Counter","correct_answer_no":"1","commentary":"PC\\u306fPersonal Computer(\\u30d1\\u30fc\\u30bd\\u30ca\\u30eb\\u30b3\\u30f3\\u30d4\\u30e5\\u30fc\\u30bf)\\u306e\\u7565\\u79f0\\u3067\\u3042\\u308b\\u3002\\r\\n\\r\\nPocket Computer(\\u30dd\\u30b1\\u30c3\\u30c8\\u30b3\\u30f3\\u30d4\\u30e5\\u30fc\\u30bf)\\u306f1980\\u5e74\\u4ee3\\u306b\\u5e83\\u304f\\u4f7f\\u308f\\u308c\\u305f\\u643a\\u5e2f\\u7528\\u306e\\u5c0f\\u578b\\u30b3\\u30f3\\u30d4\\u30e5\\u30fc\\u30bf\\u3067\\u3042\\u308b\\u3002\\r\\n\\r\\nProgrammable Controller(\\u30d7\\u30ed\\u30b0\\u30e9\\u30de\\u30d6\\u30eb\\u30fb\\u30b3\\u30f3\\u30c8\\u30ed\\u30fc\\u30e9)\\u306f\\u30ea\\u30ec\\u30fc\\u56de\\u8def\\u306e\\u4ee3\\u66ff\\u88c5\\u7f6e\\u3068\\u3057\\u3066\\u958b\\u767a\\u3055\\u308c\\u305f\\u5236\\u5fa1\\u88c5\\u7f6e\\u3067\\u3042\\u308b\\u3002\\r\\n\\r\\nProgrammable Counter(\\u30d7\\u30ed\\u30b0\\u30e9\\u30e0\\u30ab\\u30a6\\u30f3\\u30bf)\\u306f\\u30a2\\u30c9\\u30ec\\u30b9\\u30ec\\u30b8\\u30b9\\u30bf\\u306e\\u4e00\\u7a2e\\u3067\\u3001\\u5b9f\\u884c\\u3059\\u308b\\u547d\\u4ee4\\u306e\\u30a2\\u30c9\\u30ec\\u30b9\\u3092\\u6307\\u3057\\u793a\\u3059\\u30ec\\u30b8\\u30b9\\u30bf\\u3002\\u547d\\u4ee4\\u306e\\u8aad\\u307f\\u8fbc\\u307f\\u3092\\u884c\\u306a\\u3046\\u969b\\u306b\\u306f\\u305d\\u306e\\u5185\\u5bb9\\u304c\\u30a2\\u30c9\\u30ec\\u30b9\\u30d0\\u30b9\\u4e0a\\u306b\\u51fa\\u529b\\u3055\\u308c\\u3001\\u307e\\u305f\\u547d\\u4ee4\\u3092\\u8aad\\u307f\\u8fbc\\u3080\\u5ea6\\u306b\\u8aad\\u307f\\u53d6\\u3063\\u305f\\u547d\\u4ee4\\u306e\\u5206\\u3060\\u3051\\u5024\\u304c\\u5897\\u52a0\\u3059\\u308b\\u3088\\u3046\\u306b\\u306a\\u3063\\u3066\\u3044\\u308b\\u3002"},"_token":"X5vzFyRwn4Ifkm7GhDZAMAxdtZYQqRGyMGlNZT8e","_method":"PUT"}', '2017-10-11 01:27:58', '2017-10-11 01:27:58'),
(370, 1, 'admin/quiz', 'GET', '::1', '[]', '2017-10-11 01:27:58', '2017-10-11 01:27:58'),
(371, 1, 'admin/quiz/1/edit', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-11 01:28:57', '2017-10-11 01:28:57'),
(372, 1, 'admin/quiz/1', 'PUT', '::1', '{"title":"\\u30d1\\u30bd\\u30b3\\u30f3(PC)\\u306f\\u4f55\\u306e\\u7565\\u304b\\u3002","answers_id":"1","categories_id":"5","answer":{"answer_1":"Personal Computer","answer_2":"Pocket Computer","answer_3":"Programmable Controller","answer_4":"Programmable Counter","correct_answer_no":"1","commentary":"PC\\u306fPersonal Computer(\\u30d1\\u30fc\\u30bd\\u30ca\\u30eb\\u30b3\\u30f3\\u30d4\\u30e5\\u30fc\\u30bf)\\u306e\\u7565\\u79f0\\u3067\\u3042\\u308b\\u3002\\r\\n\\r\\nPocket Computer(\\u30dd\\u30b1\\u30c3\\u30c8\\u30b3\\u30f3\\u30d4\\u30e5\\u30fc\\u30bf)\\u306f1980\\u5e74\\u4ee3\\u306b\\u5e83\\u304f\\u4f7f\\u308f\\u308c\\u305f\\u643a\\u5e2f\\u7528\\u306e\\u5c0f\\u578b\\u30b3\\u30f3\\u30d4\\u30e5\\u30fc\\u30bf\\u3067\\u3042\\u308b\\u3002\\r\\n\\r\\nProgrammable Controller(\\u30d7\\u30ed\\u30b0\\u30e9\\u30de\\u30d6\\u30eb\\u30fb\\u30b3\\u30f3\\u30c8\\u30ed\\u30fc\\u30e9)\\u306f\\u30ea\\u30ec\\u30fc\\u56de\\u8def\\u306e\\u4ee3\\u66ff\\u88c5\\u7f6e\\u3068\\u3057\\u3066\\u958b\\u767a\\u3055\\u308c\\u305f\\u5236\\u5fa1\\u88c5\\u7f6e\\u3067\\u3042\\u308b\\u3002\\r\\n\\r\\nProgrammable Counter(\\u30d7\\u30ed\\u30b0\\u30e9\\u30e0\\u30ab\\u30a6\\u30f3\\u30bf)\\u306f\\u30a2\\u30c9\\u30ec\\u30b9\\u30ec\\u30b8\\u30b9\\u30bf\\u306e\\u4e00\\u7a2e\\u3067\\u3001\\u5b9f\\u884c\\u3059\\u308b\\u547d\\u4ee4\\u306e\\u30a2\\u30c9\\u30ec\\u30b9\\u3092\\u6307\\u3057\\u793a\\u3059\\u30ec\\u30b8\\u30b9\\u30bf\\u3002\\u547d\\u4ee4\\u306e\\u8aad\\u307f\\u8fbc\\u307f\\u3092\\u884c\\u306a\\u3046\\u969b\\u306b\\u306f\\u305d\\u306e\\u5185\\u5bb9\\u304c\\u30a2\\u30c9\\u30ec\\u30b9\\u30d0\\u30b9\\u4e0a\\u306b\\u51fa\\u529b\\u3055\\u308c\\u3001\\u307e\\u305f\\u547d\\u4ee4\\u3092\\u8aad\\u307f\\u8fbc\\u3080\\u5ea6\\u306b\\u8aad\\u307f\\u53d6\\u3063\\u305f\\u547d\\u4ee4\\u306e\\u5206\\u3060\\u3051\\u5024\\u304c\\u5897\\u52a0\\u3059\\u308b\\u3088\\u3046\\u306b\\u306a\\u3063\\u3066\\u3044\\u308b\\u3002"},"_token":"X5vzFyRwn4Ifkm7GhDZAMAxdtZYQqRGyMGlNZT8e","_method":"PUT","_previous_":"http:\\/\\/localhost\\/admin\\/quiz"}', '2017-10-11 01:29:58', '2017-10-11 01:29:58'),
(373, 1, 'admin/quiz', 'GET', '::1', '[]', '2017-10-11 01:29:58', '2017-10-11 01:29:58'),
(374, 1, 'admin/quiz/1/edit', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-11 01:30:08', '2017-10-11 01:30:08'),
(375, 1, 'admin/quiz', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-11 01:30:13', '2017-10-11 01:30:13'),
(376, 1, 'admin/quiz', 'GET', '::1', '[]', '2017-10-11 01:31:12', '2017-10-11 01:31:12'),
(377, 1, 'admin/quiz/1/edit', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-11 01:31:14', '2017-10-11 01:31:14'),
(378, 1, 'admin/quiz/1', 'PUT', '::1', '{"title":"\\u30d1\\u30bd\\u30b3\\u30f3(PC)\\u306f\\u4f55\\u306e\\u7565\\u304b\\u3002","answers_id":"1","categories_id":"5","answer":{"answer_1":"Personal Computer","answer_2":"Pocket Computer","answer_3":"Programmable Controller","answer_4":"Programmable Counter","correct_answer_no":"1","commentary":"PC\\u306fPersonal Computer(\\u30d1\\u30fc\\u30bd\\u30ca\\u30eb\\u30b3\\u30f3\\u30d4\\u30e5\\u30fc\\u30bf)\\u306e\\u7565\\u79f0\\u3067\\u3042\\u308b\\u3002\\r\\n\\r\\nPocket Computer(\\u30dd\\u30b1\\u30c3\\u30c8\\u30b3\\u30f3\\u30d4\\u30e5\\u30fc\\u30bf)\\u306f1980\\u5e74\\u4ee3\\u306b\\u5e83\\u304f\\u4f7f\\u308f\\u308c\\u305f\\u643a\\u5e2f\\u7528\\u306e\\u5c0f\\u578b\\u30b3\\u30f3\\u30d4\\u30e5\\u30fc\\u30bf\\u3067\\u3042\\u308b\\u3002\\r\\n\\r\\nProgrammable Controller(\\u30d7\\u30ed\\u30b0\\u30e9\\u30de\\u30d6\\u30eb\\u30fb\\u30b3\\u30f3\\u30c8\\u30ed\\u30fc\\u30e9)\\u306f\\u30ea\\u30ec\\u30fc\\u56de\\u8def\\u306e\\u4ee3\\u66ff\\u88c5\\u7f6e\\u3068\\u3057\\u3066\\u958b\\u767a\\u3055\\u308c\\u305f\\u5236\\u5fa1\\u88c5\\u7f6e\\u3067\\u3042\\u308b\\u3002\\r\\n\\r\\nProgrammable Counter(\\u30d7\\u30ed\\u30b0\\u30e9\\u30e0\\u30ab\\u30a6\\u30f3\\u30bf)\\u306f\\u30a2\\u30c9\\u30ec\\u30b9\\u30ec\\u30b8\\u30b9\\u30bf\\u306e\\u4e00\\u7a2e\\u3067\\u3001\\u5b9f\\u884c\\u3059\\u308b\\u547d\\u4ee4\\u306e\\u30a2\\u30c9\\u30ec\\u30b9\\u3092\\u6307\\u3057\\u793a\\u3059\\u30ec\\u30b8\\u30b9\\u30bf\\u3002\\u547d\\u4ee4\\u306e\\u8aad\\u307f\\u8fbc\\u307f\\u3092\\u884c\\u306a\\u3046\\u969b\\u306b\\u306f\\u305d\\u306e\\u5185\\u5bb9\\u304c\\u30a2\\u30c9\\u30ec\\u30b9\\u30d0\\u30b9\\u4e0a\\u306b\\u51fa\\u529b\\u3055\\u308c\\u3001\\u307e\\u305f\\u547d\\u4ee4\\u3092\\u8aad\\u307f\\u8fbc\\u3080\\u5ea6\\u306b\\u8aad\\u307f\\u53d6\\u3063\\u305f\\u547d\\u4ee4\\u306e\\u5206\\u3060\\u3051\\u5024\\u304c\\u5897\\u52a0\\u3059\\u308b\\u3088\\u3046\\u306b\\u306a\\u3063\\u3066\\u3044\\u308b\\u3002"},"_token":"X5vzFyRwn4Ifkm7GhDZAMAxdtZYQqRGyMGlNZT8e","_method":"PUT","_previous_":"http:\\/\\/localhost\\/admin\\/quiz"}', '2017-10-11 01:31:24', '2017-10-11 01:31:24');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(379, 1, 'admin/quiz', 'GET', '::1', '[]', '2017-10-11 01:31:25', '2017-10-11 01:31:25'),
(380, 1, 'admin/quiz/1/edit', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-11 01:35:08', '2017-10-11 01:35:08'),
(381, 1, 'admin/quiz/1', 'PUT', '::1', '{"title":"\\u30d1\\u30bd\\u30b3\\u30f3(PC)\\u306f\\u4f55\\u306e\\u7565\\u304b\\u3002","answers_id":"1","categories_id":"5","answer":{"answer_1":"Personal Computer","answer_2":"Pocket Computer","answer_3":"Programmable Controller","answer_4":"Programmable Counter","correct_answer_no":"1","commentary":"PC\\u306fPersonal Computer(\\u30d1\\u30fc\\u30bd\\u30ca\\u30eb\\u30b3\\u30f3\\u30d4\\u30e5\\u30fc\\u30bf)\\u306e\\u7565\\u79f0\\u3067\\u3042\\u308b\\u3002\\r\\n\\r\\nPocket Computer(\\u30dd\\u30b1\\u30c3\\u30c8\\u30b3\\u30f3\\u30d4\\u30e5\\u30fc\\u30bf)\\u306f1980\\u5e74\\u4ee3\\u306b\\u5e83\\u304f\\u4f7f\\u308f\\u308c\\u305f\\u643a\\u5e2f\\u7528\\u306e\\u5c0f\\u578b\\u30b3\\u30f3\\u30d4\\u30e5\\u30fc\\u30bf\\u3067\\u3042\\u308b\\u3002\\r\\n\\r\\nProgrammable Controller(\\u30d7\\u30ed\\u30b0\\u30e9\\u30de\\u30d6\\u30eb\\u30fb\\u30b3\\u30f3\\u30c8\\u30ed\\u30fc\\u30e9)\\u306f\\u30ea\\u30ec\\u30fc\\u56de\\u8def\\u306e\\u4ee3\\u66ff\\u88c5\\u7f6e\\u3068\\u3057\\u3066\\u958b\\u767a\\u3055\\u308c\\u305f\\u5236\\u5fa1\\u88c5\\u7f6e\\u3067\\u3042\\u308b\\u3002\\r\\n\\r\\nProgrammable Counter(\\u30d7\\u30ed\\u30b0\\u30e9\\u30e0\\u30ab\\u30a6\\u30f3\\u30bf)\\u306f\\u30a2\\u30c9\\u30ec\\u30b9\\u30ec\\u30b8\\u30b9\\u30bf\\u306e\\u4e00\\u7a2e\\u3067\\u3001\\u5b9f\\u884c\\u3059\\u308b\\u547d\\u4ee4\\u306e\\u30a2\\u30c9\\u30ec\\u30b9\\u3092\\u6307\\u3057\\u793a\\u3059\\u30ec\\u30b8\\u30b9\\u30bf\\u3002\\u547d\\u4ee4\\u306e\\u8aad\\u307f\\u8fbc\\u307f\\u3092\\u884c\\u306a\\u3046\\u969b\\u306b\\u306f\\u305d\\u306e\\u5185\\u5bb9\\u304c\\u30a2\\u30c9\\u30ec\\u30b9\\u30d0\\u30b9\\u4e0a\\u306b\\u51fa\\u529b\\u3055\\u308c\\u3001\\u307e\\u305f\\u547d\\u4ee4\\u3092\\u8aad\\u307f\\u8fbc\\u3080\\u5ea6\\u306b\\u8aad\\u307f\\u53d6\\u3063\\u305f\\u547d\\u4ee4\\u306e\\u5206\\u3060\\u3051\\u5024\\u304c\\u5897\\u52a0\\u3059\\u308b\\u3088\\u3046\\u306b\\u306a\\u3063\\u3066\\u3044\\u308b\\u3002"},"_token":"X5vzFyRwn4Ifkm7GhDZAMAxdtZYQqRGyMGlNZT8e","_method":"PUT","_previous_":"http:\\/\\/localhost\\/admin\\/quiz"}', '2017-10-11 01:36:10', '2017-10-11 01:36:10'),
(382, 1, 'admin/quiz/1/edit', 'GET', '::1', '[]', '2017-10-11 01:36:11', '2017-10-11 01:36:11'),
(383, 1, 'admin/quiz/1', 'PUT', '::1', '{"title":"\\u30d1\\u30bd\\u30b3\\u30f3(PC)\\u306f\\u4f55\\u306e\\u7565\\u304b\\u3002","answers_id":"1","categories_id":"5","answer":{"answer_1":"Personal Computer","answer_2":"Pocket Computer","answer_3":"Programmable Controller","answer_4":"Programmable Counter","correct_answer_no":"1","commentary":"PC\\u306fPersonal Computer(\\u30d1\\u30fc\\u30bd\\u30ca\\u30eb\\u30b3\\u30f3\\u30d4\\u30e5\\u30fc\\u30bf)\\u306e\\u7565\\u79f0\\u3067\\u3042\\u308b\\u3002\\r\\n\\r\\nPocket Computer(\\u30dd\\u30b1\\u30c3\\u30c8\\u30b3\\u30f3\\u30d4\\u30e5\\u30fc\\u30bf)\\u306f1980\\u5e74\\u4ee3\\u306b\\u5e83\\u304f\\u4f7f\\u308f\\u308c\\u305f\\u643a\\u5e2f\\u7528\\u306e\\u5c0f\\u578b\\u30b3\\u30f3\\u30d4\\u30e5\\u30fc\\u30bf\\u3067\\u3042\\u308b\\u3002\\r\\n\\r\\nProgrammable Controller(\\u30d7\\u30ed\\u30b0\\u30e9\\u30de\\u30d6\\u30eb\\u30fb\\u30b3\\u30f3\\u30c8\\u30ed\\u30fc\\u30e9)\\u306f\\u30ea\\u30ec\\u30fc\\u56de\\u8def\\u306e\\u4ee3\\u66ff\\u88c5\\u7f6e\\u3068\\u3057\\u3066\\u958b\\u767a\\u3055\\u308c\\u305f\\u5236\\u5fa1\\u88c5\\u7f6e\\u3067\\u3042\\u308b\\u3002\\r\\n\\r\\nProgrammable Counter(\\u30d7\\u30ed\\u30b0\\u30e9\\u30e0\\u30ab\\u30a6\\u30f3\\u30bf)\\u306f\\u30a2\\u30c9\\u30ec\\u30b9\\u30ec\\u30b8\\u30b9\\u30bf\\u306e\\u4e00\\u7a2e\\u3067\\u3001\\u5b9f\\u884c\\u3059\\u308b\\u547d\\u4ee4\\u306e\\u30a2\\u30c9\\u30ec\\u30b9\\u3092\\u6307\\u3057\\u793a\\u3059\\u30ec\\u30b8\\u30b9\\u30bf\\u3002\\u547d\\u4ee4\\u306e\\u8aad\\u307f\\u8fbc\\u307f\\u3092\\u884c\\u306a\\u3046\\u969b\\u306b\\u306f\\u305d\\u306e\\u5185\\u5bb9\\u304c\\u30a2\\u30c9\\u30ec\\u30b9\\u30d0\\u30b9\\u4e0a\\u306b\\u51fa\\u529b\\u3055\\u308c\\u3001\\u307e\\u305f\\u547d\\u4ee4\\u3092\\u8aad\\u307f\\u8fbc\\u3080\\u5ea6\\u306b\\u8aad\\u307f\\u53d6\\u3063\\u305f\\u547d\\u4ee4\\u306e\\u5206\\u3060\\u3051\\u5024\\u304c\\u5897\\u52a0\\u3059\\u308b\\u3088\\u3046\\u306b\\u306a\\u3063\\u3066\\u3044\\u308b\\u3002"},"_token":"X5vzFyRwn4Ifkm7GhDZAMAxdtZYQqRGyMGlNZT8e","_method":"PUT"}', '2017-10-11 01:38:10', '2017-10-11 01:38:10'),
(384, 1, 'admin/quiz/1/edit', 'GET', '::1', '[]', '2017-10-11 01:38:11', '2017-10-11 01:38:11'),
(385, 1, 'admin/quiz', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-11 01:40:02', '2017-10-11 01:40:02'),
(386, 1, 'admin/quiz/20/edit', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-11 01:40:10', '2017-10-11 01:40:10'),
(387, 1, 'admin/quiz', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-11 01:40:31', '2017-10-11 01:40:31'),
(388, 1, 'admin/quiz/1/edit', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-11 01:40:35', '2017-10-11 01:40:35'),
(389, 1, 'admin/quiz/1', 'PUT', '::1', '{"title":"\\u30d1\\u30bd\\u30b3\\u30f3(PC)\\u306f\\u4f55\\u306e\\u7565\\u304b\\u3002","answers_id":"1","categories_id":"5","answer":{"answer_1":"Personal Computer","answer_2":"Pocket Computer","answer_3":"Programmable Controller","answer_4":"Programmable Counter","correct_answer_no":"1","commentary":"PC\\u306fPersonal Computer(\\u30d1\\u30fc\\u30bd\\u30ca\\u30eb\\u30b3\\u30f3\\u30d4\\u30e5\\u30fc\\u30bf)\\u306e\\u7565\\u79f0\\u3067\\u3042\\u308b\\u3002\\r\\n\\r\\nPocket Computer(\\u30dd\\u30b1\\u30c3\\u30c8\\u30b3\\u30f3\\u30d4\\u30e5\\u30fc\\u30bf)\\u306f1980\\u5e74\\u4ee3\\u306b\\u5e83\\u304f\\u4f7f\\u308f\\u308c\\u305f\\u643a\\u5e2f\\u7528\\u306e\\u5c0f\\u578b\\u30b3\\u30f3\\u30d4\\u30e5\\u30fc\\u30bf\\u3067\\u3042\\u308b\\u3002\\r\\n\\r\\nProgrammable Controller(\\u30d7\\u30ed\\u30b0\\u30e9\\u30de\\u30d6\\u30eb\\u30fb\\u30b3\\u30f3\\u30c8\\u30ed\\u30fc\\u30e9)\\u306f\\u30ea\\u30ec\\u30fc\\u56de\\u8def\\u306e\\u4ee3\\u66ff\\u88c5\\u7f6e\\u3068\\u3057\\u3066\\u958b\\u767a\\u3055\\u308c\\u305f\\u5236\\u5fa1\\u88c5\\u7f6e\\u3067\\u3042\\u308b\\u3002\\r\\n\\r\\nProgrammable Counter(\\u30d7\\u30ed\\u30b0\\u30e9\\u30e0\\u30ab\\u30a6\\u30f3\\u30bf)\\u306f\\u30a2\\u30c9\\u30ec\\u30b9\\u30ec\\u30b8\\u30b9\\u30bf\\u306e\\u4e00\\u7a2e\\u3067\\u3001\\u5b9f\\u884c\\u3059\\u308b\\u547d\\u4ee4\\u306e\\u30a2\\u30c9\\u30ec\\u30b9\\u3092\\u6307\\u3057\\u793a\\u3059\\u30ec\\u30b8\\u30b9\\u30bf\\u3002\\u547d\\u4ee4\\u306e\\u8aad\\u307f\\u8fbc\\u307f\\u3092\\u884c\\u306a\\u3046\\u969b\\u306b\\u306f\\u305d\\u306e\\u5185\\u5bb9\\u304c\\u30a2\\u30c9\\u30ec\\u30b9\\u30d0\\u30b9\\u4e0a\\u306b\\u51fa\\u529b\\u3055\\u308c\\u3001\\u307e\\u305f\\u547d\\u4ee4\\u3092\\u8aad\\u307f\\u8fbc\\u3080\\u5ea6\\u306b\\u8aad\\u307f\\u53d6\\u3063\\u305f\\u547d\\u4ee4\\u306e\\u5206\\u3060\\u3051\\u5024\\u304c\\u5897\\u52a0\\u3059\\u308b\\u3088\\u3046\\u306b\\u306a\\u3063\\u3066\\u3044\\u308b\\u3002"},"_token":"X5vzFyRwn4Ifkm7GhDZAMAxdtZYQqRGyMGlNZT8e","_method":"PUT","_previous_":"http:\\/\\/localhost\\/admin\\/quiz"}', '2017-10-11 01:40:56', '2017-10-11 01:40:56'),
(390, 1, 'admin/quiz/1/edit', 'GET', '::1', '[]', '2017-10-11 01:40:57', '2017-10-11 01:40:57'),
(391, 1, 'admin/quiz/1', 'PUT', '::1', '{"title":"\\u30d1\\u30bd\\u30b3\\u30f3(PC)\\u306f\\u4f55\\u306e\\u7565\\u304b\\u3002","answers_id":"1","categories_id":"5","answer":{"answer_1":"Personal Computer","answer_2":"Pocket Computer","answer_3":"Programmable Controller","answer_4":"Programmable Counter","correct_answer_no":"1","commentary":"PC\\u306fPersonal Computer(\\u30d1\\u30fc\\u30bd\\u30ca\\u30eb\\u30b3\\u30f3\\u30d4\\u30e5\\u30fc\\u30bf)\\u306e\\u7565\\u79f0\\u3067\\u3042\\u308b\\u3002\\r\\n\\r\\nPocket Computer(\\u30dd\\u30b1\\u30c3\\u30c8\\u30b3\\u30f3\\u30d4\\u30e5\\u30fc\\u30bf)\\u306f1980\\u5e74\\u4ee3\\u306b\\u5e83\\u304f\\u4f7f\\u308f\\u308c\\u305f\\u643a\\u5e2f\\u7528\\u306e\\u5c0f\\u578b\\u30b3\\u30f3\\u30d4\\u30e5\\u30fc\\u30bf\\u3067\\u3042\\u308b\\u3002\\r\\n\\r\\nProgrammable Controller(\\u30d7\\u30ed\\u30b0\\u30e9\\u30de\\u30d6\\u30eb\\u30fb\\u30b3\\u30f3\\u30c8\\u30ed\\u30fc\\u30e9)\\u306f\\u30ea\\u30ec\\u30fc\\u56de\\u8def\\u306e\\u4ee3\\u66ff\\u88c5\\u7f6e\\u3068\\u3057\\u3066\\u958b\\u767a\\u3055\\u308c\\u305f\\u5236\\u5fa1\\u88c5\\u7f6e\\u3067\\u3042\\u308b\\u3002\\r\\n\\r\\nProgrammable Counter(\\u30d7\\u30ed\\u30b0\\u30e9\\u30e0\\u30ab\\u30a6\\u30f3\\u30bf)\\u306f\\u30a2\\u30c9\\u30ec\\u30b9\\u30ec\\u30b8\\u30b9\\u30bf\\u306e\\u4e00\\u7a2e\\u3067\\u3001\\u5b9f\\u884c\\u3059\\u308b\\u547d\\u4ee4\\u306e\\u30a2\\u30c9\\u30ec\\u30b9\\u3092\\u6307\\u3057\\u793a\\u3059\\u30ec\\u30b8\\u30b9\\u30bf\\u3002\\u547d\\u4ee4\\u306e\\u8aad\\u307f\\u8fbc\\u307f\\u3092\\u884c\\u306a\\u3046\\u969b\\u306b\\u306f\\u305d\\u306e\\u5185\\u5bb9\\u304c\\u30a2\\u30c9\\u30ec\\u30b9\\u30d0\\u30b9\\u4e0a\\u306b\\u51fa\\u529b\\u3055\\u308c\\u3001\\u307e\\u305f\\u547d\\u4ee4\\u3092\\u8aad\\u307f\\u8fbc\\u3080\\u5ea6\\u306b\\u8aad\\u307f\\u53d6\\u3063\\u305f\\u547d\\u4ee4\\u306e\\u5206\\u3060\\u3051\\u5024\\u304c\\u5897\\u52a0\\u3059\\u308b\\u3088\\u3046\\u306b\\u306a\\u3063\\u3066\\u3044\\u308b\\u3002"},"_token":"X5vzFyRwn4Ifkm7GhDZAMAxdtZYQqRGyMGlNZT8e","_method":"PUT"}', '2017-10-11 01:45:04', '2017-10-11 01:45:04'),
(392, 1, 'admin/quiz', 'GET', '::1', '[]', '2017-10-11 01:45:05', '2017-10-11 01:45:05'),
(393, 1, 'admin/quiz', 'GET', '::1', '{"page":"2","_pjax":"#pjax-container"}', '2017-10-11 01:50:44', '2017-10-11 01:50:44'),
(394, 1, 'admin/quiz/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-11 01:50:46', '2017-10-11 01:50:46'),
(395, 1, 'admin/quiz', 'GET', '::1', '{"page":"2","_pjax":"#pjax-container"}', '2017-10-11 01:50:48', '2017-10-11 01:50:48'),
(396, 1, 'admin/quiz/31/edit', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-11 01:50:59', '2017-10-11 01:50:59'),
(397, 1, 'admin/quiz', 'GET', '::1', '{"page":"2","_pjax":"#pjax-container"}', '2017-10-11 01:51:15', '2017-10-11 01:51:15'),
(398, 1, 'admin/quiz', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-11 01:51:18', '2017-10-11 01:51:18'),
(399, 1, 'admin/quiz/1/edit', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-11 01:51:21', '2017-10-11 01:51:21'),
(400, 1, 'admin/quiz', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-11 01:51:30', '2017-10-11 01:51:30'),
(401, 1, 'admin/quiz', 'GET', '::1', '[]', '2017-10-11 01:53:19', '2017-10-11 01:53:19'),
(402, 1, 'admin/quiz', 'GET', '::1', '[]', '2017-10-11 01:55:02', '2017-10-11 01:55:02'),
(403, 1, 'admin/quiz', 'GET', '::1', '[]', '2017-10-11 01:55:36', '2017-10-11 01:55:36'),
(404, 1, 'admin/quiz', 'GET', '::1', '[]', '2017-10-11 01:57:40', '2017-10-11 01:57:40'),
(405, 1, 'admin/quiz', 'GET', '::1', '[]', '2017-10-11 01:57:59', '2017-10-11 01:57:59'),
(406, 1, 'admin/quiz/1/edit', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-11 01:58:38', '2017-10-11 01:58:38'),
(407, 1, 'admin/quiz', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-11 01:59:03', '2017-10-11 01:59:03'),
(408, 1, 'admin/quiz', 'GET', '::1', '{"_pjax":"#pjax-container","page":"2"}', '2017-10-11 01:59:09', '2017-10-11 01:59:09'),
(409, 1, 'admin/quiz', 'GET', '::1', '{"page":"2"}', '2017-10-11 01:59:50', '2017-10-11 01:59:50'),
(410, 1, 'admin/quiz', 'GET', '::1', '{"page":"2"}', '2017-10-11 02:00:19', '2017-10-11 02:00:19'),
(411, 1, 'admin/quiz/32/edit', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-11 02:00:56', '2017-10-11 02:00:56'),
(412, 1, 'admin/quiz', 'GET', '::1', '{"page":"2","_pjax":"#pjax-container"}', '2017-10-11 02:00:58', '2017-10-11 02:00:58'),
(413, 1, 'admin/quiz/21/edit', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-11 02:01:45', '2017-10-11 02:01:45'),
(414, 1, 'admin/quiz', 'GET', '::1', '{"page":"2","_pjax":"#pjax-container"}', '2017-10-11 02:02:08', '2017-10-11 02:02:08'),
(415, 1, 'admin/quiz/31/edit', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-11 02:02:12', '2017-10-11 02:02:12'),
(416, 1, 'admin/quiz/31', 'PUT', '::1', '{"title":"\\u30e2\\u30ce\\u306e\\u30a4\\u30f3\\u30bf\\u30fc\\u30cd\\u30c3\\u30c8\\u3068\\u8a33\\u3055\\u308c\\u308b\\u3001\\u69d8\\u3005\\u306a\\u6a5f\\u5668(\\u51b7\\u8535\\u5eab,\\u76e3\\u8996\\u30ab\\u30e1\\u30e9,\\u4fe1\\u53f7etc)\\u304c\\u30a4\\u30f3\\u30bf\\u30fc\\u30cd\\u30c3\\u30c8\\u306b\\u63a5\\u7d9a\\u3055\\u308c\\u308b\\u3053\\u3068\\u3092\\u4f55\\u3068\\u3044\\u3046\\u304b\\uff1f","answers_id":"31","categories_id":"5","answer":{"answer_1":"IoT","answer_2":"AR","answer_3":"VR","answer_4":"IE","correct_answer_no":"1","commentary":"IoT(Internet of Things)\\u304c\\u6b63\\u89e3\\u3067\\u3042\\u308b\\u3002\\r\\n\\r\\nAR(augmented reality)\\u306f\\u300e\\u62e1\\u5f35\\u73fe\\u5b9f\\u300f\\u3068\\u8a33\\u3055\\u308c\\u308b\\u3002\\r\\n\\r\\nVR(Virtual Reality)\\u3068\\u8a33\\u3055\\u308c\\u308b\\u3002\\r\\n\\r\\nIE(Internet Explorer)\\u306fWEB\\u30d6\\u30e9\\u30a6\\u30b6\\u3067\\u3042\\u308b\\u3002"},"_token":"X5vzFyRwn4Ifkm7GhDZAMAxdtZYQqRGyMGlNZT8e","_method":"PUT","_previous_":"http:\\/\\/localhost\\/admin\\/quiz?&page=2"}', '2017-10-11 02:05:35', '2017-10-11 02:05:35'),
(417, 1, 'admin/quiz', 'GET', '::1', '{"page":"2"}', '2017-10-11 02:05:35', '2017-10-11 02:05:35'),
(418, 1, 'admin/quiz/32/edit', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-11 02:05:50', '2017-10-11 02:05:50'),
(419, 1, 'admin/quiz/32', 'PUT', '::1', '{"title":"\\u96fb\\u5b50\\u6c7a\\u6e08\\u30b7\\u30b9\\u30c6\\u30e0,\\u4eee\\u60f3\\u901a\\u8ca8,\\u8cc7\\u7523\\u904b\\u7528\\u306a\\u3069\\u306b\\u5909\\u5316\\u3092\\u3082\\u305f\\u3089\\u3057\\u3066\\u3044\\u308b\\u3001\\u91d1\\u878d\\u3068IT\\u304c\\u878d\\u5408\\u3057\\u305f\\u6280\\u8853\\u9769\\u65b0\\u3092\\u4f55\\u3068\\u3044\\u3046\\u304b\\uff1f","answers_id":"32","categories_id":"5","answer":{"answer_1":"Fintech","answer_2":"Finance","answer_3":"Technology","answer_4":"Bitcoin","correct_answer_no":"1","commentary":"Fintech\\u304c\\u6b63\\u89e3\\u3067\\u3042\\u308b\\u3002\\r\\n\\r\\nfinance\\u3068technology\\u306fFintech\\u306e\\u9020\\u8a9e\\u306e\\u5143\\u3068\\u306a\\u3063\\u305f\\u8a00\\u8449\\u3067\\u3042\\u308b\\u3002\\r\\n\\r\\nBitcoin\\u306fPeer to Peer\\u578b\\u3067\\u53d6\\u5f15\\u3055\\u308c\\u3066\\u3044\\u308b\\u5168\\u4e16\\u754c\\u306e\\u6700\\u5927\\u30b7\\u30a7\\u30a2\\u3092\\u5360\\u3081\\u308b\\u4eee\\u60f3\\u901a\\u8ca8\\u306f"},"_token":"X5vzFyRwn4Ifkm7GhDZAMAxdtZYQqRGyMGlNZT8e","_method":"PUT","_previous_":"http:\\/\\/localhost\\/admin\\/quiz?&page=2"}', '2017-10-11 02:09:04', '2017-10-11 02:09:04'),
(420, 1, 'admin/quiz', 'GET', '::1', '{"page":"2"}', '2017-10-11 02:09:04', '2017-10-11 02:09:04'),
(421, 1, 'admin/quiz/32/edit', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-11 02:09:13', '2017-10-11 02:09:13'),
(422, 1, 'admin/quiz', 'GET', '::1', '{"page":"2","_pjax":"#pjax-container"}', '2017-10-11 02:09:16', '2017-10-11 02:09:16'),
(423, 1, 'admin/quiz/31/edit', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-11 02:10:04', '2017-10-11 02:10:04'),
(424, 1, 'admin/quiz/31', 'PUT', '::1', '{"title":"\\u96fb\\u5b50\\u6c7a\\u6e08\\u30b7\\u30b9\\u30c6\\u30e0,\\u4eee\\u60f3\\u901a\\u8ca8,\\u8cc7\\u7523\\u904b\\u7528\\u306a\\u3069\\u306b\\u5909\\u5316\\u3092\\u3082\\u305f\\u3089\\u3057\\u3066\\u3044\\u308b\\u3001\\u91d1\\u878d\\u3068IT\\u304c\\u878d\\u5408\\u3057\\u305f\\u6280\\u8853\\u9769\\u65b0\\u3092\\u4f55\\u3068\\u3044\\u3046\\u304b\\uff1f","answers_id":"31","categories_id":"5","answer":{"answer_1":"Fintech","answer_2":"Finance","answer_3":"Technology","answer_4":"Bitcoin","correct_answer_no":"1","commentary":"Fintech\\u304c\\u6b63\\u89e3\\u3067\\u3042\\u308b\\u3002\\r\\n\\r\\nfinance\\u3068technology\\u306fFintech\\u306e\\u9020\\u8a9e\\u306e\\u5143\\u3068\\u306a\\u3063\\u305f\\u8a00\\u8449\\u3067\\u3042\\u308b\\u3002\\r\\n\\r\\nBitcoin\\u306fPeer to Peer\\u578b\\u3067\\u53d6\\u5f15\\u3055\\u308c\\u3066\\u3044\\u308b\\u5168\\u4e16\\u754c\\u306e\\u6700\\u5927\\u30b7\\u30a7\\u30a2\\u3092\\u5360\\u3081\\u308b\\u4eee\\u60f3\\u901a\\u8ca8\\u306f"},"_token":"X5vzFyRwn4Ifkm7GhDZAMAxdtZYQqRGyMGlNZT8e","_method":"PUT","_previous_":"http:\\/\\/localhost\\/admin\\/quiz?&page=2"}', '2017-10-11 02:10:48', '2017-10-11 02:10:48'),
(425, 1, 'admin/quiz', 'GET', '::1', '{"page":"2"}', '2017-10-11 02:10:48', '2017-10-11 02:10:48'),
(426, 1, 'admin/quiz/32/edit', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-11 02:11:17', '2017-10-11 02:11:17'),
(427, 1, 'admin/quiz', 'GET', '::1', '{"page":"2","_pjax":"#pjax-container"}', '2017-10-11 02:11:30', '2017-10-11 02:11:30'),
(428, 1, 'admin/quiz/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-11 02:11:32', '2017-10-11 02:11:32'),
(429, 1, 'admin/quiz', 'GET', '::1', '{"page":"2","_pjax":"#pjax-container"}', '2017-10-11 02:11:37', '2017-10-11 02:11:37'),
(430, 1, 'admin/quiz/32/edit', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-11 02:11:41', '2017-10-11 02:11:41'),
(431, 1, 'admin/quiz/32', 'PUT', '::1', '{"title":"\\u30e2\\u30ce\\u306e\\u30a4\\u30f3\\u30bf\\u30fc\\u30cd\\u30c3\\u30c8\\u3068\\u8a33\\u3055\\u308c\\u308b\\u3001\\u69d8\\u3005\\u306a\\u6a5f\\u5668(\\u51b7\\u8535\\u5eab,\\u76e3\\u8996\\u30ab\\u30e1\\u30e9,\\u4fe1\\u53f7etc)\\u304c\\u30a4\\u30f3\\u30bf\\u30fc\\u30cd\\u30c3\\u30c8\\u306b\\u63a5\\u7d9a\\u3055\\u308c\\u308b\\u3053\\u3068\\u3092\\u4f55\\u3068\\u3044\\u3046\\u304b\\uff1f","answers_id":"32","categories_id":"5","answer":{"answer_1":"IoT","answer_2":"AR","answer_3":"VR","answer_4":"IE","correct_answer_no":"1","commentary":"IoT(Internet of Things)\\u304c\\u6b63\\u89e3\\u3067\\u3042\\u308b\\u3002\\r\\n\\r\\nAR(augmented reality)\\u306f\\u62e1\\u5f35\\u73fe\\u5b9f\\u3002VR(Virtual Reality)\\u306f\\u4eee\\u60f3\\u73fe\\u5b9f\\u3002\\r\\n\\r\\nIE(Internet Explorer)\\u306fWEB\\u30d6\\u30e9\\u30a6\\u30b6\\u3067\\u3042\\u308b\\u3002"},"_token":"X5vzFyRwn4Ifkm7GhDZAMAxdtZYQqRGyMGlNZT8e","_method":"PUT","_previous_":"http:\\/\\/localhost\\/admin\\/quiz?&page=2"}', '2017-10-11 02:13:55', '2017-10-11 02:13:55'),
(432, 1, 'admin/quiz', 'GET', '::1', '{"page":"2"}', '2017-10-11 02:13:56', '2017-10-11 02:13:56'),
(433, 1, 'admin/quiz/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-11 02:14:07', '2017-10-11 02:14:07'),
(434, 1, 'admin/quiz/create', 'GET', '::1', '[]', '2017-10-11 02:15:59', '2017-10-11 02:15:59'),
(435, 1, 'admin/quiz', 'POST', '::1', '{"title":null,"answers_id":"33","categories_id":"1","answer":{"answer_1":null,"answer_2":null,"answer_3":null,"answer_4":null,"correct_answer_no":"1","commentary":null},"_token":"X5vzFyRwn4Ifkm7GhDZAMAxdtZYQqRGyMGlNZT8e"}', '2017-10-11 02:16:02', '2017-10-11 02:16:02'),
(436, 1, 'admin/quiz/create', 'GET', '::1', '[]', '2017-10-11 02:16:02', '2017-10-11 02:16:02'),
(437, 1, 'admin', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-11 02:17:15', '2017-10-11 02:17:15'),
(438, 1, 'admin/auth/menu', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-11 02:17:57', '2017-10-11 02:17:57'),
(439, 1, 'admin/generalusers', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-11 02:18:01', '2017-10-11 02:18:01'),
(440, 1, 'admin/generalusers/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-11 02:18:04', '2017-10-11 02:18:04'),
(441, 1, 'admin/generalusers', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-11 02:18:09', '2017-10-11 02:18:09'),
(442, 1, 'admin/generalusers/1/edit', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-11 02:18:13', '2017-10-11 02:18:13'),
(443, 1, 'admin/generalusers', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-11 02:18:20', '2017-10-11 02:18:20'),
(444, 1, 'admin/auth/setting', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-11 02:18:28', '2017-10-11 02:18:28'),
(445, 1, 'admin/generalusers', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-11 02:18:53', '2017-10-11 02:18:53'),
(446, 1, 'admin/quiz', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-11 02:25:37', '2017-10-11 02:25:37'),
(447, 1, 'admin/quiz/1/edit', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-11 02:25:43', '2017-10-11 02:25:43'),
(448, 1, 'admin/quiz/1', 'PUT', '::1', '{"title":"\\u30d1\\u30bd\\u30b3\\u30f3(PC)\\u306f\\u4f55\\u306e\\u7565\\u304b\\u3002","answers_id":"1","categories_id":"5","answer":{"answer_1":"Personal Computer","answer_2":"Pocket Computer","answer_3":"Programmable Controller","answer_4":"Programmable Counter","correct_answer_no":"1","commentary":"PC\\u306fPersonal Computer(\\u30d1\\u30fc\\u30bd\\u30ca\\u30eb\\u30b3\\u30f3\\u30d4\\u30e5\\u30fc\\u30bf)\\u306e\\u7565\\u79f0\\u3067\\u3042\\u308b\\u3002\\r\\n\\r\\nPocket Computer(\\u30dd\\u30b1\\u30c3\\u30c8\\u30b3\\u30f3\\u30d4\\u30e5\\u30fc\\u30bf)\\u306f1980\\u5e74\\u4ee3\\u306b\\u5e83\\u304f\\u4f7f\\u308f\\u308c\\u305f\\u643a\\u5e2f\\u7528\\u306e\\u5c0f\\u578b\\u30b3\\u30f3\\u30d4\\u30e5\\u30fc\\u30bf\\u3067\\u3042\\u308b\\u3002\\r\\n\\r\\nProgrammable Controller(\\u30d7\\u30ed\\u30b0\\u30e9\\u30de\\u30d6\\u30eb\\u30fb\\u30b3\\u30f3\\u30c8\\u30ed\\u30fc\\u30e9)\\u306f\\u30ea\\u30ec\\u30fc\\u56de\\u8def\\u306e\\u4ee3\\u66ff\\u88c5\\u7f6e\\u3068\\u3057\\u3066\\u958b\\u767a\\u3055\\u308c\\u305f\\u5236\\u5fa1\\u88c5\\u7f6e\\u3067\\u3042\\u308b\\u3002\\r\\n\\r\\nProgrammable Counter(\\u30d7\\u30ed\\u30b0\\u30e9\\u30e0\\u30ab\\u30a6\\u30f3\\u30bf)\\u306f\\u30a2\\u30c9\\u30ec\\u30b9\\u30ec\\u30b8\\u30b9\\u30bf\\u306e\\u4e00\\u7a2e\\u3067\\u3001\\u5b9f\\u884c\\u3059\\u308b\\u547d\\u4ee4\\u306e\\u30a2\\u30c9\\u30ec\\u30b9\\u3092\\u6307\\u3057\\u793a\\u3059\\u30ec\\u30b8\\u30b9\\u30bf\\u3002\\u547d\\u4ee4\\u306e\\u8aad\\u307f\\u8fbc\\u307f\\u3092\\u884c\\u306a\\u3046\\u969b\\u306b\\u306f\\u305d\\u306e\\u5185\\u5bb9\\u304c\\u30a2\\u30c9\\u30ec\\u30b9\\u30d0\\u30b9\\u4e0a\\u306b\\u51fa\\u529b\\u3055\\u308c\\u3001\\u307e\\u305f\\u547d\\u4ee4\\u3092\\u8aad\\u307f\\u8fbc\\u3080\\u5ea6\\u306b\\u8aad\\u307f\\u53d6\\u3063\\u305f\\u547d\\u4ee4\\u306e\\u5206\\u3060\\u3051\\u5024\\u304c\\u5897\\u52a0\\u3059\\u308b\\u3088\\u3046\\u306b\\u306a\\u3063\\u3066\\u3044\\u308b\\u3002"},"_token":"X5vzFyRwn4Ifkm7GhDZAMAxdtZYQqRGyMGlNZT8e","_method":"PUT","_previous_":"http:\\/\\/localhost\\/admin\\/quiz"}', '2017-10-11 02:25:52', '2017-10-11 02:25:52'),
(449, 1, 'admin/quiz', 'GET', '::1', '[]', '2017-10-11 02:25:53', '2017-10-11 02:25:53'),
(450, 1, 'admin/quiz/1/edit', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-11 02:26:11', '2017-10-11 02:26:11'),
(451, 1, 'admin/quiz/1', 'PUT', '::1', '{"title":"\\u30d1\\u30bd\\u30b3\\u30f3(PC)\\u306f\\u4f55\\u306e\\u7565\\u304b\\u3002","answers_id":"1","categories_id":"5","answer":{"answer_1":"Personal Computer","answer_2":"Pocket Computer","answer_3":"Programmable Controller","answer_4":"Programmable Counter","correct_answer_no":"1","commentary":"PC\\u306fPersonal Computer(\\u30d1\\u30fc\\u30bd\\u30ca\\u30eb\\u30b3\\u30f3\\u30d4\\u30e5\\u30fc\\u30bf)\\u306e\\u7565\\u79f0\\u3067\\u3042\\u308b\\u3002\\r\\n\\r\\nPocket Computer(\\u30dd\\u30b1\\u30c3\\u30c8\\u30b3\\u30f3\\u30d4\\u30e5\\u30fc\\u30bf)\\u306f1980\\u5e74\\u4ee3\\u306b\\u5e83\\u304f\\u4f7f\\u308f\\u308c\\u305f\\u643a\\u5e2f\\u7528\\u306e\\u5c0f\\u578b\\u30b3\\u30f3\\u30d4\\u30e5\\u30fc\\u30bf\\u3067\\u3042\\u308b\\u3002\\r\\n\\r\\nProgrammable Controller(\\u30d7\\u30ed\\u30b0\\u30e9\\u30de\\u30d6\\u30eb\\u30fb\\u30b3\\u30f3\\u30c8\\u30ed\\u30fc\\u30e9)\\u306f\\u30ea\\u30ec\\u30fc\\u56de\\u8def\\u306e\\u4ee3\\u66ff\\u88c5\\u7f6e\\u3068\\u3057\\u3066\\u958b\\u767a\\u3055\\u308c\\u305f\\u5236\\u5fa1\\u88c5\\u7f6e\\u3067\\u3042\\u308b\\u3002\\r\\n\\r\\nProgrammable Counter(\\u30d7\\u30ed\\u30b0\\u30e9\\u30e0\\u30ab\\u30a6\\u30f3\\u30bf)\\u306f\\u30a2\\u30c9\\u30ec\\u30b9\\u30ec\\u30b8\\u30b9\\u30bf\\u306e\\u4e00\\u7a2e\\u3067\\u3001\\u5b9f\\u884c\\u3059\\u308b\\u547d\\u4ee4\\u306e\\u30a2\\u30c9\\u30ec\\u30b9\\u3092\\u6307\\u3057\\u793a\\u3059\\u30ec\\u30b8\\u30b9\\u30bf\\u3002\\u547d\\u4ee4\\u306e\\u8aad\\u307f\\u8fbc\\u307f\\u3092\\u884c\\u306a\\u3046\\u969b\\u306b\\u306f\\u305d\\u306e\\u5185\\u5bb9\\u304c\\u30a2\\u30c9\\u30ec\\u30b9\\u30d0\\u30b9\\u4e0a\\u306b\\u51fa\\u529b\\u3055\\u308c\\u3001\\u307e\\u305f\\u547d\\u4ee4\\u3092\\u8aad\\u307f\\u8fbc\\u3080\\u5ea6\\u306b\\u8aad\\u307f\\u53d6\\u3063\\u305f\\u547d\\u4ee4\\u306e\\u5206\\u3060\\u3051\\u5024\\u304c\\u5897\\u52a0\\u3059\\u308b\\u3088\\u3046\\u306b\\u306a\\u3063\\u3066\\u3044\\u308b\\u3002"},"_token":"X5vzFyRwn4Ifkm7GhDZAMAxdtZYQqRGyMGlNZT8e","_method":"PUT","_previous_":"http:\\/\\/localhost\\/admin\\/quiz"}', '2017-10-11 02:26:19', '2017-10-11 02:26:19'),
(452, 1, 'admin/quiz', 'GET', '::1', '[]', '2017-10-11 02:26:20', '2017-10-11 02:26:20'),
(453, 1, 'admin/quiz/1/edit', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-11 02:26:50', '2017-10-11 02:26:50'),
(454, 1, 'admin/quiz', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-11 02:29:23', '2017-10-11 02:29:23'),
(455, 1, 'admin/quiz/1/edit', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-11 02:30:07', '2017-10-11 02:30:07'),
(456, 1, 'admin/quiz', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-11 02:30:53', '2017-10-11 02:30:53'),
(457, 1, 'admin', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-11 02:34:41', '2017-10-11 02:34:41'),
(458, 1, 'admin/quiz', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-11 02:34:49', '2017-10-11 02:34:49'),
(459, 1, 'admin/quiz', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-11 02:35:22', '2017-10-11 02:35:22'),
(460, 1, 'admin/quiz', 'GET', '::1', '{"_pjax":"#pjax-container","page":"2"}', '2017-10-11 02:35:32', '2017-10-11 02:35:32'),
(461, 1, 'admin/quiz', 'GET', '::1', '{"_pjax":"#pjax-container","page":"1"}', '2017-10-11 02:35:57', '2017-10-11 02:35:57'),
(462, 1, 'admin/auth/setting', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-11 02:38:42', '2017-10-11 02:38:42'),
(463, 1, 'admin/quiz', 'GET', '::1', '{"page":"1","_pjax":"#pjax-container"}', '2017-10-11 02:38:52', '2017-10-11 02:38:52'),
(464, 1, 'admin', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-11 02:38:57', '2017-10-11 02:38:57'),
(465, 1, 'admin', 'GET', '::1', '[]', '2017-10-11 03:17:18', '2017-10-11 03:17:18'),
(466, 1, 'admin', 'GET', '::1', '[]', '2017-10-11 03:21:09', '2017-10-11 03:21:09'),
(467, 1, 'admin', 'GET', '::1', '[]', '2017-10-11 03:21:13', '2017-10-11 03:21:13'),
(468, 1, 'admin', 'GET', '::1', '[]', '2017-10-11 03:21:24', '2017-10-11 03:21:24'),
(469, 1, 'admin', 'GET', '::1', '[]', '2017-10-11 03:22:03', '2017-10-11 03:22:03'),
(470, 1, 'admin/quiz', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-11 03:22:11', '2017-10-11 03:22:11'),
(471, 1, 'admin/auth/logout', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-11 03:23:24', '2017-10-11 03:23:24'),
(472, 1, 'admin', 'GET', '::1', '[]', '2017-10-11 03:24:05', '2017-10-11 03:24:05'),
(473, 1, 'admin', 'GET', '::1', '[]', '2017-10-11 03:26:04', '2017-10-11 03:26:04'),
(474, 1, 'admin', 'GET', '::1', '[]', '2017-10-11 03:28:52', '2017-10-11 03:28:52'),
(475, 1, 'admin', 'GET', '::1', '[]', '2017-10-11 03:29:11', '2017-10-11 03:29:11'),
(476, 1, 'admin/generalusers', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-11 03:29:28', '2017-10-11 03:29:28'),
(477, 1, 'admin/quiz', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-11 03:29:39', '2017-10-11 03:29:39'),
(478, 1, 'admin/quiz/1/edit', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-11 03:29:43', '2017-10-11 03:29:43'),
(479, 1, 'admin/quiz', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-11 03:29:46', '2017-10-11 03:29:46'),
(480, 1, 'admin/quiz/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-11 03:29:48', '2017-10-11 03:29:48'),
(481, 1, 'admin/quiz', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-11 03:29:59', '2017-10-11 03:29:59'),
(482, 1, 'admin/auth/logout', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-11 03:32:00', '2017-10-11 03:32:00'),
(483, 1, 'admin', 'GET', '::1', '[]', '2017-10-11 03:32:37', '2017-10-11 03:32:37'),
(484, 1, 'admin', 'GET', '::1', '[]', '2017-10-11 03:32:37', '2017-10-11 03:32:37'),
(485, 1, 'admin/quiz', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-11 03:51:11', '2017-10-11 03:51:11'),
(486, 1, 'admin', 'GET', '::1', '[]', '2017-10-11 03:55:21', '2017-10-11 03:55:21'),
(487, 1, 'admin', 'GET', '::1', '[]', '2017-10-11 03:55:26', '2017-10-11 03:55:26'),
(488, 1, 'admin/quiz', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-11 04:00:45', '2017-10-11 04:00:45'),
(489, 1, 'admin/auth/users', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-11 04:00:49', '2017-10-11 04:00:49'),
(490, 1, 'admin/auth/users/1/edit', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-11 04:00:53', '2017-10-11 04:00:53'),
(491, 1, 'admin/auth/users', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-11 04:00:58', '2017-10-11 04:00:58'),
(492, 1, 'admin/auth/roles', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-11 04:01:08', '2017-10-11 04:01:08'),
(493, 1, 'admin/auth/roles', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-11 04:01:12', '2017-10-11 04:01:12'),
(494, 1, 'admin/auth/permissions', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-11 04:01:13', '2017-10-11 04:01:13'),
(495, 1, 'admin/auth/menu', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-11 04:01:35', '2017-10-11 04:01:35'),
(496, 1, 'admin/quiz', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-11 04:12:17', '2017-10-11 04:12:17'),
(497, 1, 'admin/quiz', 'GET', '::1', '{"_pjax":"#pjax-container","page":"2"}', '2017-10-11 04:12:28', '2017-10-11 04:12:28'),
(498, 1, 'admin/quiz', 'GET', '::1', '{"_pjax":"#pjax-container","page":"1"}', '2017-10-11 04:12:44', '2017-10-11 04:12:44'),
(499, 1, 'admin/quiz/1/edit', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-11 04:13:00', '2017-10-11 04:13:00'),
(500, 1, 'admin/quiz', 'GET', '::1', '{"page":"1"}', '2017-10-11 04:13:00', '2017-10-11 04:13:00'),
(501, 1, 'admin/quiz/1/edit', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-11 04:13:30', '2017-10-11 04:13:30'),
(502, 1, 'admin/quiz', 'GET', '::1', '{"page":"1","_pjax":"#pjax-container"}', '2017-10-11 04:13:33', '2017-10-11 04:13:33'),
(503, 1, 'admin/quiz', 'GET', '::1', '{"_pjax":"#pjax-container","page":"2"}', '2017-10-11 04:20:54', '2017-10-11 04:20:54'),
(504, 1, 'admin/quiz', 'GET', '::1', '{"page":"2"}', '2017-10-11 04:34:44', '2017-10-11 04:34:44'),
(505, 1, 'admin', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-11 04:34:48', '2017-10-11 04:34:48'),
(506, 1, 'admin/quiz', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-11 04:35:00', '2017-10-11 04:35:00'),
(507, 1, 'admin/quiz', 'GET', '::1', '{"_pjax":"#pjax-container","page":"2"}', '2017-10-11 04:35:20', '2017-10-11 04:35:20'),
(508, 1, 'admin/quiz', 'GET', '::1', '{"page":"2"}', '2017-10-11 04:43:00', '2017-10-11 04:43:00'),
(509, 1, 'admin/quiz', 'GET', '::1', '{"page":"2","_sort":{"column":"id","type":"desc"},"_pjax":"#pjax-container"}', '2017-10-11 04:43:05', '2017-10-11 04:43:05'),
(510, 1, 'admin/quiz', 'GET', '::1', '{"_sort":{"column":"id","type":"desc"},"_pjax":"#pjax-container","page":"1"}', '2017-10-11 04:43:08', '2017-10-11 04:43:08'),
(511, 1, 'admin/quiz', 'GET', '::1', '{"_sort":{"column":"id","type":"asc"},"_pjax":"#pjax-container","page":"1"}', '2017-10-11 04:43:11', '2017-10-11 04:43:11'),
(512, 1, 'admin/quiz/1/edit', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-11 04:43:18', '2017-10-11 04:43:18'),
(513, 1, 'admin/quiz', 'GET', '::1', '{"_sort":{"column":"id","type":"asc"},"page":"1","_pjax":"#pjax-container"}', '2017-10-11 04:46:26', '2017-10-11 04:46:26'),
(514, 1, 'admin/quiz', 'GET', '::1', '{"_sort":{"column":"id","type":"asc"},"page":"1"}', '2017-10-11 04:46:28', '2017-10-11 04:46:28'),
(515, 1, 'admin/quiz/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-11 04:46:53', '2017-10-11 04:46:53'),
(516, 1, 'admin/quiz', 'GET', '::1', '{"_sort":{"column":"id","type":"asc"},"page":"1","_pjax":"#pjax-container"}', '2017-10-11 04:54:54', '2017-10-11 04:54:54'),
(517, 1, 'admin/quiz/1/edit', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-11 04:54:58', '2017-10-11 04:54:58'),
(518, 1, 'admin/quiz/1', 'PUT', '::1', '{"key":"0","image_src":"_file_del_","_file_del_":null,"_token":"X5vzFyRwn4Ifkm7GhDZAMAxdtZYQqRGyMGlNZT8e","_method":"PUT"}', '2017-10-11 04:55:36', '2017-10-11 04:55:36'),
(519, 1, 'admin/quiz/1', 'PUT', '::1', '{"title":"\\u30d1\\u30bd\\u30b3\\u30f3(PC)\\u306f\\u4f55\\u306e\\u7565\\u304b\\u3002","answers_id":"1","categories_id":"5","answer":{"answer_1":"Personal Computer","answer_2":"Pocket Computer","answer_3":"Programmable Controller","answer_4":"Programmable Counter","correct_answer_no":"1","commentary":"PC\\u306fPersonal Computer(\\u30d1\\u30fc\\u30bd\\u30ca\\u30eb\\u30b3\\u30f3\\u30d4\\u30e5\\u30fc\\u30bf)\\u306e\\u7565\\u79f0\\u3067\\u3042\\u308b\\u3002\\r\\n\\r\\nPocket Computer(\\u30dd\\u30b1\\u30c3\\u30c8\\u30b3\\u30f3\\u30d4\\u30e5\\u30fc\\u30bf)\\u306f1980\\u5e74\\u4ee3\\u306b\\u5e83\\u304f\\u4f7f\\u308f\\u308c\\u305f\\u643a\\u5e2f\\u7528\\u306e\\u5c0f\\u578b\\u30b3\\u30f3\\u30d4\\u30e5\\u30fc\\u30bf\\u3067\\u3042\\u308b\\u3002\\r\\n\\r\\nProgrammable Controller(\\u30d7\\u30ed\\u30b0\\u30e9\\u30de\\u30d6\\u30eb\\u30fb\\u30b3\\u30f3\\u30c8\\u30ed\\u30fc\\u30e9)\\u306f\\u30ea\\u30ec\\u30fc\\u56de\\u8def\\u306e\\u4ee3\\u66ff\\u88c5\\u7f6e\\u3068\\u3057\\u3066\\u958b\\u767a\\u3055\\u308c\\u305f\\u5236\\u5fa1\\u88c5\\u7f6e\\u3067\\u3042\\u308b\\u3002\\r\\n\\r\\nProgrammable Counter(\\u30d7\\u30ed\\u30b0\\u30e9\\u30e0\\u30ab\\u30a6\\u30f3\\u30bf)\\u306f\\u30a2\\u30c9\\u30ec\\u30b9\\u30ec\\u30b8\\u30b9\\u30bf\\u306e\\u4e00\\u7a2e\\u3067\\u3001\\u5b9f\\u884c\\u3059\\u308b\\u547d\\u4ee4\\u306e\\u30a2\\u30c9\\u30ec\\u30b9\\u3092\\u6307\\u3057\\u793a\\u3059\\u30ec\\u30b8\\u30b9\\u30bf\\u3002\\u547d\\u4ee4\\u306e\\u8aad\\u307f\\u8fbc\\u307f\\u3092\\u884c\\u306a\\u3046\\u969b\\u306b\\u306f\\u305d\\u306e\\u5185\\u5bb9\\u304c\\u30a2\\u30c9\\u30ec\\u30b9\\u30d0\\u30b9\\u4e0a\\u306b\\u51fa\\u529b\\u3055\\u308c\\u3001\\u307e\\u305f\\u547d\\u4ee4\\u3092\\u8aad\\u307f\\u8fbc\\u3080\\u5ea6\\u306b\\u8aad\\u307f\\u53d6\\u3063\\u305f\\u547d\\u4ee4\\u306e\\u5206\\u3060\\u3051\\u5024\\u304c\\u5897\\u52a0\\u3059\\u308b\\u3088\\u3046\\u306b\\u306a\\u3063\\u3066\\u3044\\u308b\\u3002"},"_token":"X5vzFyRwn4Ifkm7GhDZAMAxdtZYQqRGyMGlNZT8e","_method":"PUT","_previous_":"http:\\/\\/localhost\\/admin\\/quiz?_sort%5Bcolumn%5D=id&_sort%5Btype%5D=asc&page=1"}', '2017-10-11 04:55:43', '2017-10-11 04:55:43'),
(520, 1, 'admin/quiz', 'GET', '::1', '{"_sort":{"column":"id","type":"asc"},"page":"1"}', '2017-10-11 04:55:44', '2017-10-11 04:55:44'),
(521, 1, 'admin/quiz/1/edit', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-11 04:55:48', '2017-10-11 04:55:48'),
(522, 1, 'admin/quiz/1', 'PUT', '::1', '{"title":"\\u30d1\\u30bd\\u30b3\\u30f3(PC)\\u306f\\u4f55\\u306e\\u7565\\u304b\\u3002","answers_id":"1","categories_id":"5","answer":{"answer_1":"Personal Computer","answer_2":"Pocket Computer","answer_3":"Programmable Controller","answer_4":"Programmable Counter","correct_answer_no":"1","commentary":"PC\\u306fPersonal Computer(\\u30d1\\u30fc\\u30bd\\u30ca\\u30eb\\u30b3\\u30f3\\u30d4\\u30e5\\u30fc\\u30bf)\\u306e\\u7565\\u79f0\\u3067\\u3042\\u308b\\u3002\\r\\n\\r\\nPocket Computer(\\u30dd\\u30b1\\u30c3\\u30c8\\u30b3\\u30f3\\u30d4\\u30e5\\u30fc\\u30bf)\\u306f1980\\u5e74\\u4ee3\\u306b\\u5e83\\u304f\\u4f7f\\u308f\\u308c\\u305f\\u643a\\u5e2f\\u7528\\u306e\\u5c0f\\u578b\\u30b3\\u30f3\\u30d4\\u30e5\\u30fc\\u30bf\\u3067\\u3042\\u308b\\u3002\\r\\n\\r\\nProgrammable Controller(\\u30d7\\u30ed\\u30b0\\u30e9\\u30de\\u30d6\\u30eb\\u30fb\\u30b3\\u30f3\\u30c8\\u30ed\\u30fc\\u30e9)\\u306f\\u30ea\\u30ec\\u30fc\\u56de\\u8def\\u306e\\u4ee3\\u66ff\\u88c5\\u7f6e\\u3068\\u3057\\u3066\\u958b\\u767a\\u3055\\u308c\\u305f\\u5236\\u5fa1\\u88c5\\u7f6e\\u3067\\u3042\\u308b\\u3002\\r\\n\\r\\nProgrammable Counter(\\u30d7\\u30ed\\u30b0\\u30e9\\u30e0\\u30ab\\u30a6\\u30f3\\u30bf)\\u306f\\u30a2\\u30c9\\u30ec\\u30b9\\u30ec\\u30b8\\u30b9\\u30bf\\u306e\\u4e00\\u7a2e\\u3067\\u3001\\u5b9f\\u884c\\u3059\\u308b\\u547d\\u4ee4\\u306e\\u30a2\\u30c9\\u30ec\\u30b9\\u3092\\u6307\\u3057\\u793a\\u3059\\u30ec\\u30b8\\u30b9\\u30bf\\u3002\\u547d\\u4ee4\\u306e\\u8aad\\u307f\\u8fbc\\u307f\\u3092\\u884c\\u306a\\u3046\\u969b\\u306b\\u306f\\u305d\\u306e\\u5185\\u5bb9\\u304c\\u30a2\\u30c9\\u30ec\\u30b9\\u30d0\\u30b9\\u4e0a\\u306b\\u51fa\\u529b\\u3055\\u308c\\u3001\\u307e\\u305f\\u547d\\u4ee4\\u3092\\u8aad\\u307f\\u8fbc\\u3080\\u5ea6\\u306b\\u8aad\\u307f\\u53d6\\u3063\\u305f\\u547d\\u4ee4\\u306e\\u5206\\u3060\\u3051\\u5024\\u304c\\u5897\\u52a0\\u3059\\u308b\\u3088\\u3046\\u306b\\u306a\\u3063\\u3066\\u3044\\u308b\\u3002"},"_token":"X5vzFyRwn4Ifkm7GhDZAMAxdtZYQqRGyMGlNZT8e","_method":"PUT","_previous_":"http:\\/\\/localhost\\/admin\\/quiz?_sort%5Bcolumn%5D=id&_sort%5Btype%5D=asc&page=1"}', '2017-10-11 04:59:33', '2017-10-11 04:59:33'),
(523, 1, 'admin/quiz', 'GET', '::1', '{"_sort":{"column":"id","type":"asc"},"page":"1"}', '2017-10-11 04:59:33', '2017-10-11 04:59:33'),
(524, 1, 'admin/quiz/1/edit', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-11 04:59:36', '2017-10-11 04:59:36'),
(525, 1, 'admin/quiz/1/edit', 'GET', '::1', '[]', '2017-10-11 05:00:39', '2017-10-11 05:00:39'),
(526, 1, 'admin/quiz/1/edit', 'GET', '::1', '[]', '2017-10-11 05:03:49', '2017-10-11 05:03:49'),
(527, 1, 'admin/quiz/1/edit', 'GET', '::1', '[]', '2017-10-11 05:04:57', '2017-10-11 05:04:57'),
(528, 1, 'admin/quiz/1/edit', 'GET', '::1', '[]', '2017-10-11 05:07:15', '2017-10-11 05:07:15'),
(529, 1, 'admin/quiz/1/edit', 'GET', '::1', '[]', '2017-10-11 05:08:49', '2017-10-11 05:08:49'),
(530, 1, 'admin/quiz/1/edit', 'GET', '::1', '[]', '2017-10-11 05:09:04', '2017-10-11 05:09:04'),
(531, 1, 'admin/quiz/1/edit', 'GET', '::1', '[]', '2017-10-11 05:11:38', '2017-10-11 05:11:38'),
(532, 1, 'admin/quiz/1/edit', 'GET', '::1', '[]', '2017-10-11 05:12:11', '2017-10-11 05:12:11'),
(533, 1, 'admin/quiz', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-11 05:13:54', '2017-10-11 05:13:54'),
(534, 1, 'admin/quiz/1/edit', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-11 05:14:03', '2017-10-11 05:14:03'),
(535, 1, 'admin/auth/logout', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-11 05:15:57', '2017-10-11 05:15:57'),
(536, 1, 'admin', 'GET', '::1', '[]', '2017-10-11 05:18:37', '2017-10-11 05:18:37'),
(537, 1, 'admin', 'GET', '::1', '[]', '2017-10-11 05:18:37', '2017-10-11 05:18:37'),
(538, 1, 'admin/quiz', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-11 05:19:12', '2017-10-11 05:19:12'),
(539, 1, 'admin/quiz/1/edit', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-11 05:20:23', '2017-10-11 05:20:23'),
(540, 1, 'admin/auth/setting', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-11 05:21:13', '2017-10-11 05:21:13'),
(541, 1, 'admin/quiz/1/edit', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-11 05:21:32', '2017-10-11 05:21:32'),
(542, 1, 'admin/quiz', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-11 05:21:37', '2017-10-11 05:21:37'),
(543, 1, 'admin', 'GET', '::1', '[]', '2017-10-11 09:18:29', '2017-10-11 09:18:29'),
(544, 1, 'admin', 'GET', '::1', '[]', '2017-10-11 09:18:29', '2017-10-11 09:18:29'),
(545, 1, 'admin/auth/setting', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-11 09:18:34', '2017-10-11 09:18:34'),
(546, 1, 'admin/quiz', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-11 09:18:57', '2017-10-11 09:18:57'),
(547, 1, 'admin/quiz/1/edit', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-11 09:19:00', '2017-10-11 09:19:00'),
(548, 1, 'admin/auth/setting', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-11 09:19:12', '2017-10-11 09:19:12'),
(549, 1, 'admin/quiz/1/edit', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-11 09:24:33', '2017-10-11 09:24:33'),
(550, 1, 'admin/auth/setting', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-11 09:26:01', '2017-10-11 09:26:01'),
(551, 1, 'admin/auth/setting', 'PUT', '::1', '{"name":"Administrator","password":"$2y$10$pB2j81G\\/XzcsDdiZWocQ2uNclkY7j3rkPQK2KxGhDD8q5y.nsPBOC","password_confirmation":"$2y$10$pB2j81G\\/XzcsDdiZWocQ2uNclkY7j3rkPQK2KxGhDD8q5y.nsPBOC","_token":"PC2F1aQuBHCKA0FoaA0g5jbzrAbGTRyk06y1UkHq","_method":"PUT","_previous_":"http:\\/\\/localhost\\/admin\\/quiz\\/1\\/edit"}', '2017-10-11 09:26:14', '2017-10-11 09:26:14'),
(552, 1, 'admin/auth/setting', 'GET', '::1', '[]', '2017-10-11 09:26:14', '2017-10-11 09:26:14'),
(553, 1, 'admin/auth/setting', 'PUT', '::1', '{"name":"Administrator","password":"$2y$10$pB2j81G\\/XzcsDdiZWocQ2uNclkY7j3rkPQK2KxGhDD8q5y.nsPBOC","password_confirmation":"$2y$10$pB2j81G\\/XzcsDdiZWocQ2uNclkY7j3rkPQK2KxGhDD8q5y.nsPBOC","_token":"PC2F1aQuBHCKA0FoaA0g5jbzrAbGTRyk06y1UkHq","_method":"PUT"}', '2017-10-11 09:29:40', '2017-10-11 09:29:40'),
(554, 1, 'admin/auth/setting', 'GET', '::1', '[]', '2017-10-11 09:29:40', '2017-10-11 09:29:40'),
(555, 1, 'admin/auth/setting', 'PUT', '::1', '{"name":"Administrator","password":"$2y$10$pB2j81G\\/XzcsDdiZWocQ2uNclkY7j3rkPQK2KxGhDD8q5y.nsPBOC","password_confirmation":"$2y$10$pB2j81G\\/XzcsDdiZWocQ2uNclkY7j3rkPQK2KxGhDD8q5y.nsPBOC","_token":"PC2F1aQuBHCKA0FoaA0g5jbzrAbGTRyk06y1UkHq","_method":"PUT"}', '2017-10-11 09:33:13', '2017-10-11 09:33:13'),
(556, 1, 'admin/auth/setting', 'GET', '::1', '[]', '2017-10-11 09:33:13', '2017-10-11 09:33:13'),
(557, 1, 'admin/auth/setting', 'GET', '::1', '[]', '2017-10-11 09:34:09', '2017-10-11 09:34:09'),
(558, 1, 'admin/auth/setting', 'GET', '::1', '[]', '2017-10-11 09:36:03', '2017-10-11 09:36:03'),
(559, 1, 'admin/auth/setting', 'GET', '::1', '[]', '2017-10-11 09:38:13', '2017-10-11 09:38:13'),
(560, 1, 'admin', 'GET', '::1', '[]', '2017-10-12 10:39:23', '2017-10-12 10:39:23'),
(561, 1, 'admin', 'GET', '::1', '[]', '2017-10-12 10:39:23', '2017-10-12 10:39:23'),
(562, 1, 'admin', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-12 10:39:48', '2017-10-12 10:39:48'),
(563, 1, 'admin/auth/menu', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-12 10:39:52', '2017-10-12 10:39:52'),
(564, 1, 'admin/auth/menu/9/edit', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-12 10:40:11', '2017-10-12 10:40:11'),
(565, 1, 'admin/auth/menu/9', 'PUT', '::1', '{"parent_id":"2","title":"Quiz","icon":"fa-question-circle","uri":"\\/quiz","roles":["1",null],"_token":"TJbH2KodxygSnIbjdfJZL9lOwYb59Ck2WAAscCZX","_method":"PUT","_previous_":"http:\\/\\/localhost\\/admin\\/auth\\/menu"}', '2017-10-12 10:40:23', '2017-10-12 10:40:23'),
(566, 1, 'admin/auth/menu', 'GET', '::1', '[]', '2017-10-12 10:40:23', '2017-10-12 10:40:23'),
(567, 1, 'admin/auth/menu', 'POST', '::1', '{"parent_id":"0","title":"Information","icon":"fa-info-circle","uri":"\\/admin\\/information","roles":["1",null],"_token":"TJbH2KodxygSnIbjdfJZL9lOwYb59Ck2WAAscCZX"}', '2017-10-12 10:40:59', '2017-10-12 10:40:59'),
(568, 1, 'admin/auth/menu', 'GET', '::1', '[]', '2017-10-12 10:40:59', '2017-10-12 10:40:59'),
(569, 1, 'admin/auth/menu/10/edit', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-12 10:41:02', '2017-10-12 10:41:02'),
(570, 1, 'admin/auth/menu/10', 'PUT', '::1', '{"parent_id":"2","title":"Information","icon":"fa-info-circle","uri":"\\/admin\\/information","roles":["1",null],"_token":"TJbH2KodxygSnIbjdfJZL9lOwYb59Ck2WAAscCZX","_method":"PUT","_previous_":"http:\\/\\/localhost\\/admin\\/auth\\/menu"}', '2017-10-12 10:41:06', '2017-10-12 10:41:06'),
(571, 1, 'admin/auth/menu', 'GET', '::1', '[]', '2017-10-12 10:41:06', '2017-10-12 10:41:06'),
(572, 1, 'admin/auth/menu/10/edit', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-12 10:41:12', '2017-10-12 10:41:12'),
(573, 1, 'admin/auth/menu/10', 'PUT', '::1', '{"parent_id":"2","title":"Information","icon":"fa-info-circle","uri":"\\/information","roles":["1",null],"_token":"TJbH2KodxygSnIbjdfJZL9lOwYb59Ck2WAAscCZX","_method":"PUT","_previous_":"http:\\/\\/localhost\\/admin\\/auth\\/menu"}', '2017-10-12 10:41:17', '2017-10-12 10:41:17'),
(574, 1, 'admin/auth/menu', 'GET', '::1', '[]', '2017-10-12 10:41:17', '2017-10-12 10:41:17'),
(575, 1, 'admin/information', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-12 10:41:22', '2017-10-12 10:41:22'),
(576, 1, 'admin/auth/menu', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-12 10:41:38', '2017-10-12 10:41:38'),
(577, 1, 'admin/information', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-12 10:42:17', '2017-10-12 10:42:17'),
(578, 1, 'admin/information', 'GET', '::1', '[]', '2017-10-12 10:44:17', '2017-10-12 10:44:17'),
(579, 1, 'admin/information', 'GET', '::1', '[]', '2017-10-12 10:45:40', '2017-10-12 10:45:40'),
(580, 1, 'admin/information', 'GET', '::1', '[]', '2017-10-12 10:45:55', '2017-10-12 10:45:55'),
(581, 1, 'admin/auth/menu', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-12 10:45:59', '2017-10-12 10:45:59'),
(582, 1, 'admin/information', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-12 10:46:10', '2017-10-12 10:46:10'),
(583, 1, 'admin/information/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-12 10:46:11', '2017-10-12 10:46:11'),
(584, 1, 'admin/information', 'POST', '::1', '{"information":"\\u30b5\\u30a4\\u30c8\\u958b\\u8a2d\\u306e\\u304a\\u77e5\\u3089\\u305b\\u3002","_token":"TJbH2KodxygSnIbjdfJZL9lOwYb59Ck2WAAscCZX","_previous_":"http:\\/\\/localhost\\/admin\\/information"}', '2017-10-12 10:46:29', '2017-10-12 10:46:29'),
(585, 1, 'admin/information', 'GET', '::1', '[]', '2017-10-12 10:46:30', '2017-10-12 10:46:30'),
(586, 1, 'admin/keyword', 'GET', '::1', '[]', '2017-10-12 10:55:31', '2017-10-12 10:55:31'),
(587, 1, 'admin/keyword', 'GET', '::1', '[]', '2017-10-12 10:59:02', '2017-10-12 10:59:02'),
(588, 1, 'admin/keyword/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-12 10:59:06', '2017-10-12 10:59:06'),
(589, 1, 'admin/keyword/create', 'GET', '::1', '[]', '2017-10-12 11:04:05', '2017-10-12 11:04:05'),
(590, 1, 'admin/keyword/create', 'GET', '::1', '[]', '2017-10-12 11:06:45', '2017-10-12 11:06:45'),
(591, 1, 'admin/keyword/create', 'GET', '::1', '[]', '2017-10-12 11:06:48', '2017-10-12 11:06:48'),
(592, 1, 'admin/keyword/create', 'GET', '::1', '[]', '2017-10-12 11:07:44', '2017-10-12 11:07:44'),
(593, 1, 'admin/keyword/create', 'GET', '::1', '[]', '2017-10-12 11:08:24', '2017-10-12 11:08:24'),
(594, 1, 'admin/keyword/create', 'GET', '::1', '[]', '2017-10-12 11:09:01', '2017-10-12 11:09:01'),
(595, 1, 'admin/keyword/create', 'GET', '::1', '[]', '2017-10-12 11:10:43', '2017-10-12 11:10:43'),
(596, 1, 'admin/information', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-12 11:10:57', '2017-10-12 11:10:57'),
(597, 1, 'admin/information/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-12 11:11:22', '2017-10-12 11:11:22'),
(598, 1, 'admin/information', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-12 11:11:32', '2017-10-12 11:11:32'),
(599, 1, 'admin/keyword/create', 'GET', '::1', '[]', '2017-10-12 11:11:49', '2017-10-12 11:11:49'),
(600, 1, 'admin/keyword', 'GET', '::1', '[]', '2017-10-12 11:11:53', '2017-10-12 11:11:53'),
(601, 1, 'admin/keyword', 'GET', '::1', '[]', '2017-10-12 11:13:33', '2017-10-12 11:13:33'),
(602, 1, 'admin/keyword/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-12 11:13:35', '2017-10-12 11:13:35'),
(603, 1, 'admin/keyword/create', 'GET', '::1', '[]', '2017-10-12 11:14:03', '2017-10-12 11:14:03'),
(604, 1, 'admin/keyword/create', 'GET', '::1', '[]', '2017-10-12 11:14:15', '2017-10-12 11:14:15'),
(605, 1, 'admin/auth/menu', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-12 11:14:39', '2017-10-12 11:14:39'),
(606, 1, 'admin/auth/menu', 'POST', '::1', '{"parent_id":"2","title":"Keyword","icon":"fa-key","uri":"keyword","roles":["1",null],"_token":"TJbH2KodxygSnIbjdfJZL9lOwYb59Ck2WAAscCZX"}', '2017-10-12 11:15:18', '2017-10-12 11:15:18'),
(607, 1, 'admin/auth/menu', 'GET', '::1', '[]', '2017-10-12 11:15:19', '2017-10-12 11:15:19'),
(608, 1, 'admin/keyword', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-12 11:15:21', '2017-10-12 11:15:21'),
(609, 1, 'admin', 'GET', '::1', '[]', '2017-10-13 00:11:53', '2017-10-13 00:11:53'),
(610, 1, 'admin', 'GET', '::1', '[]', '2017-10-13 00:11:53', '2017-10-13 00:11:53'),
(611, 1, 'admin/keyword', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 00:11:58', '2017-10-13 00:11:58'),
(612, 1, 'admin/keyword/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 00:12:02', '2017-10-13 00:12:02'),
(613, 1, 'admin/keyword', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 00:12:16', '2017-10-13 00:12:16'),
(614, 1, 'admin/keyword', 'GET', '::1', '[]', '2017-10-13 00:13:26', '2017-10-13 00:13:26'),
(615, 1, 'admin/keyword', 'GET', '::1', '[]', '2017-10-13 00:13:45', '2017-10-13 00:13:45'),
(616, 1, 'admin/keyword', 'GET', '::1', '[]', '2017-10-13 00:14:08', '2017-10-13 00:14:08'),
(617, 1, 'admin/keyword', 'GET', '::1', '[]', '2017-10-13 00:14:23', '2017-10-13 00:14:23'),
(618, 1, 'admin/keyword', 'GET', '::1', '[]', '2017-10-13 00:15:01', '2017-10-13 00:15:01'),
(619, 1, 'admin/keyword', 'GET', '::1', '[]', '2017-10-13 00:17:33', '2017-10-13 00:17:33'),
(620, 1, 'admin/keyword/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 00:17:47', '2017-10-13 00:17:47'),
(621, 1, 'admin/keyword', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 00:17:50', '2017-10-13 00:17:50'),
(622, 1, 'admin/keyword/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 00:18:09', '2017-10-13 00:18:09'),
(623, 1, 'admin/keyword', 'POST', '::1', '{"initial":"aaaaaa","keyword":null,"description":null,"categories_id":"1","_token":"gh7JhIMoa0ZknanVs2BxnLW73y68BOrfdviSGIRi","_previous_":"http:\\/\\/localhost\\/admin\\/keyword"}', '2017-10-13 00:18:12', '2017-10-13 00:18:12'),
(624, 1, 'admin/keyword/create', 'GET', '::1', '[]', '2017-10-13 00:18:12', '2017-10-13 00:18:12'),
(625, 1, 'admin/keyword', 'POST', '::1', '{"initial":"a","keyword":null,"description":null,"categories_id":"1","_token":"gh7JhIMoa0ZknanVs2BxnLW73y68BOrfdviSGIRi"}', '2017-10-13 00:18:28', '2017-10-13 00:18:28'),
(626, 1, 'admin/keyword/create', 'GET', '::1', '[]', '2017-10-13 00:18:28', '2017-10-13 00:18:28'),
(627, 1, 'admin/quiz', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 00:21:51', '2017-10-13 00:21:51');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(628, 1, 'admin/quiz/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 00:21:53', '2017-10-13 00:21:53'),
(629, 1, 'admin', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 00:22:20', '2017-10-13 00:22:20'),
(630, 1, 'admin', 'GET', '::1', '[]', '2017-10-13 00:22:53', '2017-10-13 00:22:53'),
(631, 1, 'admin/generalusers', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 00:29:31', '2017-10-13 00:29:31'),
(632, 1, 'admin/quiz', 'GET', '::1', '[]', '2017-10-13 01:22:54', '2017-10-13 01:22:54'),
(633, 1, 'admin/quiz', 'GET', '::1', '[]', '2017-10-13 01:23:37', '2017-10-13 01:23:37'),
(634, 1, 'admin/quiz/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 01:23:40', '2017-10-13 01:23:40'),
(635, 1, 'admin/quiz', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 01:23:43', '2017-10-13 01:23:43'),
(636, 1, 'admin/quiz/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 01:24:11', '2017-10-13 01:24:11'),
(637, 1, 'admin/information', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 01:25:03', '2017-10-13 01:25:03'),
(638, 1, 'admin/information/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 01:25:06', '2017-10-13 01:25:06'),
(639, 1, 'admin/information', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 01:25:09', '2017-10-13 01:25:09'),
(640, 1, 'admin/information', 'GET', '::1', '[]', '2017-10-13 01:26:19', '2017-10-13 01:26:19'),
(641, 1, 'admin/keyword', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 01:26:23', '2017-10-13 01:26:23'),
(642, 1, 'admin/keyword/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 01:27:06', '2017-10-13 01:27:06'),
(643, 1, 'admin/keyword', 'POST', '::1', '{"initial":null,"keyword":null,"description":null,"categories_id":"1","_token":"14uCiiOW4FEZ1WODYqXtFZiCRRl4iy2toCYlKtWQ","_previous_":"http:\\/\\/localhost\\/admin\\/keyword"}', '2017-10-13 01:27:09', '2017-10-13 01:27:09'),
(644, 1, 'admin/keyword/create', 'GET', '::1', '[]', '2017-10-13 01:27:09', '2017-10-13 01:27:09'),
(645, 1, 'admin/keyword', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 01:28:33', '2017-10-13 01:28:33'),
(646, 1, 'admin/keyword/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 01:29:19', '2017-10-13 01:29:19'),
(647, 1, 'admin/keyword', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 01:29:27', '2017-10-13 01:29:27'),
(648, 1, 'admin/keyword/1/edit', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 01:29:58', '2017-10-13 01:29:58'),
(649, 1, 'admin/keyword', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 01:30:17', '2017-10-13 01:30:17'),
(650, 1, 'admin/keyword', 'GET', '::1', '[]', '2017-10-13 01:30:37', '2017-10-13 01:30:37'),
(651, 1, 'admin/information', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 01:30:45', '2017-10-13 01:30:45'),
(652, 1, 'admin/information', 'GET', '::1', '[]', '2017-10-13 01:31:53', '2017-10-13 01:31:53'),
(653, 1, 'admin/information/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 01:31:56', '2017-10-13 01:31:56'),
(654, 1, 'admin/information', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 01:31:57', '2017-10-13 01:31:57'),
(655, 1, 'admin/information/1/edit', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 01:31:59', '2017-10-13 01:31:59'),
(656, 1, 'admin/information', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 01:32:01', '2017-10-13 01:32:01'),
(657, 1, 'admin/information/1/edit', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 01:32:10', '2017-10-13 01:32:10'),
(658, 1, 'admin/information', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 01:32:12', '2017-10-13 01:32:12'),
(659, 1, 'admin/quiz', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 01:33:12', '2017-10-13 01:33:12'),
(660, 1, 'admin/quiz/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 01:33:17', '2017-10-13 01:33:17'),
(661, 1, 'admin/quiz', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 01:33:19', '2017-10-13 01:33:19'),
(662, 1, 'admin/quiz/1/edit', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 01:33:21', '2017-10-13 01:33:21'),
(663, 1, 'admin/quiz', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 01:33:26', '2017-10-13 01:33:26'),
(664, 1, 'admin/quiz/1/edit', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 01:33:29', '2017-10-13 01:33:29'),
(665, 1, 'admin/quiz', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 01:33:31', '2017-10-13 01:33:31'),
(666, 1, 'admin/information', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 01:33:41', '2017-10-13 01:33:41'),
(667, 1, 'admin/keyword', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 01:33:42', '2017-10-13 01:33:42'),
(668, 1, 'admin/generalusers', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 01:34:39', '2017-10-13 01:34:39'),
(669, 1, 'admin/generalusers', 'GET', '::1', '[]', '2017-10-13 01:35:44', '2017-10-13 01:35:44'),
(670, 1, 'admin', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 01:56:39', '2017-10-13 01:56:39'),
(671, 1, 'admin/quiz', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 01:56:48', '2017-10-13 01:56:48'),
(672, 1, 'admin/quiz', 'GET', '::1', '{"page":"2"}', '2017-10-13 02:34:50', '2017-10-13 02:34:50'),
(673, 1, 'admin/quiz', 'GET', '::1', '{"page":"1","_pjax":"#pjax-container"}', '2017-10-13 02:35:17', '2017-10-13 02:35:17'),
(674, 1, 'admin/quiz', 'GET', '::1', '{"page":"2","_pjax":"#pjax-container"}', '2017-10-13 04:01:29', '2017-10-13 04:01:29'),
(675, 1, 'admin/quiz', 'GET', '::1', '{"page":"1","_pjax":"#pjax-container"}', '2017-10-13 04:01:30', '2017-10-13 04:01:30'),
(676, 1, 'admin/quiz', 'GET', '::1', '{"page":"1"}', '2017-10-13 04:01:31', '2017-10-13 04:01:31'),
(677, 1, 'admin/keyword', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 04:06:31', '2017-10-13 04:06:31'),
(678, 1, 'admin/quiz', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 04:18:14', '2017-10-13 04:18:14'),
(679, 1, 'admin/quiz', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 04:19:26', '2017-10-13 04:19:26'),
(680, 1, 'admin/quiz', 'GET', '::1', '{"_pjax":"#pjax-container","page":"2"}', '2017-10-13 04:19:30', '2017-10-13 04:19:30'),
(681, 1, 'admin/quiz', 'GET', '::1', '{"_pjax":"#pjax-container","page":"1"}', '2017-10-13 04:19:34', '2017-10-13 04:19:34'),
(682, 1, 'admin/quiz', 'GET', '::1', '{"_pjax":"#pjax-container","page":"2"}', '2017-10-13 04:20:01', '2017-10-13 04:20:01'),
(683, 1, 'admin', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 04:20:21', '2017-10-13 04:20:21'),
(684, 1, 'admin/auth/users', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 04:20:31', '2017-10-13 04:20:31'),
(685, 1, 'admin/auth/menu', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 04:20:40', '2017-10-13 04:20:40'),
(686, 1, 'admin/auth/permissions', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 04:21:18', '2017-10-13 04:21:18'),
(687, 1, 'admin/auth/roles', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 04:21:31', '2017-10-13 04:21:31'),
(688, 1, 'admin/auth/users', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 04:21:34', '2017-10-13 04:21:34'),
(689, 1, 'admin/generalusers', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 04:21:37', '2017-10-13 04:21:37'),
(690, 1, 'admin/quiz', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 04:21:46', '2017-10-13 04:21:46'),
(691, 1, 'admin/information', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 04:21:49', '2017-10-13 04:21:49'),
(692, 1, 'admin/keyword', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 04:21:53', '2017-10-13 04:21:53'),
(693, 1, 'admin/information', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 04:21:56', '2017-10-13 04:21:56'),
(694, 1, 'admin/keyword', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 04:22:37', '2017-10-13 04:22:37'),
(695, 1, 'admin/keyword/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 04:22:41', '2017-10-13 04:22:41'),
(696, 1, 'admin/keyword', 'POST', '::1', '{"initial":null,"keyword":null,"description":null,"categories_id":"1","_token":"m5QK5JoeWNgwfjG93g6DWlE1oL95hcrhEOhMdzN7","_previous_":"http:\\/\\/localhost\\/admin\\/keyword"}', '2017-10-13 04:22:46', '2017-10-13 04:22:46'),
(697, 1, 'admin/keyword/create', 'GET', '::1', '[]', '2017-10-13 04:22:46', '2017-10-13 04:22:46'),
(698, 1, 'admin/keyword', 'POST', '::1', '{"initial":"\\uff11\\uff11","keyword":null,"description":null,"categories_id":"1","_token":"m5QK5JoeWNgwfjG93g6DWlE1oL95hcrhEOhMdzN7"}', '2017-10-13 04:22:58', '2017-10-13 04:22:58'),
(699, 1, 'admin/keyword/create', 'GET', '::1', '[]', '2017-10-13 04:22:58', '2017-10-13 04:22:58'),
(700, 1, 'admin/keyword', 'POST', '::1', '{"initial":null,"keyword":null,"description":null,"categories_id":null,"_token":"m5QK5JoeWNgwfjG93g6DWlE1oL95hcrhEOhMdzN7"}', '2017-10-13 04:23:23', '2017-10-13 04:23:23'),
(701, 1, 'admin/keyword/create', 'GET', '::1', '[]', '2017-10-13 04:23:23', '2017-10-13 04:23:23'),
(702, 1, 'admin/quiz', 'GET', '::1', '[]', '2017-10-13 04:33:31', '2017-10-13 04:33:31'),
(703, 1, 'admin/keyword', 'POST', '::1', '{"initial":"S","keyword":"SEO","description":"SEO\\uff08Search Engine Optimization\\uff09\\u306f\\u3001\\u30b5\\u30fc\\u30c1\\u30a8\\u30f3\\u30b8\\u30f3\\u6700\\u9069\\u5316\\u3068\\u8a33\\u3055\\u308c\\u3001\\u691c\\u7d22\\u30a8\\u30f3\\u30b8\\u30f3\\u3067\\u7279\\u5b9a\\u306e\\u30ad\\u30fc\\u30ef\\u30fc\\u30c9\\u3067\\u691c\\u7d22\\u3055\\u308c\\u305f\\u3068\\u304d\\u306b\\u3001\\u5bfe\\u8c61\\u306e\\u30b5\\u30a4\\u30c8\\u304c\\u691c\\u7d22\\u7d50\\u679c\\u4e0a\\u4f4d\\u306b\\u8868\\u793a\\u3055\\u308c\\u308b\\u3088\\u3046\\u306bWEB\\u30b5\\u30a4\\u30c8\\u306e\\u8a18\\u8ff0\\u3084\\u8a2d\\u8a08\\u3092\\u5de5\\u592b\\u3059\\u308b\\u624b\\u6cd5\\u3002","categories_id":"5","_token":"m5QK5JoeWNgwfjG93g6DWlE1oL95hcrhEOhMdzN7"}', '2017-10-13 04:34:47', '2017-10-13 04:34:47'),
(704, 1, 'admin/keyword', 'GET', '::1', '[]', '2017-10-13 04:34:47', '2017-10-13 04:34:47'),
(705, 1, 'admin/keyword/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 04:34:51', '2017-10-13 04:34:51'),
(706, 1, 'admin/keyword', 'POST', '::1', '{"initial":"S","keyword":"SQL\\u30a4\\u30f3\\u30b8\\u30a7\\u30af\\u30b7\\u30e7\\u30f3","description":"\\u30a2\\u30d7\\u30ea\\u30b1\\u30fc\\u30b7\\u30e7\\u30f3\\u306e\\u30bb\\u30ad\\u30e5\\u30ea\\u30c6\\u30a3\\u4e0a\\u306e\\u4e0d\\u5099\\u3092\\u610f\\u56f3\\u7684\\u306b\\u5229\\u7528\\u3057\\u3001\\u30a2\\u30d7\\u30ea\\u30b1\\u30fc\\u30b7\\u30e7\\u30f3\\u304c\\u60f3\\u5b9a\\u3057\\u306a\\u3044SQL\\u6587\\u3092\\u5b9f\\u884c\\u3055\\u305b\\u308b\\u3053\\u3068\\u306b\\u3088\\u308a\\u3001\\u30c7\\u30fc\\u30bf\\u30d9\\u30fc\\u30b9\\u30b7\\u30b9\\u30c6\\u30e0\\u3092\\u4e0d\\u6b63\\u306b\\u64cd\\u4f5c\\u3059\\u308b\\u653b\\u6483\\u65b9\\u6cd5\\u306e\\u3053\\u3068\\u3002","categories_id":"5","_token":"m5QK5JoeWNgwfjG93g6DWlE1oL95hcrhEOhMdzN7","_previous_":"http:\\/\\/localhost\\/admin\\/keyword"}', '2017-10-13 04:35:52', '2017-10-13 04:35:52'),
(707, 1, 'admin/keyword', 'GET', '::1', '[]', '2017-10-13 04:35:53', '2017-10-13 04:35:53'),
(708, 1, 'admin/keyword/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 04:36:10', '2017-10-13 04:36:10'),
(709, 1, 'admin/keyword', 'POST', '::1', '{"initial":"S","keyword":"SSL","description":"\\u30a4\\u30f3\\u30bf\\u30fc\\u30cd\\u30c3\\u30c8\\u4e0a\\u3067\\u60c5\\u5831\\u3092\\u6697\\u53f7\\u5316\\u3057\\u3066\\u5b89\\u5168\\u306b\\u9001\\u53d7\\u4fe1\\u3059\\u308b\\u305f\\u3081\\u306e\\u4ed5\\u7d44\\u307f\\u3002","categories_id":"1","_token":"m5QK5JoeWNgwfjG93g6DWlE1oL95hcrhEOhMdzN7","_previous_":"http:\\/\\/localhost\\/admin\\/keyword"}', '2017-10-13 04:36:52', '2017-10-13 04:36:52'),
(710, 1, 'admin/keyword', 'GET', '::1', '[]', '2017-10-13 04:36:52', '2017-10-13 04:36:52'),
(711, 1, 'admin/keyword/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 04:36:57', '2017-10-13 04:36:57'),
(712, 1, 'admin/keyword', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 04:37:10', '2017-10-13 04:37:10'),
(713, 1, 'admin/keyword/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 04:38:36', '2017-10-13 04:38:36'),
(714, 1, 'admin/keyword', 'POST', '::1', '{"initial":"S","keyword":"SNS","description":"\\u30cd\\u30c3\\u30c8\\u30ef\\u30fc\\u30af\\u3092\\u901a\\u3058\\u3066\\u4eba\\u3068\\u4eba\\u306e\\u30b3\\u30df\\u30e5\\u30cb\\u30b1\\u30fc\\u30b7\\u30e7\\u30f3\\u3092\\u4fc3\\u9032\\u3059\\u308bWeb\\u30b5\\u30a4\\u30c8\\u30b5\\u30fc\\u30d3\\u30b9\\u3002","categories_id":"5","_token":"m5QK5JoeWNgwfjG93g6DWlE1oL95hcrhEOhMdzN7","_previous_":"http:\\/\\/localhost\\/admin\\/keyword"}', '2017-10-13 04:38:51', '2017-10-13 04:38:51'),
(715, 1, 'admin/keyword', 'GET', '::1', '[]', '2017-10-13 04:38:51', '2017-10-13 04:38:51'),
(716, 1, 'admin/keyword/13/edit', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 04:39:06', '2017-10-13 04:39:06'),
(717, 1, 'admin/keyword/13', 'PUT', '::1', '{"initial":"S","keyword":"SSL","description":"\\u30a4\\u30f3\\u30bf\\u30fc\\u30cd\\u30c3\\u30c8\\u4e0a\\u3067\\u60c5\\u5831\\u3092\\u6697\\u53f7\\u5316\\u3057\\u3066\\u5b89\\u5168\\u306b\\u9001\\u53d7\\u4fe1\\u3059\\u308b\\u305f\\u3081\\u306e\\u4ed5\\u7d44\\u307f\\u3002","categories_id":"5","_token":"m5QK5JoeWNgwfjG93g6DWlE1oL95hcrhEOhMdzN7","_method":"PUT","_previous_":"http:\\/\\/localhost\\/admin\\/keyword"}', '2017-10-13 04:39:10', '2017-10-13 04:39:10'),
(718, 1, 'admin/keyword', 'GET', '::1', '[]', '2017-10-13 04:39:10', '2017-10-13 04:39:10'),
(719, 1, 'admin/keyword/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 04:39:45', '2017-10-13 04:39:45'),
(720, 1, 'admin/keyword', 'POST', '::1', '{"initial":"P","keyword":"Paas","description":"\\u30a2\\u30d7\\u30ea\\u30b1\\u30fc\\u30b7\\u30e7\\u30f3\\u3092\\u7a3c\\u50cd\\u3055\\u305b\\u308b\\u305f\\u3081\\u306b\\u5fc5\\u8981\\u306a\\u30cf\\u30fc\\u30c9\\u30a6\\u30a7\\u30a2\\u3001\\u958b\\u767a\\u74b0\\u5883\\u3001\\u30df\\u30c9\\u30eb\\u30a6\\u30a7\\u30a2\\u3001OS\\u3001\\u30c7\\u30fc\\u30bf\\u30d9\\u30fc\\u30b9\\u306a\\u3069\\u306e\\u57fa\\u76e4\\uff08\\u30d7\\u30e9\\u30c3\\u30c8\\u30d5\\u30a9\\u30fc\\u30e0\\uff09\\u3092\\u63d0\\u4f9b\\u3059\\u308b\\u30af\\u30e9\\u30a6\\u30c9\\u30b5\\u30fc\\u30d3\\u30b9\\u306e\\u3053\\u3068\\u3002","categories_id":"5","_token":"m5QK5JoeWNgwfjG93g6DWlE1oL95hcrhEOhMdzN7","_previous_":"http:\\/\\/localhost\\/admin\\/keyword"}', '2017-10-13 04:39:58', '2017-10-13 04:39:58'),
(721, 1, 'admin/keyword', 'GET', '::1', '[]', '2017-10-13 04:39:58', '2017-10-13 04:39:58'),
(722, 1, 'admin/keyword/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 04:40:19', '2017-10-13 04:40:19'),
(723, 1, 'admin/keyword', 'POST', '::1', '{"initial":"P","keyword":"POS\\u30b7\\u30b9\\u30c6\\u30e0","description":"\\u30b9\\u30fc\\u30d1\\u30fc\\u3001\\u30b3\\u30f3\\u30d3\\u30cb\\u306a\\u3069\\u3067\\u5728\\u5eab\\u7ba1\\u7406\\u3084\\u3001\\u305d\\u308c\\u306b\\u4f34\\u3063\\u3066\\u30de\\u30fc\\u30b1\\u30c6\\u30a3\\u30f3\\u30b0\\u30c4\\u30fc\\u30eb\\u3068\\u3057\\u3066\\u7528\\u3044\\u3089\\u308c\\u3066\\u3044\\u308b\\u3002","categories_id":"5","_token":"m5QK5JoeWNgwfjG93g6DWlE1oL95hcrhEOhMdzN7","_previous_":"http:\\/\\/localhost\\/admin\\/keyword"}', '2017-10-13 04:40:49', '2017-10-13 04:40:49'),
(724, 1, 'admin/keyword', 'GET', '::1', '[]', '2017-10-13 04:40:49', '2017-10-13 04:40:49'),
(725, 1, 'admin/keyword/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 04:41:26', '2017-10-13 04:41:26'),
(726, 1, 'admin/keyword', 'POST', '::1', '{"initial":"S","keyword":"SSD","description":"SSD\\u3068\\u306f\\u3001\\u9ad8\\u901f\\u30b9\\u30c8\\u30ec\\u30fc\\u30b8\\u306e\\u4e8b\\u3002\\u9ad8\\u901f\\u306e\\u30b9\\u30c8\\u30ec\\u30fc\\u30b8\\u3068\\u3044\\u3048\\u3070HDD\\u304c\\u3042\\u308b\\u304c\\u3001SSD\\u306fHDD\\u306e\\u3088\\u3046\\u306b\\u30c7\\u30a3\\u30b9\\u30af\\u3092\\u6301\\u305f\\u306a\\u3044\\u3002\\u305d\\u306e\\u305f\\u3081\\u3001\\u30c7\\u30fc\\u30bf\\u306e\\u8aad\\u307f\\u66f8\\u304d\\u306e\\u969b\\u306b\\u8aad\\u307f\\u53d6\\u308a\\u88c5\\u7f6e\\u3092\\u30c7\\u30a3\\u30b9\\u30af\\u4e0a\\u3067\\u79fb\\u52d5\\u3055\\u305b\\u308b\\u6642\\u9593\\u3084\\u3001\\u30c7\\u30a3\\u30b9\\u30af\\u4e0a\\u306e\\u76ee\\u7684\\u306e\\u30c7\\u30fc\\u30bf\\u304c\\u30d8\\u30c3\\u30c9\\u4f4d\\u7f6e\\u307e\\u3067\\u56de\\u8ee2\\u3057\\u3066\\u304f\\u308b\\u6642\\u9593\\u304c\\u5b58\\u5728\\u3057\\u306a\\u3044\\u306e\\u3067\\u3001HDD\\u3068\\u6bd4\\u8f03\\u3057\\u3066\\u3082\\u66f4\\u306b\\u9ad8\\u901f\\u306e\\u30b9\\u30c8\\u30ec\\u30fc\\u30b8\\u3068\\u306a\\u3063\\u3066\\u3044\\u308b","categories_id":"5","_token":"m5QK5JoeWNgwfjG93g6DWlE1oL95hcrhEOhMdzN7","_previous_":"http:\\/\\/localhost\\/admin\\/keyword"}', '2017-10-13 04:41:40', '2017-10-13 04:41:40'),
(727, 1, 'admin/keyword', 'GET', '::1', '[]', '2017-10-13 04:41:40', '2017-10-13 04:41:40'),
(728, 1, 'admin/keyword/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 04:43:48', '2017-10-13 04:43:48'),
(729, 1, 'admin/keyword', 'POST', '::1', '{"initial":"G","keyword":"GUI","description":"\\u30b0\\u30e9\\u30d5\\u30a3\\u30ab\\u30eb\\u30e6\\u30fc\\u30b6\\u30a4\\u30f3\\u30bf\\u30fc\\u30d5\\u30a7\\u30fc\\u30b9(Graphical User Interface)\\u306e\\u7565\\u8a9e\\u3002\\u30b3\\u30f3\\u30d4\\u30e5\\u30fc\\u30bf\\u3078\\u51fa\\u3059\\u547d\\u4ee4\\u3084\\u6307\\u793a\\u7b49\\u3092\\u3001\\u30e6\\u30fc\\u30b6\\u304c\\u753b\\u9762\\u4e0a\\u3067\\u8996\\u899a\\u7684\\u306b\\u6349\\u3048\\u3066\\u884c\\u52d5\\u3092\\u6307\\u5b9a\\u3067\\u304d\\u308b\\u3082\\u306e\\u3067\\u3001\\u305d\\u308c\\u307e\\u3067\\u4e3b\\u6d41\\u3067\\u3042\\u3063\\u305f\\u547d\\u4ee4\\u6587\\u3092\\u5165\\u529b\\u3057\\u3066\\u5b9f\\u884c\\u3059\\u308b\\u65b9\\u5f0f(CUI)\\u306b\\u6bd4\\u3079\\u3001\\u76f4\\u611f\\u7684\\u306b\\u64cd\\u4f5c\\u3067\\u304d\\u308b\\u306e\\u304c\\u7279\\u9577\\u3002","categories_id":"5","_token":"m5QK5JoeWNgwfjG93g6DWlE1oL95hcrhEOhMdzN7","_previous_":"http:\\/\\/localhost\\/admin\\/keyword"}', '2017-10-13 04:43:58', '2017-10-13 04:43:58'),
(730, 1, 'admin/keyword', 'GET', '::1', '[]', '2017-10-13 04:43:58', '2017-10-13 04:43:58'),
(731, 1, 'admin/keyword/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 04:44:16', '2017-10-13 04:44:16'),
(732, 1, 'admin/keyword', 'POST', '::1', '{"initial":"O","keyword":"OS","description":"\\u30aa\\u30da\\u30ec\\u30fc\\u30c6\\u30a3\\u30f3\\u30b0\\u30fb\\u30b7\\u30b9\\u30c6\\u30e0 (Operating System) \\u306e\\u7565\\u3067\\u3001\\u30b3\\u30f3\\u30d4\\u30e5\\u30fc\\u30bf\\u30fc\\u306e\\u6839\\u5e79\\u90e8\\u5206\\u3067\\u52d5\\u4f5c\\u3057\\u3066\\u5404\\u30a2\\u30d7\\u30ea\\u30b1\\u30fc\\u30b7\\u30e7\\u30f3\\u306b\\u5171\\u901a\\u30a4\\u30f3\\u30bf\\u30fc\\u30d5\\u30a7\\u30fc\\u30b9\\u3092\\u63d0\\u4f9b\\u3059\\u308b\\u30bd\\u30d5\\u30c8\\u30a6\\u30a7\\u30a2\\u306e\\u3053\\u3068\\u3067\\u3042\\u308b\\u3002","categories_id":"5","_token":"m5QK5JoeWNgwfjG93g6DWlE1oL95hcrhEOhMdzN7","_previous_":"http:\\/\\/localhost\\/admin\\/keyword"}', '2017-10-13 04:44:26', '2017-10-13 04:44:26'),
(733, 1, 'admin/keyword', 'GET', '::1', '[]', '2017-10-13 04:44:26', '2017-10-13 04:44:26'),
(734, 1, 'admin/keyword/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 04:45:12', '2017-10-13 04:45:12'),
(735, 1, 'admin/keyword', 'POST', '::1', '{"initial":"L","keyword":"Linux","description":"\\u8ab0\\u3082\\u304c\\u5229\\u7528\\u30fb\\u8907\\u88fd\\u30fb\\u6539\\u5909\\u30fb\\u518d\\u914d\\u3067\\u304d\\u308bUNIX\\u4e92\\u63db\\u306eOS(\\u30aa\\u30da\\u30ec\\u30fc\\u30b7\\u30e7\\u30f3\\u30b7\\u30b9\\u30c6\\u30e0)\\u30021991\\u5e74\\u306b\\u3001\\u5f53\\u6642\\u30d5\\u30a3\\u30f3\\u30e9\\u30f3\\u30c9\\u306e\\u30d8\\u30eb\\u30b7\\u30f3\\u30ad\\u5927\\u5b66\\u306b\\u901a\\u3046\\u5b66\\u751f\\u306e\\u30ea\\u30fc\\u30ca\\u30b9\\u30fb\\u30c8\\u30fc\\u30d0\\u30eb\\u30ba\\u6c0f\\u304c\\u65e2\\u5b58\\u306e\\u30bd\\u30fc\\u30b9\\u3092\\u4f7f\\u3046\\u3053\\u3068\\u306a\\u304f\\u958b\\u767a\\u3055\\u308c\\u3001\\u7121\\u511f\\u3067\\u30bd\\u30fc\\u30b9\\u30b3\\u30fc\\u30c9\\u304c\\u516c\\u958b\\u3055\\u308c\\u3066\\u3044\\u308b\\u30aa\\u30fc\\u30d7\\u30f3\\u30bd\\u30fc\\u30b9\\u3068\\u306a\\u3063\\u3066\\u3044\\u308b\\u3002","categories_id":"5","_token":"m5QK5JoeWNgwfjG93g6DWlE1oL95hcrhEOhMdzN7","_previous_":"http:\\/\\/localhost\\/admin\\/keyword"}', '2017-10-13 04:45:29', '2017-10-13 04:45:29'),
(736, 1, 'admin/keyword', 'GET', '::1', '[]', '2017-10-13 04:45:29', '2017-10-13 04:45:29'),
(737, 1, 'admin/keyword/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 04:46:05', '2017-10-13 04:46:05'),
(738, 1, 'admin/keyword', 'POST', '::1', '{"initial":"L","keyword":"LAN","description":"\\u30ed\\u30fc\\u30ab\\u30eb\\u30cd\\u30c3\\u30c8\\u30ef\\u30fc\\u30af\\u306e\\u7565\\u8a9e\\u3002\\u5bb6\\u5ead\\u5185\\u3084\\u793e\\u5185\\u306a\\u3069\\u306e\\u30d7\\u30e9\\u30a4\\u30d9\\u30fc\\u30c8\\u30cd\\u30c3\\u30c8\\u30ef\\u30fc\\u30af\\u306e\\u3053\\u3068\\u3002","categories_id":"5","_token":"m5QK5JoeWNgwfjG93g6DWlE1oL95hcrhEOhMdzN7","_previous_":"http:\\/\\/localhost\\/admin\\/keyword"}', '2017-10-13 04:46:25', '2017-10-13 04:46:25'),
(739, 1, 'admin/keyword', 'GET', '::1', '[]', '2017-10-13 04:46:25', '2017-10-13 04:46:25'),
(740, 1, 'admin/keyword/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 04:46:52', '2017-10-13 04:46:52'),
(741, 1, 'admin/keyword', 'POST', '::1', '{"initial":"H","keyword":"HTTPS","description":"HTTP\\u304cSSL\\u3084TLS\\u3067\\u6697\\u53f7\\u5316\\u3055\\u308c\\u3066\\u3044\\u308b\\u72b6\\u614b\\u306e\\u30d7\\u30ed\\u30c8\\u30b3\\u30eb\\u3092\\u6307\\u3059\\u3002","categories_id":"5","_token":"m5QK5JoeWNgwfjG93g6DWlE1oL95hcrhEOhMdzN7","_previous_":"http:\\/\\/localhost\\/admin\\/keyword"}', '2017-10-13 04:47:12', '2017-10-13 04:47:12'),
(742, 1, 'admin/keyword', 'GET', '::1', '[]', '2017-10-13 04:47:12', '2017-10-13 04:47:12'),
(743, 1, 'admin/keyword/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 04:47:24', '2017-10-13 04:47:24'),
(744, 1, 'admin/keyword', 'POST', '::1', '{"initial":"F","keyword":"Firefox","description":"Mozilla Foundation\\u304c\\u958b\\u767a\\u3057\\u305f\\u30aa\\u30fc\\u30d7\\u30f3\\u30bd\\u30fc\\u30b9\\u306eWeb\\u30d6\\u30e9\\u30a6\\u30b6\\u3067\\u30012004\\u5e74\\u306b\\u767b\\u5834\\u3057\\u3066\\u4ee5\\u6765\\u3001\\u4e16\\u754c\\u3067\\u6700\\u3082\\u3088\\u304f\\u4f7f\\u308f\\u308c\\u3066\\u3044\\u308bWeb\\u30d6\\u30e9\\u30a6\\u30b6\\u306e\\u3072\\u3068\\u3064\\u3067\\u3042\\u308b\\u3002","categories_id":"5","_token":"m5QK5JoeWNgwfjG93g6DWlE1oL95hcrhEOhMdzN7","_previous_":"http:\\/\\/localhost\\/admin\\/keyword"}', '2017-10-13 04:47:39', '2017-10-13 04:47:39'),
(745, 1, 'admin/keyword', 'GET', '::1', '[]', '2017-10-13 04:47:39', '2017-10-13 04:47:39'),
(746, 1, 'admin/keyword/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 04:48:30', '2017-10-13 04:48:30'),
(747, 1, 'admin/keyword', 'POST', '::1', '{"initial":"G","keyword":"Google Chrome","description":"Google\\u304c\\u958b\\u767a\\u3057\\u3066\\u3044\\u308b\\u30a6\\u30a7\\u30d6\\u30d6\\u30e9\\u30a6\\u30b6\\u3067\\u3042\\u308b\\u3002","categories_id":"5","_token":"m5QK5JoeWNgwfjG93g6DWlE1oL95hcrhEOhMdzN7","_previous_":"http:\\/\\/localhost\\/admin\\/keyword"}', '2017-10-13 04:48:52', '2017-10-13 04:48:52'),
(748, 1, 'admin/keyword', 'GET', '::1', '[]', '2017-10-13 04:48:52', '2017-10-13 04:48:52'),
(749, 1, 'admin/keyword/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 04:49:01', '2017-10-13 04:49:01'),
(750, 1, 'admin/keyword', 'POST', '::1', '{"initial":"I","keyword":"Internet Explorer","description":"\\u30de\\u30a4\\u30af\\u30ed\\u30bd\\u30d5\\u30c8\\u304c\\u958b\\u767a\\u3059\\u308b\\u30a6\\u30a7\\u30d6\\u30d6\\u30e9\\u30a6\\u30b6\\u3067\\u3042\\u308b\\u3002","categories_id":"5","_token":"m5QK5JoeWNgwfjG93g6DWlE1oL95hcrhEOhMdzN7","_previous_":"http:\\/\\/localhost\\/admin\\/keyword"}', '2017-10-13 04:50:00', '2017-10-13 04:50:00'),
(751, 1, 'admin/keyword', 'GET', '::1', '[]', '2017-10-13 04:50:00', '2017-10-13 04:50:00'),
(752, 1, 'admin/keyword/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 04:50:41', '2017-10-13 04:50:41'),
(753, 1, 'admin/keyword', 'POST', '::1', '{"initial":"\\u3042","keyword":"\\u30a2\\u30d5\\u30a3\\u30ea\\u30a8\\u30a4\\u30c8","description":"\\u30db\\u30fc\\u30e0\\u30da\\u30fc\\u30b8\\u3084\\u30d6\\u30ed\\u30b0\\u306a\\u3069\\u306b\\u5e83\\u544a\\u3092\\u63b2\\u8f09\\u3057\\u3066\\u5831\\u916c\\u3092\\u3082\\u3089\\u3046\\u4ed5\\u7d44\\u307f\\u3002","categories_id":"5","_token":"m5QK5JoeWNgwfjG93g6DWlE1oL95hcrhEOhMdzN7","_previous_":"http:\\/\\/localhost\\/admin\\/keyword"}', '2017-10-13 04:50:57', '2017-10-13 04:50:57'),
(754, 1, 'admin/keyword', 'GET', '::1', '[]', '2017-10-13 04:50:57', '2017-10-13 04:50:57'),
(755, 1, 'admin/keyword/create', 'GET', '::1', '[]', '2017-10-13 04:56:39', '2017-10-13 04:56:39'),
(756, 1, 'admin/keyword', 'POST', '::1', '{"initial":"E","keyword":"E\\u30b3\\u30de\\u30fc\\u30b9","description":"\\u30a4\\u30f3\\u30bf\\u30fc\\u30cd\\u30c3\\u30c8\\u306a\\u3069\\u306e\\u30cd\\u30c3\\u30c8\\u30ef\\u30fc\\u30af\\u3092\\u5229\\u7528\\u3057\\u3066\\u3001\\u5951\\u7d04\\u3084\\u6c7a\\u6e08\\u306a\\u3069\\u3092\\u884c\\u3046\\u53d6\\u5f15\\u5f62\\u614b\\u306e\\u3053\\u3068\\u3002","categories_id":"5","_token":"l7Ntamwt68n78e6B3A0BBn8K1a2hGAVZJJpRTcwm"}', '2017-10-13 04:57:04', '2017-10-13 04:57:04'),
(757, 1, 'admin/keyword', 'GET', '::1', '[]', '2017-10-13 04:57:04', '2017-10-13 04:57:04'),
(758, 1, 'admin/keyword/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 04:57:54', '2017-10-13 04:57:54'),
(759, 1, 'admin/keyword', 'POST', '::1', '{"initial":"C","keyword":"CUI","description":"\\u30ad\\u30fc\\u30dc\\u30fc\\u30c9\\u306b\\u5165\\u529b\\u3055\\u308c\\u308b\\u30b3\\u30de\\u30f3\\u30c9\\u306b\\u3088\\u3063\\u3066\\u3001\\u30aa\\u30da\\u30ec\\u30fc\\u30c6\\u30a3\\u30f3\\u30b0\\u30fb\\u30b7\\u30b9\\u30c6\\u30e0\\u4e0a\\u306e\\u64cd\\u4f5c\\u3092\\u884c\\u3046\\u3001\\u30e6\\u30fc\\u30b6\\u30fc\\u30a4\\u30f3\\u30bf\\u30fc\\u30d5\\u30a7\\u30fc\\u30b9\\u306e\\u4e8b\\u3092\\u8a00\\u3046\\u3002","categories_id":"5","_token":"l7Ntamwt68n78e6B3A0BBn8K1a2hGAVZJJpRTcwm","_previous_":"http:\\/\\/localhost\\/admin\\/keyword"}', '2017-10-13 04:58:13', '2017-10-13 04:58:13'),
(760, 1, 'admin/keyword', 'GET', '::1', '[]', '2017-10-13 04:58:14', '2017-10-13 04:58:14'),
(761, 1, 'admin/keyword/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 04:58:39', '2017-10-13 04:58:39'),
(762, 1, 'admin/keyword', 'POST', '::1', '{"initial":"A","keyword":"android","description":"\\u30b0\\u30fc\\u30b0\\u30eb\\u793e\\u304c\\u63d0\\u4f9b\\u3059\\u308b\\u30aa\\u30da\\u30ec\\u30fc\\u30c6\\u30a3\\u30f3\\u30b0\\u30fb\\u30b7\\u30b9\\u30c6\\u30e0(OS)\\u306e\\u4e00\\u3064\\u3067\\u3042\\u308a\\u3001\\u4e3b\\u306b\\u30b9\\u30de\\u30fc\\u30c8\\u30d5\\u30a9\\u30f3\\u3084\\u30bf\\u30d6\\u30ec\\u30c3\\u30c8\\u3067\\u4f7f\\u7528\\u3055\\u308c\\u3066\\u3044\\u308b\\u3002","categories_id":"5","_token":"l7Ntamwt68n78e6B3A0BBn8K1a2hGAVZJJpRTcwm","_previous_":"http:\\/\\/localhost\\/admin\\/keyword"}', '2017-10-13 04:59:01', '2017-10-13 04:59:01'),
(763, 1, 'admin/keyword', 'GET', '::1', '[]', '2017-10-13 04:59:01', '2017-10-13 04:59:01'),
(764, 1, 'admin/keyword/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 04:59:39', '2017-10-13 04:59:39'),
(765, 1, 'admin/keyword', 'POST', '::1', '{"initial":"I","keyword":"iOS","description":"\\u4e3b\\u306b\\u30a2\\u30c3\\u30d7\\u30eb\\u793e\\u88fd\\u306e\\u30b9\\u30de\\u30fc\\u30c8\\u30d5\\u30a9\\u30f3\\u300ciPhone\\u300d\\u30b7\\u30ea\\u30fc\\u30ba\\u306b\\u642d\\u8f09\\u3055\\u308c\\u3066\\u3044\\u308b\\u30aa\\u30da\\u30ec\\u30fc\\u30c6\\u30a3\\u30f3\\u30b0\\u30fb\\u30b7\\u30b9\\u30c6\\u30e0(OS)\\u306e\\u3053\\u3068\\u3002\\u4ed6\\u306b\\u3082iPod touch\\u3084iPad\\u306a\\u3069\\u3001\\u30a2\\u30c3\\u30d7\\u30eb\\u793e\\u88fd\\u306e\\u88fd\\u54c1\\u306b\\u642d\\u8f09\\u3055\\u308c\\u3066\\u3044\\u308b\\u3002","categories_id":"5","_token":"l7Ntamwt68n78e6B3A0BBn8K1a2hGAVZJJpRTcwm","_previous_":"http:\\/\\/localhost\\/admin\\/keyword"}', '2017-10-13 04:59:54', '2017-10-13 04:59:54'),
(766, 1, 'admin/keyword', 'GET', '::1', '[]', '2017-10-13 04:59:54', '2017-10-13 04:59:54'),
(767, 1, 'admin/keyword/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 05:00:56', '2017-10-13 05:00:56'),
(768, 1, 'admin/keyword', 'POST', '::1', '{"initial":"\\u304f","keyword":"\\u30af\\u30ed\\u30b9\\u30b5\\u30a4\\u30c8\\u30b9\\u30af\\u30ea\\u30d7\\u30c6\\u30a3\\u30f3\\u30b0","description":"Web\\u30b5\\u30a4\\u30c8\\u3067\\u30ad\\u30fc\\u30ef\\u30fc\\u30c9\\u3092\\u5165\\u529b\\u3059\\u308b\\u6b04\\u306b\\u30b9\\u30af\\u30ea\\u30d7\\u30c8 \\u542b\\u3093\\u3060\\u30bf\\u30b0\\u3092\\u6253\\u3061\\u8fbc\\u3080\\u3068\\u3001\\u305d\\u306e\\u30b5\\u30fc\\u30d0\\u306e\\u8106\\u5f31\\u6027\\u306e\\u5ea6\\u5408\\u3044\\u306b\\u3088\\u3063\\u3066\\u3001 cookie\\u3092\\u53d6\\u5f97\\u3067\\u304d\\u305f\\u308a\\u3001\\u7b2c\\u4e09\\u8005\\u306b\\u610f\\u56f3\\u3057\\u306a\\u3044\\u30c7\\u30fc\\u30bf\\u3092\\u53d6\\u5f97\\u3055\\u308c\\u308b \\u306a\\u3069\\u60c5\\u5831\\u3092\\u4ed6\\u4eba\\u306b\\u5f15\\u304d\\u629c\\u304b\\u308c\\u308b\\u3053\\u3068\\u3002","categories_id":"5","_token":"l7Ntamwt68n78e6B3A0BBn8K1a2hGAVZJJpRTcwm","_previous_":"http:\\/\\/localhost\\/admin\\/keyword"}', '2017-10-13 05:01:20', '2017-10-13 05:01:20'),
(769, 1, 'admin/keyword', 'GET', '::1', '[]', '2017-10-13 05:01:20', '2017-10-13 05:01:20'),
(770, 1, 'admin/keyword/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 05:02:04', '2017-10-13 05:02:04'),
(771, 1, 'admin/keyword', 'POST', '::1', '{"initial":"\\u304f","keyword":"\\u30af\\u30e9\\u30c3\\u30ab\\u30fc","description":"\\u4ed6\\u4eba\\u306e\\u30b7\\u30b9\\u30c6\\u30e0\\u3092\\u4e0d\\u6b63\\u306b\\u4f7f\\u7528\\u3057\\u305f\\u308a\\u3001\\u305d\\u308c\\u3092\\u7834\\u58ca\\u3059\\u308b\\u76ee\\u7684\\u3067\\u30cd\\u30c3\\u30c8\\u30ef\\u30fc\\u30af\\u306b\\u4fb5\\u5165\\u3057\\u3001\\u30c7\\u30fc\\u30bf\\u3084\\u30d7\\u30ed\\u30b0\\u30e9\\u30e0\\u3092\\u6539\\u5909\\u3057\\u305f\\u308a\\u3001\\u76d7\\u307f\\u898b\\u3057\\u305f\\u308a\\u3001\\u7834\\u58ca\\u3059\\u308b\\u306a\\u3069 \\u72af\\u7f6a\\u884c\\u70ba\\u3092\\u3059\\u308b\\u3072\\u3068\\u306e\\u3053\\u3068\\u3002","categories_id":"5","_token":"l7Ntamwt68n78e6B3A0BBn8K1a2hGAVZJJpRTcwm","_previous_":"http:\\/\\/localhost\\/admin\\/keyword"}', '2017-10-13 05:02:22', '2017-10-13 05:02:22'),
(772, 1, 'admin/keyword', 'GET', '::1', '[]', '2017-10-13 05:02:23', '2017-10-13 05:02:23'),
(773, 1, 'admin/keyword/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 05:03:05', '2017-10-13 05:03:05'),
(774, 1, 'admin/keyword', 'POST', '::1', '{"initial":"B","keyword":"BIOS(\\u3070\\u3044\\u304a\\u3059)","description":"Basic Input\\/Output System\\u306e\\u982d\\u6587\\u5b57\\u3092\\u3068\\u3063\\u305f\\u7565\\u8a9e\\u3002\\u30d1\\u30bd\\u30b3\\u30f3\\u306b\\u63a5\\u7d9a\\u3055\\u308c\\u305f\\u6a5f\\u5668\\u306e\\u5165\\u51fa\\u529b(\\u30a4\\u30f3\\u30d7\\u30c3\\u30c8\\u30fb\\u30a2\\u30a6\\u30c8\\u30d7\\u30c3\\u30c8)\\u3092\\u7ba1\\u7406\\u30fb\\u5236\\u5fa1\\u3059\\u308b\\u30bd\\u30d5\\u30c8\\u30a6\\u30a7\\u30a2\\u306e\\u3053\\u3068\\u3092\\u8a00\\u3046\\u3002\\u30de\\u30b6\\u30fc\\u30dc\\u30fc\\u30c9\\u306b\\u53d6\\u308a\\u4ed8\\u3051\\u3089\\u308c\\u305fCPU\\u3084\\u30e1\\u30e2\\u30ea\\u3001HDD\\u306a\\u3069\\u306e\\u30c9\\u30e9\\u30a4\\u30d6\\u985e\\u7b49\\u3001\\u8272\\u3005\\u306a\\u6a5f\\u5668\\u3068OS\\u306e\\u9593\\u3092\\u6a4b\\u6e21\\u3057\\u3059\\u308b\\u5f79\\u5272\\u3092\\u679c\\u305f\\u3059\\u3002","categories_id":"5","_token":"l7Ntamwt68n78e6B3A0BBn8K1a2hGAVZJJpRTcwm","_previous_":"http:\\/\\/localhost\\/admin\\/keyword"}', '2017-10-13 05:03:27', '2017-10-13 05:03:27'),
(775, 1, 'admin/keyword', 'GET', '::1', '[]', '2017-10-13 05:03:28', '2017-10-13 05:03:28'),
(776, 1, 'admin/keyword/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 05:03:59', '2017-10-13 05:03:59'),
(777, 1, 'admin/keyword', 'POST', '::1', '{"initial":"D","keyword":"DoS\\u653b\\u6483","description":"\\u300c\\u30b5\\u30fc\\u30d3\\u30b9\\u59a8\\u5bb3\\u653b\\u6483\\u300d\\u300c\\u30b5\\u30fc\\u30d3\\u30b9\\u4e0d\\u80fd\\u653b\\u6483\\u300d\\u300c\\u30b5\\u30fc\\u30d3\\u30b9\\u62d2\\u5426\\u653b\\u6483\\u300d\\u3068\\u8a33\\u3055\\u308c\\u3001Web\\u30b5\\u30a4\\u30c8\\u3084\\u30b7\\u30b9\\u30c6\\u30e0\\u306b\\u5927\\u91cf\\u306e\\u30ea\\u30af\\u30a8\\u30b9\\u30c8\\u3084\\u5de8\\u5927\\u306a\\u30c7\\u30fc\\u30bf\\u3092\\u9001\\u308b\\u3053\\u3068\\u3067\\u30c8\\u30e9\\u30d5\\u30a3\\u30c3\\u30af\\u3092\\u5897\\u5927\\u3055\\u305b\\u3001\\u30b7\\u30b9\\u30c6\\u30e0\\u30c0\\u30a6\\u30f3\\u3001\\u30b5\\u30fc\\u30d3\\u30b9\\u505c\\u6b62\\u306b\\u9665\\u3089\\u305b\\u308b\\u3053\\u3068\\u3092\\u76ee\\u7684\\u3068\\u3059\\u308b\\u4e0d\\u6b63\\u30a2\\u30af\\u30bb\\u30b9\\u653b\\u6483\\u306e\\u3072\\u3068\\u3064\\u3067\\u3042\\u308b\\u3002","categories_id":"5","_token":"l7Ntamwt68n78e6B3A0BBn8K1a2hGAVZJJpRTcwm","_previous_":"http:\\/\\/localhost\\/admin\\/keyword"}', '2017-10-13 05:04:14', '2017-10-13 05:04:14'),
(778, 1, 'admin/keyword', 'GET', '::1', '[]', '2017-10-13 05:04:14', '2017-10-13 05:04:14'),
(779, 1, 'admin/keyword/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 05:05:33', '2017-10-13 05:05:33'),
(780, 1, 'admin/keyword', 'POST', '::1', '{"initial":"J","keyword":"jpeg","description":"\\u9759\\u6b62\\u753b\\u50cf\\u30c7\\u30fc\\u30bf\\u306e\\u5727\\u7e2e\\u65b9\\u5f0f\\u306e\\u4e00\\u3064\\u3002 \\u5727\\u7e2e\\u3059\\u308b\\u3068\\u304d\\u306b\\u3001\\u3042\\u308b\\u7a0b\\u5ea6\\u306e\\u753b\\u50cf\\u52a3\\u5316\\u3092\\u8a31\\u5bb9\\u3059\\u308b\\u65b9\\u5f0f\\u3068\\u5168\\u304f\\u52a3\\u5316\\u306e\\u306a\\u3044\\u65b9\\u5f0f\\u3092\\u9078\\u3076\\u3053\\u3068\\u304c\\u3067\\u304d\\u308b\\u3002","categories_id":"5","_token":"l7Ntamwt68n78e6B3A0BBn8K1a2hGAVZJJpRTcwm","_previous_":"http:\\/\\/localhost\\/admin\\/keyword"}', '2017-10-13 05:05:58', '2017-10-13 05:05:58'),
(781, 1, 'admin/keyword', 'GET', '::1', '[]', '2017-10-13 05:05:58', '2017-10-13 05:05:58'),
(782, 1, 'admin/keyword/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 05:06:35', '2017-10-13 05:06:35'),
(783, 1, 'admin/keyword', 'POST', '::1', '{"initial":"K","keyword":"KVM\\u30b9\\u30a4\\u30c3\\u30c1","description":"\\u8907\\u6570\\u306e\\u30b3\\u30f3\\u30d4\\u30e5\\u30fc\\u30bf\\u3092\\u4e00\\u7d44\\u306e\\u30ad\\u30fc\\u30dc\\u30fc\\u30c9\\u3001\\u30c7\\u30a3\\u30b9\\u30d7\\u30ec\\u30a4\\u3001\\u30de\\u30a6\\u30b9\\u304b\\u3089\\u64cd\\u4f5c\\u3067\\u304d\\u308b\\u3088\\u3046\\u306b\\u3059\\u308b\\u305f\\u3081\\u306e\\u63a5\\u7d9a\\u6a5f\\u5668\\u306e\\u3053\\u3068\\u3002","categories_id":"5","_token":"l7Ntamwt68n78e6B3A0BBn8K1a2hGAVZJJpRTcwm","_previous_":"http:\\/\\/localhost\\/admin\\/keyword"}', '2017-10-13 05:06:48', '2017-10-13 05:06:48'),
(784, 1, 'admin/keyword', 'GET', '::1', '[]', '2017-10-13 05:06:49', '2017-10-13 05:06:49'),
(785, 1, 'admin/keyword/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 05:07:44', '2017-10-13 05:07:44'),
(786, 1, 'admin/keyword', 'POST', '::1', '{"initial":"M","keyword":"MySQL","description":"Oracle\\u793e\\u304c\\u63d0\\u4f9b\\u3057\\u3066\\u3044\\u308b\\u30aa\\u30fc\\u30d7\\u30f3\\u30bd\\u30fc\\u30b9\\u306e\\u30c7\\u30fc\\u30bf\\u30d9\\u30fc\\u30b9\\u30b7\\u30b9\\u30c6\\u30e0\\u306e\\u4e00\\u3064\\u3002Microsoft\\u793e\\u306eAccess\\u3068\\u540c\\u3058\\u30c7\\u30fc\\u30bf\\u30d9\\u30fc\\u30b9\\u30bd\\u30d5\\u30c8\\u3067\\u306f\\u3042\\u308b\\u304c\\u3001MySQL\\u306fphp\\u3068\\u306e\\u76f8\\u6027\\u304c\\u826f\\u304f\\u3001\\u5927\\u5bb9\\u91cf\\u304b\\u3064\\u9ad8\\u901f\\u3067\\u52d5\\u4f5c\\u3059\\u308b\\u305f\\u3081\\u3001\\u4f7f\\u3044\\u3084\\u3059\\u3044\\u3068\\u3044\\u3046\\u70b9\\u304c\\u5927\\u304d\\u306a\\u7279\\u5fb4\\u3067\\u3042\\u308b\\u3002","categories_id":"5","_token":"l7Ntamwt68n78e6B3A0BBn8K1a2hGAVZJJpRTcwm","_previous_":"http:\\/\\/localhost\\/admin\\/keyword"}', '2017-10-13 05:08:18', '2017-10-13 05:08:18'),
(787, 1, 'admin/keyword', 'GET', '::1', '[]', '2017-10-13 05:08:18', '2017-10-13 05:08:18'),
(788, 1, 'admin/keyword/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 05:09:56', '2017-10-13 05:09:56'),
(789, 1, 'admin/keyword', 'POST', '::1', '{"initial":"N","keyword":"NAS","description":"\\u30cd\\u30c3\\u30c8\\u30ef\\u30fc\\u30af\\u3092\\u4f7f\\u3046\\u30b9\\u30c8\\u30ec\\u30fc\\u30b8\\u306e\\u3053\\u3068\\u3002\\uff2e\\uff21\\uff33\\u3092\\u5c0e\\u5165\\u3059\\u308b\\u3053\\u3068\\u306b\\u3088\\u308a\\u5404\\u3005\\u306e\\uff30\\uff23\\u30c7\\u30fc\\u30bf\\u3092\\u4e00\\u62ec\\u3067\\u7ba1\\u7406\\u3059\\u308b\\u3053\\u3068\\u304c\\u53ef\\u80fd\\u3002\\u305d\\u306e\\u305f\\u3081\\u30e1\\u30ea\\u30c3\\u30c8\\u3068\\u3057\\u3066\\u306f\\u904b\\u7528\\u7ba1\\u7406\\u306e\\u5bb9\\u6613\\u5316\\u3001\\u63a5\\u7d9a\\u6027\\u306e\\u30ea\\u30b9\\u30c8\\u56de\\u907f\\u3001\\u30b3\\u30b9\\u30c8\\u524a\\u6e1b\\u7b49\\u304c\\u6319\\u3052\\u3089\\u308c\\u308b\\u3002","categories_id":"5","_token":"l7Ntamwt68n78e6B3A0BBn8K1a2hGAVZJJpRTcwm","_previous_":"http:\\/\\/localhost\\/admin\\/keyword"}', '2017-10-13 05:10:19', '2017-10-13 05:10:19'),
(790, 1, 'admin/keyword', 'GET', '::1', '[]', '2017-10-13 05:10:19', '2017-10-13 05:10:19'),
(791, 1, 'admin/keyword/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 05:10:51', '2017-10-13 05:10:51'),
(792, 1, 'admin/keyword', 'POST', '::1', '{"initial":"Q","keyword":"QoS","description":"\\u30af\\u30aa\\u30ea\\u30c6\\u30a3\\u30fc\\u30aa\\u30d6\\u30b5\\u30fc\\u30d3\\u30b9\\u306e\\u7565\\u8a9e\\u3002\\u30cd\\u30c3\\u30c8\\u30ef\\u30fc\\u30af\\u4e0a\\u3067\\u306e\\u300c\\u30b5\\u30fc\\u30d3\\u30b9\\u54c1\\u8cea\\u300d\\u3001\\u5177\\u4f53\\u7684\\u306b\\u306f\\u3001\\u901a\\u4fe1\\u5e2f\\u57df\\u306e\\u4e88\\u7d04\\u3068\\u901a\\u4fe1\\u901f\\u5ea6\\u306e\\u4fdd\\u8a3c\\u3092\\u3059\\u308b\\u6280\\u8853\\u306e\\u4e8b\\u3092\\u6307\\u3059\\u3002","categories_id":"5","_token":"l7Ntamwt68n78e6B3A0BBn8K1a2hGAVZJJpRTcwm","_previous_":"http:\\/\\/localhost\\/admin\\/keyword"}', '2017-10-13 05:11:13', '2017-10-13 05:11:13'),
(793, 1, 'admin/keyword', 'GET', '::1', '[]', '2017-10-13 05:11:13', '2017-10-13 05:11:13'),
(794, 1, 'admin/keyword/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 05:11:17', '2017-10-13 05:11:17'),
(795, 1, 'admin/keyword', 'POST', '::1', '{"initial":"R","keyword":"RAM","description":"\\u30b3\\u30f3\\u30d4\\u30e5\\u30fc\\u30bf\\u306e\\u8a18\\u61b6\\u88c5\\u7f6e\\u306b\\u4f7f\\u308f\\u308c\\u308b\\u3001\\u534a\\u5c0e\\u4f53\\u7d20\\u5b50\\u5229\\u7528\\u306e\\u8a18\\u61b6\\u88c5\\u7f6e\\u306e\\u3053\\u3068\\u3002 RAM\\u306f\\u30c7\\u30fc\\u30bf\\u306e\\u8aad\\u307f\\u66f8\\u304d\\u3092\\u96fb\\u6c17\\u7684\\u306b\\u884c\\u306a\\u3046\\u305f\\u3081\\u975e\\u5e38\\u306b\\u9ad8\\u901f\\u3060\\u304c\\u3001\\u5bb9\\u91cf\\u3042\\u305f\\u308a\\u306e\\u4fa1\\u683c\\u304c\\u9ad8\\u3044\\u70ba\\u3001\\u5927\\u91cf\\u306b\\u306f\\u4f7f\\u7528\\u3067\\u304d\\u306a\\u3044\\u3002","categories_id":"5","_token":"l7Ntamwt68n78e6B3A0BBn8K1a2hGAVZJJpRTcwm","_previous_":"http:\\/\\/localhost\\/admin\\/keyword"}', '2017-10-13 05:11:48', '2017-10-13 05:11:48'),
(796, 1, 'admin/keyword', 'GET', '::1', '[]', '2017-10-13 05:11:48', '2017-10-13 05:11:48'),
(797, 1, 'admin/keyword/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 05:12:18', '2017-10-13 05:12:18'),
(798, 1, 'admin/keyword', 'POST', '::1', '{"initial":"T","keyword":"TCP\\/IP","description":"\\u30a4\\u30f3\\u30bf\\u30fc\\u30cd\\u30c3\\u30c8\\u3067\\u4e16\\u754c\\u5171\\u901a\\u306b\\u4f7f\\u308f\\u308c\\u3066\\u3044\\u308b\\u901a\\u4fe1\\u898f\\u7d04\\uff08\\u30d7\\u30ed\\u30c8\\u30b3\\u30eb\\uff09\\u306e\\u4e8b\\u3002\\uff08\\u30c8\\u30e9\\u30f3\\u30b9\\u30df\\u30c3\\u30b7\\u30e7\\u30f3\\u30fb\\u30b3\\u30f3\\u30c8\\u30ed\\u30fc\\u30eb\\u30fb\\u30d7\\u30ed\\u30c8\\u30b3\\u30eb\\/\\u30a4\\u30f3\\u30bf\\u30fc\\u30cd\\u30c3\\u30c8\\u30fb\\u30d7\\u30ed\\u30c8\\u30b3\\u30eb\\uff09\\u306e\\u7565\\u3067\\u300c\\u30c6\\u30a3\\u30fc\\u30b7\\u30fc\\u30d4\\u30fc\\u30a2\\u30a4\\u30d4\\u30fc\\u300d\\u3068\\u547c\\u3076\\u3002 TCP\\u306f\\u30c8\\u30e9\\u30f3\\u30b9\\u30dd\\u30fc\\u30c8\\u5c64\\u306e\\u30d7\\u30ed\\u30c8\\u30b3\\u30eb\\uff08\\u9001\\u4fe1\\u3059\\u308b\\u30c7\\u30fc\\u30bf\\u3092\\u30d1\\u30b1\\u30c3\\u30c8\\u306b\\u3057\\u76ee\\u7684\\u5730\\u3067\\u304f\\u3063\\u3064\\u3051\\u3082\\u3068\\u306b\\u623b\\u3059\\u65b9\\u6cd5\\u306e\\u898f\\u7d04\\uff09\\u3001 IP\\u306f\\u30cd\\u30c3\\u30c8\\u30ef\\u30fc\\u30af\\u5c64\\u306e\\u30d7\\u30ed\\u30c8\\u30b3\\u30eb\\uff08\\u30eb\\u30fc\\u30c6\\u30a3\\u30f3\\u30b0\\u306e\\u65b9\\u6cd5\\u306e\\u898f\\u7d04\\uff09\\u3092\\u6307\\u3057\\u793a\\u3059\\u3002","categories_id":"5","_token":"l7Ntamwt68n78e6B3A0BBn8K1a2hGAVZJJpRTcwm","_previous_":"http:\\/\\/localhost\\/admin\\/keyword"}', '2017-10-13 05:12:38', '2017-10-13 05:12:38'),
(799, 1, 'admin/keyword', 'GET', '::1', '[]', '2017-10-13 05:12:38', '2017-10-13 05:12:38'),
(800, 1, 'admin/keyword/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 05:13:13', '2017-10-13 05:13:13'),
(801, 1, 'admin/keyword', 'POST', '::1', '{"initial":"U","keyword":"UNIX","description":"\\u30de\\u30eb\\u30c1\\u30bf\\u30b9\\u30af\\u3001\\u30de\\u30eb\\u30c1\\u30e6\\u30fc\\u30b6\\u3092\\u5b9f\\u73fe\\u3057\\u305f\\u30aa\\u30da\\u30ec\\u30fc\\u30c6\\u30a3\\u30f3\\u30b0\\u30b7\\u30b9\\u30c6\\u30e0\\uff08OS\\uff09\\u306e1\\u7a2e\\u3002UNIX\\u3092\\u30d9\\u30fc\\u30b9\\u306b\\u3057\\u305f\\u591a\\u304f\\u306e\\u6d3e\\u751fOS\\u542b\\u3080\\u7dcf\\u79f0\\u3068\\u3057\\u3066\\u4f7f\\u308f\\u308c\\u308b\\u3053\\u3068\\u3082\\u3042\\u308b\\u3002","categories_id":"5","_token":"l7Ntamwt68n78e6B3A0BBn8K1a2hGAVZJJpRTcwm","_previous_":"http:\\/\\/localhost\\/admin\\/keyword"}', '2017-10-13 05:13:36', '2017-10-13 05:13:36'),
(802, 1, 'admin/keyword', 'GET', '::1', '[]', '2017-10-13 05:13:37', '2017-10-13 05:13:37'),
(803, 1, 'admin/keyword/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 05:14:02', '2017-10-13 05:14:02'),
(804, 1, 'admin/keyword', 'POST', '::1', '{"initial":"V","keyword":"VPS","description":"\\u7269\\u7406\\u7684\\u306a\\u30b5\\u30fc\\u30d0\\u3092\\u63d0\\u4f9b\\u3059\\u308b\\u300c\\u30ec\\u30f3\\u30bf\\u30eb\\u30b5\\u30fc\\u30d0\\u300d\\u3084\\u300c\\u30db\\u30b9\\u30c6\\u30a3\\u30f3\\u30b0\\u300d\\u306b\\u5bfe\\u3057\\u3066\\u3001\\u4eee\\u60f3\\u30b5\\u30fc\\u30d0\\u3092\\u63d0\\u4f9b\\u3059\\u308b\\u300c\\u4eee\\u60f3\\u5c02\\u7528\\u30b5\\u30fc\\u30d0\\u30b5\\u30fc\\u30d3\\u30b9\\u300d\\u306e\\u3053\\u3068\\u3002","categories_id":"5","_token":"l7Ntamwt68n78e6B3A0BBn8K1a2hGAVZJJpRTcwm","_previous_":"http:\\/\\/localhost\\/admin\\/keyword"}', '2017-10-13 05:14:23', '2017-10-13 05:14:23'),
(805, 1, 'admin/keyword', 'GET', '::1', '[]', '2017-10-13 05:14:23', '2017-10-13 05:14:23'),
(806, 1, 'admin/keyword/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 05:14:39', '2017-10-13 05:14:39'),
(807, 1, 'admin/keyword', 'POST', '::1', '{"initial":"W","keyword":"Windows","description":"\\u30de\\u30a4\\u30af\\u30ed\\u30bd\\u30d5\\u30c8\\u304c\\u958b\\u767a\\u30fb\\u8ca9\\u58f2\\u3057\\u3066\\u3044\\u308bOS(\\u30aa\\u30da\\u30ec\\u30fc\\u30c6\\u30a3\\u30f3\\u30b0\\u30fb\\u30b7\\u30b9\\u30c6\\u30e0)\\u3002\\u4e3b\\u306bPC\\u7528\\u306eOS\\u3068\\u3057\\u3066\\u666e\\u53ca\\u3057\\u3066\\u3044\\u308b\\u3002","categories_id":"5","_token":"l7Ntamwt68n78e6B3A0BBn8K1a2hGAVZJJpRTcwm","_previous_":"http:\\/\\/localhost\\/admin\\/keyword"}', '2017-10-13 05:14:56', '2017-10-13 05:14:56'),
(808, 1, 'admin/keyword', 'GET', '::1', '[]', '2017-10-13 05:14:56', '2017-10-13 05:14:56'),
(809, 1, 'admin/keyword/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 05:15:13', '2017-10-13 05:15:13'),
(810, 1, 'admin/keyword', 'POST', '::1', '{"initial":"W","keyword":"WordPress","description":"\\u30aa\\u30fc\\u30d7\\u30f3\\u30bd\\u30fc\\u30b9(\\u8ab0\\u3067\\u3082\\u4f7f\\u3046\\u3053\\u3068\\u304c\\u3067\\u304d\\u308b)\\u3067\\u63d0\\u4f9b\\u3057\\u3066\\u3044\\u308bCMS\\u306e\\u4e00\\u7a2e\\u3002\\u30c8\\u30c3\\u30d7\\u30da\\u30fc\\u30b8\\u30fb\\u30ab\\u30c6\\u30b4\\u30ea\\u30fc\\u30da\\u30fc\\u30b8\\u30fb\\u8a18\\u4e8b\\u30da\\u30fc\\u30b8\\u3068\\u3044\\u3063\\u305f\\u57fa\\u672c\\u7684\\u306a\\u30d6\\u30ed\\u30b0\\u306e\\u30b5\\u30a4\\u30c8\\u69cb\\u9020\\u3092\\u521d\\u3081\\u304b\\u3089\\u6301\\u3063\\u3066\\u3044\\u308b\\u305f\\u3081\\u3001Web\\u5236\\u4f5c\\u306e\\u77e5\\u8b58\\u304c\\u306a\\u304f\\u3066\\u3082\\u30d6\\u30ed\\u30b0\\u30b5\\u30a4\\u30c8\\u3092\\u7c21\\u5358\\u306b\\u3064\\u304f\\u308b\\u3053\\u3068\\u304c\\u3067\\u304d\\u308b\\u3002","categories_id":"5","_token":"l7Ntamwt68n78e6B3A0BBn8K1a2hGAVZJJpRTcwm","_previous_":"http:\\/\\/localhost\\/admin\\/keyword"}', '2017-10-13 05:15:29', '2017-10-13 05:15:29'),
(811, 1, 'admin/keyword', 'GET', '::1', '[]', '2017-10-13 05:15:29', '2017-10-13 05:15:29'),
(812, 1, 'admin/keyword/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 05:15:52', '2017-10-13 05:15:52'),
(813, 1, 'admin/keyword', 'POST', '::1', '{"initial":"X","keyword":"XML","description":"\\u30c7\\u30fc\\u30bf\\u306e\\u8a18\\u8ff0\\u8a00\\u8a9e\\u306b\\u304a\\u3051\\u308b\\u898f\\u683c\\u3002Web\\u3067\\u516c\\u958b\\u3059\\u308b\\u30da\\u30fc\\u30b8\\u3092\\u4f5c\\u6210\\u3059\\u308b\\u969b\\u306b\\u6271\\u3046\\u3002HTML\\u3068\\u9055\\u3063\\u3066\\u3001XML\\u306f\\u3042\\u3089\\u3086\\u308b\\u30b3\\u30f3\\u30d4\\u30e5\\u30fc\\u30bf\\u30b7\\u30b9\\u30c6\\u30e0\\u3078\\u9069\\u5fdc\\u3067\\u304d\\u3001\\u30e6\\u30fc\\u30b6\\u30fc\\u304c\\u30c7\\u30fc\\u30bf\\u306e\\u69cb\\u9020\\u3092\\u81ea\\u7531\\u306b\\u5b9a\\u7fa9\\u3067\\u304d\\u308b\\u306e\\u3067\\u3001\\u3042\\u3089\\u3086\\u308b\\u30c7\\u30fc\\u30bf\\u306e\\u81ea\\u7531\\u51e6\\u7406\\u304c\\u53ef\\u80fd\\u3002","categories_id":"5","_token":"l7Ntamwt68n78e6B3A0BBn8K1a2hGAVZJJpRTcwm","_previous_":"http:\\/\\/localhost\\/admin\\/keyword"}', '2017-10-13 05:16:07', '2017-10-13 05:16:07'),
(814, 1, 'admin/keyword', 'GET', '::1', '[]', '2017-10-13 05:16:08', '2017-10-13 05:16:08'),
(815, 1, 'admin/keyword/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 05:16:51', '2017-10-13 05:16:51'),
(816, 1, 'admin/keyword', 'POST', '::1', '{"initial":"Y","keyword":"YouTube","description":"\\u7c73YouTube\\u793e\\u304c\\u904b\\u55b6\\u3057\\u3066\\u3044\\u308b\\u3001\\u7121\\u6599\\u52d5\\u753b\\u5171\\u6709\\u30b5\\u30a4\\u30c8\\u306e\\u3053\\u3068\\u3002","categories_id":"5","_token":"l7Ntamwt68n78e6B3A0BBn8K1a2hGAVZJJpRTcwm","_previous_":"http:\\/\\/localhost\\/admin\\/keyword"}', '2017-10-13 05:17:09', '2017-10-13 05:17:09'),
(817, 1, 'admin/keyword', 'GET', '::1', '[]', '2017-10-13 05:17:09', '2017-10-13 05:17:09'),
(818, 1, 'admin/keyword/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 05:20:48', '2017-10-13 05:20:48'),
(819, 1, 'admin/keyword', 'POST', '::1', '{"initial":"\\u3042","keyword":"\\u30a2\\u30a4\\u30b9\\u30d6\\u30ec\\u30a4\\u30af","description":"\\u7814\\u4fee\\u7528\\u8a9e\\u3068\\u3057\\u3066\\u7528\\u3044\\u3089\\u308c\\u308b\\u8a00\\u8449\\u3002\\u7814\\u4fee\\u306e\\u30b9\\u30bf\\u30fc\\u30c8\\u6642\\u306a\\u3069\\u306b\\u304a\\u3044\\u3066\\u3001\\u53d7\\u8b1b\\u8005\\u306e\\u7dca\\u5f35\\u3092\\u89e3\\u304d\\u3001\\u30ea\\u30e9\\u30c3\\u30af\\u30b9\\u3057\\u3066\\u3082\\u3089\\u3046\\u3053\\u3068\\u3092\\u3044\\u3046\\u3002\\u4e92\\u3044\\u306b\\u81ea\\u5df1\\u7d39\\u4ecb\\u3092\\u884c\\u3063\\u305f\\u308a\\u3001\\u7c21\\u5358\\u306a\\u30b2\\u30fc\\u30e0\\u3092\\u884c\\u3063\\u305f\\u308a\\u3059\\u308b\\u306e\\u3082\\u30a2\\u30a4\\u30b9\\u30d6\\u30ec\\u30a4\\u30af\\u306e\\u3072\\u3068\\u3064\\u3002","categories_id":"1","_token":"l7Ntamwt68n78e6B3A0BBn8K1a2hGAVZJJpRTcwm","_previous_":"http:\\/\\/localhost\\/admin\\/keyword"}', '2017-10-13 05:21:11', '2017-10-13 05:21:11'),
(820, 1, 'admin/keyword', 'GET', '::1', '[]', '2017-10-13 05:21:11', '2017-10-13 05:21:11'),
(821, 1, 'admin/keyword/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 05:22:02', '2017-10-13 05:22:02'),
(822, 1, 'admin/keyword', 'POST', '::1', '{"initial":"\\u3042","keyword":"\\u30a2\\u30dd\\u30a4\\u30f3\\u30c8\\u30e1\\u30f3\\u30c8","description":"\\u76f8\\u624b\\u5148\\u3068\\u306e\\u4f1a\\u5408\\u30fb\\u9762\\u8ac7\\u306e\\u7d04\\u675f\\u3002\\u30a2\\u30dd\\u3068\\u7565\\u3055\\u308c\\u308b\\u3053\\u3068\\u3082\\u591a\\u3044\\u3002\\u30c6\\u30ec\\u30a2\\u30dd\\uff08\\u30c6\\u30ec\\u30db\\u30f3\\u30a2\\u30dd\\u30a4\\u30f3\\u30c8\\u30e1\\u30f3\\u30c8\\uff09\\u306f\\u96fb\\u8a71\\u3067\\u5546\\u8ac7\\u3084\\u9762\\u8ac7\\u306e\\u7d04\\u675f\\u3092\\u53d6\\u308a\\u3064\\u3051\\u308b\\u884c\\u70ba\\u306b\\u4f7f\\u308f\\u308c\\u3066\\u3044\\u308b\\u3002","categories_id":"1","_token":"l7Ntamwt68n78e6B3A0BBn8K1a2hGAVZJJpRTcwm","_previous_":"http:\\/\\/localhost\\/admin\\/keyword"}', '2017-10-13 05:22:29', '2017-10-13 05:22:29'),
(823, 1, 'admin/keyword', 'GET', '::1', '[]', '2017-10-13 05:22:29', '2017-10-13 05:22:29'),
(824, 1, 'admin/quiz', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 05:22:51', '2017-10-13 05:22:51'),
(825, 1, 'admin/quiz/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 05:22:53', '2017-10-13 05:22:53');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(826, 1, 'admin/quiz', 'POST', '::1', '{"title":"\\u65b0\\u898f\\u55b6\\u696d\\u3067\\u30a2\\u30dd\\u30a4\\u30f3\\u30c8\\u3092\\u53d6\\u308d\\u3046\\u3068\\u5148\\u65b9\\u306b\\u96fb\\u8a71\\u3092\\u3057\\u305f\\u3068\\u3053\\u308d\\u5916\\u51fa\\u4e2d\\u3060\\u3063\\u305f\\u3002","answers_id":"33","categories_id":"1","answer":{"answer_1":"\\u25cb\\u25cb\\u306e\\u4ef6\\u3067\\u304a\\u96fb\\u8a71\\u3057\\u307e\\u3057\\u305f\\u3002\\u307e\\u305f\\u3042\\u3089\\u305f\\u3081\\u3066\\u304a\\u96fb\\u8a71\\u3044\\u305f\\u3057\\u307e\\u3059","answer_2":"\\u96fb\\u8a71\\u304c\\u3042\\u308a\\u307e\\u3057\\u305f\\u3053\\u3068\\u3092\\u304a\\u4f1d\\u3048\\u304f\\u3060\\u3055\\u3044","answer_3":"\\u6298\\u308a\\u8fd4\\u3057\\u3044\\u305f\\u3060\\u3051\\u307e\\u3059\\u3067\\u3057\\u3087\\u3046\\u304b\\uff1f","answer_4":"\\u3067\\u306f\\u7d50\\u69cb\\u3067\\u3059\\u3002","correct_answer_no":"1","commentary":"\\u81ea\\u5206\\u306e\\u307b\\u3046\\u306b\\u7528\\u4e8b\\u304c\\u3042\\u308b\\u306e\\u306b\\u3001\\u6298\\u308a\\u8fd4\\u3057\\u3092\\u4f9d\\u983c\\u3059\\u308b\\u306e\\u306f\\u30de\\u30ca\\u30fc\\u9055\\u53cd\\u3002\\u6298\\u308a\\u8fd4\\u3057\\u3092\\u304a\\u9858\\u3044\\u3057\\u3066\\u3044\\u3044\\u306e\\u306f\\u3001\\u76f8\\u624b\\u306b\\u30e1\\u30ea\\u30c3\\u30c8\\u306e\\u3042\\u308b\\u5185\\u5bb9\\u3084\\u3001\\u81f3\\u6025\\u306e\\u78ba\\u8a8d\\u4e8b\\u9805\\u306a\\u3069\\u3002\\u2461\\u306f\\u8981\\u4ef6\\u3092\\u4f1d\\u3048\\u307e\\u3057\\u3087\\u3046\\u3002\\u2460\\u306e\\u5834\\u5408\\u3001\\u300c\\u4f55\\u6642\\u306b\\u304a\\u623b\\u308a\\u3067\\u3057\\u3087\\u3046\\u304b\\uff1f\\u300d\\u3068\\u805e\\u3044\\u3066\\u304a\\u3051\\u3070\\u3001\\u9023\\u7d61\\u304c\\u53d6\\u308c\\u308b\\u78ba\\u7387\\u304c\\u30a2\\u30c3\\u30d7\\u3057\\u3001\\u30d3\\u30b8\\u30cd\\u30b9\\u30c1\\u30e3\\u30f3\\u30b9\\u304c\\u5e83\\u304c\\u308a\\u305d\\u3046\\uff01"},"_token":"l7Ntamwt68n78e6B3A0BBn8K1a2hGAVZJJpRTcwm","_previous_":"http:\\/\\/localhost\\/admin\\/quiz"}', '2017-10-13 05:24:32', '2017-10-13 05:24:32'),
(827, 1, 'admin/quiz', 'GET', '::1', '[]', '2017-10-13 05:24:32', '2017-10-13 05:24:32'),
(828, 1, 'admin/quiz/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 05:24:34', '2017-10-13 05:24:34'),
(829, 1, 'admin/quiz', 'POST', '::1', '{"title":"\\u6253\\u5408\\u305b\\u306e\\u305f\\u30813\\u56de\\u76ee\\u306e\\u8a2a\\u554f\\u3002\\u30a2\\u30dd\\u30a4\\u30f3\\u30c8\\u6642\\u9593\\u306e15\\u5206\\u524d\\u306b\\u5230\\u7740\\u3057\\u305d\\u3046\\u3002\\u3069\\u3046\\u3059\\u308b\\uff1f","answers_id":"34","categories_id":"1","answer":{"answer_1":"\\u9045\\u308c\\u308b\\u3088\\u308a\\u306f\\u611f\\u3058\\u304c\\u3044\\u3044\\u3002\\u8a2a\\u554f\\u3057\\u3066\\u65e9\\u304f\\u7740\\u3044\\u305f\\u3053\\u3068\\u3092\\u4e00\\u8a00\\u8a6b\\u3073\\u308b","answer_2":"\\u300c\\u5c11\\u3057\\u65e9\\u3044\\u306e\\u3067\\u3059\\u304c\\u8a2a\\u554f\\u3057\\u3066\\u3088\\u308d\\u3057\\u3044\\u3067\\u3057\\u3087\\u3046\\u304b\\uff1f\\u300d\\u3068\\u4e8b\\u524d\\u9023\\u7d61","answer_3":"\\u6642\\u9593\\u30d4\\u30c3\\u30bf\\u30ea\\u306a\\u306e\\u304c\\u4e00\\u756a\\u597d\\u5370\\u8c61\\u300215\\u5206\\u5f85\\u3063\\u3066\\u304b\\u3089\\u8a2a\\u554f\\u3059\\u308b","answer_4":null,"correct_answer_no":"1","commentary":null},"_token":"l7Ntamwt68n78e6B3A0BBn8K1a2hGAVZJJpRTcwm","_previous_":"http:\\/\\/localhost\\/admin\\/quiz"}', '2017-10-13 05:25:15', '2017-10-13 05:25:15'),
(830, 1, 'admin/quiz/create', 'GET', '::1', '[]', '2017-10-13 05:25:15', '2017-10-13 05:25:15'),
(831, 1, 'admin/quiz', 'POST', '::1', '{"title":"\\u6253\\u5408\\u305b\\u306e\\u305f\\u30813\\u56de\\u76ee\\u306e\\u8a2a\\u554f\\u3002\\u30a2\\u30dd\\u30a4\\u30f3\\u30c8\\u6642\\u9593\\u306e15\\u5206\\u524d\\u306b\\u5230\\u7740\\u3057\\u305d\\u3046\\u3002\\u3069\\u3046\\u3059\\u308b\\uff1f","answers_id":"34","categories_id":"1","answer":{"answer_1":"\\u9045\\u308c\\u308b\\u3088\\u308a\\u306f\\u611f\\u3058\\u304c\\u3044\\u3044\\u3002\\u8a2a\\u554f\\u3057\\u3066\\u65e9\\u304f\\u7740\\u3044\\u305f\\u3053\\u3068\\u3092\\u4e00\\u8a00\\u8a6b\\u3073\\u308b","answer_2":"\\u300c\\u5c11\\u3057\\u65e9\\u3044\\u306e\\u3067\\u3059\\u304c\\u8a2a\\u554f\\u3057\\u3066\\u3088\\u308d\\u3057\\u3044\\u3067\\u3057\\u3087\\u3046\\u304b\\uff1f\\u300d\\u3068\\u4e8b\\u524d\\u9023\\u7d61","answer_3":"\\u6642\\u9593\\u30d4\\u30c3\\u30bf\\u30ea\\u306a\\u306e\\u304c\\u4e00\\u756a\\u597d\\u5370\\u8c61\\u300215\\u5206\\u5f85\\u3063\\u3066\\u304b\\u3089\\u8a2a\\u554f\\u3059\\u308b","answer_4":"\\u901f\\u3044\\u306e\\u306f\\u826f\\u3044\\u3053\\u3068\\u3067\\u3042\\u308b\\u3002\\u5802\\u3005\\u3068\\u8a2a\\u554f\\u3059\\u308b","correct_answer_no":"2","commentary":"15\\u5206\\u3068\\u3044\\u3046\\u3068\\u3053\\u308d\\u304c\\u30dd\\u30a4\\u30f3\\u30c8\\u30025\\u5206\\u4ee5\\u5185\\u3067\\u3042\\u308c\\u3070\\u2460\\u3084\\u2462\\u3082\\u6b63\\u89e3\\u3067\\u3059\\u304c\\u30015\\u5206\\u4ee5\\u4e0a\\u524d\\u306e\\u8a2a\\u554f\\u306f\\u8ff7\\u60d1\\u306b\\u306a\\u308b\\u3053\\u3068\\u3082\\u3002\\u3067\\u304d\\u308b\\u4eba\\u3092\\u76ee\\u6307\\u3059\\u306a\\u3089\\u76f8\\u624b\\u306b\\u9078\\u629e\\u80a2\\u3092\\u4e0e\\u3048\\u3064\\u3064\\u3001\\u6642\\u9593\\u3092\\u7121\\u99c4\\u306b\\u3057\\u306a\\u3044\\u884c\\u52d5\\u3092\\u3002\\u307e\\u305f\\u3001\\u521d\\u56de\\u8a2a\\u554f\\u6642\\u306f\\u30a2\\u30dd\\u30a4\\u30f3\\u30c8\\u4e01\\u5ea6\\u306b\\u8a2a\\u554f\\u3059\\u308b\\u306e\\u304c\\u7121\\u96e3\\u3002"},"_token":"l7Ntamwt68n78e6B3A0BBn8K1a2hGAVZJJpRTcwm"}', '2017-10-13 05:25:41', '2017-10-13 05:25:41'),
(832, 1, 'admin/quiz', 'GET', '::1', '[]', '2017-10-13 05:25:41', '2017-10-13 05:25:41'),
(833, 1, 'admin/quiz/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 05:25:45', '2017-10-13 05:25:45'),
(834, 1, 'admin/quiz', 'POST', '::1', '{"title":"\\u521d\\u3081\\u3066\\u8a2a\\u554f\\u3059\\u308b\\u4f1a\\u793e\\u3067\\u540d\\u523a\\u4ea4\\u63db\\u3002\\u6700\\u521d\\u306b\\u8ab0\\u3068\\u4ea4\\u63db\\u3059\\u308b\\uff1f","answers_id":"35","categories_id":"1","answer":{"answer_1":"\\u30a2\\u30dd\\u30a4\\u30f3\\u30c8\\u306e\\u7a93\\u53e3\\u306b\\u306a\\u3063\\u3066\\u3082\\u3089\\u3063\\u305f\\u4eba","answer_2":"\\u81ea\\u5206\\u306e\\u4e00\\u756a\\u8fd1\\u304f\\u306b\\u3044\\u308b\\u4eba","answer_3":"\\u4e00\\u756a\\u5f79\\u8077\\u304c\\u4e0a\\u3060\\u3068\\u898b\\u53d7\\u3051\\u3089\\u308c\\u308b\\u4eba","answer_4":"\\u4e00\\u756a\\u5e74\\u9f62\\u304c\\u9ad8\\u305d\\u3046\\u306a\\u4eba","correct_answer_no":"3","commentary":"\\u540d\\u523a\\u4ea4\\u63db\\u306f\\u5049\\u3044\\u4eba\\u304b\\u3089\\u9806\\u756a\\u306b\\u3068\\u5fc3\\u5f97\\u3066\\uff01\\u305d\\u306e\\u305f\\u3081\\u3001\\u81ea\\u5206\\u306e\\u4e0a\\u53f8\\u3088\\u308a\\u5148\\u306b\\u4ea4\\u63db\\u3059\\u308b\\u306e\\u3082NG\\u3002\\u307e\\u305f\\u30c6\\u30fc\\u30d6\\u30eb\\u3092\\u307e\\u305f\\u3044\\u3067\\u4ea4\\u63db\\u3059\\u308b\\u306e\\u306f\\u5931\\u793c\\u3067\\u3059\\u3002\\u300c\\u8ab0\\u304c\\u4e00\\u756a\\u5049\\u3044\\u4eba\\u304b\\u308f\\u304b\\u3089\\u306a\\u3044\\u300d\\u306a\\u3093\\u3066\\u6642\\u306f\\u5049\\u3044\\u4eba\\u306f\\u4e0a\\u5ea7(\\u5165\\u53e3\\u304b\\u3089\\u4e00\\u756a\\u9060\\u3044\\u5965\\u306e\\u5e2d)\\u306b\\u5ea7\\u308b\\u3053\\u3068\\u304c\\u591a\\u3044\\u306e\\u3067\\u3001\\u3055\\u308a\\u3052\\u306a\\u304f\\u30c1\\u30a7\\u30c3\\u30af\\u3057\\u3066\\u3002"},"_token":"l7Ntamwt68n78e6B3A0BBn8K1a2hGAVZJJpRTcwm","_previous_":"http:\\/\\/localhost\\/admin\\/quiz"}', '2017-10-13 05:27:16', '2017-10-13 05:27:16'),
(835, 1, 'admin/quiz', 'GET', '::1', '[]', '2017-10-13 05:27:16', '2017-10-13 05:27:16'),
(836, 1, 'admin/quiz/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 05:27:18', '2017-10-13 05:27:18'),
(837, 1, 'admin/quiz', 'POST', '::1', '{"title":"\\u8a2a\\u554f\\u5ba2\\u3092\\u5fdc\\u63a5\\u5ba4\\u306b\\u6848\\u5185\\u3057\\u305f\\u3089\\u3001\\u3069\\u3053\\u306b\\u5ea7\\u3063\\u3066\\u3082\\u3089\\u3046\\uff1f","answers_id":"36","categories_id":"1","answer":{"answer_1":"\\u3086\\u3063\\u305f\\u308a\\u4e00\\u4eba\\u3067\\u5ea7\\u308c\\u308b1\\u306e\\u5e2d","answer_2":"\\u5165\\u53e3\\u304b\\u3089\\u4e00\\u756a\\u9060\\u30442\\u306e\\u5e2d","answer_3":"\\u9577\\u6905\\u5b50\\u306e\\u4e2d\\u592e3\\u306e\\u5e2d","answer_4":"\\u5165\\u53e3\\u304b\\u3089\\u4e00\\u756a\\u8fd1\\u30444\\u306e\\u5e2d","correct_answer_no":"2","commentary":"\\u5165\\u53e3\\u304b\\u3089\\u4e00\\u756a\\u9060\\u3044\\u5e2d\\u304c\\u4e0a\\u5ea7\\u306b\\u306a\\u308a\\u307e\\u3059\\u3002\\u304a\\u5ba2\\u69d8\\u306b\\u306f\\u4e0a\\u5ea7\\u306b\\u5ea7\\u3063\\u3066\\u3082\\u3089\\u3046\\u3068\\u5fc3\\u5f97\\u3066\\u3002\\u5fdc\\u63a5\\u5ba4\\u306e\\u5834\\u5408\\u3001\\u9577\\u6905\\u5b50\\u304c\\u304a\\u5ba2\\u69d8\\u7528\\u3067\\u4e0a\\u5ea7\\u306b\\u3001\\u4e00\\u4eba\\u639b\\u3051\\u6905\\u5b50\\u304c\\u4e0b\\u5ea7\\u306b\\u7f6e\\u3044\\u3066\\u3042\\u308b\\u3053\\u3068\\u304c\\u591a\\u3044\\u3067\\u3059\\u3002\\u81ea\\u5206\\u304c\\u8a2a\\u554f\\u5ba2\\u306e\\u5834\\u5408\\u306f\\u3001\\u4e0a\\u5ea7\\u5074\\u3092\\u6307\\u5b9a\\u3055\\u308c\\u305f\\u3089\\u4e0a\\u5ea7\\u3078\\u3001\\u6848\\u5185\\u304c\\u306a\\u3051\\u308c\\u3070\\u4e0b\\u5ea7\\u3078\\u5e2d\\u3092\\u53d6\\u308a\\u3001\\u7acb\\u3063\\u3066\\u5f85\\u3064\\u3068\\u3044\\u3046\\u306e\\u304c\\u30de\\u30ca\\u30fc\\u3067\\u3059\\u3002"},"_token":"l7Ntamwt68n78e6B3A0BBn8K1a2hGAVZJJpRTcwm","_previous_":"http:\\/\\/localhost\\/admin\\/quiz"}', '2017-10-13 05:28:20', '2017-10-13 05:28:20'),
(838, 1, 'admin/quiz', 'GET', '::1', '[]', '2017-10-13 05:28:21', '2017-10-13 05:28:21'),
(839, 1, 'admin/quiz/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 05:28:23', '2017-10-13 05:28:23'),
(840, 1, 'admin/quiz', 'POST', '::1', '{"title":"\\u4e0a\\u53f8\\u3001\\u5148\\u8f29\\u3068\\u81ea\\u52063\\u540d\\u3067\\u30bf\\u30af\\u30b7\\u30fc\\u306b\\u4e57\\u308b\\u3068\\u304d\\u3001\\u81ea\\u5206\\u306f\\u3069\\u3053\\u306b\\u5ea7\\u3063\\u305f\\u3089\\u3044\\u3044\\u306e\\uff1f","answers_id":"37","categories_id":"1","answer":{"answer_1":"\\u904b\\u8ee2\\u5e2d\\u306e\\u5f8c\\u308d1\\u306e\\u5e2d","answer_2":"\\u5f8c\\u90e8\\u5ea7\\u5e2d\\u306e\\u771f\\u3093\\u4e2d2\\u306e\\u5e2d","answer_3":"\\u52a9\\u624b\\u5e2d3\\u306e\\u5e2d","answer_4":"\\u52a9\\u624b\\u5e2d\\u5f8c\\u308d\\u306e4\\u306e\\u5e2d","correct_answer_no":"3","commentary":"\\u30bf\\u30af\\u30b7\\u30fc\\u306e\\u52a9\\u624b\\u5e2d\\u306f\\u9053\\u3092\\u4f1d\\u3048\\u305f\\u308a\\u3001\\u6599\\u91d1\\u3092\\u652f\\u6255\\u3046\\u4eba\\u304c\\u5ea7\\u308b\\u306e\\u3067\\u3001\\u4e00\\u756a\\u4e0b\\u5ea7\\u3068\\u306a\\u308a\\u307e\\u3059\\u3002\\u4e0a\\u53f8\\u306b\\u306f\\u904b\\u8ee2\\u5e2d\\u306e\\u5f8c\\u308d\\u306e1\\u3001\\u5148\\u8f29\\u306b\\u306f\\u52a9\\u624b\\u5e2d\\u306e\\u5f8c\\u308d\\u306e4\\u306b\\u5ea7\\u3063\\u3066\\u3082\\u3089\\u3044\\u307e\\u3059\\u3002"},"_token":"l7Ntamwt68n78e6B3A0BBn8K1a2hGAVZJJpRTcwm","_previous_":"http:\\/\\/localhost\\/admin\\/quiz"}', '2017-10-13 05:29:07', '2017-10-13 05:29:07'),
(841, 1, 'admin/quiz', 'GET', '::1', '[]', '2017-10-13 05:29:07', '2017-10-13 05:29:07'),
(842, 1, 'admin/quiz/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 05:29:24', '2017-10-13 05:29:24'),
(843, 1, 'admin/quiz', 'POST', '::1', '{"title":"\\u300c\\u304a\\u5ba2\\u69d8\\u306b\\u304a\\u8336\\u3092\\u51fa\\u3057\\u3066\\u300d\\u3068\\u983c\\u307e\\u308c\\u305f\\u3089","answers_id":"38","categories_id":"1","answer":{"answer_1":"\\u304a\\u5ba2\\u69d8\\u306e\\u4eba\\u6570\\u5206\\u7528\\u610f\\u3057\\u3066\\u304a\\u51fa\\u3057\\u3059\\u308b","answer_2":"\\u304a\\u5ba2\\u69d8\\u306e\\u4eba\\u6570\\u5206\\u3068\\u793e\\u5185\\u306e\\u30e1\\u30f3\\u30d0\\u30fc\\u5206\\u3082\\u7528\\u610f\\u3059\\u308b","answer_3":"\\u81ea\\u5206\\u306e\\u5206\\u3060\\u3051\\u7528\\u610f\\u3059\\u308b","answer_4":"\\u983c\\u307e\\u308c\\u3066\\u304b\\u3089\\u3067\\u306f\\u6642\\u3059\\u3067\\u306b\\u9045\\u3057\\u3002\\u7528\\u610f\\u3057\\u306a\\u3044\\u3002","correct_answer_no":"2","commentary":"\\u304a\\u5ba2\\u69d8\\u306e\\u5206\\u3060\\u3051\\u3092\\u51fa\\u3059\\u4f1a\\u793e\\u3082\\u898b\\u53d7\\u3051\\u3089\\u308c\\u307e\\u3059\\u304c\\u3001\\u304a\\u5ba2\\u69d8\\u304c\\u53e3\\u3092\\u4ed8\\u3051\\u3065\\u3089\\u304f\\u306a\\u308b\\u306e\\u3067\\u793e\\u5185\\u306e\\u30e1\\u30f3\\u30d0\\u30fc\\u5206\\u3082\\u7528\\u610f\\u3059\\u308b\\u3068\\u25ce\\u3002\\u304a\\u5ba2\\u69d8\\u306b\\u5f85\\u3063\\u3066\\u3082\\u3089\\u3046\\u6642\\u9593\\u304c\\u3042\\u308b\\u5834\\u5408\\u306f\\u3001\\u5f85\\u3063\\u3066\\u3044\\u305f\\u3060\\u3044\\u3066\\u3044\\u308b\\u9593\\u306b\\u304a\\u5ba2\\u69d8\\u5206\\u306e\\u304a\\u8336\\u3092\\u5148\\u306b\\u51fa\\u3059\\u3068\\u30b9\\u30de\\u30fc\\u30c8\\u3067\\u3059\\u3002"},"_token":"l7Ntamwt68n78e6B3A0BBn8K1a2hGAVZJJpRTcwm","_previous_":"http:\\/\\/localhost\\/admin\\/quiz"}', '2017-10-13 05:29:53', '2017-10-13 05:29:53'),
(844, 1, 'admin/quiz', 'GET', '::1', '[]', '2017-10-13 05:29:53', '2017-10-13 05:29:53'),
(845, 1, 'admin/keyword', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 05:34:19', '2017-10-13 05:34:19'),
(846, 1, 'admin/quiz', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 05:35:49', '2017-10-13 05:35:49'),
(847, 1, 'admin/quiz', 'GET', '::1', '{"_pjax":"#pjax-container","page":"2"}', '2017-10-13 05:35:52', '2017-10-13 05:35:52'),
(848, 1, 'admin', 'GET', '::1', '[]', '2017-10-13 08:21:17', '2017-10-13 08:21:17'),
(849, 1, 'admin', 'GET', '::1', '[]', '2017-10-13 08:21:17', '2017-10-13 08:21:17'),
(850, 1, 'admin/keyword', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 08:21:26', '2017-10-13 08:21:26'),
(851, 1, 'admin/keyword/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 08:21:29', '2017-10-13 08:21:29'),
(852, 1, 'admin/keyword', 'POST', '::1', '{"initial":"\\u3044","keyword":"\\u30a4\\u30f3\\u30d5\\u30ec\\u30fc\\u30b7\\u30e7\\u30f3","description":"\\u7269\\u4fa1\\u6c34\\u6e96\\u304c\\u9577\\u3044\\u671f\\u9593\\u306b\\u308f\\u305f\\u3063\\u3066\\u6301\\u7d9a\\u7684\\u306b\\u4e0a\\u6607\\u3059\\u308b\\u3053\\u3068\\u3092\\u3044\\u3046\\u3002\\u5e02\\u5834\\u306b\\u304a\\u3044\\u3066\\u3001\\u8ca8\\u5e63\\u306e\\u767a\\u884c\\u91cf\\u304c\\u5fc5\\u8981\\u4ee5\\u4e0a\\u306b\\u5897\\u52a0\\u3057\\u305f\\u6642\\u306b\\u8d77\\u3053\\u308b\\u3002","categories_id":"2","_token":"e3rH2zCPaecWPLytokHwZdI7XYJgacVfVYERNevw","_previous_":"http:\\/\\/localhost\\/admin\\/keyword"}', '2017-10-13 08:21:51', '2017-10-13 08:21:51'),
(853, 1, 'admin/keyword', 'GET', '::1', '[]', '2017-10-13 08:21:51', '2017-10-13 08:21:51'),
(854, 1, 'admin/keyword/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 08:22:33', '2017-10-13 08:22:33'),
(855, 1, 'admin/keyword', 'POST', '::1', '{"initial":"\\u3044","keyword":"\\u30a4\\u30ce\\u30d9\\u30fc\\u30b7\\u30e7\\u30f3","description":"\\u4e00\\u822c\\u306b\\u6280\\u8853\\u9769\\u65b0\\u3001\\u307e\\u305f\\u306f\\u9769\\u65b0\\u306e\\u3053\\u3068\\u3002\\u30aa\\u30fc\\u30b9\\u30c8\\u30ea\\u30a2\\u306e\\u7d4c\\u6e08\\u5b66\\u8005\\u30b7\\u30e5\\u30f3\\u30da\\u30fc\\u30bf\\u30fc\\u306f\\u3001\\u30a4\\u30ce\\u30d9\\u30fc\\u30b7\\u30e7\\u30f3\\u3092\\u300c\\u65b0\\u7d50\\u5408\\u306e\\u9042\\u884c\\u300d\\u3068\\u5b9a\\u7fa9\\u3057\\u3001\\u8cc7\\u672c\\u4e3b\\u7fa9\\u7d4c\\u6e08\\u306b\\u304a\\u3051\\u308b\\u7d4c\\u6e08\\u767a\\u5c55\\u306e\\u4e3b\\u8981\\u56e0\\u3067\\u3042\\u308b\\u3068\\u3057\\u305f\\u3002","categories_id":"2","_token":"e3rH2zCPaecWPLytokHwZdI7XYJgacVfVYERNevw","_previous_":"http:\\/\\/localhost\\/admin\\/keyword"}', '2017-10-13 08:22:54', '2017-10-13 08:22:54'),
(856, 1, 'admin/keyword', 'GET', '::1', '[]', '2017-10-13 08:22:55', '2017-10-13 08:22:55'),
(857, 1, 'admin/keyword/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 08:23:18', '2017-10-13 08:23:18'),
(858, 1, 'admin/keyword', 'POST', '::1', '{"initial":"\\u3044","keyword":"\\u30a4\\u30f3\\u30bb\\u30f3\\u30c6\\u30a3\\u30d6","description":"\\u610f\\u6b32\\u5411\\u4e0a\\u3084\\u76ee\\u6a19\\u9054\\u6210\\u306e\\u305f\\u3081\\u306e\\u523a\\u6fc0\\u7b56\\u3002\\u500b\\u4eba\\u304c\\u884c\\u52d5\\u3092\\u8d77\\u3053\\u3059\\u3068\\u304d\\u306e\\u5185\\u7684\\u6b32\\u6c42\\uff08\\u52d5\\u56e0\\uff1a\\u30c9\\u30e9\\u30a4\\u30d6\\uff09\\u306b\\u5bfe\\u3057\\u3066\\u3001\\u305d\\u306e\\u6b32\\u6c42\\u3092\\u523a\\u6fc0\\u3057\\u3001\\u5f15\\u304d\\u3060\\u3059\\u8a98\\u56e0\\uff08\\u30a4\\u30f3\\u30bb\\u30f3\\u30c6\\u30a3\\u30d6\\uff09\\u3092\\u6307\\u3057\\u3066\\u3044\\u308b\\u3002\\u4f01\\u696d\\u306f\\u3001\\u81ea\\u793e\\u306e\\u5f93\\u696d\\u54e1\\u3092\\u52d5\\u6a5f\\u3065\\u3051\\u308b\\u305f\\u3081\\u3060\\u3051\\u3067\\u306a\\u304f\\u3001\\u8ca9\\u58f2\\u5e97\\u306e\\u8ca9\\u58f2\\u610f\\u6b32\\u3084\\u6d88\\u8cbb\\u8005\\u306e\\u8cfc\\u8cb7\\u610f\\u6b32\\u3092\\u99c6\\u308a\\u7acb\\u3066\\u308b\\u76ee\\u7684\\u3067\\u3082\\u7528\\u3044\\u3089\\u308c\\u308b\\u3002\\u5177\\u4f53\\u7684\\u306b\\u306f\\u3001\\u5831\\u5968\\u91d1\\u3001\\u8868\\u5f70\\u3001\\u666f\\u54c1\\u306a\\u3069\\u306e\\u5f62\\u3092\\u3068\\u308b\\u3002","categories_id":"2","_token":"e3rH2zCPaecWPLytokHwZdI7XYJgacVfVYERNevw","_previous_":"http:\\/\\/localhost\\/admin\\/keyword"}', '2017-10-13 08:23:32', '2017-10-13 08:23:32'),
(859, 1, 'admin/keyword', 'GET', '::1', '[]', '2017-10-13 08:23:33', '2017-10-13 08:23:33'),
(860, 1, 'admin/keyword/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 08:23:35', '2017-10-13 08:23:35'),
(861, 1, 'admin/keyword', 'POST', '::1', '{"initial":"E","keyword":"e\\u30e9\\u30fc\\u30cb\\u30f3\\u30b0","description":"\\u4e00\\u822c\\u306b\\u3001\\u30a4\\u30f3\\u30bf\\u30fc\\u30cd\\u30c3\\u30c8\\u3092\\u4f7f\\u3063\\u305f\\u9060\\u9694\\u5730\\u6559\\u80b2\\u306e\\u3053\\u3068\\u3092\\u6307\\u3059\\u3002","categories_id":"5","_token":"e3rH2zCPaecWPLytokHwZdI7XYJgacVfVYERNevw","_previous_":"http:\\/\\/localhost\\/admin\\/keyword"}', '2017-10-13 08:24:31', '2017-10-13 08:24:31'),
(862, 1, 'admin/keyword', 'GET', '::1', '[]', '2017-10-13 08:24:32', '2017-10-13 08:24:32'),
(863, 1, 'admin/keyword/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 08:25:01', '2017-10-13 08:25:01'),
(864, 1, 'admin/keyword', 'POST', '::1', '{"initial":"i","keyword":"\\u30a4\\u30f3\\u30bf\\u30fc\\u30f3\\u30b7\\u30c3\\u30d7","description":null,"categories_id":"1","_token":"e3rH2zCPaecWPLytokHwZdI7XYJgacVfVYERNevw","_previous_":"http:\\/\\/localhost\\/admin\\/keyword"}', '2017-10-13 08:25:04', '2017-10-13 08:25:04'),
(865, 1, 'admin/keyword/create', 'GET', '::1', '[]', '2017-10-13 08:25:04', '2017-10-13 08:25:04'),
(866, 1, 'admin/keyword', 'POST', '::1', '{"initial":"\\u3044","keyword":"\\u30a4\\u30f3\\u30bf\\u30fc\\u30f3\\u30b7\\u30c3\\u30d7","description":"\\u5728\\u5b66\\u4e2d\\u306e\\u5b66\\u751f\\u304c\\u3001\\u4e00\\u5b9a\\u671f\\u9593\\u3001\\u81ea\\u5206\\u306e\\u5c02\\u653b\\u3084\\u30ad\\u30e3\\u30ea\\u30a2\\u30d7\\u30e9\\u30f3\\u306b\\u57fa\\u3065\\u3044\\u3066\\u3001\\u4f01\\u696d\\u3067\\u5b9f\\u969b\\u306b\\u8077\\u5834\\u4f53\\u9a13\\u3092\\u7a4d\\u3080\\u5236\\u5ea6\\u3002","categories_id":"2","_token":"e3rH2zCPaecWPLytokHwZdI7XYJgacVfVYERNevw"}', '2017-10-13 08:25:23', '2017-10-13 08:25:23'),
(867, 1, 'admin/keyword', 'GET', '::1', '[]', '2017-10-13 08:25:23', '2017-10-13 08:25:23'),
(868, 1, 'admin/keyword/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 08:26:15', '2017-10-13 08:26:15'),
(869, 1, 'admin/keyword', 'POST', '::1', '{"initial":"\\u3048","keyword":"\\u6f14\\u7e79\\u6cd5(\\u3048\\u3093\\u3048\\u304d\\u307b\\u3046)","description":"\\u524d\\u63d0\\u3068\\u306a\\u308b\\u4e8b\\u67c4\\u3092\\u3082\\u3068\\u306b\\u3001\\u305d\\u3053\\u304b\\u3089\\u78ba\\u5b9f\\u306b\\u8a00\\u3048\\u308b\\u7d50\\u8ad6\\u3092\\u5c0e\\u304d\\u51fa\\u3059\\u63a8\\u8ad6\\u6cd5\\u306e\\u3053\\u3068\\u3002\\u5e30\\u7d0d\\u6cd5\\u306e\\u5bfe\\u7fa9\\u8a9e\\u3067\\u3001\\u6f14\\u7e79\\u7684\\u63a8\\u8ad6\\u3068\\u3082\\u3088\\u3070\\u308c\\u308b\\u3002","categories_id":"2","_token":"e3rH2zCPaecWPLytokHwZdI7XYJgacVfVYERNevw","_previous_":"http:\\/\\/localhost\\/admin\\/keyword"}', '2017-10-13 08:26:34', '2017-10-13 08:26:34'),
(870, 1, 'admin/keyword', 'GET', '::1', '[]', '2017-10-13 08:26:34', '2017-10-13 08:26:34'),
(871, 1, 'admin/keyword/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 08:27:30', '2017-10-13 08:27:30'),
(872, 1, 'admin/keyword', 'POST', '::1', '{"initial":"\\u304b","keyword":"\\u30ab\\u30eb\\u30c6\\u30eb","description":"\\u4f01\\u696d\\u9023\\u5408\\u3068\\u3044\\u308f\\u308c\\u308b\\u3002\\u540c\\u696d\\u7a2e\\u307e\\u305f\\u306f\\u305d\\u308c\\u306b\\u8fd1\\u3044\\u4f01\\u696d\\u540c\\u58eb\\u304c\\u3001\\u4e92\\u3044\\u306b\\u7af6\\u4e89\\u3092\\u907f\\u3051\\u5229\\u76ca\\u3092\\u78ba\\u4fdd\\u3059\\u308b\\u305f\\u3081\\u306b\\u3001\\u5354\\u5b9a\\u3084\\u5408\\u610f\\u3092\\u884c\\u3046\\u3053\\u3068\\u3002\\u4f55\\u306b\\u3064\\u3044\\u3066\\u7af6\\u4e89\\u3092\\u5236\\u9650\\u3059\\u308b\\u304b\\u306b\\u3088\\u3063\\u3066\\u3001\\u4fa1\\u683c\\u30ab\\u30eb\\u30c6\\u30eb\\u3001\\u751f\\u7523\\u30ab\\u30eb\\u30c6\\u30eb\\u3001\\u8ca9\\u58f2\\u30ab\\u30eb\\u30c6\\u30eb\\u3001\\u5165\\u672d\\u8ac7\\u5408\\u306a\\u3069\\u306b\\u533a\\u5225\\u3055\\u308c\\u308b\\u3002\\u308f\\u304c\\u56fd\\u3067\\u306f\\u3001\\u30ab\\u30eb\\u30c6\\u30eb\\u306f\\u6d88\\u8cbb\\u8005\\u5229\\u76ca\\u3092\\u640d\\u306a\\u3046\\u3053\\u3068\\u304b\\u3089\\u72ec\\u5360\\u7981\\u6b62\\u6cd5\\u306b\\u3088\\u3063\\u3066\\u7981\\u6b62\\u3055\\u308c\\u3066\\u3044\\u308b\\u3002","categories_id":"2","_token":"e3rH2zCPaecWPLytokHwZdI7XYJgacVfVYERNevw","_previous_":"http:\\/\\/localhost\\/admin\\/keyword"}', '2017-10-13 08:27:58', '2017-10-13 08:27:58'),
(873, 1, 'admin/keyword', 'GET', '::1', '[]', '2017-10-13 08:27:58', '2017-10-13 08:27:58'),
(874, 1, 'admin/keyword/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 08:28:19', '2017-10-13 08:28:19'),
(875, 1, 'admin/keyword', 'POST', '::1', '{"initial":"\\u304b","keyword":"\\u74b0\\u5883\\u30a2\\u30bb\\u30b9\\u30e1\\u30f3\\u30c8","description":"\\u74b0\\u5883\\u5f71\\u97ff\\u8a55\\u4fa1\\u3002\\u5730\\u57df\\u958b\\u767a\\u3084\\u516c\\u5171\\u4e8b\\u696d\\u306a\\u3069\\u3001\\u74b0\\u5883\\u306b\\u5927\\u304d\\u306a\\u5f71\\u97ff\\u3092\\u53ca\\u307c\\u3059\\u53ef\\u80fd\\u6027\\u304c\\u3042\\u308b\\u8a08\\u753b\\u306b\\u3064\\u3044\\u3066\\u306f\\u3001\\u4e8b\\u524d\\u306b\\u81ea\\u7136\\u3078\\u306e\\u5f71\\u97ff\\u5ea6\\u306e\\u8abf\\u67fb\\u30fb\\u4e88\\u6e2c\\u30fb\\u8a55\\u4fa1\\u3092\\u884c\\u3044\\u3001\\u81ea\\u7136\\u74b0\\u5883\\u306e\\u7834\\u58ca\\u3092\\u672a\\u7136\\u306b\\u9632\\u3054\\u3046\\u3068\\u3044\\u3046\\u3082\\u306e\\u3002\\u79d1\\u5b66\\u7684\\u306a\\u8abf\\u67fb\\u3092\\u884c\\u3046\\u3068\\u540c\\u6642\\u306b\\u3001\\u5730\\u57df\\u4f4f\\u6c11\\u306e\\u610f\\u898b\\u3082\\u53cd\\u6620\\u3055\\u305b\\u308b\\u3002\\u65e5\\u672c\\u306b\\u304a\\u3044\\u3066\\u306f\\u30011997\\u5e74\\u306b\\u74b0\\u5883\\u5f71\\u97ff\\u8a55\\u4fa1\\u6cd5\\uff08\\u74b0\\u5883\\u30a2\\u30bb\\u30b9\\u30e1\\u30f3\\u30c8\\u6cd5\\uff09\\u304c\\u5236\\u5b9a\\u3055\\u308c\\u305f\\u3002","categories_id":"2","_token":"e3rH2zCPaecWPLytokHwZdI7XYJgacVfVYERNevw","_previous_":"http:\\/\\/localhost\\/admin\\/keyword"}', '2017-10-13 08:28:33', '2017-10-13 08:28:33'),
(876, 1, 'admin/keyword', 'GET', '::1', '[]', '2017-10-13 08:28:34', '2017-10-13 08:28:34'),
(877, 1, 'admin/keyword/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 08:29:05', '2017-10-13 08:29:05'),
(878, 1, 'admin/keyword', 'POST', '::1', '{"initial":"\\u304d","keyword":"\\u5e30\\u7d0d\\u6cd5(\\u304d\\u306e\\u3046\\u307b\\u3046)","description":"\\u985e\\u4f3c\\u306e\\u4e8b\\u4f8b\\u3092\\u3082\\u3068\\u306b\\u3057\\u3066\\u3001\\u4e00\\u822c\\u7684\\u6cd5\\u5247\\u3084\\u539f\\u7406\\u3092\\u5c0e\\u304d\\u51fa\\u3059\\u63a8\\u8ad6\\u6cd5\\u306e\\u3053\\u3068\\u3002\\u6f14\\u7e79\\u6cd5\\u306e\\u5bfe\\u7fa9\\u8a9e\\u3067\\u3001\\u5e30\\u7d0d\\u7684\\u63a8\\u8ad6\\u3068\\u3082\\u3088\\u3070\\u308c\\u308b\\u3002","categories_id":"2","_token":"e3rH2zCPaecWPLytokHwZdI7XYJgacVfVYERNevw","_previous_":"http:\\/\\/localhost\\/admin\\/keyword"}', '2017-10-13 08:29:23', '2017-10-13 08:29:23'),
(879, 1, 'admin/keyword', 'GET', '::1', '[]', '2017-10-13 08:29:23', '2017-10-13 08:29:23'),
(880, 1, 'admin/keyword/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 08:30:26', '2017-10-13 08:30:26'),
(881, 1, 'admin/keyword', 'POST', '::1', '{"initial":"\\u304f","keyword":"\\u30af\\u30fc\\u30ea\\u30f3\\u30b0\\u30fb\\u30aa\\u30d5\\u5236\\u5ea6","description":"\\u6d88\\u8cbb\\u8005\\u304c\\u3001\\u3042\\u308b\\u5546\\u54c1\\u3084\\u30b5\\u30fc\\u30d3\\u30b9\\u306e\\u8cfc\\u5165\\u5951\\u7d04\\u3092\\u884c\\u3063\\u305f\\u5834\\u5408\\u3001\\u4e00\\u5b9a\\u671f\\u9593\\u4ee5\\u5185\\u306a\\u3089\\u3070\\u3001\\u7121\\u6761\\u4ef6\\u3067\\u5951\\u7d04\\u306e\\u53d6\\u6d88\\u30fb\\u64a4\\u56de\\u304c\\u8a8d\\u3081\\u3089\\u308c\\u308b\\u5236\\u5ea6\\u3002","categories_id":"2","_token":"e3rH2zCPaecWPLytokHwZdI7XYJgacVfVYERNevw","_previous_":"http:\\/\\/localhost\\/admin\\/keyword"}', '2017-10-13 08:30:46', '2017-10-13 08:30:46'),
(882, 1, 'admin/keyword', 'GET', '::1', '[]', '2017-10-13 08:30:46', '2017-10-13 08:30:46'),
(883, 1, 'admin/keyword/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 08:31:35', '2017-10-13 08:31:35'),
(884, 1, 'admin/keyword', 'POST', '::1', '{"initial":"\\u3051","keyword":"\\u8b19\\u8b72\\u8a9e","description":"\\u656c\\u8a9e\\u306e\\u5206\\u985e\\u306e1\\u3064\\u3067\\u3001\\u81ea\\u5206\\u306e\\u884c\\u70ba\\u3084\\u6301\\u3061\\u7269\\u3092\\u4f4e\\u3081\\u3066\\u8868\\u73fe\\u3059\\u308b\\u3053\\u3068\\u3067\\u3001\\u76f8\\u624b\\u306b\\u5bfe\\u3059\\u308b\\u656c\\u3044\\u306e\\u611f\\u60c5\\u3084\\u59ff\\u52e2\\u3092\\u8868\\u3059\\u65b9\\u6cd5\\u3002\\u4e3b\\u306b\\u306f\\u3001\\u81ea\\u5206\\u81ea\\u8eab\\u3001\\u81ea\\u5206\\u306e\\u5074\\u306b\\u3044\\u308b\\u4eba\\u3001\\u81ea\\u5206\\u304c\\u6240\\u5c5e\\u3059\\u308b\\u7d44\\u7e54\\u306e\\u884c\\u70ba\\u3084\\u6301\\u3061\\u7269\\u306a\\u3069\\u306b\\u7528\\u3044\\u308b\\u304c\\u3001\\u8a71\\u306e\\u76f8\\u624b\\u306b\\u5bfe\\u3059\\u308b\\u7b2c\\u4e09\\u8005\\u306e\\u884c\\u70ba\\u306b\\u7528\\u3044\\u3066\\u76f8\\u624b\\u3092\\u9ad8\\u3081\\u305f\\u308a\\u3001\\u8a71\\u306e\\u4e2d\\u306e\\u3042\\u308b\\u767b\\u5834\\u4eba\\u7269\\u306b\\u5bfe\\u3059\\u308b\\u7b2c\\u4e09\\u8005\\u306e\\u884c\\u70ba\\u306b\\u7528\\u3044\\u3066\\u305d\\u306e\\u95a2\\u4fc2\\u3092\\u8868\\u73fe\\u3057\\u305f\\u308a\\u3082\\u3059\\u308b\\u3002","categories_id":"2","_token":"e3rH2zCPaecWPLytokHwZdI7XYJgacVfVYERNevw","_previous_":"http:\\/\\/localhost\\/admin\\/keyword"}', '2017-10-13 08:32:02', '2017-10-13 08:32:02'),
(885, 1, 'admin/keyword', 'GET', '::1', '[]', '2017-10-13 08:32:02', '2017-10-13 08:32:02'),
(886, 1, 'admin/keyword/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 08:32:30', '2017-10-13 08:32:30'),
(887, 1, 'admin/keyword', 'POST', '::1', '{"initial":"\\u305d","keyword":"\\u5c0a\\u656c\\u8a9e","description":"\\u656c\\u8a9e\\u306e\\u5206\\u985e\\u306e1\\u3064\\u3067\\u3001\\u76f8\\u624b\\u306e\\u884c\\u70ba\\u3001\\u6301\\u3061\\u7269\\u3001\\u72b6\\u614b\\u306a\\u3069\\u3092\\u9ad8\\u3081\\u3066\\u8868\\u73fe\\u3059\\u308b\\u3053\\u3068\\u3067\\u3001\\u76f8\\u624b\\u306b\\u5bfe\\u3059\\u308b\\u656c\\u3044\\u306e\\u611f\\u60c5\\u3084\\u59ff\\u52e2\\u3092\\u8868\\u3059\\u65b9\\u6cd5\\u3002\\u8a71\\u306e\\u805e\\u304d\\u624b\\u3084\\u8aad\\u307f\\u624b\\u306b\\u5bfe\\u3057\\u3066\\u3060\\u3051\\u3067\\u306a\\u304f\\u3001\\u8a71\\u306e\\u4e2d\\u306b\\u51fa\\u3066\\u304f\\u308b\\u4eba\\u7269\\u306b\\u5bfe\\u3057\\u3066\\u3082\\u7528\\u3044\\u308b\\u3002","categories_id":"2","_token":"e3rH2zCPaecWPLytokHwZdI7XYJgacVfVYERNevw","_previous_":"http:\\/\\/localhost\\/admin\\/keyword"}', '2017-10-13 08:32:47', '2017-10-13 08:32:47'),
(888, 1, 'admin/keyword', 'GET', '::1', '[]', '2017-10-13 08:32:47', '2017-10-13 08:32:47'),
(889, 1, 'admin/keyword/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 08:33:01', '2017-10-13 08:33:01'),
(890, 1, 'admin/keyword', 'POST', '::1', '{"initial":"\\u3051","keyword":"\\u656c\\u8a9e","description":"\\u76f8\\u624b\\u306b\\u5bfe\\u3057\\u3066\\u300c\\u656c\\u3044\\u300d\\u3084\\u300c\\u3078\\u308a\\u304f\\u3060\\u308a\\u300d\\u306a\\u3069\\u3092\\u542b\\u3080\\u611f\\u60c5\\u3084\\u59ff\\u52e2\\u3092\\u8868\\u3059\\u8868\\u73fe\\u65b9\\u6cd5\\u3002\\u307e\\u305f\\u3001\\u300c\\u656c\\u3044\\u300d\\u3084\\u300c\\u3078\\u308a\\u304f\\u3060\\u308a\\u300d\\u306e\\u8868\\u73fe\\u3092\\u7528\\u3044\\u3066\\u3001\\u8a71\\u306e\\u4e2d\\u306b\\u51fa\\u3066\\u304f\\u308b\\u4eba\\u7269\\u3068\\u76f8\\u624b\\u3084\\u81ea\\u5206\\u306e\\u4e0a\\u4e0b\\u95a2\\u4fc2\\u3084\\u767b\\u5834\\u4eba\\u7269\\u540c\\u58eb\\u306e\\u4e0a\\u4e0b\\u95a2\\u4fc2\\u3092\\u8868\\u73fe\\u3059\\u308b\\u969b\\u306b\\u3082\\u7528\\u3044\\u308b\\u3002","categories_id":"2","_token":"e3rH2zCPaecWPLytokHwZdI7XYJgacVfVYERNevw","_previous_":"http:\\/\\/localhost\\/admin\\/keyword"}', '2017-10-13 08:33:13', '2017-10-13 08:33:13'),
(891, 1, 'admin/keyword', 'GET', '::1', '[]', '2017-10-13 08:33:13', '2017-10-13 08:33:13'),
(892, 1, 'admin/keyword/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 08:33:36', '2017-10-13 08:33:36'),
(893, 1, 'admin/keyword', 'POST', '::1', '{"initial":"\\u3066","keyword":"\\u4e01\\u5be7\\u8a9e","description":"\\u656c\\u8a9e\\u306e\\u5206\\u985e\\u306e1\\u3064\\u3067\\u3001\\u3082\\u306e\\u3084\\u884c\\u70ba\\u306a\\u3069\\u3092\\u4e01\\u5be7\\u306b\\u8868\\u73fe\\u3059\\u308b\\u3053\\u3068\\u3067\\u3001\\u76f8\\u624b\\u306b\\u5bfe\\u3059\\u308b\\u656c\\u3044\\u306e\\u611f\\u60c5\\u3084\\u59ff\\u52e2\\u3092\\u8868\\u3059\\u65b9\\u6cd5\\u3002\\u300c\\u304a\\u300d\\u300c\\u3054\\u300d\\u306a\\u3069\\u306e\\u63a5\\u982d\\u8a9e\\u3092\\u3064\\u3051\\u305f\\u308a\\u3001\\u8a9e\\u5c3e\\u306b\\u300c\\u3067\\u3059\\u300d\\u300c\\u307e\\u3059\\u300d\\u300c\\u3054\\u3056\\u3044\\u307e\\u3059\\u300d\\u306a\\u3069\\u3092\\u3064\\u3051\\u308b\\u8868\\u73fe\\u3002\\u4e01\\u5be7\\u8a9e\\u306f\\u5c0a\\u656c\\u8a9e\\u3084\\u8b19\\u8b72\\u8a9e\\u3068\\u306f\\u9055\\u3044\\u3001\\u76f8\\u624b\\u306e\\u3053\\u3068\\u304b\\u81ea\\u5206\\u3084\\u81ea\\u5206\\u306e\\u5074\\u306e\\u3053\\u3068\\u304b\\u306a\\u3069\\u3092\\u610f\\u8b58\\u3059\\u308b\\u3053\\u3068\\u306a\\u304f\\u3001\\u5e45\\u5e83\\u304f\\u3044\\u308d\\u3044\\u308d\\u306a\\u4eba\\u3084\\u3082\\u306e\\u306b\\u4f7f\\u3046\\u3053\\u3068\\u304c\\u3067\\u304d\\u308b\\u3002","categories_id":"2","_token":"e3rH2zCPaecWPLytokHwZdI7XYJgacVfVYERNevw","_previous_":"http:\\/\\/localhost\\/admin\\/keyword"}', '2017-10-13 08:33:57', '2017-10-13 08:33:57'),
(894, 1, 'admin/keyword', 'GET', '::1', '[]', '2017-10-13 08:33:57', '2017-10-13 08:33:57'),
(895, 1, 'admin/keyword/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 08:35:03', '2017-10-13 08:35:03'),
(896, 1, 'admin/keyword', 'POST', '::1', '{"initial":"\\u3055","keyword":"\\u4e09\\u516d\\u5354\\u5b9a(\\u3055\\u3093\\u308d\\u304f\\u304d\\u3087\\u3046\\u3066\\u3044\\/\\u3055\\u3076\\u308d\\u304f\\u304d\\u3087\\u3046\\u3066\\u3044)","description":"\\u6642\\u9593\\u5916\\u4f11\\u65e5\\u52b4\\u50cd\\u306b\\u3064\\u3044\\u3066\\u3001\\u4f7f\\u7528\\u8005\\u304c\\u52b4\\u50cd\\u7d44\\u5408\\uff08\\u307e\\u305f\\u306f\\u52b4\\u50cd\\u8005\\u306e\\u904e\\u534a\\u6570\\u3092\\u4ee3\\u8868\\u3059\\u308b\\u8005\\uff09\\u3068\\u306e\\u9593\\u3067\\u7de0\\u7d50\\u3059\\u308b\\u52b4\\u4f7f\\u5354\\u5b9a\\u3092\\u3044\\u3046\\u3002\\u3053\\u308c\\u3092\\u7de0\\u7d50\\u3057\\u6240\\u8f44\\u52b4\\u50cd\\u57fa\\u6e96\\u76e3\\u7763\\u7f72\\u9577\\u306b\\u5c4a\\u3051\\u51fa\\u306a\\u3044\\u9650\\u308a\\u3001\\u4f7f\\u7528\\u8005\\u306f\\u52b4\\u50cd\\u8005\\u306b\\u6642\\u9593\\u5916\\u52b4\\u50cd\\u3084\\u4f11\\u65e5\\u52b4\\u50cd\\u3092\\u547d\\u3058\\u308b\\u3053\\u3068\\u306f\\u3067\\u304d\\u306a\\u3044\\u3002\\u52b4\\u50cd\\u57fa\\u6e96\\u6cd536\\u6761\\u306b\\u305d\\u306e\\u5b9a\\u3081\\u304c\\u3042\\u308b\\u3053\\u3068\\u304b\\u3089\\u3001\\u4e09\\u516d\\u5354\\u5b9a\\u3068\\u3044\\u308f\\u308c\\u308b\\u3002","categories_id":"4","_token":"e3rH2zCPaecWPLytokHwZdI7XYJgacVfVYERNevw","_previous_":"http:\\/\\/localhost\\/admin\\/keyword"}', '2017-10-13 08:35:43', '2017-10-13 08:35:43'),
(897, 1, 'admin/keyword', 'GET', '::1', '[]', '2017-10-13 08:35:43', '2017-10-13 08:35:43'),
(898, 1, 'admin/keyword/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 08:36:41', '2017-10-13 08:36:41'),
(899, 1, 'admin/keyword', 'POST', '::1', '{"initial":"\\u3057","keyword":"\\u6642\\u9593\\u5916\\u624b\\u5f53","description":"\\u4f1a\\u793e\\u306e\\u6240\\u5b9a\\u52b4\\u50cd\\u6642\\u9593\\u3092\\u8d85\\u3048\\u308b\\u6642\\u9593\\u5916\\u306e\\u52e4\\u52d9\\u306b\\u5bfe\\u3057\\u3066\\u652f\\u7d66\\u3055\\u308c\\u308b\\u624b\\u5f53\\u3002\\u6708\\u7d66\\u5236\\u306e\\u5834\\u5408\\u3001\\u6bce\\u6708\\u306e\\u7d66\\u4e0e\\u304b\\u3089\\u6642\\u9593\\u5358\\u4fa1\\u3092\\u6c42\\u3081\\u3001\\u8d85\\u904e\\u3057\\u305f\\u6642\\u9593\\u306b\\u5fdc\\u3058\\u305f\\u91d1\\u984d\\u304c\\u652f\\u7d66\\u3055\\u308c\\u308b\\u3002\\u6cd5\\u4ee4\\u3067\\u306f\\u30011\\u65e58\\u6642\\u9593\\u307e\\u305f\\u306f1\\u903140\\u6642\\u9593\\u3092\\u8d85\\u3048\\u308b\\u52e4\\u52d9\\u306b\\u3064\\u3044\\u3066\\u306f\\u3001\\u6642\\u9593\\u5358\\u4fa1\\u306b\\u52a0\\u3048\\u30660.25\\u306e\\u5272\\u5897\\u304c\\u7fa9\\u52d9\\u3065\\u3051\\u3089\\u308c\\u3066\\u3044\\u308b\\u3002\\u307e\\u305f\\u300122\\u6642\\u304b\\u3089\\u7fcc\\u671d5\\u6642\\u307e\\u3067\\u306e\\u6df1\\u591c\\u306b\\u52e4\\u52d9\\u3057\\u305f\\u5834\\u5408\\u306f0.25\\u3001\\u4f11\\u65e5\\u306e\\u52e4\\u52d9\\u306b\\u3064\\u3044\\u3066\\u306f0.35\\u306e\\u5272\\u5897\\u8cc3\\u91d1\\u304c\\u652f\\u7d66\\u3055\\u308c\\u308b\\u3002","categories_id":"4","_token":"e3rH2zCPaecWPLytokHwZdI7XYJgacVfVYERNevw","_previous_":"http:\\/\\/localhost\\/admin\\/keyword"}', '2017-10-13 08:36:56', '2017-10-13 08:36:56'),
(900, 1, 'admin/keyword', 'GET', '::1', '[]', '2017-10-13 08:36:56', '2017-10-13 08:36:56'),
(901, 1, 'admin/keyword/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 08:37:10', '2017-10-13 08:37:10'),
(902, 1, 'admin/keyword', 'POST', '::1', '{"initial":"\\u3057","keyword":"\\u6642\\u9593\\u5916\\u52b4\\u50cd","description":"\\u6c7a\\u3081\\u3089\\u308c\\u305f\\u52b4\\u50cd\\u6642\\u9593\\u3092\\u8d85\\u3048\\u3066\\u50cd\\u304f\\u3053\\u3068\\u3002\\u52b4\\u50cd\\u57fa\\u6e96\\u6cd5\\u3067\\u306f\\u30011\\u65e58\\u6642\\u9593\\u30011\\u903140\\u6642\\u9593\\u306e\\u6cd5\\u5b9a\\u52b4\\u50cd\\u6642\\u9593\\u3092\\u8d85\\u3048\\u305f\\u52e4\\u52d9\\u3092\\u3055\\u3059\\u3002\\u4f01\\u696d\\u304c\\u6cd5\\u5b9a\\u52b4\\u50cd\\u6642\\u9593\\u3092\\u8d85\\u3048\\u305f\\u52e4\\u52d9\\u3092\\u547d\\u3058\\u308b\\u305f\\u3081\\u306b\\u306f\\u3001\\u5f93\\u696d\\u54e1\\u306e\\u4ee3\\u8868\\u3068\\u4e09\\u516d\\u5354\\u5b9a\\u3092\\u7de0\\u7d50\\u3057\\u3001\\u52b4\\u50cd\\u57fa\\u6e96\\u76e3\\u7763\\u7f72\\u306b\\u5c4a\\u3051\\u51fa\\u3066\\u304a\\u304f\\u5fc5\\u8981\\u304c\\u3042\\u308b\\u3002\\u305d\\u308c\\u306b\\u3088\\u308a\\u3001\\u4f01\\u696d\\u306f\\u305d\\u306e\\u5354\\u5b9a\\u306e\\u7bc4\\u56f2\\u3067\\u6642\\u9593\\u5916\\u52b4\\u50cd\\u3092\\u547d\\u3058\\u308b\\u3053\\u3068\\u304c\\u3067\\u304d\\u308b\\u304c\\u3001\\u5c4a\\u3051\\u51fa\\u306a\\u304f\\u6642\\u9593\\u5916\\u52b4\\u50cd\\u3092\\u547d\\u3058\\u305f\\u308a\\u3001\\u5354\\u5b9a\\u306e\\u7bc4\\u56f2\\u3092\\u8d85\\u3048\\u305f\\u52b4\\u50cd\\u3092\\u547d\\u3058\\u308b\\u3068\\u5211\\u4e8b\\u7f70\\u306e\\u5bfe\\u8c61\\u3068\\u306a\\u308b\\u3002","categories_id":"4","_token":"e3rH2zCPaecWPLytokHwZdI7XYJgacVfVYERNevw","_previous_":"http:\\/\\/localhost\\/admin\\/keyword"}', '2017-10-13 08:37:26', '2017-10-13 08:37:26'),
(903, 1, 'admin/keyword', 'GET', '::1', '[]', '2017-10-13 08:37:26', '2017-10-13 08:37:26'),
(904, 1, 'admin/keyword/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 08:38:26', '2017-10-13 08:38:26'),
(905, 1, 'admin/keyword', 'POST', '::1', '{"initial":"\\u3057","keyword":"\\u793e\\u4f1a\\u4fdd\\u967a","description":"\\u5065\\u5eb7\\u4fdd\\u967a\\u30fb\\u539a\\u751f\\u5e74\\u91d1\\u4fdd\\u967a\\u30fb\\u96c7\\u7528\\u4fdd\\u967a\\u30fb\\u52b4\\u707d\\u4fdd\\u967a\\u306e\\u3088\\u3046\\u306b\\u3001\\u56fd\\u304c\\u6cd5\\u5f8b\\u3067\\u3042\\u308b\\u4e00\\u5b9a\\u306e\\u6761\\u4ef6\\u306b\\u5f53\\u3066\\u306f\\u307e\\u308b\\u8077\\u57df\\u30fb\\u5730\\u57df\\u306e\\u4eba\\u3005\\u306b\\u5f37\\u5236\\u7684\\u306b\\u9069\\u7528\\u3059\\u308b\\u3002\\u4e0d\\u616e\\u306e\\u4e8b\\u614b\\u306e\\u969b\\u306e\\u52b4\\u50cd\\u8005\\u3068\\u305d\\u306e\\u5bb6\\u65cf\\u306e\\u751f\\u6d3b\\u5b89\\u5b9a\\u304c\\u76ee\\u7684\\u3067\\u3001\\u8cbb\\u7528\\u306f\\u653f\\u5e9c\\u30fb\\u4f7f\\u7528\\u8005\\u30fb\\u52b4\\u50cd\\u8005\\u306e\\u4e09\\u8005\\u304c\\u8ca0\\u62c5\\u3059\\u308b\\u3002","categories_id":"4","_token":"e3rH2zCPaecWPLytokHwZdI7XYJgacVfVYERNevw","_previous_":"http:\\/\\/localhost\\/admin\\/keyword"}', '2017-10-13 08:38:37', '2017-10-13 08:38:37'),
(906, 1, 'admin/keyword', 'GET', '::1', '[]', '2017-10-13 08:38:37', '2017-10-13 08:38:37'),
(907, 1, 'admin/keyword/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 08:38:47', '2017-10-13 08:38:47'),
(908, 1, 'admin/keyword', 'POST', '::1', '{"initial":"\\u3057","keyword":"\\u5c31\\u696d\\u898f\\u5247","description":"\\u8cc3\\u91d1\\u3084\\u52b4\\u50cd\\u6642\\u9593\\u3001\\u4f11\\u6687\\u306a\\u3069\\u306e\\u52b4\\u50cd\\u6761\\u4ef6\\u3084\\u3001\\u50cd\\u304f\\u3046\\u3048\\u3067\\u306e\\u30eb\\u30fc\\u30eb\\u3092\\u53d6\\u308a\\u6c7a\\u3081\\u305f\\u3082\\u306e\\u3002\\u5e38\\u664210\\u4eba\\u4ee5\\u4e0a\\u306e\\u52b4\\u50cd\\u8005\\u3092\\u4f7f\\u7528\\u3059\\u308b\\u5834\\u5408\\u3001\\u4f7f\\u7528\\u8005\\u306f\\u5fc5\\u305a\\u4f5c\\u6210\\u3057\\u3001\\u52b4\\u50cd\\u57fa\\u6e96\\u76e3\\u7763\\u7f72\\u9577\\u306b\\u5c4a\\u3051\\u51fa\\u306a\\u3051\\u308c\\u3070\\u306a\\u3089\\u306a\\u3044\\u3002\\u307e\\u305f\\u3001\\u5909\\u66f4\\u306b\\u969b\\u3057\\u3066\\u306f\\u52b4\\u50cd\\u8005\\u306b\\u610f\\u898b\\u3092\\u8074\\u53d6\\u3059\\u308b\\u3053\\u3068\\u3001\\u5c31\\u696d\\u898f\\u5247\\u3092\\u5468\\u77e5\\u3055\\u305b\\u308b\\u3053\\u3068\\u3082\\u7fa9\\u52d9\\u3065\\u3051\\u3089\\u308c\\u3066\\u3044\\u308b\\u3002 \\u306a\\u304a\\u3001\\u52b4\\u50cd\\u57fa\\u6e96\\u6cd5\\u3084\\u52b4\\u50cd\\u5354\\u7d04\\u306b\\u53cd\\u3059\\u308b\\u5c31\\u696d\\u898f\\u5247\\u306f\\u7121\\u52b9\\u3068\\u306a\\u308b\\u3002","categories_id":"4","_token":"e3rH2zCPaecWPLytokHwZdI7XYJgacVfVYERNevw","_previous_":"http:\\/\\/localhost\\/admin\\/keyword"}', '2017-10-13 08:39:02', '2017-10-13 08:39:02'),
(909, 1, 'admin/keyword', 'GET', '::1', '[]', '2017-10-13 08:39:02', '2017-10-13 08:39:02'),
(910, 1, 'admin/keyword/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 08:39:32', '2017-10-13 08:39:32'),
(911, 1, 'admin/keyword', 'POST', '::1', '{"initial":"\\u3057","keyword":"\\u7d39\\u4ecb\\u4e88\\u5b9a\\u6d3e\\u9063","description":"\\u5c31\\u8077\\u3092\\u5e0c\\u671b\\u3059\\u308b\\u4eba\\u6750\\u3068\\u3001\\u63a1\\u7528\\u3092\\u4e88\\u5b9a\\u3057\\u3066\\u3044\\u308b\\u4f01\\u696d\\u3068\\u3092\\u5f15\\u304d\\u5408\\u308f\\u305b\\u3001\\u793e\\u54e1\\u96c7\\u7528\\u3092\\u524d\\u63d0\\u3068\\u3057\\u3066\\u4eba\\u6750\\u6d3e\\u9063\\u3092\\u884c\\u3046\\u3053\\u3068\\u3002\\u4e00\\u5b9a\\u306e\\u5951\\u7d04\\u671f\\u9593\\u3092\\u6d3e\\u9063\\u52b4\\u50cd\\u8005\\u3068\\u3057\\u3066\\u50cd\\u3044\\u305f\\u5f8c\\u3001\\u52b4\\u4f7f\\u53cc\\u65b9\\u306e\\u5408\\u610f\\u306e\\u4e0a\\u3067\\u63a1\\u7528\\u304c\\u6c7a\\u5b9a\\u3055\\u308c\\u308b\\u3002\\u3053\\u306e\\u7d39\\u4ecb\\u4e88\\u5b9a\\u6d3e\\u9063\\u306f\\u3001\\u52b4\\u50cd\\u8005\\u6d3e\\u9063\\u4e8b\\u696d\\u3068\\u8077\\u696d\\u7d39\\u4ecb\\u4e8b\\u696d\\u306e\\u4e21\\u65b9\\u306e\\u8a31\\u53ef\\u3092\\u53d7\\u3051\\u305f\\u6d3e\\u9063\\u4f1a\\u793e\\u306e\\u307f\\u304c\\u884c\\u3048\\u308b\\u3002\\u307e\\u305f\\u3001\\u52b4\\u50cd\\u8005\\u6d3e\\u9063\\u6cd5\\u3067\\u7981\\u6b62\\u3055\\u308c\\u3066\\u3044\\u308b\\u8077\\u7a2e\\u306b\\u3064\\u3044\\u3066\\u306f\\u884c\\u3046\\u3053\\u3068\\u304c\\u3067\\u304d\\u306a\\u3044\\u3002","categories_id":"4","_token":"e3rH2zCPaecWPLytokHwZdI7XYJgacVfVYERNevw","_previous_":"http:\\/\\/localhost\\/admin\\/keyword"}', '2017-10-13 08:39:47', '2017-10-13 08:39:47'),
(912, 1, 'admin/keyword', 'GET', '::1', '[]', '2017-10-13 08:39:47', '2017-10-13 08:39:47'),
(913, 1, 'admin/keyword/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 08:40:39', '2017-10-13 08:40:39'),
(914, 1, 'admin/keyword', 'POST', '::1', '{"initial":"\\u3059","keyword":"\\u30b9\\u30bf\\u30b0\\u30d5\\u30ec\\u30fc\\u30b7\\u30e7\\u30f3","description":"\\u30b9\\u30bf\\u30b0\\u30cd\\u30fc\\u30b7\\u30e7\\u30f3\\uff08\\u505c\\u6ede\\uff09\\u3068\\u30a4\\u30f3\\u30d5\\u30ec\\u30fc\\u30b7\\u30e7\\u30f3\\u3092\\u5408\\u308f\\u305b\\u305f\\u8a00\\u8449\\u3002\\u666f\\u6c17\\u304c\\u505c\\u6ede\\u3057\\u3066\\u3044\\u308b\\u72b6\\u6cc1\\u4e0b\\u3067\\u3001\\u540c\\u6642\\u306b\\u30a4\\u30f3\\u30d5\\u30ec\\u30fc\\u30b7\\u30e7\\u30f3\\uff08\\u7269\\u4fa1\\u4e0a\\u6607\\uff09\\u304c\\u8d77\\u3053\\u308b\\u73fe\\u8c61\\u3092\\u3044\\u3046\\u3002","categories_id":"2","_token":"e3rH2zCPaecWPLytokHwZdI7XYJgacVfVYERNevw","_previous_":"http:\\/\\/localhost\\/admin\\/keyword"}', '2017-10-13 08:41:05', '2017-10-13 08:41:05'),
(915, 1, 'admin/keyword', 'GET', '::1', '[]', '2017-10-13 08:41:06', '2017-10-13 08:41:06'),
(916, 1, 'admin/keyword/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 08:41:45', '2017-10-13 08:41:45'),
(917, 1, 'admin/keyword', 'POST', '::1', '{"initial":"\\u3059","keyword":"\\u30b9\\u30d1\\u30e0","description":"\\u3042\\u308b\\u500b\\u4eba\\u3084\\u4f01\\u696d\\u304c\\u53d7\\u4fe1\\u8005\\u306e\\u610f\\u601d\\u3068\\u306f\\u7121\\u95a2\\u4fc2\\u306b\\u5165\\u624b\\u3057\\u305f\\u30e1\\u30fc\\u30eb\\u30a2\\u30c9\\u30ec\\u30b9\\u306b\\u3042\\u3066\\u3066\\u3001\\u7121\\u5dee\\u5225\\u306b\\u5927\\u91cf\\u9001\\u4fe1\\u3059\\u308b\\u96fb\\u5b50\\u30e1\\u30c3\\u30bb\\u30fc\\u30b8\\u306e\\u3053\\u3068\\u3002\\u30e1\\u30fc\\u30eb\\u3067\\u9001\\u3089\\u308c\\u308b\\u3053\\u3068\\u304c\\u591a\\u304f\\u3001\\u300c\\u8ff7\\u60d1\\u30e1\\u30fc\\u30eb\\u300d\\u3068\\u3082\\u547c\\u3070\\u308c\\u308b\\u3002\\u30b9\\u30d1\\u30e0\\u306e\\u76ee\\u7684\\u306f\\u4e3b\\u306b\\u5e83\\u544a\\u3067\\u3042\\u308a\\u3001\\u53d7\\u4fe1\\u8005\\u306b\\u4f55\\u3089\\u304b\\u306e\\u5546\\u54c1\\u3092\\u8cb7\\u308f\\u305b\\u3088\\u3046\\u3068\\u3057\\u305f\\u308a\\u3001\\u4f55\\u3089\\u304b\\u306e\\u5951\\u7d04\\u306b\\u30b5\\u30a4\\u30f3\\u3092\\u6c42\\u3081\\u308b\\u3082\\u306e\\u3067\\u3042\\u308b\\u3002","categories_id":"5","_token":"e3rH2zCPaecWPLytokHwZdI7XYJgacVfVYERNevw","_previous_":"http:\\/\\/localhost\\/admin\\/keyword"}', '2017-10-13 08:42:05', '2017-10-13 08:42:05'),
(918, 1, 'admin/keyword', 'GET', '::1', '[]', '2017-10-13 08:42:05', '2017-10-13 08:42:05'),
(919, 1, 'admin/keyword/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 08:42:41', '2017-10-13 08:42:41'),
(920, 1, 'admin/keyword', 'POST', '::1', '{"initial":"\\u305b","keyword":"\\u6b63\\u793e\\u54e1","description":"\\u6b63\\u793e\\u54e1\\u3068\\u306f\\u3001\\u5f93\\u696d\\u54e1\\u306e\\u3046\\u3061\\u96c7\\u7528\\u5951\\u7d04\\u4e0a\\u3067\\u7279\\u5225\\u306e\\u53d6\\u308a\\u6c7a\\u3081\\u306a\\u304f\\u96c7\\u7528\\u3055\\u308c\\u305f\\u793e\\u54e1\\u3092\\u3055\\u3059\\u3002\\u305f\\u3060\\u3057\\u3001\\u6cd5\\u5f8b\\u4e0a\\u306e\\u7528\\u8a9e\\u3067\\u306a\\u3044\\u305f\\u3081\\u3001\\u7279\\u5225\\u306a\\u5b9a\\u7fa9\\u304c\\u3042\\u308b\\u308f\\u3051\\u3067\\u306f\\u306a\\u304f\\u3001\\u4e00\\u822c\\u7684\\u306b\\u306f\\u96c7\\u7528\\u671f\\u9593\\u306e\\u5b9a\\u3081\\u304c\\u306a\\u3044\\u3053\\u3068\\u3001\\u3088\\u3063\\u3066\\u89e3\\u96c7\\u304c\\u53b3\\u3057\\u304f\\u5236\\u9650\\u3055\\u308c\\u3066\\u3044\\u308b\\u3053\\u3068\\u3001\\u539f\\u5247\\u3068\\u3057\\u3066\\u30d5\\u30eb\\u30bf\\u30a4\\u30e0\\u3067\\u52e4\\u52d9\\u3057\\u4e09\\u516d\\u5354\\u5b9a\\u306e\\u7bc4\\u56f2\\u3067\\u6b8b\\u696d\\u3082\\u7fa9\\u52d9\\u3065\\u3051\\u3089\\u308c\\u3066\\u3044\\u308b\\u3053\\u3068\\u306a\\u3069\\u304c\\u305d\\u306e\\u7279\\u5fb4\\u3068\\u3057\\u3066\\u3042\\u3052\\u3089\\u308c\\u308b\\u3002","categories_id":"4","_token":"e3rH2zCPaecWPLytokHwZdI7XYJgacVfVYERNevw","_previous_":"http:\\/\\/localhost\\/admin\\/keyword"}', '2017-10-13 08:43:01', '2017-10-13 08:43:01'),
(921, 1, 'admin/keyword', 'GET', '::1', '[]', '2017-10-13 08:43:02', '2017-10-13 08:43:02'),
(922, 1, 'admin/keyword/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 08:43:34', '2017-10-13 08:43:34'),
(923, 1, 'admin/keyword', 'POST', '::1', '{"initial":"\\u305b","keyword":"\\u30bb\\u30af\\u30b7\\u30e3\\u30eb\\u30fb\\u30cf\\u30e9\\u30b9\\u30e1\\u30f3\\u30c8","description":"\\u6027\\u7684\\u306a\\u8a00\\u52d5\\u306b\\u3088\\u308b\\u5acc\\u304c\\u3089\\u305b\\u884c\\u70ba\\u3002\\u7565\\u3057\\u3066\\u30bb\\u30af\\u30cf\\u30e9\\u3068\\u3044\\u3046\\u3002\\u76f8\\u624b\\u306e\\u610f\\u306b\\u53cd\\u3057\\u3066\\u3001\\u6027\\u7684\\u306a\\u8a00\\u52d5\\u306b\\u3088\\u3063\\u3066\\u76f8\\u624b\\u306b\\u4e0d\\u5229\\u76ca\\u3092\\u4e0e\\u3048\\u305f\\u308a\\u3001\\u76f8\\u624b\\u304c\\u4e0d\\u5feb\\u306b\\u611f\\u3058\\u308b\\u884c\\u70ba\\u3092\\u884c\\u3046\\u3068\\u30bb\\u30af\\u30cf\\u30e9\\u306b\\u8a72\\u5f53\\u3059\\u308b\\u3002","categories_id":"2","_token":"e3rH2zCPaecWPLytokHwZdI7XYJgacVfVYERNevw","_previous_":"http:\\/\\/localhost\\/admin\\/keyword"}', '2017-10-13 08:43:46', '2017-10-13 08:43:46'),
(924, 1, 'admin/keyword', 'GET', '::1', '[]', '2017-10-13 08:43:47', '2017-10-13 08:43:47'),
(925, 1, 'admin/keyword/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 08:44:26', '2017-10-13 08:44:26'),
(926, 1, 'admin/keyword', 'POST', '::1', '{"initial":"\\u305d","keyword":"\\u30bd\\u30d5\\u30c8\\u30a6\\u30a7\\u30a2","description":"\\u30b3\\u30f3\\u30d4\\u30e5\\u30fc\\u30bf\\u304c\\u52d5\\u4f5c\\u3059\\u308b\\u305f\\u3081\\u306b\\u5fc5\\u8981\\u306a\\u96fb\\u5b50\\u4e0a\\u306e\\u6307\\u793a\\u3084\\u547d\\u4ee4\\u306e\\u96c6\\u307e\\u308a\\u3002\\u7269\\u7406\\u7684\\u306a\\u6a5f\\u5668\\u3084\\u8a2d\\u5099\\u3067\\u3042\\u308b\\u30cf\\u30fc\\u30c9\\u30a6\\u30a7\\u30a2\\u306b\\u5bfe\\u3057\\u3066\\u3001\\u305d\\u306e\\u5229\\u7528\\u6280\\u8853\\u306e\\u3053\\u3068\\u3092\\u6307\\u3059\\u3002\\u305d\\u308c\\u81ea\\u4f53\\u306f\\u89e6\\u308c\\u308b\\u3053\\u3068\\u304c\\u3067\\u304d\\u306a\\u3044\\u3082\\u306e\\u3067\\u3042\\u308a\\u3001CD\\u3084DVD\\u306a\\u3069\\u306e\\u30e1\\u30c7\\u30a3\\u30a2\\u306b\\u8a18\\u9332\\u3055\\u308c\\u3066\\u6d41\\u901a\\u3059\\u308b\\u3002\\u30bd\\u30d5\\u30c8\\u3068\\u7565\\u3055\\u308c\\u308b\\u3053\\u3068\\u304c\\u591a\\u304f\\u3001\\u30d7\\u30ed\\u30b0\\u30e9\\u30e0\\u306e\\u5225\\u540d\\u3068\\u3057\\u3066\\u7528\\u3044\\u3089\\u308c\\u308b\\u3053\\u3068\\u3082\\u3042\\u308b\\u3002","categories_id":"5","_token":"e3rH2zCPaecWPLytokHwZdI7XYJgacVfVYERNevw","_previous_":"http:\\/\\/localhost\\/admin\\/keyword"}', '2017-10-13 08:44:45', '2017-10-13 08:44:45'),
(927, 1, 'admin/keyword', 'GET', '::1', '[]', '2017-10-13 08:44:45', '2017-10-13 08:44:45'),
(928, 1, 'admin/keyword/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 08:45:27', '2017-10-13 08:45:27'),
(929, 1, 'admin/keyword', 'POST', '::1', '{"initial":"\\u305f","keyword":"\\u30c0\\u30a4\\u30d0\\u30fc\\u30b7\\u30c6\\u30a3","description":"\\u591a\\u69d8\\u306a\\u4eba\\u6750\\u3092\\u7a4d\\u6975\\u7684\\u306b\\u6d3b\\u7528\\u3057\\u3088\\u3046\\u3068\\u3044\\u3046\\u8003\\u3048\\u65b9\\u306e\\u3053\\u3068\\u3002\\u3082\\u3068\\u306f\\u3001\\u793e\\u4f1a\\u7684\\u30de\\u30a4\\u30ce\\u30ea\\u30c6\\u30a3\\u306e\\u5c31\\u696d\\u6a5f\\u4f1a\\u62e1\\u5927\\u3092\\u610f\\u56f3\\u3057\\u3066\\u4f7f\\u308f\\u308c\\u308b\\u3053\\u3068\\u304c\\u591a\\u304b\\u3063\\u305f\\u304c\\u3001\\u73fe\\u5728\\u306f\\u6027\\u5225\\u3084\\u4eba\\u7a2e\\u306e\\u9055\\u3044\\u306b\\u9650\\u3089\\u305a\\u3001\\u5e74\\u9f62\\u3001\\u6027\\u683c\\u3001\\u5b66\\u6b74\\u3001\\u4fa1\\u5024\\u89b3\\u306a\\u3069\\u306e\\u591a\\u69d8\\u6027\\u3092\\u53d7\\u3051\\u5165\\u308c\\u3001\\u5e83\\u304f\\u4eba\\u6750\\u3092\\u6d3b\\u7528\\u3059\\u308b\\u3053\\u3068\\u3067\\u751f\\u7523\\u6027\\u3092\\u9ad8\\u3081\\u3088\\u3046\\u3068\\u3059\\u308b\\u30de\\u30cd\\u30b8\\u30e1\\u30f3\\u30c8\\u306b\\u3064\\u3044\\u3066\\u3044\\u3046\\u3002","categories_id":"2","_token":"e3rH2zCPaecWPLytokHwZdI7XYJgacVfVYERNevw","_previous_":"http:\\/\\/localhost\\/admin\\/keyword"}', '2017-10-13 08:45:43', '2017-10-13 08:45:43'),
(930, 1, 'admin/keyword', 'GET', '::1', '[]', '2017-10-13 08:45:43', '2017-10-13 08:45:43'),
(931, 1, 'admin/keyword/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 08:46:13', '2017-10-13 08:46:13'),
(932, 1, 'admin/keyword', 'POST', '::1', '{"initial":"\\u305f","keyword":"\\u30c0\\u30f3\\u30d4\\u30f3\\u30b0","description":"\\u63a1\\u7b97\\u3092\\u5ea6\\u5916\\u8996\\u3057\\u3001\\u9069\\u6b63\\u306a\\u4ed5\\u5165\\u539f\\u4fa1\\u3092\\u5927\\u304d\\u304f\\u4e0b\\u56de\\u308b\\u4fa1\\u683c\\u3067\\u8ca9\\u58f2\\u3059\\u308b\\u3053\\u3068\\u306b\\u3088\\u308a\\u3001\\u516c\\u6b63\\u306a\\u5e02\\u5834\\u7af6\\u4e89\\u3092\\u7834\\u58ca\\u3059\\u308b\\u6d3b\\u52d5\\u306e\\u3053\\u3068\\u3002\\u72ec\\u5360\\u7981\\u6b62\\u6cd5\\u306b\\u3088\\u308a\\u7981\\u3058\\u3089\\u308c\\u3066\\u3044\\u308b\\u3002","categories_id":"4","_token":"e3rH2zCPaecWPLytokHwZdI7XYJgacVfVYERNevw","_previous_":"http:\\/\\/localhost\\/admin\\/keyword"}', '2017-10-13 08:46:35', '2017-10-13 08:46:35'),
(933, 1, 'admin/keyword', 'GET', '::1', '[]', '2017-10-13 08:46:36', '2017-10-13 08:46:36');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(934, 1, 'admin/keyword/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 08:47:00', '2017-10-13 08:47:00'),
(935, 1, 'admin/keyword', 'POST', '::1', '{"initial":"\\u3061","keyword":"\\u8457\\u4f5c\\u6a29","description":"\\u8457\\u4f5c\\u8005\\u304c\\u3001\\u305d\\u306e\\u8457\\u4f5c\\u7269\\u3092\\u81ea\\u5206\\u306e\\u8ca1\\u7523\\u3068\\u3057\\u3066\\u72ec\\u5360\\u7684\\u306b\\u5229\\u7528\\u3067\\u304d\\u308b\\u6a29\\u5229\\u3002\\u8457\\u4f5c\\u8005\\u306f\\u3001\\u8457\\u4f5c\\u7269\\u3092\\u8907\\u88fd\\u30fb\\u9812\\u5e03\\u3059\\u308b\\u3053\\u3068\\u3067\\u5229\\u76ca\\u3092\\u5f97\\u308b\\u3053\\u3068\\u304c\\u3067\\u304d\\u308b\\u3002\\u307e\\u305f\\u3001\\u4ed6\\u8005\\u306b\\u3088\\u308b\\u7121\\u65ad\\u8907\\u88fd\\u3084\\u5229\\u7528\\u3092\\u5236\\u7d04\\u3067\\u304d\\u308b\\u3002\\u5bfe\\u8c61\\u3068\\u306a\\u308b\\u8457\\u4f5c\\u7269\\u3068\\u306f\\u3001\\u601d\\u60f3\\u3084\\u611f\\u60c5\\u3092\\u5275\\u4f5c\\u7684\\u306b\\u8868\\u73fe\\u3057\\u305f\\u3082\\u306e\\u3067\\u3001\\u51fa\\u7248\\u7269\\u3084\\u97f3\\u697d\\u3001\\u6620\\u50cf\\u3001\\u7f8e\\u8853\\u54c1\\u3001\\u5efa\\u7bc9\\u3001\\u30d7\\u30ed\\u30b0\\u30e9\\u30e0\\u306a\\u3069\\u591a\\u5c90\\u306b\\u308f\\u305f\\u308b\\u3002\\u8457\\u4f5c\\u6a29\\u306f\\u8457\\u4f5c\\u7269\\u3092\\u5275\\u4f5c\\u3057\\u305f\\u6642\\u70b9\\u3067\\u767a\\u751f\\u3057\\u3001\\u6b7b\\u5f8c50\\u5e74\\u9593\\u6709\\u52b9\\u3068\\u306a\\u308b\\u3002","categories_id":"4","_token":"e3rH2zCPaecWPLytokHwZdI7XYJgacVfVYERNevw","_previous_":"http:\\/\\/localhost\\/admin\\/keyword"}', '2017-10-13 08:47:19', '2017-10-13 08:47:19'),
(936, 1, 'admin/keyword', 'GET', '::1', '[]', '2017-10-13 08:47:19', '2017-10-13 08:47:19'),
(937, 1, 'admin/keyword/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 08:48:13', '2017-10-13 08:48:13'),
(938, 1, 'admin/keyword', 'POST', '::1', '{"initial":"\\u3066","keyword":"\\u30c7\\u30fc\\u30bf\\u30de\\u30a4\\u30cb\\u30f3\\u30b0","description":"\\u30de\\u30a4\\u30cb\\u30f3\\u30b0\\u3068\\u306f\\u3001\\u3082\\u3068\\u3082\\u3068\\u306f\\u9271\\u5c71\\u306e\\u63a1\\u6398\\u306e\\u610f\\u5473\\u3002\\u81a8\\u5927\\u306a\\u53d6\\u5f15\\u30c7\\u30fc\\u30bf\\u306e\\u4e2d\\u304b\\u3089\\u3001\\u6709\\u7528\\u306a\\u50be\\u5411\\u3084\\u898f\\u5247\\u6027\\u3092\\u898b\\u3044\\u3060\\u3059\\u3053\\u3068\\u3092\\u3044\\u3046\\u3002\\u3053\\u306e\\u6210\\u679c\\u306f\\u3001\\u30de\\u30fc\\u30b1\\u30c6\\u30a3\\u30f3\\u30b0\\u653f\\u7b56\\u3084\\u4e0e\\u4fe1\\u7ba1\\u7406\\u306a\\u3069\\u306b\\u5fdc\\u7528\\u3055\\u308c\\u308b\\u3002","categories_id":"5","_token":"e3rH2zCPaecWPLytokHwZdI7XYJgacVfVYERNevw","_previous_":"http:\\/\\/localhost\\/admin\\/keyword"}', '2017-10-13 08:48:27', '2017-10-13 08:48:27'),
(939, 1, 'admin/keyword', 'GET', '::1', '[]', '2017-10-13 08:48:27', '2017-10-13 08:48:27'),
(940, 1, 'admin/keyword/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 08:48:45', '2017-10-13 08:48:45'),
(941, 1, 'admin/keyword', 'POST', '::1', '{"initial":"\\u3066","keyword":"\\u30c7\\u30b8\\u30bf\\u30eb\\u30fb\\u30c7\\u30d0\\u30a4\\u30c9","description":"\\u76f4\\u8a33\\u3059\\u308b\\u3068\\u60c5\\u5831\\u683c\\u5dee\\u3002\\u30a4\\u30f3\\u30bf\\u30fc\\u30cd\\u30c3\\u30c8\\u3084\\u30d1\\u30bd\\u30b3\\u30f3\\u7b49\\u306e\\u60c5\\u5831\\u6280\\u8853\\u3092\\u4f7f\\u3048\\u308b\\u4eba\\u3068\\u4f7f\\u3048\\u306a\\u3044\\u4eba\\u3068\\u306e\\u9593\\u306b\\u3001\\u60c5\\u5831\\u306e\\u683c\\u5dee\\u304c\\u751f\\u3058\\u3066\\u3044\\u308b\\u72b6\\u614b\\u3092\\u3044\\u3046\\u3002\\u3053\\u306e\\u60c5\\u5831\\u683c\\u5dee\\u306f\\u7d4c\\u6e08\\u7684\\u30fb\\u793e\\u4f1a\\u7684\\u306a\\u683c\\u5dee\\u3092\\u3082\\u305f\\u3089\\u3057\\u3066\\u3044\\u308b\\u3002\\u307e\\u305f\\u5e74\\u9f62\\u3001\\u6027\\u5225\\u3001\\u6559\\u80b2\\u306a\\u3069\\u306b\\u3088\\u308b\\u500b\\u4eba\\u9593\\u306e\\u554f\\u984c\\u3060\\u3051\\u3067\\u306a\\u304f\\u3001\\u4f01\\u696d\\u9593\\u3084\\u90fd\\u5e02\\u9593\\u3001\\u56fd\\u5bb6\\u9593\\u306b\\u304a\\u3044\\u3066\\u3082\\u60c5\\u5831\\u683c\\u5dee\\u304c\\u5e83\\u304c\\u308a\\u3064\\u3064\\u3042\\u308a\\u3001\\u793e\\u4f1a\\u554f\\u984c\\u3068\\u306a\\u3063\\u3066\\u3044\\u308b\\u3002","categories_id":"5","_token":"e3rH2zCPaecWPLytokHwZdI7XYJgacVfVYERNevw","_previous_":"http:\\/\\/localhost\\/admin\\/keyword"}', '2017-10-13 08:48:58', '2017-10-13 08:48:58'),
(942, 1, 'admin/keyword', 'GET', '::1', '[]', '2017-10-13 08:48:58', '2017-10-13 08:48:58'),
(943, 1, 'admin/keyword/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 08:49:15', '2017-10-13 08:49:15'),
(944, 1, 'admin/keyword', 'POST', '::1', '{"initial":"\\u3066","keyword":"\\u30c7\\u30d5\\u30a1\\u30af\\u30c8\\u30fb\\u30b9\\u30bf\\u30f3\\u30c0\\u30fc\\u30c9","description":"\\u300c\\u4e8b\\u5b9f\\u4e0a\\u306e\\u6a19\\u6e96\\u300d\\u3068\\u8a33\\u3055\\u308c\\u308b\\u3002 JIS\\u3084ISO\\u306e\\u3088\\u3046\\u306b\\u3001\\u516c\\u7684\\u6a5f\\u95a2\\u306b\\u3088\\u3063\\u3066\\u516c\\u5f0f\\u306b\\u5b9a\\u3081\\u3089\\u308c\\u305f\\u6a19\\u6e96\\u3067\\u306f\\u306a\\u304f\\u3001\\u6c11\\u9593\\u4f01\\u696d\\u306b\\u304a\\u3051\\u308b\\u72ec\\u81ea\\u306e\\u88fd\\u54c1\\u3084\\u898f\\u683c\\u304c\\u3001\\u4e8b\\u5b9f\\u4e0a\\u305d\\u306e\\u696d\\u754c\\u306e\\u6a19\\u6e96\\u3068\\u3057\\u3066\\u901a\\u7528\\u3057\\u3066\\u3044\\u308b\\u3053\\u3068\\u3092\\u3044\\u3046\\u3002","categories_id":"2","_token":"e3rH2zCPaecWPLytokHwZdI7XYJgacVfVYERNevw","_previous_":"http:\\/\\/localhost\\/admin\\/keyword"}', '2017-10-13 08:49:36', '2017-10-13 08:49:36'),
(945, 1, 'admin/keyword', 'GET', '::1', '[]', '2017-10-13 08:49:36', '2017-10-13 08:49:36'),
(946, 1, 'admin/keyword/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 08:49:47', '2017-10-13 08:49:47'),
(947, 1, 'admin/keyword', 'POST', '::1', '{"initial":"\\u3066","keyword":"\\u30c7\\u30d5\\u30ec\\u30fc\\u30b7\\u30e7\\u30f3","description":"\\u7269\\u4fa1\\u6c34\\u6e96\\u304c\\u7d99\\u7d9a\\u7684\\u306b\\u4e0b\\u964d\\u3059\\u308b\\u73fe\\u8c61\\u306e\\u3053\\u3068\\u3002\\u5e02\\u5834\\u306b\\u304a\\u3051\\u308b\\u7dcf\\u9700\\u8981\\u306b\\u5bfe\\u3057\\u7dcf\\u4f9b\\u7d66\\u304c\\u904e\\u5270\\u306a\\u72b6\\u614b\\u3068\\u306a\\u308a\\u3001\\u4e00\\u822c\\u306b\\u4e0d\\u6cc1\\u3092\\u4f34\\u3046\\u3002","categories_id":"2","_token":"e3rH2zCPaecWPLytokHwZdI7XYJgacVfVYERNevw","_previous_":"http:\\/\\/localhost\\/admin\\/keyword"}', '2017-10-13 08:50:10', '2017-10-13 08:50:10'),
(948, 1, 'admin/keyword', 'GET', '::1', '[]', '2017-10-13 08:50:10', '2017-10-13 08:50:10'),
(949, 1, 'admin/keyword/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 08:50:32', '2017-10-13 08:50:32'),
(950, 1, 'admin/keyword', 'POST', '::1', '{"initial":"\\u3068","keyword":"\\u72ec\\u5360\\u7981\\u6b62\\u6cd5","description":"\\u300c\\u79c1\\u7684\\u72ec\\u5360\\u306e\\u7981\\u6b62\\u53ca\\u3073\\u516c\\u6b63\\u53d6\\u5f15\\u306e\\u78ba\\u4fdd\\u306b\\u95a2\\u3059\\u308b\\u6cd5\\u5f8b\\u300d\\u306e\\u7565\\u79f0\\u3002\\u901a\\u79f0\\u3001\\u72ec\\u7981\\u6cd5\\u3002\\u4f01\\u696d\\u9593\\u306e\\u81ea\\u7531\\u7af6\\u4e89\\u3092\\u7dad\\u6301\\u3059\\u308b\\u3053\\u3068\\u3067\\u3001\\u5e02\\u5834\\u306e\\u5065\\u5168\\u306a\\u767a\\u5c55\\u3068\\u6d88\\u8cbb\\u8005\\u5229\\u76ca\\u306e\\u4fdd\\u8b77\\u3092\\u3081\\u3056\\u3059\\u6cd5\\u5f8b\\u3002\\u79c1\\u7684\\u72ec\\u5360\\u3001\\u4e0d\\u5f53\\u306a\\u53d6\\u5f15\\u5236\\u9650\\u3001\\u4e0d\\u516c\\u6b63\\u306a\\u53d6\\u5f15\\u65b9\\u6cd5\\u306a\\u3069\\u3092\\u7981\\u6b62\\u3057\\u3001\\u4e0d\\u6b63\\u884c\\u70ba\\u304c\\u3042\\u3063\\u305f\\u5834\\u5408\\u306f\\u516c\\u6b63\\u53d6\\u5f15\\u59d4\\u54e1\\u4f1a\\u306b\\u3088\\u3063\\u3066\\u5be9\\u67fb\\u3055\\u308c\\u308b\\u3002","categories_id":"4","_token":"e3rH2zCPaecWPLytokHwZdI7XYJgacVfVYERNevw","_previous_":"http:\\/\\/localhost\\/admin\\/keyword"}', '2017-10-13 08:50:48', '2017-10-13 08:50:48'),
(951, 1, 'admin/keyword', 'GET', '::1', '[]', '2017-10-13 08:50:48', '2017-10-13 08:50:48'),
(952, 1, 'admin/keyword/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 08:53:26', '2017-10-13 08:53:26'),
(953, 1, 'admin/keyword', 'POST', '::1', '{"initial":"\\u306a","keyword":"\\u30ca\\u30b7\\u30e7\\u30ca\\u30eb\\u30d6\\u30e9\\u30f3\\u30c9","description":"\\u5168\\u56fd\\u7684\\u306b\\u8ca9\\u58f2\\u3055\\u308c\\u8a8d\\u77e5\\u3055\\u308c\\u3066\\u3044\\u308b\\u5546\\u54c1\\u306e\\u30d6\\u30e9\\u30f3\\u30c9\\u306e\\u3053\\u3068\\u3002","categories_id":"2","_token":"e3rH2zCPaecWPLytokHwZdI7XYJgacVfVYERNevw","_previous_":"http:\\/\\/localhost\\/admin\\/keyword"}', '2017-10-13 08:53:48', '2017-10-13 08:53:48'),
(954, 1, 'admin/keyword', 'GET', '::1', '[]', '2017-10-13 08:53:48', '2017-10-13 08:53:48'),
(955, 1, 'admin/keyword/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 08:54:01', '2017-10-13 08:54:01'),
(956, 1, 'admin/keyword', 'POST', '::1', '{"initial":"\\u3075","keyword":"\\u30d7\\u30e9\\u30a4\\u30d9\\u30fc\\u30c8\\u30d6\\u30e9\\u30f3\\u30c9","description":"\\u30b9\\u30fc\\u30d1\\u30fc\\u3084\\u767e\\u8ca8\\u5e97\\u306a\\u3069\\u306e\\u6d41\\u901a\\u696d\\u8005\\u304c\\u3001\\u30e1\\u30fc\\u30ab\\u30fc\\u306b\\u62e0\\u3089\\u305a\\u81ea\\u4e3b\\u7684\\u306b\\u8a2d\\u5b9a\\u3057\\u305f\\u5546\\u6a19\\u306e\\u3053\\u3068\\u3002\\u6d88\\u8cbb\\u8005\\u306b\\u3068\\u3063\\u3066\\u306f\\u6bd4\\u8f03\\u7684\\u5272\\u5b89\\u3067\\u3001\\u5e97\\u306b\\u3068\\u3063\\u3066\\u306f\\u5229\\u3056\\u3084\\u304c\\u5927\\u304d\\u3044\\u3002","categories_id":"2","_token":"e3rH2zCPaecWPLytokHwZdI7XYJgacVfVYERNevw","_previous_":"http:\\/\\/localhost\\/admin\\/keyword"}', '2017-10-13 08:54:14', '2017-10-13 08:54:14'),
(957, 1, 'admin/keyword', 'GET', '::1', '[]', '2017-10-13 08:54:14', '2017-10-13 08:54:14'),
(958, 1, 'admin/keyword/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 08:54:36', '2017-10-13 08:54:36'),
(959, 1, 'admin/keyword', 'POST', '::1', '{"initial":"\\u306b","keyword":"\\u30cb\\u30fc\\u30c8","description":"Not in Employment, Education or Training\\u306e\\u7565\\u3067\\u3001\\u300c\\u8077\\u306b\\u5c31\\u3044\\u3066\\u3044\\u305a\\u3001\\u5b66\\u6821\\u6a5f\\u95a2\\u306b\\u6240\\u5c5e\\u3082\\u3057\\u3066\\u3044\\u305a\\u3001\\u305d\\u3057\\u3066\\u5c31\\u52b4\\u306b\\u5411\\u3051\\u305f\\u5177\\u4f53\\u7684\\u306a\\u52d5\\u304d\\u3092\\u3057\\u3066\\u3044\\u306a\\u3044\\u300d\\u4eba\\u306e\\u3053\\u3068\\u3002","categories_id":"2","_token":"e3rH2zCPaecWPLytokHwZdI7XYJgacVfVYERNevw","_previous_":"http:\\/\\/localhost\\/admin\\/keyword"}', '2017-10-13 08:54:49', '2017-10-13 08:54:49'),
(960, 1, 'admin/keyword', 'GET', '::1', '[]', '2017-10-13 08:54:49', '2017-10-13 08:54:49'),
(961, 1, 'admin/keyword/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 08:55:54', '2017-10-13 08:55:54'),
(962, 1, 'admin/keyword', 'POST', '::1', '{"initial":"\\u306e","keyword":"\\u30ce\\u30a6\\u30cf\\u30a6","description":"\\u4f01\\u696d\\u306e\\u6d3b\\u52d5\\u306b\\u5fc5\\u8981\\u306a\\u751f\\u7523\\u30fb\\u7d4c\\u55b6\\u30fb\\u7ba1\\u7406\\u30fb\\u6280\\u8853\\u306a\\u3069\\u306b\\u95a2\\u3059\\u308b\\u77e5\\u8b58\\u30fb\\u7d4c\\u9a13\\u306e\\u60c5\\u5831\\u3002\\u65b0\\u3057\\u3044(\\u72ec\\u81ea\\u306e)\\u6280\\u8853\\u3084\\u30de\\u30fc\\u30b1\\u30c6\\u30a3\\u30f3\\u30b0\\u30c6\\u30af\\u30cb\\u30c3\\u30af\\u306a\\u3069\\u3082\\u30ce\\u30a6\\u30cf\\u30a6\\u3067\\u3042\\u308b\\u3002","categories_id":"2","_token":"e3rH2zCPaecWPLytokHwZdI7XYJgacVfVYERNevw","_previous_":"http:\\/\\/localhost\\/admin\\/keyword"}', '2017-10-13 08:56:05', '2017-10-13 08:56:05'),
(963, 1, 'admin/keyword', 'GET', '::1', '[]', '2017-10-13 08:56:05', '2017-10-13 08:56:05'),
(964, 1, 'admin/keyword/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 08:56:28', '2017-10-13 08:56:28'),
(965, 1, 'admin/keyword', 'POST', '::1', '{"initial":"\\u306d","keyword":"\\u5e74\\u672b\\u8abf\\u6574","description":"\\u7d66\\u4e0e\\u306e\\u652f\\u6255\\u8005\\u306f\\u3001\\u5f93\\u696d\\u54e1\\u3067\\u3042\\u308b\\u7d66\\u4e0e\\u6240\\u5f97\\u8005\\u306b\\u3064\\u3044\\u3066\\u3001\\u6bce\\u6708\\u306e\\u7d66\\u4e0e\\u304b\\u3089\\u6240\\u5f97\\u7a0e\\u5206\\u3092\\u5fb4\\u53ce\\uff08\\u6e90\\u6cc9\\u5fb4\\u53ce\\uff09\\u3057\\u3001\\u500b\\u4eba\\u306b\\u4ee3\\u308f\\u3063\\u3066\\u6240\\u5f97\\u7a0e\\u3092\\u7533\\u544a\\u3057\\u3066\\u3044\\u308b\\u3002 \\u3057\\u304b\\u3057\\u3001\\u6708\\u3005\\u306e\\u6e90\\u6cc9\\u5fb4\\u53ce\\u984d\\u306e\\u7dcf\\u984d\\u3068\\u3001\\u5e74\\u53ce\\u306b\\u5bfe\\u3059\\u308b\\u6240\\u5f97\\u7a0e\\u984d\\u306f\\u5fc5\\u305a\\u3057\\u3082\\u4e00\\u81f4\\u3057\\u306a\\u3044\\u3002\\u5e74\\u672b\\u306e\\u7d66\\u4e0e\\u652f\\u6255\\u3044\\u6642\\u306b\\u3001\\u3053\\u306e\\u6240\\u5f97\\u7a0e\\u306e\\u904e\\u4e0d\\u8db3\\u5206\\u3092\\u7cbe\\u7b97\\u3059\\u308b\\u624b\\u7d9a\\u304d\\u304c\\u5e74\\u672b\\u8abf\\u6574\\u3067\\u3042\\u308b\\u3002","categories_id":"4","_token":"e3rH2zCPaecWPLytokHwZdI7XYJgacVfVYERNevw","_previous_":"http:\\/\\/localhost\\/admin\\/keyword"}', '2017-10-13 08:56:40', '2017-10-13 08:56:40'),
(966, 1, 'admin/keyword', 'GET', '::1', '[]', '2017-10-13 08:56:40', '2017-10-13 08:56:40'),
(967, 1, 'admin/keyword/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 08:57:16', '2017-10-13 08:57:16'),
(968, 1, 'admin/keyword', 'POST', '::1', '{"initial":"\\u306f","keyword":"\\u30cf\\u30fc\\u30c9\\u30a6\\u30a7\\u30a2","description":"\\u30b3\\u30f3\\u30d4\\u30e5\\u30fc\\u30bf\\u30b7\\u30b9\\u30c6\\u30e0\\u3092\\u69cb\\u6210\\u3057\\u3066\\u3044\\u308b\\u7269\\u7406\\u7684\\u8981\\u7d20\\u3002hardware\\u306f\\u82f1\\u8a9e\\u3067\\u300c\\u91d1\\u7269\\u3001\\u56fa\\u3044\\u54c1\\u7269\\u300d\\u306e\\u610f\\u5473\\u3082\\u3082\\u3064\\u304c\\u3001\\u30d1\\u30bd\\u30b3\\u30f3\\u306b\\u95a2\\u3057\\u3066\\u306f\\u89e6\\u308c\\u308b\\u3053\\u3068\\u304c\\u3067\\u304d\\u308b\\u90e8\\u5206\\u306e\\u3053\\u3068\\u3002\\u30ad\\u30fc\\u30dc\\u30fc\\u30c9\\u30fb\\u30de\\u30a6\\u30b9\\u30fb\\u30d7\\u30ea\\u30f3\\u30bf\\u30fb\\u30b9\\u30ad\\u30e3\\u30ca\\u30fb\\u30c7\\u30a3\\u30b9\\u30d7\\u30ec\\u30a4\\u30fb\\u30cf\\u30fc\\u30c9\\u30c7\\u30a3\\u30b9\\u30af\\u306a\\u3069\\u500b\\u3005\\u306e\\u88c5\\u7f6e\\u3084\\u6a5f\\u5668\\u3092\\u6307\\u3059\\u5834\\u5408\\u3068\\u3001\\u305d\\u308c\\u3089\\u3092\\u7dcf\\u79f0\\u3057\\u3066\\u547c\\u3076\\u5834\\u5408\\u3068\\u304c\\u3042\\u308b\\u3002\\u5165\\u529b\\u3084\\u51fa\\u529b\\u3001\\u6f14\\u7b97\\u51e6\\u7406\\u3084\\u8a18\\u9332\\u306a\\u3069\\u306e\\u6a5f\\u80fd\\u3092\\u3082\\u3064\\u3002\\u30b3\\u30f3\\u30d4\\u30e5\\u30fc\\u30bf\\u30b7\\u30b9\\u30c6\\u30e0\\u4ee5\\u5916\\u3067\\u3082\\u3001\\u30c6\\u30ec\\u30d3\\u3084DVD\\u30d7\\u30ec\\u30fc\\u30e4\\u30fc\\u3001iPod\\u306a\\u3069\\u3082\\u30cf\\u30fc\\u30c9\\u30a6\\u30a7\\u30a2\\u3068\\u547c\\u3070\\u308c\\u308b\\u3002\\u3088\\u308a\\u5e83\\u3044\\u6587\\u8108\\u3067\\u306f\\u3001\\u793e\\u4f1a\\u7684\\u6d3b\\u52d5\\u304c\\u884c\\u308f\\u308c\\u308b\\u69cb\\u9020\\u7269\\u3092\\u610f\\u5473\\u3057\\u3001\\u9053\\u8def\\u3084\\u7a7a\\u6e2f\\u30fb\\u6e2f\\u6e7e\\u65bd\\u8a2d\\u3084\\u516c\\u5171\\u5efa\\u9020\\u7269\\u3001\\u5ba4\\u5185\\u8a2d\\u5099\\u306a\\u3069\\u3092\\u6307\\u3059\\u5834\\u5408\\u3082\\u3042\\u308b\\u3002","categories_id":"5","_token":"e3rH2zCPaecWPLytokHwZdI7XYJgacVfVYERNevw","_previous_":"http:\\/\\/localhost\\/admin\\/keyword"}', '2017-10-13 08:57:38', '2017-10-13 08:57:38'),
(969, 1, 'admin/keyword', 'GET', '::1', '[]', '2017-10-13 08:57:39', '2017-10-13 08:57:39'),
(970, 1, 'admin/keyword/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 08:57:56', '2017-10-13 08:57:56'),
(971, 1, 'admin/keyword', 'POST', '::1', '{"initial":"\\u306f","keyword":"\\u6d3e\\u9063\\u793e\\u54e1","description":"\\u6d3e\\u9063\\u4f1a\\u793e\\u3068\\u96c7\\u7528\\u5951\\u7d04\\u3092\\u7d50\\u3073\\u3001\\u6d3e\\u9063\\u5148\\u4f01\\u696d\\u306e\\u6307\\u63ee\\u547d\\u4ee4\\u4e0b\\u3067\\u50cd\\u304f\\u52b4\\u50cd\\u8005\\u306e\\u3053\\u3068\\u30021999\\u5e7412\\u6708\\u3088\\u308a\\u65bd\\u884c\\u3055\\u308c\\u305f\\u300e\\u6539\\u6b63\\u52b4\\u50cd\\u8005\\u6d3e\\u9063\\u6cd5\\u300f\\u306b\\u3088\\u3063\\u3066\\u6d3e\\u9063\\u5bfe\\u8c61\\u696d\\u52d9\\u304c\\u539f\\u5247\\u81ea\\u7531\\u5316\\u3055\\u308c\\u30012003\\u5e74\\u306e\\u6539\\u6b63\\u306b\\u3088\\u3063\\u3066\\u3055\\u3089\\u306b\\u5bfe\\u8c61\\u696d\\u52d9\\u304c\\u62e1\\u5927\\u3001\\u6d3e\\u9063\\u306e\\u671f\\u9593\\u5236\\u9650\\u3082\\u7de9\\u548c\\u3055\\u308c\\u305f\\u3002","categories_id":"4","_token":"e3rH2zCPaecWPLytokHwZdI7XYJgacVfVYERNevw","_previous_":"http:\\/\\/localhost\\/admin\\/keyword"}', '2017-10-13 08:58:11', '2017-10-13 08:58:11'),
(972, 1, 'admin/keyword', 'GET', '::1', '[]', '2017-10-13 08:58:11', '2017-10-13 08:58:11'),
(973, 1, 'admin/keyword/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 08:59:08', '2017-10-13 08:59:08'),
(974, 1, 'admin/keyword', 'POST', '::1', '{"initial":"\\u306f","keyword":"\\u30cf\\u30c3\\u30ab\\u30fc","description":"\\u30b3\\u30f3\\u30d4\\u30e5\\u30fc\\u30bf\\u30fc\\u3078\\u306e\\u9020\\u8a63\\u304c\\u6df1\\u304f\\u3001\\u64cd\\u4f5c\\u6280\\u8853\\u306b\\u7cbe\\u901a\\u3057\\u305f\\u4eba\\u306e\\u3053\\u3068\\u3002\\u672c\\u6765\\u30cf\\u30c3\\u30ab\\u30fc\\u3068\\u3044\\u3046\\u8a00\\u8449\\u306f\\u305d\\u3046\\u3057\\u305f\\u4eba\\u3078\\u306e\\u5c0a\\u79f0\\u3067\\u3042\\u3063\\u305f\\u304c\\u3001\\u305d\\u306e\\u512a\\u308c\\u305f\\u6280\\u8853\\u3092\\u60aa\\u7528\\u3057\\u3001\\u4ed6\\u4eba\\u306e\\u30b3\\u30f3\\u30d4\\u30e5\\u30fc\\u30bf\\u30fc\\u306b\\u4fb5\\u5165\\u3057\\u3066\\u9055\\u6cd5\\u884c\\u70ba\\u3092\\u306f\\u305f\\u3089\\u304f\\u4eba\\u3092\\u30cf\\u30c3\\u30ab\\u30fc\\u3068\\u547c\\u3093\\u3067\\u3044\\u308b\\u30b1\\u30fc\\u30b9\\u3082\\u898b\\u3089\\u308c\\u308b","categories_id":"5","_token":"e3rH2zCPaecWPLytokHwZdI7XYJgacVfVYERNevw","_previous_":"http:\\/\\/localhost\\/admin\\/keyword"}', '2017-10-13 08:59:21', '2017-10-13 08:59:21'),
(975, 1, 'admin/keyword', 'GET', '::1', '[]', '2017-10-13 08:59:21', '2017-10-13 08:59:21'),
(976, 1, 'admin/keyword/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 08:59:33', '2017-10-13 08:59:33'),
(977, 1, 'admin/keyword', 'POST', '::1', '{"initial":"\\u306f","keyword":"\\u30d1\\u30cd\\u30eb\\u30c7\\u30a3\\u30b9\\u30ab\\u30c3\\u30b7\\u30e7\\u30f3","description":"\\u516c\\u958b\\u8a0e\\u8ad6\\u4f1a\\u306e\\uff11\\u3064\\u3002\\u3042\\u308b\\u30c6\\u30fc\\u30de\\u306b\\u3064\\u3044\\u3066\\u3001\\u307e\\u305a\\u6570\\u4eba\\u306e\\u5c02\\u9580\\u5bb6\\u304c\\u4ee3\\u8868\\u8005\\uff08\\u30d1\\u30cd\\u30eb\\u3001\\u30d1\\u30cd\\u30e9\\u30fc\\uff09\\u3068\\u3057\\u3066\\u9078\\u51fa\\u3055\\u308c\\u3001\\u53f8\\u4f1a\\u8005\\u306e\\u30b3\\u30fc\\u30c7\\u30a3\\u30cd\\u30fc\\u30c8\\u306e\\u3082\\u3068\\u306b\\u3001\\u8074\\u8846\\u306e\\u524d\\u3067\\u8a0e\\u8b70\\u3092\\u884c\\u3046\\u3002\\u305d\\u306e\\u5f8c\\u3001\\u8074\\u8846\\u3082\\u53c2\\u52a0\\u3057\\u3066\\u3001\\u610f\\u898b\\u4ea4\\u63db\\u3084\\u8cea\\u7591\\u5fdc\\u7b54\\u304c\\u884c\\u308f\\u308c\\u308b\\u3001\\u3068\\u3044\\u3046\\u65b9\\u5f0f\\u3002","categories_id":"2","_token":"e3rH2zCPaecWPLytokHwZdI7XYJgacVfVYERNevw","_previous_":"http:\\/\\/localhost\\/admin\\/keyword"}', '2017-10-13 08:59:47', '2017-10-13 08:59:47'),
(978, 1, 'admin/keyword', 'GET', '::1', '[]', '2017-10-13 08:59:47', '2017-10-13 08:59:47'),
(979, 1, 'admin/keyword/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 08:59:57', '2017-10-13 08:59:57'),
(980, 1, 'admin/keyword', 'POST', '::1', '{"initial":"\\u306f","keyword":"\\u30cf\\u30e9\\u30b9\\u30e1\\u30f3\\u30c8","description":"\\u4e00\\u822c\\u306b\\u3044\\u308d\\u3044\\u308d\\u306a\\u5834\\u9762\\u3067\\u306e\\u300c\\u5acc\\u304c\\u3089\\u305b\\u300d\\u3084\\u300c\\u3044\\u3058\\u3081\\u300d\\u306a\\u3069\\u306e\\u884c\\u70ba\\u3092\\u3055\\u3059\\u3002\\u305d\\u306e\\u884c\\u70ba\\u3092\\u884c\\u3046\\u4eba\\u304c\\u610f\\u56f3\\u3057\\u305f\\u304b\\u3069\\u3046\\u304b\\u306b\\u304b\\u304b\\u308f\\u3089\\u305a\\u3001\\u76f8\\u624b\\u306b\\u5bfe\\u3057\\u4e0d\\u5feb\\u306b\\u3055\\u305b\\u305f\\u308a\\u3001\\u4e0d\\u5229\\u76ca\\u3084\\u640d\\u5bb3\\u3092\\u4e0e\\u3048\\u305f\\u308a\\u3001\\u5c0a\\u53b3\\u3092\\u50b7\\u3064\\u3051\\u305f\\u308a\\u3057\\u305f\\u5834\\u5408\\u3001\\u30cf\\u30e9\\u30b9\\u30e1\\u30f3\\u30c8\\u3068\\u307f\\u306a\\u3055\\u308c\\u308b\\u3002\\u4f01\\u696d\\u5185\\u3067\\u306e\\u4ee3\\u8868\\u7684\\u306a\\u30cf\\u30e9\\u30b9\\u30e1\\u30f3\\u30c8\\u3068\\u3057\\u3066\\u306f\\u3001\\u30bb\\u30af\\u30b7\\u30e3\\u30eb\\u30fb\\u30cf\\u30e9\\u30b9\\u30e1\\u30f3\\u30c8\\u3001\\u30e2\\u30e9\\u30eb\\u30fb\\u30cf\\u30e9\\u30b9\\u30e1\\u30f3\\u30c8\\uff08\\u30d1\\u30ef\\u30fc\\u30fb\\u30cf\\u30e9\\u30b9\\u30e1\\u30f3\\u30c8\\uff09\\u3001\\u30a2\\u30eb\\u30b3\\u30fc\\u30eb\\u30fb\\u30cf\\u30e9\\u30b9\\u30e1\\u30f3\\u30c8\\u306a\\u3069\\u304c\\u3042\\u308b\\u3002","categories_id":"2","_token":"e3rH2zCPaecWPLytokHwZdI7XYJgacVfVYERNevw","_previous_":"http:\\/\\/localhost\\/admin\\/keyword"}', '2017-10-13 09:00:16', '2017-10-13 09:00:16'),
(981, 1, 'admin/keyword', 'GET', '::1', '[]', '2017-10-13 09:00:16', '2017-10-13 09:00:16'),
(982, 1, 'admin/keyword/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 09:00:36', '2017-10-13 09:00:36'),
(983, 1, 'admin/keyword', 'POST', '::1', '{"initial":"\\u306f","keyword":"\\u30d1\\u30ef\\u30fc\\u30fb\\u30cf\\u30e9\\u30b9\\u30e1\\u30f3\\u30c8","description":"\\u8077\\u52d9\\u4e0a\\u306e\\u7acb\\u5834\\u3084\\u6a29\\u9650\\u3092\\u80cc\\u666f\\u306b\\u3057\\u305f\\u3001\\u3044\\u3058\\u3081\\u3084\\u5acc\\u304c\\u3089\\u305b\\u884c\\u70ba\\u3092\\u6307\\u3059\\u3002\\u7565\\u3057\\u3066\\u30d1\\u30ef\\u30cf\\u30e9\\u3001\\u3042\\u308b\\u3044\\u306f\\u30dc\\u30b9\\u30cf\\u30e9\\uff08\\u30dc\\u30b9\\u30fb\\u30cf\\u30e9\\u30b9\\u30e1\\u30f3\\u30c8\\uff09\\u3068\\u547c\\u3070\\u308c\\u308b\\u3002\\u5ca1\\u7530\\u5eb7\\u5b50\\u6c0f\\u306b\\u3088\\u308b\\u9020\\u8a9e\\u3067\\u3001\\u6b27\\u7c73\\u3067\\u306f\\u30e2\\u30e9\\u30eb\\u30fb\\u30cf\\u30e9\\u30b9\\u30e1\\u30f3\\u30c8\\u3068\\u3044\\u3046\\u3002\\u30d1\\u30ef\\u30cf\\u30e9\\u306b\\u306f\\u3001\\u9000\\u8077\\u5f37\\u8981\\u3084\\u4e0d\\u5f53\\u306a\\u8a55\\u4fa1\\u306e\\u307b\\u304b\\u3001\\u8a00\\u8449\\u3084\\u614b\\u5ea6\\u306b\\u3088\\u308b\\u66b4\\u529b\\u3084\\u5acc\\u304c\\u3089\\u305b\\u3001\\u53f1\\u8cac\\u3001\\u7121\\u8996\\u3001\\u51b7\\u9047\\u3001\\u6b8b\\u696d\\u306e\\u57f7\\u62d7\\u306a\\u5f37\\u8981\\u3084\\u5f37\\u5236\\u7684\\u306a\\u98f2\\u307f\\u4f1a\\u3078\\u306e\\u8a98\\u3044\\u306a\\u3069\\u3082\\u542b\\u307e\\u308c\\u308b\\u3002\\u901a\\u5e38\\u306e\\u6307\\u793a\\u3084\\u547d\\u4ee4\\u3068\\u306e\\u5883\\u754c\\u306f\\u3001\\u305d\\u306e\\u6307\\u793a\\u3084\\u547d\\u4ee4\\u306b\\u696d\\u52d9\\u4e0a\\u306e\\u6b63\\u5f53\\u6027\\u304c\\u3042\\u308b\\u304b\\u3069\\u3046\\u304b\\u304c\\u5224\\u65ad\\u57fa\\u6e96\\u3068\\u306a\\u308b\\u3002","categories_id":"2","_token":"e3rH2zCPaecWPLytokHwZdI7XYJgacVfVYERNevw","_previous_":"http:\\/\\/localhost\\/admin\\/keyword"}', '2017-10-13 09:00:53', '2017-10-13 09:00:53'),
(984, 1, 'admin/keyword', 'GET', '::1', '[]', '2017-10-13 09:00:53', '2017-10-13 09:00:53'),
(985, 1, 'admin/keyword/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 09:01:12', '2017-10-13 09:01:12'),
(986, 1, 'admin/keyword', 'POST', '::1', '{"initial":"\\u3072","keyword":"\\u975e\\u6b63\\u898f\\u793e\\u54e1\\u30fb\\u975e\\u6b63\\u898f\\u96c7\\u7528","description":"\\u975e\\u6b63\\u898f\\u793e\\u54e1\\u3068\\u306f\\u3001\\u4e00\\u822c\\u7684\\u306b\\u306f\\u6b63\\u898f\\u96c7\\u7528\\u3067\\u306f\\u306a\\u3044\\u4eba\\u3092\\u3044\\u3046\\u3002\\u307e\\u305f\\u3001\\u975e\\u6b63\\u898f\\u96c7\\u7528\\u3068\\u306f\\u6b63\\u793e\\u54e1\\u3068\\u3057\\u3066\\u306e\\u96c7\\u7528\\u5f62\\u614b\\u4ee5\\u5916\\u3067\\u50cd\\u304f\\u5f62\\u614b\\u3092\\u3055\\u3059\\u3002\\u5177\\u4f53\\u7684\\u306b\\u306f\\u3001\\u5951\\u7d04\\u793e\\u54e1\\u3001\\u5631\\u8a17\\u793e\\u54e1\\u3001\\u6e96\\u793e\\u54e1\\u3001\\u81e8\\u6642\\u793e\\u54e1\\u3001\\u5b63\\u7bc0\\u793e\\u54e1\\u3001\\u30d1\\u30fc\\u30c8\\u30bf\\u30a4\\u30de\\u30fc\\u3001\\u30a2\\u30eb\\u30d0\\u30a4\\u30c8\\u3001\\u6d3e\\u9063\\u793e\\u54e1\\u3001\\u8acb\\u8ca0\\u793e\\u54e1\\u306a\\u3069\\u304c\\u975e\\u6b63\\u898f\\u793e\\u54e1\\u306b\\u3042\\u305f\\u308b\\u3002","categories_id":"4","_token":"e3rH2zCPaecWPLytokHwZdI7XYJgacVfVYERNevw","_previous_":"http:\\/\\/localhost\\/admin\\/keyword"}', '2017-10-13 09:01:26', '2017-10-13 09:01:26'),
(987, 1, 'admin/keyword', 'GET', '::1', '[]', '2017-10-13 09:01:26', '2017-10-13 09:01:26'),
(988, 1, 'admin/keyword/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 09:01:45', '2017-10-13 09:01:45'),
(989, 1, 'admin/keyword', 'POST', '::1', '{"initial":"\\u3075","keyword":"\\u30d5\\u30a1\\u30a4\\u30a2\\u30a6\\u30a9\\u30fc\\u30eb","description":"\\u9632\\u706b\\u58c1\\u306e\\u3053\\u3068\\u3002\\u30cd\\u30c3\\u30c8\\u30ef\\u30fc\\u30af\\u4e0a\\u306e\\u30d5\\u30a1\\u30a4\\u30a2\\u30a6\\u30a9\\u30fc\\u30eb\\u3068\\u306f\\u3001\\u30bb\\u30ad\\u30e5\\u30ea\\u30c6\\u30a3\\u3092\\u78ba\\u4fdd\\u3059\\u308b\\u305f\\u3081\\u306e\\u3057\\u304f\\u307f\\u306e\\u3053\\u3068\\u3002\\u5916\\u90e8\\u3078\\u306e\\u5b89\\u5168\\u306a\\u30a2\\u30af\\u30bb\\u30b9\\u3092\\u5b9f\\u73fe\\u3057\\u3001\\u307e\\u305f\\u5916\\u90e8\\u304b\\u3089\\u306e\\u4e0d\\u6b63\\u306a\\u30a2\\u30af\\u30bb\\u30b9\\u3092\\u9632\\u3050\\u5f79\\u76ee\\u3092\\u679c\\u305f\\u3059\\u3002","categories_id":"5","_token":"e3rH2zCPaecWPLytokHwZdI7XYJgacVfVYERNevw","_previous_":"http:\\/\\/localhost\\/admin\\/keyword"}', '2017-10-13 09:01:58', '2017-10-13 09:01:58'),
(990, 1, 'admin/keyword', 'GET', '::1', '[]', '2017-10-13 09:01:59', '2017-10-13 09:01:59'),
(991, 1, 'admin/keyword/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 09:02:13', '2017-10-13 09:02:13'),
(992, 1, 'admin/keyword', 'POST', '::1', '{"initial":"\\u3075","keyword":"\\u30d5\\u30a3\\u30e9\\u30f3\\u30bd\\u30ed\\u30d4\\u30fc","description":"\\u6148\\u5584\\u6d3b\\u52d5\\u306e\\u8a33\\u3002\\u6700\\u8fd1\\u3067\\u306f\\u4f01\\u696d\\u306e\\u793e\\u4f1a\\u7684\\u306a\\u8ca2\\u732e\\u6d3b\\u52d5\\u3001\\u798f\\u7949\\u6d3b\\u52d5\\u306e\\u3053\\u3068\\u3092\\u3044\\u3046\\u3002","categories_id":"2","_token":"e3rH2zCPaecWPLytokHwZdI7XYJgacVfVYERNevw","_previous_":"http:\\/\\/localhost\\/admin\\/keyword"}', '2017-10-13 09:02:31', '2017-10-13 09:02:31'),
(993, 1, 'admin/keyword', 'GET', '::1', '[]', '2017-10-13 09:02:31', '2017-10-13 09:02:31'),
(994, 1, 'admin/keyword/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 09:02:57', '2017-10-13 09:02:57'),
(995, 1, 'admin/keyword', 'POST', '::1', '{"initial":"\\u3075","keyword":"\\u30d6\\u30eb\\u30fc\\u30c8\\u30a5\\u30fc\\u30b9","description":"\\u643a\\u5e2f\\u96fb\\u8a71\\u3084\\u30ce\\u30fc\\u30c8\\u30d1\\u30bd\\u30b3\\u30f3\\u306a\\u3069\\u306e\\u30c7\\u30b8\\u30bf\\u30eb\\u6a5f\\u5668\\u3092\\u3001\\u8fd1\\u8ddd\\u96e2\\u5185\\u306b\\u304a\\u3044\\u3066\\u7121\\u7dda\\u63a5\\u7d9a\\u3059\\u308b\\u305f\\u3081\\u306e\\u901a\\u4fe1\\u6280\\u8853\\u3067\\u3001\\u30d6\\u30eb\\u30fc\\u30c8\\u30a5\\u30fc\\u30b9\\u306f\\u305d\\u306e\\u30b3\\u30fc\\u30c9\\u30cd\\u30fc\\u30e0\\u3002","categories_id":"5","_token":"e3rH2zCPaecWPLytokHwZdI7XYJgacVfVYERNevw","_previous_":"http:\\/\\/localhost\\/admin\\/keyword"}', '2017-10-13 09:03:10', '2017-10-13 09:03:10'),
(996, 1, 'admin/keyword', 'GET', '::1', '[]', '2017-10-13 09:03:11', '2017-10-13 09:03:11'),
(997, 1, 'admin/keyword/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 09:03:32', '2017-10-13 09:03:32'),
(998, 1, 'admin/keyword', 'POST', '::1', '{"initial":"\\u3075","keyword":"\\u30d6\\u30ec\\u30fc\\u30f3\\u30b9\\u30c8\\u30fc\\u30df\\u30f3\\u30b0","description":"\\u30a2\\u30a4\\u30c7\\u30a2\\u3092\\u5275\\u9020\\u3059\\u308b\\u6280\\u6cd5\\u306e\\uff11\\u3064\\u3002\\u96c6\\u56e3\\uff08\\u30b0\\u30eb\\u30fc\\u30d7\\uff09\\u3067\\u884c\\u3046\\u3082\\u306e\\u3067\\u3001\\u3042\\u308b\\u30c6\\u30fc\\u30de\\u306b\\u5bfe\\u3057\\u3001\\u5404\\u4eba\\u304c\\u601d\\u3044\\u3064\\u304f\\u307e\\u307e\\u306b\\u30a2\\u30a4\\u30c7\\u30a2\\u3092\\u51fa\\u3057\\u5408\\u3063\\u3066\\u3044\\u304d\\u3001\\u5f8c\\u3067\\u30a2\\u30a4\\u30c7\\u30a2\\u3092\\u6574\\u7406\\u3057\\u307e\\u3068\\u3081\\u3042\\u3052\\u308b\\u3068\\u3044\\u3046\\u3082\\u306e\\u3002","categories_id":"2","_token":"e3rH2zCPaecWPLytokHwZdI7XYJgacVfVYERNevw","_previous_":"http:\\/\\/localhost\\/admin\\/keyword"}', '2017-10-13 09:03:45', '2017-10-13 09:03:45'),
(999, 1, 'admin/keyword', 'GET', '::1', '[]', '2017-10-13 09:03:45', '2017-10-13 09:03:45'),
(1000, 1, 'admin', 'GET', '::1', '[]', '2017-10-13 20:14:45', '2017-10-13 20:14:45'),
(1001, 1, 'admin', 'GET', '::1', '[]', '2017-10-13 20:14:45', '2017-10-13 20:14:45'),
(1002, 1, 'admin/keyword', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 20:14:51', '2017-10-13 20:14:51'),
(1003, 1, 'admin/keyword/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 20:15:01', '2017-10-13 20:15:01'),
(1004, 1, 'admin/keyword', 'POST', '::1', '{"initial":"ha","keyword":"\\u30d0\\u30ea\\u30a2\\u30d5\\u30ea\\u30fc","description":null,"categories_id":"1","_token":"VmZOvZ8kyfLCny7GlcRga8migZ8cYYs7HkUUPl4R","_previous_":"http:\\/\\/localhost\\/admin\\/keyword"}', '2017-10-13 20:15:05', '2017-10-13 20:15:05'),
(1005, 1, 'admin/keyword/create', 'GET', '::1', '[]', '2017-10-13 20:15:06', '2017-10-13 20:15:06'),
(1006, 1, 'admin/keyword', 'POST', '::1', '{"initial":"\\u306f","keyword":"\\u30d0\\u30ea\\u30a2\\u30d5\\u30ea\\u30fc","description":"\\u969c\\u5bb3\\u7269\\uff08\\u30d0\\u30ea\\u30a2\\uff09\\u3092\\u53d6\\u308a\\u9664\\u304f\\uff08\\u30d5\\u30ea\\u30fc\\uff09\\u3068\\u3044\\u3046\\u610f\\u5473\\u3002\\u4f4f\\u5b85\\u5185\\u3084\\u5730\\u57df\\u793e\\u4f1a\\u306b\\u304a\\u3044\\u3066\\u3001\\u969c\\u5bb3\\u8005\\u3084\\u9ad8\\u9f62\\u8005\\u306b\\u3068\\u3063\\u3066\\u306e\\u969c\\u5bb3\\u3092\\u53d6\\u308a\\u9664\\u304d\\u3001\\u66ae\\u3089\\u3057\\u3084\\u3059\\u3044\\u74b0\\u5883\\u3092\\u5b9f\\u73fe\\u3057\\u3066\\u3044\\u3053\\u3046\\u3068\\u3044\\u3046\\u8003\\u3048\\u65b9\\u3002","categories_id":"2","_token":"VmZOvZ8kyfLCny7GlcRga8migZ8cYYs7HkUUPl4R"}', '2017-10-13 20:15:26', '2017-10-13 20:15:26'),
(1007, 1, 'admin/keyword', 'GET', '::1', '[]', '2017-10-13 20:15:26', '2017-10-13 20:15:26'),
(1008, 1, 'admin/keyword/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 20:16:17', '2017-10-13 20:16:17'),
(1009, 1, 'admin/keyword', 'POST', '::1', '{"initial":"\\u3072","keyword":"\\u30d3\\u30eb\\u30c8\\u30a4\\u30f3\\u30fb\\u30b9\\u30bf\\u30d3\\u30e9\\u30a4\\u30b6\\u30fc","description":"\\u666f\\u6c17\\u306e\\u5909\\u52d5\\u3092\\u81ea\\u52d5\\u7684\\u306b\\u5b89\\u5b9a\\u5316\\u3055\\u305b\\u308b\\u3057\\u304f\\u307f\\u306e\\u3053\\u3068\\u3002\\u300c\\u30d3\\u30eb\\u30c8\\u30a4\\u30f3\\u300d\\u3068\\u306f\\u3001\\u56fd\\u306e\\u8ca1\\u653f\\u69cb\\u9020\\u306b\\u3042\\u3089\\u304b\\u3058\\u3081\\u7d44\\u307f\\u8fbc\\u307e\\u308c\\u3066\\u3044\\u308b\\u3068\\u3044\\u3046\\u610f\\u5473\\u3067\\u3042\\u308a\\u3001\\u300c\\u30b9\\u30bf\\u30d3\\u30e9\\u30a4\\u30b6\\u30fc\\u300d\\u3068\\u306f\\u5b89\\u5b9a\\u88c5\\u7f6e\\u3092\\u610f\\u5473\\u3059\\u308b\\u3002\\u305d\\u306e\\u305f\\u3081\\u81ea\\u52d5\\u5b89\\u5b9a\\u5316\\u88c5\\u7f6e\\u3068\\u3082\\u8a33\\u3055\\u308c\\u308b\\u3002\\u305f\\u3068\\u3048\\u3070\\u3001\\u6240\\u5f97\\u7a0e\\u306a\\u3069\\u306e\\u7d2f\\u9032\\u8ab2\\u7a0e\\u5236\\u5ea6\\u3084\\u96c7\\u7528\\u4fdd\\u967a\\u306b\\u3088\\u308b\\u5931\\u696d\\u7b49\\u7d66\\u4ed8\\u306a\\u3069\\u306e\\u793e\\u4f1a\\u4fdd\\u969c\\u5236\\u5ea6\\u304c\\u3053\\u308c\\u306b\\u5f53\\u3066\\u306f\\u307e\\u308b\\u3002","categories_id":"2","_token":"VmZOvZ8kyfLCny7GlcRga8migZ8cYYs7HkUUPl4R","_previous_":"http:\\/\\/localhost\\/admin\\/keyword"}', '2017-10-13 20:16:33', '2017-10-13 20:16:33'),
(1010, 1, 'admin/keyword', 'GET', '::1', '[]', '2017-10-13 20:16:33', '2017-10-13 20:16:33'),
(1011, 1, 'admin/keyword/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 20:18:18', '2017-10-13 20:18:18'),
(1012, 1, 'admin/keyword', 'POST', '::1', '{"initial":"\\u3078","keyword":"\\u5e73\\u5747\\u8cc3\\u91d1","description":"\\u52b4\\u707d\\u306e\\u4f11\\u696d\\u7d66\\u4ed8\\u3084\\u89e3\\u96c7\\u624b\\u5f53\\u306a\\u3069\\u3092\\u8a08\\u7b97\\u3059\\u308b\\u969b\\u306b\\u3001\\u7b97\\u5b9a\\u57fa\\u6e96\\u3068\\u3057\\u3066\\u7528\\u3044\\u308b\\u8cc3\\u91d1\\u984d\\u3092\\u3044\\u3046\\u3002\\u52b4\\u50cd\\u57fa\\u6e96\\u6cd5\\u7b2c12\\u6761\\u3067\\u300c\\u5e73\\u5747\\u8cc3\\u91d1\\u3092\\u7b97\\u5b9a\\u3059\\u3079\\u304d\\u4e8b\\u7531\\u306e\\u767a\\u751f\\u3057\\u305f\\u65e5\\u4ee5\\u524d3\\u30ab\\u6708\\u9593\\uff08\\u7b97\\u5b9a\\u671f\\u9593\\uff09\\u306b\\u305d\\u306e\\u52b4\\u50cd\\u8005\\u306b\\u5bfe\\u3057\\u652f\\u6255\\u308f\\u308c\\u305f\\u8cc3\\u91d1\\u306e\\u7dcf\\u984d\\u3092\\u3001\\u305d\\u306e\\u671f\\u9593\\u306e\\u7dcf\\u65e5\\u6570\\u3067\\u9664\\u3057\\u305f\\u91d1\\u984d\\u3092\\u3044\\u3046\\u300d\\u3068\\u898f\\u5b9a\\u3055\\u308c\\u3066\\u3044\\u308b\\u3002","categories_id":"4","_token":"VmZOvZ8kyfLCny7GlcRga8migZ8cYYs7HkUUPl4R","_previous_":"http:\\/\\/localhost\\/admin\\/keyword"}', '2017-10-13 20:18:37', '2017-10-13 20:18:37'),
(1013, 1, 'admin/keyword', 'GET', '::1', '[]', '2017-10-13 20:18:37', '2017-10-13 20:18:37'),
(1014, 1, 'admin/keyword/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 20:19:24', '2017-10-13 20:19:24'),
(1015, 1, 'admin/keyword', 'POST', '::1', '{"initial":"\\u307b","keyword":"\\u6cd5\\u4eba","description":"\\u8ca1\\u7523\\u3092\\u4fdd\\u6709\\u3057\\u3001\\u5951\\u7d04\\u3092\\u7d50\\u3076\\u3053\\u3068\\u304c\\u3067\\u304d\\u308b\\u4e3b\\u4f53\\u306f\\u4eba\\u3067\\u3042\\u308b\\u304c\\u3001\\u5b9f\\u969b\\u306e\\u4eba\\u3067\\u3042\\u308b\\u81ea\\u7136\\u4eba\\u306b\\u5bfe\\u3057\\u3001\\u6cd5\\u5f8b\\u4e0a\\u306e\\u4fbf\\u5b9c\\u7684\\u306a\\u6982\\u5ff5\\u3068\\u3057\\u3066\\u306e\\u4eba\\u3002\\u6cd5\\u5f8b\\u4e0a\\u306e\\u6a29\\u5229\\u80fd\\u529b\\u30fb\\u884c\\u70ba\\u80fd\\u529b\\u30fb\\u8ca1\\u7523\\u306e\\u4fdd\\u6709\\u304c\\u8a8d\\u3081\\u3089\\u308c\\u305f\\u7d44\\u7e54\\u4f53\\u3002","categories_id":"4","_token":"VmZOvZ8kyfLCny7GlcRga8migZ8cYYs7HkUUPl4R","_previous_":"http:\\/\\/localhost\\/admin\\/keyword"}', '2017-10-13 20:19:50', '2017-10-13 20:19:50'),
(1016, 1, 'admin/keyword', 'GET', '::1', '[]', '2017-10-13 20:19:50', '2017-10-13 20:19:50'),
(1017, 1, 'admin/keyword/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 20:21:33', '2017-10-13 20:21:33'),
(1018, 1, 'admin/keyword', 'POST', '::1', '{"initial":"\\u307f","keyword":"\\u307f\\u306a\\u3057\\u52b4\\u50cd\\u6642\\u9593\\u5236","description":"\\u5b9f\\u969b\\u306b\\u50cd\\u3044\\u305f\\u6642\\u9593\\u306b\\u304b\\u304b\\u308f\\u3089\\u305a\\u3001\\u4e00\\u5b9a\\u6642\\u9593\\u3092\\u50cd\\u3044\\u305f\\u3082\\u306e\\u3068\\u307f\\u306a\\u3059\\u52b4\\u50cd\\u6642\\u9593\\u7ba1\\u7406\\u306e\\u65b9\\u6cd5\\u3002\\u55b6\\u696d\\u8077\\u306a\\u3069\\u306e\\u4e8b\\u696d\\u5834\\u5916\\u52b4\\u50cd\\u3092\\u3057\\u3066\\u3044\\u308b\\u5834\\u5408\\u3084\\u88c1\\u91cf\\u52b4\\u50cd\\u5236\\u306e\\u793e\\u54e1\\u306b\\u9069\\u7528\\u3055\\u308c\\u308b\\u3002\\u307e\\u305f\\u3001\\u51fa\\u5f35\\u3084\\u5916\\u52e4\\u5f8c\\u306b\\u76f4\\u5e30\\u3059\\u308b\\u5834\\u5408\\u306a\\u3069\\u3001\\u6b63\\u78ba\\u306a\\u6642\\u9593\\u7ba1\\u7406\\u304c\\u3057\\u3065\\u3089\\u3044\\u5834\\u5408\\u3082\\u7d42\\u696d\\u6642\\u523b\\u307e\\u3067\\u50cd\\u3044\\u305f\\u3082\\u306e\\u3068\\u307f\\u306a\\u3057\\u3066\\u7ba1\\u7406\\u3059\\u308b\\u5834\\u5408\\u304c\\u3042\\u308b\\u3002","categories_id":"4","_token":"VmZOvZ8kyfLCny7GlcRga8migZ8cYYs7HkUUPl4R","_previous_":"http:\\/\\/localhost\\/admin\\/keyword"}', '2017-10-13 20:21:47', '2017-10-13 20:21:47'),
(1019, 1, 'admin/keyword', 'GET', '::1', '[]', '2017-10-13 20:21:48', '2017-10-13 20:21:48'),
(1020, 1, 'admin/keyword/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 20:22:52', '2017-10-13 20:22:52'),
(1021, 1, 'admin/keyword', 'POST', '::1', '{"initial":"\\u3082","keyword":"\\u30e2\\u30e9\\u30eb\\u30fb\\u30cf\\u30e9\\u30b9\\u30e1\\u30f3\\u30c8","description":"\\u8a00\\u8449\\u3084\\u614b\\u5ea6\\u306b\\u3088\\u308b\\u7cbe\\u795e\\u7684\\u306a\\u5acc\\u304c\\u3089\\u305b\\u884c\\u70ba\\u3002","categories_id":"2","_token":"VmZOvZ8kyfLCny7GlcRga8migZ8cYYs7HkUUPl4R","_previous_":"http:\\/\\/localhost\\/admin\\/keyword"}', '2017-10-13 20:23:24', '2017-10-13 20:23:24'),
(1022, 1, 'admin/keyword', 'GET', '::1', '[]', '2017-10-13 20:23:24', '2017-10-13 20:23:24'),
(1023, 1, 'admin/keyword/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 20:24:45', '2017-10-13 20:24:45'),
(1024, 1, 'admin/keyword', 'POST', '::1', '{"initial":"\\u308d","keyword":"\\u52b4\\u707d\\u4fdd\\u967a","description":null,"categories_id":"1","_token":"VmZOvZ8kyfLCny7GlcRga8migZ8cYYs7HkUUPl4R","_previous_":"http:\\/\\/localhost\\/admin\\/keyword"}', '2017-10-13 20:24:49', '2017-10-13 20:24:49'),
(1025, 1, 'admin/keyword/create', 'GET', '::1', '[]', '2017-10-13 20:24:50', '2017-10-13 20:24:50'),
(1026, 1, 'admin/keyword', 'POST', '::1', '{"initial":"\\u308d","keyword":"\\u52b4\\u707d\\u4fdd\\u967a","description":"\\u6b63\\u3057\\u304f\\u306f\\u52b4\\u50cd\\u8005\\u707d\\u5bb3\\u88dc\\u511f\\u4fdd\\u967a\\u3002\\u52b4\\u50cd\\u8005\\u304c\\u3001\\u696d\\u52d9\\u4e0a\\u307e\\u305f\\u306f\\u901a\\u52e4\\u9014\\u4e0a\\u306b\\u707d\\u5bb3\\u306b\\u3042\\u3044\\u3001\\u8ca0\\u50b7\\u3001\\u75be\\u75c5\\u3001\\u969c\\u5bb3\\u307e\\u305f\\u306f\\u6b7b\\u4ea1\\u306b\\u81f3\\u3063\\u305f\\u5834\\u5408\\u3001\\u7d66\\u4ed8\\u7b49\\u306e\\u652f\\u63f4\\u3092\\u884c\\u3046\\u5236\\u5ea6\\u3002\\u539f\\u5247\\u3068\\u3057\\u3066\\u3001\\u52b4\\u50cd\\u8005\\u3092\\u4f7f\\u7528\\u3059\\u308b\\u3059\\u3079\\u3066\\u306e\\u4e8b\\u696d\\u304c\\u52a0\\u5165\\u3057\\u306a\\u3051\\u308c\\u3070\\u306a\\u3089\\u306a\\u3044\\u3002\\u52b4\\u707d\\u4fdd\\u967a\\u306b\\u52a0\\u5165\\u3057\\u3066\\u3044\\u308b\\u4e8b\\u696d\\u6240\\u306b\\u52e4\\u52d9\\u3059\\u308b\\u52b4\\u50cd\\u8005\\u306f\\u3001\\u6b63\\u793e\\u54e1\\u3084\\u30d1\\u30fc\\u30c8\\u306a\\u3069\\u306e\\u96c7\\u7528\\u52e4\\u52d9\\u306b\\u95a2\\u4fc2\\u306a\\u304f\\u3001\\u3059\\u3079\\u3066\\u9069\\u7528\\u5bfe\\u8c61\\u3068\\u306a\\u308b\\u3002\\u305f\\u3060\\u3057\\u3001\\u696d\\u52d9\\u57f7\\u884c\\u6a29\\u3092\\u6301\\u3064\\u5f79\\u54e1\\u306b\\u306f\\u9069\\u7528\\u3055\\u308c\\u306a\\u3044\\u3002","categories_id":"1","_token":"VmZOvZ8kyfLCny7GlcRga8migZ8cYYs7HkUUPl4R"}', '2017-10-13 20:25:14', '2017-10-13 20:25:14'),
(1027, 1, 'admin/keyword', 'GET', '::1', '[]', '2017-10-13 20:25:14', '2017-10-13 20:25:14'),
(1028, 1, 'admin/keyword', 'GET', '::1', '{"_sort":{"column":"category.name","type":"desc"},"_pjax":"#pjax-container"}', '2017-10-13 20:25:28', '2017-10-13 20:25:28'),
(1029, 1, 'admin/keyword', 'GET', '::1', '{"_sort":{"column":"initial","type":"desc"},"_pjax":"#pjax-container"}', '2017-10-13 20:25:33', '2017-10-13 20:25:33'),
(1030, 1, 'admin/keyword/105/edit', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 20:25:48', '2017-10-13 20:25:48'),
(1031, 1, 'admin/keyword/105', 'PUT', '::1', '{"initial":"\\u308d","keyword":"\\u52b4\\u707d\\u4fdd\\u967a","description":"\\u6b63\\u3057\\u304f\\u306f\\u52b4\\u50cd\\u8005\\u707d\\u5bb3\\u88dc\\u511f\\u4fdd\\u967a\\u3002\\u52b4\\u50cd\\u8005\\u304c\\u3001\\u696d\\u52d9\\u4e0a\\u307e\\u305f\\u306f\\u901a\\u52e4\\u9014\\u4e0a\\u306b\\u707d\\u5bb3\\u306b\\u3042\\u3044\\u3001\\u8ca0\\u50b7\\u3001\\u75be\\u75c5\\u3001\\u969c\\u5bb3\\u307e\\u305f\\u306f\\u6b7b\\u4ea1\\u306b\\u81f3\\u3063\\u305f\\u5834\\u5408\\u3001\\u7d66\\u4ed8\\u7b49\\u306e\\u652f\\u63f4\\u3092\\u884c\\u3046\\u5236\\u5ea6\\u3002\\u539f\\u5247\\u3068\\u3057\\u3066\\u3001\\u52b4\\u50cd\\u8005\\u3092\\u4f7f\\u7528\\u3059\\u308b\\u3059\\u3079\\u3066\\u306e\\u4e8b\\u696d\\u304c\\u52a0\\u5165\\u3057\\u306a\\u3051\\u308c\\u3070\\u306a\\u3089\\u306a\\u3044\\u3002\\u52b4\\u707d\\u4fdd\\u967a\\u306b\\u52a0\\u5165\\u3057\\u3066\\u3044\\u308b\\u4e8b\\u696d\\u6240\\u306b\\u52e4\\u52d9\\u3059\\u308b\\u52b4\\u50cd\\u8005\\u306f\\u3001\\u6b63\\u793e\\u54e1\\u3084\\u30d1\\u30fc\\u30c8\\u306a\\u3069\\u306e\\u96c7\\u7528\\u52e4\\u52d9\\u306b\\u95a2\\u4fc2\\u306a\\u304f\\u3001\\u3059\\u3079\\u3066\\u9069\\u7528\\u5bfe\\u8c61\\u3068\\u306a\\u308b\\u3002\\u305f\\u3060\\u3057\\u3001\\u696d\\u52d9\\u57f7\\u884c\\u6a29\\u3092\\u6301\\u3064\\u5f79\\u54e1\\u306b\\u306f\\u9069\\u7528\\u3055\\u308c\\u306a\\u3044\\u3002","categories_id":"4","_token":"VmZOvZ8kyfLCny7GlcRga8migZ8cYYs7HkUUPl4R","_method":"PUT","_previous_":"http:\\/\\/localhost\\/admin\\/keyword?_sort%5Bcolumn%5D=initial&_sort%5Btype%5D=desc"}', '2017-10-13 20:25:58', '2017-10-13 20:25:58'),
(1032, 1, 'admin/keyword', 'GET', '::1', '{"_sort":{"column":"initial","type":"desc"}}', '2017-10-13 20:25:58', '2017-10-13 20:25:58'),
(1033, 1, 'admin/keyword/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 20:26:15', '2017-10-13 20:26:15'),
(1034, 1, 'admin/keyword', 'POST', '::1', '{"initial":"\\u308d","keyword":"\\u52b4\\u50cd\\u57fa\\u6e96\\u6cd5","description":"\\u8cc3\\u91d1\\u3001\\u52b4\\u50cd\\u6642\\u9593\\u3001\\u305d\\u306e\\u4ed6\\u306e\\u52b4\\u50cd\\u6761\\u4ef6\\u306b\\u95a2\\u3057\\u3066\\u6700\\u4f4e\\u57fa\\u6e96\\u3092\\u5b9a\\u3081\\u305f\\u6cd5\\u5f8b\\u3002","categories_id":"4","_token":"VmZOvZ8kyfLCny7GlcRga8migZ8cYYs7HkUUPl4R","_previous_":"http:\\/\\/localhost\\/admin\\/keyword?_sort%5Bcolumn%5D=initial&_sort%5Btype%5D=desc"}', '2017-10-13 20:26:38', '2017-10-13 20:26:38'),
(1035, 1, 'admin/keyword', 'GET', '::1', '{"_sort":{"column":"initial","type":"desc"}}', '2017-10-13 20:26:38', '2017-10-13 20:26:38'),
(1036, 1, 'admin/keyword/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 20:27:26', '2017-10-13 20:27:26'),
(1037, 1, 'admin/keyword', 'POST', '::1', '{"initial":"\\u308c","keyword":"\\u30ec\\u30c3\\u30c9\\u30fb\\u30aa\\u30fc\\u30b7\\u30e3\\u30f3","description":"\\u30ec\\u30c3\\u30c9\\u30fb\\u30aa\\u30fc\\u30b7\\u30e3\\u30f3\\u3068\\u306f\\u3001\\u7af6\\u4e89\\u306e\\u306a\\u3044\\u65b0\\u3057\\u3044\\u5e02\\u5834\\u3092\\u8868\\u3059\\u300c\\u30d6\\u30eb\\u30fc\\u30fb\\u30aa\\u30fc\\u30b7\\u30e3\\u30f3\\u300d\\u306b\\u5bfe\\u3057\\u3066\\u3001\\u7af6\\u4e89\\u306e\\u6fc0\\u3057\\u3044\\u65e2\\u5b58\\u306e\\u5e02\\u5834\\u3092\\u6307\\u3059\\u3002","categories_id":"2","_token":"VmZOvZ8kyfLCny7GlcRga8migZ8cYYs7HkUUPl4R","_previous_":"http:\\/\\/localhost\\/admin\\/keyword?_sort%5Bcolumn%5D=initial&_sort%5Btype%5D=desc"}', '2017-10-13 20:27:54', '2017-10-13 20:27:54'),
(1038, 1, 'admin/keyword', 'GET', '::1', '{"_sort":{"column":"initial","type":"desc"}}', '2017-10-13 20:27:54', '2017-10-13 20:27:54'),
(1039, 1, 'admin/keyword/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 20:28:06', '2017-10-13 20:28:06'),
(1040, 1, 'admin/keyword', 'POST', '::1', '{"initial":"\\u3075","keyword":"\\u30d6\\u30eb\\u30fc\\u30fb\\u30aa\\u30fc\\u30b7\\u30e3\\u30f3","description":"\\u6587\\u5b57\\u901a\\u308a\\u306b\\u306f\\u82f1\\u8a9e\\u3067\\u300c\\u9752\\u3044\\u6d77\\u300d\\u3092\\u610f\\u5473\\u3059\\u308b\\u304c\\u3001\\u7d4c\\u55b6\\u5b66\\u3067\\u306f\\u300c\\u7af6\\u4e89\\u306e\\u306a\\u3044\\u65b0\\u3057\\u3044\\u5e02\\u5834\\u300d\\u3092\\u6307\\u3059\\u3002","categories_id":"2","_token":"VmZOvZ8kyfLCny7GlcRga8migZ8cYYs7HkUUPl4R","_previous_":"http:\\/\\/localhost\\/admin\\/keyword?_sort%5Bcolumn%5D=initial&_sort%5Btype%5D=desc"}', '2017-10-13 20:28:35', '2017-10-13 20:28:35'),
(1041, 1, 'admin/keyword', 'GET', '::1', '{"_sort":{"column":"initial","type":"desc"}}', '2017-10-13 20:28:36', '2017-10-13 20:28:36'),
(1042, 1, 'admin/keyword/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 20:29:02', '2017-10-13 20:29:02'),
(1043, 1, 'admin/keyword', 'POST', '::1', '{"initial":"\\u3075","keyword":"\\u30d6\\u30eb\\u30fc\\u30ab\\u30e9\\u30fc","description":"\\u5e83\\u304f\\u6280\\u80fd\\u30fb\\u4f5c\\u696d\\u7cfb\\u8077\\u7a2e\\u4e00\\u822c\\u3001\\u304a\\u3088\\u3073\\u305d\\u308c\\u306b\\u5f93\\u4e8b\\u3059\\u308b\\u52b4\\u50cd\\u8005\\u306e\\u3053\\u3068\\u3002\\u6280\\u80fd\\u5de5\\u3084\\u751f\\u7523\\u5de5\\u7a0b\\u4f5c\\u696d\\u3001\\u5efa\\u7bc9\\u30fb\\u571f\\u6728\\u4f5c\\u696d\\u3001\\u63a1\\u9271\\u30fb\\u63a1\\u77f3\\u4f5c\\u696d\\u3001\\u8fb2\\u6797\\u30fb\\u6f01\\u696d\\u4f5c\\u696d\\u306a\\u3069\\u306e\\u8077\\u7a2e\\u304c\\u3053\\u308c\\u306b\\u5f53\\u3066\\u306f\\u307e\\u308b\\u3002","categories_id":"2","_token":"VmZOvZ8kyfLCny7GlcRga8migZ8cYYs7HkUUPl4R","_previous_":"http:\\/\\/localhost\\/admin\\/keyword?_sort%5Bcolumn%5D=initial&_sort%5Btype%5D=desc"}', '2017-10-13 20:29:32', '2017-10-13 20:29:32'),
(1044, 1, 'admin/keyword', 'GET', '::1', '{"_sort":{"column":"initial","type":"desc"}}', '2017-10-13 20:29:32', '2017-10-13 20:29:32'),
(1045, 1, 'admin/keyword/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 20:30:01', '2017-10-13 20:30:01'),
(1046, 1, 'admin/keyword', 'POST', '::1', '{"initial":"\\u307b","keyword":"\\u30db\\u30ef\\u30a4\\u30c8\\u30ab\\u30e9\\u30fc","description":"\\u5e83\\u304f\\u4e8b\\u52d9\\u7cfb\\u8077\\u7a2e\\u4e00\\u822c\\u3001\\u304a\\u3088\\u3073\\u305d\\u308c\\u306b\\u5f93\\u4e8b\\u3059\\u308b\\u52b4\\u50cd\\u8005\\u306e\\u3053\\u3068\\u3002\\u9ad8\\u7b49\\u6559\\u80b2\\u3092\\u53d7\\u3051\\u3066\\u3044\\u308b\\u5834\\u5408\\u304c\\u591a\\u304f\\u3001\\u7d4c\\u55b6\\u4f01\\u753b\\u30fb\\u7ba1\\u7406\\u30fb\\u55b6\\u696d\\u30fb\\u4e8b\\u52d9\\u8077\\u3084\\u3001\\u6280\\u8853\\u30fb\\u5c02\\u9580\\u8077\\u306a\\u3069\\u304c\\u3053\\u308c\\u306b\\u5f53\\u3066\\u306f\\u307e\\u308b\\u3002","categories_id":"2","_token":"VmZOvZ8kyfLCny7GlcRga8migZ8cYYs7HkUUPl4R","_previous_":"http:\\/\\/localhost\\/admin\\/keyword?_sort%5Bcolumn%5D=initial&_sort%5Btype%5D=desc"}', '2017-10-13 20:30:19', '2017-10-13 20:30:19'),
(1047, 1, 'admin/keyword', 'GET', '::1', '{"_sort":{"column":"initial","type":"desc"}}', '2017-10-13 20:30:19', '2017-10-13 20:30:19'),
(1048, 1, 'admin/quiz', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 20:31:24', '2017-10-13 20:31:24'),
(1049, 1, 'admin/quiz', 'GET', '::1', '{"_pjax":"#pjax-container","_sort":{"column":"category.name","type":"desc"}}', '2017-10-13 20:31:53', '2017-10-13 20:31:53'),
(1050, 1, 'admin/quiz', 'GET', '::1', '{"_pjax":"#pjax-container","_sort":{"column":"category.name","type":"asc"}}', '2017-10-13 20:31:55', '2017-10-13 20:31:55'),
(1051, 1, 'admin/quiz/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 20:32:25', '2017-10-13 20:32:25'),
(1052, 1, 'admin/quiz', 'POST', '::1', '{"title":"\\u30db\\u30fc\\u30e0\\u30da\\u30fc\\u30b8\\u3084\\u30d6\\u30ed\\u30b0\\u306a\\u3069\\u306b\\u5e83\\u544a\\u3092\\u63b2\\u8f09\\u3057\\u3066\\u5831\\u916c\\u3092\\u3082\\u3089\\u3046\\u4ed5\\u7d44\\u307f\\u3092\\u4f55\\u3068\\u8a00\\u3046\\u304b\\u3002","answers_id":"39","categories_id":"5","answer":{"answer_1":"\\u30a2\\u30d5\\u30a3\\u30ea\\u30a8\\u30a4\\u30c8","answer_2":"\\u30a2\\u30bd\\u30b7\\u30a8\\u30fc\\u30b7\\u30e7\\u30f3","answer_3":"WordPress","answer_4":"\\u30d6\\u30ed\\u30ac\\u30fc","correct_answer_no":"1","commentary":"\\u30a2\\u30d5\\u30a3\\u30ea\\u30a8\\u30a4\\u30c8\\u304c\\u6b63\\u89e3\\u3067\\u3042\\u308b\\u3002\\r\\n\\r\\n\\u30a2\\u30bd\\u30b7\\u30a8\\u30fc\\u30b7\\u30e7\\u30f3\\u306f\\u5171\\u901a\\u306e\\u95a2\\u5fc3\\u3084\\u76ee\\u7684\\u306a\\u3069\\u3067\\u96c6\\u307e\\u3063\\u305f\\u6a5f\\u80fd\\u7684\\u96c6\\u56e3\\u3002\\u4f1a\\u793e\\u3084\\u975e\\u55b6\\u5229\\u7d44\\u7e54\\u306a\\u3069\\u3002\\r\\n\\r\\nWordPress\\u306f\\u30aa\\u30fc\\u30d7\\u30f3\\u30bd\\u30fc\\u30b9(\\u8ab0\\u3067\\u3082\\u4f7f\\u3046\\u3053\\u3068\\u304c\\u3067\\u304d\\u308b)\\u3067\\u63d0\\u4f9b\\u3057\\u3066\\u3044\\u308bCMS\\u306e\\u4e00\\u7a2e\\u3002\\u30c8\\u30c3\\u30d7\\u30da\\u30fc\\u30b8\\u30fb\\u30ab\\u30c6\\u30b4\\u30ea\\u30fc\\u30da\\u30fc\\u30b8\\u30fb\\u8a18\\u4e8b\\u30da\\u30fc\\u30b8\\u3068\\u3044\\u3063\\u305f\\u57fa\\u672c\\u7684\\u306a\\u30d6\\u30ed\\u30b0\\u306e\\u30b5\\u30a4\\u30c8\\u69cb\\u9020\\u3092\\u521d\\u3081\\u304b\\u3089\\u6301\\u3063\\u3066\\u3044\\u308b\\u305f\\u3081\\u3001Web\\u5236\\u4f5c\\u306e\\u77e5\\u8b58\\u304c\\u306a\\u304f\\u3066\\u3082\\u30d6\\u30ed\\u30b0\\u30b5\\u30a4\\u30c8\\u3092\\u7c21\\u5358\\u306b\\u3064\\u304f\\u308b\\u3053\\u3068\\u304c\\u3067\\u304d\\u308b\\u3002\\r\\n\\r\\n\\u30d6\\u30ed\\u30ac\\u30fc\\u306f\\u30d6\\u30ed\\u30b0\\u3092\\u66f8\\u304f\\u4eba\\u3001\\u30d6\\u30ed\\u30b0\\u306e\\u4f5c\\u8005"},"_token":"VmZOvZ8kyfLCny7GlcRga8migZ8cYYs7HkUUPl4R","_previous_":"http:\\/\\/localhost\\/admin\\/quiz?&_sort%5Bcolumn%5D=category.name&_sort%5Btype%5D=asc"}', '2017-10-13 20:39:36', '2017-10-13 20:39:36'),
(1053, 1, 'admin/quiz', 'GET', '::1', '{"_sort":{"column":"category.name","type":"asc"}}', '2017-10-13 20:39:37', '2017-10-13 20:39:37'),
(1054, 1, 'admin/keyword', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 20:39:42', '2017-10-13 20:39:42'),
(1055, 1, 'admin/keyword/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 20:39:44', '2017-10-13 20:39:44'),
(1056, 1, 'admin/keyword', 'POST', '::1', '{"initial":"\\u3042","keyword":"\\u30a2\\u30bd\\u30b7\\u30a8\\u30fc\\u30b7\\u30e7\\u30f3","description":"\\u5171\\u901a\\u306e\\u95a2\\u5fc3\\u3084\\u76ee\\u7684\\u306a\\u3069\\u3067\\u96c6\\u307e\\u3063\\u305f\\u6a5f\\u80fd\\u7684\\u96c6\\u56e3\\u3002\\u4f1a\\u793e\\u3084\\u975e\\u55b6\\u5229\\u7d44\\u7e54\\u306a\\u3069\\u3002","categories_id":"2","_token":"VmZOvZ8kyfLCny7GlcRga8migZ8cYYs7HkUUPl4R","_previous_":"http:\\/\\/localhost\\/admin\\/keyword"}', '2017-10-13 20:39:59', '2017-10-13 20:39:59'),
(1057, 1, 'admin/keyword', 'GET', '::1', '[]', '2017-10-13 20:39:59', '2017-10-13 20:39:59'),
(1058, 1, 'admin/quiz', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 20:40:04', '2017-10-13 20:40:04');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(1059, 1, 'admin/quiz', 'GET', '::1', '{"_pjax":"#pjax-container","_sort":{"column":"id","type":"desc"}}', '2017-10-13 20:40:07', '2017-10-13 20:40:07'),
(1060, 1, 'admin/quiz', 'GET', '::1', '{"_pjax":"#pjax-container","_sort":{"column":"id","type":"desc"},"page":"2"}', '2017-10-13 20:40:18', '2017-10-13 20:40:18'),
(1061, 1, 'admin/keyword', 'GET', '::1', '[]', '2017-10-13 20:42:07', '2017-10-13 20:42:07'),
(1062, 1, 'admin/keyword', 'GET', '::1', '{"_sort":{"column":"category.name","type":"desc"},"_pjax":"#pjax-container"}', '2017-10-13 20:42:14', '2017-10-13 20:42:14'),
(1063, 1, 'admin/keyword/4/edit', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 20:42:32', '2017-10-13 20:42:32'),
(1064, 1, 'admin/keyword', 'GET', '::1', '{"_sort":{"column":"category.name","type":"desc"},"_pjax":"#pjax-container"}', '2017-10-13 20:42:34', '2017-10-13 20:42:34'),
(1065, 1, 'admin/keyword/4/edit', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 20:42:36', '2017-10-13 20:42:36'),
(1066, 1, 'admin/keyword', 'GET', '::1', '{"_sort":{"column":"category.name","type":"desc"},"_pjax":"#pjax-container"}', '2017-10-13 20:42:40', '2017-10-13 20:42:40'),
(1067, 1, 'admin/keyword', 'GET', '::1', '{"_sort":{"column":"id","type":"desc"},"_pjax":"#pjax-container"}', '2017-10-13 20:43:19', '2017-10-13 20:43:19'),
(1068, 1, 'admin/keyword', 'GET', '::1', '{"_sort":{"column":"id","type":"asc"},"_pjax":"#pjax-container"}', '2017-10-13 20:43:21', '2017-10-13 20:43:21'),
(1069, 1, 'admin/keyword', 'GET', '::1', '{"_sort":{"column":"id","type":"asc"},"_pjax":"#pjax-container","page":"2"}', '2017-10-13 20:43:25', '2017-10-13 20:43:25'),
(1070, 1, 'admin/keyword', 'GET', '::1', '{"_sort":{"column":"id","type":"asc"},"_pjax":"#pjax-container","page":"3"}', '2017-10-13 20:43:28', '2017-10-13 20:43:28'),
(1071, 1, 'admin/keyword', 'GET', '::1', '{"_sort":{"column":"id","type":"asc"},"_pjax":"#pjax-container","page":"1"}', '2017-10-13 20:43:36', '2017-10-13 20:43:36'),
(1072, 1, 'admin/keyword', 'GET', '::1', '{"_sort":{"column":"category.name","type":"desc"},"_pjax":"#pjax-container","page":"1"}', '2017-10-13 20:43:44', '2017-10-13 20:43:44'),
(1073, 1, 'admin/quiz/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 20:45:33', '2017-10-13 20:45:33'),
(1074, 1, 'admin/quiz', 'POST', '::1', '{"title":"\\u6642\\u9593\\u5916\\u4f11\\u65e5\\u52b4\\u50cd\\u306b\\u3064\\u3044\\u3066\\u3001\\u4f7f\\u7528\\u8005\\u304c\\u52b4\\u50cd\\u7d44\\u5408\\uff08\\u307e\\u305f\\u306f\\u52b4\\u50cd\\u8005\\u306e\\u904e\\u534a\\u6570\\u3092\\u4ee3\\u8868\\u3059\\u308b\\u8005\\uff09\\u3068\\u306e\\u9593\\u3067\\u7de0\\u7d50\\u3059\\u308b\\u5354\\u5b9a\\u3092\\u4f55\\u3068\\u8a00\\u3046\\u304b\\u3002","answers_id":"40","categories_id":"4","answer":{"answer_1":"\\u6642\\u9593\\u5916\\u624b\\u5f53\\u5354\\u5b9a","answer_2":"\\u6642\\u9593\\u5916\\u52b4\\u50cd\\u5354\\u5b9a","answer_3":"\\u6b8b\\u696d\\u5354\\u5b9a","answer_4":"\\u4e09\\u516d\\u5354\\u5b9a","correct_answer_no":"4","commentary":"\\u4e09\\u516d\\u5354\\u5b9a\\u304c\\u6b63\\u89e3\\u3067\\u3042\\u308b\\u3002\\u3053\\u308c\\u3092\\u7de0\\u7d50\\u3057\\u6240\\u8f44\\u52b4\\u50cd\\u57fa\\u6e96\\u76e3\\u7763\\u7f72\\u9577\\u306b\\u5c4a\\u3051\\u51fa\\u306a\\u3044\\u9650\\u308a\\u3001\\u4f7f\\u7528\\u8005\\u306f\\u52b4\\u50cd\\u8005\\u306b\\u6642\\u9593\\u5916\\u52b4\\u50cd\\u3084\\u4f11\\u65e5\\u52b4\\u50cd\\u3092\\u547d\\u3058\\u308b\\u3053\\u3068\\u306f\\u3067\\u304d\\u306a\\u3044\\u3002\\u52b4\\u50cd\\u57fa\\u6e96\\u6cd536\\u6761\\u306b\\u305d\\u306e\\u5b9a\\u3081\\u304c\\u3042\\u308b\\u3053\\u3068\\u304b\\u3089\\u3001\\u4e09\\u516d\\u5354\\u5b9a\\u3068\\u3044\\u308f\\u308c\\u308b\\u3002\\r\\n\\r\\n\\u6642\\u9593\\u5916\\u624b\\u5f53\\u306f\\u4f1a\\u793e\\u306e\\u6240\\u5b9a\\u52b4\\u50cd\\u6642\\u9593\\u3092\\u8d85\\u3048\\u308b\\u6642\\u9593\\u5916\\u306e\\u52e4\\u52d9\\u306b\\u5bfe\\u3057\\u3066\\u652f\\u7d66\\u3055\\u308c\\u308b\\u624b\\u5f53\\u3002\\r\\n\\r\\n\\u6642\\u9593\\u5916\\u52b4\\u50cd\\u306f\\u6c7a\\u3081\\u3089\\u308c\\u305f\\u52b4\\u50cd\\u6642\\u9593\\u3092\\u8d85\\u3048\\u3066\\u50cd\\u304f\\u3053\\u3068\\u3002\\r\\n\\r\\n\\u6b8b\\u696d\\u306f\\u52e4\\u52d9\\u306e\\u7d42\\u696d\\u6642\\u9593\\u3092\\u8d85\\u3048\\u3066\\u884c\\u3046\\u696d\\u52d9\\u306e\\u3053\\u3068\\u3092\\u6b8b\\u696d\\u3068\\u3088\\u3076\\u3002\\u307e\\u305f\\u3001\\u7d42\\u696d\\u6642\\u9593\\u5f8c\\u306b\\u9650\\u3089\\u305a\\u3001\\u4f1a\\u793e\\u306e\\u6240\\u5b9a\\u52b4\\u50cd\\u6642\\u9593\\u3092\\u8d85\\u3048\\u3066\\u50cd\\u304f\\u6642\\u9593\\u5916\\u52e4\\u52d9\\u306e\\u3059\\u3079\\u3066\\u3092\\u3055\\u3057\\u3066\\u6b8b\\u696d\\u3068\\u3044\\u3046\\u5834\\u5408\\u3082\\u3042\\u308b\\u3002"},"_token":"VmZOvZ8kyfLCny7GlcRga8migZ8cYYs7HkUUPl4R","_previous_":"http:\\/\\/localhost\\/admin\\/quiz?&_sort%5Bcolumn%5D=id&_sort%5Btype%5D=desc&page=2"}', '2017-10-13 20:50:38', '2017-10-13 20:50:38'),
(1075, 1, 'admin/quiz', 'GET', '::1', '{"_sort":{"column":"id","type":"desc"},"page":"2"}', '2017-10-13 20:50:38', '2017-10-13 20:50:38'),
(1076, 1, 'admin/keyword', 'GET', '::1', '{"_sort":{"column":"id","type":"desc"},"_pjax":"#pjax-container","page":"1"}', '2017-10-13 20:51:45', '2017-10-13 20:51:45'),
(1077, 1, 'admin/keyword', 'GET', '::1', '{"_sort":{"column":"id","type":"asc"},"_pjax":"#pjax-container","page":"1"}', '2017-10-13 20:51:47', '2017-10-13 20:51:47'),
(1078, 1, 'admin/keyword', 'GET', '::1', '{"_sort":{"column":"id","type":"asc"},"_pjax":"#pjax-container","page":"2"}', '2017-10-13 20:51:53', '2017-10-13 20:51:53'),
(1079, 1, 'admin/keyword', 'GET', '::1', '{"_sort":{"column":"id","type":"asc"},"_pjax":"#pjax-container","page":"3"}', '2017-10-13 20:51:57', '2017-10-13 20:51:57'),
(1080, 1, 'admin/keyword', 'GET', '::1', '{"_sort":{"column":"id","type":"asc"},"_pjax":"#pjax-container","page":"4"}', '2017-10-13 20:52:01', '2017-10-13 20:52:01'),
(1081, 1, 'admin/keyword', 'GET', '::1', '{"_sort":{"column":"id","type":"asc"},"_pjax":"#pjax-container","page":"5"}', '2017-10-13 20:52:05', '2017-10-13 20:52:05'),
(1082, 1, 'admin/keyword', 'GET', '::1', '{"_sort":{"column":"initial","type":"desc"},"_pjax":"#pjax-container","page":"5"}', '2017-10-13 20:52:09', '2017-10-13 20:52:09'),
(1083, 1, 'admin/keyword', 'GET', '::1', '{"_sort":{"column":"initial","type":"desc"},"_pjax":"#pjax-container","page":"6"}', '2017-10-13 20:52:14', '2017-10-13 20:52:14'),
(1084, 1, 'admin/keyword', 'GET', '::1', '{"_sort":{"column":"category.name","type":"desc"},"_pjax":"#pjax-container","page":"6"}', '2017-10-13 20:52:17', '2017-10-13 20:52:17'),
(1085, 1, 'admin/keyword', 'GET', '::1', '{"_sort":{"column":"id","type":"desc"},"_pjax":"#pjax-container","page":"6"}', '2017-10-13 20:52:20', '2017-10-13 20:52:20'),
(1086, 1, 'admin/keyword', 'GET', '::1', '{"_sort":{"column":"id","type":"asc"},"_pjax":"#pjax-container","page":"6"}', '2017-10-13 20:52:22', '2017-10-13 20:52:22'),
(1087, 1, 'admin/keyword', 'GET', '::1', '{"_sort":{"column":"id","type":"desc"},"_pjax":"#pjax-container","page":"6"}', '2017-10-13 20:52:23', '2017-10-13 20:52:23'),
(1088, 1, 'admin/keyword', 'GET', '::1', '{"_sort":{"column":"id","type":"asc"},"_pjax":"#pjax-container","page":"6"}', '2017-10-13 20:52:26', '2017-10-13 20:52:26'),
(1089, 1, 'admin/keyword', 'GET', '::1', '{"_sort":{"column":"id","type":"desc"},"_pjax":"#pjax-container","page":"6"}', '2017-10-13 20:52:27', '2017-10-13 20:52:27'),
(1090, 1, 'admin/keyword', 'GET', '::1', '{"_sort":{"column":"category.name","type":"desc"},"_pjax":"#pjax-container","page":"6"}', '2017-10-13 20:52:33', '2017-10-13 20:52:33'),
(1091, 1, 'admin/keyword', 'GET', '::1', '{"_sort":{"column":"id","type":"desc"},"_pjax":"#pjax-container","page":"6"}', '2017-10-13 20:52:35', '2017-10-13 20:52:35'),
(1092, 1, 'admin/keyword', 'GET', '::1', '{"_sort":{"column":"category.name","type":"desc"},"_pjax":"#pjax-container","page":"6"}', '2017-10-13 20:52:39', '2017-10-13 20:52:39'),
(1093, 1, 'admin/keyword', 'GET', '::1', '{"_sort":{"column":"category.name","type":"desc"},"page":"6","_pjax":"#pjax-container"}', '2017-10-13 20:52:51', '2017-10-13 20:52:51'),
(1094, 1, 'admin/keyword', 'GET', '::1', '{"_sort":{"column":"category.name","type":"desc"},"_pjax":"#pjax-container","page":"5"}', '2017-10-13 20:53:02', '2017-10-13 20:53:02'),
(1095, 1, 'admin/keyword', 'GET', '::1', '{"_sort":{"column":"category.name","type":"desc"},"_pjax":"#pjax-container","page":"1"}', '2017-10-13 20:53:06', '2017-10-13 20:53:06'),
(1096, 1, 'admin/keyword', 'GET', '::1', '{"_sort":{"column":"category.name","type":"desc"},"_pjax":"#pjax-container","page":"2"}', '2017-10-13 20:53:09', '2017-10-13 20:53:09'),
(1097, 1, 'admin/keyword', 'GET', '::1', '{"_sort":{"column":"category.name","type":"desc"},"_pjax":"#pjax-container","page":"3"}', '2017-10-13 20:53:13', '2017-10-13 20:53:13'),
(1098, 1, 'admin/keyword', 'GET', '::1', '{"_sort":{"column":"id","type":"desc"},"_pjax":"#pjax-container","page":"3"}', '2017-10-13 20:53:16', '2017-10-13 20:53:16'),
(1099, 1, 'admin/keyword', 'GET', '::1', '{"_sort":{"column":"id","type":"asc"},"_pjax":"#pjax-container","page":"3"}', '2017-10-13 20:53:18', '2017-10-13 20:53:18'),
(1100, 1, 'admin/keyword', 'GET', '::1', '{"_sort":{"column":"id","type":"desc"},"_pjax":"#pjax-container","page":"3"}', '2017-10-13 20:53:20', '2017-10-13 20:53:20'),
(1101, 1, 'admin/keyword', 'GET', '::1', '{"_sort":{"column":"id","type":"asc"},"_pjax":"#pjax-container","page":"3"}', '2017-10-13 20:53:21', '2017-10-13 20:53:21'),
(1102, 1, 'admin/keyword', 'GET', '::1', '{"_sort":{"column":"category.name","type":"desc"},"_pjax":"#pjax-container","page":"3"}', '2017-10-13 20:53:27', '2017-10-13 20:53:27'),
(1103, 1, 'admin/keyword', 'GET', '::1', '{"_sort":{"column":"id","type":"desc"},"_pjax":"#pjax-container","page":"3"}', '2017-10-13 20:53:30', '2017-10-13 20:53:30'),
(1104, 1, 'admin/keyword', 'GET', '::1', '{"_sort":{"column":"initial","type":"desc"},"_pjax":"#pjax-container","page":"3"}', '2017-10-13 20:53:32', '2017-10-13 20:53:32'),
(1105, 1, 'admin/keyword', 'GET', '::1', '{"_sort":{"column":"category.name","type":"desc"},"_pjax":"#pjax-container","page":"3"}', '2017-10-13 20:53:36', '2017-10-13 20:53:36'),
(1106, 1, 'admin/keyword/2/edit', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 20:53:44', '2017-10-13 20:53:44'),
(1107, 1, 'admin/keyword/2', 'PUT', '::1', '{"initial":"\\u3053","keyword":"\\u3054\\u9686\\u660c\\uff08\\u308a\\u3085\\u3046\\u3057\\u3087\\u3046\\uff09","description":"\\u975e\\u5e38\\u306b\\u6804\\u3048\\u308b\\u3053\\u3068\\u3002\\u52e2\\u3044\\u306e\\u76db\\u3093\\u306a\\u3053\\u3068\\u3002\\uff08\\uff1d\\u9686\\u76db\\uff09","categories_id":"1","_token":"VmZOvZ8kyfLCny7GlcRga8migZ8cYYs7HkUUPl4R","_method":"PUT","_previous_":"http:\\/\\/localhost\\/admin\\/keyword?_sort%5Bcolumn%5D=category.name&_sort%5Btype%5D=desc&page=3"}', '2017-10-13 20:53:53', '2017-10-13 20:53:53'),
(1108, 1, 'admin/keyword', 'GET', '::1', '{"_sort":{"column":"category.name","type":"desc"},"page":"3"}', '2017-10-13 20:53:53', '2017-10-13 20:53:53'),
(1109, 1, 'admin/keyword/2/edit', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 20:53:56', '2017-10-13 20:53:56'),
(1110, 1, 'admin/keyword', 'GET', '::1', '{"_sort":{"column":"category.name","type":"desc"},"page":"3","_pjax":"#pjax-container"}', '2017-10-13 20:54:30', '2017-10-13 20:54:30'),
(1111, 1, 'admin/keyword', 'GET', '::1', '{"_sort":{"column":"initial","type":"desc"},"page":"3","_pjax":"#pjax-container"}', '2017-10-13 20:54:30', '2017-10-13 20:54:30'),
(1112, 1, 'admin/keyword', 'GET', '::1', '{"_sort":{"column":"initial","type":"asc"},"page":"3","_pjax":"#pjax-container"}', '2017-10-13 20:54:34', '2017-10-13 20:54:34'),
(1113, 1, 'admin/keyword', 'GET', '::1', '{"_sort":{"column":"category.name","type":"desc"},"page":"3","_pjax":"#pjax-container"}', '2017-10-13 20:54:49', '2017-10-13 20:54:49'),
(1114, 1, 'admin/keyword', 'GET', '::1', '{"_sort":{"column":"id","type":"desc"},"page":"3","_pjax":"#pjax-container"}', '2017-10-13 20:54:54', '2017-10-13 20:54:54'),
(1115, 1, 'admin/keyword', 'GET', '::1', '{"_sort":{"column":"category.name","type":"desc"},"page":"3","_pjax":"#pjax-container"}', '2017-10-13 20:54:56', '2017-10-13 20:54:56'),
(1116, 1, 'admin/keyword', 'GET', '::1', '{"_sort":{"column":"category.name","type":"asc"},"page":"3","_pjax":"#pjax-container"}', '2017-10-13 20:54:58', '2017-10-13 20:54:58'),
(1117, 1, 'admin/keyword', 'GET', '::1', '{"_sort":{"column":"category.name","type":"asc"},"_pjax":"#pjax-container","page":"1"}', '2017-10-13 20:55:04', '2017-10-13 20:55:04'),
(1118, 1, 'admin/keyword', 'GET', '::1', '{"_sort":{"column":"category.name","type":"asc"},"_pjax":"#pjax-container","page":"2"}', '2017-10-13 20:55:09', '2017-10-13 20:55:09'),
(1119, 1, 'admin/keyword', 'GET', '::1', '{"_sort":{"column":"category.name","type":"asc"},"_pjax":"#pjax-container","page":"3"}', '2017-10-13 20:55:13', '2017-10-13 20:55:13'),
(1120, 1, 'admin/keyword', 'GET', '::1', '{"_sort":{"column":"category.name","type":"asc"},"_pjax":"#pjax-container","page":"4"}', '2017-10-13 20:55:18', '2017-10-13 20:55:18'),
(1121, 1, 'admin/keyword', 'GET', '::1', '{"_sort":{"column":"category.name","type":"asc"},"_pjax":"#pjax-container","page":"5"}', '2017-10-13 20:55:22', '2017-10-13 20:55:22'),
(1122, 1, 'admin/keyword', 'GET', '::1', '{"_sort":{"column":"category.name","type":"asc"},"_pjax":"#pjax-container","page":"6"}', '2017-10-13 20:55:37', '2017-10-13 20:55:37'),
(1123, 1, 'admin/quiz/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 20:55:56', '2017-10-13 20:55:56'),
(1124, 1, 'admin/keyword', 'GET', '::1', '{"_sort":{"column":"category.name","type":"asc"},"_pjax":"#pjax-container","page":"6","per_page":"100"}', '2017-10-13 20:58:53', '2017-10-13 20:58:53'),
(1125, 1, 'admin/keyword', 'GET', '::1', '{"_sort":{"column":"category.name","type":"asc"},"_pjax":"#pjax-container","page":"2","per_page":"100"}', '2017-10-13 20:58:53', '2017-10-13 20:58:53'),
(1126, 1, 'admin/keyword', 'GET', '::1', '{"_sort":{"column":"category.name","type":"asc"},"_pjax":"#pjax-container","per_page":"100","page":"1"}', '2017-10-13 20:58:58', '2017-10-13 20:58:58'),
(1127, 1, 'admin/keyword', 'GET', '::1', '{"_sort":{"column":"category.name","type":"desc"},"_pjax":"#pjax-container","per_page":"100","page":"1"}', '2017-10-13 20:59:00', '2017-10-13 20:59:00'),
(1128, 1, 'admin/keyword/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 20:59:23', '2017-10-13 20:59:23'),
(1129, 1, 'admin/keyword', 'POST', '::1', '{"initial":"\\u3068","keyword":"\\u30c8\\u30e9\\u30b9\\u30c8","description":"\\u4f01\\u696d\\u5408\\u540c\\u3068\\u8a33\\u3055\\u308c\\u308b\\u3002\\u8907\\u6570\\u4f01\\u696d\\u304c\\u3001\\u5e02\\u5834\\u7af6\\u4e89\\u3092\\u6392\\u9664\\u3057\\u3001\\u5e02\\u5834\\u3067\\u306e\\u5229\\u76ca\\u3092\\u72ec\\u5360\\u3059\\u308b\\u76ee\\u7684\\u3067\\u8cc7\\u672c\\u7d50\\u5408\\u3092\\u884c\\u3046\\u3053\\u3068\\u3002\\u8cc7\\u672c\\u306b\\u3088\\u308b\\u652f\\u914d\\u304c\\u884c\\u308f\\u308c\\u308b\\u70b9\\u3067\\u3001\\u30ab\\u30eb\\u30c6\\u30eb\\u3088\\u308a\\u5f37\\u56fa\\u306a\\u7d50\\u5408\\u5f62\\u614b\\u3068\\u3044\\u3048\\u308b\\u3002\\u540c\\u696d\\u7a2e\\u9593\\u306b\\u308f\\u305f\\u308b\\u6c34\\u5e73\\u7684\\u5408\\u540c\\u3001\\u7570\\u696d\\u7a2e\\u9593\\u306b\\u308f\\u305f\\u308b\\u5782\\u76f4\\u7684\\u5408\\u540c\\u306a\\u3069\\u304c\\u3042\\u308b\\u3002","categories_id":"2","_token":"VmZOvZ8kyfLCny7GlcRga8migZ8cYYs7HkUUPl4R","_previous_":"http:\\/\\/localhost\\/admin\\/keyword?_sort%5Bcolumn%5D=category.name&_sort%5Btype%5D=desc&per_page=100&page=1"}', '2017-10-13 21:00:11', '2017-10-13 21:00:11'),
(1130, 1, 'admin/keyword', 'GET', '::1', '{"_sort":{"column":"category.name","type":"desc"},"per_page":"100","page":"1"}', '2017-10-13 21:00:11', '2017-10-13 21:00:11'),
(1131, 1, 'admin/quiz', 'POST', '::1', '{"title":"\\u63a1\\u7b97\\u3092\\u5ea6\\u5916\\u8996\\u3057\\u3001\\u9069\\u6b63\\u306a\\u4ed5\\u5165\\u539f\\u4fa1\\u3092\\u5927\\u304d\\u304f\\u4e0b\\u56de\\u308b\\u4fa1\\u683c\\u3067\\u8ca9\\u58f2\\u3059\\u308b\\u3053\\u3068\\u306b\\u3088\\u308a\\u3001\\u516c\\u6b63\\u306a\\u5e02\\u5834\\u7af6\\u4e89\\u3092\\u7834\\u58ca\\u3059\\u308b\\u6d3b\\u52d5\\u306e\\u3053\\u3068\\u3092\\u4f55\\u3068\\u8a00\\u3046\\u304b\\u3002","answers_id":"41","categories_id":"4","answer":{"answer_1":"\\u30c0\\u30f3\\u30d4\\u30f3\\u30b0","answer_2":"\\u30ab\\u30eb\\u30c6\\u30eb","answer_3":"\\u30c8\\u30e9\\u30b9\\u30c8","answer_4":"\\u72ec\\u5360","correct_answer_no":"1","commentary":"\\u30c0\\u30f3\\u30d4\\u30f3\\u30b0\\u304c\\u6b63\\u89e3\\u3067\\u3042\\u308b\\u3002\\r\\n\\r\\n\\u30ab\\u30eb\\u30c6\\u30eb\\u306f\\u4f01\\u696d\\u9023\\u5408\\u3068\\u3044\\u308f\\u308c\\u308b\\u3002\\u540c\\u696d\\u7a2e\\u307e\\u305f\\u306f\\u305d\\u308c\\u306b\\u8fd1\\u3044\\u4f01\\u696d\\u540c\\u58eb\\u304c\\u3001\\u4e92\\u3044\\u306b\\u7af6\\u4e89\\u3092\\u907f\\u3051\\u5229\\u76ca\\u3092\\u78ba\\u4fdd\\u3059\\u308b\\u305f\\u3081\\u306b\\u3001\\u5354\\u5b9a\\u3084\\u5408\\u610f\\u3092\\u884c\\u3046\\u3053\\u3068\\u3002\\r\\n\\r\\n\\u30c8\\u30e9\\u30b9\\u30c8\\u306f\\u4f01\\u696d\\u5408\\u540c\\u3068\\u8a33\\u3055\\u308c\\u308b\\u3002\\u8907\\u6570\\u4f01\\u696d\\u304c\\u3001\\u5e02\\u5834\\u7af6\\u4e89\\u3092\\u6392\\u9664\\u3057\\u3001\\u5e02\\u5834\\u3067\\u306e\\u5229\\u76ca\\u3092\\u72ec\\u5360\\u3059\\u308b\\u76ee\\u7684\\u3067\\u8cc7\\u672c\\u7d50\\u5408\\u3092\\u884c\\u3046\\u3053\\u3068\\u3002\\r\\n\\r\\n\\u72ec\\u5360\\u306f\\u7279\\u5b9a\\u306e\\u8cc7\\u672c\\u304c\\u751f\\u7523\\u3068\\u5e02\\u5834\\u3092\\u652f\\u914d\\u3057\\u3066\\u3044\\u308b\\u72b6\\u614b\\u3002"},"_token":"VmZOvZ8kyfLCny7GlcRga8migZ8cYYs7HkUUPl4R","_previous_":"http:\\/\\/localhost\\/admin\\/quiz?&_sort%5Bcolumn%5D=id&_sort%5Btype%5D=desc&page=2"}', '2017-10-13 21:00:51', '2017-10-13 21:00:51'),
(1132, 1, 'admin/quiz', 'GET', '::1', '{"_sort":{"column":"id","type":"desc"},"page":"2"}', '2017-10-13 21:00:51', '2017-10-13 21:00:51'),
(1133, 1, 'admin/quiz', 'GET', '::1', '{"_sort":{"column":"category.name","type":"desc"},"page":"2","_pjax":"#pjax-container"}', '2017-10-13 21:00:56', '2017-10-13 21:00:56'),
(1134, 1, 'admin/quiz', 'GET', '::1', '{"_sort":{"column":"category.name","type":"asc"},"page":"2","_pjax":"#pjax-container"}', '2017-10-13 21:00:58', '2017-10-13 21:00:58'),
(1135, 1, 'admin/quiz', 'GET', '::1', '{"_sort":{"column":"category.name","type":"desc"},"page":"2","_pjax":"#pjax-container"}', '2017-10-13 21:01:00', '2017-10-13 21:01:00'),
(1136, 1, 'admin/quiz', 'GET', '::1', '{"_sort":{"column":"category.name","type":"asc"},"page":"2","_pjax":"#pjax-container"}', '2017-10-13 21:01:02', '2017-10-13 21:01:02'),
(1137, 1, 'admin/quiz', 'GET', '::1', '{"_sort":{"column":"category.name","type":"asc"},"_pjax":"#pjax-container","page":"1"}', '2017-10-13 21:01:07', '2017-10-13 21:01:07'),
(1138, 1, 'admin/quiz', 'GET', '::1', '{"_sort":{"column":"category.name","type":"desc"},"_pjax":"#pjax-container","page":"1"}', '2017-10-13 21:01:09', '2017-10-13 21:01:09'),
(1139, 1, 'admin/quiz/create', 'GET', '::1', '{"_pjax":"#pjax-container"}', '2017-10-13 21:02:13', '2017-10-13 21:02:13'),
(1140, 1, 'admin/quiz', 'POST', '::1', '{"title":"\\u5f93\\u696d\\u54e1\\u306e\\u3046\\u3061\\u96c7\\u7528\\u5951\\u7d04\\u4e0a\\u3067\\u7279\\u5225\\u306e\\u53d6\\u308a\\u6c7a\\u3081\\u306a\\u304f\\u96c7\\u7528\\u3055\\u308c\\u305f\\u793e\\u54e1\\u3092\\u4f55\\u793e\\u54e1\\u3068\\u547c\\u3076\\u304b\\u3002","answers_id":"42","categories_id":"4","answer":{"answer_1":"\\u975e\\u6b63\\u898f\\u793e\\u54e1","answer_2":"\\u7279\\u5225\\u793e\\u54e1","answer_3":"\\u6b63\\u793e\\u54e1","answer_4":"\\u6d3e\\u9063\\u793e\\u54e1","correct_answer_no":"3","commentary":"\\u6b63\\u793e\\u54e1\\u304c\\u6b63\\u89e3\\u3067\\u3042\\u308b\\u3002\\u305f\\u3060\\u3057\\u3001\\u6cd5\\u5f8b\\u4e0a\\u306e\\u7528\\u8a9e\\u3067\\u306a\\u3044\\u305f\\u3081\\u3001\\u7279\\u5225\\u306a\\u5b9a\\u7fa9\\u304c\\u3042\\u308b\\u308f\\u3051\\u3067\\u306f\\u306a\\u304f\\u3001\\u4e00\\u822c\\u7684\\u306b\\u306f\\u96c7\\u7528\\u671f\\u9593\\u306e\\u5b9a\\u3081\\u304c\\u306a\\u3044\\u3053\\u3068\\u3001\\u3088\\u3063\\u3066\\u89e3\\u96c7\\u304c\\u53b3\\u3057\\u304f\\u5236\\u9650\\u3055\\u308c\\u3066\\u3044\\u308b\\u3053\\u3068\\u3001\\u539f\\u5247\\u3068\\u3057\\u3066\\u30d5\\u30eb\\u30bf\\u30a4\\u30e0\\u3067\\u52e4\\u52d9\\u3057\\u4e09\\u516d\\u5354\\u5b9a\\u306e\\u7bc4\\u56f2\\u3067\\u6b8b\\u696d\\u3082\\u7fa9\\u52d9\\u3065\\u3051\\u3089\\u308c\\u3066\\u3044\\u308b\\u3053\\u3068\\u306a\\u3069\\u304c\\u305d\\u306e\\u7279\\u5fb4\\u3068\\u3057\\u3066\\u3042\\u3052\\u3089\\u308c\\u308b\\u3002\\r\\n\\r\\n\\u7279\\u5225\\u793e\\u54e1\\u306f\\u4e00\\u822c\\u7684\\u306b\\u306f\\u4f7f\\u308f\\u308c\\u306a\\u3044\\u9020\\u8a9e\\u3067\\u3042\\u308b\\u3002\\r\\n\\r\\n\\u975e\\u6b63\\u898f\\u793e\\u54e1\\u306f\\u4e00\\u822c\\u7684\\u306b\\u306f\\u6b63\\u898f\\u96c7\\u7528\\u3067\\u306f\\u306a\\u3044\\u4eba\\u3092\\u3044\\u3046\\u3002\\u307e\\u305f\\u3001\\u975e\\u6b63\\u898f\\u96c7\\u7528\\u3068\\u306f\\u6b63\\u793e\\u54e1\\u3068\\u3057\\u3066\\u306e\\u96c7\\u7528\\u5f62\\u614b\\u4ee5\\u5916\\u3067\\u50cd\\u304f\\u5f62\\u614b\\u3092\\u3055\\u3059\\u3002\\u5177\\u4f53\\u7684\\u306b\\u306f\\u3001\\u5951\\u7d04\\u793e\\u54e1\\u3001\\u5631\\u8a17\\u793e\\u54e1\\u3001\\u6e96\\u793e\\u54e1\\u3001\\u81e8\\u6642\\u793e\\u54e1\\u3001\\u5b63\\u7bc0\\u793e\\u54e1\\u3001\\u30d1\\u30fc\\u30c8\\u30bf\\u30a4\\u30de\\u30fc\\u3001\\u30a2\\u30eb\\u30d0\\u30a4\\u30c8\\u3001\\u6d3e\\u9063\\u793e\\u54e1\\u3001\\u8acb\\u8ca0\\u793e\\u54e1\\u306a\\u3069\\u304c\\u975e\\u6b63\\u898f\\u793e\\u54e1\\u306b\\u3042\\u305f\\u308b\\u3002\\r\\n\\r\\n\\u6d3e\\u9063\\u793e\\u54e1\\u306f\\u6d3e\\u9063\\u4f1a\\u793e\\u3068\\u96c7\\u7528\\u5951\\u7d04\\u3092\\u7d50\\u3073\\u3001\\u6d3e\\u9063\\u5148\\u4f01\\u696d\\u306e\\u6307\\u63ee\\u547d\\u4ee4\\u4e0b\\u3067\\u50cd\\u304f\\u52b4\\u50cd\\u8005\\u306e\\u3053\\u3068\\u3002"},"_token":"VmZOvZ8kyfLCny7GlcRga8migZ8cYYs7HkUUPl4R","_previous_":"http:\\/\\/localhost\\/admin\\/quiz?_sort%5Bcolumn%5D=category.name&_sort%5Btype%5D=desc&page=1"}', '2017-10-13 21:05:53', '2017-10-13 21:05:53'),
(1141, 1, 'admin/quiz', 'GET', '::1', '{"_sort":{"column":"category.name","type":"desc"},"page":"1"}', '2017-10-13 21:05:53', '2017-10-13 21:05:53');

-- --------------------------------------------------------

--
-- テーブルの構造 `admin_permissions`
--

CREATE TABLE `admin_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_path` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `admin_permissions`
--

INSERT INTO `admin_permissions` (`id`, `name`, `slug`, `http_method`, `http_path`, `created_at`, `updated_at`) VALUES
(1, 'All permission', '*', '', '*', NULL, NULL),
(2, 'Dashboard', 'dashboard', 'GET', '/', NULL, NULL),
(3, 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', NULL, NULL),
(4, 'User setting', 'auth.setting', 'GET,PUT', '/auth/setting', NULL, NULL),
(5, 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', NULL, NULL),
(6, 'general user setting', 'auth.general.users', 'GET,POST,PUT,DELETE', '/admin/generalusers/create', '2017-10-10 07:10:27', '2017-10-10 07:10:27');

-- --------------------------------------------------------

--
-- テーブルの構造 `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `admin_roles`
--

INSERT INTO `admin_roles` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'administrator', '2017-10-10 05:56:46', '2017-10-10 05:56:46');

-- --------------------------------------------------------

--
-- テーブルの構造 `admin_role_menu`
--

CREATE TABLE `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `admin_role_menu`
--

INSERT INTO `admin_role_menu` (`role_id`, `menu_id`, `created_at`, `updated_at`) VALUES
(1, 2, NULL, NULL),
(1, 8, NULL, NULL),
(1, 9, NULL, NULL),
(1, 10, NULL, NULL),
(1, 11, NULL, NULL);

-- --------------------------------------------------------

--
-- テーブルの構造 `admin_role_permissions`
--

CREATE TABLE `admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `admin_role_permissions`
--

INSERT INTO `admin_role_permissions` (`role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- テーブルの構造 `admin_role_users`
--

CREATE TABLE `admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `admin_role_users`
--

INSERT INTO `admin_role_users` (`role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- テーブルの構造 `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `password`, `name`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$2y$10$pB2j81G/XzcsDdiZWocQ2uNclkY7j3rkPQK2KxGhDD8q5y.nsPBOC', 'Administrator', NULL, '47QRpKqHTdEOVZiC32yBDwMEquGPCzEC03dnUorAe2HaYMGLMlyfpz6iegvp', '2017-10-10 05:56:46', '2017-10-11 09:33:13');

-- --------------------------------------------------------

--
-- テーブルの構造 `admin_user_permissions`
--

CREATE TABLE `admin_user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- テーブルの構造 `answers`
--

CREATE TABLE `answers` (
  `id` int(10) UNSIGNED NOT NULL,
  `answer_1` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer_2` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer_3` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer_4` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `correct_answer_no` int(11) NOT NULL,
  `commentary` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `answers`
--

INSERT INTO `answers` (`id`, `answer_1`, `answer_2`, `answer_3`, `answer_4`, `correct_answer_no`, `commentary`, `created_at`, `updated_at`) VALUES
(1, 'Personal Computer', 'Pocket Computer', 'Programmable Controller', 'Programmable Counter', 1, 'PCはPersonal Computer(パーソナルコンピュータ)の略称である。\r\n\r\nPocket Computer(ポケットコンピュータ)は1980年代に広く使われた携帯用の小型コンピュータである。\r\n\r\nProgrammable Controller(プログラマブル・コントローラ)はリレー回路の代替装置として開発された制御装置である。\r\n\r\nProgrammable Counter(プログラムカウンタ)はアドレスレジスタの一種で、実行する命令のアドレスを指し示すレジスタ。命令の読み込みを行なう際にはその内容がアドレスバス上に出力され、また命令を読み込む度に読み取った命令の分だけ値が増加するようになっている。', '2017-10-03 21:00:00', '2017-10-03 21:00:00'),
(2, 'アップデート', 'アップロード', 'インストール', 'ダウンロード', 3, 'アプリケーションをコンピュータで使用可能にするための作業のことをインストールと言う。\r\n\r\nアップデートはアプリケーションをコンピュータで使用可能にするための作業のこと。\r\n\r\nアップロードはファイルをネットに上げる(アップする)こと。\r\n\r\nダウンロードはファイルをネットから落とすこと。', '2017-10-03 21:00:00', '2017-10-03 21:00:00'),
(3, 'PCU', 'PCQ', 'GPU', 'CPU', 4, '中央処理装置とも訳されるコンピュータの情報処理の性能に影響する部分の略称はCPU(Central Processing Unit)である。\r\n\r\nPCU・PCQは造語である。\r\n\r\nGPU(Graphics Processing Unit)はリアルタイム画像処理に特化した演算装置ないしプロセッサである。', '2017-10-03 21:00:00', '2017-10-03 21:00:00'),
(4, 'カウンタ', 'フロッピーディスク', 'メモリカード', 'ハードディスクドライブ', 4, 'ハードディスクドライブはPCに内蔵されている円盤状の磁気ディスクで情報を記録し読み出す代表的な記憶装置の一つである。\r\n\r\nカウンタはアドレスレジスタの一種で、実行する命令のアドレスを指し示すレジスタ。\r\n\r\nフロッピーディスク は、磁気ディスクの一種で、磁性体を塗布・蒸着した樹脂製小円盤を樹脂製の保護ケースに入れたものである。\r\n\r\nメモリーカードとは薄型でカードのような外見の補助記憶装置である。', '2017-10-03 21:00:00', '2017-10-03 21:00:00'),
(5, 'Facebook(フェイスブック)', 'Twitter(ツイッター)', 'LINE(ライン)', 'mixi(ミクシィ)', 1, 'アメリカのマーク・ザッカーバーグらによって開設された国際的なSNSはFacebook(フェイスブック)である。\r\n\r\nTwitter(ツイッター)は140文字以内のつぶやきを投稿できるサービスである。\r\n\r\nLINE(ライン)は韓国のIT企業ネイバーの日本法人が運営しているスマートフォン向けのSNSである。\r\n\r\nmixi(ミクシィ).2004年にサービスが開始された日本で最初に大ヒットしたSNSである。', '2017-10-03 21:00:00', '2017-10-03 21:00:00'),
(6, 'ハンドルネーム', 'コードネーム', 'マイネーム', 'ラジオネーム', 1, 'インターネット上で自分の名前の代わりに表示するニックネームはハンドルネームである。\r\n\r\nコードネームはある事物や人物などを指す、一般にごく短い別名であるが、関係者だけなどといった特に限定された範囲でのみ、そのことを知っているような運用を目的としたものを特に指すこともある。それを明示して暗号名（あんごうめい）、秘匿名（ひとくめい）などとも言う。\r\n\r\nマイネームは自分の名前である。\r\n\r\nラジオネームはニックネームの類義語である。', '2017-10-03 21:00:00', '2017-10-03 21:00:00'),
(7, 'Opera', 'Internet Explorer', 'Google Chrome', 'Firefox', 2, 'Internet Explorerはマイクロソフト社製のWEBブラウザである。\r\n\r\nOperaはノルウェーのソフトウェア開発会社、オペラ・ソフトウェア (Opera Software ASA) によって製作されているウェブブラウザである。\r\n\r\nGoogle ChromeはGoogleが開発しているウェブブラウザである。\r\n\r\nFirefoxはMozilla Foundationおよびその傘下のMozilla Corporationによって開発されているフリーかつオープンソースのウェブブラウザである。', '2017-10-03 21:00:00', '2017-10-03 21:00:00'),
(8, 'スティーブ・ジョブズ', 'ビル・ゲイツ', 'ポール・アレン', 'ジョン・カーマック', 1, 'アップルの創業者はスティーブ・ジョブズである。\r\n\r\nビル・ゲイツ、ポール・アレンはマイクロソフトの創始者2名である。\r\n\r\nジョン・カーマックは伝説的なプログラマーでFPSの生みの親として知られている。', '2017-10-03 21:00:00', '2017-10-03 21:00:00'),
(9, 'ASE', 'SEO', 'PPC', 'MSS', 2, '検索エンジン最適化のことをSEO対策と言う。\r\n\r\nASE、PPC、MSSはいずれも造語である。', '2017-10-03 21:00:00', '2017-10-03 21:00:00'),
(10, 'コピー', '貼り付ける', '切り取り', 'データを上書き保存', 1, '「Ctrl＋C」はコピーである。\r\n\r\n貼り付けるは「Ctrl＋V」。切り取りは「Ctrl＋X」。データを上書き保存は「Ctrl＋S」である。', '2017-10-03 21:00:00', '2017-10-03 21:00:00'),
(11, 'ダイオキシン', 'VXガス', '青酸カリ', 'サリン', 1, '発がん性や催奇形性を有し、人類が作った最悪と呼ばれる毒物はダイオキシンである。\r\n\r\nVXガスは強い毒性を持つ神経ガスである。1952年にイギリスで発明された。\r\n\r\n青酸カリは最も有名な毒物のひとつであるが、発がん性や催奇形性はない。\r\n\r\nサリンは有機リン化合物で神経ガスの一種。1995年に起きた地下鉄サリン事件で一躍有名になった。', '2017-10-05 06:00:00', '2017-10-05 06:00:00'),
(12, 'ミリテクノロジー', 'ミクロテクノロジー', 'マイクロテクノロジー', 'ナノテクノロジー', 4, 'ナノテクノロジーが正解です。\r\n\r\nミリテクノロジー、ミクロテクノロジー、マイクロテクノロジーは造語である。', '2017-10-05 06:00:00', '2017-10-05 06:00:00'),
(13, 'イザナミ', 'イトカワ', 'スサノオ', 'ニニギ', 2, 'イトカワ正解である。\r\n\r\nイザナミ、スサノオ、ニニギはいずれも日本神話に関する名を持つ小惑星である。', '2017-10-05 06:00:00', '2017-10-05 06:00:00'),
(14, 'HST', 'NACA', 'NASA', 'ISS', 3, 'NASAが正解である。\r\n\r\nHSTはハッブル宇宙望遠鏡のことである。\r\n\r\nNACAはNASAの母体となった組織である。\r\n\r\nISSは国際宇宙ステーションのことである。', '2017-10-05 06:00:00', '2017-10-05 06:00:00'),
(15, 'デフレーション', 'インフレーション', 'スタグフレーション', 'スラグレーション', 1, 'デフレーションが正解である。\r\n\r\nインフレーションは物価上昇のことを示す。\r\n\r\nスタグフレーションは経済活動の停滞（不況）と物価の持続的な上昇が併存する状態を指す。\r\n\r\nスラグレーションは造語である。', '2017-10-05 06:00:00', '2017-10-05 06:00:00'),
(16, '国内純生産', '国民純生産', '国内総生産', '国民総生産', 3, '国内総生産が正解である。国内総生産はは、一定期間内に国内で産み出された付加価値の総額のことである。\r\n\r\n国民純生産はNNPである。国内純生産は国民総生産から資本減耗分を差し引いたもの\r\n\r\n国内純生産はNDPである。国内総生産から固定資本減耗を差し引いたものをいいます。\r\n\r\n国民総生産はGNPである。国民総生産はある一定期間にある国民によって新しく生産された財（商品）やサービスの付加価値の総計である。', '2017-10-05 06:00:00', '2017-10-05 06:00:00'),
(17, 'BtoC', 'M&A', 'BtoB', 'CtoC', 2, 'M&Aが正解である。M&Aとは、企業の合併や買収の総称である。\r\n\r\nBtoCは個人顧客相手のビジネス、BtoBは法人顧客相手のビジネス、CtoC一般消費者間の取引ビジネスのことを指す。', '2017-10-05 06:00:00', '2017-10-05 06:00:00'),
(18, '相対取引', '安定操作取引', 'アウトサイダー取引', 'インサイダー取引', 4, 'インサイダー取引が正解である。\r\n\r\n安定操作取引は株式等の募集や売出しを容易にするために、主幹事証券会社等が当該銘柄について一定期間に行う市場での売買等のこと。\r\n\r\n相対取引は証券取引所などの市場を通さずに、売り手と買い手が当事者同士で価格や売買数量などを決めて行う取引のこと。\r\n\r\nアウトサイダー取引は外部との取引なので問題はない。', '2017-10-05 06:00:00', '2017-10-05 06:00:00'),
(19, '保護貿易主義', 'ブロック経済', 'マクロ経済', 'ミクロ経済', 1, '保護貿易主義が正解である。\r\n\r\nブロック経済とはお金や物資の流通を自国および植民地間に限定する政策を指す。\r\n\r\nマクロ経済とは経済学の一種で、個別の経済活動を集計した一国経済全体を扱うものである。\r\n\r\nミクロ経済とは個々の経済主体，たとえば家計や企業の行動原理に基づいてさまざまな財をどのくらい生産し、個々の経済主体にどのように配分するかという、資源の最適配分メカニズムを分析するものである。マクロ経済学と対をなす。', '2017-10-05 06:00:00', '2017-10-05 06:00:00'),
(20, 'フィランサス', 'フィラメント', 'フィランソロピー', 'フィルバインド', 3, 'フィランソロピーが正解である。\r\n\r\nフィランサスは塊根植物を指す。\r\n\r\nフィラメントは電球・真空管などの内部にあり、電流を流して熱電子を放出する、細い線。\r\n\r\nフィルバインドは造語である。\r\n\r\n', '2017-10-05 06:00:00', '2017-10-05 06:00:00'),
(21, '部屋に入ったら、お盆をサイドテーブルに置きます。', 'お茶を両手で持って「失礼します」と一言添えながら差出します。', '上座に座っているお客様から順に、左側からお茶を出します。', 'お茶を出すタイミングは、お客様と担当者の挨拶が終わった頃。', 3, '「左側」が間違いです。お茶は「右側」から出すのが正解です。ただし、どうしても右側から出せない場合は左側からでも大丈夫です。', '2017-10-05 06:00:00', '2017-10-05 06:00:00'),
(22, '複数名で名刺を交換する場合、目上の人から先に交換します。', '名刺交換後にテーブルにつく場合は、受け取った名刺は自分から見て左側に置きます。', '名刺を複数枚いただいた場合には、着席順に並べて置きます。', '着席したらすぐに、交換した日付をいただいた名刺に書き込みます。', 4, 'その場で名刺に書き込みをするのは間違いです。「相手の名刺を汚す」失礼な行為になります。名刺への書き込みはオフィスに戻ってからにしましょう。', '2017-10-05 06:00:00', '2017-10-05 06:00:00'),
(23, '「弊社常務の、○○です」', '「弊社の○○常務です」', '「弊社常務の○○さんです」', '「常務の○○です」', 1, '社外の人に紹介をする時は、敬称は付けません。また、役職を伝えたい場合は、名前の前に肩書きをもってきます。', '2017-10-05 06:00:00', '2017-10-05 06:00:00'),
(24, '受付でうかがってください。', '課長がおっしゃったように、ファイルをご覧ください。', '部長が申されたように進めていきます。', '○△商事の□□様がお越しになられました。', 2, '1）3）4）は、どこが間違っていたの？\r\n\r\n1）受付でうかがってください。\r\n「うかがう」は謙譲語。謙譲語は自分または身内（自分の会社も含みます）の者に使う言葉で、相手に使うのは間違いです。 \r\n『受付でお尋ねください。』が正解です。\r\n\r\n3）部長が申されたように進めていきます。\r\n「申す」も謙譲語です。謙譲語にれる・られるを付けても尊敬語にはなりません。\r\n『社長がおっしゃったように進めていきます。』が正解です。\r\n\r\n4）○△商事の□□様がお越しになられました。\r\n「なられました」は二重敬語の典型的な表現です。\r\n『○△商事の□□様がお越しになりました。』が正解です。\r\n', '2017-10-05 06:00:00', '2017-10-05 06:00:00'),
(25, 'いたします。', 'させていただきます。', 'します。', '何もつけない。', 2, 'ただ出欠に○をつけるだけでなく、言葉を足すことによって相手に誠意を伝えることができます。\r\n他にも、「御」を2本線で消す、出席の場合は「おめでとうございます。慶んで出席させて頂きます。」などの言葉を足すとなお良いです。\r\nこういったことを書かずに返しても大きな問題がある訳ではないですが、やった方が良いことなのでとり入れて頂けたらと思います。\r\n', '2017-10-05 06:00:00', '2017-10-05 06:00:00'),
(26, '7日', '8日', '9日', '10日', 2, '8月8日ごろは「立秋」と言われここまでが暑中に入る時期となります。\r\nそれ以降は残暑見舞いですがその期限は9月初旬までです。\r\nまた「拝啓・敬具」などの言葉は必要ないのでご注意ください。', '2017-10-05 06:00:00', '2017-10-05 06:00:00'),
(27, '受け取った順', '受け取った逆順', '役職の高い順', '役職の低い順', 3, '「役職順に重ねる」が正解です。役職の高い順に上から重ねるのです。\r\nまた、こちらが複数人いる場合は役職の高い順から名刺交換をするのが良いです。\r\n相手から名刺を渡されたら「申しおくれました」などの言葉を加えて名刺を渡すのが良いですね。', '2017-10-05 06:00:00', '2017-10-05 06:00:00'),
(28, '2-1-3-4', '2-3-4-1', '3-2-4-1', '3-2-1-4', 2, '部長→課長→他部署の担当者→取引先の相手\r\n\r\n原則は自分に近い立場の人や、立場が下の人から紹介していくのが良いです。\r\n簡単にまとめると社内→社外、身内→他人、目下→目上、依頼者→非依頼者という流れです。\r\nまた、いきなり紹介を始めるのではなく「ご紹介します」と言ってからはじめるとスムーズですね。\r\n', '2017-10-05 06:00:00', '2017-10-05 06:00:00'),
(29, '了解いたしました。', '了解です。', '承知いたしました。', '御意。', 3, '正解は「承知いたしました。」「了解」という言葉は、立場が上の者が下の者に許可を出すという意味合いの言葉ですので、上司への返答としては正しくありません。\r\nまた、同義の返答としては、「かしこまりました。」でも良いでしょう。\r\n', '2017-10-05 06:00:00', '2017-10-05 06:00:00'),
(30, '「〇〇は本日休みを取っております。」', '「〇〇は本日お休みを頂いております。」', '「〇〇はいないです。」', '「〇〇は本日休みです。」', 1, '正解は「〇〇は本日休みを取っております。」休みを貰っているのは自社からですから、「頂いております」ですと自社に対する敬語になってしまい、正しくありません。ぶっきらぼうに聞こえる「〇〇は本日休みを取っております。」の方が正しいのですね。\r\n申し訳ございません、と添えると丁寧に聞こえてベターですね！\r\n', '2017-10-05 06:00:00', '2017-10-05 06:00:00'),
(31, 'Fintech', 'Finance', 'Technology', 'Bitcoin', 1, 'Fintechが正解である。\r\n\r\nfinanceとtechnologyはFintechの造語の元となった言葉である。\r\n\r\nBitcoinはPeer to Peer型で取引されている全世界の最大シェアを占める仮想通貨は', '2017-10-11 02:05:35', '2017-10-11 02:09:04'),
(32, 'IoT', 'AR', 'VR', 'IE', 1, 'IoT(Internet of Things)が正解である。\r\n\r\nAR(augmented reality)は拡張現実。VR(Virtual Reality)は仮想現実。\r\n\r\nIE(Internet Explorer)はWEBブラウザである。', '2017-10-11 02:13:55', '2017-10-11 02:13:55'),
(33, '○○の件でお電話しました。またあらためてお電話いたします', '電話がありましたことをお伝えください', '折り返しいただけますでしょうか？', 'では結構です。', 1, '自分のほうに用事があるのに、折り返しを依頼するのはマナー違反。折り返しをお願いしていいのは、相手にメリットのある内容や、至急の確認事項など。②は要件を伝えましょう。①の場合、「何時にお戻りでしょうか？」と聞いておけば、連絡が取れる確率がアップし、ビジネスチャンスが広がりそう！', '2017-10-13 05:24:32', '2017-10-13 05:24:32'),
(34, '遅れるよりは感じがいい。訪問して早く着いたことを一言詫びる', '「少し早いのですが訪問してよろしいでしょうか？」と事前連絡', '時間ピッタリなのが一番好印象。15分待ってから訪問する', '速いのは良いことである。堂々と訪問する', 2, '15分というところがポイント。5分以内であれば①や③も正解ですが、5分以上前の訪問は迷惑になることも。できる人を目指すなら相手に選択肢を与えつつ、時間を無駄にしない行動を。また、初回訪問時はアポイント丁度に訪問するのが無難。', '2017-10-13 05:25:41', '2017-10-13 05:25:41'),
(35, 'アポイントの窓口になってもらった人', '自分の一番近くにいる人', '一番役職が上だと見受けられる人', '一番年齢が高そうな人', 3, '名刺交換は偉い人から順番にと心得て！そのため、自分の上司より先に交換するのもNG。またテーブルをまたいで交換するのは失礼です。「誰が一番偉い人かわからない」なんて時は偉い人は上座(入口から一番遠い奥の席)に座ることが多いので、さりげなくチェックして。', '2017-10-13 05:27:16', '2017-10-13 05:27:16'),
(36, 'ゆったり一人で座れる1の席', '入口から一番遠い2の席', '長椅子の中央3の席', '入口から一番近い4の席', 2, '入口から一番遠い席が上座になります。お客様には上座に座ってもらうと心得て。応接室の場合、長椅子がお客様用で上座に、一人掛け椅子が下座に置いてあることが多いです。自分が訪問客の場合は、上座側を指定されたら上座へ、案内がなければ下座へ席を取り、立って待つというのがマナーです。', '2017-10-13 05:28:21', '2017-10-13 05:28:21'),
(37, '運転席の後ろ1の席', '後部座席の真ん中2の席', '助手席3の席', '助手席後ろの4の席', 3, 'タクシーの助手席は道を伝えたり、料金を支払う人が座るので、一番下座となります。上司には運転席の後ろの1、先輩には助手席の後ろの4に座ってもらいます。', '2017-10-13 05:29:07', '2017-10-13 05:29:07'),
(38, 'お客様の人数分用意してお出しする', 'お客様の人数分と社内のメンバー分も用意する', '自分の分だけ用意する', '頼まれてからでは時すでに遅し。用意しない。', 2, 'お客様の分だけを出す会社も見受けられますが、お客様が口を付けづらくなるので社内のメンバー分も用意すると◎。お客様に待ってもらう時間がある場合は、待っていただいている間にお客様分のお茶を先に出すとスマートです。', '2017-10-13 05:29:53', '2017-10-13 05:29:53'),
(39, 'アフィリエイト', 'アソシエーション', 'WordPress', 'ブロガー', 1, 'アフィリエイトが正解である。\r\n\r\nアソシエーションは共通の関心や目的などで集まった機能的集団。会社や非営利組織など。\r\n\r\nWordPressはオープンソース(誰でも使うことができる)で提供しているCMSの一種。トップページ・カテゴリーページ・記事ページといった基本的なブログのサイト構造を初めから持っているため、Web制作の知識がなくてもブログサイトを簡単につくることができる。\r\n\r\nブロガーはブログを書く人、ブログの作者', '2017-10-13 20:39:37', '2017-10-13 20:39:37'),
(40, '時間外手当協定', '時間外労働協定', '残業協定', '三六協定', 4, '三六協定が正解である。これを締結し所轄労働基準監督署長に届け出ない限り、使用者は労働者に時間外労働や休日労働を命じることはできない。労働基準法36条にその定めがあることから、三六協定といわれる。\r\n\r\n時間外手当は会社の所定労働時間を超える時間外の勤務に対して支給される手当。\r\n\r\n時間外労働は決められた労働時間を超えて働くこと。\r\n\r\n残業は勤務の終業時間を超えて行う業務のことを残業とよぶ。また、終業時間後に限らず、会社の所定労働時間を超えて働く時間外勤務のすべてをさして残業という場合もある。', '2017-10-13 20:50:38', '2017-10-13 20:50:38'),
(41, 'ダンピング', 'カルテル', 'トラスト', '独占', 1, 'ダンピングが正解である。\r\n\r\nカルテルは企業連合といわれる。同業種またはそれに近い企業同士が、互いに競争を避け利益を確保するために、協定や合意を行うこと。\r\n\r\nトラストは企業合同と訳される。複数企業が、市場競争を排除し、市場での利益を独占する目的で資本結合を行うこと。\r\n\r\n独占は特定の資本が生産と市場を支配している状態。', '2017-10-13 21:00:51', '2017-10-13 21:00:51'),
(42, '非正規社員', '特別社員', '正社員', '派遣社員', 3, '正社員が正解である。ただし、法律上の用語でないため、特別な定義があるわけではなく、一般的には雇用期間の定めがないこと、よって解雇が厳しく制限されていること、原則としてフルタイムで勤務し三六協定の範囲で残業も義務づけられていることなどがその特徴としてあげられる。\r\n\r\n特別社員は一般的には使われない造語である。\r\n\r\n非正規社員は一般的には正規雇用ではない人をいう。また、非正規雇用とは正社員としての雇用形態以外で働く形態をさす。具体的には、契約社員、嘱託社員、準社員、臨時社員、季節社員、パートタイマー、アルバイト、派遣社員、請負社員などが非正規社員にあたる。\r\n\r\n派遣社員は派遣会社と雇用契約を結び、派遣先企業の指揮命令下で働く労働者のこと。', '2017-10-13 21:05:53', '2017-10-13 21:05:53');

-- --------------------------------------------------------

--
-- テーブルの構造 `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'ビジネスマナー', '2017-10-04 05:00:00', '2017-10-03 21:00:00'),
(2, '一般常識', '2017-10-03 21:00:00', '2017-10-03 21:00:00'),
(3, '就職・転職', '2017-10-03 21:00:00', '2017-10-03 21:00:00'),
(4, '法律', '2017-10-03 21:00:00', '2017-10-03 21:00:00'),
(5, 'IT', '2017-10-03 21:00:00', '2017-10-03 21:00:00'),
(6, '雑学', '2017-10-05 06:00:00', '2017-10-05 06:00:00');

-- --------------------------------------------------------

--
-- テーブルの構造 `informations`
--

CREATE TABLE `informations` (
  `id` int(10) UNSIGNED NOT NULL,
  `information` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `informations`
--

INSERT INTO `informations` (`id`, `information`, `created_at`, `updated_at`) VALUES
(1, 'サイト開設のお知らせ。', '2017-10-12 10:46:30', '2017-10-12 10:46:30'),
(2, 'テストのお知らせ', '2017-10-14 15:00:00', '2017-10-14 15:00:00');

-- --------------------------------------------------------

--
-- テーブルの構造 `keywords`
--

CREATE TABLE `keywords` (
  `id` int(10) UNSIGNED NOT NULL,
  `initial` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keyword` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `keywords`
--

INSERT INTO `keywords` (`id`, `initial`, `keyword`, `description`, `categories_id`, `created_at`, `updated_at`) VALUES
(1, 'こ', 'ご清栄（せいえい）', '相手の繁栄などを祝う挨拶の言葉。', 1, '2017-10-11 15:00:00', '2017-10-11 15:00:00'),
(2, 'こ', 'ご隆昌（りゅうしょう）', '非常に栄えること。勢いの盛んなこと。（＝隆盛）', 1, '2017-10-11 15:00:00', '2017-10-11 15:00:00'),
(3, 'こ', 'ご清祥（せいしょう）', '相手が幸福に暮らしていることを祝う意で用いる語。', 1, '2017-10-11 15:00:00', '2017-10-11 15:00:00'),
(4, 'こ', 'ご健勝（けんしょう）', '体が丈夫で元気なさま。すこやか。（個人宛てに用いる）', 1, '2017-10-11 15:00:00', '2017-10-11 15:00:00'),
(5, 'こ', 'ご厚情（こうじょう）', 'あついなさけ。思いやりのある心。（＝厚志・厚意）', 1, '2017-10-11 15:00:00', '2017-10-11 15:00:00'),
(6, 'こ', 'ご懇情（こんじょう）', '真心のこもった心遣い。親切な心。', 1, '2017-10-11 15:00:00', '2017-10-11 15:00:00'),
(7, 'こ', 'ご高配（こうはい）', '相手を敬ってその心配りをいう語。', 1, '2017-10-11 15:00:00', '2017-10-11 15:00:00'),
(8, 'こ', 'ご高承（こうしょう）', '相手の承知・承認を敬っていう語。', 1, '2017-10-11 15:00:00', '2017-10-11 15:00:00'),
(9, 'こ', 'ご愛顧（あいこ）', 'ひいきにすること。目をかけること。「ご愛顧」の形で、目をかけられる側が用いる。', 1, '2017-10-11 15:00:00', '2017-10-11 15:00:00'),
(10, 'こ', 'ご芳情（ほうじょう）', '他人の親切な心遣いや気持ちを敬っていう語（＝芳志）', 1, '2017-10-11 15:00:00', '2017-10-11 15:00:00'),
(11, 'S', 'SEO', 'SEO（Search Engine Optimization）は、サーチエンジン最適化と訳され、検索エンジンで特定のキーワードで検索されたときに、対象のサイトが検索結果上位に表示されるようにWEBサイトの記述や設計を工夫する手法。', 5, '2017-10-13 04:34:47', '2017-10-13 04:34:47'),
(12, 'S', 'SQLインジェクション', 'アプリケーションのセキュリティ上の不備を意図的に利用し、アプリケーションが想定しないSQL文を実行させることにより、データベースシステムを不正に操作する攻撃方法のこと。', 5, '2017-10-13 04:35:52', '2017-10-13 04:35:52'),
(13, 'S', 'SSL', 'インターネット上で情報を暗号化して安全に送受信するための仕組み。', 5, '2017-10-13 04:36:52', '2017-10-13 04:39:10'),
(14, 'S', 'SNS', 'ネットワークを通じて人と人のコミュニケーションを促進するWebサイトサービス。', 5, '2017-10-13 04:38:51', '2017-10-13 04:38:51'),
(15, 'P', 'Paas', 'アプリケーションを稼働させるために必要なハードウェア、開発環境、ミドルウェア、OS、データベースなどの基盤（プラットフォーム）を提供するクラウドサービスのこと。', 5, '2017-10-13 04:39:58', '2017-10-13 04:39:58'),
(16, 'P', 'POSシステム', 'スーパー、コンビニなどで在庫管理や、それに伴ってマーケティングツールとして用いられている。', 5, '2017-10-13 04:40:49', '2017-10-13 04:40:49'),
(17, 'S', 'SSD', 'SSDとは、高速ストレージの事。高速のストレージといえばHDDがあるが、SSDはHDDのようにディスクを持たない。そのため、データの読み書きの際に読み取り装置をディスク上で移動させる時間や、ディスク上の目的のデータがヘッド位置まで回転してくる時間が存在しないので、HDDと比較しても更に高速のストレージとなっている', 5, '2017-10-13 04:41:40', '2017-10-13 04:41:40'),
(18, 'G', 'GUI', 'グラフィカルユーザインターフェース(Graphical User Interface)の略語。コンピュータへ出す命令や指示等を、ユーザが画面上で視覚的に捉えて行動を指定できるもので、それまで主流であった命令文を入力して実行する方式(CUI)に比べ、直感的に操作できるのが特長。', 5, '2017-10-13 04:43:58', '2017-10-13 04:43:58'),
(19, 'O', 'OS', 'オペレーティング・システム (Operating System) の略で、コンピューターの根幹部分で動作して各アプリケーションに共通インターフェースを提供するソフトウェアのことである。', 5, '2017-10-13 04:44:26', '2017-10-13 04:44:26'),
(20, 'L', 'Linux', '誰もが利用・複製・改変・再配できるUNIX互換のOS(オペレーションシステム)。1991年に、当時フィンランドのヘルシンキ大学に通う学生のリーナス・トーバルズ氏が既存のソースを使うことなく開発され、無償でソースコードが公開されているオープンソースとなっている。', 5, '2017-10-13 04:45:29', '2017-10-13 04:45:29'),
(21, 'L', 'LAN', 'ローカルネットワークの略語。家庭内や社内などのプライベートネットワークのこと。', 5, '2017-10-13 04:46:25', '2017-10-13 04:46:25'),
(22, 'H', 'HTTPS', 'HTTPがSSLやTLSで暗号化されている状態のプロトコルを指す。', 5, '2017-10-13 04:47:12', '2017-10-13 04:47:12'),
(23, 'F', 'Firefox', 'Mozilla Foundationが開発したオープンソースのWebブラウザで、2004年に登場して以来、世界で最もよく使われているWebブラウザのひとつである。', 5, '2017-10-13 04:47:39', '2017-10-13 04:47:39'),
(24, 'G', 'Google Chrome', 'Googleが開発しているウェブブラウザである。', 5, '2017-10-13 04:48:52', '2017-10-13 04:48:52'),
(25, 'I', 'Internet Explorer', 'マイクロソフトが開発するウェブブラウザである。', 5, '2017-10-13 04:50:00', '2017-10-13 04:50:00'),
(26, 'あ', 'アフィリエイト', 'ホームページやブログなどに広告を掲載して報酬をもらう仕組み。', 5, '2017-10-13 04:50:57', '2017-10-13 04:50:57'),
(27, 'E', 'Eコマース', 'インターネットなどのネットワークを利用して、契約や決済などを行う取引形態のこと。', 5, '2017-10-13 04:57:04', '2017-10-13 04:57:04'),
(28, 'C', 'CUI', 'キーボードに入力されるコマンドによって、オペレーティング・システム上の操作を行う、ユーザーインターフェースの事を言う。', 5, '2017-10-13 04:58:13', '2017-10-13 04:58:13'),
(29, 'A', 'android', 'グーグル社が提供するオペレーティング・システム(OS)の一つであり、主にスマートフォンやタブレットで使用されている。', 5, '2017-10-13 04:59:01', '2017-10-13 04:59:01'),
(30, 'I', 'iOS', '主にアップル社製のスマートフォン「iPhone」シリーズに搭載されているオペレーティング・システム(OS)のこと。他にもiPod touchやiPadなど、アップル社製の製品に搭載されている。', 5, '2017-10-13 04:59:54', '2017-10-13 04:59:54'),
(31, 'く', 'クロスサイトスクリプティング', 'Webサイトでキーワードを入力する欄にスクリプト 含んだタグを打ち込むと、そのサーバの脆弱性の度合いによって、 cookieを取得できたり、第三者に意図しないデータを取得される など情報を他人に引き抜かれること。', 5, '2017-10-13 05:01:20', '2017-10-13 05:01:20'),
(32, 'く', 'クラッカー', '他人のシステムを不正に使用したり、それを破壊する目的でネットワークに侵入し、データやプログラムを改変したり、盗み見したり、破壊するなど 犯罪行為をするひとのこと。', 5, '2017-10-13 05:02:22', '2017-10-13 05:02:22'),
(33, 'B', 'BIOS(ばいおす)', 'Basic Input/Output Systemの頭文字をとった略語。パソコンに接続された機器の入出力(インプット・アウトプット)を管理・制御するソフトウェアのことを言う。マザーボードに取り付けられたCPUやメモリ、HDDなどのドライブ類等、色々な機器とOSの間を橋渡しする役割を果たす。', 5, '2017-10-13 05:03:28', '2017-10-13 05:03:28'),
(34, 'D', 'DoS攻撃', '「サービス妨害攻撃」「サービス不能攻撃」「サービス拒否攻撃」と訳され、Webサイトやシステムに大量のリクエストや巨大なデータを送ることでトラフィックを増大させ、システムダウン、サービス停止に陥らせることを目的とする不正アクセス攻撃のひとつである。', 5, '2017-10-13 05:04:14', '2017-10-13 05:04:14'),
(35, 'J', 'jpeg', '静止画像データの圧縮方式の一つ。 圧縮するときに、ある程度の画像劣化を許容する方式と全く劣化のない方式を選ぶことができる。', 5, '2017-10-13 05:05:58', '2017-10-13 05:05:58'),
(36, 'K', 'KVMスイッチ', '複数のコンピュータを一組のキーボード、ディスプレイ、マウスから操作できるようにするための接続機器のこと。', 5, '2017-10-13 05:06:48', '2017-10-13 05:06:48'),
(37, 'M', 'MySQL', 'Oracle社が提供しているオープンソースのデータベースシステムの一つ。Microsoft社のAccessと同じデータベースソフトではあるが、MySQLはphpとの相性が良く、大容量かつ高速で動作するため、使いやすいという点が大きな特徴である。', 5, '2017-10-13 05:08:18', '2017-10-13 05:08:18'),
(38, 'N', 'NAS', 'ネットワークを使うストレージのこと。ＮＡＳを導入することにより各々のＰＣデータを一括で管理することが可能。そのためメリットとしては運用管理の容易化、接続性のリスト回避、コスト削減等が挙げられる。', 5, '2017-10-13 05:10:19', '2017-10-13 05:10:19'),
(39, 'Q', 'QoS', 'クオリティーオブサービスの略語。ネットワーク上での「サービス品質」、具体的には、通信帯域の予約と通信速度の保証をする技術の事を指す。', 5, '2017-10-13 05:11:13', '2017-10-13 05:11:13'),
(40, 'R', 'RAM', 'コンピュータの記憶装置に使われる、半導体素子利用の記憶装置のこと。 RAMはデータの読み書きを電気的に行なうため非常に高速だが、容量あたりの価格が高い為、大量には使用できない。', 5, '2017-10-13 05:11:48', '2017-10-13 05:11:48'),
(41, 'T', 'TCP/IP', 'インターネットで世界共通に使われている通信規約（プロトコル）の事。（トランスミッション・コントロール・プロトコル/インターネット・プロトコル）の略で「ティーシーピーアイピー」と呼ぶ。 TCPはトランスポート層のプロトコル（送信するデータをパケットにし目的地でくっつけもとに戻す方法の規約）、 IPはネットワーク層のプロトコル（ルーティングの方法の規約）を指し示す。', 5, '2017-10-13 05:12:38', '2017-10-13 05:12:38'),
(42, 'U', 'UNIX', 'マルチタスク、マルチユーザを実現したオペレーティングシステム（OS）の1種。UNIXをベースにした多くの派生OS含む総称として使われることもある。', 5, '2017-10-13 05:13:37', '2017-10-13 05:13:37'),
(43, 'V', 'VPS', '物理的なサーバを提供する「レンタルサーバ」や「ホスティング」に対して、仮想サーバを提供する「仮想専用サーバサービス」のこと。', 5, '2017-10-13 05:14:23', '2017-10-13 05:14:23'),
(44, 'W', 'Windows', 'マイクロソフトが開発・販売しているOS(オペレーティング・システム)。主にPC用のOSとして普及している。', 5, '2017-10-13 05:14:56', '2017-10-13 05:14:56'),
(45, 'W', 'WordPress', 'オープンソース(誰でも使うことができる)で提供しているCMSの一種。トップページ・カテゴリーページ・記事ページといった基本的なブログのサイト構造を初めから持っているため、Web制作の知識がなくてもブログサイトを簡単につくることができる。', 5, '2017-10-13 05:15:29', '2017-10-13 05:15:29'),
(46, 'X', 'XML', 'データの記述言語における規格。Webで公開するページを作成する際に扱う。HTMLと違って、XMLはあらゆるコンピュータシステムへ適応でき、ユーザーがデータの構造を自由に定義できるので、あらゆるデータの自由処理が可能。', 5, '2017-10-13 05:16:07', '2017-10-13 05:16:07'),
(47, 'Y', 'YouTube', '米YouTube社が運営している、無料動画共有サイトのこと。', 5, '2017-10-13 05:17:09', '2017-10-13 05:17:09'),
(48, 'あ', 'アイスブレイク', '研修用語として用いられる言葉。研修のスタート時などにおいて、受講者の緊張を解き、リラックスしてもらうことをいう。互いに自己紹介を行ったり、簡単なゲームを行ったりするのもアイスブレイクのひとつ。', 1, '2017-10-13 05:21:11', '2017-10-13 05:21:11'),
(49, 'あ', 'アポイントメント', '相手先との会合・面談の約束。アポと略されることも多い。テレアポ（テレホンアポイントメント）は電話で商談や面談の約束を取りつける行為に使われている。', 1, '2017-10-13 05:22:29', '2017-10-13 05:22:29'),
(50, 'い', 'インフレーション', '物価水準が長い期間にわたって持続的に上昇することをいう。市場において、貨幣の発行量が必要以上に増加した時に起こる。', 2, '2017-10-13 08:21:51', '2017-10-13 08:21:51'),
(51, 'い', 'イノベーション', '一般に技術革新、または革新のこと。オーストリアの経済学者シュンペーターは、イノベーションを「新結合の遂行」と定義し、資本主義経済における経済発展の主要因であるとした。', 2, '2017-10-13 08:22:55', '2017-10-13 08:22:55'),
(52, 'い', 'インセンティブ', '意欲向上や目標達成のための刺激策。個人が行動を起こすときの内的欲求（動因：ドライブ）に対して、その欲求を刺激し、引きだす誘因（インセンティブ）を指している。企業は、自社の従業員を動機づけるためだけでなく、販売店の販売意欲や消費者の購買意欲を駆り立てる目的でも用いられる。具体的には、報奨金、表彰、景品などの形をとる。', 2, '2017-10-13 08:23:32', '2017-10-13 08:23:32'),
(53, 'E', 'eラーニング', '一般に、インターネットを使った遠隔地教育のことを指す。', 5, '2017-10-13 08:24:31', '2017-10-13 08:24:31'),
(54, 'い', 'インターンシップ', '在学中の学生が、一定期間、自分の専攻やキャリアプランに基づいて、企業で実際に職場体験を積む制度。', 2, '2017-10-13 08:25:23', '2017-10-13 08:25:23'),
(55, 'え', '演繹法(えんえきほう)', '前提となる事柄をもとに、そこから確実に言える結論を導き出す推論法のこと。帰納法の対義語で、演繹的推論ともよばれる。', 2, '2017-10-13 08:26:34', '2017-10-13 08:26:34'),
(56, 'か', 'カルテル', '企業連合といわれる。同業種またはそれに近い企業同士が、互いに競争を避け利益を確保するために、協定や合意を行うこと。何について競争を制限するかによって、価格カルテル、生産カルテル、販売カルテル、入札談合などに区別される。わが国では、カルテルは消費者利益を損なうことから独占禁止法によって禁止されている。', 2, '2017-10-13 08:27:58', '2017-10-13 08:27:58'),
(57, 'か', '環境アセスメント', '環境影響評価。地域開発や公共事業など、環境に大きな影響を及ぼす可能性がある計画については、事前に自然への影響度の調査・予測・評価を行い、自然環境の破壊を未然に防ごうというもの。科学的な調査を行うと同時に、地域住民の意見も反映させる。日本においては、1997年に環境影響評価法（環境アセスメント法）が制定された。', 2, '2017-10-13 08:28:34', '2017-10-13 08:28:34'),
(58, 'き', '帰納法(きのうほう)', '類似の事例をもとにして、一般的法則や原理を導き出す推論法のこと。演繹法の対義語で、帰納的推論ともよばれる。', 2, '2017-10-13 08:29:23', '2017-10-13 08:29:23'),
(59, 'く', 'クーリング・オフ制度', '消費者が、ある商品やサービスの購入契約を行った場合、一定期間以内ならば、無条件で契約の取消・撤回が認められる制度。', 2, '2017-10-13 08:30:46', '2017-10-13 08:30:46'),
(60, 'け', '謙譲語', '敬語の分類の1つで、自分の行為や持ち物を低めて表現することで、相手に対する敬いの感情や姿勢を表す方法。主には、自分自身、自分の側にいる人、自分が所属する組織の行為や持ち物などに用いるが、話の相手に対する第三者の行為に用いて相手を高めたり、話の中のある登場人物に対する第三者の行為に用いてその関係を表現したりもする。', 2, '2017-10-13 08:32:02', '2017-10-13 08:32:02'),
(61, 'そ', '尊敬語', '敬語の分類の1つで、相手の行為、持ち物、状態などを高めて表現することで、相手に対する敬いの感情や姿勢を表す方法。話の聞き手や読み手に対してだけでなく、話の中に出てくる人物に対しても用いる。', 2, '2017-10-13 08:32:47', '2017-10-13 08:32:47'),
(62, 'け', '敬語', '相手に対して「敬い」や「へりくだり」などを含む感情や姿勢を表す表現方法。また、「敬い」や「へりくだり」の表現を用いて、話の中に出てくる人物と相手や自分の上下関係や登場人物同士の上下関係を表現する際にも用いる。', 2, '2017-10-13 08:33:13', '2017-10-13 08:33:13'),
(63, 'て', '丁寧語', '敬語の分類の1つで、ものや行為などを丁寧に表現することで、相手に対する敬いの感情や姿勢を表す方法。「お」「ご」などの接頭語をつけたり、語尾に「です」「ます」「ございます」などをつける表現。丁寧語は尊敬語や謙譲語とは違い、相手のことか自分や自分の側のことかなどを意識することなく、幅広くいろいろな人やものに使うことができる。', 2, '2017-10-13 08:33:57', '2017-10-13 08:33:57'),
(64, 'さ', '三六協定(さんろくきょうてい/さぶろくきょうてい)', '時間外休日労働について、使用者が労働組合（または労働者の過半数を代表する者）との間で締結する労使協定をいう。これを締結し所轄労働基準監督署長に届け出ない限り、使用者は労働者に時間外労働や休日労働を命じることはできない。労働基準法36条にその定めがあることから、三六協定といわれる。', 4, '2017-10-13 08:35:43', '2017-10-13 08:35:43'),
(65, 'し', '時間外手当', '会社の所定労働時間を超える時間外の勤務に対して支給される手当。月給制の場合、毎月の給与から時間単価を求め、超過した時間に応じた金額が支給される。法令では、1日8時間または1週40時間を超える勤務については、時間単価に加えて0.25の割増が義務づけられている。また、22時から翌朝5時までの深夜に勤務した場合は0.25、休日の勤務については0.35の割増賃金が支給される。', 4, '2017-10-13 08:36:56', '2017-10-13 08:36:56'),
(66, 'し', '時間外労働', '決められた労働時間を超えて働くこと。労働基準法では、1日8時間、1週40時間の法定労働時間を超えた勤務をさす。企業が法定労働時間を超えた勤務を命じるためには、従業員の代表と三六協定を締結し、労働基準監督署に届け出ておく必要がある。それにより、企業はその協定の範囲で時間外労働を命じることができるが、届け出なく時間外労働を命じたり、協定の範囲を超えた労働を命じると刑事罰の対象となる。', 4, '2017-10-13 08:37:26', '2017-10-13 08:37:26'),
(67, 'し', '社会保険', '健康保険・厚生年金保険・雇用保険・労災保険のように、国が法律である一定の条件に当てはまる職域・地域の人々に強制的に適用する。不慮の事態の際の労働者とその家族の生活安定が目的で、費用は政府・使用者・労働者の三者が負担する。', 4, '2017-10-13 08:38:37', '2017-10-13 08:38:37'),
(68, 'し', '就業規則', '賃金や労働時間、休暇などの労働条件や、働くうえでのルールを取り決めたもの。常時10人以上の労働者を使用する場合、使用者は必ず作成し、労働基準監督署長に届け出なければならない。また、変更に際しては労働者に意見を聴取すること、就業規則を周知させることも義務づけられている。 なお、労働基準法や労働協約に反する就業規則は無効となる。', 4, '2017-10-13 08:39:02', '2017-10-13 08:39:02'),
(69, 'し', '紹介予定派遣', '就職を希望する人材と、採用を予定している企業とを引き合わせ、社員雇用を前提として人材派遣を行うこと。一定の契約期間を派遣労働者として働いた後、労使双方の合意の上で採用が決定される。この紹介予定派遣は、労働者派遣事業と職業紹介事業の両方の許可を受けた派遣会社のみが行える。また、労働者派遣法で禁止されている職種については行うことができない。', 4, '2017-10-13 08:39:47', '2017-10-13 08:39:47'),
(70, 'す', 'スタグフレーション', 'スタグネーション（停滞）とインフレーションを合わせた言葉。景気が停滞している状況下で、同時にインフレーション（物価上昇）が起こる現象をいう。', 2, '2017-10-13 08:41:05', '2017-10-13 08:41:05'),
(71, 'す', 'スパム', 'ある個人や企業が受信者の意思とは無関係に入手したメールアドレスにあてて、無差別に大量送信する電子メッセージのこと。メールで送られることが多く、「迷惑メール」とも呼ばれる。スパムの目的は主に広告であり、受信者に何らかの商品を買わせようとしたり、何らかの契約にサインを求めるものである。', 5, '2017-10-13 08:42:05', '2017-10-13 08:42:05'),
(72, 'せ', '正社員', '正社員とは、従業員のうち雇用契約上で特別の取り決めなく雇用された社員をさす。ただし、法律上の用語でないため、特別な定義があるわけではなく、一般的には雇用期間の定めがないこと、よって解雇が厳しく制限されていること、原則としてフルタイムで勤務し三六協定の範囲で残業も義務づけられていることなどがその特徴としてあげられる。', 4, '2017-10-13 08:43:02', '2017-10-13 08:43:02'),
(73, 'せ', 'セクシャル・ハラスメント', '性的な言動による嫌がらせ行為。略してセクハラという。相手の意に反して、性的な言動によって相手に不利益を与えたり、相手が不快に感じる行為を行うとセクハラに該当する。', 2, '2017-10-13 08:43:46', '2017-10-13 08:43:46'),
(74, 'そ', 'ソフトウェア', 'コンピュータが動作するために必要な電子上の指示や命令の集まり。物理的な機器や設備であるハードウェアに対して、その利用技術のことを指す。それ自体は触れることができないものであり、CDやDVDなどのメディアに記録されて流通する。ソフトと略されることが多く、プログラムの別名として用いられることもある。', 5, '2017-10-13 08:44:45', '2017-10-13 08:44:45'),
(75, 'た', 'ダイバーシティ', '多様な人材を積極的に活用しようという考え方のこと。もとは、社会的マイノリティの就業機会拡大を意図して使われることが多かったが、現在は性別や人種の違いに限らず、年齢、性格、学歴、価値観などの多様性を受け入れ、広く人材を活用することで生産性を高めようとするマネジメントについていう。', 2, '2017-10-13 08:45:43', '2017-10-13 08:45:43'),
(76, 'た', 'ダンピング', '採算を度外視し、適正な仕入原価を大きく下回る価格で販売することにより、公正な市場競争を破壊する活動のこと。独占禁止法により禁じられている。', 4, '2017-10-13 08:46:35', '2017-10-13 08:46:35'),
(77, 'ち', '著作権', '著作者が、その著作物を自分の財産として独占的に利用できる権利。著作者は、著作物を複製・頒布することで利益を得ることができる。また、他者による無断複製や利用を制約できる。対象となる著作物とは、思想や感情を創作的に表現したもので、出版物や音楽、映像、美術品、建築、プログラムなど多岐にわたる。著作権は著作物を創作した時点で発生し、死後50年間有効となる。', 4, '2017-10-13 08:47:19', '2017-10-13 08:47:19'),
(78, 'て', 'データマイニング', 'マイニングとは、もともとは鉱山の採掘の意味。膨大な取引データの中から、有用な傾向や規則性を見いだすことをいう。この成果は、マーケティング政策や与信管理などに応用される。', 5, '2017-10-13 08:48:27', '2017-10-13 08:48:27'),
(79, 'て', 'デジタル・デバイド', '直訳すると情報格差。インターネットやパソコン等の情報技術を使える人と使えない人との間に、情報の格差が生じている状態をいう。この情報格差は経済的・社会的な格差をもたらしている。また年齢、性別、教育などによる個人間の問題だけでなく、企業間や都市間、国家間においても情報格差が広がりつつあり、社会問題となっている。', 5, '2017-10-13 08:48:58', '2017-10-13 08:48:58'),
(80, 'て', 'デファクト・スタンダード', '「事実上の標準」と訳される。 JISやISOのように、公的機関によって公式に定められた標準ではなく、民間企業における独自の製品や規格が、事実上その業界の標準として通用していることをいう。', 2, '2017-10-13 08:49:36', '2017-10-13 08:49:36'),
(81, 'て', 'デフレーション', '物価水準が継続的に下降する現象のこと。市場における総需要に対し総供給が過剰な状態となり、一般に不況を伴う。', 2, '2017-10-13 08:50:10', '2017-10-13 08:50:10'),
(82, 'と', '独占禁止法', '「私的独占の禁止及び公正取引の確保に関する法律」の略称。通称、独禁法。企業間の自由競争を維持することで、市場の健全な発展と消費者利益の保護をめざす法律。私的独占、不当な取引制限、不公正な取引方法などを禁止し、不正行為があった場合は公正取引委員会によって審査される。', 4, '2017-10-13 08:50:48', '2017-10-13 08:50:48'),
(83, 'な', 'ナショナルブランド', '全国的に販売され認知されている商品のブランドのこと。', 2, '2017-10-13 08:53:48', '2017-10-13 08:53:48'),
(84, 'ふ', 'プライベートブランド', 'スーパーや百貨店などの流通業者が、メーカーに拠らず自主的に設定した商標のこと。消費者にとっては比較的割安で、店にとっては利ざやが大きい。', 2, '2017-10-13 08:54:14', '2017-10-13 08:54:14'),
(85, 'に', 'ニート', 'Not in Employment, Education or Trainingの略で、「職に就いていず、学校機関に所属もしていず、そして就労に向けた具体的な動きをしていない」人のこと。', 2, '2017-10-13 08:54:49', '2017-10-13 08:54:49'),
(86, 'の', 'ノウハウ', '企業の活動に必要な生産・経営・管理・技術などに関する知識・経験の情報。新しい(独自の)技術やマーケティングテクニックなどもノウハウである。', 2, '2017-10-13 08:56:05', '2017-10-13 08:56:05'),
(87, 'ね', '年末調整', '給与の支払者は、従業員である給与所得者について、毎月の給与から所得税分を徴収（源泉徴収）し、個人に代わって所得税を申告している。 しかし、月々の源泉徴収額の総額と、年収に対する所得税額は必ずしも一致しない。年末の給与支払い時に、この所得税の過不足分を精算する手続きが年末調整である。', 4, '2017-10-13 08:56:40', '2017-10-13 08:56:40'),
(88, 'は', 'ハードウェア', 'コンピュータシステムを構成している物理的要素。hardwareは英語で「金物、固い品物」の意味ももつが、パソコンに関しては触れることができる部分のこと。キーボード・マウス・プリンタ・スキャナ・ディスプレイ・ハードディスクなど個々の装置や機器を指す場合と、それらを総称して呼ぶ場合とがある。入力や出力、演算処理や記録などの機能をもつ。コンピュータシステム以外でも、テレビやDVDプレーヤー、iPodなどもハードウェアと呼ばれる。より広い文脈では、社会的活動が行われる構造物を意味し、道路や空港・港湾施設や公共建造物、室内設備などを指す場合もある。', 5, '2017-10-13 08:57:39', '2017-10-13 08:57:39'),
(89, 'は', '派遣社員', '派遣会社と雇用契約を結び、派遣先企業の指揮命令下で働く労働者のこと。1999年12月より施行された『改正労働者派遣法』によって派遣対象業務が原則自由化され、2003年の改正によってさらに対象業務が拡大、派遣の期間制限も緩和された。', 4, '2017-10-13 08:58:11', '2017-10-13 08:58:11'),
(90, 'は', 'ハッカー', 'コンピューターへの造詣が深く、操作技術に精通した人のこと。本来ハッカーという言葉はそうした人への尊称であったが、その優れた技術を悪用し、他人のコンピューターに侵入して違法行為をはたらく人をハッカーと呼んでいるケースも見られる', 5, '2017-10-13 08:59:21', '2017-10-13 08:59:21'),
(91, 'は', 'パネルディスカッション', '公開討論会の１つ。あるテーマについて、まず数人の専門家が代表者（パネル、パネラー）として選出され、司会者のコーディネートのもとに、聴衆の前で討議を行う。その後、聴衆も参加して、意見交換や質疑応答が行われる、という方式。', 2, '2017-10-13 08:59:47', '2017-10-13 08:59:47'),
(92, 'は', 'ハラスメント', '一般にいろいろな場面での「嫌がらせ」や「いじめ」などの行為をさす。その行為を行う人が意図したかどうかにかかわらず、相手に対し不快にさせたり、不利益や損害を与えたり、尊厳を傷つけたりした場合、ハラスメントとみなされる。企業内での代表的なハラスメントとしては、セクシャル・ハラスメント、モラル・ハラスメント（パワー・ハラスメント）、アルコール・ハラスメントなどがある。', 2, '2017-10-13 09:00:16', '2017-10-13 09:00:16'),
(93, 'は', 'パワー・ハラスメント', '職務上の立場や権限を背景にした、いじめや嫌がらせ行為を指す。略してパワハラ、あるいはボスハラ（ボス・ハラスメント）と呼ばれる。岡田康子氏による造語で、欧米ではモラル・ハラスメントという。パワハラには、退職強要や不当な評価のほか、言葉や態度による暴力や嫌がらせ、叱責、無視、冷遇、残業の執拗な強要や強制的な飲み会への誘いなども含まれる。通常の指示や命令との境界は、その指示や命令に業務上の正当性があるかどうかが判断基準となる。', 2, '2017-10-13 09:00:53', '2017-10-13 09:00:53'),
(94, 'ひ', '非正規社員・非正規雇用', '非正規社員とは、一般的には正規雇用ではない人をいう。また、非正規雇用とは正社員としての雇用形態以外で働く形態をさす。具体的には、契約社員、嘱託社員、準社員、臨時社員、季節社員、パートタイマー、アルバイト、派遣社員、請負社員などが非正規社員にあたる。', 4, '2017-10-13 09:01:26', '2017-10-13 09:01:26'),
(95, 'ふ', 'ファイアウォール', '防火壁のこと。ネットワーク上のファイアウォールとは、セキュリティを確保するためのしくみのこと。外部への安全なアクセスを実現し、また外部からの不正なアクセスを防ぐ役目を果たす。', 5, '2017-10-13 09:01:58', '2017-10-13 09:01:58'),
(96, 'ふ', 'フィランソロピー', '慈善活動の訳。最近では企業の社会的な貢献活動、福祉活動のことをいう。', 2, '2017-10-13 09:02:31', '2017-10-13 09:02:31'),
(97, 'ふ', 'ブルートゥース', '携帯電話やノートパソコンなどのデジタル機器を、近距離内において無線接続するための通信技術で、ブルートゥースはそのコードネーム。', 5, '2017-10-13 09:03:11', '2017-10-13 09:03:11'),
(98, 'ふ', 'ブレーンストーミング', 'アイデアを創造する技法の１つ。集団（グループ）で行うもので、あるテーマに対し、各人が思いつくままにアイデアを出し合っていき、後でアイデアを整理しまとめあげるというもの。', 2, '2017-10-13 09:03:45', '2017-10-13 09:03:45'),
(99, 'は', 'バリアフリー', '障害物（バリア）を取り除く（フリー）という意味。住宅内や地域社会において、障害者や高齢者にとっての障害を取り除き、暮らしやすい環境を実現していこうという考え方。', 2, '2017-10-13 20:15:26', '2017-10-13 20:15:26'),
(100, 'ひ', 'ビルトイン・スタビライザー', '景気の変動を自動的に安定化させるしくみのこと。「ビルトイン」とは、国の財政構造にあらかじめ組み込まれているという意味であり、「スタビライザー」とは安定装置を意味する。そのため自動安定化装置とも訳される。たとえば、所得税などの累進課税制度や雇用保険による失業等給付などの社会保障制度がこれに当てはまる。', 2, '2017-10-13 20:16:33', '2017-10-13 20:16:33'),
(101, 'へ', '平均賃金', '労災の休業給付や解雇手当などを計算する際に、算定基準として用いる賃金額をいう。労働基準法第12条で「平均賃金を算定すべき事由の発生した日以前3カ月間（算定期間）にその労働者に対し支払われた賃金の総額を、その期間の総日数で除した金額をいう」と規定されている。', 4, '2017-10-13 20:18:37', '2017-10-13 20:18:37'),
(102, 'ほ', '法人', '財産を保有し、契約を結ぶことができる主体は人であるが、実際の人である自然人に対し、法律上の便宜的な概念としての人。法律上の権利能力・行為能力・財産の保有が認められた組織体。', 4, '2017-10-13 20:19:50', '2017-10-13 20:19:50'),
(103, 'み', 'みなし労働時間制', '実際に働いた時間にかかわらず、一定時間を働いたものとみなす労働時間管理の方法。営業職などの事業場外労働をしている場合や裁量労働制の社員に適用される。また、出張や外勤後に直帰する場合など、正確な時間管理がしづらい場合も終業時刻まで働いたものとみなして管理する場合がある。', 4, '2017-10-13 20:21:47', '2017-10-13 20:21:47'),
(104, 'も', 'モラル・ハラスメント', '言葉や態度による精神的な嫌がらせ行為。', 2, '2017-10-13 20:23:24', '2017-10-13 20:23:24'),
(105, 'ろ', '労災保険', '正しくは労働者災害補償保険。労働者が、業務上または通勤途上に災害にあい、負傷、疾病、障害または死亡に至った場合、給付等の支援を行う制度。原則として、労働者を使用するすべての事業が加入しなければならない。労災保険に加入している事業所に勤務する労働者は、正社員やパートなどの雇用勤務に関係なく、すべて適用対象となる。ただし、業務執行権を持つ役員には適用されない。', 4, '2017-10-13 20:25:14', '2017-10-13 20:25:58'),
(106, 'ろ', '労働基準法', '賃金、労働時間、その他の労働条件に関して最低基準を定めた法律。', 4, '2017-10-13 20:26:38', '2017-10-13 20:26:38'),
(107, 'れ', 'レッド・オーシャン', 'レッド・オーシャンとは、競争のない新しい市場を表す「ブルー・オーシャン」に対して、競争の激しい既存の市場を指す。', 2, '2017-10-13 20:27:54', '2017-10-13 20:27:54'),
(108, 'ふ', 'ブルー・オーシャン', '文字通りには英語で「青い海」を意味するが、経営学では「競争のない新しい市場」を指す。', 2, '2017-10-13 20:28:35', '2017-10-13 20:28:35'),
(109, 'ふ', 'ブルーカラー', '広く技能・作業系職種一般、およびそれに従事する労働者のこと。技能工や生産工程作業、建築・土木作業、採鉱・採石作業、農林・漁業作業などの職種がこれに当てはまる。', 2, '2017-10-13 20:29:32', '2017-10-13 20:29:32'),
(110, 'ほ', 'ホワイトカラー', '広く事務系職種一般、およびそれに従事する労働者のこと。高等教育を受けている場合が多く、経営企画・管理・営業・事務職や、技術・専門職などがこれに当てはまる。', 2, '2017-10-13 20:30:19', '2017-10-13 20:30:19'),
(111, 'あ', 'アソシエーション', '共通の関心や目的などで集まった機能的集団。会社や非営利組織など。', 2, '2017-10-13 20:39:59', '2017-10-13 20:39:59'),
(112, 'と', 'トラスト', '企業合同と訳される。複数企業が、市場競争を排除し、市場での利益を独占する目的で資本結合を行うこと。資本による支配が行われる点で、カルテルより強固な結合形態といえる。同業種間にわたる水平的合同、異業種間にわたる垂直的合同などがある。', 2, '2017-10-13 21:00:11', '2017-10-13 21:00:11');

-- --------------------------------------------------------

--
-- テーブルの構造 `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(20, '2014_10_12_000000_create_users_table', 1),
(21, '2014_10_12_100000_create_password_resets_table', 1),
(22, '2017_10_05_095154_create_quizzes_table', 1),
(23, '2017_10_05_095244_create_answers_table', 1),
(24, '2017_10_05_095301_create_categories_table', 1),
(25, '2017_10_06_131322_create_rankings_table', 1),
(26, '2016_01_04_173148_create_admin_tables', 2),
(27, '2017_10_12_163138_create_keywords_table', 3),
(30, '2017_10_12_181146_create_informations_table', 4);

-- --------------------------------------------------------

--
-- テーブルの構造 `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- テーブルの構造 `quizzes`
--

CREATE TABLE `quizzes` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `answers_id` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image_src` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `quizzes`
--

INSERT INTO `quizzes` (`id`, `title`, `answers_id`, `categories_id`, `created_at`, `updated_at`, `image_src`) VALUES
(1, 'パソコン(PC)は何の略か。', 1, 5, '2017-10-03 21:00:00', '2017-10-11 04:59:33', NULL),
(2, 'アプリケーションをコンピュータで使用可能にするための作業のことを何と言うか。', 2, 5, '2017-10-03 21:00:00', '2017-10-03 21:00:00', NULL),
(3, '中央処理装置とも訳されるコンピュータの情報処理の性能に影響する部分の略称は。Intel社製が多い。', 3, 5, '2017-10-04 21:00:00', '2017-10-03 21:00:00', NULL),
(4, '情報を記録し読み出す代表的な記憶装置の一つ。PCに内蔵されている円盤状の磁気ディスク。', 4, 5, '2017-10-03 21:00:00', '2017-10-03 21:00:00', NULL),
(5, 'アメリカのマーク・ザッカーバーグらによって開設された国際的なSNSは？', 5, 5, '2017-10-03 21:00:00', '2017-10-03 21:00:00', NULL),
(6, 'インターネット上で自分の名前の代わりに表示するニックネーム。', 6, 5, '2017-10-03 21:00:00', '2017-10-03 21:00:00', NULL),
(7, 'マイクロソフト社製のWEBブラウザは？', 7, 5, '2017-10-03 21:00:00', '2017-10-03 21:00:00', NULL),
(8, 'アップルの創業者は。', 8, 5, '2017-10-03 21:00:00', '2017-10-03 21:00:00', NULL),
(9, '検索エンジンで上位表示を狙うための対策のことをアルファベット3文字で何対策というか？', 9, 5, '2017-10-03 21:00:00', '2017-10-03 21:00:00', NULL),
(10, 'Windowsのショートカットキー「Ctrl＋C」は何をするか?', 10, 5, '2017-10-03 21:00:00', '2017-10-03 21:00:00', NULL),
(11, '発がん性や催奇形性を有し、人類が作った最悪と呼ばれる毒物は？', 11, 2, '2017-10-05 06:00:00', '2017-10-05 06:00:00', NULL),
(12, '10億分の1mの物質世界で、新たな機能を創出する技術の総称を何と呼ぶか。', 12, 2, '2017-10-05 06:00:00', '2017-10-05 06:00:00', NULL),
(13, '日本の工学実験探査機「はやぶさ」が、初めて着陸した小惑星の名称は。', 13, 2, '2017-10-05 06:00:00', '2017-10-05 06:00:00', NULL),
(14, '人類初の月面着陸やハッブル宇宙望遠鏡によるデータ収集活動などアメリカの宇宙開発を行っている組織名は？', 14, 2, '2017-10-05 06:00:00', '2017-10-05 06:00:00', NULL),
(15, '不景気で消費が減少、商品の供給超過となって物価が下落する経済現象を何と呼ぶ。', 15, 2, '2017-10-05 06:00:00', '2017-10-05 06:00:00', NULL),
(16, 'GDPは何の略称か？', 16, 2, '2017-10-05 06:00:00', '2017-10-05 06:00:00', NULL),
(17, '企業が成長するために他のの企業の吸収や合併を行うことを何と呼ぶか。', 17, 2, '2017-10-05 06:00:00', '2017-10-05 06:00:00', NULL),
(18, '株価に重大な影響を及ぼす会社内の未公開情報を利用した株式の取引は禁止されている。その取引名は何か？', 18, 2, '2017-10-05 06:00:00', '2017-10-05 06:00:00', NULL),
(19, '自国の産業が海外からの安い製品の輸入で損害を受けることを避けるため、貿易制限を行う考え方を何と呼ぶか。', 19, 2, '2017-10-05 06:00:00', '2017-10-05 06:00:00', NULL),
(20, '企業は寄付やボランティア活動への資金援助などの公益活動を行っている。これを何と呼ぶか。', 20, 2, '2017-10-05 06:00:00', '2017-10-05 06:00:00', NULL),
(21, '次のお茶出しについての説明で、間違っているものを１つ選択せよ。', 21, 1, '2017-10-05 06:00:00', '2017-10-05 06:00:00', NULL),
(22, '名刺交換についての説明で、間違っているものを１つ選んでください。', 22, 1, '2017-10-05 06:00:00', '2017-10-05 06:00:00', NULL),
(23, '同席でお客様とミーティングすることになりました。お客様に対し、常務の正しい紹介方法を１つ選んでください。', 23, 1, '2017-10-05 06:00:00', '2017-10-05 06:00:00', NULL),
(24, '正しい敬語を使った表現を１つ選んでください。', 24, 1, '2017-10-05 06:00:00', '2017-10-05 06:00:00', NULL),
(25, '招待状の「出席」「欠席」という言葉のあとに「〇〇〇〇」という言葉を付け加えるのが正しい。〇〇の中に入る言葉は？', 25, 1, '2017-10-05 06:00:00', '2017-10-05 06:00:00', NULL),
(26, '「暑中見舞い」は7月8日から8月〇〇日の間でそれ以降は「残暑見舞い」になる。\r\n〇〇の中に入る言葉は？', 26, 1, '2017-10-05 06:00:00', '2017-10-05 06:00:00', NULL),
(27, '複数の名刺をもらった時は「〇〇〇〇」に重ねて持つ。〇〇の中に入る言葉は？', 27, 1, '2017-10-05 06:00:00', '2017-10-05 06:00:00', NULL),
(28, '会食や宴会で遅れている人がいた場合、〇〇分待つ。〇〇の中に入る言葉は？あなたが仲介者の立場の時、次の4人をどの順番で紹介するのが正しい?\r\n\r\n① 取引先の相手\r\n② 部長\r\n③ 課長\r\n④ 他部署の担当者\r\n', 28, 1, '2017-10-05 06:00:00', '2017-10-05 06:00:00', NULL),
(29, '上司への返答、以下のどちらの返答が正しいでしょうか？', 29, 1, '2017-10-05 06:00:00', '2017-10-05 06:00:00', NULL),
(30, '有休を取得している同僚宛に取引先から電話が掛かってきました。さて、以下のどちらの返答が正しいでしょうか？', 30, 1, '2017-10-05 06:00:00', '2017-10-05 06:00:00', NULL),
(31, '電子決済システム,仮想通貨,資産運用などに変化をもたらしている、金融とITが融合した技術革新を何というか？', 31, 5, '2017-10-10 09:35:28', '2017-10-11 02:10:48', NULL),
(32, 'モノのインターネットと訳される、様々な機器(冷蔵庫,監視カメラ,信号etc)がインターネットに接続されることを何というか？', 32, 5, '2017-10-11 00:37:09', '2017-10-11 02:13:55', NULL),
(33, '新規営業でアポイントを取ろうと先方に電話をしたところ外出中だった。', 33, 1, '2017-10-13 05:24:32', '2017-10-13 05:24:32', NULL),
(34, '打合せのため3回目の訪問。アポイント時間の15分前に到着しそう。どうする？', 34, 1, '2017-10-13 05:25:41', '2017-10-13 05:25:41', NULL),
(35, '初めて訪問する会社で名刺交換。最初に誰と交換する？', 35, 1, '2017-10-13 05:27:16', '2017-10-13 05:27:16', NULL),
(36, '訪問客を応接室に案内したら、どこに座ってもらう？', 36, 1, '2017-10-13 05:28:21', '2017-10-13 05:28:21', 'files/q4-kamiza.png'),
(37, '上司、先輩と自分3名でタクシーに乗るとき、自分はどこに座ったらいいの？', 37, 1, '2017-10-13 05:29:07', '2017-10-13 05:29:07', 'files/q5-taxi.png'),
(38, '「お客様にお茶を出して」と頼まれたら', 38, 1, '2017-10-13 05:29:53', '2017-10-13 05:29:53', NULL),
(39, 'ホームページやブログなどに広告を掲載して報酬をもらう仕組みを何と言うか。', 39, 5, '2017-10-13 20:39:37', '2017-10-13 20:39:37', NULL),
(40, '時間外休日労働について、使用者が労働組合（または労働者の過半数を代表する者）との間で締結する協定を何と言うか。', 40, 4, '2017-10-13 20:50:38', '2017-10-13 20:50:38', NULL),
(41, '採算を度外視し、適正な仕入原価を大きく下回る価格で販売することにより、公正な市場競争を破壊する活動のことを何と言うか。', 41, 4, '2017-10-13 21:00:51', '2017-10-13 21:00:51', NULL),
(42, '従業員のうち雇用契約上で特別の取り決めなく雇用された社員を何社員と呼ぶか。', 42, 4, '2017-10-13 21:05:53', '2017-10-13 21:05:53', NULL);

-- --------------------------------------------------------

--
-- テーブルの構造 `rankings`
--

CREATE TABLE `rankings` (
  `id` int(10) UNSIGNED NOT NULL,
  `users_id` int(11) NOT NULL,
  `percentage_correct_answer` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `rankings`
--

INSERT INTO `rankings` (`id`, `users_id`, `percentage_correct_answer`, `created_at`, `updated_at`) VALUES
(3, 1, 80, '2017-10-06 08:28:36', '2017-10-06 08:39:47'),
(4, 1, 90, '2017-10-11 15:00:00', '2017-10-11 15:00:00'),
(5, 1, 70, '2017-09-28 15:00:00', '2017-09-28 15:00:00'),
(6, 1, 100, '2017-10-12 07:06:39', '2017-10-12 07:06:39'),
(7, 1, 0, '2017-10-13 02:56:05', '2017-10-13 02:56:05'),
(8, 1, 60, '2017-10-13 05:33:28', '2017-10-13 05:33:28'),
(9, 1, 60, '2017-10-14 01:35:40', '2017-10-14 01:35:40');

-- --------------------------------------------------------

--
-- テーブルの構造 `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `users`
--


--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_menu`
--
ALTER TABLE `admin_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_operation_log_user_id_index` (`user_id`);

--
-- Indexes for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_permissions_name_unique` (`name`);

--
-- Indexes for table `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_roles_name_unique` (`name`);

--
-- Indexes for table `admin_role_menu`
--
ALTER TABLE `admin_role_menu`
  ADD KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`);

--
-- Indexes for table `admin_role_permissions`
--
ALTER TABLE `admin_role_permissions`
  ADD KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`);

--
-- Indexes for table `admin_role_users`
--
ALTER TABLE `admin_role_users`
  ADD KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`);

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_users_username_unique` (`username`);

--
-- Indexes for table `admin_user_permissions`
--
ALTER TABLE `admin_user_permissions`
  ADD KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`);

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `informations`
--
ALTER TABLE `informations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `keywords`
--
ALTER TABLE `keywords`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `quizzes`
--
ALTER TABLE `quizzes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rankings`
--
ALTER TABLE `rankings`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `admin_menu`
--
ALTER TABLE `admin_menu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1142;
--
-- AUTO_INCREMENT for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `informations`
--
ALTER TABLE `informations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `keywords`
--
ALTER TABLE `keywords`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `quizzes`
--
ALTER TABLE `quizzes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `rankings`
--
ALTER TABLE `rankings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
