-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 12, 2021 at 03:52 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hello_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_name` varchar(100) DEFAULT NULL,
  `flat_no` varchar(255) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `zipcode` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `user_id`, `user_name`, `flat_no`, `state`, `city`, `country`, `zipcode`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 10, NULL, 'tdi business center', 'punjab', 'punjab', 'india', '160030', '2021-02-19 17:35:19', '2021-02-19 03:07:57', NULL),
(2, 10, NULL, 'flat no 10', 'punjab', 'punjab', 'india', '160030', '2021-02-19 17:36:41', '2021-02-19 08:42:56', NULL),
(3, 10, 'Arvind', '#221 sunder apartment', 'Punjab', 'Chandigarh', 'india', '160030', '2021-02-19 17:43:01', '2021-02-28 14:26:40', NULL),
(4, 10, 'Garry', 'flat no 80', 'punjab new', 'punjab1', 'india', '230078', '2021-02-28 08:58:25', '2021-02-28 22:04:09', NULL),
(5, 10, NULL, 'rohit', 'haryana', 'yamunanagar', NULL, NULL, '2021-02-28 12:53:52', '2021-02-28 12:53:52', NULL),
(6, 10, NULL, 'cdccd', NULL, NULL, NULL, NULL, '2021-02-28 13:32:47', '2021-02-28 13:32:47', NULL),
(7, 10, 'Arvind palliwal', '#123, sunder apartment', 'Ut', 'Chandigarh', 'India', '12312', '2021-02-28 18:05:08', '2021-02-28 22:14:48', NULL),
(8, 10, 'varun', 'D- 123', 'Haryana', 'ynr', 'india', '123456', '2021-03-01 04:50:39', '2021-03-03 14:02:47', NULL),
(9, 10, 'Pradeep', 'House no. 1610', 'Chandigarh', 'U.T', 'India', '160030', '2021-03-01 07:21:16', '2021-03-01 14:00:24', NULL),
(10, 74, 'Pradeep', 'H No. 1610', 'Chandigarh', 'U.T', 'India', '160030', '2021-03-01 16:41:53', '2021-03-01 16:41:53', NULL),
(11, 10, 'Test edit', 'H.No. 12', 'Goa', 'Goa', 'India', '1245673', '2021-03-01 16:48:13', '2021-03-01 19:48:31', NULL),
(12, 74, 'Test', '12', 'Goa', 'Goa', 'India', 'fygvfgg', '2021-03-02 04:15:09', '2021-03-02 04:15:09', NULL),
(13, 10, 'David Oscar', 'Dunwoody Road, 1077 Sandy Springs', 'Georgia', 'Atlanta', 'USA', '10325', '2021-03-03 11:05:34', '2021-03-03 11:05:34', NULL),
(14, 10, 'Mohammad Ismail Shaikh Habibullah', 'Oakwood Studio House', 'Tokyo', 'Roppongi22', 'Japan', '32082', '2021-03-03 11:07:07', '2021-03-04 13:26:41', NULL),
(15, 10, 'Tariq Hussain', 'S-291 Al Zumaira Street', 'Dubai', 'Dubai', 'UAE', '476378', '2021-03-03 11:10:35', '2021-03-03 11:10:35', NULL),
(16, 10, 'Rrr', 'rdf', 'Rr', 'Rr', 'Rr', '147689', '2021-03-03 15:51:31', '2021-03-03 15:51:31', NULL),
(17, 10, 'Gg', '33', 'Gggg', 'Ffff', 'Sss', '11122344455555', '2021-03-09 13:06:09', '2021-03-09 16:08:34', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `size` varchar(100) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `sub_total` int(11) NOT NULL,
  `tax` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `save_later` enum('1','0') NOT NULL DEFAULT '0' COMMENT '''1=yes',
  `status` enum('1','2') NOT NULL DEFAULT '1' COMMENT '''1=In cart'',''2=placed''',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `user_id`, `product_id`, `size`, `quantity`, `sub_total`, `tax`, `total`, `save_later`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(53, 10, 11, 'S', 1, 0, 0, 0, '0', '2', '2021-02-28 18:46:15', '2021-03-01 12:29:09', '2021-03-01 12:29:09'),
(54, 10, 7, 'S', 1, 0, 0, 0, '0', '1', '2021-02-28 18:47:34', '2021-02-28 21:49:18', '2021-02-28 21:49:18'),
(55, 10, 12, 'S', 1, 0, 0, 0, '0', '2', '2021-02-28 18:52:26', '2021-02-28 22:13:58', '2021-02-28 22:13:58'),
(56, 10, 6, 'S', 1, 0, 0, 0, '0', '2', '2021-02-28 18:53:22', '2021-02-28 22:12:46', '2021-02-28 22:12:46'),
(57, 10, 7, 'S', 1, 0, 0, 0, '0', '2', '2021-02-28 18:56:45', '2021-02-28 22:13:56', '2021-02-28 22:13:56'),
(58, 10, 18, 'S', 1, 0, 0, 0, '0', '2', '2021-02-28 18:59:57', '2021-02-28 22:12:49', '2021-02-28 22:12:49'),
(59, 10, 10, 'S', 1, 0, 0, 0, '0', '2', '2021-02-28 19:03:54', '2021-03-07 13:42:55', '2021-03-07 13:42:55'),
(60, 10, 6, 'S', 1, 0, 0, 0, '0', '1', '2021-02-28 19:12:08', '2021-02-28 22:12:46', '2021-02-28 22:12:46'),
(61, 10, 18, 'S', 1, 0, 0, 0, '0', '1', '2021-02-28 19:12:29', '2021-02-28 22:12:49', '2021-02-28 22:12:49'),
(62, 10, 18, 'S', 2, 0, 0, 0, '0', '1', '2021-02-28 19:12:55', '2021-02-28 22:13:54', '2021-02-28 22:13:54'),
(63, 10, 7, 'S', 1, 0, 0, 0, '0', '1', '2021-02-28 19:13:05', '2021-02-28 22:13:56', '2021-02-28 22:13:56'),
(64, 10, 12, 'S', 1, 0, 0, 0, '0', '1', '2021-02-28 19:13:14', '2021-02-28 22:13:58', '2021-02-28 22:13:58'),
(65, 10, 12, 'S', 1, 0, 0, 0, '0', '2', '2021-02-28 19:14:13', '2021-03-03 14:15:11', '2021-03-03 14:15:11'),
(66, 10, 2, 'S', 1, 0, 0, 0, '0', '2', '2021-02-28 19:14:25', '2021-03-01 19:45:50', '2021-03-01 19:45:50'),
(67, 10, 3, 'S', 1, 0, 0, 0, '0', '2', '2021-02-28 19:14:30', '2021-03-03 14:16:50', '2021-03-03 14:16:50'),
(68, 10, 6, 'S', 1, 0, 0, 0, '0', '1', '2021-02-28 19:15:20', '2021-03-01 04:28:32', '2021-03-01 04:28:32'),
(69, 10, 13, 'S', 1, 0, 0, 0, '0', '2', '2021-03-01 01:29:21', '2021-03-03 14:16:56', '2021-03-03 14:16:56'),
(70, 10, 15, 'S', 1, 0, 0, 0, '0', '2', '2021-03-01 01:29:38', '2021-03-01 04:31:03', NULL),
(71, 10, 4, 'S', 1, 0, 0, 0, '0', '2', '2021-03-01 02:27:01', '2021-03-01 19:45:56', '2021-03-01 19:45:56'),
(72, 10, 5, 'S', 1, 0, 0, 0, '0', '2', '2021-03-01 04:40:53', '2021-03-01 19:46:00', '2021-03-01 19:46:00'),
(73, 10, 6, 'S', 1, 0, 0, 0, '0', '2', '2021-03-01 04:54:37', '2021-03-04 08:10:50', NULL),
(74, 10, 7, 'S', 1, 0, 0, 0, '0', '1', '2021-03-01 04:54:40', '2021-03-01 07:55:21', '2021-03-01 07:55:21'),
(75, 10, 8, 'S', 1, 0, 0, 0, '0', '1', '2021-03-01 04:54:44', '2021-03-01 07:55:20', '2021-03-01 07:55:20'),
(76, 10, 9, 'S', 1, 0, 0, 0, '0', '1', '2021-03-01 04:55:00', '2021-03-01 07:55:18', '2021-03-01 07:55:18'),
(77, 10, 16, 'S', 4, 0, 0, 0, '0', '2', '2021-03-01 04:58:43', '2021-03-03 13:55:09', '2021-03-03 13:55:09'),
(78, 10, 11, 'S', 1, 0, 0, 0, '0', '2', '2021-03-01 05:34:51', '2021-03-01 12:29:09', '2021-03-01 12:29:09'),
(79, 10, 12, 'S', 1, 0, 0, 0, '0', '2', '2021-03-01 05:39:05', '2021-03-03 14:15:11', '2021-03-03 14:15:11'),
(80, 10, 11, 'XL', 3, 0, 0, 0, '0', '2', '2021-03-01 05:49:55', '2021-03-01 12:29:09', '2021-03-01 12:29:09'),
(81, 10, 1, 'S', 1, 0, 0, 0, '0', '2', '2021-03-01 05:53:20', '2021-03-02 08:02:13', '2021-03-02 08:02:13'),
(82, 10, 16, 'L', 1, 0, 0, 0, '0', '2', '2021-03-01 07:27:49', '2021-03-03 13:55:09', '2021-03-03 13:55:09'),
(83, 10, 15, 'XXL', 2, 0, 0, 0, '0', '2', '2021-03-01 07:28:47', '2021-03-01 10:33:23', NULL),
(84, 10, 13, 'S', 4, 0, 0, 0, '0', '2', '2021-03-01 07:31:36', '2021-03-03 14:16:56', '2021-03-03 14:16:56'),
(85, 10, 12, 'S', 2, 0, 0, 0, '0', '2', '2021-03-01 07:32:16', '2021-03-03 14:15:11', '2021-03-03 14:15:11'),
(86, 10, 14, 'S', 1, 0, 0, 0, '0', '2', '2021-03-01 07:45:11', '2021-03-01 11:04:27', NULL),
(87, 10, 8, 'S', 1, 0, 0, 0, '0', '2', '2021-03-01 07:45:22', '2021-03-03 14:15:20', '2021-03-03 14:15:20'),
(88, 10, 7, 'XL', 2, 0, 0, 0, '0', '2', '2021-03-01 07:45:38', '2021-03-03 13:53:47', '2021-03-03 13:53:47'),
(89, 10, 7, 'S', 1, 0, 0, 0, '0', '2', '2021-03-01 07:45:40', '2021-03-03 13:53:47', '2021-03-03 13:53:47'),
(90, 10, 10, 'S', 1, 0, 0, 0, '0', '2', '2021-03-01 07:46:06', '2021-03-07 13:42:55', '2021-03-07 13:42:55'),
(91, 10, 9, 'S', 1, 0, 0, 0, '0', '2', '2021-03-01 07:57:17', '2021-03-04 08:10:37', '2021-03-04 08:10:37'),
(92, 10, 11, 'S', 1, 0, 0, 0, '0', '2', '2021-03-01 08:14:41', '2021-03-01 12:29:09', '2021-03-01 12:29:09'),
(93, 10, 12, 'S', 1, 0, 0, 0, '0', '2', '2021-03-01 08:16:59', '2021-03-03 14:15:11', '2021-03-03 14:15:11'),
(94, 10, 6, 'S', 1, 0, 0, 0, '0', '2', '2021-03-01 08:17:55', '2021-03-04 08:10:50', NULL),
(95, 10, 9, 'S', 1, 0, 0, 0, '0', '2', '2021-03-01 08:26:21', '2021-03-04 08:10:37', '2021-03-04 08:10:37'),
(96, 10, 10, 'S', 1, 0, 0, 0, '0', '2', '2021-03-01 08:26:30', '2021-03-07 13:42:55', '2021-03-07 13:42:55'),
(97, 10, 15, 'S', 11, 0, 0, 0, '0', '2', '2021-03-01 08:26:50', '2021-03-01 11:33:46', NULL),
(98, 10, 17, 'S', 1, 0, 0, 0, '0', '2', '2021-03-01 08:33:03', '2021-03-03 14:15:22', '2021-03-03 14:15:22'),
(99, 10, 18, 'XXL', 4, 0, 0, 0, '0', '2', '2021-03-01 08:33:22', '2021-03-01 19:49:32', '2021-03-01 19:49:32'),
(100, 10, 11, 'S', 1, 0, 0, 0, '0', '1', '2021-03-01 08:37:50', '2021-03-01 12:29:09', '2021-03-01 12:29:09'),
(101, 10, 11, 'XXL', 7, 0, 0, 0, '0', '1', '2021-03-01 09:28:15', '2021-03-01 12:29:09', '2021-03-01 12:29:09'),
(102, 10, 11, 'S', 1, 0, 0, 0, '0', '2', '2021-03-01 09:29:35', '2021-03-01 19:45:53', '2021-03-01 19:45:53'),
(103, 10, 19, 'S', 3, 0, 0, 0, '0', '2', '2021-03-01 09:53:52', '2021-03-03 14:40:08', '2021-03-03 14:40:08'),
(104, 10, 14, 'S', 1, 0, 0, 0, '0', '2', '2021-03-01 09:54:47', '2021-03-01 13:47:32', NULL),
(105, 10, 15, 'XXL', 1, 0, 0, 0, '0', '2', '2021-03-01 09:54:57', '2021-03-01 13:47:32', NULL),
(106, 10, 15, 'L', 1, 0, 0, 0, '0', '2', '2021-03-01 09:55:03', '2021-03-01 13:47:32', NULL),
(107, 10, 11, 'S', 1, 0, 0, 0, '0', '2', '2021-03-01 10:48:33', '2021-03-01 19:45:53', '2021-03-01 19:45:53'),
(108, 10, 1, 'S', 1, 0, 0, 0, '0', '2', '2021-03-01 10:58:39', '2021-03-02 08:02:13', '2021-03-02 08:02:13'),
(109, 10, 2, 'S', 1, 0, 0, 0, '0', '1', '2021-03-01 11:20:04', '2021-03-01 19:45:50', '2021-03-01 19:45:50'),
(110, 10, 11, 'S', 1, 0, 0, 0, '0', '1', '2021-03-01 12:33:27', '2021-03-01 19:45:53', '2021-03-01 19:45:53'),
(111, 10, 4, 'S', 1, 0, 0, 0, '0', '1', '2021-03-01 16:32:21', '2021-03-01 19:45:56', '2021-03-01 19:45:56'),
(112, 10, 5, 'S', 7, 0, 0, 0, '0', '1', '2021-03-01 16:32:30', '2021-03-01 19:46:00', '2021-03-01 19:46:00'),
(113, 74, 11, 'S', 1, 0, 0, 0, '0', '2', '2021-03-01 16:40:15', '2021-03-03 17:44:54', '2021-03-03 17:44:54'),
(114, 74, 12, 'XXL', 2, 0, 0, 0, '0', '2', '2021-03-01 16:40:27', '2021-03-04 18:52:22', '2021-03-04 18:52:22'),
(115, 74, 15, 'S', 1, 0, 0, 0, '0', '2', '2021-03-01 16:40:41', '2021-03-03 17:44:57', '2021-03-03 17:44:57'),
(116, 10, 11, 'S', 1, 0, 0, 0, '0', '2', '2021-03-01 16:46:30', '2021-03-02 08:01:06', '2021-03-02 08:01:06'),
(117, 10, 13, 'L', 2, 0, 0, 0, '0', '2', '2021-03-01 16:46:55', '2021-03-03 14:16:56', '2021-03-03 14:16:56'),
(118, 10, 4, 'S', 3, 0, 0, 0, '0', '2', '2021-03-01 16:47:09', '2021-03-03 13:53:49', '2021-03-03 13:53:49'),
(119, 10, 15, 'S', 1, 0, 0, 0, '0', '2', '2021-03-01 16:47:29', '2021-03-01 19:48:44', NULL),
(120, 10, 18, 'XXL', 1, 0, 0, 0, '0', '1', '2021-03-01 16:49:22', '2021-03-01 19:49:32', '2021-03-01 19:49:32'),
(121, 74, 8, 'M', 3, 0, 0, 0, '0', '1', '2021-03-01 17:52:44', '2021-03-02 07:13:26', '2021-03-02 07:13:26'),
(122, 74, 11, 'XXL', 2, 0, 0, 0, '0', '2', '2021-03-02 04:13:55', '2021-03-03 17:44:54', '2021-03-03 17:44:54'),
(123, 74, 13, 'S', 2, 0, 0, 0, '0', '2', '2021-03-02 04:14:03', '2021-03-04 18:52:16', '2021-03-04 18:52:16'),
(124, 74, 15, 'S', 1, 0, 0, 0, '0', '2', '2021-03-02 04:14:18', '2021-03-03 17:44:57', '2021-03-03 17:44:57'),
(125, 10, 11, 'S', 1, 0, 0, 0, '0', '1', '2021-03-02 04:55:33', '2021-03-02 08:01:06', '2021-03-02 08:01:06'),
(126, 67, 6, 'S', 1, 0, 0, 0, '0', '1', '2021-03-02 05:01:31', '2021-03-02 08:01:37', '2021-03-02 08:01:37'),
(127, 10, 1, 'S', 1, 0, 0, 0, '0', '1', '2021-03-02 05:02:10', '2021-03-02 08:02:13', '2021-03-02 08:02:13'),
(128, 74, 11, 'XXL', 1, 0, 0, 0, '0', '2', '2021-03-02 08:41:35', '2021-03-03 17:44:54', '2021-03-03 17:44:54'),
(129, 74, 13, 'S', 2, 0, 0, 0, '0', '2', '2021-03-02 08:41:41', '2021-03-04 18:52:16', '2021-03-04 18:52:16'),
(130, 74, 14, 'S', 1, 0, 0, 0, '0', '2', '2021-03-02 08:42:13', '2021-03-04 18:52:10', '2021-03-04 18:52:10'),
(131, 74, 11, 'L', 2, 0, 0, 0, '0', '2', '2021-03-02 14:12:50', '2021-03-03 17:44:54', '2021-03-03 17:44:54'),
(132, 74, 14, 'S', 1, 0, 0, 0, '0', '2', '2021-03-02 14:12:57', '2021-03-04 18:52:10', '2021-03-04 18:52:10'),
(133, 74, 2, 'S', 1, 0, 0, 0, '0', '1', '2021-03-02 14:13:04', '2021-03-02 17:13:58', '2021-03-02 17:13:58'),
(134, 74, 10, 'S', 4, 0, 0, 0, '0', '2', '2021-03-02 14:13:21', '2021-03-03 17:47:15', '2021-03-03 17:47:15'),
(135, 10, 2, 'M', 1, 0, 0, 0, '0', '1', '2021-03-03 05:09:14', '2021-03-03 08:16:56', '2021-03-03 08:16:56'),
(136, 10, 7, 'S', 1, 0, 0, 0, '0', '1', '2021-03-03 05:09:19', '2021-03-03 13:53:47', '2021-03-03 13:53:47'),
(137, 10, 4, 'S', 1, 0, 0, 0, '0', '1', '2021-03-03 05:16:09', '2021-03-03 13:53:49', '2021-03-03 13:53:49'),
(138, 74, 11, 'S', 4, 0, 0, 0, '0', '1', '2021-03-03 05:18:30', '2021-03-03 17:44:54', '2021-03-03 17:44:54'),
(139, 74, 15, 'S', 1, 0, 0, 0, '0', '1', '2021-03-03 05:19:09', '2021-03-03 17:44:57', '2021-03-03 17:44:57'),
(140, 10, 16, 'L', 1, 0, 0, 0, '0', '1', '2021-03-03 10:47:37', '2021-03-03 13:55:09', '2021-03-03 13:55:09'),
(141, 10, 16, 'S', 4, 0, 0, 0, '0', '1', '2021-03-03 10:47:45', '2021-03-03 13:55:09', '2021-03-03 13:55:09'),
(142, 10, 17, 'S', 1, 0, 0, 0, '0', '1', '2021-03-03 10:53:19', '2021-03-03 14:15:22', '2021-03-03 14:15:22'),
(143, 10, 5, 'S', 1, 0, 0, 0, '0', '1', '2021-03-03 10:56:11', '2021-03-03 14:15:13', '2021-03-03 14:15:13'),
(144, 10, 11, 'S', 1, 0, 0, 0, '0', '1', '2021-03-03 10:56:28', '2021-03-03 14:15:12', '2021-03-03 14:15:12'),
(145, 10, 12, 'S', 1, 0, 0, 0, '0', '1', '2021-03-03 10:56:36', '2021-03-03 14:15:11', '2021-03-03 14:15:11'),
(146, 10, 8, 'S', 1, 0, 0, 0, '0', '1', '2021-03-03 10:58:25', '2021-03-03 14:15:20', '2021-03-03 14:15:20'),
(147, 10, 13, 'XL', 6, 0, 0, 0, '0', '1', '2021-03-03 11:16:09', '2021-03-03 14:16:56', '2021-03-03 14:16:56'),
(148, 10, 3, 'S', 1, 0, 0, 0, '0', '1', '2021-03-03 11:16:15', '2021-03-03 14:16:50', '2021-03-03 14:16:50'),
(149, 10, 20, 'XXL', 6, 0, 0, 0, '0', '1', '2021-03-03 11:16:34', '2021-03-03 14:16:55', '2021-03-03 14:16:55'),
(150, 10, 13, 'XL', 6, 0, 0, 0, '0', '2', '2021-03-03 11:17:15', '2021-03-07 13:41:54', '2021-03-07 13:41:54'),
(151, 10, 2, 'M', 6, 0, 0, 0, '0', '2', '2021-03-03 11:18:01', '2021-03-07 13:41:57', '2021-03-07 13:41:57'),
(152, 10, 4, 'S', 1, 0, 0, 0, '0', '1', '2021-03-03 11:18:29', '2021-03-03 14:18:34', '2021-03-03 14:18:34'),
(153, 10, 16, 'S', 1, 0, 0, 0, '0', '1', '2021-03-03 11:36:57', '2021-03-03 14:42:25', '2021-03-03 14:42:25'),
(154, 10, 17, 'S', 1, 0, 0, 0, '0', '1', '2021-03-03 11:37:02', '2021-03-03 14:42:24', '2021-03-03 14:42:24'),
(155, 10, 18, 'S', 1, 0, 0, 0, '0', '1', '2021-03-03 11:37:03', '2021-03-03 14:42:23', '2021-03-03 14:42:23'),
(156, 10, 20, 'S', 1, 0, 0, 0, '0', '1', '2021-03-03 11:37:07', '2021-03-03 14:42:23', '2021-03-03 14:42:23'),
(157, 10, 4, 'S', 1, 0, 0, 0, '0', '1', '2021-03-03 11:37:17', '2021-03-03 14:45:57', '2021-03-03 14:45:57'),
(158, 10, 19, 'S', 1, 0, 0, 0, '0', '1', '2021-03-03 11:37:28', '2021-03-03 14:40:08', '2021-03-03 14:40:08'),
(159, 10, 5, 'S', 1, 0, 0, 0, '0', '1', '2021-03-03 11:39:58', '2021-03-03 14:45:55', '2021-03-03 14:45:55'),
(160, 10, 19, 'S', 1, 0, 0, 0, '0', '1', '2021-03-03 11:40:14', '2021-03-03 14:42:28', '2021-03-03 14:42:28'),
(161, 10, 16, 'S', 1, 0, 0, 0, '0', '1', '2021-03-03 11:42:40', '2021-03-03 14:45:54', '2021-03-03 14:45:54'),
(162, 10, 16, 'S', 1, 0, 0, 0, '0', '1', '2021-03-03 11:46:03', '2021-03-03 14:46:05', '2021-03-03 14:46:05'),
(163, 10, 16, 'S', 1, 0, 0, 0, '0', '1', '2021-03-03 11:49:15', '2021-03-03 18:25:45', '2021-03-03 18:25:45'),
(164, 74, 8, 'S', 1, 0, 0, 0, '0', '2', '2021-03-03 14:44:42', '2021-03-03 17:57:26', NULL),
(165, 74, 10, 'S', 1, 0, 0, 0, '0', '1', '2021-03-03 14:47:10', '2021-03-03 17:47:15', '2021-03-03 17:47:15'),
(166, 10, 4, 'S', 8, 0, 0, 0, '0', '1', '2021-03-03 14:59:44', '2021-03-03 18:20:50', '2021-03-03 18:20:50'),
(167, 10, 4, 'L', 2, 0, 0, 0, '0', '1', '2021-03-03 15:00:03', '2021-03-03 18:20:50', '2021-03-03 18:20:50'),
(168, 10, 11, 'S', 6, 0, 0, 0, '0', '1', '2021-03-03 15:18:15', '2021-03-03 18:39:19', '2021-03-03 18:39:19'),
(169, 10, 17, 'S', 1, 0, 0, 0, '0', '1', '2021-03-03 15:19:35', '2021-03-03 18:25:47', '2021-03-03 18:25:47'),
(170, 10, 17, 'XXL', 1, 0, 0, 0, '0', '1', '2021-03-03 15:21:45', '2021-03-03 18:25:47', '2021-03-03 18:25:47'),
(171, 10, 16, 'XXL', 1, 0, 0, 0, '0', '1', '2021-03-03 15:25:36', '2021-03-03 18:25:45', '2021-03-03 18:25:45'),
(172, 10, 17, 'S', 2, 0, 0, 0, '0', '1', '2021-03-03 15:26:18', '2021-03-03 18:36:46', '2021-03-03 18:36:46'),
(173, 10, 16, 'S', 2, 0, 0, 0, '0', '2', '2021-03-03 15:39:40', '2021-03-03 18:44:27', NULL),
(174, 10, 1, 'S', 1, 0, 0, 0, '0', '2', '2021-03-03 15:40:24', '2021-03-03 18:58:30', '2021-03-03 18:58:30'),
(175, 10, 2, 'S', 1, 0, 0, 0, '0', '2', '2021-03-03 15:40:33', '2021-03-07 13:41:57', '2021-03-07 13:41:57'),
(176, 10, 11, 'S', 1, 0, 0, 0, '0', '2', '2021-03-03 15:45:12', '2021-03-06 12:33:17', '2021-03-06 12:33:17'),
(177, 10, 11, 'S', 1, 0, 0, 0, '0', '2', '2021-03-03 15:47:39', '2021-03-06 12:33:17', '2021-03-06 12:33:17'),
(178, 10, 12, 'S', 1, 0, 0, 0, '0', '2', '2021-03-03 15:48:00', '2021-03-03 18:52:49', NULL),
(179, 10, 1, 'S', 1, 0, 0, 0, '0', '2', '2021-03-03 15:48:22', '2021-03-03 18:58:30', '2021-03-03 18:58:30'),
(180, 10, 2, 'S', 1, 0, 0, 0, '0', '2', '2021-03-03 15:50:04', '2021-03-07 13:41:57', '2021-03-07 13:41:57'),
(181, 10, 3, 'S', 1, 0, 0, 0, '0', '2', '2021-03-03 15:50:49', '2021-03-07 13:41:53', '2021-03-07 13:41:53'),
(182, 10, 1, 'S', 1, 0, 0, 0, '0', '2', '2021-03-03 15:53:07', '2021-03-03 18:58:30', '2021-03-03 18:58:30'),
(183, 10, 1, 'S', 1, 0, 0, 0, '0', '1', '2021-03-03 15:58:13', '2021-03-03 18:58:30', '2021-03-03 18:58:30'),
(184, 10, 6, 'S', 1, 0, 0, 0, '0', '2', '2021-03-04 05:10:23', '2021-03-04 09:40:49', NULL),
(185, 10, 9, 'S', 1, 0, 0, 0, '0', '1', '2021-03-04 05:10:30', '2021-03-04 08:10:37', '2021-03-04 08:10:37'),
(186, 10, 12, 'S', 1, 0, 0, 0, '0', '2', '2021-03-04 05:13:50', '2021-03-04 09:40:49', NULL),
(187, 10, 9, 'S', 1, 0, 0, 0, '0', '1', '2021-03-04 05:13:57', '2021-03-04 08:14:00', '2021-03-04 08:14:00'),
(188, 10, 2, 'S', 1, 0, 0, 0, '0', '2', '2021-03-04 06:45:09', '2021-03-07 13:41:57', '2021-03-07 13:41:57'),
(189, 10, 18, 'S', 1, 0, 0, 0, '0', '2', '2021-03-04 10:17:29', '2021-03-04 13:25:40', NULL),
(190, 10, 19, 'S', 1, 0, 0, 0, '0', '2', '2021-03-04 10:17:42', '2021-03-04 13:25:40', NULL),
(191, 10, 3, 'S', 1, 0, 0, 0, '0', '2', '2021-03-04 10:18:15', '2021-03-07 13:41:53', '2021-03-07 13:41:53'),
(192, 10, 1, 'S', 1, 0, 0, 0, '0', '2', '2021-03-04 10:26:04', '2021-03-06 12:33:18', '2021-03-06 12:33:18'),
(193, 10, 1, 'S', 1, 0, 0, 0, '0', '1', '2021-03-04 10:45:48', '2021-03-06 12:33:18', '2021-03-06 12:33:18'),
(194, 74, 11, 'S', 1, 0, 0, 0, '0', '1', '2021-03-04 10:55:05', '2021-03-04 18:52:24', '2021-03-04 18:52:24'),
(195, 74, 12, 'S', 1, 0, 0, 0, '0', '1', '2021-03-04 10:55:15', '2021-03-04 18:52:22', '2021-03-04 18:52:22'),
(196, 74, 13, 'S', 3, 0, 0, 0, '0', '1', '2021-03-04 10:55:38', '2021-03-04 18:52:16', '2021-03-04 18:52:16'),
(197, 74, 14, 'S', 6, 0, 0, 0, '0', '1', '2021-03-04 10:56:22', '2021-03-04 18:52:10', '2021-03-04 18:52:10'),
(198, 74, 15, 'S', 1, 0, 0, 0, '0', '1', '2021-03-04 10:56:40', '2021-03-04 14:20:15', '2021-03-04 14:20:15'),
(199, 74, 13, 'XL', 4, 0, 0, 0, '0', '1', '2021-03-04 15:25:46', '2021-03-04 18:52:16', '2021-03-04 18:52:16'),
(200, 74, 15, 'S', 1, 0, 0, 0, '0', '1', '2021-03-04 15:28:27', '2021-03-04 18:52:12', '2021-03-04 18:52:12'),
(201, 74, 15, 'XL', 1, 0, 0, 0, '0', '1', '2021-03-04 15:28:36', '2021-03-04 18:52:12', '2021-03-04 18:52:12'),
(202, 74, 15, 'M', 1, 0, 0, 0, '0', '1', '2021-03-04 15:28:55', '2021-03-04 18:52:12', '2021-03-04 18:52:12'),
(203, 74, 14, 'XXL', 6, 0, 0, 0, '0', '1', '2021-03-04 15:29:21', '2021-03-04 18:52:10', '2021-03-04 18:52:10'),
(204, 74, 11, 'S', 1, 0, 0, 0, '0', '1', '2021-03-04 15:52:33', '2021-03-04 19:17:36', '2021-03-04 19:17:36'),
(205, 74, 15, 'S', 1, 0, 0, 0, '0', '1', '2021-03-04 16:13:31', '2021-03-04 19:17:34', '2021-03-04 19:17:34'),
(206, 74, 11, 'S', 5, 0, 0, 0, '0', '1', '2021-03-04 16:17:48', '2021-03-04 19:18:22', NULL),
(207, 10, 11, 'S', 1, 0, 0, 0, '0', '1', '2021-03-05 08:43:33', '2021-03-06 12:33:17', '2021-03-06 12:33:17'),
(208, 67, 16, 'S', 1, 0, 0, 0, '0', '1', '2021-03-06 05:52:35', '2021-03-06 09:02:34', '2021-03-06 09:02:34'),
(209, 67, 19, 'S', 1, 0, 0, 0, '0', '1', '2021-03-06 05:52:39', '2021-03-06 09:01:58', '2021-03-06 09:01:58'),
(210, 67, 7, 'S', 1, 0, 0, 0, '0', '1', '2021-03-06 06:12:48', NULL, NULL),
(211, 67, 6, 'S', 1, 0, 0, 0, '0', '1', '2021-03-06 06:12:49', NULL, NULL),
(212, 67, 10, 'S', 1, 0, 0, 0, '0', '1', '2021-03-06 06:13:06', NULL, NULL),
(213, 10, 1, 'S', 1, 0, 0, 0, '0', '2', '2021-03-06 09:33:30', '2021-03-10 19:46:21', '2021-03-10 19:46:21'),
(214, 10, 4, 'M', 4, 0, 0, 0, '0', '2', '2021-03-06 16:38:38', '2021-03-06 19:39:43', NULL),
(215, 10, 5, 'S', 1, 0, 0, 0, '0', '2', '2021-03-06 16:38:44', '2021-03-06 19:41:51', '2021-03-06 19:41:51'),
(216, 10, 10, 'XL', 3, 0, 0, 0, '0', '2', '2021-03-06 16:38:56', '2021-03-07 13:42:55', '2021-03-07 13:42:55'),
(217, 10, 5, 'S', 1, 0, 0, 0, '0', '1', '2021-03-06 16:40:37', '2021-03-06 19:41:51', '2021-03-06 19:41:51'),
(218, 10, 8, 'S', 1, 0, 0, 0, '0', '1', '2021-03-06 16:41:40', '2021-03-06 19:41:52', '2021-03-06 19:41:52'),
(219, 10, 11, 'S', 1, 0, 0, 0, '0', '2', '2021-03-06 17:35:55', '2021-03-10 19:46:23', '2021-03-10 19:46:23'),
(220, 10, 2, 'S', 1, 0, 0, 0, '0', '2', '2021-03-07 09:20:23', '2021-03-07 13:41:57', '2021-03-07 13:41:57'),
(221, 10, 3, 'L', 5, 0, 0, 0, '0', '2', '2021-03-07 09:20:39', '2021-03-07 13:41:53', '2021-03-07 13:41:53'),
(222, 10, 5, 'S', 2, 0, 0, 0, '0', '2', '2021-03-07 09:38:41', '2021-03-07 13:41:55', '2021-03-07 13:41:55'),
(223, 112, 9, 'S', 1, 0, 0, 0, '0', '1', '2021-03-07 09:46:05', NULL, NULL),
(224, 112, 12, 'S', 1, 0, 0, 0, '0', '1', '2021-03-07 09:46:09', NULL, NULL),
(225, 112, 15, 'S', 1, 0, 0, 0, '0', '1', '2021-03-07 09:46:26', NULL, NULL),
(226, 10, 2, 'L', 1, 0, 0, 0, '0', '1', '2021-03-07 10:31:43', '2021-03-07 13:41:57', '2021-03-07 13:41:57'),
(227, 10, 2, 'S', 1, 0, 0, 0, '0', '1', '2021-03-07 10:31:55', '2021-03-07 13:41:57', '2021-03-07 13:41:57'),
(228, 10, 5, 'S', 1, 0, 0, 0, '0', '1', '2021-03-07 10:32:18', '2021-03-07 13:41:55', '2021-03-07 13:41:55'),
(229, 10, 13, 'S', 1, 0, 0, 0, '0', '1', '2021-03-07 10:41:18', '2021-03-07 13:41:54', '2021-03-07 13:41:54'),
(230, 10, 3, 'L', 4, 0, 0, 0, '0', '1', '2021-03-07 10:41:38', '2021-03-07 13:41:53', '2021-03-07 13:41:53'),
(231, 10, 7, 'S', 1, 0, 0, 0, '0', '1', '2021-03-07 10:42:35', '2021-03-07 13:42:52', '2021-03-07 13:42:52'),
(232, 10, 10, 'S', 1, 0, 0, 0, '0', '1', '2021-03-07 10:42:44', '2021-03-07 13:42:55', '2021-03-07 13:42:55'),
(233, 10, 9, 'S', 1, 0, 0, 0, '0', '1', '2021-03-07 10:42:48', '2021-03-07 13:50:15', '2021-03-07 13:50:15'),
(234, 10, 1, 'S', 1, 0, 0, 0, '0', '2', '2021-03-07 15:09:42', '2021-03-10 19:46:21', '2021-03-10 19:46:21'),
(235, 10, 5, 'S', 1, 0, 0, 0, '0', '1', '2021-03-08 14:32:12', '2021-03-08 17:32:16', '2021-03-08 17:32:16'),
(236, 10, 7, 'S', 1, 0, 0, 0, '0', '2', '2021-03-09 13:04:05', '2021-03-09 16:25:23', '2021-03-09 16:25:23'),
(237, 10, 8, 'XL', 4, 0, 0, 0, '0', '2', '2021-03-09 13:04:34', '2021-03-09 16:11:25', NULL),
(238, 10, 8, 'S', 1, 0, 0, 0, '0', '2', '2021-03-09 13:08:47', '2021-03-09 16:11:25', NULL),
(239, 10, 6, 'S', 1, 0, 0, 0, '0', '2', '2021-03-09 13:19:33', '2021-03-09 16:20:25', NULL),
(240, 10, 9, 'S', 1, 0, 0, 0, '0', '2', '2021-03-09 13:20:03', '2021-03-09 16:20:25', NULL),
(241, 10, 7, 'XXL', 2, 0, 0, 0, '0', '1', '2021-03-09 13:25:14', '2021-03-09 16:25:23', '2021-03-09 16:25:23'),
(242, 10, 7, 'S', 2, 0, 0, 0, '0', '1', '2021-03-09 13:25:30', '2021-03-10 19:46:27', '2021-03-10 19:46:27'),
(243, 10, 1, 'S', 1, 0, 0, 0, '0', '1', '2021-03-09 13:41:59', '2021-03-10 19:46:21', '2021-03-10 19:46:21'),
(244, 10, 11, 'S', 1, 0, 0, 0, '0', '1', '2021-03-09 15:39:41', '2021-03-10 19:46:23', '2021-03-10 19:46:23'),
(245, 10, 1, 'M', 20, 0, 0, 0, '0', '1', '2021-03-09 17:20:28', '2021-03-10 19:46:21', '2021-03-10 19:46:21'),
(246, 10, 32, 'S', 1, 0, 0, 0, '0', '1', '2021-03-10 17:12:31', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `cover_image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1=>active, 2=>in-active, 3=>deleted',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `title`, `short_description`, `description`, `cover_image`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Kids', 'Fine Arts', '<p>test category 2 short description</p>', '<p>test category 2 description</p>', 'download_2.jpg', 1, '2019-12-11 11:29:33', '2021-02-13 08:07:37', NULL),
(2, 'Female', 'Fine Arts', '<p>test category 2 short description</p>', '<p>test category 2 description</p>', 'download_2.jpg', 1, '2019-12-11 11:29:33', '2021-02-13 08:07:37', NULL),
(3, 'Male', 'Fine Arts', '<p>test category 2 short description</p>', '<p>test category 2 description</p>', 'download_2.jpg', 1, '2019-12-11 11:29:33', '2021-02-26 17:21:01', NULL),
(4, 'Women Personal', 'Fine Arts', '<p>test category 2 short description</p>', '<p>test category 2 description</p>', 'download_2.jpg', 1, '2019-12-11 11:29:33', '2021-02-26 18:03:14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `code` varchar(100) NOT NULL,
  `pharmacy` varchar(255) NOT NULL DEFAULT 'Apollo Pharmacy',
  `logo` varchar(255) NOT NULL DEFAULT 'defaultlogo.jpg',
  `description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `category_id`, `code`, `pharmacy`, `logo`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, '65tVfE', 'Apollo Pharmacy', 'defaultlogo.png', NULL, '2021-01-31 17:33:52', NULL, NULL),
(2, 1, 'yASo1O', 'Apollo Pharmacy', 'defaultlogo.png', NULL, '2021-01-31 17:34:05', NULL, NULL),
(3, 1, 'EMdXKH', 'Apollo Pharmacy', 'defaultlogo.png', NULL, '2021-01-31 17:34:10', NULL, NULL),
(4, 1, 'DKO6G5', 'Apollo Pharmacy', 'defaultlogo.png', NULL, '2021-01-31 17:34:14', NULL, NULL),
(5, 2, 'upHwnQ', 'Apollo Pharmacy', 'defaultlogo.png', NULL, '2021-01-31 17:34:18', NULL, NULL),
(6, 2, 'ut61qC', 'Apollo Pharmacy', 'defaultlogo.png', NULL, '2021-01-31 17:34:19', NULL, NULL),
(7, 2, 'htwlBR', 'Apollo Pharmacy', 'defaultlogo.png', NULL, '2021-01-31 17:34:19', NULL, NULL),
(8, 2, '3O2Pm3', 'Apollo Pharmacy', 'defaultlogo.png', NULL, '2021-01-31 17:34:20', NULL, NULL),
(9, 3, 'kGQQ4G', 'Apollo Pharmacy', 'defaultlogo.png', NULL, '2021-01-31 17:34:23', NULL, NULL),
(10, 3, 'HQAyrv', 'Apollo Pharmacy', 'defaultlogo.png', NULL, '2021-01-31 17:34:24', NULL, NULL),
(11, 3, 'ELR41e', 'Apollo Pharmacy', 'defaultlogo.png', NULL, '2021-01-31 17:34:25', NULL, NULL),
(12, 3, 'nGXOsP', 'Apollo Pharmacy', 'defaultlogo.png', NULL, '2021-01-31 17:34:25', NULL, NULL),
(13, 4, '74rZBQ', 'Apollo Pharmacy', 'defaultlogo.png', NULL, '2021-01-31 17:34:28', NULL, NULL),
(14, 4, '6knO6u', 'Apollo Pharmacy', 'defaultlogo.png', NULL, '2021-01-31 17:34:29', NULL, NULL),
(15, 4, 'W5weXF', 'Apollo Pharmacy', 'defaultlogo.png', NULL, '2021-01-31 17:34:30', NULL, NULL),
(16, 4, 'TdqbJ6', 'Apollo Pharmacy', 'defaultlogo.png', NULL, '2021-01-31 17:34:31', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `drugs`
--

CREATE TABLE `drugs` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `drug_name` varchar(255) NOT NULL,
  `diagnosis` varchar(100) NOT NULL,
  `per_day_dose` varchar(100) NOT NULL,
  `date` date NOT NULL DEFAULT '2021-02-07',
  `30_day_dose` varchar(100) NOT NULL,
  `notes` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `drugs`
--

INSERT INTO `drugs` (`id`, `user_id`, `drug_name`, `diagnosis`, `per_day_dose`, `date`, `30_day_dose`, `notes`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 10, 'D00001', 'Diabetes', '10MG', '2021-02-07', '30', 'Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.', '2021-02-07 13:47:26', NULL, NULL),
(2, 10, 'D00002', 'Diabetes', '10MG', '2021-02-07', '30', 'Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.', '2021-02-07 13:47:26', NULL, NULL),
(3, 10, 'D00003', 'Diabetes', '10MG', '2021-02-07', '30', 'Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.', '2021-02-07 13:47:26', NULL, NULL),
(4, 10, 'D00004', 'Diabetes', '10MG', '2021-02-07', '30', 'Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.', '2021-02-07 13:47:26', '2021-02-07 11:48:24', '2021-02-07 11:48:24'),
(5, 10, 'D00005', 'Diabetes', '10MG', '2021-02-07', '30', 'Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.', '2021-02-07 13:47:26', NULL, NULL),
(6, 10, 'D00006', 'Diabetes', '10MG', '2021-02-07', '30', 'Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.', '2021-02-07 13:47:26', NULL, NULL),
(7, 10, 'D00007', 'Diabetes', '10MG', '2021-02-07', '30', 'Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.', '2021-02-07 13:47:26', NULL, NULL),
(8, 10, 'D00008', 'Diabetes', '10MG', '2021-02-07', '30', 'Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.', '2021-02-07 13:47:26', NULL, NULL),
(9, 10, 'D00009', 'Diabetes', '10MG', '2021-02-07', '30', 'Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.', '2021-02-07 13:47:26', NULL, NULL),
(10, 10, 'D000010', 'Diabetes', '10MG', '2021-02-07', '30', 'Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.', '2021-02-07 13:47:26', NULL, NULL),
(11, 10, 'D000011', 'Diabetes', '10MG', '2021-02-07', '30', 'Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.', '2021-02-07 13:47:26', NULL, NULL),
(12, 10, 'D000012', 'Diabetes', '10MG', '2021-02-07', '30', 'Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.', '2021-02-07 13:47:26', NULL, NULL),
(13, 10, 'D000013', 'Diabetes', '10MG', '2021-02-07', '30', 'Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.', '2021-02-07 13:47:26', NULL, NULL),
(14, 10, 'D000014', 'Diabetes', '10MG', '2021-02-07', '30', 'Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.', '2021-02-07 13:47:26', NULL, NULL),
(15, 10, 'D000015', 'Diabetes', '10MG', '2021-02-07', '30', 'Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.', '2021-02-07 13:47:26', NULL, NULL),
(16, 10, 'D000016', 'Diabetes', '10MG', '2021-02-07', '30', 'Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.', '2021-02-07 13:47:26', NULL, NULL),
(17, 10, 'D000017', 'Diabetes', '10MG', '2021-02-07', '30', 'Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.', '2021-02-07 13:47:26', NULL, NULL),
(18, 10, 'D000018', 'Diabetes', '10MG', '2021-02-07', '30', 'Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.', '2021-02-07 13:47:26', NULL, NULL),
(19, 10, 'D000019', 'Diabetes', '10MG', '2021-02-07', '30', 'Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.', '2021-02-07 13:47:26', NULL, NULL),
(20, 10, 'D000020', 'Diabetes', '10MG', '2021-02-07', '30', 'Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.', '2021-02-07 13:47:26', NULL, NULL),
(21, 10, 'D000021', 'Diabetes', '10MG', '2021-02-07', '30', 'Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.', '2021-02-07 13:47:26', NULL, NULL),
(22, 10, 'D000022', 'Diabetes', '10MG', '2021-02-07', '30', 'Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.', '2021-02-07 13:47:26', NULL, NULL),
(23, 10, 'D000023', 'Diabetes', '10MG', '2021-02-07', '30', 'Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.', '2021-02-07 13:47:26', NULL, NULL),
(24, 10, 'D000024', 'Diabetes', '10MG', '2021-02-07', '30', 'Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.', '2021-02-07 13:47:26', NULL, NULL),
(25, 10, 'D000025', 'Diabetes', '10MG', '2021-02-07', '30', 'Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.', '2021-02-07 13:47:26', NULL, NULL),
(26, 10, 'D000026', 'Diabetes', '10MG', '2021-02-07', '30', 'Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.', '2021-02-07 13:47:26', NULL, NULL),
(27, 10, 'D000027', 'Diabetes', '10MG', '2021-02-07', '30', 'Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.', '2021-02-07 13:47:26', NULL, NULL),
(28, 10, 'D000028', 'Diabetes', '10MG', '2021-02-07', '30', 'Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.', '2021-02-07 13:47:26', NULL, NULL),
(29, 10, 'D0000229', 'Diabetes', '10MG', '2021-02-07', '30', 'Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.', '2021-02-07 13:47:26', NULL, NULL),
(30, 10, 'D000030', 'Diabetes', '10MG', '2021-02-07', '30', 'Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.', '2021-02-07 13:47:26', NULL, NULL),
(31, 10, 'D000031', 'Diabetes', '10MG', '2021-02-07', '30', 'Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.', '2021-02-07 13:47:26', NULL, NULL),
(32, 10, 'D000032', 'Diabetes', '10MG', '2021-02-07', '30', 'Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.', '2021-02-07 13:47:26', NULL, NULL),
(33, 10, 'D000033', 'Diabetes', '10MG', '2021-02-07', '30', 'Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.', '2021-02-07 13:47:26', NULL, NULL),
(34, 10, 'D000034', 'Diabetes', '10MG', '2021-02-07', '30', 'Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.', '2021-02-07 13:47:26', NULL, NULL),
(35, 10, 'D000035', 'Diabetes', '10MG', '2021-02-07', '30', 'Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.', '2021-02-07 13:47:26', NULL, NULL),
(36, 10, 'D000036', 'Diabetes', '10MG', '2021-02-07', '30', 'Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.', '2021-02-07 13:47:26', NULL, NULL),
(37, 10, 'D000037', 'Diabetes', '10MG', '2021-02-07', '30', 'Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.', '2021-02-07 13:47:26', NULL, NULL),
(38, 10, 'D000038', 'Diabetes', '10MG', '2021-02-07', '30', 'Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.', '2021-02-07 13:47:26', NULL, NULL),
(39, 10, 'D000039', 'Diabetes', '10MG', '2021-02-07', '30', 'Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.', '2021-02-07 13:47:26', NULL, NULL),
(40, 10, 'D000040', 'Diabetes', '10MG', '2021-02-07', '30', 'Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.', '2021-02-07 13:47:26', NULL, NULL),
(41, 10, 'D000041', 'Diabetes', '10MG', '2021-02-07', '30', 'Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.', '2021-02-07 13:47:26', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mails`
--

CREATE TABLE `mails` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `data_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `writeable` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1=>yes, 2=>no',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1=>active, 2=>in-active, 3=>deleted',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mails`
--

INSERT INTO `mails` (`id`, `data_key`, `name`, `subject`, `content`, `writeable`, `status`, `created_at`, `updated_at`) VALUES
(1, 'FORGOT_PASSWORD', 'Qarint - Forgot password', 'Qarint - Forgot password', '<!-- Logo --><!-- Title -->\r\n<p>FORGOT PASSWORD</p>\r\n<!-- Messages -->\r\n\r\n<p>We have sent you this email in response to your request to reset your password on {SITE_NAME} After you reset your password, any credit card information stored in My Account will be deleted as a security measure.<br />\r\n<br />\r\nTo reset your password for <a href=&quot;{SITE_URL}>Change Password</a>, please follow the link below: {RESET_PASSWORD_LINK}<br />\r\n<br />\r\nWe recommend that you keep your password secure and not share it with anyone.If you feel your password has been compromised, you can change it by going to your {SITE_NAME} My Account Page and clicking on the &quot;Change Email Address or Password&quot; link.<br />\r\n<br />\r\nIf you need help, or you have any other questions, feel free to email {RECEIVER_EMAIL}, or call {SITE_NAME} customer service toll-free at {RECEIVER_CONTACT}.<br />\r\n<br />\r\n{SITE_NAME} Customer Service</p>', 2, 1, '2019-09-13 07:48:06', '2020-06-15 09:57:55'),
(2, 'INVITAION_REQUEST', 'Qarint - Invitation Request', 'Qarint - Invitation Request', '<!-- Logo --><!-- Title --><!-- Messages -->\r\n<p>We have sent you this email as an invitaion to join our site and to reset your password on {SITE_NAME}.<br />\r\n<br />\r\nTo reset your password for {SITE_URL}, please follow the link below: {RESET_PASSWORD_LINK}<br />\r\n<br />\r\nWe recommend that you keep your password secure and not share it with anyone.If you feel your password has been compromised, you can change it by going to your {SITE_NAME}</p>\r\n\r\n<p>My Account Page and clicking on the &quot;Change Email Address or Password&quot; link.<br />\r\n<br />\r\nIf you need help, or you have any other questions, feel free to contact an Admin.</p>\r\n\r\n<p>{SITE_NAME}</p>', 2, 1, '2019-09-13 07:48:06', '2020-01-09 09:54:03'),
(3, 'COURSE_REQUEST_MAIL', 'Course Request Mail', 'Course Request Mail', '<!-- Logo --><!-- Title -->\r\n<p>Course Request Notification</p>\r\n<!-- Messages -->\r\n\r\n<p>This notification is to inform you that&nbsp;Instructor&nbsp;{SENDER_FULL_NAME} has requested a&nbsp;new course {COURSE_NAME} in the {CATEGORY_NAME} category. Please review their&nbsp;request and take appropriate action:</p>\r\n\r\n<p><a href=\"https://qarint.appforgoogle.com/\">https://qarint.appforgoogle.com/</a><br />\r\n&nbsp;</p>', 2, 1, '2019-09-13 07:48:06', '2020-01-09 09:47:44'),
(4, 'COURSE_CANCEL_MAIL', 'Qarint - Course Cancel', 'Qarint - Course Cancel', '<!-- Logo --><!-- Title -->\r\n<p>This notification is sent&nbsp;to inform you that&nbsp;course {COURSE_NAME} under {CATEGORY_NAME} was cancelled.</p>\r\n<!-- Messages -->\r\n\r\n<p><br />\r\nPlease contact admin for further assistance.<br />\r\n<br />\r\n<br />\r\nRegards,</p>\r\n\r\n<p>{SITE_NAME}</p>', 2, 1, '2019-09-13 07:48:06', '2020-01-09 09:50:51'),
(7, 'COURSE_DOC_DELETE', 'Qarint - Course Document Deleted', 'Qarint - Course Document Deleted', '<p>Hi {RECEIVER_FULL_NAME},</p>\r\n\r\n<p>The file you have uploaded for {COURSE_NAME} is not valid. Please log in to your account to upload a new one:</p>\r\n\r\n<p><a href=\"https://qarint.appforgoogle.com/\">https://qarint.appforgoogle.com/</a></p>\r\n\r\n<p>Regards,</p>\r\n\r\n<p>{SITE_NAME}</p>', 2, 1, '2019-09-13 07:48:06', '2020-01-09 09:51:20'),
(8, 'STUDENT_DOC_DELETE', 'Qarint - Student Document delete', 'Qarint - Student Document delete', '<p>Hi {RECEIVER_FULL_NAME},</p>\r\n\r\n<p>An admin has deleted a student document. Please review your course info to ensure you have the proper documents uploaded:</p>\r\n\r\n<p><a href=\"https://qarint.appforgoogle.com/\">https://qarint.appforgoogle.com/</a></p>\r\n\r\n<p>Regards,</p>\r\n\r\n<p>{SITE_NAME}</p>\r\n\r\n<p>&nbsp;</p>', 2, 1, '2019-09-13 07:48:06', '2020-01-09 09:56:46'),
(9, 'PERMIT_DELETE', 'Qarint: Permit deleted', 'Qarint: Permit deleted', '<p>Hi {RECEIVER_FULL_NAME},</p>\r\n\r\n<p>An&nbsp;admin determined that&nbsp;your permit file for {COURSE_NAME} was not valid and deleted it.&nbsp;</p>\r\n\r\n<p>Please log in to your account to upload a new one:</p>\r\n\r\n<p><a href=\"https://qarint.appforgoogle.com/\">https://qarint.appforgoogle.com/</a></p>\r\n\r\n<p>Regards,</p>\r\n\r\n<p>Universal Health &amp; Safety</p>', 2, 1, '2019-09-13 07:48:06', '2020-01-09 09:58:17'),
(10, 'COURSE_STATUS', 'Qarint - Course Status', 'Qarint - Course Status', '<p>Hi {RECEIVER_FULL_NAME},</p>\r\n\r\n<p>Your&nbsp;course request for&nbsp;{COURSE_NAME} in category&nbsp;{CATEGORY_NAME} status&nbsp;is {STATUS}.</p>\r\n\r\n<p>Please log in to your account for more details:</p>\r\n\r\n<p><a href=\"https://qarint.appforgoogle.com/\">https://qarint.appforgoogle.com/</a></p>\r\n\r\n<p>Regards,</p>\r\n\r\n<p>{SITE_NAME}</p>', 2, 1, '2019-09-13 07:48:06', '2020-01-09 09:52:35'),
(11, 'COURSE_CANCEL', 'Qarint - Course Cancel', 'Qarint - Course Cancel', '<p>Hi&nbsp;{RECEIVER_FULL_NAME},</p>\r\n\r\n<p>Course {COURSE_NAME} in Category&nbsp;{CATEGORY_NAME}&nbsp;is cancelled due to no road permit.</p>\r\n\r\n<p>Regards,</p>\r\n\r\n<p>Qarint</p>', 2, 1, '2019-09-13 07:48:06', '2020-01-09 09:49:38'),
(12, 'COURSE_PERMIT', 'Qarint - Course Permit', 'Qarint - Course Permit', '<p>Hi {RECEIVER_FULL_NAME},</p>\r\n\r\n<p>Course {COURSE_NAME} requires road permit to be uploaded 3 days before the start date.</p>\r\n\r\n<p>Please log in to upload it now:</p>\r\n\r\n<p><a href=\"https://qarint.appforgoogle.com/\">https://qarint.appforgoogle.com/</a></p>\r\n\r\n<p>Regards,</p>\r\n\r\n<p>{SITE_NAME}</p>', 2, 1, '2019-09-13 07:48:06', '2020-01-09 09:51:51'),
(13, 'CAT_DISABLED', 'Qarint - CATEGORY DISABLED', 'Qarint - CATEGORY DISABLED', '<p>Hi {RECEIVER_FULL_NAME},</p>\r\n\r\n<p>You have not taught the required number of courses under this category and now your access to this category is disabled. Please contact an admin to correct this situation.</p>\r\n\r\n<p>Regards,</p>\r\n\r\n<p>{SITE_NAME}</p>', 2, 1, '2019-09-13 07:48:06', '2020-01-09 09:57:13'),
(14, 'COURSE_DISABLED', 'Qarint - Course Disabled', 'Qarint - Course Disabled', '<p>Hi {RECEIVER_FULL_NAME},</p>\r\n\r\n<p>You have not uploaded the required documents before the {COURSE_NAME}&nbsp;end date.</p>\r\n\r\n<p>Please contact {SITE_NAME} if you have further questions.</p>\r\n\r\n<p>Regards,</p>\r\n\r\n<p>{SITE_NAME}</p>', 2, 1, '2019-09-13 07:48:06', '2020-01-09 09:50:25'),
(15, 'PRODUCT_APPROVAL', 'Qarint - Product request', 'Qarint - Product request', '<p>Hi {RECEIVER_FULL_NAME},</p>\r\n\r\n<p>Your request to buy a product has been {STATUS}.</p>\r\n\r\n<p>Please log in to your account or contact an admin for more information:</p>\r\n\r\n<p><a href=\"https://qarint.appforgoogle.com/\">https://qarint.appforgoogle.com/</a></p>\r\n\r\n<p>Regards,</p>\r\n\r\n<p>{SITE_NAME}</p>', 2, 1, '2019-09-19 06:04:30', '2020-01-09 09:57:47'),
(16, 'COURSE_CREATE', 'Qarint - New Course Created', 'Qarint - New Course Created', '<p>Hi&nbsp;&nbsp;{RECEIVER_FULL_NAME},</p>\r\n\r\n<p>&nbsp;A new {COURSE_NAME} course in category&nbsp;{CATEGORY_NAME} has been created by {SITE_NAME} for you.</p>\r\n\r\n<p>Please log in to your account for more details:</p>\r\n\r\n<p><a href=\"https://qarint.appforgoogle.com/\">https://qarint.appforgoogle.com/</a></p>\r\n\r\n<p>Regards,</p>\r\n\r\n<p>{SITE_NAME}</p>', 2, 1, '2019-09-19 11:28:34', '2020-01-09 09:58:40'),
(17, 'PAYMENT_RECEIVE', 'Qarint - Payment Received', 'Qarint - Payment Received', '<p>Hi {RECEIVER_FULL_NAME},</p>\r\n\r\n<p>{SENDER_FULL_NAME} has made&nbsp;a payment to&nbsp;{SITE_URL}.</p>\r\n\r\n<p>Please log in to the site and go to &quot;Manage Orders&quot; for more details.</p>', 2, 1, '2019-09-24 08:26:27', '2020-01-09 09:54:33'),
(20, 'CERTIFICATE_VALIDITY', 'Qarint - Certificate Validity Alert at 90 Days', 'Qarint - Certificate Validity Alert at 90 Days', '<p>Hi {RECEIVER_FULL_NAME},</p>\r\n\r\n<p>One of your certificates will be expiring within 90 days if not renewed.</p>\r\n\r\n<p>Please contact an admin to rectify this situation.</p>\r\n\r\n<p><a href=\"https://qarint.appforgoogle.com/\">https://qarint.appforgoogle.com/</a></p>\r\n\r\n<p>Regards,</p>\r\n\r\n<p>{SITE_NAME}</p>', 2, 1, '2019-09-13 17:18:06', '2020-01-09 09:48:56'),
(23, 'ORDER_PAYMENT', 'Qarint - Payment success', 'Qarint - Payment success', '<p>Hi {RECEIVER_FULL_NAME},</p>\r\n\r\n<p>You have&nbsp;made&nbsp;a payment to&nbsp;{SITE_URL}.</p>\r\n\r\n<p>Please log in to your account for more details.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>{SITE_NAME}<br />\r\n{SITE_URL}</p>', 2, 1, '2019-09-24 08:26:27', '2020-01-09 09:56:15');

-- --------------------------------------------------------

--
-- Table structure for table `mail_cron`
--

CREATE TABLE `mail_cron` (
  `id` int(11) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `sender` int(11) NOT NULL,
  `receiver` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mail_cron`
--

INSERT INTO `mail_cron` (`id`, `subject`, `message`, `sender`, `receiver`, `created_at`) VALUES
(21, 'Profile details', 'Here is your Login credentials details, please use these details to login on the site <br>Email: mancymandela@yopmail.com<br> Password : man@123', 1, 16, '2020-02-10 15:29:07'),
(22, 'Profile details', 'Here is your Login credentials details, please use these details to login on the site <br>Email: mancymandela@yopmail.com<br> Password : 123456', 1, 16, '2020-02-10 19:28:27'),
(23, 'Profile details', 'Here is your Login credentials details, please use these details to login on the site <br>Email: testuser1@yopmail.com<br> Password : tes@123', 1, 17, '2020-03-04 16:58:37'),
(24, 'Profile details', 'Here is your Login credentials details, please use these details to login on the site <br>Email: teacher@yopmail.com<br> Password : 123456', 1, 12, '2020-03-30 15:07:35'),
(25, 'Profile details', 'Here is your Login credentials details, please use these details to login on the site <br>Email: teacher@yopmail.com<br> Password : 123456', 1, 12, '2020-03-30 15:18:07'),
(26, 'Profile details', 'Here is your Login credentials details, please use these details to login on the site <br>Email: student@yopmails.com<br> Password : stu@123', 1, 18, '2020-04-29 09:17:50'),
(27, 'Profile details', 'Here is your Login credentials details, please use these details to login on the site <br>Email: studentss@gmail.com<br> Password : stu@123', 1, 19, '2020-04-29 09:18:14'),
(28, 'Profile details', 'Here is your Login credentials details, please use these details to login on the site <br>Email: as@gmail.com<br> Password : as@@123', 1, 20, '2020-05-26 14:01:07'),
(29, 'Profile details', 'Here is your Login credentials details, please use these details to login on the site <br>Email: asd@gmail.com<br> Password : asd@123', 1, 21, '2020-05-26 14:02:22'),
(30, 'Profile details', 'Here is your Login credentials details, please use these details to login on the site <br>Email: afmadanoglu@gmail.com<br> Password : afm@123', 1, 22, '2020-05-26 14:02:30'),
(31, 'Profile details', 'Here is your Login credentials details, please use these details to login on the site <br>Email: mytestuser@yopmail.com<br> Password : myt@123', 1, 23, '2020-05-28 14:42:14'),
(32, 'Profile details', 'Here is your Login credentials details, please use these details to login on the site <br>Email: teststudent2@yopmail.com<br> Password : tes@123', 1, 24, '2020-05-28 15:01:01'),
(33, 'Profile details', 'Here is your Login credentials details, please use these details to login on the site <br>Email: teststudent1@yopmail.com<br> Password : tes@123', 1, 25, '2020-05-28 15:13:33'),
(34, 'Profile details', 'Here is your Login credentials details, please use these details to login on the site <br>Email: teststudentuser@yopmail.com<br> Password : tes@123', 1, 26, '2020-05-28 15:30:45'),
(35, 'Profile details', 'Here is your Login credentials details, please use these details to login on the site <br>Email: testuser100@yopmail.com<br> Password : tes@123', 1, 27, '2020-05-28 15:51:59'),
(36, 'Profile details', 'Here is your Login credentials details, please use these details to login on the site <br>Email: testuser09@yopmail.com<br> Password : tes@123', 1, 28, '2020-05-28 15:53:18'),
(37, 'Profile details', 'Here is your Login credentials details, please use these details to login on the site <br>Email: testuser080@yopmail.com<br> Password : tes@123', 1, 29, '2020-05-28 15:57:52'),
(38, 'Profile details', 'Here is your Login credentials details, please use these details to login on the site <br>Email: testabc@yopmail.com<br> Password : 123456', 1, 30, '2020-05-29 10:26:58'),
(39, 'Profile details', 'Here is your Login credentials details. please use these details to login on the site <br>Email: mustafaolgn@gmail.com<br> Password : 123456<br><br><br>Email verify Link :  <a href=\"https://qarint.appforgoogle.com/account_verify/2ebc642d83e07cc72308d6f7f88ff878\">Click to Verify the Link</a>', 1, 31, '2020-05-29 16:37:03'),
(40, 'Profile details', 'Here is your Login credentials details. please use these details to login on the site <br>Email: mustafaolgn1@gmail.com<br> Password : 123456<br><br><br>Email verify Link :  <a href=\"https://qarint.appforgoogle.com/account_verify/9ea8b73a1dc02e0bb3b5f8c758ba5e57\">Click to Verify the Link</a>', 1, 32, '2020-05-29 17:08:11'),
(41, 'Profile details', 'Here is your Login credentials details. please use these details to login on the site <br>Email: afmadanoglu@gmail.com<br> Password : 1234<br><br><br>Email verify Link :  <a href=\"https://qarint.appforgoogle.com/account_verify/7f26700458e72120d8b16cd393d74f8b\">Click to Verify the Link</a>', 1, 33, '2020-06-03 15:36:52'),
(42, 'Profile details', 'Here is your Login credentials details. please use these details to login on the site <br>Email: fatihmadanoglu@ihh.org.tr<br> Password : 1234<br><br><br>Email verify Link :  <a href=\"https://qarint.appforgoogle.com/account_verify/cfee7c08d6ec6dad2533e6c668e81b8e\">Click to Verify the Link</a>', 1, 34, '2020-06-03 15:38:34'),
(43, 'Qarint - Forgot password', '<!-- Logo --><!-- Title -->\r\n<p>FORGOT PASSWORD</p>\r\n<!-- Messages -->\r\n\r\n<p>We have sent you this email in response to your request to reset your password on&nbsp;Qarint&nbsp;&nbsp;After you reset your password, any credit card information stored in My Account will be deleted as a security measure.<br />\r\n<br />\r\nTo reset your password for &lt;a href=&quot;http://qarint.localhost&quot;&gt;Change Password&lt;/a&gt;, please follow the link below: <br />\r\n<br />\r\nWe recommend that you keep your password secure and not share it with anyone.If you feel your password has been compromised, you can change it by going to your Qarint My Account Page and clicking on the &quot;Change Email Address or Password&quot; link.<br />\r\n<br />\r\nIf you need help, or you have any other questions, feel free to email , or call Qarint customer service toll-free at .<br />\r\n<br />\r\nQarint Customer Service</p>', 1, 12, '2020-06-12 22:55:28'),
(44, 'Qarint - Forgot password', '<!-- Logo --><!-- Title -->\r\n<p>FORGOT PASSWORD</p>\r\n<!-- Messages -->\r\n\r\n<p>We have sent you this email in response to your request to reset your password on&nbsp;Qarint&nbsp;&nbsp;After you reset your password, any credit card information stored in My Account will be deleted as a security measure.<br />\r\n<br />\r\nTo reset your password for &lt;a href=&quot;http://qarint.localhost&quot;&gt;Change Password&lt;/a&gt;, please follow the link below: http://qarint.localhost/resetpassword/8d6c0ebf3161fc8f8e5a9c114ad49650<br />\r\n<br />\r\nWe recommend that you keep your password secure and not share it with anyone.If you feel your password has been compromised, you can change it by going to your Qarint My Account Page and clicking on the &quot;Change Email Address or Password&quot; link.<br />\r\n<br />\r\nIf you need help, or you have any other questions, feel free to email student@yopmail.com, or call Qarint customer service toll-free at .<br />\r\n<br />\r\nQarint Customer Service</p>', 1, 10, '2020-06-12 23:15:50'),
(45, 'Qarint - Forgot password', '<!-- Logo --><!-- Title -->\r\n<p>FORGOT PASSWORD</p>\r\n<!-- Messages -->\r\n\r\n<p>We have sent you this email in response to your request to reset your password on&nbsp;Qarint&nbsp;&nbsp;After you reset your password, any credit card information stored in My Account will be deleted as a security measure.<br />\r\n<br />\r\nTo reset your password for &lt;a href=&quot;http://qarint.localhost&quot;&gt;Change Password&lt;/a&gt;, please follow the link below: http://qarint.localhost/resetpassword/8d6c0ebf3161fc8f8e5a9c114ad49650<br />\r\n<br />\r\nWe recommend that you keep your password secure and not share it with anyone.If you feel your password has been compromised, you can change it by going to your Qarint My Account Page and clicking on the &quot;Change Email Address or Password&quot; link.<br />\r\n<br />\r\nIf you need help, or you have any other questions, feel free to email student@yopmail.com, or call Qarint customer service toll-free at .<br />\r\n<br />\r\nQarint Customer Service</p>', 1, 10, '2020-06-12 23:18:21'),
(46, 'Qarint - Forgot password', '<!-- Logo --><!-- Title -->\r\n<p>FORGOT PASSWORD</p>\r\n<!-- Messages -->\r\n\r\n<p>We have sent you this email in response to your request to reset your password on&nbsp;Qarint&nbsp;&nbsp;After you reset your password, any credit card information stored in My Account will be deleted as a security measure.<br />\r\n<br />\r\nTo reset your password for &lt;a href=&quot;http://qarint.localhost&quot;&gt;Change Password&lt;/a&gt;, please follow the link below: http://qarint.localhost/resetpassword/8d6c0ebf3161fc8f8e5a9c114ad49650<br />\r\n<br />\r\nWe recommend that you keep your password secure and not share it with anyone.If you feel your password has been compromised, you can change it by going to your Qarint My Account Page and clicking on the &quot;Change Email Address or Password&quot; link.<br />\r\n<br />\r\nIf you need help, or you have any other questions, feel free to email student@yopmail.com, or call Qarint customer service toll-free at .<br />\r\n<br />\r\nQarint Customer Service</p>', 1, 10, '2020-06-12 23:18:42'),
(47, 'Qarint - Forgot password', '<!-- Logo --><!-- Title -->\r\n<p>FORGOT PASSWORD</p>\r\n<!-- Messages -->\r\n\r\n<p>We have sent you this email in response to your request to reset your password on&nbsp;Qarint&nbsp;&nbsp;After you reset your password, any credit card information stored in My Account will be deleted as a security measure.<br />\r\n<br />\r\nTo reset your password for &lt;a href=&quot;http://qarint.localhost&quot;&gt;Change Password&lt;/a&gt;, please follow the link below: http://qarint.localhost/resetpassword/8d6c0ebf3161fc8f8e5a9c114ad49650<br />\r\n<br />\r\nWe recommend that you keep your password secure and not share it with anyone.If you feel your password has been compromised, you can change it by going to your Qarint My Account Page and clicking on the &quot;Change Email Address or Password&quot; link.<br />\r\n<br />\r\nIf you need help, or you have any other questions, feel free to email student@yopmail.com, or call Qarint customer service toll-free at .<br />\r\n<br />\r\nQarint Customer Service</p>', 1, 10, '2020-06-12 23:24:29'),
(48, 'Qarint - Forgot password', '<!-- Logo --><!-- Title -->\r\n<p>FORGOT PASSWORD</p>\r\n<!-- Messages -->\r\n\r\n<p>We have sent you this email in response to your request to reset your password on&nbsp;Qarint&nbsp;&nbsp;After you reset your password, any credit card information stored in My Account will be deleted as a security measure.<br />\r\n<br />\r\nTo reset your password for &lt;a href=&quot;http://qarint.localhost&quot;&gt;Change Password&lt;/a&gt;, please follow the link below: http://qarint.localhost/resetpassword/8d6c0ebf3161fc8f8e5a9c114ad49650<br />\r\n<br />\r\nWe recommend that you keep your password secure and not share it with anyone.If you feel your password has been compromised, you can change it by going to your Qarint My Account Page and clicking on the &quot;Change Email Address or Password&quot; link.<br />\r\n<br />\r\nIf you need help, or you have any other questions, feel free to email student@yopmail.com, or call Qarint customer service toll-free at .<br />\r\n<br />\r\nQarint Customer Service</p>', 1, 10, '2020-06-12 23:38:13'),
(49, 'Qarint - Forgot password', '<!-- Logo --><!-- Title -->\r\n<p>FORGOT PASSWORD</p>\r\n<!-- Messages -->\r\n\r\n<p>We have sent you this email in response to your request to reset your password on&nbsp;Qarint&nbsp;&nbsp;After you reset your password, any credit card information stored in My Account will be deleted as a security measure.<br />\r\n<br />\r\nTo reset your password for &lt;a href=&quot;http://qarint.localhost&quot;&gt;Change Password&lt;/a&gt;, please follow the link below: http://qarint.localhost/resetpassword/8d6c0ebf3161fc8f8e5a9c114ad49650<br />\r\n<br />\r\nWe recommend that you keep your password secure and not share it with anyone.If you feel your password has been compromised, you can change it by going to your Qarint My Account Page and clicking on the &quot;Change Email Address or Password&quot; link.<br />\r\n<br />\r\nIf you need help, or you have any other questions, feel free to email student@yopmail.com, or call Qarint customer service toll-free at .<br />\r\n<br />\r\nQarint Customer Service</p>', 1, 10, '2020-06-14 20:31:37'),
(50, 'Qarint - Forgot password', '<!-- Logo --><!-- Title -->\r\n<p>FORGOT PASSWORD</p>\r\n<!-- Messages -->\r\n\r\n<p>We have sent you this email in response to your request to reset your password on&nbsp;Qarint&nbsp;&nbsp;After you reset your password, any credit card information stored in My Account will be deleted as a security measure.<br />\r\n<br />\r\nTo reset your password for &lt;a href=&quot;http://qarint.localhost&quot;&gt;Change Password&lt;/a&gt;, please follow the link below: http://qarint.localhost/resetpassword/8d6c0ebf3161fc8f8e5a9c114ad49650<br />\r\n<br />\r\nWe recommend that you keep your password secure and not share it with anyone.If you feel your password has been compromised, you can change it by going to your Qarint My Account Page and clicking on the &quot;Change Email Address or Password&quot; link.<br />\r\n<br />\r\nIf you need help, or you have any other questions, feel free to email student@yopmail.com, or call Qarint customer service toll-free at .<br />\r\n<br />\r\nQarint Customer Service</p>', 1, 10, '2020-06-14 21:38:09'),
(51, 'Qarint - Forgot password', '<!-- Logo --><!-- Title -->\r\n<p>FORGOT PASSWORD</p>\r\n<!-- Messages -->\r\n\r\n<p>We have sent you this email in response to your request to reset your password on&nbsp;Qarint&nbsp;&nbsp;After you reset your password, any credit card information stored in My Account will be deleted as a security measure.<br />\r\n<br />\r\nTo reset your password for &lt;a href=&quot;http://qarint.localhost&quot;&gt;Change Password&lt;/a&gt;, please follow the link below: http://qarint.localhost/resetpassword/8d6c0ebf3161fc8f8e5a9c114ad49650<br />\r\n<br />\r\nWe recommend that you keep your password secure and not share it with anyone.If you feel your password has been compromised, you can change it by going to your Qarint My Account Page and clicking on the &quot;Change Email Address or Password&quot; link.<br />\r\n<br />\r\nIf you need help, or you have any other questions, feel free to email student@yopmail.com, or call Qarint customer service toll-free at .<br />\r\n<br />\r\nQarint Customer Service</p>', 1, 10, '2020-06-14 21:38:26'),
(52, 'Qarint - Forgot password', '<!-- Logo --><!-- Title -->\r\n<p>FORGOT PASSWORD</p>\r\n<!-- Messages -->\r\n\r\n<p>We have sent you this email in response to your request to reset your password on&nbsp;Qarint&nbsp;&nbsp;After you reset your password, any credit card information stored in My Account will be deleted as a security measure.<br />\r\n<br />\r\nTo reset your password for &lt;a href=&quot;http://qarint.localhost&quot;&gt;Change Password&lt;/a&gt;, please follow the link below: http://qarint.localhost/resetpassword/8d6c0ebf3161fc8f8e5a9c114ad49650<br />\r\n<br />\r\nWe recommend that you keep your password secure and not share it with anyone.If you feel your password has been compromised, you can change it by going to your Qarint My Account Page and clicking on the &quot;Change Email Address or Password&quot; link.<br />\r\n<br />\r\nIf you need help, or you have any other questions, feel free to email student@yopmail.com, or call Qarint customer service toll-free at .<br />\r\n<br />\r\nQarint Customer Service</p>', 1, 10, '2020-06-14 21:55:47'),
(53, 'Qarint - Forgot password', '<!-- Logo --><!-- Title -->\r\n<p>FORGOT PASSWORD</p>\r\n<!-- Messages -->\r\n\r\n<p>We have sent you this email in response to your request to reset your password on&nbsp;Qarint&nbsp;&nbsp;After you reset your password, any credit card information stored in My Account will be deleted as a security measure.<br />\r\n<br />\r\nTo reset your password for &lt;a href=&quot;http://qarint.localhost&quot;&gt;Change Password&lt;/a&gt;, please follow the link below: http://qarint.localhost/resetpassword/8d6c0ebf3161fc8f8e5a9c114ad49650<br />\r\n<br />\r\nWe recommend that you keep your password secure and not share it with anyone.If you feel your password has been compromised, you can change it by going to your Qarint My Account Page and clicking on the &quot;Change Email Address or Password&quot; link.<br />\r\n<br />\r\nIf you need help, or you have any other questions, feel free to email student@yopmail.com, or call Qarint customer service toll-free at .<br />\r\n<br />\r\nQarint Customer Service</p>', 1, 10, '2020-06-14 21:58:09'),
(54, 'Qarint - Forgot password', '<!-- Logo --><!-- Title -->\r\n<p>FORGOT PASSWORD</p>\r\n<!-- Messages -->\r\n\r\n<p>We have sent you this email in response to your request to reset your password on Qarint After you reset your password, any credit card information stored in My Account will be deleted as a security measure.<br />\r\n<br />\r\nTo reset your password for <a href=&quot;http://qarint.localhost>Change Password</a>, please follow the link below: http://qarint.localhost/resetpassword/mZGyJIs6bpQJMKtTIZMf7pufA2Gwh7j6BQmcrMLODXUa0d4lRCMf0BfLipiV<br />\r\n<br />\r\nWe recommend that you keep your password secure and not share it with anyone.If you feel your password has been compromised, you can change it by going to your Qarint My Account Page and clicking on the &quot;Change Email Address or Password&quot; link.<br />\r\n<br />\r\nIf you need help, or you have any other questions, feel free to email teacher@yopmail.com, or call Qarint customer service toll-free at .<br />\r\n<br />\r\nQarint Customer Service</p>', 1, 12, '2020-06-15 15:28:11'),
(55, 'Qarint - Forgot password', '<!-- Logo --><!-- Title -->\r\n<p>FORGOT PASSWORD</p>\r\n<!-- Messages -->\r\n\r\n<p>We have sent you this email in response to your request to reset your password on Qarint After you reset your password, any credit card information stored in My Account will be deleted as a security measure.<br />\r\n<br />\r\nTo reset your password for <a href=&quot;http://qarint.localhost>Change Password</a>, please follow the link below: http://qarint.localhost/resetpassword/mZGyJIs6bpQJMKtTIZMf7pufA2Gwh7j6BQmcrMLODXUa0d4lRCMf0BfLipiV<br />\r\n<br />\r\nWe recommend that you keep your password secure and not share it with anyone.If you feel your password has been compromised, you can change it by going to your Qarint My Account Page and clicking on the &quot;Change Email Address or Password&quot; link.<br />\r\n<br />\r\nIf you need help, or you have any other questions, feel free to email teacher@yopmail.com, or call Qarint customer service toll-free at .<br />\r\n<br />\r\nQarint Customer Service</p>', 1, 12, '2020-06-15 15:30:08'),
(56, 'Profile details', 'Here is your Login credentials details. please use these details to login on the site <br>Email: erhan_idiz@hotmail.com<br> Password : jotzas-7vUkpi-fexbop<br><br><br>Email verify Link :  <a href=\"http://qarint.com/account_verify/6fade5b15c31ba52c6f2ef8250d2eece\">Click to Verify the Link</a>', 1, 35, '2020-06-28 14:37:24'),
(57, 'Profile details', 'Here is your Login credentials details. please use these details to login on the site <br>Email: brkberberoglu@gmail.com<br> Password : ihh654123<br><br><br>Email verify Link :  <a href=\"http://qarint.com/account_verify/c7a9b4121b7583187148bed19dc3400e\">Click to Verify the Link</a>', 1, 36, '2020-06-28 18:31:45'),
(58, 'Profile details', 'Here is your Login credentials details. please use these details to login on the site <br>Email: sagarstl52@gmail.com<br> Password : sag@123<br><br><br>Email verify Link :  <a href=\"http://qarint.com/account_verify/c90bf06a431d2eebe98445032933d8d3\">Click to Verify the Link</a>', 1, 37, '2020-06-30 13:03:39'),
(59, 'Profile details', 'Here is your Login credentials details. please use these details to login on the site <br>Email: celalbaygeldi@gmail.com<br> Password : FdKDp34UqjMUgqa<br><br><br>Email verify Link :  <a href=\"http://qarint.com/account_verify/316c3e0394f34ab4d71a1290d9038ed5\">Click to Verify the Link</a>', 1, 38, '2020-07-01 06:37:31'),
(60, 'Profile details', 'Here is your Login credentials details. please use these details to login on the site <br>Email: test@test.com<br> Password : 123456<br><br><br>Email verify Link :  <a href=\"http://qarint.com/account_verify/ad431c681dad491a32e8fe211389e061\">Click to Verify the Link</a>', 1, 39, '2020-07-01 19:38:11'),
(61, 'Profile details', 'Here is your Login credentials details. please use these details to login on the site <br>Email: mentescagri@gmail.com<br> Password : JatfUPVk7ick2qT<br><br><br>Email verify Link :  <a href=\"https://www.qarint.com/account_verify/dc5d0d023a69a482eca1f6e5be4fcb66\">Click to Verify the Link</a>', 1, 40, '2020-08-17 14:02:32'),
(62, 'Qarint - Forgot password', '<!-- Logo --><!-- Title -->\r\n<p>FORGOT PASSWORD</p>\r\n<!-- Messages -->\r\n\r\n<p>We have sent you this email in response to your request to reset your password on Qarint After you reset your password, any credit card information stored in My Account will be deleted as a security measure.<br />\r\n<br />\r\nTo reset your password for <a href=&quot;https://qarint.com>Change Password</a>, please follow the link below: https://qarint.com/resetpassword/7f26700458e72120d8b16cd393d74f8b<br />\r\n<br />\r\nWe recommend that you keep your password secure and not share it with anyone.If you feel your password has been compromised, you can change it by going to your Qarint My Account Page and clicking on the &quot;Change Email Address or Password&quot; link.<br />\r\n<br />\r\nIf you need help, or you have any other questions, feel free to email afmadanoglu@gmail.com, or call Qarint customer service toll-free at .<br />\r\n<br />\r\nQarint Customer Service</p>', 1, 33, '2020-09-23 21:54:19'),
(63, 'Profile details', 'Here is your Login credentials details. please use these details to login on the site <br>Email: teacher2@yopmail.com<br> Password : 123456<br><br><br>Email verify Link :  <a href=\"https://www.qarint.com/account_verify/4353b04ad45ed1b59f3fc8ebf28fd46a\">Click to Verify the Link</a>', 1, 41, '2020-09-24 14:42:54'),
(64, 'Profile details', 'Here is your Login credentials details. please use these details to login on the site <br>Email: neerajst.st@gmail.com<br> Password : Saab@123<br><br><br>Email verify Link :  <a href=\"https://www.qarint.com/account_verify/4750809e0ae36055c1ccc70578e66eed\">Click to Verify the Link</a>', 1, 42, '2020-09-24 15:08:08'),
(65, 'Profile details', 'Here is your Login credentials details. please use these details to login on the site <br>Email: kingmilap@gmail.com<br> Password : 11111111<br><br><br>Email verify Link :  <a href=\"https://qarint.com/account_verify/d869735bb3c79c8c7b98a770641ba2d9\">Click to Verify the Link</a>', 1, 43, '2020-09-24 16:13:34'),
(66, 'Qarint - Forgot password', '<!-- Logo --><!-- Title -->\r\n<p>FORGOT PASSWORD</p>\r\n<!-- Messages -->\r\n\r\n<p>We have sent you this email in response to your request to reset your password on Qarint After you reset your password, any credit card information stored in My Account will be deleted as a security measure.<br />\r\n<br />\r\nTo reset your password for <a href=&quot;https://qarint.com>Change Password</a>, please follow the link below: https://qarint.com/resetpassword/2ebc642d83e07cc72308d6f7f88ff878<br />\r\n<br />\r\nWe recommend that you keep your password secure and not share it with anyone.If you feel your password has been compromised, you can change it by going to your Qarint My Account Page and clicking on the &quot;Change Email Address or Password&quot; link.<br />\r\n<br />\r\nIf you need help, or you have any other questions, feel free to email mustafaolgn@gmail.com, or call Qarint customer service toll-free at .<br />\r\n<br />\r\nQarint Customer Service</p>', 1, 31, '2020-09-27 10:44:44'),
(67, 'Qarint - Forgot password', '<!-- Logo --><!-- Title -->\r\n<p>FORGOT PASSWORD</p>\r\n<!-- Messages -->\r\n\r\n<p>We have sent you this email in response to your request to reset your password on Qarint After you reset your password, any credit card information stored in My Account will be deleted as a security measure.<br />\r\n<br />\r\nTo reset your password for <a href=&quot;https://www.qarint.com>Change Password</a>, please follow the link below: https://www.qarint.com/resetpassword/8d6c0ebf3161fc8f8e5a9c114ad49650<br />\r\n<br />\r\nWe recommend that you keep your password secure and not share it with anyone.If you feel your password has been compromised, you can change it by going to your Qarint My Account Page and clicking on the &quot;Change Email Address or Password&quot; link.<br />\r\n<br />\r\nIf you need help, or you have any other questions, feel free to email student@yopmail.com, or call Qarint customer service toll-free at .<br />\r\n<br />\r\nQarint Customer Service</p>', 1, 10, '2020-09-27 21:43:05'),
(68, 'Qarint - Forgot password', '<!-- Logo --><!-- Title -->\r\n<p>FORGOT PASSWORD</p>\r\n<!-- Messages -->\r\n\r\n<p>We have sent you this email in response to your request to reset your password on Qarint After you reset your password, any credit card information stored in My Account will be deleted as a security measure.<br />\r\n<br />\r\nTo reset your password for <a href=&quot;https://www.qarint.com>Change Password</a>, please follow the link below: https://www.qarint.com/resetpassword/8d6c0ebf3161fc8f8e5a9c114ad49650<br />\r\n<br />\r\nWe recommend that you keep your password secure and not share it with anyone.If you feel your password has been compromised, you can change it by going to your Qarint My Account Page and clicking on the &quot;Change Email Address or Password&quot; link.<br />\r\n<br />\r\nIf you need help, or you have any other questions, feel free to email student@yopmail.com, or call Qarint customer service toll-free at .<br />\r\n<br />\r\nQarint Customer Service</p>', 1, 10, '2020-09-27 22:21:23'),
(69, 'Qarint - Forgot password', '<!-- Logo --><!-- Title -->\r\n<p>FORGOT PASSWORD</p>\r\n<!-- Messages -->\r\n\r\n<p>We have sent you this email in response to your request to reset your password on Qarint After you reset your password, any credit card information stored in My Account will be deleted as a security measure.<br />\r\n<br />\r\nTo reset your password for <a href=&quot;https://www.qarint.com>Change Password</a>, please follow the link below: https://www.qarint.com/resetpassword/a935be5ab612285a8048b2e0a3ce3745<br />\r\n<br />\r\nWe recommend that you keep your password secure and not share it with anyone.If you feel your password has been compromised, you can change it by going to your Qarint My Account Page and clicking on the &quot;Change Email Address or Password&quot; link.<br />\r\n<br />\r\nIf you need help, or you have any other questions, feel free to email student@yopmail.com, or call Qarint customer service toll-free at .<br />\r\n<br />\r\nQarint Customer Service</p>', 1, 10, '2020-09-27 23:10:02'),
(70, 'Qarint - Forgot password', '<!-- Logo --><!-- Title -->\r\n<p>FORGOT PASSWORD</p>\r\n<!-- Messages -->\r\n\r\n<p>We have sent you this email in response to your request to reset your password on Qarint After you reset your password, any credit card information stored in My Account will be deleted as a security measure.<br />\r\n<br />\r\nTo reset your password for <a href=&quot;https://www.qarint.com>Change Password</a>, please follow the link below: https://www.qarint.com/resetpassword/a935be5ab612285a8048b2e0a3ce3745<br />\r\n<br />\r\nWe recommend that you keep your password secure and not share it with anyone.If you feel your password has been compromised, you can change it by going to your Qarint My Account Page and clicking on the &quot;Change Email Address or Password&quot; link.<br />\r\n<br />\r\nIf you need help, or you have any other questions, feel free to email student@yopmail.com, or call Qarint customer service toll-free at .<br />\r\n<br />\r\nQarint Customer Service</p>', 1, 10, '2020-09-27 23:10:02'),
(71, 'Qarint - Forgot password', '<!-- Logo --><!-- Title -->\r\n<p>FORGOT PASSWORD</p>\r\n<!-- Messages -->\r\n\r\n<p>We have sent you this email in response to your request to reset your password on Qarint After you reset your password, any credit card information stored in My Account will be deleted as a security measure.<br />\r\n<br />\r\nTo reset your password for <a href=&quot;https://qarint.com>Change Password</a>, please follow the link below: https://qarint.com/resetpassword/bcdae16112767a4210cc6cd340231862<br />\r\n<br />\r\nWe recommend that you keep your password secure and not share it with anyone.If you feel your password has been compromised, you can change it by going to your Qarint My Account Page and clicking on the &quot;Change Email Address or Password&quot; link.<br />\r\n<br />\r\nIf you need help, or you have any other questions, feel free to email mustafaolgn1@gmail.com, or call Qarint customer service toll-free at .<br />\r\n<br />\r\nQarint Customer Service</p>', 1, 32, '2020-10-02 17:42:44'),
(72, 'Qarint - Forgot password', '<!-- Logo --><!-- Title -->\r\n<p>FORGOT PASSWORD</p>\r\n<!-- Messages -->\r\n\r\n<p>We have sent you this email in response to your request to reset your password on Qarint After you reset your password, any credit card information stored in My Account will be deleted as a security measure.<br />\r\n<br />\r\nTo reset your password for <a href=&quot;https://qarint.com>Change Password</a>, please follow the link below: https://qarint.com/resetpassword/bcdae16112767a4210cc6cd340231862<br />\r\n<br />\r\nWe recommend that you keep your password secure and not share it with anyone.If you feel your password has been compromised, you can change it by going to your Qarint My Account Page and clicking on the &quot;Change Email Address or Password&quot; link.<br />\r\n<br />\r\nIf you need help, or you have any other questions, feel free to email mustafaolgn1@gmail.com, or call Qarint customer service toll-free at .<br />\r\n<br />\r\nQarint Customer Service</p>', 1, 32, '2020-10-02 17:42:47'),
(73, 'Profile details', 'Here is your Login credentials details. please use these details to login on the site <br>Email: info@dilogreniyoruz.com<br> Password : 123456<br><br><br>Email verify Link :  <a href=\"https://qarint.com/account_verify/0e284044520d561572aa97801cabfdd1\">Click to Verify the Link</a>', 1, 44, '2020-10-03 22:26:25'),
(74, 'Profile details', 'Here is your Login credentials details. please use these details to login on the site <br>Email: serdargurcay92@gmail.com<br> Password : Gmail18<br><br><br>Email verify Link :  <a href=\"https://www.qarint.com/account_verify/f13e6d6b4d5ebab76328019f9be33ab8\">Click to Verify the Link</a>', 1, 45, '2020-10-04 22:32:16'),
(75, 'Profile details', 'Here is your Login credentials details. please use these details to login on the site <br>Email: testalfred@yopmail.com<br> Password : 123456<br><br><br>Email verify Link :  <a href=\"https://www.qarint.com/account_verify/2cef83499d135842aa187f3cd2a21095\">Click to Verify the Link</a>', 1, 46, '2020-10-04 22:43:50'),
(76, 'Profile details', 'Here is your Login credentials details. please use these details to login on the site <br>Email: myusufesen@gmail.com<br> Password : nogKyk-midga3-sugriw<br><br><br>Email verify Link :  <a href=\"https://qarint.com/account_verify/a083c091ee9b8355eec42d996996389f\">Click to Verify the Link</a>', 1, 47, '2020-10-05 11:22:24'),
(77, 'Qarint - Forgot password', '<!-- Logo --><!-- Title -->\r\n<p>FORGOT PASSWORD</p>\r\n<!-- Messages -->\r\n\r\n<p>We have sent you this email in response to your request to reset your password on Qarint After you reset your password, any credit card information stored in My Account will be deleted as a security measure.<br />\r\n<br />\r\nTo reset your password for <a href=&quot;https://www.qarint.com>Change Password</a>, please follow the link below: https://www.qarint.com/resetpassword/NtafSQ2sgXU7bJmlKDxITCrLYZ8n5u<br />\r\n<br />\r\nWe recommend that you keep your password secure and not share it with anyone.If you feel your password has been compromised, you can change it by going to your Qarint My Account Page and clicking on the &quot;Change Email Address or Password&quot; link.<br />\r\n<br />\r\nIf you need help, or you have any other questions, feel free to email mariasherlock@yopmail.com, or call Qarint customer service toll-free at .<br />\r\n<br />\r\nQarint Customer Service</p>', 1, 6, '2020-10-07 23:36:32'),
(78, 'Profile details', 'Here is your Login credentials details. please use these details to login on the site <br>Email: erhanidis@gmail.com<br> Password : 123456<br><br><br>Email verify Link :  <a href=\"https://qarint.com/account_verify/ae672f3aee52b653e8b2a5edb50c103a\">Click to Verify the Link</a>', 1, 48, '2020-10-10 18:13:28'),
(79, 'Qarint - Forgot password', '<!-- Logo --><!-- Title -->\r\n<p>FORGOT PASSWORD</p>\r\n<!-- Messages -->\r\n\r\n<p>We have sent you this email in response to your request to reset your password on Qarint After you reset your password, any credit card information stored in My Account will be deleted as a security measure.<br />\r\n<br />\r\nTo reset your password for <a href=&quot;https://qarint.com>Change Password</a>, please follow the link below: https://qarint.com/resetpassword/0447a2cbe6b4f6b1d0ccc856d9fcddf3<br />\r\n<br />\r\nWe recommend that you keep your password secure and not share it with anyone.If you feel your password has been compromised, you can change it by going to your Qarint My Account Page and clicking on the &quot;Change Email Address or Password&quot; link.<br />\r\n<br />\r\nIf you need help, or you have any other questions, feel free to email afmadanoglu@gmail.com, or call Qarint customer service toll-free at .<br />\r\n<br />\r\nQarint Customer Service</p>', 1, 33, '2020-10-10 19:55:19'),
(80, 'Qarint - Forgot password', '<!-- Logo --><!-- Title -->\r\n<p>FORGOT PASSWORD</p>\r\n<!-- Messages -->\r\n\r\n<p>We have sent you this email in response to your request to reset your password on Qarint After you reset your password, any credit card information stored in My Account will be deleted as a security measure.<br />\r\n<br />\r\nTo reset your password for <a href=&quot;https://qarint.com>Change Password</a>, please follow the link below: https://qarint.com/resetpassword/99657e056a39f045dbe4ba3b24cd75b0<br />\r\n<br />\r\nWe recommend that you keep your password secure and not share it with anyone.If you feel your password has been compromised, you can change it by going to your Qarint My Account Page and clicking on the &quot;Change Email Address or Password&quot; link.<br />\r\n<br />\r\nIf you need help, or you have any other questions, feel free to email student@yopmail.com, or call Qarint customer service toll-free at .<br />\r\n<br />\r\nQarint Customer Service</p>', 1, 10, '2020-10-24 11:47:15'),
(81, 'Qarint - Forgot password', '<!-- Logo --><!-- Title -->\r\n<p>FORGOT PASSWORD</p>\r\n<!-- Messages -->\r\n\r\n<p>We have sent you this email in response to your request to reset your password on Qarint After you reset your password, any credit card information stored in My Account will be deleted as a security measure.<br />\r\n<br />\r\nTo reset your password for <a href=&quot;https://qarint.com>Change Password</a>, please follow the link below: https://qarint.com/resetpassword/99657e056a39f045dbe4ba3b24cd75b0<br />\r\n<br />\r\nWe recommend that you keep your password secure and not share it with anyone.If you feel your password has been compromised, you can change it by going to your Qarint My Account Page and clicking on the &quot;Change Email Address or Password&quot; link.<br />\r\n<br />\r\nIf you need help, or you have any other questions, feel free to email student@yopmail.com, or call Qarint customer service toll-free at .<br />\r\n<br />\r\nQarint Customer Service</p>', 1, 10, '2020-10-24 11:47:16'),
(82, 'Qarint - Forgot password', '<!-- Logo --><!-- Title -->\r\n<p>FORGOT PASSWORD</p>\r\n<!-- Messages -->\r\n\r\n<p>We have sent you this email in response to your request to reset your password on Qarint After you reset your password, any credit card information stored in My Account will be deleted as a security measure.<br />\r\n<br />\r\nTo reset your password for <a href=&quot;https://qarint.com>Change Password</a>, please follow the link below: https://qarint.com/resetpassword/99657e056a39f045dbe4ba3b24cd75b0<br />\r\n<br />\r\nWe recommend that you keep your password secure and not share it with anyone.If you feel your password has been compromised, you can change it by going to your Qarint My Account Page and clicking on the &quot;Change Email Address or Password&quot; link.<br />\r\n<br />\r\nIf you need help, or you have any other questions, feel free to email student@yopmail.com, or call Qarint customer service toll-free at .<br />\r\n<br />\r\nQarint Customer Service</p>', 1, 10, '2020-10-24 11:47:16'),
(83, 'Qarint - Forgot password', '<!-- Logo --><!-- Title -->\r\n<p>FORGOT PASSWORD</p>\r\n<!-- Messages -->\r\n\r\n<p>We have sent you this email in response to your request to reset your password on Qarint After you reset your password, any credit card information stored in My Account will be deleted as a security measure.<br />\r\n<br />\r\nTo reset your password for <a href=&quot;https://qarint.com>Change Password</a>, please follow the link below: https://qarint.com/resetpassword/99657e056a39f045dbe4ba3b24cd75b0<br />\r\n<br />\r\nWe recommend that you keep your password secure and not share it with anyone.If you feel your password has been compromised, you can change it by going to your Qarint My Account Page and clicking on the &quot;Change Email Address or Password&quot; link.<br />\r\n<br />\r\nIf you need help, or you have any other questions, feel free to email student@yopmail.com, or call Qarint customer service toll-free at .<br />\r\n<br />\r\nQarint Customer Service</p>', 1, 10, '2020-10-24 11:48:25'),
(84, 'Qarint - Forgot password', '<!-- Logo --><!-- Title -->\r\n<p>FORGOT PASSWORD</p>\r\n<!-- Messages -->\r\n\r\n<p>We have sent you this email in response to your request to reset your password on Qarint After you reset your password, any credit card information stored in My Account will be deleted as a security measure.<br />\r\n<br />\r\nTo reset your password for <a href=&quot;https://qarint.com>Change Password</a>, please follow the link below: https://qarint.com/resetpassword/99657e056a39f045dbe4ba3b24cd75b0<br />\r\n<br />\r\nWe recommend that you keep your password secure and not share it with anyone.If you feel your password has been compromised, you can change it by going to your Qarint My Account Page and clicking on the &quot;Change Email Address or Password&quot; link.<br />\r\n<br />\r\nIf you need help, or you have any other questions, feel free to email student@yopmail.com, or call Qarint customer service toll-free at .<br />\r\n<br />\r\nQarint Customer Service</p>', 1, 10, '2020-10-24 11:48:26'),
(85, 'Qarint - Forgot password', '<!-- Logo --><!-- Title -->\r\n<p>FORGOT PASSWORD</p>\r\n<!-- Messages -->\r\n\r\n<p>We have sent you this email in response to your request to reset your password on Qarint After you reset your password, any credit card information stored in My Account will be deleted as a security measure.<br />\r\n<br />\r\nTo reset your password for <a href=&quot;https://qarint.com>Change Password</a>, please follow the link below: https://qarint.com/resetpassword/99657e056a39f045dbe4ba3b24cd75b0<br />\r\n<br />\r\nWe recommend that you keep your password secure and not share it with anyone.If you feel your password has been compromised, you can change it by going to your Qarint My Account Page and clicking on the &quot;Change Email Address or Password&quot; link.<br />\r\n<br />\r\nIf you need help, or you have any other questions, feel free to email student@yopmail.com, or call Qarint customer service toll-free at .<br />\r\n<br />\r\nQarint Customer Service</p>', 1, 10, '2020-10-24 11:48:26'),
(86, 'Qarint - Forgot password', '<!-- Logo --><!-- Title -->\r\n<p>FORGOT PASSWORD</p>\r\n<!-- Messages -->\r\n\r\n<p>We have sent you this email in response to your request to reset your password on Qarint After you reset your password, any credit card information stored in My Account will be deleted as a security measure.<br />\r\n<br />\r\nTo reset your password for <a href=&quot;https://qarint.com>Change Password</a>, please follow the link below: https://qarint.com/resetpassword/99657e056a39f045dbe4ba3b24cd75b0<br />\r\n<br />\r\nWe recommend that you keep your password secure and not share it with anyone.If you feel your password has been compromised, you can change it by going to your Qarint My Account Page and clicking on the &quot;Change Email Address or Password&quot; link.<br />\r\n<br />\r\nIf you need help, or you have any other questions, feel free to email student@yopmail.com, or call Qarint customer service toll-free at .<br />\r\n<br />\r\nQarint Customer Service</p>', 1, 10, '2020-10-24 11:49:44'),
(87, 'Qarint - Forgot password', '<!-- Logo --><!-- Title -->\r\n<p>FORGOT PASSWORD</p>\r\n<!-- Messages -->\r\n\r\n<p>We have sent you this email in response to your request to reset your password on Qarint After you reset your password, any credit card information stored in My Account will be deleted as a security measure.<br />\r\n<br />\r\nTo reset your password for <a href=&quot;https://qarint.com>Change Password</a>, please follow the link below: https://qarint.com/resetpassword/99657e056a39f045dbe4ba3b24cd75b0<br />\r\n<br />\r\nWe recommend that you keep your password secure and not share it with anyone.If you feel your password has been compromised, you can change it by going to your Qarint My Account Page and clicking on the &quot;Change Email Address or Password&quot; link.<br />\r\n<br />\r\nIf you need help, or you have any other questions, feel free to email student@yopmail.com, or call Qarint customer service toll-free at .<br />\r\n<br />\r\nQarint Customer Service</p>', 1, 10, '2020-10-24 11:50:29'),
(88, 'Qarint - Forgot password', '<!-- Logo --><!-- Title -->\r\n<p>FORGOT PASSWORD</p>\r\n<!-- Messages -->\r\n\r\n<p>We have sent you this email in response to your request to reset your password on Qarint After you reset your password, any credit card information stored in My Account will be deleted as a security measure.<br />\r\n<br />\r\nTo reset your password for <a href=&quot;https://qarint.com>Change Password</a>, please follow the link below: https://qarint.com/resetpassword/99657e056a39f045dbe4ba3b24cd75b0<br />\r\n<br />\r\nWe recommend that you keep your password secure and not share it with anyone.If you feel your password has been compromised, you can change it by going to your Qarint My Account Page and clicking on the &quot;Change Email Address or Password&quot; link.<br />\r\n<br />\r\nIf you need help, or you have any other questions, feel free to email student@yopmail.com, or call Qarint customer service toll-free at .<br />\r\n<br />\r\nQarint Customer Service</p><p>Your Token code is 123456', 1, 10, '2020-10-24 11:54:24'),
(89, 'Qarint - Forgot password', '<!-- Logo --><!-- Title -->\r\n<p>FORGOT PASSWORD</p>\r\n<!-- Messages -->\r\n\r\n<p>We have sent you this email in response to your request to reset your password on Qarint After you reset your password, any credit card information stored in My Account will be deleted as a security measure.<br />\r\n<br />\r\nTo reset your password for <a href=&quot;https://qarint.com>Change Password</a>, please follow the link below: https://qarint.com/resetpassword/99657e056a39f045dbe4ba3b24cd75b0<br />\r\n<br />\r\nWe recommend that you keep your password secure and not share it with anyone.If you feel your password has been compromised, you can change it by going to your Qarint My Account Page and clicking on the &quot;Change Email Address or Password&quot; link.<br />\r\n<br />\r\nIf you need help, or you have any other questions, feel free to email student@yopmail.com, or call Qarint customer service toll-free at .<br />\r\n<br />\r\nQarint Customer Service</p><p>Your Token code is 123456', 1, 10, '2020-10-24 11:55:06'),
(90, 'Qarint - Forgot password', '<!-- Logo --><!-- Title -->\r\n<p>FORGOT PASSWORD</p>\r\n<!-- Messages -->\r\n\r\n<p>We have sent you this email in response to your request to reset your password on Qarint After you reset your password, any credit card information stored in My Account will be deleted as a security measure.<br />\r\n<br />\r\nTo reset your password for <a href=&quot;https://qarint.com>Change Password</a>, please follow the link below: https://qarint.com/resetpassword/96cf892f7a33e39648a31e57b49296b8<br />\r\n<br />\r\nWe recommend that you keep your password secure and not share it with anyone.If you feel your password has been compromised, you can change it by going to your Qarint My Account Page and clicking on the &quot;Change Email Address or Password&quot; link.<br />\r\n<br />\r\nIf you need help, or you have any other questions, feel free to email student@yopmail.com, or call Qarint customer service toll-free at .<br />\r\n<br />\r\nQarint Customer Service</p><p>Your Token code is <b>150856</b></p>', 1, 10, '2020-10-24 13:01:54'),
(91, 'Qarint - Forgot password', '<!-- Logo --><!-- Title -->\r\n<p>FORGOT PASSWORD</p>\r\n<!-- Messages -->\r\n\r\n<p>We have sent you this email in response to your request to reset your password on Qarint After you reset your password, any credit card information stored in My Account will be deleted as a security measure.<br />\r\n<br />\r\nTo reset your password for <a href=&quot;https://qarint.com>Change Password</a>, please follow the link below: https://qarint.com/resetpassword/96cf892f7a33e39648a31e57b49296b8<br />\r\n<br />\r\nWe recommend that you keep your password secure and not share it with anyone.If you feel your password has been compromised, you can change it by going to your Qarint My Account Page and clicking on the &quot;Change Email Address or Password&quot; link.<br />\r\n<br />\r\nIf you need help, or you have any other questions, feel free to email student@yopmail.com, or call Qarint customer service toll-free at .<br />\r\n<br />\r\nQarint Customer Service</p><p>Your Token code is <b>150856</b></p>', 1, 10, '2020-10-24 13:02:32'),
(92, 'Qarint - Forgot password', '<!-- Logo --><!-- Title -->\r\n<p>FORGOT PASSWORD</p>\r\n<!-- Messages -->\r\n\r\n<p>We have sent you this email in response to your request to reset your password on Qarint After you reset your password, any credit card information stored in My Account will be deleted as a security measure.<br />\r\n<br />\r\nTo reset your password for <a href=&quot;https://qarint.com>Change Password</a>, please follow the link below: https://qarint.com/resetpassword/7d89ff0aff56085a991d0f0a656f9e16<br />\r\n<br />\r\nWe recommend that you keep your password secure and not share it with anyone.If you feel your password has been compromised, you can change it by going to your Qarint My Account Page and clicking on the &quot;Change Email Address or Password&quot; link.<br />\r\n<br />\r\nIf you need help, or you have any other questions, feel free to email student@yopmail.com, or call Qarint customer service toll-free at .<br />\r\n<br />\r\nQarint Customer Service</p><p>Your Token code is <b>150856</b></p>', 1, 10, '2020-10-25 19:27:15'),
(93, 'Qarint - Forgot password', '<!-- Logo --><!-- Title -->\r\n<p>FORGOT PASSWORD</p>\r\n<!-- Messages -->\r\n\r\n<p>We have sent you this email in response to your request to reset your password on Qarint After you reset your password, any credit card information stored in My Account will be deleted as a security measure.<br />\r\n<br />\r\nTo reset your password for <a href=&quot;https://qarint.com>Change Password</a>, please follow the link below: https://qarint.com/resetpassword/2ebc642d83e07cc72308d6f7f88ff878<br />\r\n<br />\r\nWe recommend that you keep your password secure and not share it with anyone.If you feel your password has been compromised, you can change it by going to your Qarint My Account Page and clicking on the &quot;Change Email Address or Password&quot; link.<br />\r\n<br />\r\nIf you need help, or you have any other questions, feel free to email mustafaolgn@gmail.com, or call Qarint customer service toll-free at .<br />\r\n<br />\r\nQarint Customer Service</p><p>Your Token code is <b>98864</b></p>', 1, 31, '2020-10-25 22:24:38'),
(94, 'Qarint - Forgot password', '<!-- Logo --><!-- Title -->\r\n<p>FORGOT PASSWORD</p>\r\n<!-- Messages -->\r\n\r\n<p>We have sent you this email in response to your request to reset your password on Qarint After you reset your password, any credit card information stored in My Account will be deleted as a security measure.<br />\r\n<br />\r\nTo reset your password for <a href=&quot;https://qarint.com>Change Password</a>, please follow the link below: https://qarint.com/resetpassword/7d89ff0aff56085a991d0f0a656f9e16<br />\r\n<br />\r\nWe recommend that you keep your password secure and not share it with anyone.If you feel your password has been compromised, you can change it by going to your Qarint My Account Page and clicking on the &quot;Change Email Address or Password&quot; link.<br />\r\n<br />\r\nIf you need help, or you have any other questions, feel free to email student@yopmail.com, or call Qarint customer service toll-free at .<br />\r\n<br />\r\nQarint Customer Service</p><p>Your Token code is <b>150856</b></p>', 1, 10, '2020-10-29 23:05:04');
INSERT INTO `mail_cron` (`id`, `subject`, `message`, `sender`, `receiver`, `created_at`) VALUES
(95, 'Qarint - Forgot password', '<!-- Logo --><!-- Title -->\r\n<p>FORGOT PASSWORD</p>\r\n<!-- Messages -->\r\n\r\n<p>We have sent you this email in response to your request to reset your password on Qarint After you reset your password, any credit card information stored in My Account will be deleted as a security measure.<br />\r\n<br />\r\nTo reset your password for <a href=&quot;https://qarint.com>Change Password</a>, please follow the link below: https://qarint.com/resetpassword/f13e6d6b4d5ebab76328019f9be33ab8<br />\r\n<br />\r\nWe recommend that you keep your password secure and not share it with anyone.If you feel your password has been compromised, you can change it by going to your Qarint My Account Page and clicking on the &quot;Change Email Address or Password&quot; link.<br />\r\n<br />\r\nIf you need help, or you have any other questions, feel free to email serdargurcay92@gmail.com, or call Qarint customer service toll-free at .<br />\r\n<br />\r\nQarint Customer Service</p><p>Your Token code is <b>160654</b></p>', 1, 45, '2020-11-07 18:22:57'),
(96, 'Qarint - Forgot password', '<!-- Logo --><!-- Title -->\r\n<p>FORGOT PASSWORD</p>\r\n<!-- Messages -->\r\n\r\n<p>We have sent you this email in response to your request to reset your password on Qarint After you reset your password, any credit card information stored in My Account will be deleted as a security measure.<br />\r\n<br />\r\nTo reset your password for <a href=&quot;https://qarint.com>Change Password</a>, please follow the link below: https://qarint.com/resetpassword/eb5306944966fc57433eaa7122dacc7c<br />\r\n<br />\r\nWe recommend that you keep your password secure and not share it with anyone.If you feel your password has been compromised, you can change it by going to your Qarint My Account Page and clicking on the &quot;Change Email Address or Password&quot; link.<br />\r\n<br />\r\nIf you need help, or you have any other questions, feel free to email mustafaolgn1@gmail.com, or call Qarint customer service toll-free at .<br />\r\n<br />\r\nQarint Customer Service</p><p>Your Token code is <b>92469</b></p>', 1, 32, '2020-11-12 23:05:22'),
(97, 'Profile details', 'Here is your Login credentials details. please use these details to login on the site <br>Email: denem@yopmail.com<br> Password : 123456<br><br><br>Email verify Link :  <a href=\"https://qarint.com/account_verify/b7ffe589f9b4a499e6237bb60f8153f1\">Click to Verify the Link</a>', 1, 87, '2021-01-10 18:23:49'),
(98, 'Profile details', 'Here is your Login credentials details. please use these details to login on the site <br>Email: deneme@yopmail.com<br> Password : 123456<br><br><br>Email verify Link :  <a href=\"https://qarint.com/account_verify/41b6c2399053fac9ff260a0e545d7f92\">Click to Verify the Link</a>', 1, 88, '2021-01-10 18:35:02'),
(99, 'Profile details', 'Here is your Login credentials details. please use these details to login on the site <br>Email: huseyincetin@bilfen.com<br> Password : h3502110<br><br><br>Email verify Link :  <a href=\"https://qarint.com/account_verify/fb243eba049d1a1c65925466ce577fb5\">Click to Verify the Link</a>', 1, 100, '2021-01-14 22:05:10'),
(100, 'Qarint - Forgot password', '<!-- Logo --><!-- Title -->\r\n<p>FORGOT PASSWORD</p>\r\n<!-- Messages -->\r\n\r\n<p>We have sent you this email in response to your request to reset your password on Qarint After you reset your password, any credit card information stored in My Account will be deleted as a security measure.<br />\r\n<br />\r\nTo reset your password for <a href=&quot;https://qarint.com>Change Password</a>, please follow the link below: https://qarint.com/resetpassword/fb243eba049d1a1c65925466ce577fb5<br />\r\n<br />\r\nWe recommend that you keep your password secure and not share it with anyone.If you feel your password has been compromised, you can change it by going to your Qarint My Account Page and clicking on the &quot;Change Email Address or Password&quot; link.<br />\r\n<br />\r\nIf you need help, or you have any other questions, feel free to email huseyincetin@bilfen.com, or call Qarint customer service toll-free at .<br />\r\n<br />\r\nQarint Customer Service</p>', 1, 100, '2021-01-21 22:39:15'),
(101, 'Qarint - Forgot password', '<!-- Logo --><!-- Title -->\r\n<p>FORGOT PASSWORD</p>\r\n<!-- Messages -->\r\n\r\n<p>We have sent you this email in response to your request to reset your password on Qarint After you reset your password, any credit card information stored in My Account will be deleted as a security measure.<br />\r\n<br />\r\nTo reset your password for <a href=&quot;https://qarint.com>Change Password</a>, please follow the link below: https://qarint.com/resetpassword/05ddeb308b7b07c9c231a7157c4c610c<br />\r\n<br />\r\nWe recommend that you keep your password secure and not share it with anyone.If you feel your password has been compromised, you can change it by going to your Qarint My Account Page and clicking on the &quot;Change Email Address or Password&quot; link.<br />\r\n<br />\r\nIf you need help, or you have any other questions, feel free to email student@yopmail.com, or call Qarint customer service toll-free at .<br />\r\n<br />\r\nQarint Customer Service</p><p>Your Token code is <b>1745</b></p>', 1, 10, '2021-01-26 15:54:43'),
(102, 'Qarint - Forgot password', '<p>Your Token code is <b>1745</b><br/>Please use this code to reset your password.</p>', 1, 10, '2021-01-26 15:57:00'),
(103, 'Qarint - Forgot password', '<p>Your Token code is <b>7553552</b><br/>Please use this code to reset your password.</p>', 1, 10, '2021-01-26 16:06:11'),
(104, 'Qarint - Forgot password', '<p>Your Token code is <b>4800464</b><br/>Please use this code to reset your password.</p>', 1, 10, '2021-01-26 16:07:53'),
(105, 'Qarint - Forgot password', '<p>Your Token code is <b>267771</b><br/>Please use this code to reset your password.</p>', 1, 10, '2021-01-26 16:08:26'),
(106, 'Qarint - Forgot password', '<p>Your Token code is <b>11500</b><br/>Please use this code to reset your password.</p>', 1, 10, '2021-01-26 16:11:28'),
(107, 'Qarint - Forgot password', '<p>Your Token code is <b>83521</b><br/>Please use this code to reset your password.</p>', 1, 10, '2021-01-30 05:10:41'),
(108, 'Qarint - Forgot password', '<p>Your Token code is <b>756172</b><br/>Please use this code to reset your password.</p>', 1, 10, '2021-01-30 05:12:51'),
(109, 'Qarint - Forgot password', '<p>Your Token code is <b>2029388</b><br/>Please use this code to reset your password.</p>', 1, 10, '2021-01-30 05:16:26'),
(110, 'Qarint - Forgot password', '<p>Your Token code is <b>1245463</b><br/>Please use this code to reset your password.</p>', 1, 10, '2021-01-30 09:48:47'),
(111, 'Qarint - Forgot password', '<p>Your Token code is <b>828110</b><br/>Please use this code to reset your password.</p>', 1, 10, '2021-02-01 16:53:37'),
(112, 'Qarint - Forgot password', '<p>Your Token code is <b>25382</b><br/>Please use this code to reset your password.</p>', 1, 10, '2021-02-01 16:54:17'),
(113, 'Qarint - Forgot password', '<p>Your Token code is <b>9295</b><br/>Please use this code to reset your password.</p>', 1, 10, '2021-02-01 17:02:54'),
(114, 'Qarint - Forgot password', '<p>Your Token code is <b>2480</b><br/>Please use this code to reset your password.</p>', 1, 72, '2021-02-02 14:13:46'),
(115, 'Qarint - Forgot password', '<p>Your Token code is <b>4356</b><br/>Please use this code to reset your password.</p>', 1, 72, '2021-02-02 14:15:03'),
(116, 'Qarint - Forgot password', '<p>Your Token code is <b>6861</b><br/>Please use this code to reset your password.</p>', 1, 92, '2021-02-02 14:15:46'),
(117, 'Qarint - Forgot password', '<p>Your Token code is <b>1310</b><br/>Please use this code to reset your password.</p>', 1, 10, '2021-02-02 16:36:58'),
(118, 'Qarint - Forgot password', '<p>Your Token code is <b>2024</b><br/>Please use this code to reset your password.</p>', 1, 72, '2021-02-02 17:37:35'),
(119, 'Qarint - Forgot password', '<p>Your Token code is <b>7090</b><br/>Please use this code to reset your password.</p>', 1, 72, '2021-02-02 17:40:13'),
(120, 'Qarint - Forgot password', '<p>Your Token code is <b>8649</b><br/>Please use this code to reset your password.</p>', 1, 72, '2021-02-02 18:17:36'),
(121, 'Qarint - Forgot password', '<p>Your Token code is <b>6464</b><br/>Please use this code to reset your password.</p>', 1, 75, '2021-02-03 00:35:17'),
(122, 'Qarint - Forgot password', '<p>Your Token code is <b>2982</b><br/>Please use this code to reset your password.</p>', 1, 75, '2021-02-03 00:39:12'),
(123, 'Qarint - Forgot password', '<p>Your Token code is <b>7391</b><br/>Please use this code to reset your password.</p>', 1, 86, '2021-02-03 16:48:35'),
(124, 'Qarint - Forgot password', '<p>Your Token code is <b>4968</b><br/>Please use this code to reset your password.</p>', 1, 72, '2021-02-03 16:50:16'),
(125, 'Qarint - Forgot password', '<p>Your Token code is <b>7659</b><br/>Please use this code to reset your password.</p>', 1, 92, '2021-02-03 17:02:48'),
(126, 'Qarint - Forgot password', '<p>Your Token code is <b>4051</b><br/>Please use this code to reset your password.</p>', 1, 79, '2021-02-03 22:01:54'),
(127, 'Qarint - Forgot password', '<p>Your Token code is <b>9490</b><br/>Please use this code to reset your password.</p>', 1, 109, '2021-02-04 10:28:38'),
(128, 'Qarint - Forgot password', '<p>Your Token code is <b>7577</b><br/>Please use this code to reset your password.</p>', 1, 110, '2021-02-04 10:32:44'),
(129, 'Qarint - Forgot password', '<p>Your Token code is <b>6793</b><br/>Please use this code to reset your password.</p>', 1, 110, '2021-02-04 10:36:35'),
(130, 'Qarint - Forgot password', '<p>Your Token code is <b>6570</b><br/>Please use this code to reset your password.</p>', 1, 83, '2021-02-05 16:58:32'),
(131, 'Qarint - Forgot password', '<p>Your Token code is <b>4345</b><br/>Please use this code to reset your password.</p>', 1, 109, '2021-03-07 09:47:06'),
(132, 'Qarint - Forgot password', '<p>Your Token code is <b>9115</b><br/>Please use this code to reset your password.</p>', 1, 83, '2021-03-07 15:12:06'),
(133, 'Qarint - Forgot password', '<p>Your Token code is <b>3625</b><br/>Please use this code to reset your password.</p>', 1, 83, '2021-03-07 15:19:53'),
(134, 'Qarint - Forgot password', '<p>Your Token code is <b>9672</b><br/>Please use this code to reset your password.</p>', 1, 83, '2021-03-07 15:20:53'),
(135, 'Qarint - Forgot password', '<p>Your Token code is <b>4432</b><br/>Please use this code to reset your password.</p>', 1, 83, '2021-03-07 15:26:07'),
(136, 'Qarint - Forgot password', '<p>Your Token code is <b>2679</b><br/>Please use this code to reset your password.</p>', 1, 83, '2021-03-07 15:35:15');

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
(38, '2014_10_12_000000_create_users_table', 1),
(39, '2014_10_12_100000_create_password_resets_table', 1),
(40, '2019_07_08_110149_update_users_table', 1),
(41, '2019_07_10_064445_permissions', 1),
(42, '2019_07_10_065044_role_has_permission', 1),
(43, '2019_07_25_080727_create_page_table', 1),
(44, '2019_08_09_060246_create_student_table', 1),
(45, '2019_11_25_125148_create_social_facebook_accounts_table', 2),
(46, '2019_12_09_133352_create_subscribers_table', 2),
(48, '2019_12_11_091913_create_category_table', 4),
(49, '2019_12_12_113713_create_instructor_info_table', 5),
(50, '2019_12_10_105943_create_subscription_plan_table', 6),
(53, '2020_01_07_052204_create_chatbot_table', 8),
(54, '2020_01_09_061533_create_instructor_schedule_module_table', 9),
(55, '2020_01_15_113203_create_student_subscription_table', 10),
(56, '2020_01_20_071146_create_recording_table', 10),
(57, '2020_01_24_102956_create_test_table', 10),
(58, '2020_01_24_105034_create_room_entity_table', 10),
(59, '2020_02_03_122203_create_logs_history_table', 11),
(60, '2020_02_04_081647_create_user_permission_table', 12),
(61, '2020_02_05_103855_create_support_system_table', 13),
(62, '2020_02_10_114745_create_users_rating_table', 14),
(64, '2020_01_01_105121_create_rooms_table', 15),
(65, '2020_02_12_065127_create_rating_message_table', 16),
(66, '2020_02_13_072226_create_speciality_module_table', 17),
(67, '2020_02_17_081436_create_instructor_salary', 18),
(68, '2020_02_20_121511_currency_converter_table', 19),
(69, '2020_03_02_134904_create_testimonial_table', 20),
(70, '2020_03_03_074349_create_support_queries_table', 21),
(72, '2020_03_05_050750_create_ins_working_hours_charges_table', 22);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\User', 1),
(2, 'App\\User', 2),
(3, 'App\\User', 3),
(3, 'App\\User', 4);

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

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `carts_product_ids` varchar(100) NOT NULL,
  `amount` int(11) NOT NULL,
  `address_id` int(11) NOT NULL,
  `size` varchar(100) DEFAULT NULL,
  `payment` enum('1','2') NOT NULL DEFAULT '1' COMMENT '''1=offline'',''2=online''',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `carts_product_ids`, `amount`, `address_id`, `size`, `payment`, `created_at`, `updated_at`, `deleted_at`) VALUES
(6, 10, '25', 10026, 4, NULL, '1', '2021-02-28 13:33:02', '2021-02-28 13:33:02', NULL),
(7, 10, '30,31,32', 100, 1, NULL, '1', '2021-02-28 15:11:39', '2021-02-28 15:11:39', NULL),
(8, 10, '33,34', 10056, 4, NULL, '1', '2021-02-28 16:09:15', '2021-02-28 16:09:15', NULL),
(9, 10, '35', 10056, 4, NULL, '1', '2021-02-28 16:33:20', '2021-02-28 16:33:20', NULL),
(10, 10, '36', 10056, 4, NULL, '1', '2021-02-28 16:35:02', '2021-02-28 16:35:02', NULL),
(11, 10, '40,41', 10056, 4, NULL, '1', '2021-02-28 17:02:47', '2021-02-28 17:02:47', NULL),
(12, 10, '43,44,45', 40056, 4, NULL, '1', '2021-02-28 17:05:19', '2021-02-28 17:05:19', NULL),
(13, 10, '46,47,48', 80056, 4, NULL, '1', '2021-02-28 17:06:21', '2021-02-28 17:06:21', NULL),
(14, 10, '51', 30026, 4, NULL, '1', '2021-02-28 18:05:48', '2021-02-28 18:05:48', NULL),
(15, 10, '53', 10026, 4, NULL, '1', '2021-02-28 18:46:42', '2021-02-28 18:46:42', NULL),
(16, 10, '55,56,57,58,59', 130026, 4, NULL, '1', '2021-02-28 19:04:14', '2021-02-28 19:04:14', NULL),
(17, 10, '65,66,67', 70026, 7, NULL, '1', '2021-02-28 19:14:56', '2021-02-28 19:14:56', NULL),
(18, 10, '69,70', 80026, 7, NULL, '1', '2021-03-01 01:31:03', '2021-03-01 01:31:03', NULL),
(19, 10, '71,72', 90026, 8, NULL, '1', '2021-03-01 04:51:09', '2021-03-01 04:51:09', NULL),
(20, 10, '73,77,78,79,80', 30056, 8, NULL, '1', '2021-03-01 05:50:18', '2021-03-01 05:50:18', NULL),
(21, 10, '81', 50026, 9, NULL, '1', '2021-03-01 07:25:39', '2021-03-01 07:25:39', NULL),
(22, 10, '82,83,84,85', 270026, 9, NULL, '1', '2021-03-01 07:33:23', '2021-03-01 07:33:23', NULL),
(23, 10, '86,87,88,89,90,91', 40056, 9, NULL, '1', '2021-03-01 08:04:27', '2021-03-01 08:04:27', NULL),
(24, 10, '92,93,94,95,96,97,98,99', 920026, 9, NULL, '1', '2021-03-01 08:33:46', '2021-03-01 08:33:46', NULL),
(25, 10, '102,103,104,105,106', 50056, 9, NULL, '1', '2021-03-01 10:47:32', '2021-03-01 10:47:32', NULL),
(26, 10, '107,108', 10056, 8, NULL, '1', '2021-03-01 11:15:18', '2021-03-01 11:15:18', NULL),
(27, 74, '113,114,115', 100026, 10, NULL, '1', '2021-03-01 16:42:11', '2021-03-01 16:42:11', NULL),
(28, 10, '116,117,118,119', 240026, 11, NULL, '1', '2021-03-01 16:48:44', '2021-03-01 16:48:44', NULL),
(29, 74, '122,123,124', 130026, 12, NULL, '1', '2021-03-02 04:16:04', '2021-03-02 04:16:04', NULL),
(30, 74, '128,129,130', 110026, 12, NULL, '1', '2021-03-02 08:42:40', '2021-03-02 08:42:40', NULL),
(31, 74, '131,132,134', 260026, 12, NULL, '1', '2021-03-02 14:14:35', '2021-03-02 14:14:35', NULL),
(32, 10, '150,151', 120111, 14, NULL, '1', '2021-03-03 11:25:33', '2021-03-03 11:25:33', NULL),
(33, 74, '164', 30026, 10, NULL, '1', '2021-03-03 14:57:26', '2021-03-03 14:57:26', NULL),
(34, 10, '173,174,175', 50026, 14, NULL, '1', '2021-03-03 15:44:27', '2021-03-03 15:44:27', NULL),
(35, 10, '176', 10026, 14, NULL, '1', '2021-03-03 15:46:54', '2021-03-03 15:46:54', NULL),
(36, 10, '177,178,179,180,181', 90026, 14, NULL, '1', '2021-03-03 15:52:49', '2021-03-03 15:52:49', NULL),
(37, 10, '182', 10026, 14, NULL, '1', '2021-03-03 15:56:14', '2021-03-03 15:56:14', NULL),
(38, 10, '184,186', 20056, 14, NULL, '1', '2021-03-04 06:40:49', '2021-03-04 06:40:49', NULL),
(39, 10, '188,189,190,191', 120026, 14, NULL, '1', '2021-03-04 10:25:40', '2021-03-04 10:25:40', NULL),
(40, 10, '192', 10026, 14, NULL, '1', '2021-03-04 10:27:22', '2021-03-04 10:27:22', NULL),
(41, 10, '213,214,215,216', 150056, 8, NULL, '1', '2021-03-06 16:39:43', '2021-03-06 16:39:43', NULL),
(42, 10, '219', 10026, 9, NULL, '1', '2021-03-06 17:37:06', '2021-03-06 17:37:06', NULL),
(43, 10, '220,221,222', 100111, 14, NULL, '1', '2021-03-07 09:43:46', '2021-03-07 09:43:46', NULL),
(44, 10, '234', 10056, 14, NULL, '1', '2021-03-08 16:49:08', '2021-03-08 16:49:08', NULL),
(45, 10, '236,237,238', 170026, 17, NULL, '1', '2021-03-09 13:11:25', '2021-03-09 13:11:25', NULL),
(46, 10, '239,240', 50026, 17, NULL, '1', '2021-03-09 13:20:25', '2021-03-09 13:20:25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `page`
--

CREATE TABLE `page` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `data_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1=>active, 2=>in-active, 3=>deleted',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page`
--

INSERT INTO `page` (`id`, `data_name`, `page_name`, `content`, `status`, `created_at`, `updated_at`) VALUES
(1, 'TERMS_CONDITION', 'Terms and Conditions', '<p>Qarint Company</p>\r\n\r\n<p>User Agreement</p>\r\n\r\n<p>Welcome to the Qarint Company&nbsp;(&ldquo;Qarint&rdquo;), application and website!&nbsp; We connect individuals who want to learn a language with a native speaker who can help them learn (&ldquo;Tutors&rdquo;) for real time video chat foreign language tutoring sessions (&ldquo;Tutoring Services&rdquo;).&nbsp; This User Agreement (this &ldquo;Agreement&rdquo;) applies to users, and where users are minors/children under the age of 13, their parent or legal guardian, who visit and engage Tutors for language tutoring services (collectively or individually &ldquo;Students&rdquo;), whether through our websites, Qarint.com (the &ldquo;Sites&rdquo;) or Qarint mobile device applications (the &ldquo;Apps&rdquo;) together &ldquo;the Platform.&rdquo;&nbsp;&nbsp;</p>\r\n\r\n<p>PLEASE READ THIS AGREEMENT CAREFULLY.&nbsp; THIS AGREEMENT PROVIDES THAT ALMOST ALL DISPUTES BETWEEN YOU AND Qarint ARE SUBJECT TO BINDING ARBITRATION AND CONTAINS A WAIVER OF CLASS AND COLLECTIVE ACTION RIGHTS AND ANY RIGHT TO A JURY TRIAL AS DETAILED IN THE ARBITRATION AND CLASS ACTION WAIVER SECTION BELOW.&nbsp; BY ENTERING THIS AGREEMENT, YOU GIVE UP YOUR RIGHT TO SUE IN COURT, HAVE YOUR CLAIMS HEARD BY A JURY, AND TO BE PART OF A CLASS OR COLLECTIVE ACTION, TO RESOLVE THESE DISPUTES, AS EXPLAINED IN MORE DETAIL IN THAT SECTION.</p>\r\n\r\n<p>PLEASE REVIEW THIS AGREEMENT IN ITS ENTIRETY.&nbsp; WHEN YOU EXECUTE THIS AGREEMENT, YOU WILL BE LEGALLY BOUND BY ITS TERMS AND CONDITIONS.&nbsp; BY CLICKING ON &ldquo;I AGREE TO THE USER AGREEMENT AND PRIVACY POLICY&rdquo; AND REGISTERING FOR A USER ACCOUNT, YOU ACKNOWLEDGE THAT YOU HAVE READ, UNDERSTOOD, AND AGREE TO BE BOUND BY THIS AGREEMENT, INCLUDING THE ARBITRATION AND CLASS ACTION PROVISIONS AND VIDEO RECORDING PROVISIONS.&nbsp; IF YOU DO NOT AGREE TO ALL OF THE TERMS AND CONDITIONS OF THIS AGREEMENT, DO NOT CLICK &ldquo;ACCEPT&rdquo; OR ENGAGE IN ANY TUTORING SERVICES.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>NOTE TO KIDS under 13 years of age: Individuals under the age of 13 are not permitted to use the Platform and Tutoring Services until their parent or legal guardian provides verifiable consent to Qarint.</p>\r\n\r\n<p>1.&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Independent Contractor Relationship between Student and Tutor, Qarint is a Marketplace Provider.&nbsp; You acknowledge that Tutors are independent contractors operating an independent business enterprise who use the Platform to offer and provide Tutoring Services to Students.&nbsp; Student acknowledges and agrees that Qarint has no responsibility for, control over, or involvement in the scope, nature, quality, character, timing or location of any work or services performed by Tutor, including any work or services that any individual affiliated with the Tutor may provide, either as an employee, independent contractor, or otherwise.&nbsp; Student further represents, acknowledges, and warrants that throughout the Term it shall at all times treat Tutor as independent contractors and that Student will take no action that is inconsistent with such classification.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>1.1 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Student acknowledges that Qarint is not an employer of, or joint employer or integrated or single enterprise with any Tutor or Student.&nbsp; Qarint is not responsible for the performance or non-performance of any Tutor or Student.&nbsp; Each Tutor is solely and entirely responsible for their own acts and for the acts of their employees, subcontractors, affiliates and agents.&nbsp; Each Student is solely and entirely responsible for their own acts and for the acts of their employees, subcontractors, affiliates, and agents.&nbsp; Qarint is under no obligation to ensure any Session is completed to Student&rsquo;s satisfaction.&nbsp;&nbsp;&nbsp;</p>\r\n\r\n<p>1.2 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Student acknowledges that Tutor is, and shall at all times be and remain, an independent contractor providing services to identified Students utilizing the Qarint platform.&nbsp; Nothing in this Agreement or otherwise shall be construed as identifying Tutor, Student, or their personnel or representatives as an employee, agent, or legal representative of Qarint or any of Qarint&rsquo;s related or affiliated entities for any purpose, and Student and Tutor and any respective representatives shall not hold themselves out as employees of Qarint in any capacity.</p>\r\n\r\n<p>1.3 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Student is not to transact business, incur obligations, sell goods, receive payments, solicit goods or services, enter into any contract, or assign or create any obligation of any kind, express or implied, on behalf of Qarint or any of Qarint&rsquo;s related or affiliated entities, or to bind in any way whatsoever, or to make any promise, warranty, or representation on behalf of Qarint or any of Qarint&rsquo;s related or affiliated entities regarding any matter, except as expressly authorized in this Agreement or in another writing signed by an authorized officer of Qarint.&nbsp; Further, Student shall not use Qarint&rsquo;s trade names, logos, trademarks, service names, service marks, or any other proprietary designations without the prior written approval of Qarint.</p>\r\n\r\n<p>1.4 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Student understands that, except as otherwise specifically agreed between Student and Tutor, Tutor will provide all equipment, tools, materials, and labor that he or she needs to perform the Tutoring Services agreed to with Student and that Qarint will provide no equipment, tools, materials, or labor that may be needed to perform the Tutoring Services under this Agreement.&nbsp; Qarint will, however, provide both Student and Tutor with access to the Platform to facilitate access to available, optional support resources and materials, if Student so chooses.</p>\r\n\r\n<p>1.5 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Tutor is solely responsible for scheduling the timing of Tutoring Services and agrees to do as consistent with the Student&rsquo;s scheduling requirements.&nbsp; Student agrees and understands that Qarint plays no role in scheduling or delivery of Tutoring Services.</p>\r\n\r\n<p>1.6 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Student understands and agrees that Tutor is solely responsible for determining how Tutoring Services will be completed, as well as the preparation and additional work necessary to properly perform Tutoring Services to the satisfaction of Student.&nbsp;</p>\r\n\r\n<p>1.7 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Student understands that Tutor may hire employees or engage contractors or subcontractors (at his or her sole expense) to assist with providing the Tutoring Services; however, Tutor&rsquo;s employees or subcontractors may not be used to deliver Tutoring Services on behalf of Tutor without the express written permission of Student.&nbsp; Student understands and acknowledges that Tutor acknowledges that they remain solely and exclusively responsible for the timely provision of the Tutoring Services to meet Student&rsquo;s requirements and specifications.</p>\r\n\r\n<p>1. Student understands and acknowledges that Tutor shall remain responsible for and shall pay all operational costs, expenses, and disbursements relating to operating Tutor&rsquo;s business (including the activities of any employees or subcontractors) and the provision of the Tutoring Services under this Agreement.</p>\r\n\r\n<p>2. Privacy Policy and Guidelines.&nbsp; Qarint&rsquo;s Privacy Policy is incorporated into this Agreement.&nbsp; Please read this notice carefully for details relating to the collection, use, and disclosure of your personal information.&nbsp; When using the Platform, you are subject to any additional posted guidelines or rules applicable to specific services, offers, and features.&nbsp; All such Guidelines are incorporated by reference into this Agreement.</p>\r\n\r\n<p>3. Modification.&nbsp; Qarint may make modifications to this Agreement at any time.&nbsp; Such changes will be effective as to existing users after Qarint provides notice of the Changes, either through the Platform user interface or sent to the e-mail address associated with your user account; and when you opt-in or otherwise expressly agree to the Changes or a version of this Agreement incorporating the Changes.&nbsp; If you provide written notice that you do not accept a proposed Change or decline to expressly agree to a proposed Change, Qarint may terminate this Agreement and your use of the Platform.</p>\r\n\r\n<p>4.&nbsp;License to Use the App.&nbsp; If you have downloaded the App, then subject to your compliance with all the terms and conditions of this Agreement, Qarint grants you a limited, nonexclusive, non-transferable, revocable license to install and use the App on a compatible mobile device that you own or control for your personal, non-commercial purposes, in each case in the manner enabled by Qarint.&nbsp; If you are using the App on an Apple, Inc. iOS device, the foregoing license is further limited to use permitted by the &ldquo;Usage Rules&rdquo; set forth in Apple&rsquo;s App Store Terms of Service.&nbsp; Any use of the Apps other than for private, non-commercial use is strictly prohibited.</p>\r\n\r\n<p>5. Ownership; Proprietary Rights.&nbsp; The Platform is owned and operated by Qarint.&nbsp; The videos, content, visual interfaces, information, graphics, design, compilation, computer code, products, software, services, and all other elements of the Service, Sites and Apps are protected by United States copyright, trade dress, patent, and trademark laws, international conventions, and all other relevant intellectual property and proprietary rights, and applicable laws.&nbsp; All Qarint Materials are the property of Qarint or its subsidiaries or affiliated companies and/or third-party licensors.&nbsp; All trademarks, service marks, and trade names are proprietary to Qarint or its affiliates and/or third-party licensors.&nbsp; Except as expressly authorized by Qarint, you agree not to sell, license, distribute, copy, modify, publicly perform or display, transmit, publish, edit, adapt, create derivative works from, or otherwise make unauthorized use of the Qarint Materials.</p>\r\n\r\n<p>6. Mobile Services.&nbsp; Use of the Apps requires usage of data services provided by your wireless service carrier.&nbsp; You acknowledge and agree that you are solely responsible for data usage fees and any other fees that your wireless service carrier may charge in connection with your use of the Apps.</p>\r\n\r\n<p>7. Services.&nbsp;&nbsp;</p>\r\n\r\n<p>7.1&nbsp;Service Generally.&nbsp; The Platform allows you to request and engage in a video chat session on demand with an independent contractor in the business of providing tutoring services, who is native speaker for purposes of practicing conversation skills in the language of your choice.&nbsp; You agree to only engage in Sessions for your personal, non-commercial purposes and agree not to record, copy, redistribute, broadcast, publicly perform or publicly display any such Session, except as allowed by this Agreement.&nbsp;&nbsp;</p>\r\n\r\n<p>7.2 Tutor Availability.&nbsp; Sessions are subject to Tutor availability, and Qarint does not guarantee that any particular (or any) Tutor will be available at any given time.&nbsp; You hereby acknowledge that all Tutors are independent contractors offering their services to you via the Service and are not employees or agents of Qarint.&nbsp; Qarint makes no representation or warranty regarding the results of engaging in a Session, including without limitation that your experience with a Tutor will meet your expectations or goals.&nbsp;&nbsp;</p>\r\n\r\n<p>7.3 Tutor Integrity.&nbsp; Tutors are subject to periodic check-ins. You acknowledge that Qarint has no duty to verify any stated credentials, experience or qualifications of any Tutor, and that Qarint does not conduct any screening of Tutors other than as expressly set forth in this Section 7.2.&nbsp;</p>\r\n\r\n<p>7.4 Payment.&nbsp; Students pay for Tutoring Services by the minute or through a payment plan. &nbsp; If you access the Service through the Sites, payment will occur through a third party payment systems (e.g., Iyziko).&nbsp; All payment terms and conditions are governed by your applicable agreements with the third party payment system.</p>\r\n\r\n<p>7.5 Refunds.&nbsp; Purchased minutes are non-refundable, and minutes used for a Session are non-creditable.&nbsp; If you have been mistakenly charged for minutes you did not purchase, you may request a refund. If you purchased minutes through the Sites, refunds can be handled by the third party payment system or Qarint.&nbsp;</p>\r\n\r\n<p>7.6&nbsp;Timing.&nbsp; If you pay Tutors through purchased minutes, you will be charged per minute of the Session after the first minute of the Session.&nbsp; If you terminate a Session within 59 seconds of beginning the Session, you will not be charged.&nbsp; If you run out of purchased minutes prior to a Session ending, the Session will terminate and you will be prompted to purchase more minutes.&nbsp;&nbsp;</p>\r\n\r\n<p>7.7 General.&nbsp; All fees are nonrefundable. Fees displayed to you are exclusive of any taxes that may be due in connection with such fees, and you agree to pay any such taxes that may be due, other than taxes based on Qarint&rsquo;s net income.&nbsp; You also agree to pay Qarint any costs and expenses incurred by Qarint, including reasonable attorney&rsquo;s fees, in recovering any fees due hereunder.</p>\r\n\r\n<p>8. Sessions</p>\r\n\r\n<p>8.1Hardware and Software.&nbsp; Engaging in a Session requires compatible hardware and may require the download and installation of specified software.&nbsp; You are solely responsible for acquiring and installing any such hardware and software and for determining compatibility with your system, and hereby assume all risk and liability associated with such hardware and software.&nbsp; You acknowledge that it is your responsibility to review and comply with all applicable license agreements and other terms and conditions relating to all software you use in connection with Sessions and the Platform, generally.</p>\r\n\r\n<p>8.2 Prohibited Behavior in Sessions.&nbsp; You agree not to engage in any activity that would infringe, misappropriate or violate any third party intellectual property rights or that is unlawful, defamatory, libelous, threatening, pornographic, harassing, hateful, racially or ethnically offensive or encourages conduct that would be considered a criminal offense, give rise to civil liability, violate any law or is otherwise inappropriate.&nbsp; You agree to engage in Sessions for the sole purpose of practicing your language skills.&nbsp; You acknowledge that Qarint does not have any duty to monitor Sessions or have any control over the content of a Session, and that you may be exposed to material that you find objectionable in the course of engaging in a Session and that Qarint shall have no liability in connection therewith.&nbsp; Qarint may, at any time, remove any user that violates this Agreement.&nbsp;</p>\r\n\r\n<p>8.3 False Information by Student.&nbsp; You agree that you will not: (i) publish falsehoods or misrepresentations; (ii) submit material that is unlawful, defamatory, libelous, threatening, pornographic, harassing, hateful, racially or ethnically offensive or encourages conduct that would be considered a criminal offense, give rise to civil liability, violate any law or is otherwise inappropriate; or (iii) post advertisements or solicitations of business.&nbsp; Qarint does not endorse any opinion, recommendation, or advice expressed by Tutors or other students, and Qarint expressly disclaims any and all liability in connection with such opinions, recommendations or advice.&nbsp; You understand and acknowledge that you may be exposed to content that is inaccurate, offensive, indecent, or objectionable, and you agree to waive, and hereby do waive, any legal or equitable rights or remedies you have or may have against Qarint with respect thereto.</p>\r\n\r\n<p>8.4&nbsp;Recording; Content.&nbsp; Sessions may be recorded or monitored.&nbsp; You hereby consent to: (i) the monitoring or recording of any Session you engage in, including your likeness therein; (ii) Qarint copying and using such recordings for any business purpose, including without limitation for purposes of Tutor evaluation, Tutor training, dispute resolution and improving the Service; (iii) such recording being made available to the other party to the Session; (iv) such recordings being made available for you to review, (v) such recording being used or disclosed by Qarint to the extent required by law or legal process or to the extent Qarint deems necessary for purposes of enforcing or protecting its rights or the rights of a third party.&nbsp; You hereby waive any rights of publicity, privacy or other rights under applicable law to the extent such rights could be used to prevent Qarint from using Session recordings as contemplated hereunder, and hereby grant a worldwide, non-exclusive, fully paid-up, royalty-free, irrevocable, perpetual, sublicenseable, and transferable license under any intellectual property rights you may have in or to any Session recording or content therein to Qarint to copy, modify, distribute and use such recording and content for its business purposes or as required by law or legal process.&nbsp;&nbsp;</p>\r\n\r\n<p>9.&nbsp;Account Data.&nbsp;&nbsp;</p>\r\n\r\n<p>9.1 Registration.&nbsp; Students must register and create an account through the Platform.&nbsp; Registration requires you to: (i) create a unique user name and password, (i) provide an e-mail address, (iii) indicate your current country of domicile, (iv) indicate your native language, (v) indicate the language you wish to practice, and (vi) indicate your gender.&nbsp; Note that Qarint does not have access to your payment card information.&nbsp; You agree that the information you provide, at all times, will be true, accurate, current, and complete.&nbsp; You also agree that you will ensure that this information is kept confidential, accurate and up-to-date at all times.</p>\r\n\r\n<p>9.2&nbsp;Password.&nbsp; When you register you will be asked to provide a password.&nbsp; As you will be responsible for all charges and other activities that occur under your password, and you agree to keep your password confidential.&nbsp; You are solely responsible for maintaining the confidentiality of your account and password and for restricting access to your computer, and you agree to accept responsibility for all activities that occur under your account or password.&nbsp; If you have reason to believe that your account is no longer secure (for example, in the event of a loss, theft or unauthorized disclosure or use of your account ID or password), you will immediately notify Qarint.&nbsp; You may be liable for the losses incurred by Qarint or others due to any unauthorized use of your account.</p>\r\n\r\n<p>9.3 Personal Use.&nbsp; Your Qarint account, and the minutes you purchase for use with your account, are for your use only.&nbsp; You agree not to share your user name and password or otherwise permit any other person to access or use your Qarint account or purchased minutes.&nbsp;&nbsp;</p>\r\n\r\n<p>10. Prohibited Uses.</p>\r\n\r\n<p>Unlawful Use.&nbsp; As a condition of your use of the Platform, you will not use the Platform for any purpose that is unlawful or prohibited by this Agreement.&nbsp; Access to the Qarint Materials, Sites or Apps from territories where their contents are illegal is strictly prohibited.&nbsp; Students and Tutors are responsible for complying with all local rules, laws, and regulations including, without limitation, rules about intellectual property rights, the internet, technology, data, e-mail, or privacy.&nbsp;&nbsp;</p>\r\n\r\n<p>10.1&nbsp;Unauthorized Use.&nbsp; You may not use the Platform in any manner that in our sole discretion could damage, disable, overburden, or impair it or interfere with any other party&rsquo;s use of the Platform.&nbsp; You may not intentionally interfere with or damage the operation of the Platform, or any user&rsquo;s enjoyment of it, by any means, including uploading or otherwise disseminating viruses, worms, or other malicious code.&nbsp; You may not remove, circumvent, disable, damage or otherwise interfere with any security-related features of the Platform, features that prevent or restrict the use or copying of any content accessible through the Platform, or features that enforce limitations on the use of the Platform.&nbsp; You may not attempt to gain unauthorized access to the Platform, or any part of it, other accounts, computer systems or networks connected to the Platform, or any part of it, through hacking, password mining or any other means or interfere or attempt to interfere with the proper working of the Platform or any activities conducted on the Platform.&nbsp; You may not obtain or attempt to obtain any materials or information through any means not intentionally made available through the Platform.&nbsp; You agree neither to modify the Platform in any manner or form, nor to use modified versions of the Platform, including (without limitation) for obtaining unauthorized access to the Platform.</p>\r\n\r\n<p>10.2&nbsp;Robots.&nbsp; The Sites may contain robot exclusion headers.&nbsp; You agree that you will not use any robot, spider, scraper, or other automated means to access the Platform for any purpose without our express written permission or bypass our robot exclusion headers or other measures we may use to prevent or restrict access to the Platform.</p>\r\n\r\n<p>10.3&nbsp;Trademark Restrictions.&nbsp; You may not utilize framing techniques to enclose any trademark, logo, or other Qarint Materials without our express written consent.&nbsp; You may not use any Qarint logos, graphics, or trademarks, including as part of any meta tags or any other &ldquo;hidden text,&rdquo; without our express written consent, except as permitted in this Agreement.</p>\r\n\r\n<p>11.&nbsp;Availability of Service.&nbsp; Qarint may make changes to or discontinue any of the media, products or services available within the Platform at any time, and without notice.&nbsp; The media, products or services on the Platform may be out of date, and Qarint makes no commitment to update these materials on the Platform.&nbsp;&nbsp;</p>\r\n\r\n<p>12. Notice.&nbsp; Except as explicitly stated otherwise, all notices and other communications shall be in writing and shall be deemed to have been duly given or made (i) with delivery by hand, when delivered, (ii) with delivery by certified or registered mail, postage prepaid.</p>\r\n\r\n<p>13. Member Disagreements.&nbsp; You alone are responsible for your engagement with Tutors or other Students.&nbsp; Qarint reserves the right, but has no obligation, to monitor disagreements between you and Tutors or other Students.</p>\r\n\r\n<p>14. Termination.&nbsp; You agree that Qarint, for any or no reason, may terminate this Agreement or your use of the Platform, and remove and discard all or any part of your account at any time by providing written notice to the other party.&nbsp; Qarint may also at any time discontinue providing access to the Platform, or any part thereof, with or without notice.&nbsp; You agree that any termination of your access to the Platform or any account you may have or portion thereof may be effected without prior notice, and you agree that Qarint shall not be liable to you or any third-party for any such termination.&nbsp; Qarint does not permit copyright infringing activities on the Platform, and reserves the right to terminate access to the Platform, and remove all content submitted, by any infringers.&nbsp; Any suspected fraudulent, abusive, or illegal activity that may be grounds for termination of your use of the Platform may be referred to appropriate law enforcement authorities.&nbsp; These remedies are in addition to any other remedies Qarint may have at law or in equity.&nbsp;&nbsp;</p>\r\n\r\n<p>15. Disclaimers; No Warranties.&nbsp; THE SERVICE, SITE, APP AND ANY THIRD-PARTY, MEDIA, SOFTWARE, SERVICES, OR APPLICATIONS MADE AVAILABLE IN CONJUNCTION WITH OR THROUGH THE SERVICE ARE PROVIDED &ldquo;AS IS&rdquo; AND WITHOUT WARRANTIES OF ANY KIND EITHER EXPRESS OR IMPLIED.&nbsp; TO THE FULLEST EXTENT PERMISSIBLE PURSUANT TO APPLICABLE LAW, Qarint, AND ITS SUPPLIERS, LICENSORS AND PARTNERS, DISCLAIM ALL WARRANTIES, EXPRESS OR IMPLIED, INCLUDING, BUT NOT LIMITED TO, IMPLIED WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE, AND NON-INFRINGEMENT OF PROPRIETARY RIGHTS.&nbsp;&nbsp;</p>\r\n\r\n<p>Qarint, AND ITS SUPPLIERS, LICENSORS AND PARTNERS, DO NOT WARRANT THAT THE FEATURES CONTAINED IN THE PLATFORM WILL BE UNINTERRUPTED OR ERROR-FREE, THAT DEFECTS WILL BE CORRECTED, OR THAT THE SERVICE, SITE, APP OR THE SERVERS THAT MAKE THEM AVAILABLE IS FREE OF VIRUSES OR OTHER HARMFUL COMPONENTS.</p>\r\n\r\n<p>Qarint, AND ITS SUPPLIERS, LICENSORS AND PARTNERS, DO NOT WARRANT OR MAKE ANY REPRESENTATIONS REGARDING THE USE OR THE RESULTS OF THE USE OF THE PLATFORM IN TERMS OF CORRECTNESS, ACCURACY, RELIABILITY, OR OTHERWISE.&nbsp; YOU (AND NOT Qarint NOR ITS SUPPLIERS, LICENSORS OR PARTNERS) ASSUME THE ENTIRE COST OF ANY NECESSARY SERVICING, REPAIR, OR CORRECTION.&nbsp; YOU UNDERSTAND AND AGREE THAT YOU DOWNLOAD, OR OTHERWISE OBTAIN MEDIA, MATERIAL, OR OTHER DATA THROUGH THE USE OF THE PLATFORM AT YOUR OWN DISCRETION AND RISK AND THAT YOU WILL BE SOLELY RESPONSIBLE FOR ANY DAMAGE TO YOUR COMPUTER SYSTEM OR LOSS OF DATA THAT RESULTS FROM SUCH MATERIAL OR DATA.</p>\r\n\r\n<p>CERTAIN STATE LAWS DO NOT ALLOW LIMITATIONS ON IMPLIED WARRANTIES OR THE EXCLUSION OR LIMITATION OF CERTAIN DAMAGES.&nbsp; IF THESE LAWS APPLY TO YOU, SOME OR ALL OF THE ABOVE DISCLAIMERS, EXCLUSIONS, OR LIMITATIONS MAY NOT APPLY TO YOU, AND YOU MIGHT HAVE ADDITIONAL RIGHTS.</p>\r\n\r\n<p>16.&nbsp;Indemnification; Hold Harmless.&nbsp; You agree to indemnify and hold Qarint, and its affiliated companies, and its suppliers, licensors and partners, harmless from any claims, losses, damages, liabilities, including attorney&rsquo;s fees, arising out of your use or misuse of the Platform, violation of the rights of any other person or entity, or any breach of this Agreement.&nbsp; Qarint reserves the right, at our own expense, to assume the exclusive defense and control of any matter for which you are required to indemnify us and you agree to cooperate with our defense of these claims.</p>\r\n\r\n<p>17.&nbsp;Limitation of Liability and Damages.&nbsp; UNDER NO CIRCUMSTANCES, INCLUDING, BUT NOT LIMITED TO, NEGLIGENCE, SHALL Qarint OR ITS AFFILIATES, CONTRACTORS, EMPLOYEES, AGENTS, OR THIRD PARTY PARTNERS, LICENSORS OR SUPPLIERS, BE LIABLE TO YOU FOR ANY SPECIAL, INDIRECT, INCIDENTAL, CONSEQUENTIAL, OR EXEMPLARY DAMAGES THAT RESULT FROM YOUR USE OR THE INABILITY TO USE THE Qarint MATERIALS ON THE SERVICE, THE SERVICE ITSELF, OR ANY OTHER INTERACTIONS WITH Qarint, EVEN IF Qarint OR A Qarint AUTHORIZED REPRESENTATIVE HAS BEEN ADVISED OF THE POSSIBILITY OF SUCH DAMAGES.&nbsp; APPLICABLE LAW MAY NOT ALLOW THE LIMITATION OR EXCLUSION OF LIABILITY OR INCIDENTAL OR CONSEQUENTIAL DAMAGES, SO THE ABOVE LIMITATION OR EXCLUSION MAY NOT APPLY TO YOU.&nbsp; IN SUCH CASES, Qarint&rsquo;S LIABILITY WILL BE LIMITED TO THE EXTENT PERMITTED BY LAW.</p>\r\n\r\n<p>IN NO EVENT SHALL Qarint&rsquo;S OR ITS AFFILIATES, CONTRACTORS, EMPLOYEES, AGENTS, OR THIRD PARTY PARTNERS OR SUPPLIERS&rsquo; TOTAL LIABILITY TO YOU FOR ALL DAMAGES, LOSSES, AND CAUSES OF ACTION ARISING OUT OF OR RELATING TO THESE TERMS OR YOUR USE OF THE SERVICE (WHETHER IN CONTRACT, TORT, WARRANTY, OR OTHERWISE) EXCEED THE GREATER OF: (A) THE TOTAL AMOUNTS YOU HAVE PAID TO Qarint HEREUNDER DURING THE SIX (6) MONTHS PRECEDING THE DATE OF THE CLAIM AND (B) FIFTY (50) U.S. DOLLARS.</p>\r\n\r\n<p>THESE LIMITATIONS SHALL ALSO APPLY WITH RESPECT TO DAMAGES INCURRED BY REASON OF ANY PRODUCTS OR SERVICES SOLD OR PROVIDED TO YOU BY THIRD PARTIES OTHER THAN Qarint AND RECEIVED BY YOU THROUGH OR ADVERTISED ON THE SERVICE OR RECEIVED BY YOU THROUGH ANY LINKS PROVIDED ON THE SERVICE.</p>\r\n\r\n<p>18. Arbitration Agreement and Class and Collective Action Waiver.&nbsp; Qarint and Student mutually agree to resolve any and all covered justiciable disputes between them exclusively through final and binding arbitration instead of a court or jury trial.&nbsp; This arbitration agreement requires the arbitration of any claims that Qarint or Student may have against the other or against any of their:</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>officers, directors, employees, subcontractors, or agents in their capacity as such or otherwise,</p>\r\n	</li>\r\n	<li>\r\n	<p>direct or indirect parents and subsidiaries, and</p>\r\n	</li>\r\n	<li>\r\n	<p>affiliates, agents, successors or assigns,</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>each and all of which may enforce this arbitration agreement as direct or third-party beneficiaries.</p>\r\n\r\n<p>19.&nbsp;Language.&nbsp; Any action brought under this Agreement shall be conducted in the English language.&nbsp; If Tutor is located in France or Quebec, Canada, the following clause applies:&nbsp; The parties hereby confirm that they have requested that this Agreement be drafted in English.&nbsp; Les parties contractantes confirment qu&#39;elles ontexig&eacute; que le pr&eacute;sent contrat et tous les documents associ&eacute;s soient redig&eacute;s en anglais.</p>\r\n\r\n<p>20. Communications.&nbsp; Under this Agreement, Student consents to receive communications from the Company electronically.&nbsp; The Company will communicate with Student by e-mail or by posting notices on the Sites or Apps.&nbsp; Student agrees that all agreements, notices, disclosures, and other communications that the Company provides to Student electronically satisfy any legal requirement that such communications be in writing.</p>\r\n\r\n<p>21. Complete Agreement.&nbsp; This Agreement contains the entire understanding between the parties and supersedes, replaces and takes precedence over any prior understanding or oral or written agreement between the parties respecting the subject matter of this Agreement.&nbsp; There are no representations, agreements, arrangements, nor understandings, oral or written, between the parties relating to the subject matter of this Agreement that are not fully expressed herein.</p>\r\n\r\n<p>22. Severability.&nbsp; In the event any provision of this Agreement shall be held invalid, the same shall not invalidate or otherwise affect in any respect any other term or terms of this Agreement, which term or terms shall remain in full force and effect.</p>\r\n\r\n<p>23.&nbsp;Successors and Assigns.&nbsp; This Agreement shall be binding upon Student and inure to the benefit of Qarint and its successors and assigns, including, without limitation, any entity to which substantially all of the assets or the business of Qarint are sold or transferred.&nbsp; Tutor shall not be entitled to assign this Agreement or any of Student&rsquo;s rights or obligations hereunder.</p>\r\n\r\n<p>24. Survival.&nbsp; Sections 1, 2, 6, 7, 8 and 11 through 31 will survive any termination of this Agreement.</p>\r\n\r\n<p>25.&nbsp;Non-Waiver.&nbsp; No delay or omission by the Company in exercising any right under this Agreement shall operate as a waiver of that or any other right.&nbsp; A waiver or consent given by the Company on any one occasion shall be effective only in that instance and shall not be construed as a bar or waiver of any right on any other occasion.</p>\r\n\r\n<p>26. Amendment.&nbsp; This Agreement may be amended or modified only by a written instrument executed by both the Company and Student.&nbsp;</p>\r\n\r\n<p>27. Counterparts.&nbsp; This Agreement may be executed in two (2) signed counterparts, each of which shall constitute an original, but all of which taken together shall constitute the same instrument.</p>\r\n\r\n<p>28.&nbsp;Headings.&nbsp; The headings and other captions in this Agreement are included solely for convenience of reference and will not control the meaning and interpretation of any provision of this Agreement.</p>\r\n\r\n<p>29.&nbsp;Governing Law; Jurisdiction.&nbsp; Other than the Arbitration Agreement and Class Action Waiver, which shall be governed by the Federal Arbitration Act, this Agreement will in all respects be is governed by the laws of the State in which Student resides if Student is a U.S. resident and the United States of America without reference to its principles of conflicts of laws.&nbsp;</p>\r\n\r\n<p>30.&nbsp;Signature.&nbsp; This Agreement may be signed and is enforceable by electronic signature, digital signature, wet signature, and facsimile signature.</p>', 1, '2019-11-25 00:10:14', '2020-07-13 15:53:42');
INSERT INTO `page` (`id`, `data_name`, `page_name`, `content`, `status`, `created_at`, `updated_at`) VALUES
(2, 'PRIVACY_POLICY', 'Privacy Policy', '<p>Last Updated:&nbsp; June 01, 2020</p>\r\n\r\n<p>Qarint Inc. Privacy Policy</p>\r\n\r\n<p>Overview</p>\r\n\r\n<p>Welcome to Qarint Inc.!&nbsp; The Qarint Inc. website and service are provided by Qarint Inc. (&ldquo;Qarint,&rdquo; &ldquo;we,&rdquo; &ldquo;us&rdquo; or &ldquo;our&rdquo;).&nbsp; We know that you care how information about you is used and shared, and we appreciate your trust that we will do so carefully and sensibly.&nbsp; This notice describes our privacy policy (&ldquo;Privacy Policy&rdquo;) for the general-audience Qarint website (the &ldquo;Site&rdquo;) located at www.qarint.com and the Qarint mobile device application (the &ldquo;App&rdquo;).&nbsp; The Site and App offer registered users the ability to practice their language skills on a live, video chat with a native language speaker.</p>\r\n\r\n<p>Notice of Information We Collect And How We Use It</p>\r\n\r\n<p>Our primary purpose in collecting personal information is to provide you with a safe, smooth, efficient, and customized experience.&nbsp; This allows us to provide services and features that most likely meet your needs, and to customize our service to make your experience better and easier.</p>\r\n\r\n<p>You may browse portions of our Site without providing us with personally identifiable information.&nbsp; Certain use of the Site, and any use of the App, including the ability to practice language skills through a video chat session, require you to register through the Site or App, in which case we collect and store information, including personally identifiable information, that is voluntarily supplied to us by you when registering on the Site or App.&nbsp;</p>\r\n\r\n<p>You can choose not to provide us with certain information, but by doing so, you may not be able to take advantage of our Site and App features and functionality.&nbsp; We use personally identifiable information to deliver the Site and App to you and to develop analytics and aggregated data that allows us to improve our Site and App.&nbsp; Once you give us your personal information, you are no longer anonymous to us.</p>\r\n\r\n<p>In addition to the specific usages outlined below, we may generally use any information we collect for the following purposes:</p>\r\n\r\n<p>&middot;&nbsp; &nbsp; &nbsp; For the purpose for which you provided the information to us, such as to create and maintain a user account for you;</p>\r\n\r\n<p>&middot;&nbsp; &nbsp; &nbsp; To provide the features and functionality of the Site and App to you;</p>\r\n\r\n<p>&middot;&nbsp; &nbsp; &nbsp; To personalize the content you see based on your personal characteristics and preferences;</p>\r\n\r\n<p>&middot;&nbsp; &nbsp; &nbsp; Improving our Site, App and other products and services;</p>\r\n\r\n<p>&middot;&nbsp; &nbsp; &nbsp; To troubleshoot problems, provide you with required notices, enforce our User Agreement (for example, when necessary to protect our or a third party&rsquo;s intellectual property or proprietary rights), or to alert you to changes in our policies or agreements that may affect your use of the Site or App.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Information We Collect About Site Users</p>\r\n\r\n<p>Log Files</p>\r\n\r\n<p>Like many websites, we automatically gather certain information about our Site traffic and store it in log files.&nbsp; This information includes Internet protocol (IP) addresses, browser type, Internet service provider (ISP), referring/exit pages, operating system, date/time stamp, and clickstream data.&nbsp; We use this information, which does not by itself identify individual users, to analyze trends, to administer the Site, to track users&rsquo; movements around the Site and to gather demographic information about our user base.&nbsp; We may link this automatically collected information to your personally identifiable information, in which case it will be used and disclosed as personally identifiable information under this Privacy Policy.</p>\r\n\r\n<p>Cookies</p>\r\n\r\n<p>A cookie is a small text file that is stored on a user&rsquo;s computer for record-keeping purposes.&nbsp; We use both session ID and persistent cookies on the Site.&nbsp; A session ID cookie expires when you close you browser.&nbsp; We use session cookies to make it easier for you to navigate our Site.&nbsp; A persistent cookie remains on your hard drive for an extended period of time. You can remove persistent cookies by following directions provided in your Internet browser&rsquo;s &ldquo;help&rdquo; file.&nbsp; We set a persistent cookie to store your password, so you do not have to enter it more than once.&nbsp; Persistent cookies also enable us to track and target the interests of our users to enhance the experience on our Site.</p>\r\n\r\n<p>We use marketing services provided by Google and other third parties that allow us to deliver advertising to users after they leave our Site that they will see elsewhere on the web.&nbsp; This is a common practice called &ldquo;remarketing.&rdquo;&nbsp; Users will not see more ads than they otherwise would see as a result of remarketing; rather, the ads they see are more likely to be ads for Qarint products and services.&nbsp; Google and any other third party marketing services providers we use to help us with remarketing use cookies as part of the remarketing service.&nbsp; For more information regarding remarketing and the ability to opt-out, please visit:</p>\r\n\r\n<p>http://www.google.com/ads/preferences/</p>\r\n\r\n<p>http://www.networkadvertising.org</p>\r\n\r\n<p>http://www.aboutads.info</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>If you reject cookies in your browser settings, you may still use our Site, but your ability to use some areas of our Site may be limited.</p>\r\n\r\n<p>Clear Gifs (Web Beacons/Web Bugs)</p>\r\n\r\n<p>We may employ a software technology called clear gifs, also referred to as web beacons or web bugs, that help manage content on the Site by tracking what content is effective.&nbsp; Clear gifs are tiny graphics with a unique identifier, similar in function to cookies, and are used to track the online movements of Site users.&nbsp; In contrast to cookies, which are stored on a user&rsquo;s computer hard drive, clear gifs are embedded invisibly on web pages and are about the size of the period at the end of this sentence.&nbsp;&nbsp;</p>\r\n\r\n<p>Information We Collect From Registered Users of the Site and App</p>\r\n\r\n<p>Registration</p>\r\n\r\n<p>During registration you are required to give truthful contact information in accordance with our User Agreement.&nbsp; Registration requires you to provide us with: (i) a unique username and password, (ii) your email address, (iii) your country of domicile, (iv) your language preferences, and (v) your gender.&nbsp; We use this information to create an account for you on the Site or App, contact you about the services on our Site and App in which you have expressed interest, and customize your experience based on your preferences.&nbsp; For example, information on your country of domicile helps us provide you a Tutor in a comparable time zone.</p>\r\n\r\n<p>Usage Information</p>\r\n\r\n<p>In order to provide you with the best experience, we will collect data on your use of the Site and App, including but not limited to: (i) how long your video chat sessions last, (ii) what features of the Site and App you are using, (iii) when you access the Site and App and relevant features.&nbsp; We may use all of the foregoing information as set forth in this Privacy Policy.&nbsp;</p>\r\n\r\n<p>We utilize Google Analytics, which uses log files and cookies (see above) to track certain information about visitors to the Site in the aggregate.&nbsp; This service captures usage and volume statistics to allow us to analyze usage of our Site.&nbsp; You can get more information about how Google Analytics collects information at http://www.google.com/analytics/.</p>\r\n\r\n<p>Device Information</p>\r\n\r\n<p>When you use the App, we will collect non-personally identifiable information about the device you use to access the App, including but not limited to: (i) the device type, operating system and mobile carrier, (ii) language used by the device, and (iii) time zone used by the device.&nbsp; For iOS-based devices, Apple also provides Qarint with a device token and identification number that is specific to the device used to access the App.&nbsp; This allows Qarint to recognize your device when you log in to the App.</p>\r\n\r\n<p>Payment</p>\r\n\r\n<p>In order to live video chat on the Site or App, you must purchase minutes prior to beginning a session or pay in accordance with the terms and conditions of another payment plan, such as a monthly subscription.&nbsp; If you access Qarint through the Site, you will purchase minutes through a third party payment system (for example, Iyziko). These third party vendors will require you to provide information used for billing and payment.&nbsp; We do not have access to this payment information other than the amount of your purchase and information identifying you as the purchaser.&nbsp; All uses of billing and payment information are governed by the respective policies of those third parties.</p>\r\n\r\n<p>Recording of Sessions</p>\r\n\r\n<p>We use a live video platform operated by Twilio Inc. to provide you with ability to chat through live video with Tutors. Twilio stores a recording of the video chat on their servers, and provides us access to that data.&nbsp; As of the date of this Privacy Policy, Twilio&rsquo;s terms of use states that, in connection with the operation of its video platform, &ldquo;Twilio receives and stores certain personally non-identifiable information as well as aggregated user information and statistics, such as number of unique users, number of sessions and total minutes streamed. Twilio may store such information itself or such information may be stored by and shared with Twilio affiliates, agents, service providers and current and prospective business partners. Twiliouses the foregoing information to provide, improve, market and enhance its products and services and for other lawful business purposes.&rdquo;&nbsp; If you want more information about Twilio&rsquo;s collection, use or disclosure of information, you can contact Twilio through the contact information made available on the Twilio website at https://www.twilio.com.</p>\r\n\r\n<p>If you engage in a video chat session on the Site or App, the session may be recorded as described above and in the User Agreement.&nbsp; We may use such recordings for our internal business purposes, including without limitation for purposes of tutor evaluation, tutor training, dispute resolution and improving our service.&nbsp; The recording may be made available to you and/or the other party to the recording for future viewing through the Site and/or App, or to you individually for review.&nbsp; We may otherwise use the recordings as described in Section 9.4 of our User Agreement.</p>\r\n\r\n<p>Tutor Notes</p>\r\n\r\n<p>In order to provide you with a seamless exchange between multiple tutors, the tutors take notes on your conversation, based on information you provide during the video chat sessions.&nbsp; This information includes, but is not limited to, your: age, gender, language preferences, tutor preferences (e.g. gender of the tutor), and interests.&nbsp; We may retain any such information and associate it with your personally identifiable information.&nbsp; This information will only be available to Qarint personnel and the tutors with whom you interact.&nbsp; We may use this information to match you with a particular tutor available on the Site and App and to provide you with information and services that are more likely to be of interest to you.</p>\r\n\r\n<p>Correspondence</p>\r\n\r\n<p>If you choose to leave us feedback, we will collect the information you send us.&nbsp; We retain this information as necessary to resolve disputes, provide customer support and troubleshoot problems as permitted by law.</p>\r\n\r\n<p>If you send us personal correspondence, such as e-mails or letters, or if other users or third parties send us correspondence about your activities or postings on the Site and App, we may collect such information into a file specific to you.&nbsp;</p>\r\n\r\n<p>Communication from Us, the App or the Site</p>\r\n\r\n<p>Special Offers and Updates</p>\r\n\r\n<p>We may occasionally send you information on products, services, special deals, and promotions, using the e-mail address provided to us by you during registration.&nbsp; To the extent we send you commercial e-mails regarding third party marketing or promotional materials, we will give you the ability to opt-out of receiving such emails in accordance with applicable law.&nbsp; We will not provide your personally identifiable information to third parties for their own marketing purposes without your consent.</p>\r\n\r\n<p>Push Notifications&nbsp;</p>\r\n\r\n<p>You may receive notifications from Qarint through the Apple&rsquo;s push notification services.&nbsp; By allowing push notifications to be sent when you download the App, you consent to all notifications sent to you through the App, which may include information on products, services, special deals and promotions.</p>\r\n\r\n<p>Service-Related Announcements</p>\r\n\r\n<p>We will send you strictly service-related announcements on rare occasions when it is necessary to do so. For instance, if our service is temporarily suspended for maintenance, we might send you an email.</p>\r\n\r\n<p>Generally, you may not opt-out of these communications, which are not promotional in nature.&nbsp; If you do not wish to receive them, you have the option to deactivate your account.</p>\r\n\r\n<p>Customer Service</p>\r\n\r\n<p>We will communicate with you in response to your inquiries, to provide the services you request, and to manage your account.&nbsp; We will communicate with you by e-mail, using the e-mail address provided by you to us when you registered on the Site or App.</p>\r\n\r\n<p>Conditions Under Which Your Information is Shared</p>\r\n\r\n<p>Aggregate Information (Non-Personally Identifiable)</p>\r\n\r\n<p>We may share aggregated demographic information about our user base with our actual and potential advertisers and business partners.&nbsp; This information does not identify individual users.&nbsp;</p>\r\n\r\n<p>Other Users</p>\r\n\r\n<p>If you engage in any communication with another Site or App user, such user shall receive your user name, as well as any other personal information you may choose to share in connection with that communication.</p>\r\n\r\n<p>Tutors</p>\r\n\r\n<p>If you engage in a video chat session or any other communication with a tutor, such tutor shall receive your user name, as well as any other personal information you may choose to share in connection with such chat session.&nbsp; Tutors may include any information you provide in their notes (see &ldquo;Tutor Notes&rdquo; above).</p>\r\n\r\n<p>Share to Social Networking Sites</p>\r\n\r\n<p>At the end of a video chat session, you will have the ability to &ldquo;share&rdquo; information about your recent session on a social networking site, like Facebook.&nbsp; Provided that your tutor has consented, this may include a video of the session.&nbsp; By &ldquo;sharing&rdquo; a session, you acknowledge that your posting is subject to the terms and conditions of the applicable social networking site.&nbsp; We are not liable for any impermissible use of content on any social networking site or any other consequences of posting content on a social networking site.</p>\r\n\r\n<p>Business Partners</p>\r\n\r\n<p>We may disclose non-personally identifiable information to third party partners in furtherance of our business arrangements with them, including without limitation to jointly offer a product or service to you or create interoperability between our products and services and the products and services of such partners.</p>\r\n\r\n<p>Service Providers</p>\r\n\r\n<p>We may use contractors and third party service providers in connection with the Site and App.&nbsp; When our contractors or service provider obtain access to your personally identifiable information, they are required to protect it in a manner that is consistent with this Privacy Policy by, for example, not using it for any purpose other than to carry out the services they are performing for Qarint.</p>\r\n\r\n<p>Other Disclosures</p>\r\n\r\n<p>We reserve the right to disclose your personally identifiable information or any other information as required by law or when we believe that disclosure is necessary to protect our rights or the rights of a third party; to comply with a judicial proceeding, court order, or legal process; or in connection with an actual or proposed merger, acquisition or other corporate transaction or insolvency proceeding involving all or part of the business or asset to which the information pertains.</p>\r\n\r\n<p>Links to Other Websites</p>\r\n\r\n<p>The Site and App contains links to other websites that are not owned or controlled by Qarint.&nbsp; Please be aware that we are not responsible for the privacy policies of such other websites.&nbsp; We encourage you to be aware when you leave the Site and App and to read the privacy policies of each and every website that collects personally identifiable information.&nbsp; This Privacy Policy applies only to information collected by our Site and App.</p>\r\n\r\n<p>Access to Personally Identifiable Information</p>\r\n\r\n<p>If your personally identifiable information changes, or if you no longer desire our service, you may correct, update, delete or deactivate it by making the change on our member information page, e-mailing our Customer Support at info@qarint.com, or by contacting us by telephone or postal mail at the contact information listed below.&nbsp;</p>\r\n\r\n<p>Security</p>\r\n\r\n<p>We follow generally accepted industry standards to protect the personal information submitted to us, both during transmission and once we receive it.&nbsp; However, no method of transmission over the Internet, or method of electronic storage, is 100% secure.&nbsp; Therefore, while we strive to use commercially acceptable means to protect your personal information, we cannot guarantee its absolute security.</p>\r\n\r\n<p>If you have any questions about security on our Site and App, you can e-mail us at mailto:info@qarint.com.</p>\r\n\r\n<p>Non-US Users</p>\r\n\r\n<p>Qarint uses technology facilities in the United States.&nbsp; Your information may be stored and processed in the United States or other countries where Qarint has facilities.&nbsp; By using the Site or App, you consent to the transfer of information outside of your country, even if your country has more rigorous data protection standards.</p>\r\n\r\n<p>Changes to our Privacy Policy</p>\r\n\r\n<p>If we decide to change our Privacy Policy, we will post changes to this Privacy Policy and other places we deem appropriate so that you are aware of what information we collect, how we use it, and under what circumstances, if any, we disclose it.&nbsp;</p>\r\n\r\n<p>We reserve the right to modify this Privacy Policy at any time, and such change will apply with respect to information you provide or your activity on the Site and App after the change in policy, so please review it frequently. If we make changes that materially affect our uses or disclosures of personally identifiable information that we have previously collected, we will contact you by e-mail, or by means of a notice on the Site and App to obtain your consent to have the changes to our Privacy Policy apply retroactively.</p>\r\n\r\n<p>Contact Us</p>\r\n\r\n<p>If you have any questions or suggestions regarding our Privacy Policy, please contact us at: info@qarint.com.</p>', 1, '2019-11-25 00:10:14', '2020-07-10 18:30:49');
INSERT INTO `page` (`id`, `data_name`, `page_name`, `content`, `status`, `created_at`, `updated_at`) VALUES
(3, 'AGGREEMENT', 'Terms and Conditions', '<p>Qarint Company</p>\r\n\r\n<p>User Agreement</p>\r\n\r\n<p>Welcome to the Qarint Inc. (&ldquo;Qarint&rdquo;), application and website!&nbsp; We connect individuals who want to learn a language with a native speaker who can help them learn (&ldquo;Tutors&rdquo;) for real time video chat foreign language tutoring sessions (&ldquo;Tutoring Services&rdquo;).&nbsp; This User Agreement (this &ldquo;Agreement&rdquo;) applies to users, and where users are minors/children under the age of 13, their parent or legal guardian, who visit and engage Tutors for language tutoring services (collectively or individually &ldquo;Students&rdquo;), whether through our websites, Qarint.com (the &ldquo;Sites&rdquo;) or Qarint mobile device applications (the &ldquo;Apps&rdquo;) together &ldquo;the Platform.&rdquo;&nbsp;&nbsp;</p>\r\n\r\n<p>PLEASE READ THIS AGREEMENT CAREFULLY.&nbsp; THIS AGREEMENT PROVIDES THAT ALMOST ALL DISPUTES BETWEEN YOU AND Qarint ARE SUBJECT TO BINDING ARBITRATION AND CONTAINS A WAIVER OF CLASS AND COLLECTIVE ACTION RIGHTS AND ANY RIGHT TO A JURY TRIAL AS DETAILED IN THE ARBITRATION AND CLASS ACTION WAIVER SECTION BELOW.&nbsp; BY ENTERING THIS AGREEMENT, YOU GIVE UP YOUR RIGHT TO SUE IN COURT, HAVE YOUR CLAIMS HEARD BY A JURY, AND TO BE PART OF A CLASS OR COLLECTIVE ACTION, TO RESOLVE THESE DISPUTES, AS EXPLAINED IN MORE DETAIL IN THAT SECTION.</p>\r\n\r\n<p>PLEASE REVIEW THIS AGREEMENT IN ITS ENTIRETY.&nbsp; WHEN YOU EXECUTE THIS AGREEMENT, YOU WILL BE LEGALLY BOUND BY ITS TERMS AND CONDITIONS.&nbsp; BY CLICKING ON &ldquo;I AGREE TO THE USER AGREEMENT AND PRIVACY POLICY&rdquo; AND REGISTERING FOR A USER ACCOUNT, YOU ACKNOWLEDGE THAT YOU HAVE READ, UNDERSTOOD, AND AGREE TO BE BOUND BY THIS AGREEMENT, INCLUDING THE ARBITRATION AND CLASS ACTION PROVISIONS AND VIDEO RECORDING PROVISIONS.&nbsp; IF YOU DO NOT AGREE TO ALL OF THE TERMS AND CONDITIONS OF THIS AGREEMENT, DO NOT CLICK &ldquo;ACCEPT&rdquo; OR ENGAGE IN ANY TUTORING SERVICES.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>NOTE TO KIDS under 13 years of age: Individuals under the age of 13 are not permitted to use the Platform and Tutoring Services until their parent or legal guardian provides verifiable consent to Qarint.</p>\r\n\r\n<p>1.&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Independent Contractor Relationship between Student and Tutor, Qarint is a Marketplace Provider.&nbsp; You acknowledge that Tutors are independent contractors operating an independent business enterprise who use the Platform to offer and provide Tutoring Services to Students.&nbsp; Student acknowledges and agrees that Qarint has no responsibility for, control over, or involvement in the scope, nature, quality, character, timing or location of any work or services performed by Tutor, including any work or services that any individual affiliated with the Tutor may provide, either as an employee, independent contractor, or otherwise.&nbsp; Student further represents, acknowledges, and warrants that throughout the Term it shall at all times treat Tutor as independent contractors and that Student will take no action that is inconsistent with such classification.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>1.1 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Student acknowledges that Qarint is not an employer of, or joint employer or integrated or single enterprise with any Tutor or Student.&nbsp; Qarint is not responsible for the performance or non-performance of any Tutor or Student.&nbsp; Each Tutor is solely and entirely responsible for their own acts and for the acts of their employees, subcontractors, affiliates and agents.&nbsp; Each Student is solely and entirely responsible for their own acts and for the acts of their employees, subcontractors, affiliates, and agents.&nbsp; Qarint is under no obligation to ensure any Session is completed to Student&rsquo;s satisfaction.&nbsp;&nbsp;&nbsp;</p>\r\n\r\n<p>1.2 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Student acknowledges that Tutor is, and shall at all times be and remain, an independent contractor providing services to identified Students utilizing the Qarint platform.&nbsp; Nothing in this Agreement or otherwise shall be construed as identifying Tutor, Student, or their personnel or representatives as an employee, agent, or legal representative of Qarint or any of Qarint&rsquo;s related or affiliated entities for any purpose, and Student and Tutor and any respective representatives shall not hold themselves out as employees of Qarint in any capacity.</p>\r\n\r\n<p>1.3 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Student is not to transact business, incur obligations, sell goods, receive payments, solicit goods or services, enter into any contract, or assign or create any obligation of any kind, express or implied, on behalf of Qarint or any of Qarint&rsquo;s related or affiliated entities, or to bind in any way whatsoever, or to make any promise, warranty, or representation on behalf of Qarint or any of Qarint&rsquo;s related or affiliated entities regarding any matter, except as expressly authorized in this Agreement or in another writing signed by an authorized officer of Qarint.&nbsp; Further, Student shall not use Qarint&rsquo;s trade names, logos, trademarks, service names, service marks, or any other proprietary designations without the prior written approval of Qarint.</p>\r\n\r\n<p>1.4 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Student understands that, except as otherwise specifically agreed between Student and Tutor, Tutor will provide all equipment, tools, materials, and labor that he or she needs to perform the Tutoring Services agreed to with Student and that Qarint will provide no equipment, tools, materials, or labor that may be needed to perform the Tutoring Services under this Agreement.&nbsp; Qarint will, however, provide both Student and Tutor with access to the Platform to facilitate access to available, optional support resources and materials, if Student so chooses.</p>\r\n\r\n<p>1.5 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Tutor is solely responsible for scheduling the timing of Tutoring Services and agrees to do as consistent with the Student&rsquo;s scheduling requirements.&nbsp; Student agrees and understands that Qarint plays no role in scheduling or delivery of Tutoring Services.</p>\r\n\r\n<p>1.6 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Student understands and agrees that Tutor is solely responsible for determining how Tutoring Services will be completed, as well as the preparation and additional work necessary to properly perform Tutoring Services to the satisfaction of Student.&nbsp;</p>\r\n\r\n<p>1.7 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Student understands that Tutor may hire employees or engage contractors or subcontractors (at his or her sole expense) to assist with providing the Tutoring Services; however, Tutor&rsquo;s employees or subcontractors may not be used to deliver Tutoring Services on behalf of Tutor without the express written permission of Student.&nbsp; Student understands and acknowledges that Tutor acknowledges that they remain solely and exclusively responsible for the timely provision of the Tutoring Services to meet Student&rsquo;s requirements and specifications.</p>\r\n\r\n<p>1. Student understands and acknowledges that Tutor shall remain responsible for and shall pay all operational costs, expenses, and disbursements relating to operating Tutor&rsquo;s business (including the activities of any employees or subcontractors) and the provision of the Tutoring Services under this Agreement.</p>\r\n\r\n<p>2. Privacy Policy and Guidelines.&nbsp; Qarint&rsquo;s Privacy Policy is incorporated into this Agreement.&nbsp; Please read this notice carefully for details relating to the collection, use, and disclosure of your personal information.&nbsp; When using the Platform, you are subject to any additional posted guidelines or rules applicable to specific services, offers, and features.&nbsp; All such Guidelines are incorporated by reference into this Agreement.</p>\r\n\r\n<p>3. Modification.&nbsp; Qarint may make modifications to this Agreement at any time.&nbsp; Such changes will be effective as to existing users after Qarint provides notice of the Changes, either through the Platform user interface or sent to the e-mail address associated with your user account; and when you opt-in or otherwise expressly agree to the Changes or a version of this Agreement incorporating the Changes.&nbsp; If you provide written notice that you do not accept a proposed Change or decline to expressly agree to a proposed Change, Qarint may terminate this Agreement and your use of the Platform.</p>\r\n\r\n<p>4.&nbsp;License to Use the App.&nbsp; If you have downloaded the App, then subject to your compliance with all the terms and conditions of this Agreement, Qarint grants you a limited, nonexclusive, non-transferable, revocable license to install and use the App on a compatible mobile device that you own or control for your personal, non-commercial purposes, in each case in the manner enabled by Qarint.&nbsp; If you are using the App on an Apple, Inc. iOS device, the foregoing license is further limited to use permitted by the &ldquo;Usage Rules&rdquo; set forth in Apple&rsquo;s App Store Terms of Service.&nbsp; Any use of the Apps other than for private, non-commercial use is strictly prohibited.</p>\r\n\r\n<p>5. Ownership; Proprietary Rights.&nbsp; The Platform is owned and operated by Qarint.&nbsp; The videos, content, visual interfaces, information, graphics, design, compilation, computer code, products, software, services, and all other elements of the Service, Sites and Apps are protected by United States copyright, trade dress, patent, and trademark laws, international conventions, and all other relevant intellectual property and proprietary rights, and applicable laws.&nbsp; All Qarint Materials are the property of Qarint or its subsidiaries or affiliated companies and/or third-party licensors.&nbsp; All trademarks, service marks, and trade names are proprietary to Qarint or its affiliates and/or third-party licensors.&nbsp; Except as expressly authorized by Qarint, you agree not to sell, license, distribute, copy, modify, publicly perform or display, transmit, publish, edit, adapt, create derivative works from, or otherwise make unauthorized use of the Qarint Materials.</p>\r\n\r\n<p>6. Mobile Services.&nbsp; Use of the Apps requires usage of data services provided by your wireless service carrier.&nbsp; You acknowledge and agree that you are solely responsible for data usage fees and any other fees that your wireless service carrier may charge in connection with your use of the Apps.</p>\r\n\r\n<p>7. Services.&nbsp;&nbsp;</p>\r\n\r\n<p>7.1&nbsp;Service Generally.&nbsp; The Platform allows you to request and engage in a video chat session on demand with an independent contractor in the business of providing tutoring services, who is native speaker for purposes of practicing conversation skills in the language of your choice.&nbsp; You agree to only engage in Sessions for your personal, non-commercial purposes and agree not to record, copy, redistribute, broadcast, publicly perform or publicly display any such Session, except as allowed by this Agreement.&nbsp;&nbsp;</p>\r\n\r\n<p>7.2 Tutor Availability.&nbsp; Sessions are subject to Tutor availability, and Qarint does not guarantee that any particular (or any) Tutor will be available at any given time.&nbsp; You hereby acknowledge that all Tutors are independent contractors offering their services to you via the Service and are not employees or agents of Qarint.&nbsp; Qarint makes no representation or warranty regarding the results of engaging in a Session, including without limitation that your experience with a Tutor will meet your expectations or goals.&nbsp;&nbsp;</p>\r\n\r\n<p>7.3 Tutor Integrity.&nbsp; Tutors are subject to periodic check-ins. You acknowledge that Qarint has no duty to verify any stated credentials, experience or qualifications of any Tutor, and that Qarint does not conduct any screening of Tutors other than as expressly set forth in this Section 7.2.&nbsp;</p>\r\n\r\n<p>7.4 Payment.&nbsp; Students pay for Tutoring Services by the minute or through a payment plan. &nbsp; If you access the Service through the Sites, payment will occur through a third party payment systems (e.g., Iyziko).&nbsp; All payment terms and conditions are governed by your applicable agreements with the third party payment system.</p>\r\n\r\n<p>7.5 Refunds.&nbsp; Purchased minutes are non-refundable, and minutes used for a Session are non-creditable.&nbsp; If you have been mistakenly charged for minutes you did not purchase, you may request a refund. If you purchased minutes through the Sites, refunds can be handled by the third party payment system or Qarint.&nbsp;</p>\r\n\r\n<p>7.6&nbsp;Timing.&nbsp; If you pay Tutors through purchased minutes, you will be charged per minute of the Session after the first minute of the Session.&nbsp; If you terminate a Session within 59 seconds of beginning the Session, you will not be charged.&nbsp; If you run out of purchased minutes prior to a Session ending, the Session will terminate and you will be prompted to purchase more minutes.&nbsp;&nbsp;</p>\r\n\r\n<p>7.7 General.&nbsp; All fees are nonrefundable. Fees displayed to you are exclusive of any taxes that may be due in connection with such fees, and you agree to pay any such taxes that may be due, other than taxes based on Qarint&rsquo;s net income.&nbsp; You also agree to pay Qarint any costs and expenses incurred by Qarint, including reasonable attorney&rsquo;s fees, in recovering any fees due hereunder.</p>\r\n\r\n<p>8. Sessions</p>\r\n\r\n<p>8.1Hardware and Software.&nbsp; Engaging in a Session requires compatible hardware and may require the download and installation of specified software.&nbsp; You are solely responsible for acquiring and installing any such hardware and software and for determining compatibility with your system, and hereby assume all risk and liability associated with such hardware and software.&nbsp; You acknowledge that it is your responsibility to review and comply with all applicable license agreements and other terms and conditions relating to all software you use in connection with Sessions and the Platform, generally.</p>\r\n\r\n<p>8.2 Prohibited Behavior in Sessions.&nbsp; You agree not to engage in any activity that would infringe, misappropriate or violate any third party intellectual property rights or that is unlawful, defamatory, libelous, threatening, pornographic, harassing, hateful, racially or ethnically offensive or encourages conduct that would be considered a criminal offense, give rise to civil liability, violate any law or is otherwise inappropriate.&nbsp; You agree to engage in Sessions for the sole purpose of practicing your language skills.&nbsp; You acknowledge that Qarint does not have any duty to monitor Sessions or have any control over the content of a Session, and that you may be exposed to material that you find objectionable in the course of engaging in a Session and that Qarint shall have no liability in connection therewith.&nbsp; Qarint may, at any time, remove any user that violates this Agreement.&nbsp;</p>\r\n\r\n<p>8.3 False Information by Student.&nbsp; You agree that you will not: (i) publish falsehoods or misrepresentations; (ii) submit material that is unlawful, defamatory, libelous, threatening, pornographic, harassing, hateful, racially or ethnically offensive or encourages conduct that would be considered a criminal offense, give rise to civil liability, violate any law or is otherwise inappropriate; or (iii) post advertisements or solicitations of business.&nbsp; Qarint does not endorse any opinion, recommendation, or advice expressed by Tutors or other students, and Qarint expressly disclaims any and all liability in connection with such opinions, recommendations or advice.&nbsp; You understand and acknowledge that you may be exposed to content that is inaccurate, offensive, indecent, or objectionable, and you agree to waive, and hereby do waive, any legal or equitable rights or remedies you have or may have against Qarint with respect thereto.</p>\r\n\r\n<p>8.4&nbsp;Recording; Content.&nbsp; Sessions may be recorded or monitored.&nbsp; You hereby consent to: (i) the monitoring or recording of any Session you engage in, including your likeness therein; (ii) Qarint copying and using such recordings for any business purpose, including without limitation for purposes of Tutor evaluation, Tutor training, dispute resolution and improving the Service; (iii) such recording being made available to the other party to the Session; (iv) such recordings being made available for you to review, (v) such recording being used or disclosed by Qarint to the extent required by law or legal process or to the extent Qarint deems necessary for purposes of enforcing or protecting its rights or the rights of a third party.&nbsp; You hereby waive any rights of publicity, privacy or other rights under applicable law to the extent such rights could be used to prevent Qarint from using Session recordings as contemplated hereunder, and hereby grant a worldwide, non-exclusive, fully paid-up, royalty-free, irrevocable, perpetual, sublicenseable, and transferable license under any intellectual property rights you may have in or to any Session recording or content therein to Qarint to copy, modify, distribute and use such recording and content for its business purposes or as required by law or legal process.&nbsp;&nbsp;</p>\r\n\r\n<p>9.&nbsp;Account Data.&nbsp;&nbsp;</p>\r\n\r\n<p>9.1 Registration.&nbsp; Students must register and create an account through the Platform.&nbsp; Registration requires you to: (i) create a unique user name and password, (i) provide an e-mail address, (iii) indicate your current country of domicile, (iv) indicate your native language, (v) indicate the language you wish to practice, and (vi) indicate your gender.&nbsp; Note that Qarint does not have access to your payment card information.&nbsp; You agree that the information you provide, at all times, will be true, accurate, current, and complete.&nbsp; You also agree that you will ensure that this information is kept confidential, accurate and up-to-date at all times.</p>\r\n\r\n<p>9.2&nbsp;Password.&nbsp; When you register you will be asked to provide a password.&nbsp; As you will be responsible for all charges and other activities that occur under your password, and you agree to keep your password confidential.&nbsp; You are solely responsible for maintaining the confidentiality of your account and password and for restricting access to your computer, and you agree to accept responsibility for all activities that occur under your account or password.&nbsp; If you have reason to believe that your account is no longer secure (for example, in the event of a loss, theft or unauthorized disclosure or use of your account ID or password), you will immediately notify Qarint.&nbsp; You may be liable for the losses incurred by Qarint or others due to any unauthorized use of your account.</p>\r\n\r\n<p>9.3 Personal Use.&nbsp; Your Qarint account, and the minutes you purchase for use with your account, are for your use only.&nbsp; You agree not to share your user name and password or otherwise permit any other person to access or use your Qarint account or purchased minutes.&nbsp;&nbsp;</p>\r\n\r\n<p>10. Prohibited Uses.</p>\r\n\r\n<p>Unlawful Use.&nbsp; As a condition of your use of the Platform, you will not use the Platform for any purpose that is unlawful or prohibited by this Agreement.&nbsp; Access to the Qarint Materials, Sites or Apps from territories where their contents are illegal is strictly prohibited.&nbsp; Students and Tutors are responsible for complying with all local rules, laws, and regulations including, without limitation, rules about intellectual property rights, the internet, technology, data, e-mail, or privacy.&nbsp;&nbsp;</p>\r\n\r\n<p>10.1&nbsp;Unauthorized Use.&nbsp; You may not use the Platform in any manner that in our sole discretion could damage, disable, overburden, or impair it or interfere with any other party&rsquo;s use of the Platform.&nbsp; You may not intentionally interfere with or damage the operation of the Platform, or any user&rsquo;s enjoyment of it, by any means, including uploading or otherwise disseminating viruses, worms, or other malicious code.&nbsp; You may not remove, circumvent, disable, damage or otherwise interfere with any security-related features of the Platform, features that prevent or restrict the use or copying of any content accessible through the Platform, or features that enforce limitations on the use of the Platform.&nbsp; You may not attempt to gain unauthorized access to the Platform, or any part of it, other accounts, computer systems or networks connected to the Platform, or any part of it, through hacking, password mining or any other means or interfere or attempt to interfere with the proper working of the Platform or any activities conducted on the Platform.&nbsp; You may not obtain or attempt to obtain any materials or information through any means not intentionally made available through the Platform.&nbsp; You agree neither to modify the Platform in any manner or form, nor to use modified versions of the Platform, including (without limitation) for obtaining unauthorized access to the Platform.</p>\r\n\r\n<p>10.2&nbsp;Robots.&nbsp; The Sites may contain robot exclusion headers.&nbsp; You agree that you will not use any robot, spider, scraper, or other automated means to access the Platform for any purpose without our express written permission or bypass our robot exclusion headers or other measures we may use to prevent or restrict access to the Platform.</p>\r\n\r\n<p>10.3&nbsp;Trademark Restrictions.&nbsp; You may not utilize framing techniques to enclose any trademark, logo, or other Qarint Materials without our express written consent.&nbsp; You may not use any Qarint logos, graphics, or trademarks, including as part of any meta tags or any other &ldquo;hidden text,&rdquo; without our express written consent, except as permitted in this Agreement.</p>\r\n\r\n<p>11.&nbsp;Availability of Service.&nbsp; Qarint may make changes to or discontinue any of the media, products or services available within the Platform at any time, and without notice.&nbsp; The media, products or services on the Platform may be out of date, and Qarint makes no commitment to update these materials on the Platform.&nbsp;&nbsp;</p>\r\n\r\n<p>12. Notice.&nbsp; Except as explicitly stated otherwise, all notices and other communications shall be in writing and shall be deemed to have been duly given or made (i) with delivery by hand, when delivered, (ii) with delivery by certified or registered mail, postage prepaid.</p>\r\n\r\n<p>13. Member Disagreements.&nbsp; You alone are responsible for your engagement with Tutors or other Students.&nbsp; Qarint reserves the right, but has no obligation, to monitor disagreements between you and Tutors or other Students.</p>\r\n\r\n<p>14. Termination.&nbsp; You agree that Qarint, for any or no reason, may terminate this Agreement or your use of the Platform, and remove and discard all or any part of your account at any time by providing written notice to the other party.&nbsp; Qarint may also at any time discontinue providing access to the Platform, or any part thereof, with or without notice.&nbsp; You agree that any termination of your access to the Platform or any account you may have or portion thereof may be effected without prior notice, and you agree that Qarint shall not be liable to you or any third-party for any such termination.&nbsp; Qarint does not permit copyright infringing activities on the Platform, and reserves the right to terminate access to the Platform, and remove all content submitted, by any infringers.&nbsp; Any suspected fraudulent, abusive, or illegal activity that may be grounds for termination of your use of the Platform may be referred to appropriate law enforcement authorities.&nbsp; These remedies are in addition to any other remedies Qarint may have at law or in equity.&nbsp;&nbsp;</p>\r\n\r\n<p>15. Disclaimers; No Warranties.&nbsp; THE SERVICE, SITE, APP AND ANY THIRD-PARTY, MEDIA, SOFTWARE, SERVICES, OR APPLICATIONS MADE AVAILABLE IN CONJUNCTION WITH OR THROUGH THE SERVICE ARE PROVIDED &ldquo;AS IS&rdquo; AND WITHOUT WARRANTIES OF ANY KIND EITHER EXPRESS OR IMPLIED.&nbsp; TO THE FULLEST EXTENT PERMISSIBLE PURSUANT TO APPLICABLE LAW, Qarint, AND ITS SUPPLIERS, LICENSORS AND PARTNERS, DISCLAIM ALL WARRANTIES, EXPRESS OR IMPLIED, INCLUDING, BUT NOT LIMITED TO, IMPLIED WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE, AND NON-INFRINGEMENT OF PROPRIETARY RIGHTS.&nbsp;&nbsp;</p>\r\n\r\n<p>Qarint, AND ITS SUPPLIERS, LICENSORS AND PARTNERS, DO NOT WARRANT THAT THE FEATURES CONTAINED IN THE PLATFORM WILL BE UNINTERRUPTED OR ERROR-FREE, THAT DEFECTS WILL BE CORRECTED, OR THAT THE SERVICE, SITE, APP OR THE SERVERS THAT MAKE THEM AVAILABLE IS FREE OF VIRUSES OR OTHER HARMFUL COMPONENTS.</p>\r\n\r\n<p>Qarint, AND ITS SUPPLIERS, LICENSORS AND PARTNERS, DO NOT WARRANT OR MAKE ANY REPRESENTATIONS REGARDING THE USE OR THE RESULTS OF THE USE OF THE PLATFORM IN TERMS OF CORRECTNESS, ACCURACY, RELIABILITY, OR OTHERWISE.&nbsp; YOU (AND NOT Qarint NOR ITS SUPPLIERS, LICENSORS OR PARTNERS) ASSUME THE ENTIRE COST OF ANY NECESSARY SERVICING, REPAIR, OR CORRECTION.&nbsp; YOU UNDERSTAND AND AGREE THAT YOU DOWNLOAD, OR OTHERWISE OBTAIN MEDIA, MATERIAL, OR OTHER DATA THROUGH THE USE OF THE PLATFORM AT YOUR OWN DISCRETION AND RISK AND THAT YOU WILL BE SOLELY RESPONSIBLE FOR ANY DAMAGE TO YOUR COMPUTER SYSTEM OR LOSS OF DATA THAT RESULTS FROM SUCH MATERIAL OR DATA.</p>\r\n\r\n<p>CERTAIN STATE LAWS DO NOT ALLOW LIMITATIONS ON IMPLIED WARRANTIES OR THE EXCLUSION OR LIMITATION OF CERTAIN DAMAGES.&nbsp; IF THESE LAWS APPLY TO YOU, SOME OR ALL OF THE ABOVE DISCLAIMERS, EXCLUSIONS, OR LIMITATIONS MAY NOT APPLY TO YOU, AND YOU MIGHT HAVE ADDITIONAL RIGHTS.</p>\r\n\r\n<p>16.&nbsp;Indemnification; Hold Harmless.&nbsp; You agree to indemnify and hold Qarint, and its affiliated companies, and its suppliers, licensors and partners, harmless from any claims, losses, damages, liabilities, including attorney&rsquo;s fees, arising out of your use or misuse of the Platform, violation of the rights of any other person or entity, or any breach of this Agreement.&nbsp; Qarint reserves the right, at our own expense, to assume the exclusive defense and control of any matter for which you are required to indemnify us and you agree to cooperate with our defense of these claims.</p>\r\n\r\n<p>17.&nbsp;Limitation of Liability and Damages.&nbsp; UNDER NO CIRCUMSTANCES, INCLUDING, BUT NOT LIMITED TO, NEGLIGENCE, SHALL Qarint OR ITS AFFILIATES, CONTRACTORS, EMPLOYEES, AGENTS, OR THIRD PARTY PARTNERS, LICENSORS OR SUPPLIERS, BE LIABLE TO YOU FOR ANY SPECIAL, INDIRECT, INCIDENTAL, CONSEQUENTIAL, OR EXEMPLARY DAMAGES THAT RESULT FROM YOUR USE OR THE INABILITY TO USE THE Qarint MATERIALS ON THE SERVICE, THE SERVICE ITSELF, OR ANY OTHER INTERACTIONS WITH Qarint, EVEN IF Qarint OR A Qarint AUTHORIZED REPRESENTATIVE HAS BEEN ADVISED OF THE POSSIBILITY OF SUCH DAMAGES.&nbsp; APPLICABLE LAW MAY NOT ALLOW THE LIMITATION OR EXCLUSION OF LIABILITY OR INCIDENTAL OR CONSEQUENTIAL DAMAGES, SO THE ABOVE LIMITATION OR EXCLUSION MAY NOT APPLY TO YOU.&nbsp; IN SUCH CASES, Qarint&rsquo;S LIABILITY WILL BE LIMITED TO THE EXTENT PERMITTED BY LAW.</p>\r\n\r\n<p>IN NO EVENT SHALL Qarint&rsquo;S OR ITS AFFILIATES, CONTRACTORS, EMPLOYEES, AGENTS, OR THIRD PARTY PARTNERS OR SUPPLIERS&rsquo; TOTAL LIABILITY TO YOU FOR ALL DAMAGES, LOSSES, AND CAUSES OF ACTION ARISING OUT OF OR RELATING TO THESE TERMS OR YOUR USE OF THE SERVICE (WHETHER IN CONTRACT, TORT, WARRANTY, OR OTHERWISE) EXCEED THE GREATER OF: (A) THE TOTAL AMOUNTS YOU HAVE PAID TO Qarint HEREUNDER DURING THE SIX (6) MONTHS PRECEDING THE DATE OF THE CLAIM AND (B) FIFTY (50) U.S. DOLLARS.</p>\r\n\r\n<p>THESE LIMITATIONS SHALL ALSO APPLY WITH RESPECT TO DAMAGES INCURRED BY REASON OF ANY PRODUCTS OR SERVICES SOLD OR PROVIDED TO YOU BY THIRD PARTIES OTHER THAN Qarint AND RECEIVED BY YOU THROUGH OR ADVERTISED ON THE SERVICE OR RECEIVED BY YOU THROUGH ANY LINKS PROVIDED ON THE SERVICE.</p>\r\n\r\n<p>18. Arbitration Agreement and Class and Collective Action Waiver.&nbsp; Qarint and Student mutually agree to resolve any and all covered justiciable disputes between them exclusively through final and binding arbitration instead of a court or jury trial.&nbsp; This arbitration agreement requires the arbitration of any claims that Qarint or Student may have against the other or against any of their:</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>officers, directors, employees, subcontractors, or agents in their capacity as such or otherwise,</p>\r\n	</li>\r\n	<li>\r\n	<p>direct or indirect parents and subsidiaries, and</p>\r\n	</li>\r\n	<li>\r\n	<p>affiliates, agents, successors or assigns,</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>each and all of which may enforce this arbitration agreement as direct or third-party beneficiaries.</p>\r\n\r\n<p>19.&nbsp;Language.&nbsp; Any action brought under this Agreement shall be conducted in the English language.&nbsp; If Tutor is located in France or Quebec, Canada, the following clause applies:&nbsp; The parties hereby confirm that they have requested that this Agreement be drafted in English.&nbsp; Les parties contractantes confirment qu&#39;elles ontexig&eacute; que le pr&eacute;sent contrat et tous les documents associ&eacute;s soient redig&eacute;s en anglais.</p>\r\n\r\n<p>20. Communications.&nbsp; Under this Agreement, Student consents to receive communications from the Company electronically.&nbsp; The Company will communicate with Student by e-mail or by posting notices on the Sites or Apps.&nbsp; Student agrees that all agreements, notices, disclosures, and other communications that the Company provides to Student electronically satisfy any legal requirement that such communications be in writing.</p>\r\n\r\n<p>21. Complete Agreement.&nbsp; This Agreement contains the entire understanding between the parties and supersedes, replaces and takes precedence over any prior understanding or oral or written agreement between the parties respecting the subject matter of this Agreement.&nbsp; There are no representations, agreements, arrangements, nor understandings, oral or written, between the parties relating to the subject matter of this Agreement that are not fully expressed herein.</p>\r\n\r\n<p>22. Severability.&nbsp; In the event any provision of this Agreement shall be held invalid, the same shall not invalidate or otherwise affect in any respect any other term or terms of this Agreement, which term or terms shall remain in full force and effect.</p>\r\n\r\n<p>23.&nbsp;Successors and Assigns.&nbsp; This Agreement shall be binding upon Student and inure to the benefit of Qarint and its successors and assigns, including, without limitation, any entity to which substantially all of the assets or the business of Qarint are sold or transferred.&nbsp; Tutor shall not be entitled to assign this Agreement or any of Student&rsquo;s rights or obligations hereunder.</p>\r\n\r\n<p>24. Survival.&nbsp; Sections 1, 2, 6, 7, 8 and 11 through 31 will survive any termination of this Agreement.</p>\r\n\r\n<p>25.&nbsp;Non-Waiver.&nbsp; No delay or omission by the Company in exercising any right under this Agreement shall operate as a waiver of that or any other right.&nbsp; A waiver or consent given by the Company on any one occasion shall be effective only in that instance and shall not be construed as a bar or waiver of any right on any other occasion.</p>\r\n\r\n<p>26. Amendment.&nbsp; This Agreement may be amended or modified only by a written instrument executed by both the Company and Student.&nbsp;</p>\r\n\r\n<p>27. Counterparts.&nbsp; This Agreement may be executed in two (2) signed counterparts, each of which shall constitute an original, but all of which taken together shall constitute the same instrument.</p>\r\n\r\n<p>28.&nbsp;Headings.&nbsp; The headings and other captions in this Agreement are included solely for convenience of reference and will not control the meaning and interpretation of any provision of this Agreement.</p>\r\n\r\n<p>29.&nbsp;Governing Law; Jurisdiction.&nbsp; Other than the Arbitration Agreement and Class Action Waiver, which shall be governed by the Federal Arbitration Act, this Agreement will in all respects be is governed by the laws of the State in which Student resides if Student is a U.S. resident and the United States of America without reference to its principles of conflicts of laws.&nbsp;</p>\r\n\r\n<p>30.&nbsp;Signature.&nbsp; This Agreement may be signed and is enforceable by electronic signature, digital signature, wet signature, and facsimile signature.</p>', 2, '2019-11-25 00:10:14', '2020-07-13 15:52:45'),
(4, 'HOME_PAGE', 'Home page', '', 1, '2019-11-25 00:10:14', '2019-12-10 08:16:40');

-- --------------------------------------------------------

--
-- Table structure for table `page_content`
--

CREATE TABLE `page_content` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `page_id` int(11) NOT NULL DEFAULT '4',
  `section_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `background_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body_footer` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1=>body,2=>footer',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1=>active, 2=>in-active, 3=>deleted',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_content`
--

INSERT INTO `page_content` (`id`, `page_id`, `section_name`, `content`, `background_image`, `body_footer`, `status`, `created_at`, `updated_at`) VALUES
(1, 4, 'Section-1', '<div class=\"col-12 col-sm-6 col-md-6 col-lg-6 col-xl-6\">\r\n					<div class=\"prnts_imgs\">\r\n<?php  $img = \'slider-one.jpg\'; ?>						<img src=\"<?php print(URL::to(\'/public/images\').\'/\'.$img);?>\">\r\n					</div>\r\n				</div>\r\n				<div class=\"col-12 col-sm-6 col-md-6 col-lg-6 col-xl-6\">\r\n					<div class=\"content_text_banner\">\r\n						<h3>{{ __(\'Register for free\')}} <br>{{ __(\'and start learn English\') }} <br>{{ __(\'with real trainers!\') }}</h3>\r\n						<a href=\"#\" class=\"trail_free\" onclick=\"location.href=window.location.origin+\'/signUp\'\">{{__(\'free trail now\')}}</a>\r\n					</div>\r\n				</div>', 'slider-one.jpg', 1, 1, '2019-11-25 00:10:14', '2020-05-27 07:45:54'),
(2, 4, 'Section-2', '<p>Privacy policy here.</p>', NULL, 1, 1, '2019-11-25 00:10:14', '2020-05-26 13:45:00'),
(3, 4, 'Section-3', '<p>Agreement details mentioned here.</p>', NULL, 1, 1, '2019-11-25 00:10:14', '2020-05-26 13:45:06');

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'manage-users', 'web', '2021-01-14 02:35:14', '2021-01-14 02:35:14'),
(2, 'view-users', 'web', '2021-01-14 02:35:15', '2021-01-14 02:35:15'),
(3, 'create-users', 'web', '2021-01-14 02:35:15', '2021-01-14 02:35:15'),
(4, 'edit-users', 'web', '2021-01-14 02:35:15', '2021-01-14 02:35:15'),
(5, 'delete-users', 'web', '2021-01-14 02:35:16', '2021-01-14 02:35:16');

-- --------------------------------------------------------

--
-- Table structure for table `prescriptions`
--

CREATE TABLE `prescriptions` (
  `id` int(11) NOT NULL,
  `code` varchar(50) NOT NULL,
  `code_number` varchar(255) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `image_file` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prescriptions`
--

INSERT INTO `prescriptions` (`id`, `code`, `code_number`, `user_id`, `image_file`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'PCV11000001', '11000001', 10, 'download.jpg', 2, '2021-01-15 21:25:47', '2021-02-01 19:38:16', '2021-02-01 00:00:00'),
(2, 'PCV11000002', '11000002', 10, '1610735839.jpg', 2, '2021-01-15 21:37:19', '2021-02-01 20:24:05', '2021-02-01 00:00:00'),
(3, 'PCV11000003', '11000003', 11, '1610736002.jpg', 1, '2021-01-15 21:40:02', '2021-01-15 21:40:02', NULL),
(4, 'PCV11000004', '11000004', 11, '1610739482.png', 1, '2021-01-15 22:38:02', '2021-01-15 22:38:02', NULL),
(5, 'PCV11000005', '11000005', 10, '1610739719.JPEG', 1, '2021-01-15 22:41:59', '2021-02-01 20:24:42', '2021-02-01 00:00:00'),
(6, 'PCV11000006', '11000006', 10, '1610807091.JPEG', 2, '2021-01-16 17:24:51', '2021-02-01 20:40:31', '2021-02-01 00:00:00'),
(7, 'PCV11000007', '11000007', 92, '1610816697.jpg', 1, '2021-01-16 20:05:02', '2021-01-16 20:05:02', NULL),
(8, 'PCV11000008', '11000008', 92, '1610816728.png', 1, '2021-01-16 20:05:28', '2021-01-16 20:05:28', NULL),
(9, 'PCV11000009', '11000009', 10, '1610817802.jpg', 1, '2021-01-16 20:23:22', '2021-02-02 21:17:02', '2021-02-02 00:00:00'),
(10, 'PCV11000010', '11000010', 10, '1610817831.jpg', 1, '2021-01-16 20:23:57', '2021-02-02 19:10:36', '2021-02-02 00:00:00'),
(11, 'PCV11000011', '11000011', 10, '1610820957.jpg', 1, '2021-01-16 21:16:01', '2021-02-14 00:00:00', NULL),
(12, 'PCV11000012', '11000012', 10, '1610820985.jpg', 1, '2021-01-16 21:16:33', '2021-02-03 03:33:31', '2021-02-03 00:00:00'),
(13, 'PCV11000013', '11000013', 10, '1610821195.jpg', 1, '2021-01-16 21:19:55', '2021-01-16 21:19:55', NULL),
(14, 'PCV11000014', '11000014', 10, '1610821258.jpg', 3, '2021-01-16 21:21:02', '2021-03-08 04:18:58', NULL),
(15, 'PCV11000015', '11000015', 75, '1610852085.jpg', 1, '2021-01-17 05:54:51', '2021-01-17 05:54:51', NULL),
(16, 'PCV11000016', '11000016', 75, '1610852196.jpg', 1, '2021-01-17 05:56:36', '2021-01-17 05:56:36', NULL),
(17, 'PCV11000017', '11000017', 10, '1610984122.JPEG', 1, '2021-01-18 18:35:22', '2021-02-01 21:46:31', '2021-02-01 00:00:00'),
(18, 'PCV11000018', '11000018', 92, '1611071684.jpg', 1, '2021-01-19 18:54:44', '2021-01-19 18:54:44', NULL),
(19, 'PCV11000019', '11000019', 92, '1611071823.jpg', 1, '2021-01-19 18:57:03', '2021-01-19 18:57:03', NULL),
(20, 'PCV11000020', '11000020', 92, '1611072055.jpg', 1, '2021-01-19 19:00:59', '2021-01-19 19:00:59', NULL),
(21, 'PCV11000021', '11000021', 92, '1611072319.jpg', 1, '2021-01-19 19:05:19', '2021-01-19 19:05:19', NULL),
(22, 'PCV11000022', '11000022', 11, '1612009971.ico', 1, '2021-01-30 05:32:51', '2021-01-30 05:32:51', NULL),
(23, 'PCV11000023', '11000023', 10, '1612275776.google', 3, '2021-02-02 14:22:56', '2021-03-03 19:00:47', NULL),
(24, 'PCV11000024', '11000024', 10, '1612285185.mp4', 1, '2021-02-02 16:59:45', '2021-02-03 21:05:12', NULL),
(25, 'PCV11000025', '11000025', 10, '1612285200.png', 1, '2021-02-02 17:00:00', '2021-02-07 00:00:00', NULL),
(26, 'PCV11000026', '11000026', 10, '1612285879.jpg', 1, '2021-02-02 17:11:19', '2021-02-05 17:52:27', NULL),
(27, 'PCV11000027', '11000027', 72, '1612288981.jpg', 1, '2021-02-02 18:03:01', '2021-02-02 21:03:19', NULL),
(28, 'PCV11000028', '11000028', 10, '1612375033.jpg', 3, '2021-02-03 17:57:13', '2021-03-03 19:00:51', NULL),
(29, 'PCV11000029', '11000029', 10, '1612375374.jpg', 1, '2021-02-03 18:02:54', '2021-02-03 00:00:00', NULL),
(30, 'PCV11000030', '11000030', 10, '1612375439.jpg', 1, '2021-02-03 18:03:59', '2021-02-03 21:05:19', NULL),
(31, 'PCV11000031', '11000031', 10, '1612375502.jpg', 1, '2021-02-03 18:05:02', '2021-02-14 12:36:58', NULL),
(32, 'PCV11000032', '11000032', 10, '1612375580.jpg', 3, '2021-02-03 18:06:20', '2021-03-08 04:19:07', NULL),
(33, 'PCV11000033', '11000033', 10, '1612375615.jpg', 1, '2021-02-03 18:06:55', '2021-02-03 21:09:13', NULL),
(34, 'PCV11000034', '11000034', 10, '1612375748.google', 1, '2021-02-03 18:09:08', '2021-02-07 03:33:33', NULL),
(35, 'PCV11000035', '11000035', 79, '1612389768.hellopharmacy', 1, '2021-02-03 22:02:48', '2021-02-03 22:02:48', NULL),
(36, 'PCV11000036', '11000036', 110, '1612436931.whatsapp', 1, '2021-02-04 11:08:51', '2021-02-04 14:09:20', NULL),
(37, 'PCV11000037', '11000037', 110, '1612436974.google', 1, '2021-02-04 11:09:34', '2021-02-04 14:14:21', NULL),
(38, 'PCV11000038', '11000038', 110, '1612437270.jpg', 1, '2021-02-04 11:14:30', '2021-02-04 11:14:30', NULL),
(39, 'PCV11000039', '11000039', 10, '1612624082.jpg', 1, '2021-02-06 15:08:02', '2021-02-07 03:29:07', NULL),
(40, 'PCV11000040', '11000040', 101, '1612657575.jpg', 1, '2021-02-07 00:26:15', '2021-02-07 00:26:15', NULL),
(41, 'PCV11000041', '11000041', 10, '1613295515.jpg', 1, '2021-02-14 09:38:35', '2021-02-14 09:38:35', NULL),
(42, 'PCV11000042', '11000042', 10, '1613295711.png', 1, '2021-02-14 09:41:51', '2021-02-14 09:41:51', NULL),
(43, 'PCV11000043', '11000043', 10, '1614539758.jpg', 1, '2021-02-28 19:15:58', '2021-02-28 19:15:58', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `prescription_details`
--

CREATE TABLE `prescription_details` (
  `id` int(11) NOT NULL,
  `prescription_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `group_name` varchar(50) NOT NULL,
  `prescription` varchar(255) NOT NULL,
  `bin` varchar(20) NOT NULL,
  `price` varchar(20) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prescription_details`
--

INSERT INTO `prescription_details` (`id`, `prescription_id`, `store_id`, `group_name`, `prescription`, `bin`, `price`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'RXGO', 'Medname 200mg tablet', '789456', '$50.40', 2, '2021-01-15 22:10:38', '2021-01-15 22:10:38'),
(2, 2, 1, 'RXGO', 'Medname 200mg tablet', '789456', '$50.40', 2, '2021-01-15 22:10:38', '2021-01-15 22:10:38'),
(3, 3, 1, 'RXGO', 'Medname 200mg tablet', '789456', '$50.40', 1, '2021-01-15 22:10:38', '2021-01-15 22:10:38'),
(4, 4, 1, 'RXGO', 'Medname 200mg tablet', '789456', '$50.40', 1, '2021-01-15 22:10:38', '2021-01-15 22:10:38'),
(5, 5, 1, 'RXGO', 'Medname 200mg tablet', '789456', '$50.40', 1, '2021-01-15 22:10:38', '2021-01-15 22:10:38'),
(6, 6, 1, 'RXGO', 'Medname 200mg tablet', '789456', '$50.40', 2, '2021-01-15 22:10:38', '2021-01-15 22:10:38'),
(7, 7, 1, 'RXGO', 'Medname 200mg tablet', '789456', '$50.40', 1, '2021-01-15 22:10:38', '2021-01-15 22:10:38'),
(8, 8, 1, 'RXGO', 'Medname 200mg tablet', '789456', '$50.40', 1, '2021-01-15 22:10:38', '2021-01-15 22:10:38'),
(9, 9, 1, 'RXGO', 'Medname 200mg tablet', '789456', '$50.40', 1, '2021-01-15 22:10:38', '2021-01-15 22:10:38'),
(10, 10, 1, 'RXGO', 'Medname 200mg tablet', '789456', '$50.40', 1, '2021-01-15 22:10:38', '2021-01-15 22:10:38'),
(11, 11, 1, 'RXGO', 'Medname 200mg tablet', '789456', '$50.40', 1, '2021-01-15 22:10:38', '2021-01-15 22:10:38'),
(12, 12, 1, 'RXGO', 'Medname 200mg tablet', '789456', '$50.40', 1, '2021-01-15 22:10:38', '2021-01-15 22:10:38'),
(13, 13, 1, 'RXGO', 'Medname 200mg tablet', '789456', '$50.40', 1, '2021-01-15 22:10:38', '2021-01-15 22:10:38'),
(14, 14, 1, 'RXGO', 'Medname 200mg tablet', '789456', '$50.40', 1, '2021-01-15 22:10:38', '2021-01-15 22:10:38'),
(15, 15, 1, 'RXGO', 'Medname 200mg tablet', '789456', '$50.40', 1, '2021-01-15 22:10:38', '2021-01-15 22:10:38'),
(16, 16, 1, 'RXGO', 'Medname 200mg tablet', '789456', '$50.40', 1, '2021-01-15 22:10:38', '2021-01-15 22:10:38'),
(17, 17, 1, 'RXGO', 'Medname 200mg tablet', '789456', '$50.40', 1, '2021-01-15 22:10:38', '2021-01-15 22:10:38'),
(18, 18, 1, 'RXGO', 'Medname 200mg tablet', '789456', '$50.40', 1, '2021-01-15 22:10:38', '2021-01-15 22:10:38'),
(19, 19, 1, 'RXGO', 'Medname 200mg tablet', '789456', '$50.40', 1, '2021-01-15 22:10:38', '2021-01-15 22:10:38'),
(20, 20, 1, 'RXGO', 'Medname 200mg tablet', '789456', '$50.40', 1, '2021-01-15 22:10:38', '2021-01-15 22:10:38'),
(21, 21, 1, 'RXGO', 'Medname 200mg tablet', '789456', '$50.40', 1, '2021-01-15 22:10:38', '2021-01-15 22:10:38'),
(22, 22, 1, 'RXGO', 'Medname 200mg tablet', '789456', '$50.40', 1, '2021-01-15 22:10:38', '2021-01-15 22:10:38'),
(23, 23, 1, 'RXGO', 'Medname 200mg tablet', '789456', '$50.40', 1, '2021-01-15 22:10:38', '2021-01-15 22:10:38'),
(24, 24, 1, 'RXGO', 'Medname 200mg tablet', '789456', '$50.40', 1, '2021-01-15 22:10:38', '2021-01-15 22:10:38'),
(25, 25, 1, 'RXGO', 'Medname 200mg tablet', '789456', '$50.40', 1, '2021-01-15 22:10:38', '2021-01-15 22:10:38'),
(26, 26, 1, 'RXGO', 'Medname 200mg tablet', '789456', '$50.40', 1, '2021-01-15 22:10:38', '2021-01-15 22:10:38'),
(27, 27, 1, 'RXGO', 'Medname 200mg tablet', '789456', '$50.40', 1, '2021-01-15 22:10:38', '2021-01-15 22:10:38'),
(28, 17, 1, 'RXGO', 'Medname 200mg tablet', '789456', '$50.40', 1, '2021-01-15 22:10:38', '2021-01-15 22:10:38'),
(29, 28, 1, 'RXGO', 'Medname 200mg tablet', '789456', '$50.40', 1, '2021-01-15 22:10:38', '2021-01-15 22:10:38'),
(30, 29, 1, 'RXGO', 'Medname 200mg tablet', '789456', '$50.40', 1, '2021-01-15 22:10:38', '2021-01-15 22:10:38'),
(31, 30, 1, 'RXGO', 'Medname 200mg tablet', '789456', '$50.40', 1, '2021-01-15 22:10:38', '2021-01-15 22:10:38'),
(32, 31, 1, 'RXGO', 'Medname 200mg tablet', '789456', '$50.40', 1, '2021-01-15 22:10:38', '2021-01-15 22:10:38'),
(33, 32, 1, 'RXGO', 'Medname 200mg tablet', '789456', '$50.40', 1, '2021-01-15 22:10:38', '2021-01-15 22:10:38'),
(34, 33, 1, 'RXGO', 'Medname 200mg tablet', '789456', '$50.40', 1, '2021-01-15 22:10:38', '2021-01-15 22:10:38'),
(35, 34, 1, 'RXGO', 'Medname 200mg tablet', '789456', '$50.40', 1, '2021-01-15 22:10:38', '2021-01-15 22:10:38'),
(36, 35, 1, 'RXGO', 'Medname 200mg tablet', '789456', '$50.40', 1, '2021-01-15 22:10:38', '2021-01-15 22:10:38'),
(37, 36, 1, 'RXGO', 'Medname 200mg tablet', '789456', '$50.40', 1, '2021-01-15 22:10:38', '2021-01-15 22:10:38'),
(38, 7, 1, 'RXGO', 'Medname 200mg tablet', '789456', '$50.40', 1, '2021-01-15 22:10:38', '2021-01-15 22:10:38'),
(39, 37, 1, 'RXGO', 'Medname 200mg tablet', '789456', '$50.40', 1, '2021-01-15 22:10:38', '2021-01-15 22:10:38'),
(40, 38, 1, 'RXGO', 'Medname 200mg tablet', '789456', '$50.40', 1, '2021-01-15 22:10:38', '2021-01-15 22:10:38'),
(41, 39, 1, 'RXGO', 'Medname 200mg tablet', '789456', '$50.40', 1, '2021-01-15 22:10:38', '2021-01-15 22:10:38'),
(42, 40, 1, 'RXGO', 'Medname 200mg tablet', '789456', '$50.40', 1, '2021-01-15 22:10:38', '2021-01-15 22:10:38'),
(43, 41, 1, 'RXGO', 'Medname 200mg tablet', '789456', '$50.40', 1, '2021-01-15 22:10:38', '2021-01-15 22:10:38'),
(44, 42, 1, 'RXGO', 'Medname 200mg tablet', '789456', '$50.40', 1, '2021-01-15 22:10:38', '2021-01-15 22:10:38'),
(45, 43, 1, 'RXGO', 'Medname 200mg tablet', '789456', '$50.40', 1, '2021-01-15 22:10:38', '2021-01-15 22:10:38'),
(46, 44, 1, 'RXGO', 'Medname 200mg tablet', '789456', '$50.40', 1, '2021-01-15 22:10:38', '2021-01-15 22:10:38'),
(47, 45, 1, 'RXGO', 'Medname 200mg tablet', '789456', '$50.40', 1, '2021-01-15 22:10:38', '2021-01-15 22:10:38'),
(48, 46, 1, 'RXGO', 'Medname 200mg tablet', '789456', '$50.40', 1, '2021-01-15 22:10:38', '2021-01-15 22:10:38'),
(49, 47, 1, 'RXGO', 'Medname 200mg tablet', '789456', '$50.40', 1, '2021-01-15 22:10:38', '2021-01-15 22:10:38'),
(50, 48, 1, 'RXGO', 'Medname 200mg tablet', '789456', '$50.40', 1, '2021-01-15 22:10:38', '2021-01-15 22:10:38'),
(51, 49, 1, 'RXGO', 'Medname 200mg tablet', '789456', '$50.40', 1, '2021-01-15 22:10:38', '2021-01-15 22:10:38'),
(52, 50, 1, 'RXGO', 'Medname 200mg tablet', '789456', '$50.40', 1, '2021-01-15 22:10:38', '2021-01-15 22:10:38'),
(53, 51, 1, 'RXGO', 'Medname 200mg tablet', '789456', '$50.40', 1, '2021-01-15 22:10:38', '2021-01-15 22:10:38'),
(54, 52, 1, 'RXGO', 'Medname 200mg tablet', '789456', '$50.40', 1, '2021-01-15 22:10:38', '2021-01-15 22:10:38'),
(55, 53, 1, 'RXGO', 'Medname 200mg tablet', '789456', '$50.40', 1, '2021-01-15 22:10:38', '2021-01-15 22:10:38'),
(56, 54, 1, 'RXGO', 'Medname 200mg tablet', '789456', '$50.40', 1, '2021-01-15 22:10:38', '2021-01-15 22:10:38'),
(57, 55, 1, 'RXGO', 'Medname 200mg tablet', '789456', '$50.40', 1, '2021-01-15 22:10:38', '2021-01-15 22:10:38'),
(58, 56, 1, 'RXGO', 'Medname 200mg tablet', '789456', '$50.40', 1, '2021-01-15 22:10:38', '2021-01-15 22:10:38'),
(59, 66, 1, 'RXGO', 'Medname 200mg tablet', '789456', '$50.40', 1, '2021-01-15 22:10:38', '2021-01-15 22:10:38'),
(60, 56, 1, 'RXGO', 'Medname 200mg tablet', '789456', '$50.40', 1, '2021-01-15 22:10:38', '2021-01-15 22:10:38'),
(61, 57, 1, 'RXGO', 'Medname 200mg tablet', '789456', '$50.40', 1, '2021-01-15 22:10:38', '2021-01-15 22:10:38'),
(62, 58, 1, 'RXGO', 'Medname 200mg tablet', '789456', '$50.40', 1, '2021-01-15 22:10:38', '2021-01-15 22:10:38'),
(63, 59, 1, 'RXGO', 'Medname 200mg tablet', '789456', '$50.40', 1, '2021-01-15 22:10:38', '2021-01-15 22:10:38'),
(64, 60, 1, 'RXGO', 'Medname 200mg tablet', '789456', '$50.40', 1, '2021-01-15 22:10:38', '2021-01-15 22:10:38'),
(65, 61, 1, 'RXGO', 'Medname 200mg tablet', '789456', '$50.40', 1, '2021-01-15 22:10:38', '2021-01-15 22:10:38'),
(66, 62, 1, 'RXGO', 'Medname 200mg tablet', '789456', '$50.40', 1, '2021-01-15 22:10:38', '2021-01-15 22:10:38');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `category_id` varchar(10) NOT NULL,
  `price` int(11) NOT NULL DEFAULT '0',
  `size` varchar(100) NOT NULL DEFAULT 'S,M,L,XL,XXL',
  `cost` int(11) NOT NULL DEFAULT '0',
  `units` int(11) NOT NULL DEFAULT '0',
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `image` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `category_id`, `price`, `size`, `cost`, `units`, `state`, `image`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Knit Skater Dress', '1', 10000, 'S,M,L', 12000, 71, 1, '1614446639KnitSkaterDress.jpg', 'Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.', '2021-02-13 07:01:37', '2021-02-27 20:23:59', NULL),
(2, 'Girls Pyjama Set', '1', 20000, 'S,M,L', 22000, 6, 1, '1614446708GirlsPyjamaSet.jpg', 'Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.', '2021-02-13 07:01:37', '2021-02-27 20:25:08', NULL),
(3, 'Kids T Shirts - Pack of 5', '1', 30000, 'S,M,L', 33000, 45, 1, '1614446846GirlsTShirts-Packof5.jpg', 'Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.', '2021-02-13 07:01:37', '2021-02-27 20:27:26', NULL),
(4, 'Boy\'s Regular Fit T-Shirt', '1', 40000, 'S,M,L', 44000, 14, 1, '1614446856Boy\'sRegularFitT-Shirt.jpg', 'Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.', '2021-02-13 07:01:37', '2021-02-27 20:27:36', NULL),
(5, 'Girl\'s Cotton Lycra Maxi Dress', '1', 50000, 'S,M,L', 55000, 23, 1, '1614446920Girl\'s-Cotton-Lycra-Maxi-Dress.jpg', 'Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.', '2021-02-13 07:01:37', '2021-02-27 20:28:40', NULL),
(6, 'Rayon a-line Dress', '2', 10000, 'S,M,L,XL,XXL', 12000, 71, 1, '1614446994Rayon-a-line-Dress.jpg', 'Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.', '2021-02-13 07:01:37', '2021-02-27 20:29:54', NULL),
(7, 'Women\'s A-Line Dress', '2', 20000, 'S,M,L,XL,XXL', 22000, 70, 1, '1614447013Women\'s-A-Line-Dress.jpg', 'Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.', '2021-02-13 07:01:37', '2021-02-27 20:30:13', NULL),
(8, 'Women\'s Flared Jeans', '2', 30000, 'S,M,L,XL,XXL', 33000, 45, 1, '1614447046Women\'s-Flared-Jeans.jpg', 'Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.', '2021-02-13 07:01:37', '2021-02-27 20:30:46', NULL),
(9, 'Women\'s T-Shirt', '2', 40000, 'S,M,L,XL,XXL', 44000, 14, 1, '1614447070Women\'s-Cotton-Regular-Top(AWT2053-Pn).jpg', 'Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.', '2021-02-13 07:01:37', '2021-02-27 20:31:10', NULL),
(10, 'Women\'s Regular T-Shirt', '2', 50000, 'S,M,L,XL,XXL', 55000, 23, 1, '1614447162Women\'s-Regular-T-Shirt.jpg', 'Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.', '2021-02-13 07:01:37', '2021-02-27 20:32:42', NULL),
(11, 'F.R.I.E.N.D.S: Graphic', '3', 10000, 'S,M,L,XL,XXL', 12000, 71, 1, '1614447358F.R.I.E.N.D.S-The-Six-Friends-Mens-and-Womens-Graphic.jpg', 'Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.', '2021-02-13 07:01:37', '2021-02-27 20:35:58', NULL),
(12, 'Men\'s Regular Fit Casual Shirt', '3', 20000, 'S,M,L,XL,XXL', 22000, 6, 1, '1614447375Men\'s-Regular-Fit-Casual-Shirt.jpg', 'Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.', '2021-02-13 07:01:37', '2021-02-27 20:36:15', NULL),
(13, 'Men\'s Skinny Fit Jeans', '3', 30000, 'S,M,L,XL,XXL', 33000, 45, 1, '1614447437Men\'s-Skinny-Fit-Jeans.jpg', 'Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.', '2021-02-13 07:01:37', '2021-02-27 20:37:17', NULL),
(14, 'Men\'s Slim Fit Jeans', '3', 40000, 'S,M,L,XL,XXL', 44000, 14, 1, '1614447449Men\'s-Slim-fit-Jeans.jpg', 'Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.', '2021-02-13 07:01:37', '2021-02-27 20:37:29', NULL),
(15, 'Regular Fit Men\'s Cotton Tshirt', '3', 50000, 'S,M,L,XL,XXL', 55000, 23, 1, '1614447464Regular-Fit-Men\'s-Cotton-Tshirt.jpg', 'Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.', '2021-02-13 07:01:37', '2021-02-27 20:37:44', NULL),
(16, 'Sanitary Pads for Women, XL+ 50 Napkins', '4', 10000, 'S,M,L,XL,XXL', 12000, 71, 1, '1614447517WhisperUltraCleanSanitary-PadsforWomen,XL-50-Napkins.jpg', 'Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.', '2021-02-13 07:01:37', '2021-02-27 20:38:37', NULL),
(17, 'Admiria Comfort Sanitary Pad Napkins', '4', 20000, 'S,M,L,XL,XXL', 22000, 6, 1, '1614447536Admiria-Comfort-Sanitary-Pad-Napkins.jpg', 'Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.', '2021-02-13 07:01:37', '2021-02-27 20:38:56', NULL),
(18, 'Pee Safe Organic Cotton, Biodegradable Sanitary Pads', '4', 30000, 'S,M,L,XL,XXL', 33000, 45, 1, '1614447545Pee-Safe.jpg', 'Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.', '2021-02-13 07:01:37', '2021-02-27 20:39:05', NULL),
(19, 'Stayfree Dry Max All Night XL', '4', 40000, 'S,M,L,XL,XXL', 44000, 14, 1, '1614447559Stayfree-Dry-Max-All-Night-XL.jpg', 'Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.', '2021-02-13 07:01:37', '2021-02-27 20:39:19', NULL),
(20, 'Sirona Super Soft Sanitary Pads/Napkins - 10 Pieces, Large (L)', '4', 50000, 'S,M,L,XL,XXL', 55000, 23, 1, '1614447573Sirona-Natural-Biodegradable .jpg', 'Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.', '2021-02-13 07:01:37', '2021-02-27 20:39:33', NULL),
(21, 'Chlorhexidine Gluconate\r\n', '1', 100, 'S,M,L', 0, 56, 78, 'CategoryFeatured-AS-4CHG-Family.jpg', 'Antiseptic for use as surgical hand scrub, healthcare personnel hand wash, patient preoperative skin preparation, and skin wound and general cleansing', '2021-03-10 06:50:22', NULL, NULL),
(22, 'Chlorhexidine Gluconate', '1', 1000, 'S,M,L', 1000, 67, 127, 'CategoryFeatured-AS-4CHG-Family.jpg', 'Antiseptic for use as surgical hand scrub, healthcare personnel hand wash, patient preoperative skin preparation, and skin wound and general cleansing', '2021-03-10 06:59:22', NULL, NULL),
(23, 'Hydrogen Peroxide', '1', 500, 'S,M,L', 600, 89, 67, 'CategoryFeatured-AS-HPL-Family.jpg', 'First aid to help prevent skin infection in minor cuts, scrapes and burns. Aids in the removal of phlegm, mucus, or other secretions associated with a sore mouth.', '2021-03-10 07:04:33', NULL, NULL),
(24, '70% Isopropyl Alcohol Antiseptic', '1', 800, 'S,M,L', 800, 49, 78, 'CategoryFeatured-AS-IPL-Family.jpg', 'First aid antiseptic to help prevent skin infection in minor cuts, scrapes, and burns.', '2021-03-10 07:11:10', NULL, NULL),
(25, '70% Isopropyl Alcohol Antiseptic', '1', 800, 'S,M,L', 800, 49, 78, 'CategoryFeatured-AS-IPL-Family.jpg', 'First aid antiseptic to help prevent skin infection in minor cuts, scrapes, and burns.', '2021-03-10 07:23:35', NULL, NULL),
(26, 'Medical Sterilization Wrap', '1', 900, 'S,M,L', 900, 78, 58, 'download.jpg', 'Your trusted sterilization wrap source for ease and assurance.Every day you re tasked to do more with lessTo improve productivity with less time, budget and staff. And do it all while you strive to keep your patients safe and improve the quality of care', '2021-03-10 07:23:35', NULL, NULL),
(27, 'Sterilization Pouches, Tubing and Covers', '1', 500, 'S,M,L', 500, 89, 68, 'CategoryFeatured-InfectionControl-PouchesCoversTubing.jpg', 'Cardinal Health offers a broad portfolio of sterilization pouch, tubing and maintenance covers to meet your sterilization packaging and assurance needs.', '2021-03-10 07:23:35', NULL, NULL),
(28, 'Medical Sterilization Tray Liner', '1', 800, 'S,M,L', 800, 59, 88, 'grid-wide-tray-liner.jpg', 'Absorbent paper tray liners help facilitate the sterilization process by absorbing condensation.', '2021-03-10 07:23:35', NULL, NULL),
(29, 'Disposable Gowns and Capes', '1', 400, 'S,M,L', 400, 49, 28, 'CategoryFeatured-45930-010B.jpg', 'Check out these disposable exam room gowns and capes from Cardinal Health. Patient apparel designed with safety, comfort and modesty.', '2021-03-10 07:23:35', NULL, NULL),
(30, 'Disposable Bedding and Supplies', '1', 600, 'S,M,L', 600, 79, 98, 'CategoryFeatured-30085-021B.jpg', 'Cardinal Health’s line of disposable bedding is designed to protect mattresses and pillows from soiling and cross contamination.', '2021-03-10 07:23:35', NULL, NULL),
(31, 'Examination Table Paper', '1', 300, 'S,M,L', 300, 99, 28, 'CategoryFeatured-Exam-Room-Table-Paper.jpg', 'A durable line of protection against cross contamination, Cardinal Health’s high-quality table papers come in two different sizes per type as well as surface texture options.', '2021-03-10 07:23:35', NULL, NULL),
(32, 'Surgical and Procedural Masks', '1', 100, 'S,M,L', 100, 59, 78, 'grid-square-nurse-tying-surgical-mask.jpg', 'Protect your clinicians, and you protect your patients. Cardinal Health has a simplified Surgical and Procedure mask line that are all ASTM F2100-11 rated. We offer high quality masks each designed to address your requirements and budget.', '2021-03-10 07:23:35', NULL, NULL),
(33, 'N95 Respirators', '2', 500, 'S,M,L', 500, 58, 44, 'grid-square-n95-s.jpg', 'Our cost-effective Surgical N95 Respirators line meets Centers for Disease Control and Prevention (CDC) guidelines for protection against TB and is National Institute for Occupational Safety and Health (NIOSH) certified to have a filter efficiency level o', '2021-03-10 07:48:55', NULL, NULL),
(34, 'Eyewear and Face Shields', '2', 800, 'S,M,L', 800, 58, 34, 'grid-wide-f1shield50.jpg', 'Cardinal Health offerings of protective face shields help meet all your needs. Shields are one-piece and come in varied sizes from ¾, full length, and the new extended length. Choices suited for the job at hand.', '2021-03-10 07:48:55', NULL, NULL),
(35, 'Qualitative Fit Test Kits', '2', 1500, 'S,M,L', 1500, 55, 84, 'grid-square-fit-test-kit-bitter-CAHFT30.jpg', 'Our Occupational Health and Safety (OSHA) compliant fit test kit will ensure your disposable and reusable respirators are fitting properly for prevention of TB and other airborne precautions', '2021-03-10 07:48:55', NULL, NULL),
(36, 'Medi-Vac® and Medi-Solid Plus™ Solidifiers\r\n', '2', 1600, 'S,M,L', 1600, 59, 44, 'grid-wide-MplusFamily.jpg', 'Take a step towards improving safety through solidifying liquid medical waste. Our solidifiers turn liquid into a gel-like substance so spills and splashes are virtually eliminated.', '2021-03-10 07:48:55', NULL, NULL),
(37, 'Medi-Vac® Plastic Connectors', '2', 200, 'S,M,L', 200, 38, 94, 'CategoryFeatured-366.jpg', 'Medi-Vac® plastic connectors are durable, shatter-resistant and help reduce expensive replacement cost associated with breakage.', '2021-03-10 07:48:55', NULL, NULL),
(38, 'Medi-Vac® Suction Canisters', '2', 500, 'S,M,L', 500, 58, 44, 'CategoryFeatured-429-65651-KIT.jpg', 'Cardinal Health offers three suction canister systems each with a variety of canister sizes, accessories and hardware for all of your suction and fluid collection needs.', '2021-03-10 07:48:55', NULL, NULL),
(39, 'SAF-T Pump™ System', '2', 500, 'S,M,L', 500, 58, 44, 'categoryfeatured-65652-000-straightview.jpg', 'The SAF-T Pump™ System quickly and safely empties canisters containing infectious liquid medical waste directly into the sanitary sewer with no pouring required.', '2021-03-10 07:48:55', NULL, NULL),
(40, 'ChemoPlus™ Floor Mats', '2', 100, 'S,M,L', 100, 78, 34, 'grid-wide-chemoplus-adhesive-floor-mat.jpg', 'ChemoPlus™ adhesive contamination control floor mats easily adhere to floors and are latex-free. ', '2021-03-10 07:48:55', NULL, NULL),
(41, 'ChemoPlus™ Pads', '2', 700, 'S,M,L', 700, 58, 24, 'grid-wide-chemoplus-pads.jpg', 'ChemoPlus™ pads are impregnated with Green Z™ solidifying agent to instantly turn liquid spills into a semi-gel.', '2021-03-10 07:48:55', NULL, NULL),
(42, 'Custom Circuit Configurations', '3', 200, 'S,M,L', 200, 45, 65, 'CategoryFeatured---AC604P.jpg', 'Our custom circuits are built based on your unique needs and desired configuration requirements. We offer a broad component portfolio to allow for easy customization. ', '2021-03-10 09:30:17', NULL, NULL),
(43, 'Standard Circuit Configurations', '3', 700, 'S,M,L', 700, 45, 35, 'CategoryFeatured---AC604P (1)232.jpg', 'Cardinal Health offers a wide variety of standard circuit configurations that are pre-assembled based on popular configurations in the industry. Standard circuit configurations can quickly meet your clinical needs, while providing a significant value.', '2021-03-10 09:30:17', NULL, NULL),
(44, 'Anesthesia Masks', '3', 200, 'S,M,L', 200, 45, 65, 'CategoryFeatured-CHC-118A.jpg', 'Check out Cardinal Health’s flexible and traditional anesthesia breathing masks. We offer a full range of sizes.', '2021-03-10 09:30:17', NULL, NULL),
(45, 'Intubating Stylets', '3', 100, 'S,M,L', 100, 65, 15, 'CategoryFeatured-IS6L.jpg', 'When it comes to managing the airway, Cardinal Health provides the products you need ranging from airways to endotracheal tubes.', '2021-03-10 09:30:17', NULL, NULL),
(46, 'Nasopharyngeal Airways', '3', 300, 'S,M,L', 300, 45, 65, 'CategoryFeatured-NA24FR---Shot-1.jpg', 'Cardinal Health nasopharyngeal airways are a trusted solution for your airway management needs.', '2021-03-10 09:30:17', NULL, NULL),
(47, 'Oropharyngeal Airways', '3', 200, 'S,M,L', 200, 45, 65, 'CategoryFeatured-3000-040A.jpg', 'Cardinal Health offers a complete line of oral airways in both Guedel and Berman designs.', '2021-03-10 09:30:17', NULL, NULL),
(48, 'Smart Compression™', '3', 1400, 'S,M,L', 1400, 45, 65, 'grid-wide-kendall-scd-700-series-compression-device.jpg', 'The Kendall SCD™ 700 Smart Compression™ system is the next evolution of IPC. It’s designed to move more blood to help prevent stasis, track compliance with Patient Sensing™ technology, and educate patients and clinicians about the risk of VTE, all while k', '2021-03-10 09:30:17', NULL, NULL),
(49, 'T.E.D.™ Anti-Embolism Stockings', '3', 600, 'S,M,L', 600, 45, 65, 'grid-wide-ted-anti-embolism-stockings-knee-length.jpg', 'T.E.D.™ anti-embolism stockings have been clinically proven to reduce the incidence of deep vein thrombosis and pulmonary embolism in over 20,000 patients for 50 years.', '2021-03-10 09:30:17', NULL, NULL),
(50, 'A-V Impulse™ Foot Compression System', '3', 1000, 'S,M,L', 1000, 25, 65, 'grid-wide-avi-foot-compression-system.jpg', 'The A-V Impulse™ foot compression system provides clinically proven impulse foot compression technology to help reduce the incidence of deep vein thrombosis and pulmonary embolism.', '2021-03-10 09:30:17', NULL, NULL),
(51, 'Cardinal Health™ Bath Accessories and Safety', '3', 20000, 'S,M,L', 20000, 45, 15, 'grid-square-bath-accessories-safety.jpg', 'When it comes to healthcare, having the right product at the right price is essential for positive patient outcomes. Cardinal Health bath accessories and safety products are designed to keep the comfort and safety of your patients in mind.', '2021-03-10 09:30:17', NULL, NULL),
(52, 'Mobility Products', '4', 4000, 'S,M,L', 4000, 45, 55, 'grid-square-cardinal-health-mobility-products.jpg', 'Cardinal Health mobility products are designed with the user in mind. With a wide selection of wheelchairs, canes and crutches, we’re helping to move care forward.', '2021-03-10 09:51:58', NULL, NULL),
(53, 'Canes and replacement parts', '4', 4000, 'S,M,L', 4000, 45, 55, 'CategoryFeatured-DME-CNE0014-A.jpg', 'Cardinal Health offers a range of canes and styles to suit your individual needs. Cardinal Healt canes – moving care forward', '2021-03-10 09:51:58', NULL, NULL),
(54, 'Crutches and Replacement Parts', '4', 1000, 'S,M,L', 1000, 65, 95, 'CategoryFeatured-DME-CA901AD_C.jpg', 'Our comfortable crutches come in both axillary and forearm styles in a range of sizes - adult, tall, youth and child options available. We also offer replacement pads, tips and grips.', '2021-03-10 09:51:58', NULL, NULL),
(55, 'Oxygen Tank Cart', '4', 4000, 'S,M,L', 4000, 45, 55, 'CategoryFeatured-CRTX2009DE.jpg', 'Cardinal Health works to move care forward in the right direction for your patients. Check out our oxygen tank to continue working toward complete care.', '2021-03-10 09:51:58', NULL, NULL),
(56, 'Kangaroo™ Adult Nasogastric Feeding Tubes', '4', 100, 'S,M,L', 100, 45, 55, 'grid-wide-8884721088E-kangaroo-feeding-tubes-with-standard-tip.jpg', 'Cardinal Health offers a selection of adult feeding tubes designed for nasogastric and nasoduodenal feeding.', '2021-03-10 09:51:58', NULL, NULL),
(57, 'ENFit® Connection System', '4', 4000, 'S,M,L', 4000, 45, 55, 'grid-wide-8884705008E-y-site-enfit.jpg', 'The ENFit® enteral feeding connector features a unique design to reduce the risk of enteral feeding tube misconnections and improve patient safety.', '2021-03-10 09:51:58', NULL, NULL),
(58, 'Enteral Access Products & Devices', '4', 600, 'S,M,L', 600, 54, 51, 'grid-wide-kangaroo-co2-detector-gastric-tube-placement.jpg', 'Our enteral access portfolio includes a variety of enteral feeding tubes, as well as CO2 detectors, safety P.E.G. systems, and enteral feeding accessories.', '2021-03-10 09:51:58', NULL, NULL),
(59, 'Gastrointestinal Products', '4', 200, 'S,M,L', 200, 27, 65, 'grid-wide-771111E-kangaroo-multifunctional-port-single-lumen-adaptor.jpg', 'Our gastrointestinal products for enteral feeding include Salem Sump™ nasogastric tubes and the Kangaroo™ multifunctional port with safe enteral connections.', '2021-03-10 09:51:58', NULL, NULL),
(60, 'Kangaroo™ Feeding Tube with IRIS Technology', '4', 5000, 'S,M,L', 5000, 45, 55, 'grid-wide-kangaroo-feeding-tube-with-IRIS-technology-family.jpg', 'The Kangaroo™ Feeding Tube with IRIS Technology is the first disposable feeding tube with an integrated real-time imaging system to visually aid in small bore feeding tube placement.', '2021-03-10 09:51:58', NULL, NULL),
(61, 'Kangaroo™ Neonatal & Pediatric Feeding System\r\n', '4', 100, 'S,M,L', 100, 49, 85, 'grid-wide-kangaroo-gravity-feeding-system.jpg', 'The Kangaroo™ pediatric feeding system offers both engineered safety controls and a visual indicator to help reduce tubing misconnections.', '2021-03-10 09:51:58', NULL, NULL),
(62, 'EnClean® Brush', '1', 450, 'S,M,L', 450, 56, 45, 'grid-wide-enteral-feeding-enClean-brush.jpg', 'The EnClean® Single-use and Reusable Brush cleans and removes formula and medication from the internal threads and bottom of the ENFit® connector', '2021-03-10 09:57:50', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'web', '2021-01-14 02:35:14', '2021-01-14 02:35:14'),
(2, 'Editor', 'web', '2021-01-14 02:35:17', '2021-01-14 02:35:17'),
(3, 'User', 'web', '2021-01-14 02:35:18', '2021-01-14 02:35:18');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(2, 1),
(2, 2),
(3, 1),
(4, 1),
(5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `screens`
--

CREATE TABLE `screens` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` enum('1','2','3') NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `screens`
--

INSERT INTO `screens` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'home', '1', '2021-01-11 21:52:47', NULL),
(2, 'pharmacy', '1', '2021-01-11 21:52:47', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `screen_ads`
--

CREATE TABLE `screen_ads` (
  `id` int(11) NOT NULL,
  `screen_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `screen_ads`
--

INSERT INTO `screen_ads` (`id`, `screen_id`, `name`, `image`, `created_at`, `updated_at`) VALUES
(1, 1, 'home_image1', 'covid-19.png', '2021-01-11 21:56:12', NULL),
(2, 1, 'home_image2', 'flue_shot.png', '2021-01-11 21:56:12', NULL),
(3, 2, 'home_image1', 'covid-19.png', '2021-01-11 21:56:12', NULL),
(4, 2, 'home_image2', 'flue_shot.png', '2021-01-11 21:56:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `service_category`
--

CREATE TABLE `service_category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` enum('1','2','3') NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `service_category`
--

INSERT INTO `service_category` (`id`, `name`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Pharmacy', 'Pharmacy_icon.png', '1', '2021-01-11 19:31:26', NULL),
(2, 'Beauty & Skin Care', 'facial-treatment.png', '1', '2021-01-11 19:31:26', NULL),
(3, 'Nutrition & Diet', 'plan.png', '1', '2021-01-11 19:32:09', NULL),
(4, 'Fitness & Weight Loss', 'fitness_icon.png', '1', '2021-01-11 19:32:09', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `speciality_images`
--

CREATE TABLE `speciality_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1=>active, 2=>in-active, 3=>deleted',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `speciality_images`
--

INSERT INTO `speciality_images` (`id`, `name`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'baseline-ac_unit', 'emoji_events-24px.svg', 1, '2020-02-13 11:06:18', '2020-03-05 11:11:13'),
(2, 'baseline-adjust', 'emoji_objects-24px.svg', 1, '2020-02-13 11:06:18', '2020-03-05 11:11:40'),
(3, 'baseline-airplanemode_active', 'baseline-airplanemode_active.svg', 1, '2020-02-13 11:06:53', '2020-02-13 11:09:52'),
(4, 'baseline-attach_file', 'baseline-attach_file.svg', 1, '2020-02-13 11:06:53', '2020-02-13 11:10:05'),
(5, 'baseline-audiotrack', 'baseline-audiotrack.svg', 1, '2020-02-13 11:07:23', '2020-02-13 11:10:34'),
(6, 'baseline-beach_access', 'baseline-beach_access.svg', 1, '2020-02-13 11:07:23', '2020-02-13 11:10:38'),
(7, 'emoji_events', 'emoji_events.svg', 1, '2020-02-13 11:08:29', '2020-02-13 11:10:42'),
(8, 'emoji_objects', 'emoji_objects.svg', 1, '2020-02-13 11:08:29', '2020-02-13 11:10:30'),
(9, 'sentiment_very_satisfied', 'sentiment_very_satisfied-24px.svg', 1, '2020-02-13 11:09:15', '2020-03-05 11:11:56'),
(10, 'baseline-brightness_3', 'baseline-brightness_3.svg', 1, '2020-02-13 11:11:53', '2020-02-13 11:11:53'),
(11, 'baseline-brightness_5', 'baseline-brightness_5.svg', 1, '2020-02-13 11:11:53', '2020-02-13 11:11:53');

-- --------------------------------------------------------

--
-- Table structure for table `stores`
--

CREATE TABLE `stores` (
  `id` int(11) NOT NULL,
  `register_id` varchar(256) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL DEFAULT 'helloappstore@medical.com',
  `address` varchar(255) NOT NULL DEFAULT '517, Highland Ave, Mullens, WV, 25882',
  `logo` varchar(255) NOT NULL,
  `rating` varchar(5) NOT NULL,
  `min_order` int(11) NOT NULL DEFAULT '0',
  `helpline_tag` varchar(50) DEFAULT NULL,
  `contact` varchar(30) DEFAULT NULL,
  `voucher_logo` varchar(255) DEFAULT NULL,
  `voucher_text` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stores`
--

INSERT INTO `stores` (`id`, `register_id`, `category_id`, `name`, `email`, `address`, `logo`, `rating`, `min_order`, `helpline_tag`, `contact`, `voucher_logo`, `voucher_text`, `status`, `created_at`) VALUES
(1, '110', 1, 'Apollo Pharmacy', 'helloappstore@medical.com', '517, Highland Ave, Mullens, WV, 25882', 'store_logo.jpg', '4.9', 0, 'RXGO helpline', '1800-125-256', 'hp_logo.png', 'RXGO instant saving voucher', 1, '2021-01-15 20:19:04'),
(2, '', 1, 'Ved Pharmacy', 'helloappstore@medical.com', '517, Highland Ave, Mullens, WV, 25882', 'store_logo.jpg', '4.6', 0, 'AMPC helpline', '1800-963-589', 'hp_logo.png', 'RXGO instant saving voucher', 1, '2021-01-15 20:19:04'),
(3, '', 2, 'Parker Pharmacy', 'helloappstore@medical.com', '517, Highland Ave, Mullens, WV, 25882', 'store_logo.jpg', '4.8', 0, 'KPNR helpline', '1800-145-784', 'hp_logo.png', 'RXGO instant saving voucher', 1, '2021-01-15 20:19:04'),
(4, '', 2, 'Loren Parker Store', 'helloappstore@medical.com', '517, Highland Ave, Mullens, WV, 25882', 'store_logo.jpg', '4.8', 0, 'PTR helpline', '1800-147-536', 'hp_logo.png', 'RXGO instant saving voucher', 1, '2021-01-15 20:19:04'),
(5, '', 2, 'Monte Pharmacy', 'helloappstore@medical.com', '517, Highland Ave, Mullens, WV, 25882', 'store_logo.jpg', '4.5', 0, 'DPIE helpline', '1800-478-888', 'hp_logo.png', 'RXGO instant saving voucher', 1, '2021-01-15 20:19:04'),
(6, '', 3, 'Aliana Pharmacy', 'helloappstore@medical.com', '517, Highland Ave, Mullens, WV, 25882', 'store_logo.jpg', '4.4', 3, 'LIBI helpline', '1800-333-254', 'hp_logo.png', 'RXGO instant saving voucher', 1, '2021-01-15 20:19:04');

-- --------------------------------------------------------

--
-- Table structure for table `store_relation_with_prescription`
--

CREATE TABLE `store_relation_with_prescription` (
  `id` int(50) NOT NULL,
  `store_id` varchar(256) NOT NULL,
  `store_register_id` varchar(256) NOT NULL,
  `Prescription_id` varchar(256) NOT NULL,
  `after_accepte_status` varchar(256) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `store_relation_with_prescription`
--

INSERT INTO `store_relation_with_prescription` (`id`, `store_id`, `store_register_id`, `Prescription_id`, `after_accepte_status`, `created_at`) VALUES
(1, '1', '110', '2', '1', '2021-03-11 17:33:06.955032'),
(2, '1', '110', '6', '1', '2021-03-11 17:32:46.195845');

-- --------------------------------------------------------

--
-- Table structure for table `store_services`
--

CREATE TABLE `store_services` (
  `id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `sub_catId` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `store_services`
--

INSERT INTO `store_services` (`id`, `store_id`, `sub_catId`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, '2021-01-21 19:34:41', '2021-01-21 19:34:41'),
(2, 1, 2, 1, '2021-01-21 19:34:41', '2021-01-21 19:34:41'),
(3, 1, 3, 1, '2021-01-21 19:34:57', '2021-01-21 19:34:57'),
(4, 1, 4, 1, '2021-01-21 19:34:57', '2021-01-21 19:34:57'),
(5, 2, 1, 1, '2021-01-21 19:35:12', '2021-01-21 19:35:12'),
(6, 2, 2, 1, '2021-01-21 19:35:12', '2021-01-21 19:35:12'),
(7, 2, 3, 1, '2021-01-21 19:35:27', '2021-01-21 19:35:27'),
(8, 2, 4, 1, '2021-01-21 19:35:27', '2021-01-21 19:35:27'),
(9, 3, 1, 1, '2021-01-21 19:35:49', '2021-01-21 19:35:49'),
(10, 3, 2, 1, '2021-01-21 19:35:49', '2021-01-21 19:35:49'),
(11, 3, 3, 1, '2021-01-21 19:36:00', '2021-01-21 19:36:00'),
(12, 3, 4, 1, '2021-01-21 19:36:00', '2021-01-21 19:36:00');

-- --------------------------------------------------------

--
-- Table structure for table `subcat_store`
--

CREATE TABLE `subcat_store` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `logo` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `city` varchar(50) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `zip_code` varchar(8) DEFAULT NULL,
  `rating` decimal(2,1) NOT NULL DEFAULT '4.0',
  `users` int(11) NOT NULL DEFAULT '1',
  `discount` int(11) NOT NULL DEFAULT '20',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcat_store`
--

INSERT INTO `subcat_store` (`id`, `name`, `phone`, `email`, `logo`, `address`, `city`, `country`, `zip_code`, `rating`, `users`, `discount`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Paul Hyland', '+1 4567981252', 'paulhyland@yopmail.com', 'Paul_Hyland_Salon.png', '517, Highland Ave, Mullens, WV, 25882', 'Mullens', 'WV', '25882', '4.0', 3, 20, 1, '2021-01-21 18:42:26', '2021-01-21 18:42:26'),
(2, 'Naitik Salon', '+1 4567981658', 'natiksalon@yopmail.com', 'xclusi.png', '625, Ring road, South Wales, Australia, 35882', 'South Wales', 'Australia', '35882', '3.0', 4, 20, 1, '2021-01-21 18:42:26', '2021-01-21 18:42:26'),
(3, 'Maliana house', '+2 1235981658', 'maliana@yopmail.com', 'loreal.png', '325, Alpen City, Old Monk City, Denmark, Z5882', 'Old Monk City', 'Denmark', 'Z5882', '5.0', 3, 20, 1, '2021-01-21 18:42:26', '2021-01-21 18:42:26');

-- --------------------------------------------------------

--
-- Table structure for table `subscription_plan`
--

CREATE TABLE `subscription_plan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subscription_plan_days_id` bigint(20) UNSIGNED NOT NULL,
  `subscription_plan_duration_id` bigint(20) UNSIGNED NOT NULL,
  `header` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_period` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `installment` int(11) NOT NULL DEFAULT '12',
  `allowed_days` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `basic_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `allowed_discount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0%',
  `support` tinyint(4) NOT NULL DEFAULT '2' COMMENT '1=>yes, 2=>no',
  `allowed_changes` int(11) NOT NULL DEFAULT '0',
  `currency` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1=>USD',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1=>active, 2=>in-active, 3=>deleted',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscription_plan`
--

INSERT INTO `subscription_plan` (`id`, `subscription_plan_days_id`, `subscription_plan_duration_id`, `header`, `title`, `time_period`, `installment`, `allowed_days`, `basic_price`, `allowed_discount`, `support`, `allowed_changes`, `currency`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '1 Month', 'Plan type 2', '1 month', 12, '1,2,3,4,5,6,7', '1.01', '0%', 2, 20, 1, 3, '2019-12-16 05:35:15', '2020-10-17 18:26:40'),
(2, 1, 1, '3 months', '3 months', '3 months', 4, '1,2,3,4,5,6,7', '144', '15%', 1, 21, 1, 3, '2019-12-16 05:54:33', '2020-10-17 18:26:29'),
(3, 1, 1, 'Plan type 3', 'Plan type 3', '6 months', 2, '1,2,3,4,5,6,7', '1.03', '30%', 2, 25, 1, 3, '2019-12-16 05:58:59', '2020-10-17 18:26:13'),
(4, 1, 2, '1 Month', '1 Month', '1 month', 12, '1,2,3,4,5,6,7', '142', '0%', 1, 12, 1, 3, '2019-12-16 06:32:30', '2020-10-17 18:25:59'),
(5, 1, 2, '3 months', '3 months', '3 months', 4, '1,2,3,4,5,6,7', '0.14', '15%', 2, 12, 1, 3, '2019-12-16 06:35:41', '2020-10-17 18:25:46'),
(6, 1, 2, '6 months', '6 months', '6 months', 2, '1,2,3,4,5,6,7', '0.15', '30%', 2, 32, 1, 3, '2019-12-16 06:40:08', '2020-10-17 18:25:36'),
(7, 1, 3, '1 month', '1 month', '1 month', 12, '1,2,3,4,5,6,7', '0.16', '0%', 2, 12, 1, 3, '2019-12-16 06:45:08', '2020-10-17 18:24:41'),
(8, 1, 3, '3 months', '3 months', '3 months', 4, '4', '0.17', '12%', 1, 0, 1, 3, '2019-12-16 06:45:57', '2020-10-17 18:24:29'),
(9, 1, 3, '6 months', '6 months', '6 months', 2, '4', '0.18', '15%', 1, 0, 1, 3, '2019-12-16 06:46:47', '2020-10-17 18:24:17'),
(12, 2, 1, '1 months', '1 months', '1 month', 12, '1,3,4,5,6', '0.21', '0%', 2, 30, 1, 1, '2019-12-16 06:50:25', '2020-07-16 14:42:16'),
(13, 2, 1, '3 months', '3 months', '3 months', 4, '1,3,4,5,6', '0.22', '15%', 2, 25, 1, 1, '2019-12-16 06:51:21', '2020-07-16 14:42:21'),
(14, 2, 1, '6 months', '6 months', '6 months', 2, '1,2,3,5,6', '0.23', '30%', 2, 30, 1, 1, '2019-12-16 06:53:19', '2020-07-16 14:42:26'),
(15, 2, 2, '1 month', '1 month', '1 month', 12, '1,2,3,4,5', '0.24', '0%', 2, 1, 1, 1, '2019-12-16 06:54:10', '2020-07-16 14:42:31'),
(16, 2, 2, '3 months', '3 months', '3 months', 4, '1,2,3,4,5', '0.25', '15%', 2, 12, 1, 1, '2019-12-16 06:56:35', '2020-07-16 14:42:36'),
(17, 2, 2, '6 months', '6 months', '6 months', 2, '1,2,3,4,5', '0.26', '30%', 2, 36, 1, 1, '2019-12-16 06:57:20', '2020-07-16 14:42:41'),
(18, 2, 3, '1 month', '1 month', '1 month', 12, '1,2,3,4,5', '0.27', '30%', 2, 30, 1, 3, '2019-12-16 06:58:14', '2020-10-17 18:26:53'),
(19, 2, 3, '3 months', '3 Months', '3 months', 4, '1,2,3,4,5', '0.28', '15%', 2, 20, 1, 3, '2019-12-16 06:59:46', '2020-10-17 18:27:22'),
(20, 2, 3, '6 months', '6 months', '6 months', 2, '1,2,3,5,6', '0.29', '30%', 2, 35, 1, 3, '2019-12-16 07:00:27', '2020-10-17 18:27:10'),
(25, 3, 1, '1 month', '1 month', '1 month', 12, '7', '54', '0%', 1, 3, 1, 1, '2019-12-16 07:11:01', '2020-07-30 20:39:25'),
(26, 3, 1, '3 months', '3 months', '3 months', 4, '7', '45.9', '15%', 2, 9, 1, 1, '2019-12-16 07:13:01', '2020-07-30 20:40:04'),
(27, 3, 1, '6 months', '6 months', '6 months', 2, '7', '37.8', '30%', 1, 18, 1, 1, '2019-12-16 07:13:49', '2020-07-30 20:40:47'),
(28, 3, 2, '1 month', '1 month', '1 month', 12, '2,3,5', '1.37', '0%', 2, 20, 1, 1, '2019-12-16 07:14:51', '2020-07-23 11:19:47'),
(29, 3, 2, '3 months', '3 months', '3 months', 4, '2,4,5', '1.38', '15%', 2, 25, 1, 1, '2019-12-16 07:15:44', '2020-07-23 11:19:51'),
(30, 3, 2, '6 months', '6 months', '6 months', 2, '2,4,5', '1.39', '30%', 2, 26, 1, 1, '2019-12-16 07:16:37', '2020-07-23 11:19:54'),
(31, 3, 3, '1 month', '1 month', '1 month', 12, '2,3,5', '1.40', '0%', 2, 0, 1, 3, '2019-12-16 07:17:17', '2020-10-17 18:28:09'),
(32, 3, 3, '3 months', '3 months', '3 months', 4, '2,4,5', '1.41', '15%', 2, 0, 1, 3, '2019-12-16 07:17:50', '2020-10-17 18:27:57'),
(33, 3, 3, '6 months', '6 months', '6 months', 2, '3,4,5', '0.42', '30%', 2, 45, 1, 3, '2019-12-16 07:18:39', '2020-10-17 18:27:40'),
(37, 4, 1, '1 months', '1 months', '1 month', 12, '7', '36', '0%', 1, 2, 1, 1, '2019-12-16 07:22:28', '2020-07-30 20:23:37'),
(38, 4, 1, '6 month', '6 month', '6 months', 2, '7', '25.2', '30%', 1, 12, 1, 1, '2019-12-16 07:24:50', '2020-07-30 20:25:12'),
(39, 4, 2, '1 month', '1 month', '1 month', 12, '4', '72', '18%', 1, 2, 1, 1, '2019-12-16 07:33:27', '2020-07-30 20:27:19'),
(40, 4, 1, '3 months', '3 months', '3 months', 4, '4', '30.6', '15%', 1, 6, 1, 1, '2019-12-16 07:34:00', '2020-07-30 20:26:42'),
(41, 4, 2, '6 months', '6 months', '6 months', 2, '7', '50.4', '30%', 1, 12, 1, 1, '2019-12-16 07:34:36', '2020-07-30 20:35:13'),
(42, 4, 2, '3 months', '3 months', '3 months', 4, '7', '61.2', '15%', 1, 6, 1, 1, '2019-12-16 07:36:00', '2020-07-30 20:36:16'),
(43, 4, 3, '1 month', '1 month', '1 month', 12, '7', '108', '0%', 1, 2, 1, 3, '2019-12-16 07:37:10', '2020-10-17 18:28:32'),
(44, 4, 3, '3 months', '3 months', '3 months', 4, '7', '91.8', '15%', 1, 6, 1, 3, '2019-12-16 07:37:48', '2020-10-17 18:28:21'),
(45, 4, 3, '6 months', '6 months', '6 months', 2, '7', '75.6', '30%', 1, 12, 1, 3, '2019-12-16 07:39:17', '2020-10-17 18:28:43'),
(49, 5, 1, '1 month', '1 month', '1 month', 12, '7', '18', '0%', 1, 1, 1, 1, '2019-12-16 09:33:13', '2020-07-27 15:20:20'),
(50, 5, 1, '3 months', '3 months', '3 months', 4, '7', '15.3', '15%', 1, 3, 1, 1, '2019-12-16 09:33:40', '2020-07-27 15:25:48'),
(51, 5, 1, '6 months', '6 months', '6 months', 2, '7', '12.6', '30%', 1, 6, 1, 1, '2019-12-16 09:34:10', '2020-07-27 15:42:11'),
(52, 5, 2, '1 month', '1 month', '1 month', 12, '5,7', '36', '0%', 1, 1, 1, 1, '2019-12-16 09:34:45', '2020-07-27 15:40:00'),
(53, 5, 2, '3 months', '3 months', '3 months', 4, '5', '30.6', '15%', 1, 2, 1, 1, '2019-12-16 09:35:14', '2020-07-27 15:40:52'),
(54, 5, 2, '6 months', '6 months', '6 months', 2, '7', '25.2', '30%', 1, 6, 1, 1, '2019-12-16 09:35:39', '2020-07-27 15:42:34'),
(55, 5, 3, '1 month', '1 month', '1 month', 12, '7', '54', '0%', 1, 1, 1, 3, '2019-12-16 09:36:11', '2020-10-17 18:29:17'),
(56, 5, 3, '3 months', '3 months', '3 months', 4, '5', '46.9', '15%', 1, 3, 1, 3, '2019-12-16 09:38:34', '2020-10-17 18:29:08'),
(57, 5, 3, '6 months', '6 months', '6 months', 2, '7', '37.8', '30%', 1, 6, 1, 3, '2019-12-16 09:39:01', '2020-10-17 18:28:56');

-- --------------------------------------------------------

--
-- Table structure for table `sub_category`
--

CREATE TABLE `sub_category` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `sub_cat_name` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub_category`
--

INSERT INTO `sub_category` (`id`, `category_id`, `sub_cat_name`, `image`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2, 'Manicure & Pedicure', 'Manicure_Pedicure.png', 1, '2021-01-23 21:24:32', NULL, NULL),
(2, 2, 'Hair & Makeup', 'Hair_Makeup.png', 1, '2021-01-23 21:24:32', NULL, NULL),
(3, 2, 'Spa & Massage', 'Spa_Massage.png', 1, '2021-01-23 21:29:01', NULL, NULL),
(4, 2, 'Facial', 'facial.png', 1, '2021-01-23 21:29:01', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `social_id` text COLLATE utf8mb4_unicode_ci,
  `device_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `device_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token_code` int(11) DEFAULT NULL,
  `otp_code` int(11) DEFAULT NULL,
  `role` bigint(20) UNSIGNED NOT NULL DEFAULT '2' COMMENT '1=>admin, 2=>instructor,3=>student',
  `designation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language` tinyint(4) NOT NULL DEFAULT '1' COMMENT '"Turkish, Saudi Arabia, Philippines, English"',
  `language_other` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1=>English,2=>Turkish,3=>Philipines,4=>Saudi Arabia',
  `known_languages` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `speciality` text COLLATE utf8mb4_unicode_ci,
  `know_by_media` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `focus` tinyint(4) NOT NULL DEFAULT '4',
  `chat_uid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '''''',
  `voice_uid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '''''',
  `video_uid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '''''',
  `video_verified` tinyint(4) NOT NULL DEFAULT '2' COMMENT '1=>verified, 2=>Not verified, 3=>Re-submit',
  `trial_status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1=>Yes, 2=>No',
  `time_zone` tinyint(4) NOT NULL DEFAULT '0' COMMENT '	0=>English,1=>Turkish, 2=>Philipines, 3=>Saudi Arabia',
  `timezone_id` int(11) NOT NULL DEFAULT '1',
  `level` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1=>beginer,2=>intermediate,3=>Expert',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1=>active, 2=>in-active, 3=>deleted',
  `note` text COLLATE utf8mb4_unicode_ci,
  `short_note` text COLLATE utf8mb4_unicode_ci,
  `about_me` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `email_verified_at`, `password`, `remember_token`, `social_id`, `device_type`, `device_token`, `token_code`, `otp_code`, `role`, `designation`, `phone`, `image`, `city`, `address`, `map_address`, `state`, `country`, `zip_code`, `message`, `language`, `language_other`, `known_languages`, `speciality`, `know_by_media`, `focus`, `chat_uid`, `voice_uid`, `video_uid`, `video_verified`, `trial_status`, `time_zone`, `timezone_id`, `level`, `status`, `note`, `short_note`, `about_me`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin', 'admin@gmail.com', '2019-11-25 00:10:08', '$2y$10$k0SdDKTY8iY1/Ab8o9exz./QORAfFl.P1m63osONAyh7XKw4o3GxC', 'lf6mcdsyBui6TkHEvwAPgOXUk1T9lk6aOPGZChao6td1UTzMzxalju8QF3M8', NULL, NULL, NULL, NULL, NULL, 1, 'Founder Qarint', '7894562123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 1, NULL, NULL, NULL, 4, 'US69bc8d46eab040c9b572447ab0f3020a', '', '', 2, 1, 0, 1, 1, 1, NULL, NULL, NULL, '2019-11-25 00:10:08', '2021-03-03 08:25:21'),
(2, 'mathew', 'hayden', 'mathew@yopmail.com', NULL, '$2y$10$Ll71HUuLaDC0Et0gkYrheeUn/PnKForC/7r/J4SyLWqg15MoMMZme', 'ee9a1989eda99396c3625719932e4dbe', NULL, NULL, NULL, NULL, NULL, 2, NULL, '987641230', 'image-8.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, NULL, NULL, '3', 4, 'US72e0120db2b24e21860952329d4d50db', '', 'mov_bbb.mp4', 2, 1, 0, 1, 1, 1, '<h4>Hi, I am Teacher test!</h4>\r\n            <p>I love basketball and go to watch at least two live games eachwek with my wife and sometimes my children. I have 2 children and 1 grandchild so watching \r\n            them grow is also pretty important for me.</p>', NULL, 'Hi, My name is Mathew. Hello from Philippines.', '2019-11-25 06:32:04', '2020-09-20 10:17:49'),
(10, 'student', 'loren', 'student@yopmail.com', NULL, '$2y$10$WtyaHik64hK3qjqO4cME2uq3x66kkE/P1s6I2Nrtod5AT.yIUw5TW', '05ddeb308b7b07c9c231a7157c4c610c', NULL, 'A', 'e4tdKgpVzJM:APA91bFYZRuq6kuRVjbBwe9JYGq3goztu5WWm6PZidzIu8w0-m2tE_zWSXqST0xum0miRiX5rj3dumi4dtlfOSQgP4Dk2-Evi1M1Bbs5o-CLfqG-vXjOAgeQBvlr3Rio1zfoYTM1hWhk', 211286, 1310, 3, NULL, '789456123020', '1581416070image-7.jpg', 'test city', 'test address', NULL, NULL, 'Turkey', '798451', NULL, 4, 1, NULL, NULL, NULL, 4, 'USc750e4a596e54ecbad523d2d81952cdc', '', '', 2, 1, 3, 1, 4, 1, '<h4>Hi, I am Daniel!</h4>\r\n						<p>I love basketball and go to watch at least two live games eachwek with my wife and sometimes my children. I have 2 children and 1 grandchild so watching \r\n						them grow is also pretty important for me.</p>\r\n', '<p>25 years old, i like to travel and exploring interesting music…</p>', '<h4>Hi, I am Daniel!</h4>\r\n						<p>I love basketball and go to watch at least two live games eachwek with my wife and sometimes my children. I have 2 children and 1 grandchild so watching \r\n						them grow is also pretty important for me.</p>\r\n', '2019-12-12 07:52:37', '2021-03-09 13:00:56'),
(67, 'Arvind Paliwal', NULL, 'arvindpaliwal.paliwal32@gmail.com', NULL, '$2y$10$SV0Si05./0Ebq2F5kyM/x.4fGnk2QLUuAivyFLq3cwgOZeGOQC0eK', NULL, '3551904434893069', 'A', NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 4, '\'\'', '\'\'', '\'\'', 2, 1, 0, 1, 1, 1, NULL, NULL, NULL, '2021-01-03 16:42:39', '2021-03-01 16:35:49'),
(68, 'alex', NULL, 'alex1s@yopmail.com', NULL, '$2y$10$yzC0AKF3e6zSWpIdx9HH0.4braNzJNCSaSsfDwiYxCqlxA5WomSkG', NULL, 'JCILDS7094U2UTU74', '2', NULL, NULL, NULL, 3, NULL, '8794541520', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 4, '\'\'', '\'\'', '\'\'', 2, 1, 0, 1, 1, 1, NULL, NULL, NULL, '2021-01-03 17:10:36', '2021-01-03 17:30:49'),
(70, 'alex', NULL, 'alexps@yopmail.com', NULL, '$2y$10$6ZXLuNbIsKYO7hJ6zwIQNOhD0KrrVcXQYVY38zVFhv/sCMpjjSsV6', NULL, 'JCILDS7094U2UTU0', '2', NULL, NULL, NULL, 3, NULL, '8794541520', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 4, '\'\'', '\'\'', '\'\'', 2, 1, 0, 1, 1, 1, NULL, NULL, NULL, '2021-01-03 17:31:07', '2021-01-03 17:31:07'),
(71, 'alex', NULL, 'alexps9@yopmail.com', NULL, '$2y$10$w/D9JzdThxYdght4e5mkpeUknWf2uqQ6qzA2u9JqCrv8IOcjZzbFS', NULL, 'JCILDS7094U2UTU05', '2', NULL, NULL, NULL, 3, NULL, '8794541520', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 4, '\'\'', '\'\'', '\'\'', 2, 1, 0, 1, 1, 1, NULL, NULL, NULL, '2021-01-03 17:31:46', '2021-01-03 17:31:46'),
(72, 'Arvind', NULL, 'Arvindpalliwal07@gmail.com', NULL, '$2y$10$wtQxlwkSl9P6A9FM5p6O8O63U1ufQVh5Z6SS5UECtCIy3ye8Vb5Ci', NULL, 'eyJhbGciOiJSUzI1NiIsImtpZCI6ImZlZDgwZmVjNTZkYjk5MjMzZDRiNGY2MGZiYWZkYmFlYjkxODZjNzMiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJodHRwczovL2FjY291bnRzLmdvb2dsZS5jb20iLCJhenAiOiIzNjA0MjYwNDIxODktODFxODBvMjg3ZnJ2aTdqNHQ5dTJhNnYyZzBsdWVhM2QuYXBwcy5nb29nbGV1c2VyY29udGVudC5jb20iLCJhdWQiOiIzNjA0MjYwNDIxODktcWtuNDVnYTA3YnRpYjZ2Zjl2cTgzMTFrODRyZW1tYXYuYXBwcy5nb29nbGV1c2VyY29udGVudC5jb20iLCJzdWIiOiIxMDM4MDQ0MTYyMDUxOTA0OTIxNDkiLCJlbWFpbCI6ImFydmluZHBhbGxpd2FsMDdAZ21haWwuY29tIiwiZW1haWxfdmVyaWZpZWQiOnRydWUsIm5hbWUiOiJhcnZpbmQgcGFsbGl3YWwiLCJwaWN0dXJlIjoiaHR0cHM6Ly9saDMuZ29vZ2xldXNlcmNvbnRlbnQuY29tLy1xRlZFZUFpRU9tcy9BQUFBQUFBQUFBSS9BQUFBQUFBQUFBQS9BTVp1dWNtWlVoZTJqTUdWTGpDbnZsWndpcC1yZ2RhS3RBL3M5Ni1jL3Bob3RvLmpwZyIsImdpdmVuX25hbWUiOiJhcnZpbmQiLCJmYW1pbHlfbmFtZSI6InBhbGxpd2FsIiwibG9jYWxlIjoiZW4iLCJpYXQiOjE2MTQ2MTQ4OTUsImV4cCI6MTYxNDYxODQ5NX0.QSI-TKBWwuE3tU3Medt7oz49DFMJ1n-_N_AjL48EDV4YSeAJYl6rmR6AutjPyNuaWrOIF4Sf4GtwtmlA6bk5Ly-CGgFk_cpjmicoRLGVeIskCs6IZ3-Dy_hRFrUbUY4EmV3fiENTslP6VJNV2BmkiuP5w3xtGdt_NSUXlAMQwRqXjVGY67SkY2xgyiCCL3MaMyPS722ULVm9nUY1R0vtT9ZbaTQS5z41l9cs0ELadKeObZa5Ot1B8bsDcob4UcsYPcYGhDHHnHoPwhppm-m0S1lRnKnJfCj2o0mSf5eEDYqFx6jvj_rOSaoK40q1beJPmmbinUV1sXxJm40MhFxvXg', 'A', NULL, NULL, 4978, 3, NULL, '7986418463', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 4, '\'\'', '\'\'', '\'\'', 2, 1, 0, 1, 1, 1, NULL, NULL, NULL, '2021-01-04 16:43:45', '2021-03-01 16:08:16'),
(73, 'Djdjd', NULL, 'a@sk.xc', NULL, '$2y$10$/4hgk7MnoZFHUmQvJK2CmOVBMvnrlTUeJmvDd66uP4wYjZwLQRFAS', NULL, NULL, 'A', NULL, NULL, NULL, 3, NULL, '56168665658', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 4, '\'\'', '\'\'', '\'\'', 2, 1, 0, 1, 1, 1, NULL, NULL, NULL, '2021-01-04 17:09:30', '2021-01-04 17:09:30'),
(74, 'Pardeep Yadav', NULL, 'y27pardeep@gmail.com', NULL, '$2y$10$ymazzvwINYkMPrmo9dk.wuktjy6RzqnHV2mU/LiRG1tWd5lb0hcwm', NULL, 'eyJhbGciOiJSUzI1NiIsImtpZCI6ImZlZDgwZmVjNTZkYjk5MjMzZDRiNGY2MGZiYWZkYmFlYjkxODZjNzMiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJodHRwczovL2FjY291bnRzLmdvb2dsZS5jb20iLCJhenAiOiIzNjA0MjYwNDIxODktODFxODBvMjg3ZnJ2aTdqNHQ5dTJhNnYyZzBsdWVhM2QuYXBwcy5nb29nbGV1c2VyY29udGVudC5jb20iLCJhdWQiOiIzNjA0MjYwNDIxODktcWtuNDVnYTA3YnRpYjZ2Zjl2cTgzMTFrODRyZW1tYXYuYXBwcy5nb29nbGV1c2VyY29udGVudC5jb20iLCJzdWIiOiIxMTEyMzkzNTgzMTk2MDkwMzI5MzMiLCJlbWFpbCI6InkyN3BhcmRlZXBAZ21haWwuY29tIiwiZW1haWxfdmVyaWZpZWQiOnRydWUsIm5hbWUiOiJQYXJkZWVwIFlhZGF2IiwicGljdHVyZSI6Imh0dHBzOi8vbGg0Lmdvb2dsZXVzZXJjb250ZW50LmNvbS8taGhFRmtXWXZPX3MvQUFBQUFBQUFBQUkvQUFBQUFBQUFBQUEvQU1adXVjbU9YN3cxVEg5QkRkZWotSzJKM2lKekoyZTdqQS9zOTYtYy9waG90by5qcGciLCJnaXZlbl9uYW1lIjoiUGFyZGVlcCIsImZhbWlseV9uYW1lIjoiWWFkYXYiLCJsb2NhbGUiOiJlbiIsImlhdCI6MTYxNDY4MzIwNywiZXhwIjoxNjE0Njg2ODA3fQ.Cggy0dwmv-05XOW0xmDI_LMNIP50i_7HtLOSjMKJspKcyBdNWKlNIWmBwvnOy5hHRTb2tiH3OhCOcMLmlHv6GsI6Oh0RBA-Ck07R_R8NELzFXDLZu3u7OTfR8u1fyBybDBvtX146W5nA_VVbNSSsTGPuuLLB_RexJRS9hln7kVmHo0SAaESLhbHzaldeVj-x5MvcimuR-8rkbkQQkO9_kLkKh2mLmxzOh7dcLimVQ5FJybJU6OtNbW_H6hhwMe58WPcxBlbWYorumN3eNFja2RWIUBqT6sPe01vubIWpcB9NFiVfngHmMDz70hqvjwzIOQNr00ZtrUQa8WRiUn7O6Q', 'A', NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 4, '\'\'', '\'\'', '\'\'', 2, 1, 0, 1, 1, 1, NULL, NULL, NULL, '2021-01-04 17:43:41', '2021-03-02 11:06:48'),
(75, 'Pradeep Yadav', NULL, 'yadavpardeep1610@gmail.com', NULL, '$2y$10$MFQfHXrxnc3oUM3mQrktle1Vhpjr9/9tg23wXrXxqgMxsPFzvsAEe', NULL, 'eyJhbGciOiJSUzI1NiIsImtpZCI6Ijc4M2VjMDMxYzU5ZTExZjI1N2QwZWMxNTcxNGVmNjA3Y2U2YTJhNmYiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJodHRwczovL2FjY291bnRzLmdvb2dsZS5jb20iLCJhenAiOiIzNjA0MjYwNDIxODktODFxODBvMjg3ZnJ2aTdqNHQ5dTJhNnYyZzBsdWVhM2QuYXBwcy5nb29nbGV1c2VyY29udGVudC5jb20iLCJhdWQiOiIzNjA0MjYwNDIxODktcWtuNDVnYTA3YnRpYjZ2Zjl2cTgzMTFrODRyZW1tYXYuYXBwcy5nb29nbGV1c2VyY29udGVudC5jb20iLCJzdWIiOiIxMTY1ODA1MDI5NTcyODAzMjMyNTIiLCJlbWFpbCI6InlhZGF2cGFyZGVlcDE2MTBAZ21haWwuY29tIiwiZW1haWxfdmVyaWZpZWQiOnRydWUsIm5hbWUiOiJwYXJkZWVwIHlhZGF2IiwicGljdHVyZSI6Imh0dHBzOi8vbGgzLmdvb2dsZXVzZXJjb250ZW50LmNvbS9hLS9BT2gxNEdoOExxa1J2ODdsTXRHS01sbFk1SmJrQWZjSV80THo0V290Z3pHcT1zOTYtYyIsImdpdmVuX25hbWUiOiJwYXJkZWVwIiwiZmFtaWx5X25hbWUiOiJ5YWRhdiIsImxvY2FsZSI6ImVuIiwiaWF0IjoxNjEwODUyMDA3LCJleHAiOjE2MTA4NTU2MDd9.W7FxTll8k_OiqVHrrPnfLABLALOU2SkA2Z8msmnjON_ooxHtxF-DojSjQ78QpgTdI4ijmpZwbOpaJW0L6fIBY1tOIrFrpwS3PskN_iYK2Np36vod0-2kmVD6HAliwkH4oOjwkvdFSBuRcFF31mHkeiuQwnGy05H_YrkmhWlrG7pgHnSKdmk24VcTPRZXJt5Z8IBxqkiRjVpnM-sdPCl25KwFZ9y88KRPJt5xCjoZva32tj8N0GxM_Lrv-i_LHObxfIO0PzxtwHGYLM6W_8fo7zKhkhR-nH08rVpfL2w5XehGYl1MO65n3U2lqInaXCwtZNHvtA7HjegSDF7NqYHrXw', 'A', NULL, NULL, 2982, 3, NULL, '+917589219984', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 4, '\'\'', '\'\'', '\'\'', 2, 1, 0, 1, 1, 1, NULL, NULL, NULL, '2021-01-04 17:45:01', '2021-02-03 00:39:12'),
(76, 'Gg', NULL, 'abc@gmail.com', NULL, '$2y$10$oFab1bk8ekeZz3H48L0iFOTI8B/6OSppWLKQE.xG.DsoMpwMyJ60.', NULL, NULL, 'A', NULL, NULL, NULL, 3, NULL, '665565555888', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 4, '\'\'', '\'\'', '\'\'', 2, 1, 0, 1, 1, 1, NULL, NULL, NULL, '2021-01-05 04:12:41', '2021-01-05 04:12:41'),
(77, 'Priyanka Bijalwan', NULL, 'priyankabijalwan07@gmail.com', NULL, '$2y$10$kwo8AI5BbzPwOByvaH1u4.c8Uh1FKeIjPyzi7e3kKBAOzk86wazUm', NULL, '1094227137762399', 'A', NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 4, '\'\'', '\'\'', '\'\'', 2, 1, 0, 1, 1, 1, NULL, NULL, NULL, '2021-01-05 04:36:28', '2021-01-05 04:36:28'),
(78, 'Varun', NULL, 'varunbansal1715@gmail.com', NULL, '$2y$10$y7h19LaeVGBzhJY5UUg3.eglYfO4vO1yFQl/99j3VZgYIkhncM1iK', NULL, NULL, 'A', NULL, NULL, NULL, 3, NULL, '9034481715', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 4, '\'\'', '\'\'', '\'\'', 2, 1, 0, 1, 1, 1, NULL, NULL, NULL, '2021-01-05 04:41:28', '2021-01-05 04:41:28'),
(79, 'Gggggg', NULL, 'yadavpardeep16@gmail.com', NULL, '$2y$10$UGTashIGWg1.jmLqwQDbQOD7YM4ocimeoFA4voXDKbEUQn9cHFFdO', NULL, NULL, 'A', NULL, NULL, 7227, 3, NULL, '+917719491228', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 4, '\'\'', '\'\'', '\'\'', 2, 1, 0, 1, 1, 1, NULL, NULL, NULL, '2021-01-05 05:08:30', '2021-02-03 22:02:25'),
(80, 'anuradha dhiman', NULL, 'anuradhadhiman792@gmail.com', NULL, '$2y$10$hwfjVGYBqgNk9ToilH9E2eVjCqlfv/gL4.FBu0Tp21MkaaDaZuj22', NULL, '101276493599233815287', 'i', NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 4, '\'\'', '\'\'', '\'\'', 2, 1, 0, 1, 1, 1, NULL, NULL, NULL, '2021-01-05 15:35:15', '2021-01-13 16:23:34'),
(81, 'robot', NULL, 'rohit@gmail.com', NULL, '$2y$10$U4nNjkuOXWsUb8cNsEHeEOIsMQz4WYcgRK.HZNIm/S5XyzDmpNa.m', NULL, NULL, 'i', NULL, NULL, NULL, 3, NULL, '123456789', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 4, '\'\'', '\'\'', '\'\'', 2, 1, 0, 1, 1, 1, NULL, NULL, NULL, '2021-01-05 16:04:29', '2021-01-05 16:04:29'),
(82, 'Pankaj Rana', NULL, 'pankajrana.rana01@gmail.com', NULL, '$2y$10$A9M.GPx/xuuw8KgAd2kVU.7kW9xfIYZA6zmOlirgLKdrprwaLv3a2', NULL, '108261783210238651248', 'i', NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 4, '\'\'', '\'\'', '\'\'', 2, 1, 0, 1, 1, 1, NULL, NULL, NULL, '2021-01-06 14:47:17', '2021-01-10 14:33:09'),
(83, 'robot', NULL, 'rohit1@gmail.com', NULL, '$2y$10$yqzjXt.WSN286wcxGxuY9eqXm.9XMVj4x2zyWghKxeuEl/UEmtEpy', NULL, NULL, 'i', NULL, NULL, 2679, 3, NULL, '9729525253', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 4, '\'\'', '\'\'', '\'\'', 2, 1, 0, 1, 1, 1, NULL, NULL, NULL, '2021-01-07 14:37:18', '2021-03-07 15:35:15'),
(84, 'robot', NULL, 'rohit2@gmail.com', NULL, '$2y$10$RvEyO/E/JoVf3FoZqptLl.ZamXj3oZAK9cAFmK2QR0MuhSCJGqu6.', NULL, NULL, 'i', NULL, NULL, NULL, 3, NULL, '9729525253', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 4, '\'\'', '\'\'', '\'\'', 2, 1, 0, 1, 1, 1, NULL, NULL, NULL, '2021-01-07 14:38:19', '2021-01-07 14:38:19'),
(85, 'robot', NULL, 'raj@gmail.com', NULL, '$2y$10$Bt3Zb.f4et2NedDW/azuPOyva9iCm.JM37qpUgtgDDUhVLgSldrAy', NULL, NULL, 'i', NULL, NULL, NULL, 3, NULL, '9729225252', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 4, '\'\'', '\'\'', '\'\'', 2, 1, 0, 1, 1, 1, NULL, NULL, NULL, '2021-01-07 15:47:56', '2021-01-07 15:47:56'),
(86, 'rahul', NULL, 'rahul@gmail.com', NULL, '$2y$10$5.3B4EsI02b1W1gHQJ9XTuVRqH56NkxBjW2QeinqcHxRUh5slwCca', NULL, NULL, 'i', NULL, NULL, 7391, 3, NULL, '1234567890', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 4, '\'\'', '\'\'', '\'\'', 2, 1, 0, 1, 1, 1, NULL, NULL, NULL, '2021-01-07 15:53:13', '2021-02-03 16:48:35'),
(87, 'deneme', 'deneme', 'bulten@amors.media', NULL, '$2y$10$FOJ/8wzrObB1Kg.F/TrZj.wlJSOkJaWGSGd4v5iPF41JTjaDtiWZS', 'b7ffe589f9b4a499e6237bb60f8153f1', NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 4, '\'\'', '\'\'', '\'\'', 2, 1, 0, 1, 1, 1, NULL, NULL, NULL, '2021-01-10 15:23:49', '2021-01-10 15:31:10'),
(88, 'deneme', 'deneme', 'deneme@yopmail.com', NULL, '$2y$10$QozFTNhj1nJfGg7UFzPXAeXN9fFqBDHCQaDkQrTmB5syCZvfCBsZq', '41b6c2399053fac9ff260a0e545d7f92', NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 4, '\'\'', '\'\'', '\'\'', 2, 1, 0, 1, 1, 2, NULL, NULL, NULL, '2021-01-10 15:35:02', '2021-01-10 15:35:02'),
(89, 'Aa', NULL, 'aa@imarkinfotech.com', NULL, '$2y$10$WKw8S9vW.Spjgxh3Wkaf9uGnT.hMlmWCaMeDCzX6U7KYyGrP2LmcK', NULL, NULL, 'A', NULL, NULL, NULL, 3, NULL, '64646646644', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 4, '\'\'', '\'\'', '\'\'', 2, 1, 0, 1, 1, 1, NULL, NULL, NULL, '2021-01-13 04:24:34', '2021-01-13 04:24:34'),
(90, 'pardeep yadav', NULL, 'y@y.com', NULL, '$2y$10$7rbvduwloESOCJyZjCrSgeHbp0YOwXoMCC6S3AV6Awma24lM0HDyy', NULL, NULL, 'A', NULL, NULL, NULL, 3, NULL, '1234567890', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 4, '\'\'', '\'\'', '\'\'', 2, 1, 0, 1, 1, 1, NULL, NULL, NULL, '2021-01-13 04:36:37', '2021-01-13 04:36:37'),
(91, 'Rohit', NULL, 'r@gmail.com', NULL, '$2y$10$a1bMO7kH.hsTYkq2R9YTtuaGSGq1QXY3PZquxqChN4gitsDMwi40.', NULL, NULL, 'A', NULL, NULL, NULL, 3, NULL, '7474858596', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 4, '\'\'', '\'\'', '\'\'', 2, 1, 0, 1, 1, 1, NULL, NULL, NULL, '2021-01-13 05:48:11', '2021-01-13 05:48:11'),
(92, 'arvind palliwal', NULL, 'arvindpalliwal06@gmail.com', NULL, '$2y$10$CEpz/TFME/lC6o4ZfxcgrOYew...QCnKPsgxMKsTrjuEjs6wPhpC2', NULL, 'eyJhbGciOiJSUzI1NiIsImtpZCI6Ijc4M2VjMDMxYzU5ZTExZjI1N2QwZWMxNTcxNGVmNjA3Y2U2YTJhNmYiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJodHRwczovL2FjY291bnRzLmdvb2dsZS5jb20iLCJhenAiOiIzNjA0MjYwNDIxODktODFxODBvMjg3ZnJ2aTdqNHQ5dTJhNnYyZzBsdWVhM2QuYXBwcy5nb29nbGV1c2VyY29udGVudC5jb20iLCJhdWQiOiIzNjA0MjYwNDIxODktcWtuNDVnYTA3YnRpYjZ2Zjl2cTgzMTFrODRyZW1tYXYuYXBwcy5nb29nbGV1c2VyY29udGVudC5jb20iLCJzdWIiOiIxMDUxMjQ1MjgzNTg0NzI3ODI5NjQiLCJlbWFpbCI6ImFydmluZHBhbGxpd2FsMDZAZ21haWwuY29tIiwiZW1haWxfdmVyaWZpZWQiOnRydWUsIm5hbWUiOiJhcnZpbmQgcGFsbGl3YWwiLCJwaWN0dXJlIjoiaHR0cHM6Ly9saDMuZ29vZ2xldXNlcmNvbnRlbnQuY29tLy11ZVBTZVNEMFVsOC9BQUFBQUFBQUFBSS9BQUFBQUFBQUFBQS9BTVp1dWNtVTR6RmdDV0ExbEpnUWZIdEs1ZlpxeDVrd3Z3L3M5Ni1jL3Bob3RvLmpwZyIsImdpdmVuX25hbWUiOiJhcnZpbmQiLCJmYW1pbHlfbmFtZSI6InBhbGxpd2FsIiwibG9jYWxlIjoiZW4iLCJpYXQiOjE2MTA1MzI2OTgsImV4cCI6MTYxMDUzNjI5OH0.KIIn82ZCQJn9WI6BvNzQ5CAP4jWy4plDBdzmQgoMdpoZm5HsoWyX5VcN9hTW8sLO8--TtHcQC-mTjSI_rPGMChScHrwZ6p3krdRS6qLCrdsRhA1dxlRySDyunE0nvyHmWZO1Sl65HrptsaUfA7E1jckZ3zFZMqnH_TfZvwWXKhVZV6d__KZGivCls2Mp9rKHbtXqMa6Ctu2rgl7vJITvLLCYXN5GhWzTSsUIRcjMzErS3LGXd4jhxa4T0UkLPbu7leCvfa-Qqvoi9cFsCVJFd7N4bI03i7_q_mls9RgZwpwgPRaZVQOwRGtmhfJgbJWgQiAntvng197Kj1W_IXvgJQ', 'A', NULL, NULL, 9670, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 4, '\'\'', '\'\'', '\'\'', 2, 1, 0, 1, 1, 1, NULL, NULL, NULL, '2021-01-13 10:11:39', '2021-02-03 17:04:18'),
(93, 'Rohit Sandhu', NULL, 'rohitsandhu25@gmail.com', NULL, '$2y$10$duZGZGTDRxzLV4eeXCVrruAIwxdqHUv..9vxq.jUMX8L4c4r8YiOm', NULL, '112258235209502768155', 'i', NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 4, '\'\'', '\'\'', '\'\'', 2, 1, 0, 1, 1, 1, NULL, NULL, NULL, '2021-01-14 14:35:30', '2021-01-14 14:35:30'),
(94, 'Ankitkumar', NULL, 'ankitkumar791@gmail.com', NULL, '$2y$10$P/okCs1wIATGdr625w.Zg.MCpbOajUrMYbJcTAdvIf0n/nd/6k9iy', NULL, NULL, 'i', NULL, NULL, NULL, 3, NULL, '8901277134', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 4, '\'\'', '\'\'', '\'\'', 2, 1, 0, 1, 1, 1, NULL, NULL, NULL, '2021-01-14 14:58:38', '2021-01-14 14:58:38'),
(95, 'rohit', NULL, 'abd@gmail.com', NULL, '$2y$10$FxwSyU6oGChTgP20r4BpJOIW48WvcePUIQJmcSafzteN69qTXJ4Uq', NULL, NULL, 'i', NULL, NULL, NULL, 3, NULL, '9729525253', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 4, '\'\'', '\'\'', '\'\'', 2, 1, 0, 1, 1, 1, NULL, NULL, NULL, '2021-01-14 16:20:37', '2021-01-14 16:20:37'),
(96, 'rohit', NULL, 'rohit1234@gmail.com', NULL, '$2y$10$UWF8p8.LRd0wPYBS3ekW9.Auh6srY021DRXJtv4dyuau56eP/b6DK', NULL, NULL, 'i', NULL, NULL, NULL, 3, NULL, '9729525253', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 4, '\'\'', '\'\'', '\'\'', 2, 1, 0, 1, 1, 1, NULL, NULL, NULL, '2021-01-14 16:27:42', '2021-01-14 16:27:42'),
(97, 'rohit', NULL, 'rohit236@gmail.com', NULL, '$2y$10$AxcolAiqctxUV1EeHAy3XeDaD7BM0tPZM8WLCIasvD29.Kd.GETE2', NULL, NULL, 'i', NULL, NULL, NULL, 3, NULL, '9729525253', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 4, '\'\'', '\'\'', '\'\'', 2, 1, 0, 1, 1, 1, NULL, NULL, NULL, '2021-01-14 16:32:46', '2021-01-14 16:32:46'),
(98, 'pooka', NULL, 'pooja12@gmail.com', NULL, '$2y$10$TKwZJi6TLfYyz42wcQ4FJOVC0o263AD2/ywny6cwqCZfLiYaXaOqy', NULL, NULL, 'i', NULL, NULL, NULL, 3, NULL, '9729525253', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 4, '\'\'', '\'\'', '\'\'', 2, 1, 0, 1, 1, 1, NULL, NULL, NULL, '2021-01-14 16:51:28', '2021-01-14 16:51:28'),
(99, 'ankitkumar', NULL, 'ankitdhiman791@gmail.com', NULL, '$2y$10$vJlP.gVdmJP06v7bFeKThu1/1jKfASgjHn.c6yOQlj65tNlFthuu.', NULL, NULL, 'i', NULL, NULL, NULL, 3, NULL, '8901277134', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 4, '\'\'', '\'\'', '\'\'', 2, 1, 0, 1, 1, 1, NULL, NULL, NULL, '2021-01-14 17:02:58', '2021-01-14 17:02:58'),
(100, 'huseyin metin', 'cetin', 'huseyincetin@bilfen.com', NULL, '$2y$10$SaYl7EtkLMQKzoX0.lgg8erxb91RxqNBnFlqBTY7C158Jz62F0BuC', '37e5c5b4c42e858b356d96e486f627c0', NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 4, '\'\'', '\'\'', '\'\'', 2, 1, 0, 1, 1, 2, NULL, NULL, NULL, '2021-01-14 19:05:10', '2021-01-21 21:17:15'),
(101, 'Mariam Bubeida', NULL, 'memeabw@gmail.com', NULL, '$2y$10$3wZCzcleFNO/z6Xr3p5GmuLt3Dauh/5BlfAbKjJlAedZC4Tcnt5HW', NULL, 'eyJhbGciOiJSUzI1NiIsImtpZCI6Ijc4M2VjMDMxYzU5ZTExZjI1N2QwZWMxNTcxNGVmNjA3Y2U2YTJhNmYiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJodHRwczovL2FjY291bnRzLmdvb2dsZS5jb20iLCJhenAiOiIzNjA0MjYwNDIxODktODFxODBvMjg3ZnJ2aTdqNHQ5dTJhNnYyZzBsdWVhM2QuYXBwcy5nb29nbGV1c2VyY29udGVudC5jb20iLCJhdWQiOiIzNjA0MjYwNDIxODktcWtuNDVnYTA3YnRpYjZ2Zjl2cTgzMTFrODRyZW1tYXYuYXBwcy5nb29nbGV1c2VyY29udGVudC5jb20iLCJzdWIiOiIxMDg3NDc3MjM3OTAwOTE4MDI1NjkiLCJlbWFpbCI6Im1lbWVhYndAZ21haWwuY29tIiwiZW1haWxfdmVyaWZpZWQiOnRydWUsIm5hbWUiOiJNYXJpYW0gQnViZWlkYSIsInBpY3R1cmUiOiJodHRwczovL2xoMy5nb29nbGV1c2VyY29udGVudC5jb20vLTVaeHZMZWJ4cEU4L0FBQUFBQUFBQUFJL0FBQUFBQUFBQUFBL0FNWnV1Y2tnV3lhQW9iT3ZsamxrQzB0TjhiOTd1QVFHMGcvczk2LWMvcGhvdG8uanBnIiwiZ2l2ZW5fbmFtZSI6Ik1hcmlhbSIsImZhbWlseV9uYW1lIjoiQnViZWlkYSIsImxvY2FsZSI6ImVuIiwiaWF0IjoxNjEwOTMxNTA3LCJleHAiOjE2MTA5MzUxMDd9.Tw0lnbR3ukA_sX5-y5hmTsmd3n_Zub6MZ7i_QqcxJc3LzPz8l3ukF9SddDdnwL2jNwQRXuvJPU4fQciHgFgcTey8W_Vasf-WaFUn4FCuZuVjxkA-wsA3eCkk1uEiJpJesFauWDmdDTrp8SdKOiz4jisJ_bnL8QyMKtF-gNMFTWLNl6iewxRFWxDTjNvbK5SeXGMSyZx5LmDIXPbgcN6RQDGtvCiOwHY5bVikXuZ5_pfuMe69kR7vFwRF_0woSrIhGieVLFqIIv8doSea-o98JLfAOj5YFNolStyyIfwipnMd8ksIRChudQrfO0ufFEdGWnuRTn6hTcZMnJHxq8b93w', 'A', NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 4, '\'\'', '\'\'', '\'\'', 2, 1, 0, 1, 1, 1, NULL, NULL, NULL, '2021-01-18 00:58:34', '2021-01-18 00:58:34'),
(102, 'Nikhil', NULL, 'n@gmail.com', NULL, '$2y$10$U5dH7wKsDlgioFwUjULSZ.sL38Cp1i7Cs/k0lbD.I8fbvVTMAJyLm', NULL, NULL, 'i', NULL, NULL, NULL, 3, NULL, '123456789012347765', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 4, '\'\'', '\'\'', '\'\'', 2, 1, 0, 1, 1, 1, NULL, NULL, NULL, '2021-01-18 13:23:23', '2021-01-18 13:23:23'),
(103, 'root', NULL, 'roit@gail.com', NULL, '$2y$10$0zRUKIXSpr10V7fYNr4n9eoGZSwrfs9MIRBRjTZy2AIwZS.HMxKKm', NULL, NULL, 'i', NULL, NULL, NULL, 3, NULL, '98744444444444444444', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 4, '\'\'', '\'\'', '\'\'', 2, 1, 0, 1, 1, 1, NULL, NULL, NULL, '2021-01-18 14:26:32', '2021-01-18 14:26:32'),
(104, 'Adel Shrufi', NULL, 'ashrufi@gmail.com', NULL, '$2y$10$Kg32WLyB.UcGuqUQvRrGseeyzB9mS.I1jP7vAk1X2.wOMl2bgKY5S', NULL, '111487348355321459410', 'i', NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 4, '\'\'', '\'\'', '\'\'', 2, 1, 0, 1, 1, 1, NULL, NULL, NULL, '2021-01-19 01:08:02', '2021-01-19 01:08:02'),
(105, 'Alfred', NULL, 'alfred@yopmail.com', NULL, '$2y$10$A67qrAEGz7B4rSpa5vv62uA3ABrN7e89d1SAVw8bGBRGDrEVOGq/S', NULL, NULL, 'a', NULL, NULL, NULL, 3, NULL, '876456121', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 4, '\'\'', '\'\'', '\'\'', 2, 1, 0, 1, 1, 1, NULL, NULL, NULL, '2021-01-30 11:41:24', '2021-01-30 11:41:24'),
(106, 'Alfred', NULL, 'alfred2@yopmail.com', NULL, '$2y$10$ol.dwytq1wnuvaCDSbVeqennv4LQ4.AxGbe.8/r9c19jJmX5ru49q', NULL, NULL, 'a', NULL, NULL, NULL, 3, NULL, '876456121', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 4, '\'\'', '\'\'', '\'\'', 2, 1, 0, 1, 1, 1, NULL, NULL, NULL, '2021-01-30 11:51:39', '2021-01-30 11:51:39'),
(107, 'alex', NULL, 'alexs@yopmail.com', NULL, '$2y$10$cvr1qent6g3HXKRT8wz0deis9TuxU5pOf0.JHic.FuaVC5hjsVgI.', NULL, 'JCILDS7094U2UTU', '2', NULL, NULL, NULL, 3, NULL, '8794541520', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 4, '\'\'', '\'\'', '\'\'', 2, 1, 0, 1, 1, 1, NULL, NULL, NULL, '2021-01-30 11:54:52', '2021-01-30 11:54:52'),
(108, 'pardeep yadav', NULL, 'pradeep.scorpsoft@gmail.com', NULL, '$2y$10$TglDpVHbHJNKEKTRAb1tEOeTo7sKJ8TkIQTTo7UbBAJWSdfMl.F..', NULL, NULL, 'A', NULL, NULL, NULL, 3, NULL, '7589219984', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 4, '\'\'', '\'\'', '\'\'', 2, 1, 0, 1, 1, 1, NULL, NULL, NULL, '2021-02-03 05:49:00', '2021-02-03 05:49:00'),
(109, 'Komal', NULL, 'komal@gmail.com', NULL, '$2y$10$Avl4JGXhlRfyS5f1d7q8C.O1K6tS/JA2GlcqyVxs13WDRugjVWH2e', NULL, NULL, 'A', NULL, NULL, 4345, 3, NULL, '7814264608', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 4, '\'\'', '\'\'', '\'\'', 2, 1, 0, 1, 1, 1, NULL, NULL, NULL, '2021-02-04 10:10:39', '2021-03-07 09:47:06'),
(110, 'Apollo Pharmacy', NULL, 'aplo@gmail.com', NULL, '5b2b130a7fdc9cf9f6bb1e250d960868', NULL, 'eyJhbGciOiJSUzI1NiIsImtpZCI6IjAzYjJkMjJjMmZlY2Y4NzNlZDE5ZTViOGNmNzA0YWZiN2UyZWQ0YmUiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJodHRwczovL2FjY291bnRzLmdvb2dsZS5jb20iLCJhenAiOiIzNjA0MjYwNDIxODktODFxODBvMjg3ZnJ2aTdqNHQ5dTJhNnYyZzBsdWVhM2QuYXBwcy5nb29nbGV1c2VyY29udGVudC5jb20iLCJhdWQiOiIzNjA0MjYwNDIxODktcWtuNDVnYTA3YnRpYjZ2Zjl2cTgzMTFrODRyZW1tYXYuYXBwcy5nb29nbGV1c2VyY29udGVudC5jb20iLCJzdWIiOiIxMDUyNDk4OTUwMDMxNTc3NDM5OTUiLCJlbWFpbCI6IndhZGh3YS5iaW5kaWFAZ21haWwuY29tIiwiZW1haWxfdmVyaWZpZWQiOnRydWUsIm5hbWUiOiJCaW5kaWEgV2FkaHdhIiwicGljdHVyZSI6Imh0dHBzOi8vbGg1Lmdvb2dsZXVzZXJjb250ZW50LmNvbS8tc3lGY3I5SnQyY1UvQUFBQUFBQUFBQUkvQUFBQUFBQUFBQUEvQU1adXVjbk5aTFpFMFBac0pUdzdqZ3FOMzNwMEZhdDhkUS9zOTYtYy9waG90by5qcGciLCJnaXZlbl9uYW1lIjoiQmluZGlhIiwiZmFtaWx5X25hbWUiOiJXYWRod2EiLCJsb2NhbGUiOiJlbiIsImlhdCI6MTYxMjQzNDQ1MywiZXhwIjoxNjEyNDM4MDUzfQ.cxUBRwevzSe5ABM-HzOIs-LNm-5P8sCMLvDFlU9M6XbGuDTY7mttkqAFAo2ZlfjAVKeM-QabljPXW8it0ikXQG9bhaLGdivQAsQ1_h8PFns2pJFsWHBoWWeeQc8e4WfGkwZFvfr8FXP6uZ_ABZJOs23-OQWKxsQdwMnNX-AOSOId56n5ZcAoe9I29UY9ELqhprO5DSoyVSk0pkrQWcnsVdTbUZph-gUpoAno_B7UeLVR9Bdu3Y4I_O2Ew7Q60FSoFHOUquf-mpfjqbXdAdpWIHgy8ewGfDpaS_8cLQIOB43VnD8aTyI8tKZ_ZBGnk72ejJ_1ecu-E3JhHK2yJXTpFw', 'A', NULL, NULL, 4686, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 4, '\'\'', '\'\'', '\'\'', 2, 1, 0, 1, 1, 1, NULL, NULL, NULL, '2021-02-04 10:27:37', '2021-03-11 16:11:04'),
(111, 'Heena Dhawan', NULL, 'heenu.dhawan29@gmail.com', NULL, '$2y$10$aYCVJxyjqyc4pxNFgzYn.O/CFrMQFA6KXCdMvw6QZgmU9xGGkZg96', NULL, '109587423999162192135', 'i', NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 4, '\'\'', '\'\'', '\'\'', 2, 1, 0, 1, 1, 1, NULL, NULL, NULL, '2021-03-07 09:44:31', '2021-03-07 09:44:31'),
(112, 'test', NULL, 'test@gmail.com', NULL, '$2y$10$TPT0OntxYEFf5qS4ZVuKqO1vv2G2XeI5Nsc/d2uShsKwGVnk8f9ke', NULL, NULL, 'i', NULL, NULL, NULL, 3, NULL, '7814264608', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, 4, '\'\'', '\'\'', '\'\'', 2, 1, 0, 1, 1, 1, NULL, NULL, NULL, '2021-03-07 09:45:45', '2021-03-07 09:45:45');

-- --------------------------------------------------------

--
-- Table structure for table `user_permission`
--

CREATE TABLE `user_permission` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_role` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1=>Admin, 2=>Instructor, 3=>Student',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1=>active, 2=>in-active, 3=>deleted',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_permission`
--

INSERT INTO `user_permission` (`id`, `user_id`, `permission_id`, `user_role`, `status`, `created_at`, `updated_at`) VALUES
(1, 14, 1, 1, 1, '2020-02-04 09:20:56', '2020-02-04 09:20:56'),
(7, 14, 9, 1, 1, '2020-02-04 09:33:50', '2020-02-04 09:33:50'),
(11, 14, 8, 1, 1, '2020-02-05 06:14:04', '2020-02-05 06:14:04'),
(12, 14, 10, 1, 1, '2020-02-05 06:14:04', '2020-02-05 06:14:04'),
(13, 14, 11, 1, 1, '2020-02-05 06:14:04', '2020-02-05 06:14:04'),
(14, 14, 14, 1, 1, '2020-02-05 06:14:04', '2020-02-05 06:14:04'),
(15, 14, 16, 1, 1, '2020-02-05 06:14:04', '2020-02-05 06:14:04'),
(16, 14, 17, 1, 1, '2020-02-05 06:14:04', '2020-02-05 06:14:04'),
(17, 14, 18, 1, 1, '2020-02-05 06:14:04', '2020-02-05 06:14:04'),
(18, 14, 20, 1, 1, '2020-02-05 06:14:04', '2020-02-05 06:14:04'),
(19, 13, 8, 1, 1, '2020-02-05 06:42:16', '2020-02-05 06:42:16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `drugs`
--
ALTER TABLE `drugs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mails`
--
ALTER TABLE `mails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mail_cron`
--
ALTER TABLE `mail_cron`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_content`
--
ALTER TABLE `page_content`
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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prescriptions`
--
ALTER TABLE `prescriptions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code_number` (`code`,`code_number`) USING BTREE;

--
-- Indexes for table `prescription_details`
--
ALTER TABLE `prescription_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `screens`
--
ALTER TABLE `screens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `screen_ads`
--
ALTER TABLE `screen_ads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_category`
--
ALTER TABLE `service_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `speciality_images`
--
ALTER TABLE `speciality_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stores`
--
ALTER TABLE `stores`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `store_relation_with_prescription`
--
ALTER TABLE `store_relation_with_prescription`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `store_services`
--
ALTER TABLE `store_services`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_id` (`store_id`,`sub_catId`);

--
-- Indexes for table `subcat_store`
--
ALTER TABLE `subcat_store`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscription_plan`
--
ALTER TABLE `subscription_plan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subscription_plan_subscription_plan_duration_id_foreign` (`subscription_plan_duration_id`);

--
-- Indexes for table `sub_category`
--
ALTER TABLE `sub_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_permission`
--
ALTER TABLE `user_permission`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_permission_user_id_foreign` (`user_id`),
  ADD KEY `user_permission_permission_id_foreign` (`permission_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `drugs`
--
ALTER TABLE `drugs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `mails`
--
ALTER TABLE `mails`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `mail_cron`
--
ALTER TABLE `mail_cron`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `page`
--
ALTER TABLE `page`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `page_content`
--
ALTER TABLE `page_content`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `prescriptions`
--
ALTER TABLE `prescriptions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `prescription_details`
--
ALTER TABLE `prescription_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `screens`
--
ALTER TABLE `screens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `screen_ads`
--
ALTER TABLE `screen_ads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `service_category`
--
ALTER TABLE `service_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `speciality_images`
--
ALTER TABLE `speciality_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `stores`
--
ALTER TABLE `stores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `store_relation_with_prescription`
--
ALTER TABLE `store_relation_with_prescription`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `store_services`
--
ALTER TABLE `store_services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `subcat_store`
--
ALTER TABLE `subcat_store`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `subscription_plan`
--
ALTER TABLE `subscription_plan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `sub_category`
--
ALTER TABLE `sub_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `user_permission`
--
ALTER TABLE `user_permission`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
