-- phpMyAdmin SQL Dump
-- version 4.6.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 06, 2016 at 07:14 AM
-- Server version: 5.6.26
-- PHP Version: 5.5.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sengine`
--

-- --------------------------------------------------------

--
-- Table structure for table `search_log`
--

CREATE TABLE `search_log` (
  `id` int(16) NOT NULL,
  `time` datetime DEFAULT NULL,
  `q` varchar(255) DEFAULT NULL,
  `results` int(11) DEFAULT NULL,
  `referrer` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `search_log`
--

INSERT INTO `search_log` (`id`, `time`, `q`, `results`, `referrer`) VALUES
(1, '2016-09-25 08:28:29', 'google facebook', 4, 'http://localhost:82/project/'),
(2, '2016-09-25 08:33:37', 'google', 1, 'http://localhost:82/project/'),
(3, '2016-09-25 08:34:19', 'google', 1, 'http://localhost:82/project/'),
(4, '2016-09-25 08:34:39', 'facebook', 1, 'http://localhost:82/project/'),
(5, '2016-09-25 08:34:51', 'facebook online', 4, 'http://localhost:82/project/'),
(6, '2016-09-25 08:54:42', 'facebook online', 2, 'http://localhost:82/project/'),
(7, '2016-09-25 08:54:42', 'facebook online', 2, 'http://localhost:82/project/'),
(8, '2016-09-25 08:54:50', 'facebook', 1, 'http://localhost:82/project/'),
(9, '2016-09-25 08:56:28', 'face', 1, 'http://localhost:82/project/'),
(10, '2016-09-25 08:58:02', 'online face', 2, 'http://localhost:82/project/'),
(11, '2016-09-25 08:58:18', 'online face', 4, 'http://localhost:82/project/'),
(12, '2016-09-25 08:58:36', 'online face', 4, 'http://localhost:82/project/'),
(13, '2016-09-25 08:58:55', 'face', 1, 'http://localhost:82/project/'),
(14, '2016-09-25 08:59:05', 'amazon', 1, 'http://localhost:82/project/'),
(15, '2016-09-25 08:59:10', 'amazon face', 2, 'http://localhost:82/project/'),
(16, '2016-09-25 09:14:11', 'amazon', 1, 'http://localhost:82/project/'),
(17, '2016-09-25 09:14:12', 'amazon', 1, 'http://localhost:82/project/'),
(18, '2016-09-25 09:16:07', 'amazon', 1, 'http://localhost:82/project/'),
(19, '2016-09-25 09:20:29', 'amazon', 1, 'http://localhost:82/project/'),
(20, '2016-09-25 09:20:53', 'amazon', 1, 'http://localhost:82/project/'),
(21, '2016-09-25 09:21:29', 'amazon', 1, 'http://localhost:82/project/'),
(22, '2016-09-25 09:21:38', 'amazon', 1, 'http://localhost:82/project/'),
(23, '2016-09-25 09:23:35', 'google', 1, 'http://localhost:82/project/'),
(24, '2016-09-25 09:23:36', 'google', 1, 'http://localhost:82/project/'),
(25, '2016-09-25 09:23:45', 'amazon', 1, 'http://localhost:82/project/'),
(26, '2016-09-25 09:24:10', 'amazon', 1, 'http://localhost:82/project/'),
(27, '2016-09-25 09:25:42', 'amazon', 1, 'http://localhost:82/project/'),
(28, '2016-09-25 09:31:21', 'amazon', 1, 'http://localhost:82/project/'),
(29, '2016-09-25 09:32:06', 'amazon', 1, 'http://localhost:82/project/'),
(30, '2016-09-25 09:34:05', 'amazon', 1, 'http://localhost:82/project/'),
(31, '2016-09-25 09:35:30', 'online', 3, 'http://localhost:82/project/'),
(32, '2016-10-20 19:12:02', 'online', 3, 'http://localhost:82/project2/'),
(33, '2016-10-20 19:20:35', 'online', 3, 'http://localhost:82/project2/'),
(34, '2016-10-20 19:20:43', 'pravin', 1, 'http://localhost:82/project2/'),
(35, '2016-10-20 19:20:49', 'pravin', 1, 'http://localhost:82/project2/'),
(36, '2016-10-20 19:20:51', 'pravin', 1, 'http://localhost:82/project2/'),
(37, '2016-10-20 21:11:47', 'online', 3, ''),
(38, '2016-10-20 21:16:08', 'online', 3, ''),
(39, '2016-10-20 21:21:07', 'online', 3, ''),
(40, '2016-10-20 21:24:07', 'online', 3, ''),
(41, '2016-10-20 21:24:39', 'online', 3, ''),
(42, '2016-10-20 21:31:14', 'online', 3, ''),
(43, '2016-10-20 21:31:50', 'online', 3, ''),
(44, '2016-10-21 20:57:18', 'google', 1, 'http://localhost:82/project3/'),
(45, '2016-10-21 20:57:26', 'google', 1, 'http://localhost:82/project3/'),
(46, '2016-10-21 20:57:26', 'google', 1, 'http://localhost:82/project3/'),
(47, '2016-10-22 18:26:56', 'online', 10, 'http://localhost:82/project3/'),
(48, '2016-10-22 18:27:41', 'online', 10, 'http://localhost:82/project3/'),
(49, '2016-10-22 18:27:41', 'online', 10, 'http://localhost:82/project3/'),
(50, '2016-10-22 18:27:42', 'online', 10, 'http://localhost:82/project3/'),
(51, '2016-10-22 18:37:02', 'online', 10, ''),
(52, '2016-10-22 18:37:42', 'was', 1, ''),
(53, '2016-10-22 18:39:30', 'was', 1, ''),
(54, '2016-10-22 18:40:03', 'new', 6, ''),
(55, '2016-10-22 18:42:32', 'online', 10, 'http://localhost:82/project3/'),
(56, '2016-10-22 18:42:34', 'online', 10, 'http://localhost:82/project3/'),
(57, '2016-10-22 18:46:53', 'online', 10, 'http://localhost:82/project3/'),
(58, '2016-10-22 18:47:57', 'online', 10, 'http://localhost:82/project3/'),
(59, '2016-10-22 18:48:22', 'online', 10, 'http://localhost:82/project3/'),
(60, '2016-10-22 18:51:38', 'online', 10, 'http://localhost:82/project3/'),
(61, '2016-10-22 18:52:16', 'was', 1, 'http://localhost:82/project3/'),
(62, '2016-10-22 18:53:24', 'was', 1, 'http://localhost:82/project3/'),
(63, '2016-10-22 18:53:31', 'was', 1, 'http://localhost:82/project3/'),
(64, '2016-10-22 18:54:14', 'new', 6, 'http://localhost:82/project3/'),
(65, '2016-10-22 19:01:25', 'new song', 6, 'http://localhost:82/project3/'),
(66, '2016-10-22 19:02:51', 'online', 10, 'http://localhost:82/project3/'),
(67, '2016-10-22 19:03:00', 'online', 10, 'http://localhost:82/project3/'),
(68, '2016-10-22 19:03:03', 'online', 10, 'http://localhost:82/project3/'),
(69, '2016-10-22 19:03:13', 'news', 6, 'http://localhost:82/project3/'),
(70, '2016-10-22 19:03:16', 'news', 6, 'http://localhost:82/project3/'),
(71, '2016-10-22 19:03:19', 'news', 6, 'http://localhost:82/project3/'),
(72, '2016-10-22 19:03:24', 'google', 1, 'http://localhost:82/project3/'),
(73, '2016-10-22 19:03:55', 'google', 1, 'http://localhost:82/project3/'),
(74, '2016-10-22 19:04:07', 'yahoo', 1, 'http://localhost:82/project3/'),
(75, '2016-10-22 19:04:09', 'yahoo', 1, 'http://localhost:82/project3/'),
(76, '2016-10-22 19:04:17', 'yahoo', 1, 'http://localhost:82/project3/'),
(77, '2016-10-22 19:04:22', 'nude', 1, 'http://localhost:82/project3/'),
(78, '2016-10-22 19:04:29', 'nude', 1, 'http://localhost:82/project3/'),
(79, '2016-10-22 19:04:34', 'new', 6, 'http://localhost:82/project3/'),
(80, '2016-10-22 20:35:36', 'online', 10, 'http://localhost:82/project3/'),
(81, '2016-10-22 20:36:12', 'google', 1, 'http://localhost:82/project3/'),
(82, '2016-10-22 20:36:21', 'google', 1, 'http://localhost:82/project3/'),
(83, '2016-10-22 20:37:01', 'new', 6, 'http://localhost:82/project3/'),
(84, '2016-10-22 20:37:06', 'new', 6, 'http://localhost:82/project3/'),
(85, '2016-10-22 20:37:12', 'new', 6, 'http://localhost:82/project3/'),
(86, '2016-10-22 20:37:32', 'new there movie', 6, 'http://localhost:82/project3/'),
(87, '2016-10-22 20:37:49', 'new there movie', 6, 'http://localhost:82/project3/'),
(88, '2016-10-22 20:37:54', 'new there movie', 6, 'http://localhost:82/project3/'),
(89, '2016-10-22 20:38:07', 'new there movie', 6, 'http://localhost:82/project3/'),
(90, '2016-10-22 20:38:09', 'new there movie', 6, 'http://localhost:82/project3/'),
(91, '2016-10-22 20:38:11', 'new there movie', 6, 'http://localhost:82/project3/'),
(92, '2016-10-22 20:38:12', 'new there movie', 6, 'http://localhost:82/project3/'),
(93, '2016-10-22 20:38:14', 'new there movie', 6, 'http://localhost:82/project3/'),
(94, '2016-10-22 20:38:22', 'nature', 1, 'http://localhost:82/project3/'),
(95, '2016-10-22 20:38:26', 'nature flipkart', 1, 'http://localhost:82/project3/'),
(96, '2016-10-22 20:38:44', 'nature flipkart', 1, 'http://localhost:82/project3/'),
(97, '2016-10-22 20:38:56', 'nature flipkart', 1, 'http://localhost:82/project3/'),
(98, '2016-10-22 20:39:00', 'nature flipkart', 1, 'http://localhost:82/project3/'),
(99, '2016-10-22 20:39:29', 'yeah', 1, 'http://localhost:82/project3/'),
(100, '2016-10-22 20:39:32', 'yeah', 1, 'http://localhost:82/project3/'),
(101, '2016-10-22 20:39:40', 'he', 1, 'http://localhost:82/project3/'),
(102, '2016-10-22 20:39:47', 'he', 1, 'http://localhost:82/project3/'),
(103, '2016-10-22 20:40:02', 'vidya balan', 2, 'http://localhost:82/project3/'),
(104, '2016-10-22 20:40:04', 'vidya balan', 2, 'http://localhost:82/project3/'),
(105, '2016-10-26 17:35:37', 'online', 10, 'http://localhost:82/project3/'),
(106, '2016-10-26 17:35:37', 'online', 10, 'http://localhost:82/project3/'),
(107, '2016-10-26 17:36:40', 'online', 10, 'http://localhost:82/project3/'),
(108, '2016-10-26 17:36:42', 'online', 10, 'http://localhost:82/project3/'),
(109, '2016-10-26 17:36:43', 'online', 10, 'http://localhost:82/project3/'),
(110, '2016-10-26 17:36:44', 'online', 10, 'http://localhost:82/project3/'),
(111, '2016-10-26 17:36:45', 'online', 10, 'http://localhost:82/project3/'),
(112, '2016-10-26 17:36:46', 'online', 10, 'http://localhost:82/project3/'),
(113, '2016-10-26 17:36:56', 'online', 10, 'http://localhost:82/project3/'),
(114, '2016-10-26 17:36:56', 'online', 10, 'http://localhost:82/project3/'),
(115, '2016-10-26 17:37:04', 'online', 10, 'http://localhost:82/project3/'),
(116, '2016-10-26 17:37:10', 'online', 10, 'http://localhost:82/project3/'),
(117, '2016-10-26 17:38:28', 'online', 10, 'http://localhost:82/project3/'),
(118, '2016-10-26 17:38:41', 'online', 10, 'http://localhost:82/project3/'),
(119, '2016-10-26 17:38:42', 'online', 10, 'http://localhost:82/project3/'),
(120, '2016-10-26 17:38:42', 'online', 10, 'http://localhost:82/project3/'),
(121, '2016-10-26 17:38:46', 'online', 10, 'http://localhost:82/project3/'),
(122, '2016-10-26 17:38:50', 'online', 10, 'http://localhost:82/project3/'),
(123, '2016-10-26 17:38:52', 'online', 10, 'http://localhost:82/project3/'),
(124, '2016-10-26 17:38:55', 'online', 10, 'http://localhost:82/project3/'),
(125, '2016-10-26 17:44:47', 'online', 10, 'http://localhost:82/project3/'),
(126, '2016-10-26 17:46:13', 'online', 10, 'http://localhost:82/project3/'),
(127, '2016-10-26 17:46:13', 'online', 10, 'http://localhost:82/project3/'),
(128, '2016-10-26 17:46:13', 'online', 10, 'http://localhost:82/project3/'),
(129, '2016-10-26 17:46:13', 'online', 10, 'http://localhost:82/project3/'),
(130, '2016-10-26 17:46:13', 'online', 10, 'http://localhost:82/project3/'),
(131, '2016-10-26 17:46:13', 'online', 10, 'http://localhost:82/project3/'),
(132, '2016-10-26 17:46:13', 'online', 10, 'http://localhost:82/project3/'),
(133, '2016-10-26 17:46:13', 'online', 10, 'http://localhost:82/project3/'),
(134, '2016-10-26 17:47:23', 'news', 6, 'http://localhost:82/project3/'),
(135, '2016-10-26 17:49:26', 'online', 10, 'http://localhost:82/project3/'),
(136, '2016-10-26 17:51:41', 'online', 10, 'http://localhost:82/project3/'),
(137, '2016-10-26 17:52:21', 'online', 10, 'http://localhost:82/project3/'),
(138, '2016-10-26 17:52:22', 'online', 10, 'http://localhost:82/project3/'),
(139, '2016-10-26 17:52:22', 'online', 10, 'http://localhost:82/project3/'),
(140, '2016-10-26 17:53:50', 'online', 10, 'http://localhost:82/project3/'),
(141, '2016-10-26 17:54:57', 'online', 10, 'http://localhost:82/project3/'),
(142, '2016-10-26 17:55:05', 'online', 10, 'http://localhost:82/project3/'),
(143, '2016-10-26 17:56:20', 'online', 10, 'http://localhost:82/project3/'),
(144, '2016-10-26 17:56:25', 'online', 10, 'http://localhost:82/project3/'),
(145, '2016-10-26 17:57:47', 'online', 10, 'http://localhost:82/project3/'),
(146, '2016-10-26 17:58:57', 'online', 10, 'http://localhost:82/project3/'),
(147, '2016-10-26 18:06:16', 'online', 10, 'http://localhost:82/project3/'),
(148, '2016-10-26 18:06:18', 'online', 10, 'http://localhost:82/project3/'),
(149, '2016-10-30 05:50:22', 'online', 10, 'http://localhost:82/Project5/'),
(150, '2016-10-30 06:00:45', 'news', 6, 'http://localhost:82/Project5/'),
(151, '2016-10-30 06:01:07', 'new', 6, 'http://localhost:82/Project5/'),
(152, '2016-10-30 06:01:18', 'new', 6, 'http://localhost:82/Project5/'),
(153, '2016-10-30 06:01:21', 'new', 6, 'http://localhost:82/Project5/'),
(154, '2016-10-30 06:01:24', 'new', 6, 'http://localhost:82/Project5/'),
(155, '2016-10-30 06:01:40', 'onne', 1, 'http://localhost:82/Project5/'),
(156, '2016-10-30 06:02:15', 'unlie', 1, 'http://localhost:82/Project5/'),
(157, '2016-10-30 06:02:15', 'unlie', 1, 'http://localhost:82/Project5/'),
(158, '2016-10-30 06:02:15', 'unlie', 1, 'http://localhost:82/Project5/'),
(159, '2016-10-30 06:02:22', 'unlie', 1, 'http://localhost:82/Project5/'),
(160, '2016-10-30 06:02:24', 'unlie', 1, 'http://localhost:82/Project5/'),
(161, '2016-10-30 06:02:34', 'news', 6, 'http://localhost:82/Project5/'),
(162, '2016-10-30 06:12:00', 'online', 10, 'http://localhost:82/Project5/'),
(163, '2016-10-30 06:59:27', 'online', 10, 'http://localhost:82/Project5/'),
(164, '2016-10-30 07:00:20', 'news', 6, 'http://localhost:82/Project5/'),
(165, '2016-10-30 07:01:14', 'online', 10, 'http://localhost:82/Project5/'),
(166, '2016-10-30 07:02:47', 'amsterdam', 1, 'http://localhost:82/Project5/'),
(167, '2016-10-30 07:07:06', 'pluralsight', 1, 'http://localhost:82/Project5/'),
(168, '2016-10-30 07:07:06', 'pluralsight', 1, 'http://localhost:82/Project5/'),
(169, '2016-10-30 07:07:08', 'pluralsight', 1, 'http://localhost:82/Project5/'),
(170, '2016-10-30 07:07:26', 'pluralsight', 1, 'http://localhost:82/Project5/'),
(171, '2016-10-30 07:08:28', 'am', 2, 'http://localhost:82/Project5/'),
(172, '2016-10-30 07:08:40', 'am', 2, 'http://localhost:82/Project5/'),
(173, '2016-10-30 07:08:41', 'am', 2, 'http://localhost:82/Project5/'),
(174, '2016-10-30 07:08:42', 'am', 2, 'http://localhost:82/Project5/'),
(175, '2016-10-30 07:08:43', 'am', 2, 'http://localhost:82/Project5/'),
(176, '2016-10-30 07:08:44', 'am', 2, 'http://localhost:82/Project5/'),
(177, '2016-10-30 07:08:55', 'amsterdam', 1, 'http://localhost:82/Project5/'),
(178, '2016-10-30 07:10:01', 'online', 10, 'http://localhost:82/Project5/'),
(179, '2016-10-30 07:10:01', 'online', 10, 'http://localhost:82/Project5/'),
(180, '2016-10-30 07:10:19', 'amsterdam', 1, 'http://localhost:82/Project5/'),
(181, '2016-10-30 07:10:59', 'amsterdam', 1, 'http://localhost:82/Project5/'),
(182, '2016-10-30 07:13:01', 'damn', 1, 'http://localhost:82/Project5/'),
(183, '2016-10-30 07:13:32', 'damn', 1, 'http://localhost:82/Project5/'),
(184, '2016-11-01 10:29:18', 'among', 1, 'http://localhost:82/searchEngine/'),
(185, '2016-11-01 10:30:23', 'online', 10, 'http://localhost:82/searchEngine/'),
(186, '2016-11-01 10:37:32', 'online', 10, 'http://localhost:82/searchEngine/'),
(187, '2016-11-01 10:37:35', 'online', 10, 'http://localhost:82/searchEngine/'),
(188, '2016-11-01 10:37:38', 'online', 10, 'http://localhost:82/searchEngine/'),
(189, '2016-11-01 10:37:40', 'online', 10, 'http://localhost:82/searchEngine/'),
(190, '2016-11-01 10:37:42', 'online', 10, 'http://localhost:82/searchEngine/'),
(191, '2016-11-01 10:39:27', 'of google', 1, 'http://localhost:82/searchEngine/'),
(192, '2016-11-01 10:39:31', 'of google', 1, 'http://localhost:82/searchEngine/'),
(193, '2016-11-01 10:39:32', 'of google', 1, 'http://localhost:82/searchEngine/'),
(194, '2016-11-01 10:39:49', 'google facebook amazon', 3, 'http://localhost:82/searchEngine/'),
(195, '2016-11-01 10:40:12', 'pravin', 1, 'http://localhost:82/searchEngine/'),
(196, '2016-11-01 14:31:15', 'online', 10, 'http://localhost:82/searchEngine/'),
(197, '2016-11-01 17:16:40', 'azon', 1, 'http://localhost:82/searchEngine/'),
(198, '2016-11-01 17:17:47', 'news', 6, 'http://localhost:82/searchEngine/'),
(199, '2016-11-01 17:18:08', 'only', 1, 'http://localhost:82/searchEngine/'),
(200, '2016-11-02 13:18:45', 'google amazon yahoo', 3, 'http://localhost:82/searchEngine/');

-- --------------------------------------------------------

--
-- Table structure for table `search_page`
--

CREATE TABLE `search_page` (
  `pageid` int(8) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `url` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `search_page`
--

INSERT INTO `search_page` (`pageid`, `title`, `url`, `description`) VALUES
(1, 'Log in to Facebook | Facebook', 'https://www.facebook.com/login/', 'Create an account or log into Facebook. Connect with friends, family and other people you know. Share photos and videos, send messages and get updates.\r\n'),
(2, 'google', 'https://www.google.co.in/', 'Google is an American multinational technology company specializing in Internet-related services and products that include online advertising technologies, search, cloud computing, and software'),
(3, 'youtube', 'https://www.youtube.com/', 'YouTube is an American video-sharing website headquartered in San Bruno, California, United States. The service was created by three former PayPal employees in February 2005. In November 2006, it was bought by Google for US$1.65 billion'),
(4, 'Online Shopping: Shop Online for Mobiles, Books, Watches, Shoes and More - Amazon.in', 'http://www.amazon.in/', 'Amazon.com, Inc., often referred to as simply Amazon, is an American electronic commerce and cloud computing company with headquarters in Seattle, Washington. Wikipedia\r\n'),
(5, 'Online Shopping India | Buy Mobiles, Electronics, Appliances, Clothing and More Online', 'https://www.flipkart.com/', 'Flipkart is an e-commerce company founded in 2007 by Sachin Bansal and Binny Bansal. The company is registered in Singapore, but has its headquarters in Bangalore, Karnataka, India'),
(6, 'edX | Free online courses from the world\'s best universities', 'https://www.edx.org/', 'EdX offers free online courses and classes. Find the latest MOOC from the world\'s best universities including MIT, Harvard, Berkeley, UT and others. Topics ...'),
(7, 'Baidu', 'http://baidu.com', 'Baidu, Inc., incorporated on January 18, 2000, is a Chinese web services company headquartered at the Baidu Campus in Beijing\'s Haidian District. Baidu offers many services, including a Chinese search engine for websites, audio files and images'),
(8, 'Yahoo!', 'http://yahoo.com', 'Yahoo Inc. is an American multinational technology company headquartered in Sunnyvale, California. Yahoo was founded by Jerry Yang and David Filo in January 1994 and was incorporated on March 2, 1995.'),
(9, 'Wikipedia', 'http://wikipedia.org', 'A free encyclopedia built collaboratively using wiki software. (Creative Commons Attribution-ShareAlike License).'),
(10, 'Twitter', 'http://twitter.com', 'Twitter is an online social networking service that enables users to send and read short 140-character messages called "tweets". Registered users can read and post tweets, but those who are unregistered can only read them'),
(11, 'Windows Live', 'http://live.com', 'Windows Live is a discontinued brand name for a set of web services and software products from Microsoft as part of their software plus services platform.'),
(12, 'Instagram', 'http://instagram.com', 'Instagram is an online mobile photo-sharing, video-sharing, and social networking service that enables its users to take pictures and videos, and share them either publicly or privately on the app, as well as through a variety of other social networking p'),
(13, 'LinkedIn', 'http://linkedin.com', 'LinkedIn is a business and employment-oriented social networking service that operates via websites'),
(14, 'Reddit', 'http://reddit.com', 'Reddit is a social news aggregation, web content rating, and discussion website. Reddit\'s registered community members can submit content, such as text posts or direct links.'),
(15, 'eBay', 'http://ebay.com', 'eBay Inc. is an American multinational corporation and e-commerce company, providing consumer-to-consumer and business-to-consumer sales services via the Internet. It is headquartered in San Jose, California.'),
(16, 'WordPress.com', 'http://wordpress.com', 'WordPress is a free and open-source content management system (CMS) based on PHP and MySQL.WordPress is installed on a web server, which either is part of an Internet hosting service or is a network host itself.'),
(17, 'Udemy Online Courses - Learn Anything, On Your Schedule ', 'https://www.udemy.com/', 'Udemy.com is an online learning platform. It is aimed at professional adults who want to add new skills to their resumes.'),
(18, 'Udacity - Free Online Classes & Nanodegrees', 'https://www.udacity.com/', 'Join Udacity and learn to code from the best online free courses and Nanodegree programs.'),
(19, 'Dropbox online strorage', 'https://www.dropbox.com/', 'Dropbox is a file hosting service operated by American company Dropbox, Inc., headquartered in San Francisco, California, that offers cloud storage, file synchronization, personal cloud, and client software.'),
(20, 'Latest India News, Headlines, Stories and Videos - Rediff.com', 'www.rediff.com/news', 'Rediff News - India\'s most trusted destination for latest India news, international news, top stories, newspaper columns, discussions, interviews and more.'),
(21, 'News - Breaking News, Latest News & Top Video News - India Today', 'indiatoday.intoday.in/news.html\r\n', 'India Today News - Get the latest news from politics, entertainment, sports and other feature stories.'),
(22, 'Times of India: India News, Latest Sports, Bollywood, World, Business', 'http://timesofindia.indiatimes.com/\r\n', 'Times of India brings the Latest News & Top Breaking headlines on Politics and Current Affairs in India & around the World, Sports, Business, Bollywood News ...'),
(23, 'Zee News: Latest News Headlines, Current Live Breaking News from..', 'http://zeenews.india.com/', 'Read all latest news from India & World on Politics, Business,Technology, Entertainment, Sports etc. Find exclusive news stories on current affairs, cricket ...');

-- --------------------------------------------------------

--
-- Table structure for table `search_relationships`
--

CREATE TABLE `search_relationships` (
  `term1` int(11) DEFAULT NULL,
  `term2` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `search_relationships`
--

INSERT INTO `search_relationships` (`term1`, `term2`) VALUES
(1, 7),
(8, 3);

-- --------------------------------------------------------

--
-- Table structure for table `search_term`
--

CREATE TABLE `search_term` (
  `termid` int(16) NOT NULL,
  `term` varchar(50) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `search_term`
--

INSERT INTO `search_term` (`termid`, `term`) VALUES
(1, 'facebook'),
(2, 'google'),
(3, 'youtube'),
(4, 'amazon'),
(5, 'flipkart'),
(6, 'edx'),
(7, 'fb'),
(8, 'yt'),
(9, 'online'),
(10, 'news'),
(11, 'zee'),
(12, 'udacity'),
(13, 'udemy'),
(14, 'Times'),
(15, 'India'),
(16, 'WordPress'),
(17, 'ebay'),
(18, 'reddit'),
(19, 'linkedin'),
(20, 'Instagram'),
(21, 'Twitter'),
(22, 'Wikipedia'),
(23, 'Yahoo'),
(24, 'Baidu'),
(25, 'Dropbox'),
(26, 'Windows'),
(27, 'Live'),
(28, 'indiatoday');

-- --------------------------------------------------------

--
-- Table structure for table `search_term_page_link`
--

CREATE TABLE `search_term_page_link` (
  `pageid` int(8) NOT NULL DEFAULT '0',
  `termid` int(16) NOT NULL DEFAULT '0',
  `priority` int(5) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `search_term_page_link`
--

INSERT INTO `search_term_page_link` (`pageid`, `termid`, `priority`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1),
(6, 6, 1),
(4, 9, 1),
(5, 9, 1),
(6, 9, 1),
(7, 24, 1),
(8, 23, 1),
(8, 10, 1),
(9, 22, 1),
(10, 21, 1),
(10, 10, 1),
(11, 26, 1),
(11, 27, 1),
(12, 20, 1),
(13, 19, 1),
(14, 18, 1),
(15, 17, 1),
(16, 16, 1),
(17, 13, 1),
(17, 9, 1),
(18, 12, 1),
(18, 9, 1),
(19, 25, 1),
(19, 9, 1),
(20, 18, 1),
(20, 9, 1),
(20, 10, 1),
(21, 9, 1),
(21, 10, 1),
(21, 28, 1),
(22, 14, 1),
(22, 14, 1),
(22, 10, 1),
(22, 9, 1),
(23, 10, 1),
(23, 9, 1),
(23, 11, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `search_log`
--
ALTER TABLE `search_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `search_page`
--
ALTER TABLE `search_page`
  ADD PRIMARY KEY (`pageid`);

--
-- Indexes for table `search_term`
--
ALTER TABLE `search_term`
  ADD PRIMARY KEY (`termid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `search_log`
--
ALTER TABLE `search_log`
  MODIFY `id` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;
--
-- AUTO_INCREMENT for table `search_page`
--
ALTER TABLE `search_page`
  MODIFY `pageid` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `search_term`
--
ALTER TABLE `search_term`
  MODIFY `termid` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
