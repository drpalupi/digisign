-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 18, 2022 at 09:39 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `digisign`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_activation_attempts`
--

CREATE TABLE `auth_activation_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_activation_attempts`
--

INSERT INTO `auth_activation_attempts` (`id`, `ip_address`, `user_agent`, `token`, `created_at`) VALUES
(1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '7d7b49b4a372950c0e7e5e9ff9bc9d92', '2022-01-20 22:06:04'),
(2, '2001:448a:2020:53f8:581b:e7a2:eedc:c12a', 'Mozilla/5.0 (Linux; Android 10) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/97.0.4692.87 Mobile DuckDuckGo/5 Safari/537.36', '29d54d041c3e0892b79142f1ce82c352', '2022-01-20 23:47:01'),
(3, '125.166.19.206', 'Mozilla/5.0 (Linux; Android 9; SAMSUNG SM-A605G) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/16.0 Chrome/92.0.4515.166 Mobile Safari/537.36', 'b9641c80c9c3f5db0ec1616f5b5092e6', '2022-01-21 00:15:35'),
(4, '114.4.4.196', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', '29d54d041c3e0892b79142f1ce82c352', '2022-01-21 00:25:24'),
(5, '125.166.19.206', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:96.0) Gecko/20100101 Firefox/96.0', '662135c28815f0c83d7fd855f7a4535e', '2022-01-21 00:26:33'),
(6, '110.50.81.196', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', 'b9641c80c9c3f5db0ec1616f5b5092e6', '2022-01-21 01:39:12'),
(7, '175.45.186.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', '662135c28815f0c83d7fd855f7a4535e', '2022-01-21 03:48:39'),
(8, '110.50.81.202', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', '29d54d041c3e0892b79142f1ce82c352', '2022-01-21 04:09:30'),
(9, '103.26.211.4', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', '29d54d041c3e0892b79142f1ce82c352', '2022-01-21 04:53:09'),
(10, '114.4.4.135', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', '662135c28815f0c83d7fd855f7a4535e', '2022-01-21 07:19:56'),
(11, '103.131.109.24', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:96.0) Gecko/20100101 Firefox/96.0', '3d82152e9aad822d5efd8829c68ef1f5', '2022-01-21 16:59:38'),
(12, '114.4.4.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', '3d82152e9aad822d5efd8829c68ef1f5', '2022-01-21 17:00:33'),
(13, '103.131.109.24', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:96.0) Gecko/20100101 Firefox/96.0', '6c0658b6da04d2b65c3cd1c599b2226c', '2022-01-21 17:00:50'),
(14, '103.131.109.24', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:96.0) Gecko/20100101 Firefox/96.0', 'e1a37e2641f5fecfb8abcb32bca208d7', '2022-01-21 17:35:11'),
(15, '113.197.108.36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', 'e1a37e2641f5fecfb8abcb32bca208d7', '2022-01-21 18:28:00'),
(16, '114.4.4.137', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', '6c0658b6da04d2b65c3cd1c599b2226c', '2022-01-21 18:47:29'),
(17, '45.121.219.4', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', 'e1a37e2641f5fecfb8abcb32bca208d7', '2022-01-21 19:28:35'),
(18, '113.197.108.36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', NULL, '2022-01-21 19:49:23'),
(19, '175.45.186.196', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', NULL, '2022-01-21 19:49:23'),
(20, '124.158.184.192', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '311627b62fc4452dc62d4f4d41e8e627', '2022-01-21 19:51:05'),
(21, '36.70.157.85', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', 'a96471ade8b1d7ecc1e62f6028adda82', '2022-01-21 19:51:13'),
(22, '180.252.163.149', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/97.0.4692.84 Mobile/15E148 Safari/604.1', '5b5eca9b867f2678809624deb5b81593', '2022-01-21 19:51:16'),
(23, '125.161.161.246', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'e8639e45c83beb35d8e83a0eda6c8a42', '2022-01-21 19:51:18'),
(24, '180.252.163.149', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.1 Mobile/15E148 Safari/604.1', '5b5eca9b867f2678809624deb5b81593', '2022-01-21 19:51:22'),
(25, '103.10.66.14', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', 'a8d62bc44b29912f76f1095fb1ddbffc', '2022-01-21 19:51:40'),
(26, '2001:448a:2082:ef1e:d527:b495:1a43:99e9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '12c2207d08c5f3407d0599d0227ea159', '2022-01-21 19:51:56'),
(27, '180.252.167.183', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '8d216ab83b3f8d224597e2d78b955a8a', '2022-01-21 19:52:01'),
(28, '180.243.5.126', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '8b236a0d0f11a16374ec15db925a63c7', '2022-01-21 19:52:25'),
(29, '36.79.110.239', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', 'f0a4c07955f6b90eb76094fe33f24981', '2022-01-21 19:52:59'),
(30, '180.243.9.234', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.1.1 Safari/605.1.15', 'c2a5c6a37761ffb65b21e107b4fac2a0', '2022-01-21 19:53:29'),
(31, '110.137.194.245', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '062095bce2ad978813bf238c2304bd06', '2022-01-21 19:55:08'),
(32, '110.137.194.245', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '062095bce2ad978813bf238c2304bd06', '2022-01-21 19:55:11'),
(33, '110.137.194.245', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '062095bce2ad978813bf238c2304bd06', '2022-01-21 19:55:13'),
(34, '110.137.194.245', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '062095bce2ad978813bf238c2304bd06', '2022-01-21 19:55:15'),
(35, '110.137.194.245', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '062095bce2ad978813bf238c2304bd06', '2022-01-21 19:55:20'),
(36, '110.137.194.245', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '062095bce2ad978813bf238c2304bd06', '2022-01-21 19:55:22'),
(37, '2001:448a:2082:6b60:ccc5:64c6:193a:47e7', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '82b7dc651fdd16a54b87c634cb3ecbd9', '2022-01-21 19:55:27'),
(38, '110.137.194.245', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '062095bce2ad978813bf238c2304bd06', '2022-01-21 19:55:28'),
(39, '110.137.194.245', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '062095bce2ad978813bf238c2304bd06', '2022-01-21 19:55:30'),
(40, '110.137.194.245', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '062095bce2ad978813bf238c2304bd06', '2022-01-21 19:55:33'),
(41, '2001:448a:2061:8174:501a:60ea:4b8e:599c', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '7a46727da2594730dc4aeef3549445c2', '2022-01-21 19:55:57'),
(42, '110.137.194.245', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '062095bce2ad978813bf238c2304bd06', '2022-01-21 19:56:01'),
(43, '110.137.194.245', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '5e1d8fb2af70f77df9cb0a7f95d85c10', '2022-01-21 19:56:04'),
(44, '2001:448a:2082:6b60:ccc5:64c6:193a:47e7', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '82b7dc651fdd16a54b87c634cb3ecbd9', '2022-01-21 19:56:05'),
(45, '110.137.194.245', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '5e1d8fb2af70f77df9cb0a7f95d85c10', '2022-01-21 19:56:09'),
(46, '110.137.194.245', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '5e1d8fb2af70f77df9cb0a7f95d85c10', '2022-01-21 19:56:11'),
(47, '110.137.194.245', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '5e1d8fb2af70f77df9cb0a7f95d85c10', '2022-01-21 19:56:13'),
(48, '110.137.194.245', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '5e1d8fb2af70f77df9cb0a7f95d85c10', '2022-01-21 19:56:15'),
(49, '110.137.194.245', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '5e1d8fb2af70f77df9cb0a7f95d85c10', '2022-01-21 19:56:15'),
(50, '110.137.194.245', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', '5e1d8fb2af70f77df9cb0a7f95d85c10', '2022-01-21 19:56:16'),
(51, '180.244.165.220', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36 Edg/97.0.1072.62', '4ce3d1e0794c86fbda9cd4a945e59b0a', '2022-01-21 19:56:17'),
(52, '180.242.203.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36 Edg/97.0.1072.62', '07753deda9e40389f4feef16192dfbe0', '2022-01-21 19:57:49'),
(53, '101.128.125.132', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:96.0) Gecko/20100101 Firefox/96.0', 'd2874ab66179c4eab08e585cb50039d9', '2022-01-21 19:58:41'),
(54, '110.50.81.198', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', 'c2a5c6a37761ffb65b21e107b4fac2a0', '2022-01-21 19:59:48'),
(55, '110.137.194.245', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', 'af179850445d979b1fa4c6da22d2b374', '2022-01-21 20:00:03'),
(56, '110.50.81.203', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36', '311627b62fc4452dc62d4f4d41e8e627', '2022-01-21 20:01:09'),
(57, '103.10.66.79', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '8c42d088b58d601b0d4ba788c91e12b6', '2022-01-21 20:03:57'),
(58, '110.50.81.199', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', '062095bce2ad978813bf238c2304bd06', '2022-01-21 20:05:31'),
(59, '150.129.59.5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', '6c0658b6da04d2b65c3cd1c599b2226c', '2022-01-21 20:06:33'),
(60, '36.79.110.239', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', 'f0a4c07955f6b90eb76094fe33f24981', '2022-01-21 20:07:31'),
(61, '110.50.81.200', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', 'd2874ab66179c4eab08e585cb50039d9', '2022-01-21 20:09:47'),
(62, '118.98.26.6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36', 'f0a4c07955f6b90eb76094fe33f24981', '2022-01-21 20:14:26'),
(63, '202.43.172.4', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', '82b7dc651fdd16a54b87c634cb3ecbd9', '2022-01-21 20:18:34'),
(64, '114.4.4.137', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', '062095bce2ad978813bf238c2304bd06', '2022-01-21 20:21:22'),
(65, '110.50.81.199', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', '062095bce2ad978813bf238c2304bd06', '2022-01-21 20:27:02'),
(66, '113.197.108.37', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', '062095bce2ad978813bf238c2304bd06', '2022-01-21 20:27:57'),
(67, '114.4.4.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', '82b7dc651fdd16a54b87c634cb3ecbd9', '2022-01-21 20:31:05'),
(68, '114.4.4.198', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', '062095bce2ad978813bf238c2304bd06', '2022-01-21 20:38:16'),
(69, '118.98.26.6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', 'd2874ab66179c4eab08e585cb50039d9', '2022-01-21 20:39:32'),
(70, '150.129.59.5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', '5b5eca9b867f2678809624deb5b81593', '2022-01-21 20:50:40'),
(71, '175.45.186.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', 'f0a4c07955f6b90eb76094fe33f24981', '2022-01-21 20:54:45'),
(72, '110.50.81.202', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', '062095bce2ad978813bf238c2304bd06', '2022-01-21 21:13:26'),
(73, '175.45.186.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.75 Safari/537.36', '062095bce2ad978813bf238c2304bd06', '2022-01-21 21:17:33'),
(74, '114.4.4.198', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', '82b7dc651fdd16a54b87c634cb3ecbd9', '2022-01-21 21:24:06'),
(75, '118.98.26.6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', '8c42d088b58d601b0d4ba788c91e12b6', '2022-01-21 21:29:07'),
(76, '175.45.186.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', 'f0a4c07955f6b90eb76094fe33f24981', '2022-01-21 21:45:03'),
(77, '118.98.26.6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', '07753deda9e40389f4feef16192dfbe0', '2022-01-21 21:59:41'),
(78, '202.43.172.4', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', '062095bce2ad978813bf238c2304bd06', '2022-01-21 22:01:19'),
(79, '113.197.108.36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.75 Safari/537.36', '062095bce2ad978813bf238c2304bd06', '2022-01-21 22:09:55'),
(80, '45.121.219.6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', '5e1d8fb2af70f77df9cb0a7f95d85c10', '2022-01-21 22:29:18'),
(81, '110.50.81.199', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', 'e8639e45c83beb35d8e83a0eda6c8a42', '2022-01-21 22:51:02'),
(82, '103.26.211.4', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', '062095bce2ad978813bf238c2304bd06', '2022-01-21 23:01:57'),
(83, '114.4.4.198', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', 'f0a4c07955f6b90eb76094fe33f24981', '2022-01-21 23:03:54'),
(84, '113.197.108.36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36', '062095bce2ad978813bf238c2304bd06', '2022-01-21 23:18:29'),
(85, '114.4.4.133', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', '07753deda9e40389f4feef16192dfbe0', '2022-01-21 23:20:31'),
(86, '114.4.4.198', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', '062095bce2ad978813bf238c2304bd06', '2022-01-21 23:31:57'),
(87, '110.50.81.203', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', '062095bce2ad978813bf238c2304bd06', '2022-01-21 23:53:12'),
(88, '110.50.81.197', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', '8c42d088b58d601b0d4ba788c91e12b6', '2022-01-21 23:55:05'),
(89, '103.26.211.5', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', '5b5eca9b867f2678809624deb5b81593', '2022-01-22 00:29:41'),
(90, '110.50.81.196', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', 'a96471ade8b1d7ecc1e62f6028adda82', '2022-01-22 01:10:58'),
(91, '150.129.59.5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', '7a46727da2594730dc4aeef3549445c2', '2022-01-22 01:17:26'),
(92, '114.4.4.199', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', 'e8639e45c83beb35d8e83a0eda6c8a42', '2022-01-22 01:24:57'),
(93, '175.45.186.196', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36', '8b236a0d0f11a16374ec15db925a63c7', '2022-01-22 01:39:28'),
(94, '103.26.211.5', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', '8d216ab83b3f8d224597e2d78b955a8a', '2022-01-22 01:39:39'),
(95, '103.26.211.5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36', '062095bce2ad978813bf238c2304bd06', '2022-01-22 01:58:06'),
(96, '45.121.219.4', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', '7a46727da2594730dc4aeef3549445c2', '2022-01-22 02:01:27'),
(97, '114.4.4.136', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', '062095bce2ad978813bf238c2304bd06', '2022-01-22 02:13:22'),
(98, '45.121.219.7', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', '8b236a0d0f11a16374ec15db925a63c7', '2022-01-22 02:35:26'),
(99, '175.45.186.196', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.55 Safari/537.36', '8c42d088b58d601b0d4ba788c91e12b6', '2022-01-22 02:42:06'),
(100, '110.50.81.199', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36', '062095bce2ad978813bf238c2304bd06', '2022-01-22 02:57:05'),
(101, '114.4.4.196', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', '4ce3d1e0794c86fbda9cd4a945e59b0a', '2022-01-22 03:16:30'),
(102, '150.129.59.5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', '5e1d8fb2af70f77df9cb0a7f95d85c10', '2022-01-22 03:16:34'),
(103, '110.50.81.198', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', '062095bce2ad978813bf238c2304bd06', '2022-01-22 03:32:37'),
(104, '114.4.4.199', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', '8d216ab83b3f8d224597e2d78b955a8a', '2022-01-22 03:40:46'),
(105, '112.78.142.130', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.2 Safari/605.1.15', '5a70ccb2395720079eb1d9e8eff99cc3', '2022-01-22 14:10:43'),
(106, '114.4.4.135', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', '5a70ccb2395720079eb1d9e8eff99cc3', '2022-01-22 14:10:45'),
(107, '118.98.26.6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', '5a70ccb2395720079eb1d9e8eff99cc3', '2022-01-22 15:38:58'),
(108, '103.119.144.66', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', 'dbe9f2331e730f6f3bceb9172bfbf46d', '2022-01-23 13:47:30'),
(109, '114.4.4.200', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', 'dbe9f2331e730f6f3bceb9172bfbf46d', '2022-01-23 13:47:39'),
(110, '114.4.4.136', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', 'dbe9f2331e730f6f3bceb9172bfbf46d', '2022-01-23 13:47:39');

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups`
--

CREATE TABLE `auth_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_groups`
--

INSERT INTO `auth_groups` (`id`, `name`, `description`) VALUES
(1, 'Mahasiswa', ''),
(2, 'Dosen', ''),
(3, 'Karyawan', '');

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups_permissions`
--

CREATE TABLE `auth_groups_permissions` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups_users`
--

CREATE TABLE `auth_groups_users` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_groups_users`
--

INSERT INTO `auth_groups_users` (`group_id`, `user_id`) VALUES
(1, 8),
(1, 9),
(1, 10),
(1, 11),
(1, 12),
(1, 13),
(1, 14),
(1, 15),
(1, 16),
(1, 17),
(1, 20),
(1, 23),
(1, 25),
(1, 28),
(1, 29),
(1, 31),
(1, 33),
(1, 34),
(1, 36),
(1, 41),
(2, 40);

-- --------------------------------------------------------

--
-- Table structure for table `auth_logins`
--

CREATE TABLE `auth_logins` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `date` datetime NOT NULL,
  `success` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_logins`
--

INSERT INTO `auth_logins` (`id`, `ip_address`, `email`, `user_id`, `date`, `success`) VALUES
(1, '::1', 'iye.fredickson@gmail.com', 1, '2022-01-10 05:15:10', 1),
(2, '::1', 'iyefreed', NULL, '2022-01-10 08:31:50', 0),
(3, '::1', 'iye.fredickson@gmail.com', 1, '2022-01-10 08:32:04', 1),
(4, '::1', 'iye.fredickson@gmail.com', 1, '2022-01-18 01:37:20', 1),
(5, '::1', 'iye.fredickson@gmail.com', 1, '2022-01-18 07:51:51', 1),
(6, '::1', 'iye.fredickson@gmail.com', 1, '2022-01-18 20:20:03', 1),
(7, '::1', 'iye.fredickson@gmail.com', 1, '2022-01-19 03:02:54', 1),
(8, '::1', 'iye.fredickson@gmail.com', 1, '2022-01-19 09:48:28', 1),
(9, '::1', 'iye.fredickson@gmail.com', 1, '2022-01-20 07:05:00', 1),
(10, '::1', 'maliaars', 2, '2022-01-20 08:05:52', 0),
(11, '::1', 'maliaars', 2, '2022-01-20 08:10:08', 0),
(12, '::1', 'iye.fredickson@gmail.com', 1, '2022-01-20 08:20:43', 1),
(13, '::1', 'iye.fredickson@gmail.com', 1, '2022-01-20 08:32:21', 1),
(14, '::1', 'maliaars', 2, '2022-01-20 22:04:38', 0),
(15, '::1', 'maliaarismaya2@gmail.com', 2, '2022-01-20 22:06:28', 1),
(16, '2001:448a:2020:53f8:f560:dacf:4be3:346f', 'iye.fredickson@gmail.com', 1, '2022-01-20 22:45:41', 1),
(17, '2001:448a:2020:53f8:f560:dacf:4be3:346f', 'quraisy', 4, '2022-01-20 23:19:34', 0),
(18, '2001:448a:2020:53f8:f560:dacf:4be3:346f', 'quraisy', 4, '2022-01-20 23:25:58', 0),
(19, '2001:448a:2020:53f8:f560:dacf:4be3:346f', 'quraisy', 4, '2022-01-20 23:46:25', 0),
(20, '2001:448a:2020:53f8:f560:dacf:4be3:346f', 'muhammadquraisy16@gmail.com', 4, '2022-01-20 23:47:13', 1),
(21, '2001:448a:2020:53f8:f560:dacf:4be3:346f', 'iye.fredickson@gmail.com', 1, '2022-01-21 00:01:24', 1),
(22, '125.166.19.206', 'hunseyun94@gmail.com', 5, '2022-01-21 00:15:48', 1),
(23, '125.166.19.206', 'hunseyun94@gmail.com', 5, '2022-01-21 00:18:27', 1),
(24, '125.166.19.206', 'maliaarismaya2@gmail.com', NULL, '2022-01-21 00:20:47', 0),
(25, '125.166.19.206', 'maliaarismaya2@gmail.com', NULL, '2022-01-21 00:21:13', 0),
(26, '125.166.19.206', 'maliaars', NULL, '2022-01-21 00:21:49', 0),
(27, '125.166.19.206', 'maliaars', NULL, '2022-01-21 00:21:59', 0),
(28, '125.166.19.206', 'muhanadiqbal22@gmail.com', 6, '2022-01-21 00:26:53', 1),
(29, '125.166.19.206', 'hunseyun94@gmail.com', 5, '2022-01-21 00:34:31', 1),
(30, '125.166.19.206', 'muhanadiqbal22@gmail.com', 6, '2022-01-21 00:45:30', 1),
(31, '103.131.109.24', 'hunseyun94@gmail.com', 8, '2022-01-21 17:01:05', 1),
(32, '103.131.109.24', 'hunseyun94@gmail.com', 8, '2022-01-21 17:09:11', 1),
(33, '103.131.109.24', 'maliaarismaya2@gmail.com', 9, '2022-01-21 17:35:33', 1),
(34, '103.131.109.24', 'hunseyun94@gmail.com', 8, '2022-01-21 17:51:54', 1),
(35, '103.131.109.24', 'maliaarismaya2@gmail.com', 9, '2022-01-21 17:54:51', 1),
(36, '110.137.194.245', 'mirzaalyaf@gmail.com', NULL, '2022-01-21 19:48:51', 0),
(37, '180.242.203.101', 'mutiaralpg13', NULL, '2022-01-21 19:48:53', 0),
(38, '180.252.167.183', 'syarifahhani26', NULL, '2022-01-21 19:48:54', 0),
(39, '180.252.167.183', 'lilbluecandy@gmail.com', NULL, '2022-01-21 19:49:10', 0),
(40, '180.242.203.101', 'mutiaralpg13', NULL, '2022-01-21 19:49:13', 0),
(41, '180.243.9.234', 'Alma Pertiwi', 17, '2022-01-21 19:49:24', 0),
(42, '110.137.194.245', 'mirzaalyaf@gmail.com', 18, '2022-01-21 19:49:37', 0),
(43, '180.252.163.149', 'dhafiezlukman@gmail.com', 12, '2022-01-21 19:49:51', 0),
(44, '180.243.5.126', 'nabilawidyaz@gmail.com', NULL, '2022-01-21 19:49:59', 0),
(45, '36.70.157.85', 'aldi', 20, '2022-01-21 19:50:00', 0),
(46, '180.243.9.234', 'Alma Pertiwi', 17, '2022-01-21 19:50:04', 0),
(47, '180.252.167.183', 'dewinrh', NULL, '2022-01-21 19:50:10', 0),
(48, '110.137.194.245', 'muhammad.muhsin@if.uai.ac.id', 10, '2022-01-21 19:50:21', 0),
(49, '180.252.167.183', 'lilbluecandy@gmail.com', 21, '2022-01-21 19:50:22', 0),
(50, '180.252.167.183', 'dwinrhyt', 23, '2022-01-21 19:50:25', 0),
(51, '180.244.165.220', 'mmazzam4@gmail.com', 14, '2022-01-21 19:50:31', 0),
(52, '180.243.5.126', 'nabilawidy', 15, '2022-01-21 19:50:58', 0),
(53, '124.158.184.192', 'rizkamaharani1608@gmail.com', 16, '2022-01-21 19:50:59', 0),
(54, '124.158.184.192', 'rizkamaharani1608@gmail.com', 16, '2022-01-21 19:51:13', 1),
(55, '180.242.203.101', 'mutiaralpg13', 31, '2022-01-21 19:51:17', 0),
(56, '180.243.9.234', 'Alma Pertiwi', 17, '2022-01-21 19:51:20', 0),
(57, '36.70.157.85', 'rinaldi.mahendra@if.uai.ac.id', 20, '2022-01-21 19:51:24', 1),
(58, '180.252.163.149', 'dhafiezlukman@gmail.com', 12, '2022-01-21 19:51:30', 1),
(59, '180.243.9.234', 'Alma Pertiwi', 17, '2022-01-21 19:51:30', 0),
(60, '36.70.157.85', 'rinaldi.mahendra@if.uai.ac.id', 20, '2022-01-21 19:51:34', 1),
(61, '180.243.9.234', 'Alma Pertiwi', 17, '2022-01-21 19:51:35', 0),
(62, '125.161.161.246', 'mfadhilgva12@gmail.com', 19, '2022-01-21 19:51:40', 1),
(63, '180.243.9.234', 'Alma Pertiwi', 17, '2022-01-21 19:51:41', 0),
(64, '110.137.194.245', 'muhammad.muhsin@if.uai.ac.id', NULL, '2022-01-21 19:51:42', 0),
(65, '103.10.66.14', 'id.makmudin@gmail.com', 13, '2022-01-21 19:51:46', 1),
(66, '180.243.9.234', 'Alma Pertiwi', 17, '2022-01-21 19:51:51', 0),
(67, '180.244.165.220', 'mmazzam4@gmail.com', 14, '2022-01-21 19:51:55', 0),
(68, '180.243.9.234', 'Alma Pertiwi', 17, '2022-01-21 19:52:02', 0),
(69, '180.252.167.183', 'dewinurhayati2@gmail.com', 23, '2022-01-21 19:52:14', 1),
(70, '180.243.9.234', 'Alma Pertiwi', 17, '2022-01-21 19:52:15', 0),
(71, '180.243.9.234', 'Alma Pertiwi', 17, '2022-01-21 19:52:27', 0),
(72, '180.252.167.183', 'lilbluecandy@gmail.com', 21, '2022-01-21 19:52:29', 0),
(73, '180.243.5.126', 'nabilawa1904@gmail.com', 15, '2022-01-21 19:52:39', 1),
(74, '180.243.9.234', 'Alma Pertiwi', 17, '2022-01-21 19:53:03', 0),
(75, '110.137.194.245', 'muhammad.muhsin@if.uai.ac.id', 10, '2022-01-21 19:53:12', 0),
(76, '110.137.194.245', 'rahmanaulia0110@gmail.com', 28, '2022-01-21 19:53:13', 0),
(77, '36.79.110.239', 'fadhila', NULL, '2022-01-21 19:53:14', 0),
(78, '110.137.194.245', 'mirzaalyaf@gmail.com', 18, '2022-01-21 19:53:17', 0),
(79, '180.244.165.220', 'mmazzam4@gmail.com', 14, '2022-01-21 19:53:20', 0),
(80, '36.79.110.239', 'fadhilatulmutia@if.uai.ac.id', 33, '2022-01-21 19:53:23', 1),
(81, '180.243.9.234', 'Alma Pertiwi', 17, '2022-01-21 19:53:23', 0),
(82, '180.243.9.234', 'almapertiwi33@gmail.com', 17, '2022-01-21 19:53:33', 1),
(83, '110.137.194.245', 'muhammad.muhsin@if.uai.ac.id', 10, '2022-01-21 19:53:58', 0),
(84, '110.137.194.245', 'mirzaalyaf@gmail.com', 18, '2022-01-21 19:53:58', 0),
(85, '36.79.110.239', 'fadhila', NULL, '2022-01-21 19:54:15', 0),
(86, '110.137.194.245', 'mirzaalyaf@gmail.com', 18, '2022-01-21 19:54:18', 0),
(87, '36.79.110.239', 'fadhilatulmutia@if.uai.ac.id', 33, '2022-01-21 19:54:24', 1),
(88, '125.161.161.246', 'mfadhilgva12@gmail.com', 19, '2022-01-21 19:54:26', 1),
(89, '180.244.165.220', 'mmazzam4@gmail.com', 14, '2022-01-21 19:54:35', 0),
(90, '223.255.230.77', 'Anggunvario@gmail.com', 32, '2022-01-21 19:54:38', 0),
(91, '180.242.203.101', 'mutiaralpg13', 31, '2022-01-21 19:54:48', 0),
(92, '110.137.194.245', 'muhammad.muhsin@if.uai.ac.id', 10, '2022-01-21 19:54:49', 0),
(93, '180.244.165.220', 'mmazzam4@gmail.com', 14, '2022-01-21 19:54:54', 0),
(94, '110.137.194.245', 'rahmanaulia0110@gmail.com', 28, '2022-01-21 19:54:54', 0),
(95, '2001:448a:2082:6b60:ccc5:64c6:193a:47e7', 'saepulimam229@gmail.com', NULL, '2022-01-21 19:55:09', 0),
(96, '2001:448a:2061:8174:501a:60ea:4b8e:599c', 'rafi.annas9000@gmail.com', 34, '2022-01-21 19:55:10', 0),
(97, '180.244.165.220', 'mmazzam4@gmail.com', 14, '2022-01-21 19:55:19', 0),
(98, '180.242.203.101', 'mutiaralpg13', 31, '2022-01-21 19:55:24', 0),
(99, '223.255.230.77', 'Anggunvario@gmail.com', 32, '2022-01-21 19:55:31', 0),
(100, '2001:448a:2082:6b60:ccc5:64c6:193a:47e7', 'saepulimam229@gmail.com', NULL, '2022-01-21 19:55:35', 0),
(101, '110.137.194.245', 'mirzaalyaf@gmail.com', 18, '2022-01-21 19:56:02', 0),
(102, '2001:448a:2061:8174:501a:60ea:4b8e:599c', 'rafi.annas9000@gmail.com', 34, '2022-01-21 19:56:05', 1),
(103, '110.137.194.245', 'muhammad.muhsin@if.uai.ac.id', 10, '2022-01-21 19:56:09', 1),
(104, '110.137.194.245', 'mirzaalyaf@gmail.com', 18, '2022-01-21 19:56:20', 0),
(105, '2001:448a:2082:ef1e:d527:b495:1a43:99e9', 'muhammad.ikbar@if.uai.ac.id', 29, '2022-01-21 19:56:21', 1),
(106, '2001:448a:2082:6b60:ccc5:64c6:193a:47e7', 'saepulimam229@gmail.com', NULL, '2022-01-21 19:56:25', 0),
(107, '110.137.194.245', 'rahmanaulia0110@gmail.com', 28, '2022-01-21 19:56:26', 1),
(108, '180.244.165.220', 'mmazzam4@gmail.com', 14, '2022-01-21 19:56:26', 1),
(109, '180.242.203.101', 'mutiaralpg13', 31, '2022-01-21 19:56:27', 0),
(110, '101.128.125.132', 'ciptadaffa', NULL, '2022-01-21 19:56:46', 0),
(111, '110.137.194.245', 'mirzaalyaf@gmail.com', 18, '2022-01-21 19:56:57', 0),
(112, '180.242.203.101', 'mutiaralpg13', 31, '2022-01-21 19:57:06', 0),
(113, '180.242.203.101', 'mutiaralpg13', 31, '2022-01-21 19:57:27', 0),
(114, '110.137.194.245', 'mirzaalyaf@gmail.com', 18, '2022-01-21 19:57:34', 0),
(115, '180.242.203.101', 'mutiaralpg13', 31, '2022-01-21 19:57:43', 0),
(116, '180.242.203.101', 'mutiara.lutfiah@if.uai.ac.id', 31, '2022-01-21 19:57:53', 1),
(117, '2001:448a:2082:6b60:ccc5:64c6:193a:47e7', 'saepulimam229@gmail.com', NULL, '2022-01-21 19:57:53', 0),
(118, '110.137.194.245', 'mirzaalyaf@gmail.com', 18, '2022-01-21 19:58:04', 0),
(119, '2001:448a:2082:6b60:ccc5:64c6:193a:47e7', 'saepulimam229@gmail.com', 11, '2022-01-21 19:58:14', 1),
(120, '101.128.125.132', 'ciptadaffa', NULL, '2022-01-21 19:58:49', 0),
(121, '110.137.194.245', 'rahmanaulia0110@gmail.com', 28, '2022-01-21 19:58:51', 1),
(122, '101.128.125.132', 'ciptadaffaaa@gmail.com', 36, '2022-01-21 19:58:59', 1),
(123, '180.243.5.102', 'haeraniani3@gmail.com', 22, '2022-01-21 19:59:38', 0),
(124, '110.137.194.245', 'mirzaalyaf@gmail.com', 18, '2022-01-21 19:59:43', 0),
(125, '110.137.194.245', 'rahmanaulia0110@gmail.com', 28, '2022-01-21 19:59:45', 1),
(126, '110.137.194.245', 'mirzaalyaf@gmail.com', 18, '2022-01-21 20:00:11', 1),
(127, '110.137.194.245', 'mirzaalyaf@gmail.com', 18, '2022-01-21 20:00:32', 1),
(128, '125.161.161.246', 'mfadhilgva12@gmail.com', 19, '2022-01-21 20:01:10', 1),
(129, '36.79.110.239', 'fadhilatulmutia@if.uai.ac.id', NULL, '2022-01-21 20:02:13', 0),
(130, '101.128.125.132', 'ciptadaffaaa@gmail.com', 36, '2022-01-21 20:02:31', 1),
(131, '103.10.66.79', 'Calistaa', 25, '2022-01-21 20:02:42', 0),
(132, '180.252.174.242', 'lilbluecandy@gmail.com', 21, '2022-01-21 20:02:53', 0),
(133, '125.161.161.246', 'mfadhilgva12@gmail.com', 19, '2022-01-21 20:03:45', 1),
(134, '103.10.66.79', 'calistaaulia88@gmail.com', 25, '2022-01-21 20:04:00', 1),
(135, '180.252.174.242', 'lilbluecandy@gmail.com', 21, '2022-01-21 20:04:30', 0),
(136, '110.137.194.245', 'mirzaalyaf@gmail.com', 18, '2022-01-21 20:04:45', 1),
(137, '36.79.110.239', 'fadhilatulmutia@if.uai.ac.id', NULL, '2022-01-21 20:04:54', 0),
(138, '36.79.110.239', 'fadhilatulmutia@if.uai.ac.id', NULL, '2022-01-21 20:05:01', 0),
(139, '36.79.110.239', 'fadhilatulmutia@if.uai.ac.id', NULL, '2022-01-21 20:05:21', 0),
(140, '180.243.5.102', 'haeraniani3@gmail.com', 22, '2022-01-21 20:05:26', 0),
(141, '36.79.110.239', 'fadhilatulmutia@if.uai.ac.id', NULL, '2022-01-21 20:05:31', 0),
(142, '110.137.193.190', '0102518023', 38, '2022-01-21 20:06:46', 0),
(143, '110.137.193.190', 'rajabannisa.airo@if.uai.ac.id', 38, '2022-01-21 20:07:03', 0),
(144, '36.79.110.239', 'fadhilatulmutia@if.uai.ac.id', NULL, '2022-01-21 20:07:40', 0),
(145, '36.79.110.239', 'fadhilatulmutia@if.uai.ac.id', NULL, '2022-01-21 20:07:48', 0),
(146, '110.137.194.245', 'mirzaalyaf@gmail.com', 18, '2022-01-21 20:07:57', 1),
(147, '110.137.194.245', 'mirzaalyaf@gmail.com', 18, '2022-01-21 20:08:15', 1),
(148, '110.137.194.245', 'mirzaalyaf@gmail.com', 18, '2022-01-21 20:08:29', 1),
(149, '180.252.174.242', 'lilbluecandy@gmail.com', 21, '2022-01-21 20:08:35', 0),
(150, '180.252.174.242', 'lilbluecandy@gmail.com', 21, '2022-01-21 20:09:13', 0),
(151, '110.137.193.190', '0102518023', 38, '2022-01-21 20:10:54', 0),
(152, '110.137.193.190', '0102518023', NULL, '2022-01-21 20:11:02', 0),
(153, '120.188.93.99', 'muhammadnazritantowi@if.uai.ac.id', NULL, '2022-01-21 20:11:49', 0),
(154, '36.79.110.239', 'fadhilatulmutia@if.uai.ac.id', 33, '2022-01-21 20:12:14', 1),
(155, '120.188.93.99', 'muhammadnazritantowi@if.uai.ac.id', 39, '2022-01-21 20:12:46', 0),
(156, '120.188.93.99', 'muhammadnazritantowi@if.uai.ac.id', 39, '2022-01-21 20:14:20', 0),
(157, '120.188.93.99', 'muhammadnazritantowi@if.uai.ac.id', 39, '2022-01-21 20:15:17', 0),
(158, '120.188.93.99', 'muhammadnazritantowi@if.uai.ac.id', 39, '2022-01-21 20:15:53', 0),
(159, '110.137.194.245', 'rahmanaulia0110@gmail.com', 28, '2022-01-21 20:27:31', 1),
(160, '180.252.174.242', 'dewinurhayati2@gmail.com', 23, '2022-01-21 20:31:37', 1),
(161, '112.78.142.130', 'denny@if.uai.ac.id', 40, '2022-01-22 14:10:46', 1),
(162, '158.140.177.75', 'maliaarismaya2@gmail.com', 9, '2022-01-23 13:11:15', 1),
(163, '103.119.144.66', 'iyefreed', NULL, '2022-01-23 13:46:45', 0),
(164, '103.119.144.66', 'iye.fredickson@gmail.com', 41, '2022-01-23 13:47:37', 1),
(165, '158.140.177.75', 'maliaarismaya2@gmail.com', 9, '2022-01-23 15:36:02', 1),
(166, '::1', 'iye.fredickson@gmail.com', 41, '2022-06-19 01:10:21', 1);

-- --------------------------------------------------------

--
-- Table structure for table `auth_permissions`
--

CREATE TABLE `auth_permissions` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_reset_attempts`
--

CREATE TABLE `auth_reset_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_reset_attempts`
--

INSERT INTO `auth_reset_attempts` (`id`, `email`, `ip_address`, `user_agent`, `token`, `created_at`) VALUES
(1, 'iye.fredickson@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'ab3bcb91223d186cf84c9736f063bae3', '2022-01-20 08:32:09');

-- --------------------------------------------------------

--
-- Table structure for table `auth_tokens`
--

CREATE TABLE `auth_tokens` (
  `id` int(11) UNSIGNED NOT NULL,
  `selector` varchar(255) NOT NULL,
  `hashedValidator` varchar(255) NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `expires` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_users_permissions`
--

CREATE TABLE `auth_users_permissions` (
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `id` int(11) UNSIGNED NOT NULL,
  `from_id` int(11) UNSIGNED NOT NULL,
  `to_id` int(11) UNSIGNED NOT NULL,
  `document_title` varchar(100) DEFAULT NULL,
  `document_filename` varchar(100) NOT NULL,
  `signed` tinyint(1) NOT NULL,
  `qrcode_hash` varchar(2048) DEFAULT NULL,
  `rsa_encrypt` varchar(2048) DEFAULT NULL,
  `signature` varchar(2048) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `documents`
--

INSERT INTO `documents` (`id`, `from_id`, `to_id`, `document_title`, `document_filename`, `signed`, `qrcode_hash`, `rsa_encrypt`, `signature`, `created_at`, `updated_at`) VALUES
(17, 8, 8, 'Surat Edaran', '1642759583_27dafce4942c95524d5e.pdf', 0, NULL, NULL, NULL, '2022-01-21 17:06:23', '2022-01-21 17:06:23'),
(18, 8, 8, 'Surat Keterangan', '1642759779_5fa97c53f1ffdfa78fc7.pdf', 1, 'ff287c1a775127788c08f7d904429c93', '8d8b25e1c5763bd78a9d22b4cd3836acaa9ff3fce8872241aab6a21ca6c81b7a03e3d4fd4e94c9add1182de6f52df4ade2c22c249364b2bab29a7e3dde838cd8', 'I0O74m2ZAjCPvZrA7lAXKYEnfxhtunrNf7CbDyIoFsAjHobSE/cP9OO2yoX1rs4CUAo6NxSjV6tourTY7aGmqjytPI0pxtmO/Vv0IqWMyEECnz0lu41362ZVmNOcVvnJG/zV3Qd9+XtVk/YtCceBAjZGFOd6JpGfEZetmLKoDJHp0f8xNzqThuEG9ZnuxPuvBY2hSU+C6+X/oSYEWcktRGJ6DmRnV/PZ56HyjyGKVOCkmLUOBejB8bNPRkKDNXcO76J9EDzTIl3A2Llh4ETb0M/UQImwA+/bqeYMHXTDHTiHQcuQy4cKeeKSw9IRxtnqrsTIQtDR/dSpkMoIqtDjOA==', '2022-01-21 17:09:39', '2022-01-21 17:09:47'),
(19, 8, 8, 'Surat Persetujuan', '1642759844_b5b392fbf5b9cba0f60d.pdf', 1, 'c797eb83c4f612af2611bb720adf58f1', 'b2338fd49a00e9347eb728b816ac78c6d9574e845384c26d1cecebd40b5afbdd98186ef9af431023ecb583e0ff4a8d1e51d66466d4df2e89457ba738bbf31a69', 'RoOC/E+NdLxFCIGv6jT1pFo0OpNkVXaDmoitvyIxhJ91ZoSl3MvIDZ+bSM+Xwr/euY2V600Tqo53so78egFzL3RoSMBXLvv6jCDxYbsC0o4n0zY+UJfkbIsLcY1UFmeC+iFqDWz2f3gQQw3hGB3yz4yDvmRvTTwceifzx/97dQCiyV+OqX3WTKAkihuSup7cF+WdeiTFlqK6gJWM6uGTId9lihrJN/M2lJlmlYJ6ZzQ1T0ytAGUOD7KGRD+kj0H8VYO8hK/lX89F+v3vAtjTy0aPdBfB5Nhkduq/NOLxif/Tvjwx/BHXU2eQtd70q5FJogc73FpTm2yl483akcKZkw==', '2022-01-21 17:10:44', '2022-01-21 17:12:38'),
(20, 8, 8, 'Surat Keputusan', '1642760495_bb76f3aba0a16c253fbe.pdf', 1, 'c6479d2934b6cf77f43847be52f19fa7', '7940285af6934bfe608a04b4873ed09fce88b91bae18759c2b4579fa12571b6bfbc8c41bbd731a653a7365d24d6ec1dc11486e28ffbd7ac26f46e22747e87222', 'k1LxE2TPLt+AZEkx7aCjtMFczZE24SD9gh0VqGs9GvFbwbfI9dUnjdwqH85Kz4JPN8iE/+kogEx3IbfJNSltOwAOhkwh8hzxhpW7ueJ1QS0rJFvCRg3a4dIjPGZbIPA+QTYNfrJz46zld0Oo7wgjOatfK/qcWYVdgL7iM6wkUvswr9Rx2/6gWIVn1/M5GkToghr+BbHdIb+6FDJAGh9kozgki8XvjI0iOuaZ4cS/XYnofpyHks+mhzTK6oisLP7uMQ3/yPoZTktqokv4Z1JCTTTRpQk/8NaWgbnizInD3xqG8rqtlGj5483YYhPBo8D5bi9NLShVOxFyzetWSVm8Hg==', '2022-01-21 17:21:35', '2022-01-21 17:22:06'),
(21, 8, 8, 'Surat Sakit', '1642760556_f0ddd88db94278a603e9.pdf', 1, '4777e203d8f4d4799721a0b659d645d9', '0deee96a9da9d38692d23960706e08d95081385a20f3fa7311d34954dc18b50490b15ba040847fc7bb2f5f1a0de3aebb5a6c1a590b46e8c5190959c07243bf09', 'jrTAWkxq6n88VUj/KY1hRWyTmNlqvMzi1lV0AJ4rRyIK/UdjMCQa7bzlg9piVeqjUELiU4DIHdwO5ESfRYzd8IUuuUhwmTTHaXBtk4V4J8U8Z7H3nFUT+Vbq/PcI/bGvhYkcWYT844Uju6tlesV38rxeTYbrvocQwDr0639POyipBHFnm3oIuCU8FGdFygMJEr4W4CpgeB/vFZ7X66luuHNrcTt4yH+T0rDSyCJcsHQMBu8SnBfY0UBgKd1pWa3YDgIM6wgmXLnRKr6bUs2DF4rfrqCMG3Or0oVNtUbp8OpGfQ8FLxlTExvqadhF3coimUeLK+ixrGo9h9GWAnybnQ==', '2022-01-21 17:22:36', '2022-01-21 17:22:49'),
(23, 9, 8, 'Surat', '1642761862_9c108c79a0128574e4c5.pdf', 1, '69b3b43a8b49bb75cf48aea4abdec2bd', '1569380c6581687f2b736640c663adfcb7daa0749272b07bb3112b1bda46c565866cd2d425f90faca3b568587e3b2e9ccaf203172bc07d20bdd6d23fdb48ed71', 'LupcDQlmf9SZV2rpUueoNL554atwtfLOcC5R/S374+j5l4i9kCHsZOee788TWZwvuGpfmsEoqxWA607sAIdMWubQFokBJLtfYT82HGyGdFKt8tOPXzAADh0ZEsummlRtpmuLG4ZypW2ajUrOl8yK0OjYF/Lk5Vig646Y2H3+OL2sVA/cIOFhw304DjHmBi7Pp4jIpRNCZ2reNBRJzbxP0q37Hi10P1xX35j7CKXx9X4hXTJQuW/FDCtwy+dhSZPsmZG6XbQYrQYwMtPL9jwGVvTEfOqnxEq0eZuoc+DkY2AnDMexq28+PysvDb03/O/Rw4TSPPdMuBpvTawhi9CGDA==', '2022-01-21 17:44:22', '2022-01-21 17:53:18'),
(24, 9, 8, 'Cover Letter', '1642762250_a11ec2699a2d360a1b43.pdf', 2, NULL, NULL, NULL, '2022-01-21 17:50:50', '2022-01-21 17:54:16'),
(26, 13, 13, 'Proposal Skripsi', '1642769860_71eb84cea94a4cf6ee79.pdf', 0, NULL, NULL, NULL, '2022-01-21 19:57:40', '2022-01-21 19:57:40'),
(30, 13, 13, 'Proposal Skripsi', '1642770461_f55954f2e7c3ecb40d36.png', 0, NULL, NULL, NULL, '2022-01-21 20:07:41', '2022-01-21 20:07:41'),
(31, 12, 12, 'Test', '1642770469_199711779f1096e38cac.pdf', 0, NULL, NULL, NULL, '2022-01-21 20:07:49', '2022-01-21 20:07:49'),
(32, 29, 29, 'Contoh', '1642770469_7a5d2cf7206ee733d399.pdf', 0, NULL, NULL, NULL, '2022-01-21 20:07:49', '2022-01-21 20:07:49'),
(36, 14, 14, 'Soal', '1642770526_5afd3c7dfa05024a3a80.pdf', 0, NULL, NULL, NULL, '2022-01-21 20:08:46', '2022-01-21 20:08:46'),
(37, 11, 11, 'Makalah', '1642770562_b9d5d1128990c754970a.pdf', 0, NULL, NULL, NULL, '2022-01-21 20:09:22', '2022-01-21 20:09:22'),
(38, 13, 13, 'Proposal Skripsi', '1642770587_43b90c6cf08de6be2328.png', 0, NULL, NULL, NULL, '2022-01-21 20:09:47', '2022-01-21 20:09:47'),
(39, 12, 12, 'Test', '1642770588_cdbb0762f0aebc7c8e6e.pdf', 0, NULL, NULL, NULL, '2022-01-21 20:09:48', '2022-01-21 20:09:48'),
(40, 12, 12, 'Test', '1642770593_6c8267188376febdb7f4.pdf', 0, NULL, NULL, NULL, '2022-01-21 20:09:53', '2022-01-21 20:09:53'),
(41, 34, 34, 'tes apps', '1642770613_10423f84fc3087834374.pdf', 1, '2422607aeb553c1a8ca76aa098ac7d1f', 'd8daf6c4667209a3b5dd9d12cd72470f926793f8aece7dd84fd9ce0924bddbaa88b7e8a6c86b702d8b7ff4a02e71b6a778140b9b1740ab37d2da13a7cdd955ca', 'TNL9caU27slBL1ZnPrG0x8MdY55VQpNIVUGV+3OaNZvVvEr5krRFmASclAO3cW1XkqbtaHRnxq2QeEf5brAFgEwYpdCTXGTvWiWryW68i+4ao+dqVUuK7Gg+ztlG5O3Py53MBIP6+fR6FDsaMLGmcREHXE+Np6jhEXyWA8g8v+lHoji6Nnm7Dyv4WZ5/D6dzDAGINXPDemt+v0csvdF0gRKnwROEMpouz68XMv2gYd1qSnNyPjYzn1kpBpp2R2vGcdzti/B5y6tGfpgaGnA0O7k+tqV2q/Es1/ukvg/O8JtLRVn9Isw8h+T++uU5toET/urKT9FqZmdEF4dFmiLm7w==', '2022-01-21 20:10:13', '2022-01-21 20:10:26'),
(42, 15, 15, 'Testing System NWA', '1642770621_018db06c2ce257d0ff3f.pdf', 1, '11973d6de0e3d54d8a24158157be506c', '631bf96cdbf48952ffa3ec8a12982092489dda88c78cc34a942d65c7d6d98351b52b6d35aa01c9068575b58f96ba4786882847bcba86f8fac7b28ae040cbdaf4', 'bZfkOUjY45EXRsIj0Tp5JauyJApavzP1GFjn5VFB8//rXRtXJbZVVnWm8J9QQEYspVokfFMUwKV9bnHEKgPYFbTWWHBwzyGoCYjhzgmwZ7H9rLz3xZfE5bJQl0JI35EDq9e4IYJRFqTq9B8e5sB8HZ3mBrN6J9yCjKQGKgotHigii9zH/t5T8ccUWOljDZyDYEmEiFLNTxsOhpwZkmvrJkUW/pcF2Y+xPvb84TuiUeJeZDO2r6hIykluCsswwSW3elgGOVD95YF6Oq3nUeK1Nxh+uJoNcEYJCRu+9syFMS1XngMNv+HJ5FiK6cMC3l50qxJS564n7Jf5KPQlMmAgiw==', '2022-01-21 20:10:21', '2022-01-21 20:37:34'),
(44, 13, 13, 'Test tanpa upload file', '1642770664_688c607d275ea98cd5f4.pdf', 1, 'c53dd269f678eaf9f7779d8776a8ab06', '74f47c6dd402ba14a548e63bd66e0a163d9809a07ea7c57c3f895a7bb80792ece5be582a17185628d326d57f3bc4d8332c84cc571d388f148bc4e782809cb812', 'LoUhveiTHaUbDQ1b0P9JCJcwWfErr//CESeYoJ9Trh4tdMjPZww2hrdnfCt7F9hMFCUaeQL8+3Hd+acvOC3jBo7L66bbQae7gDl3/l9AjH+hfFHkhxxx+3GMGvshfUJJ61+AfbNA3+VPn5aCgTJYdmxXYzfblHRarsm1mMELqV6dJU6nuWohznnYdGJFj1ciCO5f0Hyqk57PnBnf2Nekpr8PM9cWHvEDZWCPSpKRpS8yxvIE9QNZb7A9dBtneNB7ZUeHhAt5I/ks2TMwRO3tVqtBSSzFBfd1YRvmoujAlR/LdyVBFJRkOCl7dWYoG/Yd+mm+gVOt1hm3EjLbTEJI+A==', '2022-01-21 20:11:04', '2022-01-21 20:11:34'),
(50, 14, 14, 'Soal 2', '1642770749_609af293d8a3b65c31dd.pdf', 0, NULL, NULL, NULL, '2022-01-21 20:12:29', '2022-01-21 20:12:29'),
(51, 34, 34, 'tesss 3', '1642770762_8ae6378c2156e9807b38.pdf', 1, '521bee413fcc0c1c02daceadf2b92f75', 'b818d8c90964371f4059ffa667a70c2fa8b917ec27821729f15159b31b14acd6221adb45d50b70000112f43966e9f6daf2c6fc2e41270ce4f8caca0224800f23', 'YjVadNwQgrKAZVTzZNPx12R+1mNxaM+uBwwoAHwWNAcXWRlTTJn+yUwJ6tbjLby6od7rtJa8xBk23v3Whk5SoiXIE47l9jnBeOi9EGf4iYeT4DknRqHIZ8x87LSwEKo8ERX6SgtVT+yBTwJq4p9WlAycCaxT7e2Moib687QatxwUvjcivkYSsnNob1c/sF6nSCAzfiDUlCyq1auWd5tupoEvQU5MGBmnOFl2E1DbemJfsDAglsJwzRKGTAxd6MFgaD/wLxaXttMq2QzV6TJyUyRa0IfoPOoOI3FGd1BCGLHLwI2yJgw3qcSe/9cTFhxP4wbC6gFUwzruvuOSdFm1TQ==', '2022-01-21 20:12:42', '2022-01-21 20:14:25'),
(52, 23, 23, 'surat undangan', '1642770772_f7703a23b190616d2ba6.pdf', 1, '83b757eec6204cadd75ddc272324a41a', 'fb006db8fe60d27c1539b6d6acc882df0573307f84a09b2e00c27c4289d7573e6237ad2e24aeadbae94a7836e43cb854be4e91457844e565716e3dc060eeea55', 'DWJAi2WeALjpBapRDydqclR9zEF/ldDtUsEcEBtXx6w8wwdxRAf6UE9Z8fZEnFfVWc3IKLSj+W6XAEGFAR8N4ioTHIWN/OMGFLdWPiyeH2pAD9OPNg0lONsdCe1bSgD9WSvspmeA4UmaI4KKXl8SFhUG+BDzpZu4j1V+In8b7MrqV60ZBJJoij3HFu0A0H5iOHaRUQIna3ysDBMgqsKkkdyTB0GK6bUWQRZbkxDfe1zJeGqqTwqF5wGnOUsEBKqsT+jCuEi69XvaXdOPjllWWzuPUtZ1oxTFAOCwlm9YPR34v4T+EiWITbDtjQsJ03VZJwbTDQfbCb0PIq49imPtag==', '2022-01-21 20:12:52', '2022-01-21 20:14:00'),
(53, 12, 12, 'Test', '1642770781_9a31b5fc86a676f941d8.pdf', 0, NULL, NULL, NULL, '2022-01-21 20:13:01', '2022-01-21 20:13:01'),
(55, 17, 17, 'tes', '1642770793_a00fd67a905d74a3d3b9.pdf', 0, NULL, NULL, NULL, '2022-01-21 20:13:13', '2022-01-21 20:13:13'),
(56, 25, 25, 'testing aplikasi', '1642770794_bcb901f8813645935a2b.pdf', 0, NULL, NULL, NULL, '2022-01-21 20:13:14', '2022-01-21 20:13:14'),
(57, 20, 20, 'soal', '1642770804_77f7b44fe3329d92c539.pdf', 0, NULL, NULL, NULL, '2022-01-21 20:13:24', '2022-01-21 20:13:24'),
(61, 36, 36, 'coba 3', '1642770899_b91461fb90b832120e7e.pdf', 1, '0706e7c9df1c4a91ffd337e0aacffe6f', '1469b7a26ab319fa9603107e347d34133845cd8f470552f34845b59d946d9ee3e2625cd245d695844f354f99fb28cb33a3435f9a459a6fd680d3ddddab71637a', 'nhsahimHSz4iy+qQascNylvW8uWucKZHXqN8+oTofJ5oh7gHFlp+xtB0biCMqaxN6tt2ghIRL9xDBU/0Na5v8gJ7447vWTvDbPd53dvF5IaA7qu79RemQKPnatiOHZ22NjMbjGfuNA3bKtrFN5bxM8eWy0/C/94bePZ6uxrlO0ltkYmPeH/Oaw7k/6UoOC2gjJB4wO5ZGYb5BCsX2jpTG7PuxkZKilXd/kAGXL9OPYvlb9J1BD3FrLmMIgs0XjRcq4Fm+dljlR43ma/dPlRGjf/BC9ZVZB2EMM3FQViqajG91odvMQvTWwKm4e+fIy6q81O2DPLJBaSV5KTQNqVfRw==', '2022-01-21 20:14:59', '2022-01-21 20:15:10'),
(62, 11, 11, 'Makalah', '1642770915_95bc7c89468d8a35977b.pdf', 0, NULL, NULL, NULL, '2022-01-21 20:15:15', '2022-01-21 20:15:15'),
(65, 36, 36, 'tanda tangan', '1642771064_123c4b775af9a10aec62.pdf', 1, '04a7a5afd74894338f736a59ad5d0962', '728353d7a99b9809121dc43080e4113a038b5afa2477818be9a6ba83c37e81ea448476b3a94b6e66e2e10871193a55ed28e3cc3b8e5b398ea70370493abbdaac', 'CEy48xzExxkBiCz5UbMBuMun2pMW75VzBYnxcqqI5alEnZYvDMnwlppnifqVZB607ZIYse2HpwvubKohTa7gpYod7YHRDfYaheJDaiWoWFWml1WufFHBcK8DXhLl1RCuZfGmiY9bfOh+8cGJHTEoTo88aHuRJg9TL4IYJauXPBNvkuCdh0Sg5wNgZ3Adg2cNFdsGZQLCn0CUFD1ml6+AP9frMHrSopru4sxRj5HW/QDlU8nXUhzV1H8hVxqDVeLb63GCfRAx+emi0ybkltcJ/x1azLsTWpW99aPC0/RXJcdnEUweK5VmiTgh/kfY4uKDNzPRByNXq9mRw1iPhGBPxQ==', '2022-01-21 20:17:44', '2022-01-21 20:17:55'),
(66, 31, 31, 'cue card', '1642771090_f30f66481cbd47415df6.pdf', 1, 'ac91026454721bc8d1bf48e7e82e4401', '4165e209529ecba5e07ec39b29f198468f1529ecf439138439a997f2fb0b37f0ad867d39785779a57920488d248954d5891b64d2364bc0bfcd5e796dc2f23d33', 'mHv8oG7JX8LPqDzrzYXoYEJdB1Jk44cXAn+4tz3O1GdmEuKGQ5PWrKYyFWOSY0XJs3YALquwSoZqXD9Li+Lb/SgO2W7azfn0tuEnkCDviznR7wLcb8Nmf2Gue4x2XUdpPvkFiw4rVdPjdEQ4fenqGZ/qObGg+/blV2g7A1O7VgHkczOPFCZIX6yAD/U/F7f1eJAshZa8OAJzggvvof+yUERLk0O2uTYZS3E6FWaAGETrWf2gio8gDry7QjFtiADJ0bNvreA2IrYbWV2+X+BE3WYNAXT+9yzjKDNAEt4GFNBJfackwarkFGzPF5MBI5SIbvDMiMGFFwG4gnP8h+tRAw==', '2022-01-21 20:18:10', '2022-01-21 20:19:39'),
(67, 34, 13, 'pihak 3', '1642771095_ce390be8fc65c5bb8533.pdf', 1, '32509d36cb49f84fe86989f18108a451', 'fbac03cdb5b9fe6c8da4bb9b42e5a2d60bcc14bf17a197ba7966e20bacab02ef854c2dd41990682acd0fcffe009f77309e100ac278d388f16e1f09493cb8b895', 'c/JOuMeG7ApfNvCP+kSybIxF4a86PYSQZtj2sgVIJ0AN5gK78GUuARwWNXCl3DDfChym+wnKiWjbAkXnEiHCgc2EQ8qSOWpoXxTVMKYgzoLxkC/CsiHzrYTUBZAz3wl9e9ZPr4i8i4i1O/FTpWB69s+ELb+1hOQLCloJn21AWjF47CkJRt1szytv3CqFDcEDa2axWmE29S3HjUNJ+7ChXRHQMidJOxffMqioZrfTZNT1kONDPE4Ok75NiHVv5BkbEi3Cx/CgGk0IJyCXzwFTIgGDHckwpArkvKj6MY/NoXfuGVdWU9I5XapC2spSuA7+IUKt9A28eSjm5zzDcjc84A==', '2022-01-21 20:18:15', '2022-01-21 20:18:49'),
(68, 25, 25, 'testing aplikasi', '1642771156_c06765cd7587a4e2b43d.pdf', 0, NULL, NULL, NULL, '2022-01-21 20:19:16', '2022-01-21 20:19:16'),
(69, 34, 13, 'pihak 3 tes', '1642771190_7d17484262a41378237c.pdf', 2, NULL, NULL, NULL, '2022-01-21 20:19:50', '2022-01-21 20:20:03'),
(71, 36, 34, 'logo pekan raya', '1642771339_80c9806973fd1da49699.pdf', 1, '8dfa39a955d05f10276e2b0eeb1eba77', '75d751e45d4a15476d0fefd40809fb8c661cc095f3fe350b78c7cf2d29cbdcb154d27bf0479e8d85040e0e4446e35b7c072dc70650e1713102df1f25dc2f711e', 'bGD9mRB19UZGwLlmjni82dn1x0D0t+Umi1TvCRoyIGoooxd7T4X3RowJilbI6wid5ejnSvQ0XrhfsOoGv0QoEp8kFHL5Q12D8TUDn32U9NCm9tWTJhnolsBCBQUbkDWN3A9qZQi+EOjQ+4dDJu+/rUB6rtYUxesXndspC/kFF/FsO0Rbu5CNtJAyyOmRxyb4Yufkxl4ZEXTWoDwcn0MW0PrYH8xYRMoBY7r8artskXcoapi6TPBMn3RzzCon82LOPu83mdnf+A92BfDkETMcrEZaqANY/QvTFCLDUA5tE+UsHamckC5LbxTHv8iqCFgHAAKy6hawst7U7nigmCRJHQ==', '2022-01-21 20:22:19', '2022-01-21 20:28:24'),
(72, 29, 29, 'doc_ttd', '1642771410_8f13f0d9bead92085ac3.pdf', 0, NULL, NULL, NULL, '2022-01-21 20:23:30', '2022-01-21 20:23:30'),
(73, 16, 16, 'gaada judul', '1642771410_82bc6496b55ac71ef6be.pdf', 1, '2b4f817c7e9bf1249f8d5bfe3e9aa9d5', '01fc4e3a947f18849f6284d601e8ba847fb5d92aeabad174b9ddc333cf100f573fd17376e5b1bcd0f10c3426bbc900febf3c9dc6348228bf594cd294be72cbd1', 'NtrMiWM+MPIw86Q9ESZ/gB5E8zgMc35wyeOM/iQmG4ooQZAX2ZAAdCHuxwtphWKxl+CQb7IiZ8hijaV0lC5/i79g30TKEw/82scvhQ8wyVrh0/X07Vz29p+kfE1k8D48TLKHzjyZhP2U55eXxTDzKIeNfrakoDmtFIzY0OgRyakHFjf77jKXWMwhGJcVUpx1G1OXlOwLxe4+6mbwZvAcWNGx45hNtxEIK3TTn3BxCadVYqPYH+M0sQkRrcC0ZFPzjr2041AJ1iVRm94uEgKGCB32bcBW8m9ssASX30lqUHx86w/PIJY4AR1fIV7XS4bI7Dk/x7IvTNPOwNy4KB9rcQ==', '2022-01-21 20:23:30', '2022-01-21 20:24:36'),
(74, 12, 12, 'Test', '1642771453_648646049e451f483678.pdf', 0, NULL, NULL, NULL, '2022-01-21 20:24:13', '2022-01-21 20:24:13'),
(76, 23, 25, 'surat undangan', '1642771992_1c9098375f32fbfddc87.pdf', 0, NULL, NULL, NULL, '2022-01-21 20:33:12', '2022-01-21 20:33:12'),
(77, 10, 28, 'Bayesian', '1642772077_defc9aef3968676acd67.pdf', 2, NULL, NULL, NULL, '2022-01-21 20:34:37', '2022-01-21 20:41:45'),
(78, 40, 40, 'Coba', '1642835577_ce6176b935a0aab026f4.pdf', 0, NULL, NULL, NULL, '2022-01-22 14:12:57', '2022-01-22 14:12:57'),
(80, 9, 9, 'Malia', '1642919061_87befb68920ae4736c8b.pdf', 1, '6bc136aa1ac3c6ae650d1aca4daf3d17', '7b76f84d415889e20b15e2f5d9c1b04ce75b8b744664ea89786c75ae5df61702161cad646280ef803851a10be0b676510a78c4a50bb89a757dc10e41522c10ac', 'IGAKkewLYriyLMNVU5vN0QVtFJWBtD/BJjYVY7dLVUcULLHoyDVgk80Gs43QO/XfMAKdtkOnxs7UBMlb4997X/ykJ41wOVczDtEvstu1tqyUzi+VsiX2Jmlio3KO4oszMJGJjLp5cSce4yKkcDIh45yow8SEl1kG70SJ481jfJQS1ybhBZqtdZYk0b3Oep33BM0HfhqyylY1/oc4n7wH8tavnWD8Yk+JDdEHsEz/cGB5YH6MS4W+orpEZsZOy+jZP5thn6RbA4Vg96oCC9HX4JbeGnC+CoYYHeyPf4pwED3nq5Rab8NkojaOIX7OUZ/pdogghX5KbUgAoYm3yozOkQ==', '2022-01-23 13:24:21', '2022-01-23 13:26:01'),
(81, 41, 41, 'Surat Keputusan', '1642920590_dad5b545c7bc55599d0e.pdf', 0, NULL, NULL, NULL, '2022-01-23 13:49:50', '2022-01-23 13:49:50'),
(82, 41, 41, 'UAS', '1655575844_33d459415c2414222606.pdf', 0, NULL, NULL, NULL, '2022-06-19 01:10:44', '2022-06-19 01:10:44'),
(83, 41, 41, 'Surat Keputusan', '1655576014_421bd9e2b2319980b656.pdf', 0, NULL, NULL, NULL, '2022-06-19 01:13:34', '2022-06-19 01:13:34'),
(84, 41, 41, 'Surat Keputusan', '1655576370_98e0ab79b9b9f6a87a64.pdf', 1, '196d5c54e70c0a33bfa268dc9654763e', 'ddc0056ade19b2c4437d5610260de6df8e4b3d0888c5e19726b66d5bcf9da9410e31d0bdf789e31b6e2224772e5ab3e20823ad7b4ddca01c4a40d7da92b37814', 'aNpvZVg28WkOVbW8QJPeT/yD8DtPwrCJHLc9NhXD6awFKOAdlJtQ0LH2T6tgS7A7ett+ohvEOgcig7a02iIEcGaPspGq4aSiDiOH5uL389oFFYKbZWmpidkHK9tLAb5audFGsNwWfVOSVN+IpntrMqIZbKUEDDdZkTI7L7gQyLyIgPmA8s5DKBK2Fd3QXd4X+AGEdNm56tYY6dD4EjFn4y/p2oLYG4nUHTLKn3V7FixytUO4gy7w+5uWoOkwbTPD37lxIXHv9JlovXgL5b/UW34MbA4r1ZRsG7tjqM2Bqlv38XoilCodl3FvRI8XDbGH15HrdKxKII5nWA82AG124w==', '2022-06-19 01:19:30', '2022-06-19 01:45:45'),
(85, 41, 41, 'Surat Edaran', '1655578048_4db3ebf5f3258ee0d2d1.pdf', 1, 'd6f03dfad498bfed6eadb60a11d40083', '29d2ab36b1333a220c287a819bf5995b06f14273f7afe68755543a05a7468555462b9c5a5525c09f8dffdcc680fe1ef0c7a2cf0ed85069a2a44d974603c4389b', 'AdT37HK6QcQ7B62ScQouGjsf1nTbZGWLb/G2209Jy1hLY6qVL14v617JYBRrDYM4GntHmgfGGZmJ7UkhCw47SJFUW6nkjQ1Wa7lw0T6JQyH5Q2g19dwStOo3uLEtRz/Y6i6jSRQo920XWm8DD0MylEik5VgW9VDEm0HuJg9Taxc9jkwHPo/5l05jDGxL4vMD6xwP/LJuBDoT4ecOy2bbNmyqgT0UIy0+z1x0u0cfmEEh4StqJvjLkaRrCPSbZ2olo0snd0IuABy5QWbr/Z5P3V8O2a5DfWJTXY/5J0pkNfceh7bKW72+TfjFlLYoJbU1wuywZKdQ8I49bSSwfjfuyw==', '2022-06-19 01:47:28', '2022-06-19 01:47:31'),
(86, 41, 41, 'Tes', '1655578082_c847e9cf6ac7153c2109.pdf', 1, '62c8f3003931a9abe71f3abc8b8f1074', 'fff40e7692ad09b04267eb0618117cade5d3d08699e48ba54fb82b03dfeab962bd7e3c1002f03152bda2ea3557761f8cd9b0554dfc7e25472c12fcbac70c5acf', 'jZ2X8SGZgeR32qZpOkaLMU44KrTFDrtM7MV/fLPADfYfFpblN9yo8BKsfmomL7Ov6brNiszHHMQphwpTS8TyyiYZNsPjspldL3ULJ82KEuwN9CofSRSbO/moQsDeuDX8C/RyCFAIToXbNxVrwpeyH4vlkp4wK+OCDiZPG7499u0Ja1MLR+moms9QYzJ8XpW+eJkzMxbnK0nCZMEtl1PHBlv3xhzDB/MZ3OKb1YcVOr0aklS57SyaW5T5xxINjpAGN72jFQYzQbR+ipIL9l569mPDqyyB7IY1s60l8QL0YsnPP06thdc72rDpe3mN8sQvU35ZA4l4owvzugZPv2HwyA==', '2022-06-19 01:48:02', '2022-06-19 01:48:05'),
(87, 41, 41, 'Soal uts', '1655578147_b9622e2ad9f7b201efc9.pdf', 1, 'e4a88510b079d3b68242b3e75614f644', '56f0cbf20bf73edb3dd388fe5a207c6fb0dbe1edefddc2837107d55cf06d1941b48e73569f657a746168074afb1383dd8d05a68819702f64fe5f7717f8b72270', 'JILeyKZ+Ya+WgVbYHImXcwJopX9CEh62eL2Ox5Is/bOsRfGS8ikuq6k6p5SSVdq2GvuAMQyXK5u57GOMW0mtttcvIPrasvP1ox90kfOacYoRiOGNUY8+ir9qA8AzCVhbhW6fQamsEmiDi0HuPXuNH+nBZ8TyGb8vGsE1HKT96y7fth0W2L90rJqpIJHllLGRTFc6HfErWIzM1zviW0139vcPnHqKJJey9f5Q6mBTNgC0IiOl1ygEXV48W1ZoSsURYSneHMQYP/cXM4si6CI1fsxXLxj2xQQuerpC/FjFblX0wQ6R/onnw0b84hdH3lO2VdZ1LNLVYrovc6rEI/8GqQ==', '2022-06-19 01:49:07', '2022-06-19 01:49:12'),
(88, 41, 41, 'UAS', '1655578240_a91cda3d591a8ae7efb4.pdf', 1, '69767cb59f16b35f4965ffe4381d42d6', '1723b8cf5a1d849329a51d35655f498d058d2071261122e9d905bdaee4dbd501ccfa4dba28e4c81b95599665a3f36b1fc1ad29b8059e37dec56ef04fa1053920', 'mDj+VR1b1NebA+innMqM7KZUHDNPh3eTARvjOV1wLLgIHe7+aZ9hSs7olLGTzrQkLHmXkvQeNwmR6kOJUdjFshcWiZpfvfn1J6bfLRG0LDNa6YjSndDuR/9Fifj5sa8DSoXATTKk1y1UVJBJnWZvXshHEWodA1KUx30BxVAdHWzlNhq2KKHM+Cpuzq/llP3mJl7qvMsWb/7FWlIzEqX7MHu0Gn8JRdKunM/36nrTS/RaPN9w90NMmqShLu6IzuZSY/votu3f+bDAJXvCsKwWAFr/ZQWsCTQTsIt3aj5CPEmCnPP6bgNnPCfk2PA4K06/onIhCdEz14PJ1DDnE2n1qg==', '2022-06-19 01:50:40', '2022-06-19 01:51:10'),
(89, 41, 41, 'Surat Edaran', '1655578308_0be3329a22aebc0d701c.pdf', 1, 'a547de141d67d90a443cdb1845361c4e', 'f167342db1748804a611a4fbf7ae5da0206891c585d661e50f2c7e468ec10361a2f22c6b25b139409552f97089772b9ff2409acb492bcc40f11beb85352a589a', 'brwP21+luthhjO/Xt3bKhgTev3KfgWuu3mYfeaFMJFEEAMToT1pfilchaTgwAo+e0qfoN+4kUcnZzV/39Ua7Hn4we5KIprUtLo7gT+wDWsor5TTJ0VJqY7TGaNL46u6giCnQYfkM/W5ZRXfBvZ2UGiESJTh/U4JwiKZ0WXoj1EsnknoLMnhJ7te3X7F2LYU89o/Kcaa6jJmJ39Ai8FPoTkUvmZKdos72j0JCn9sFogoAlpllUijk/kv3d8eYgYf7/jsSl1tidjxnpAJBvCLN8CXZpQFgK6eyKYSWrnLtzbBQIQGsjyZPwVefDfLnLJCB5UbXGdvA2AkDqLTif6z58A==', '2022-06-19 01:51:48', '2022-06-19 01:51:54'),
(90, 41, 41, 'Surat Keputusan', '1655578339_190657abed933def0df3.pdf', 1, 'fc88ec15b120ef39c94cda3f02a3ef19', 'ff250fd810964445bdbd69129a2d5b7d3dd6bff04a13be63de02585248d24030e06b5c410c666d5f17d91c9fdca19b349547d0128d80bfc4397430261cae2cab', 'IWw75TnAvO+EjcBq4abcmdEMst+SUnR4vQ0NCalXoytp2uXtlJIHmBrhB/LcoiZaL02IKJl25ec2yMnabYPZs8340Nz2qVGfov03T73mYdMvtZ/eIFh+08/3qSn/kwgb71mpqtIUK4IysN0dAH4LdsgZmB1MuCNIbKCvJw3RHk769p/Zvyk6chsdxf9wfMFcP/XK939pSks6KGr2/xjN42LlUFsbIoLvxkMDfpbG8pqy7RGJyznEcQFw6/hW4aC5sCk0W7YKt4mG4p8W6rTNqmAofhij4q4QBPRSZd3rik2boV0OBGLovOzVQI+iqEm/IgE9d6uqSxCxjtwwWIoYHQ==', '2022-06-19 01:52:19', '2022-06-19 01:52:22'),
(91, 41, 41, 'Qrcode', '1655578382_5c1c3760240f8f91c00d.pdf', 1, '9ac62f2fd3074944da50de738c853b8e', '8ff74817ca3ed02682eef5c47524ee535469740772f55fffc25231f73851264e3602a680aca9962ddfa00b012e50a9942aa189e96255544d7c81b45c11128292', 'FMIhuYX/KOMCAdA3TdemW+zDE9v59V7hSSu46PAwghqPU/9hzJPCHmgqq2MD0sXGyBXLq5KPp70EXyNG7s+R1f2h54SinltgX4IiOUDr1c7ZjaqM2ds1AhevOaofbyBbE9pKwU60TisRYj1cdOiD2xrZGYqcFos4Ks6wGfvAKRNIlPw16hzR6eAO9UL/d768ix4xau78y5uJRY+AW3f504yMKTt1TIHh24WzZ6lcSvv8W8Zr9WsnEzOp89rosbTKTxrl0w7hYXWmgebHqqwkzw4uGXvFRphdwpqWuSh4J8rfweqPRYeslh13kC5jFtJujP1pK4fE6hBE2ea2ivd4xQ==', '2022-06-19 01:53:02', '2022-06-19 01:53:08'),
(92, 41, 41, 'Surat Keputusan', '1655578587_9a87062e891ef362162b.pdf', 1, 'f6de1fc3eb2561529ad89103ab630170', '06c3a76fcb098e37a7f7da84bf93ba68098135508aac6f629994880d66f2bc617e63a29fffd185dcff989b376d734f488af05e90871feb4e7c6306eeb9194ddf', 'Sg0/GyyWmlEl//MpOC/xlQ7cP44d6JMiHveYoC/Gtzjh0+4agylbNmbR2EBQt7lGFNoXubw2M+DqwIxBnwzZSDiPUdrzk1/M7XuKYBBbZdS9+hc1WX3hpaCalZagsBv7dXlpH18mqniD3NrCu5SiJU0jXawJqCISIcj5pTP0Cc3Mk0Jmg0bBXINnpu8S8dpHpDmCIoXbMDdX2lL1tMs61JlXoiNg44JMj5tp5yUh3Mgdg3o+EsbkHMkFDjGFm83mZs6/I8wPNyJCou4h5PywzZSGUmeQyqDBBUBIhoHqn7pbprPEQVEz0wL+lWvt6opyS9RZMAoyMvgHHEIWMBcgIA==', '2022-06-19 01:56:27', '2022-06-19 01:59:03'),
(93, 41, 41, 'Surat Keputusan', '1655578806_d90dba45cafdb3865996.pdf', 1, '31304455dd70236c04aa0f6a7950ca9b', 'e68a060eac132e9f2ee8f1eb08e3df26ba3373d2d98d194f7e9a60f10bccdfab5d5f8eec21ade78b416b810c658b327256505193a23bea857880aea81dbef18e', 'FEipDyAIJY5TYvYdZnqi4P/ql89I5VGRjrYERE0TDbGXmKou3WKks/WFhtL+NEz7jccMubVm0MUBCML/RfxnjoYdMYP1/SBS/xozn0Cf86nErfDwMASxeG6jN8K/8izYdGzBpD0tY/axKAOgtREEFJk24UWq1V+o0J/8zwQwAcex57azNUrIEKl81JCZg3cngNL6pbGG9W0XDwKcBKqIbFOLkyAsJ6JnBtHWj2dGldiV7b532VETNmpeokTjXsJ2ECN7HB9PLL3NPUUHTUbQzaT5H5+ZyEBPsGVBYXGFxFhjNBZDV+SaEAJWYdTMppGlchZgjxD4ORMriE5hr5hi1Q==', '2022-06-19 02:00:06', '2022-06-19 02:00:09'),
(94, 41, 41, 'Surat Edaran', '1655578911_396af4902737e89d5a9a.pdf', 1, 'e8a519d879de2d6fb77b16ebbd300e6d', '2d39b0ecd9064401120efedfd1a133e3493913fd31e1021706703ef453d3d12bb09b2ee01fec85faf4123c5deeae850c0e412170a6b3931a3fe318eeb80bc67e', 'fdYR+/Fe3x+TKeciLcglGMQfMuwtlZAFSxBJOEeUjSf5bhhwOrSgHb3Lv5P2TCQ/TnynFs3uS7rob+9zxDiV+llAZ9z1Yb7p90GtapzZ+We+464PdqVoUvv9GWAbjCfNpOSdvT+2AajoX/s66/CYrVMHxhG6Si45Z1neE1Prs/zmZ26SMgXMySbzkgZELlmky8yYL7aaZVEeV1dRrwWQVdGCdtk8d7RZu9RzPvDYce/wiKN1VVudLpG+kJmv6vtPJZKqqvQbIKN/PGiwDeG8nGGWBYEqvRlZQAP1dK3qPaCaNX8COEsQQzdkkn45y+hssqEvd3OErpAfhFHzAMvtlQ==', '2022-06-19 02:01:51', '2022-06-19 02:02:41'),
(95, 41, 41, 'UAS', '1655579043_4f87a5de84b3f4048ed8.pdf', 1, '9bb9b01ad7b44d5c50407467281f1957', 'ece36428c37984e745c6a049a3697219f30ffb169b1104987a6874ac9f038182439ba76c1aa40f666c63471a55f9fedfc95a1a9fe67a0bfa7b6334cc22af8052', 'liLLO6XBkz81lEj/v7OMkARGZwNgSKeC6YdqLD1ww589FAVFYm85qvd//Mqciu8XjqH9D9h2GdZy4r4hrYC+KnnlR++LCo0UylP8008ipheK3Z8VOhhtkvo0LRngdC14Gg/QjGMCBQhL1fAP+irfmhHIMqC/ignnhNj81OHHX6YcJ03BUs0v4iGIfx9ajw+nTxFmXN7oRj7RNuac5F9vMzIHBKMuxXIABU1wrIM6THOC20gj2vlZG/NyWXFmqTOw1bFhypaCMDfPIaiwjGoyuUcIPQz9usz+ucjDkPXL/28nWRFxoKxnDLZPFcvZcvSkSOPdFqs/CSWW3Qav3ieRJA==', '2022-06-19 02:04:03', '2022-06-19 02:04:09'),
(96, 41, 41, 'Qrcode', '1655579154_57dc7227f660a1577dbd.pdf', 1, '55f5f0e38425b1d9b1761255b408b4cd', '5caeeda495a8205fff3b6846ff7066bd5932cecac0c1cf378a6019d6daf648df7a822ceec023220f87da25865096a48041466b5aeff7a60873973dcc8f4816dd', 'dZTkvbuQ7K4ehNNhZQXdkIsThfLF2lrte7efPAdhtdA467KbGxztLEOiWlmFtCJURjtMOAtPh/U2b8JlEsgj9PlLwDPsXfbCES6LtEhEjihxhq6wOZkesOSEGp+UTHQDrzHntLLl+KGaAYHikD57tUMN1r6XfpVodPINPhtObQpx60rUOTbIqdtfhxj2kOiKZMejBhyhg9xQfr/Tzv4gWgeGotKwsxkL3nsHA7DW3BpuaXriw9nPq8V9ORvs5/QOmsXF77tiDUyWYRThix6LhTKukhxm6b0K+M6SKcaSUddV7VfhBq/646yAHokqfZQ+gXKbqCZmHu7zOCmbwPh+aw==', '2022-06-19 02:05:54', '2022-06-19 02:06:03'),
(97, 41, 41, 'Surat Edaran', '1655579302_7ca2f81e3769b4fab44b.pdf', 0, NULL, NULL, NULL, '2022-06-19 02:08:22', '2022-06-19 02:08:22'),
(98, 41, 41, 'Surat Edaran', '1655579314_e4aba42093fca9d0042c.pdf', 1, 'e5b0aae567dc4429311d9007ac6277f3', '0385560432674336ded19a0d542ed65cfd0404b54f62c914c0c3506405cfa6c2df424dd527d3925ad8f97ed0d48066e2b19f396325cb569be342a65e6f569177', 'PHJHZ0Bf0g7nBMZuTcjXMwPGaMYOPsKiMAGBRsXp9gWvAcc6r4vWUvKIJecss7p6fDJNhYxPD99KO55e9e30rzx/sSgxrzil1T0menwk5WNUyH/uEdMErai/XdK1VRZKhJGMA2uQK+pvaIKPcXJgBugkjZ11hd+o5jngYtakq4sUwEcjIkatKDPeBlO3d9BcDYqhpdMEDCbXYVvg7cGiG84RQ3MbYfi2K+oHym4ChSRrMudEK19xMgqGwKpz4gK9vae7G0b52bmWOVMa6JAKohuX36vYeavSYg36YsEsj+gDUZNx4NUpexBSrSFX48glK5twtn1DKitzBl1yxlO99w==', '2022-06-19 02:08:34', '2022-06-19 02:08:40'),
(99, 41, 41, 'Surat Edaran', '1655579376_7f24881568d5bfb0ba37.pdf', 1, 'c22b08d450893398c1c4b64d0df9bdab', '20034abc628e82bfe21e2c0c3c0d135942550df786d0be6bc88b3a88060348fe4e212505f68ab81d8b71db6993243f7a5dba6ea250573f455bd6a6940e42bbfc', 'Qqujz4SK3gpahMHuTKWv6a/75Ene3DUZC1Io6Ye2seN+U84/7CEbMShaUGfrs2euJKrvLV9XLfnX5wRkwTK1qQ5yPUwJCopbKLtdO729uflNIIh5hMzPbolUaWn15P6DeNgOWnOLmOy4uMglYsiGgaZpWYzMaXJ13EAU7xzJ4Xt8YbXbTzgOuLNyN8tIaengVbcJDxdSYhgO6a7yeb3nq28RZspimBqFFahGy40O0YnKtecp7Hqxx6OhWghjrBEdhAxQ1X95+XcsIdt6oXKzpsk/bg9tWFUGx8YEWUqUn63MZvZcgnZNArbaB+zUIVJ9Oln4Sbpyt4Jl4hhe/WisCA==', '2022-06-19 02:09:36', '2022-06-19 02:13:51'),
(100, 41, 41, 'Surat Keputusan', '1655579948_9220dde4b6a992a4ee94.pdf', 1, '1f1428e8fc2a2e0598afa6474caf3651', 'bd23747f49346434b3cd9ce728f667b72ebdd93a5733d9f6b0d4ccd8504bf8b83626206dd24a33436b1afed053aa06444593e5aa6ef2a3274dc574017bf0b928', 'oolmoAuv+NPxeWyvJFU6gCPbiZWbgz21pu5xcyVnJ9wpAzWClXoNaIFNQV+R6jfA9J7umjbxi4oLZjyLlj/XUxNDmqQEj5Bxy/ZaXYy/3U5feyTMK7giw0lU1kRRzfRkhNCr2DWYGw00w4lvdvsavMOnGs4ywfhCmmA2s1ojqxwuSZJczfWTu5s/qjGlSZyRmuG94OCw+8R7YngoIeC3g9EZc2gUs6tovdMMRoY4xxYKTPxcpbs7T+P79QWPg5HY98UxHgklldhFVSBju5mHhHYQI3a0mJkvrcFDHkEd5kXRkwX1WB6futqWeYFBIZg9nBXCDja1DxB3mIxZMNIutQ==', '2022-06-19 02:19:08', '2022-06-19 02:19:13'),
(101, 41, 41, 'UAS', '1655580128_da03959b9430df1b00ec.pdf', 1, '6e2565b478bb3f92fc09e34fc9659dd4', '14d8df1bbbe4a29ec9062d2eb1dda82a14e459e9eeae736f979be3c06e698d8fa3f9ff14f09aab66528b6300e2c5edac1625d2e7c71c7c6535fb80029b3bce00', 'OXObY4Bq5R6FcISXTCiVSHZwdJbQBaXRbyQvS97EyXdENceWSPyO6zJEWJsx7WQ0RmkTEneoe6ndeoaivjMfR2B0l93cmfvOAu1eIfVJ9D4p9bvYgQFQmarFXjhjzP20B7JnAfCoNwoEW2lS9H+OdO/TNXtoiA1n14jqCfrUaZ0jOb1cxRnmLGBTt3ATQx5N/GPEVeCGJviTYRunYkkM4W4pcXDFfq4WZWzzFIG0wBWWl+RhoLdkPdNqAkPnoU+6pR3l0SD+rD6OrzdlMfuodkHWVzHOYm3897BppCwYtlwC8UtDOahbcEm8pv768rN0aGdR++4XeFRra/bcuf3HBA==', '2022-06-19 02:22:08', '2022-06-19 02:22:13'),
(102, 41, 41, 'Surat Edaran', '1655580203_0471c39634957704e2ec.pdf', 0, NULL, NULL, NULL, '2022-06-19 02:23:23', '2022-06-19 02:23:23'),
(103, 41, 41, 'Surat Edaran', '1655580224_d1ff2013dd65187f17b3.pdf', 1, '96aff739489cfc7d6e1bcaf6a226e3a3', '37bd96b49916318cc0e3adc00f846711b69ee4e8b5f82e036029dde7f4b9617ff799467cd8ebd35c8d275faff3d5c882d01efbd22d35b1695c9b4f2f1d206eed', 'Ko2EXQEbu1BhKA0OvP0Fhc0S6iGjsREqBUPOx818McFbdWDLU5butBnbM9AjMYFMqRSe2Tw7dJkdRYvE92xTgzhTCEXku+9BUAZ1a+Ok6SJHjO8OoF2KxaOuvpcR6NuStVP+2ls8oOK9DBNpyLRq7EIrlgEfczgyGCRCI9JLG+6ASkrLgv8Mctx7CEGZfHHJaiynSjpUtXMld2zAiGeWkUtDSZM4k8gSJ2gpOf32XDoVZEs5awg/dUTCXBD2/AVfOd+EECLEfm0BZplvLnN82bXgXoybEvbSP7mCErHKTWVbaxHoeT4USPsokUB4V5DiPJBnI8aKBT09fpzMtAF+qg==', '2022-06-19 02:23:44', '2022-06-19 02:23:49'),
(104, 41, 41, 'UAS', '1655580259_b4c1f1a920a499df1e17.pdf', 0, NULL, NULL, NULL, '2022-06-19 02:24:19', '2022-06-19 02:24:19'),
(105, 41, 41, 'Surat Keputusan', '1655580269_1d1a07c6d3920ccf5af2.pdf', 1, '4ca6b1557e5b1993edfe074747574246', 'f1f415dcb5d892b28374173e2e6d13a4fdfdd8c45829c957ee7bb969984908a6ac557fcda09f97cc20419bafa03b406d72a7baf228a759779ca178545f6516be', 'EFJVGmzhag3hrUvodTfHUSSYgI2k8+4TvVdDHJlB2ke2NpI6ihAmSU9Ya519x2Md3DS43lkp8V9LLtKeOgn3G+O6NtSpgHimwvhyiZG8lpq8vI4PNNc8/U0QnLxZ8oCNmsWrZWdSVjJC3TiLZcSCyyG8MGHCLeLxMQQsp8zc6gtxSQo+1zIkFqw3UN9trjxG+1XpFsUSlcZ0COg78E0tYPkGHw5RbEC8wqy4rZCfSktUZYeTM4iO2jcipXL7RuZKejHYcwddpiY4NgkpCZxXPnkKHvK1VlFM9cB5H4QD1kvntMo2dyrU6/2ZgOPanSERPEK5RnJmf7wp7DI1YUairQ==', '2022-06-19 02:24:29', '2022-06-19 02:24:33'),
(106, 41, 41, 'UAS', '1655580328_a828085b872ae3ebc421.pdf', 1, '601fd596d1bcfba51b8821b0ced0d4ac', '3168553eb5d000f59cf8412568ff68587046cfaba0479fd935ff5426d79b3279b9f5d54d80ea3f4405cbedf8845347938ec7a28b2a2b28fc5648c086ada4e3e1', 'Ga6ME56YjYxnz2PWd7T2hKXBDwUNDD7W49wcTcUElg9oMKpvRKz1zzQa4tZrUihbnd9xQh62CLOfnhogTpDZLKVR3GG2VZ2cPLQLOpslEWg4lnFB6yCHyLkpJNSmaxgV2jQGOV9QxlB34scsDdh+ZLPlbRGEwKCym0f0uOMOwk3osxO8YdFqd5qdMndNpiJOr0XEmU6FbrgYvQdhgM1u7ZuFJmi46oEK2o9JjaNHD3d9LvAKKqU7pmgLhcKBAwKkMGeg+/4yf6HdZVsgQpOyQNA4riFmxgFW0jCXFpYfSCjsf1K7RynxiOKpSfiii08JF2+MJZc/ClI0NEtIiTNRiQ==', '2022-06-19 02:25:28', '2022-06-19 02:25:33'),
(107, 41, 41, 'Surat Keputusan', '1655580393_c969f9684f8e7d4c0d5f.pdf', 0, NULL, NULL, NULL, '2022-06-19 02:26:33', '2022-06-19 02:26:33'),
(108, 41, 41, 'Surat Keputusan', '1655580400_06314fa0a7435c7f1743.pdf', 1, '2b73c5e326a0d3265eea17ff51c18691', '4a3d82646040c7bec39b632efe120c758a47f84144dc749b18835f8df47384b1556c1c5cbee8201c2a061f9db9fa9e11b143e97d6d3d5b6676b397a84076d3ce', 'CIRBZj0BTJHh+tGB9n7lc1tEyRAzk4XgYqjdEsxPxUFalxRwyqtdSanoKm+D56VwlnYfC+fjV1V09ei7l8PnTNmKP70z9o0ck9/3/zxFBAhxLAicsk/Ec5js5z/zh0iQjyFk2eCj8CM4+5LYZQ/6NCOah6Rro1wbdZ0TzQjrJ/VxbwA910v3gAV0VX2QcH7IZSL3WSvT6XdHKLBBLd9ji5rxj5OejR0G6wjKIHnQZyysn/Hi3yxessi28+tLlh/pTRYU/aMYZTfhpHeAlrjlF1O42tb2dJTK33oQbwnaI4aZr9Ft0juvqiNxptz6ip40f1iiHrS5tokQPgsYicgIlQ==', '2022-06-19 02:26:40', '2022-06-19 02:26:45'),
(109, 41, 41, 'Qrcode', '1655580858_5fd6f5be5437d72c1754.pdf', 0, NULL, NULL, NULL, '2022-06-19 02:34:18', '2022-06-19 02:34:18'),
(110, 41, 41, 'Qrcode', '1655580866_a66e866a34ecfa7627cf.pdf', 1, '460ed321454852b7d77c166012d060f4', 'eb43d2196159c8139d1ed8c56ea7038f3e9b5894a6f3a814480ec985ce59bb1856562eb6a7b26cc51ec58450a3968f4546aa67eb99264a7a9002a3afa63308a8', 'IueBzPLJGu9Um9/87INUtHVcYhRtedhTPDsukEsRq8rm5N7/61osEa8hhOogDFAyKDUDxUIFDr/QLuB6vu+f0X3ckEcTXKYoExKP5DMz56A/psZCoNhNfwr1MMzxjZw4P77jOPKLidqFEzGh2IaKE/uxieLWyuLCjqUeoWURRc1cOE9QzLJ7e24/lPJI7le8a7td29tD9XElfG0dmI1INYsVJ/AKCBU1O5p59T2dRtN1K5DqjMY1ht4CmZwD1G2JL0d7U5Dlya0t/Lidqa/+51WKtSfTuE2VBVTYwn7UASM9NUTI47zXiMXxidzYbUfaPzSdTXWMLskNkToSmIr2tQ==', '2022-06-19 02:34:26', '2022-06-19 02:34:34'),
(111, 41, 41, 'Surat Keputusan', '1655580902_02813588bf4ffb67c262.pdf', 1, '89ae6b03801a65e23884a19dd8ccb8df', 'e1394f01520b18f32c50d3ace70ab4a280abdf6a430af0128df84c2f46169dda73683f11daf6b21bc4b97a96ce581dceb8e0f5a42219ca78510feb21715ab3e3', 'Fw68t13mA1AmAX4l4IX4n07Qht9AuxEqtryDwD38yCELK+VGdGgs27rmv4q/4K9lEbjSudi6zJgzcpjsjLtswT0cVi9hLk/8vvfPlWlLSUA66gcLwYI732IUkRPt89iDO2tulaQz4sPbb8UkeAD5znkW2U9ypzvFaGJ2mOToCemTq9NZddOQhoXxoBfbRXrUb8WpMBrLR2zNtqZn7Z69SQGFvRrhwnloIWyh8ZaPVdf8pr3XrsrcpnvpF8/EyuhKDVIsT99SNWyMLzsOJRQSgarfmkp2WbwcGuPw/AiZx8TTIOpbuQIVu4UzQKjzjYXSQB9H/ED/TiB41z+i8Rd3Aw==', '2022-06-19 02:35:02', '2022-06-19 02:35:11'),
(112, 41, 41, 'Surat Keputusan', '1655580941_aaf45b643c3193299871.pdf', 1, '79d44f7f698d15dedf1c9731d8723c07', 'a5209e840f1e797d7cf03ad5147a5a16da2e638998442892fee6b50daaa524f76327ae717149a75597c8577b568870537f22377e1d9244501afb2c61f9817913', 'iB2sNLSfMb+onn8+lxvc/IbEP9+qymcxEa91sxCZzQoWjU6ztKazuuroerqknDYRyXPq2Hfz4IGKrWlQ39U1un7dlyHz2/HDHCFGx6kAa4+VgF854syKybfU+5Gtf46B9c1B5UpJy360rnPDCROIvNfJogjBpmNoE3yyvofiefE/Q7aa5ZIWtO68I9ywMjVaBDg2KZmgV3/UV9XIvwLJyGIaOy55AbHOktMy/mT+EO4DPUFP2KOffsD1Rur5LiDXhcT4eH8yBbLQLQucyhhFVGYsApPQJchdaFCsr7Z5d//30jqn+Bf9U8Uw8+WYLTOqfDjGQ6ZEizNpdbyK8T9q1A==', '2022-06-19 02:35:41', '2022-06-19 02:35:47'),
(113, 41, 41, 'Surat Edaran', '1655580973_53dd6972cde7647b7393.pdf', 1, '1063de5e446f8b9687646fa2fc9490d6', '58ece5c9b61962c461853c6bf76bab4120155c26eab866fda4e555c6a95bdbca6d297801f8eb28ce8ba1b60e09ab9a51033016bed552b5aac7ccf1db578c8c04', 'R6aLkAyQdHgcOU0nuwRUUVDReMLlOQmfD6iCq0YdjEwnar7tQ+tzlMUU0lJcZluCl4nwKeMWw7f8/wG1fPq884dE3Ouq7luYgtjnikN5cmw/KeB3+JY3kzyoY5W6oU3ruEEDPbnraIoUfOyWMBZUkOWxZ7ah+37lXjDRuXDgKqYb4cKSSRlTUDgxk8T2ywoT3BvOku4QVzQfZkd748hCHX90NkFzUbFhku8wdD29AFalLPTo9nwaCv+tUcVgU9kOIWkN6g6EzcFqexEUrSi2Bcd7ZarYAOumLe4Enbj2LblyWRHX82W0O0kM9/eaWSFkRCm2tDHn4QYKfWjGTFQmmQ==', '2022-06-19 02:36:13', '2022-06-19 02:36:18');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(3, '2017-11-20-223112', 'Myth\\Auth\\Database\\Migrations\\CreateAuthTables', 'default', 'Myth\\Auth', 1638172164, 1),
(4, '2021-11-29-040145', 'App\\Database\\Migrations\\Document', 'default', 'App', 1638172164, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `id_number` varchar(25) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `image` varchar(100) NOT NULL DEFAULT 'default.jpg',
  `signature` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `password_hash` varchar(255) NOT NULL,
  `reset_hash` varchar(255) DEFAULT NULL,
  `reset_at` datetime DEFAULT NULL,
  `reset_expires` datetime DEFAULT NULL,
  `activate_hash` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `status_message` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `force_pass_reset` tinyint(1) NOT NULL DEFAULT 0,
  `private_key` varchar(2048) NOT NULL,
  `public_key` varchar(2048) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `id_number`, `email`, `username`, `name`, `image`, `signature`, `phone`, `password_hash`, `reset_hash`, `reset_at`, `reset_expires`, `activate_hash`, `status`, `status_message`, `active`, `force_pass_reset`, `private_key`, `public_key`, `created_at`, `updated_at`, `deleted_at`) VALUES
(8, '1234567890', 'hunseyun94@gmail.com', 'hunyun', 'Hun Yun', '1642759348_b361fd8178811e827b6c.jpg', '1642759348_1652ec6778dc0cbec002.png', '08777777777', '$2y$10$nBFrU5X/bwSZnE9aChJmRuyxxbGO6hIOIetXYyFiLu/AmLKN2VU76', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '-----BEGIN RSA PRIVATE KEY-----\r\nMIIEowIBAAKCAQEAwpquZSk3dtwDXvLJ+mM0rPseZD/+tZYtVvgjMoMXJUZ8UvCU\r\nEjrrFD+WpRgTTgH3LqgWXGfIYkWAlG0WYg+UhIOPDQyrya88HgwfvVESKiSzJJdE\r\n0j4AHGkylJxpEQgRsqFKieS5JpPwyM6ECqjwGvuJXsWA1p8rtW4V5dgUcuE3AXzl\r\nMX1dbs6gnywzSX21/qRXGMHAByAhde9E7niBYNjw6svz5Ca203PRw6t0p9DkEUyS\r\nLwU6mThtkZERhOq+eJqR6sFDoLmDpzLppW6qi2zSWjBGhWkH9YKGN8iY7eA2s+hr\r\n34r9dn2WARF3eOhgDWbl0diNaa306ETgWDZwoQIDAQABAoIBAGrrH1v3LEECmluF\r\nW1FVRjCv+7+qpV/RNfHtfTEYcxQIyO+svD3T3yqN0U+9jYWzcMJSmY6FesP7Wayy\r\nzrRryPaRbXwG9S9nNslvcdTLAQbkiQRWk/pLFDaH2cFquhMgctDI6zId11gJuiYp\r\nyMQuk1TP1Gacbq/8XcBdzmwsrvd6LYf8Nd/aO9br18CVJHcKpoy/f71ZE1Z74Ccf\r\nszk+UK3EHmqaXhRQBZ5wShnbr92MppheYDRumdYcUhj5hNmt98UpPWxMHoCMdVKj\r\ntfJjAmZRapM97/lTBGqEXr3RY9nmjspmMiAOGgtcn+D0ih9C5lij5Rr4ib6NqGWu\r\nm/5GCo0CgYEA8Q7DSfyiN00KH4udg5aDhsd73hcky+N0fZA3tJ8LIQM+VxZ7Cbq8\r\n4VKJYSke9aO9Uf5pXdGB9TBvs0XxAvZ9P1DjqgVytPwxzQ9YRawY76uvpCfFVfrm\r\nph81PKTqMoflr1guBXGME8w9RIag4wOZegpt6oo2yABlSJp6isPB/5sCgYEAzqrE\r\n8K+wqALmP9H+AMUifDt5LclVdA+Kk1FEV0pnaXOIIObnBk+78AinxnPflurKY55h\r\nbwdt9+32YLfEVPoQLaX2PDL2a1hinZg83UcWUeALx34DB4ZivugidrKkJS3CVBrG\r\nE+JJuHoFbTsEnGwsCtJrJO/JYadtWj2v0TuuunMCgYAofkNd7VtOkNlvfSODlEgZ\r\n3u622wpqWZYa9Zv18nWLISFavcMDWmQaMaQ0NxUlTFEkMel/Qg9jobRR2CDpT4Cw\r\nnyTvTaT8NBUljjtU0NkLgbqqh6fFjrUqGLn3qvhQbrWto9FvRqiyNq/gEAF8wQEK\r\nGDBoorkbFb3t2U1WfBXdmwKBgAJHqgKJvaYs2gNsOqQhiJ7cPRr/NJ0iKsIzTFC2\r\nNmvYZXEPew77xDQCtG8hCh9tGax9q8+AwnrQuj4Y6OaTF6iZQx0o5sUKZZQdgNZk\r\nGV/v29Fol3n2xpIal369u8fZOGKbJQJFJdEOL48j7ooXO2knJx1yM8OLCE7NjWn+\r\ngY/3AoGBAJdfCOu2QEc+uBSRF8/1fq5cYeQ4g8tcwAYH1RwhPIqDhbFBmJooE3iS\r\nm3o59XF5CkuJCDzwD2j5TCrgrHIWok79CDB83tRzF+vU805tSO9z+jYlQkL+BOx2\r\neK3OQDUFO0d3IJN3Er4dVWmNToymbfgQgWZGa3WSenA9HFKeSvEg\r\n-----END RSA PRIVATE KEY-----', '-----BEGIN RSA PUBLIC KEY-----\r\nMIIBCgKCAQEAwpquZSk3dtwDXvLJ+mM0rPseZD/+tZYtVvgjMoMXJUZ8UvCUEjrr\r\nFD+WpRgTTgH3LqgWXGfIYkWAlG0WYg+UhIOPDQyrya88HgwfvVESKiSzJJdE0j4A\r\nHGkylJxpEQgRsqFKieS5JpPwyM6ECqjwGvuJXsWA1p8rtW4V5dgUcuE3AXzlMX1d\r\nbs6gnywzSX21/qRXGMHAByAhde9E7niBYNjw6svz5Ca203PRw6t0p9DkEUySLwU6\r\nmThtkZERhOq+eJqR6sFDoLmDpzLppW6qi2zSWjBGhWkH9YKGN8iY7eA2s+hr34r9\r\ndn2WARF3eOhgDWbl0diNaa306ETgWDZwoQIDAQAB\r\n-----END RSA PUBLIC KEY-----', '2022-01-21 17:00:24', '2022-01-21 17:02:28', NULL),
(9, '0102517015', 'maliaarismaya2@gmail.com', 'maliaars', 'Malia Arismaya Ichsan Putri', '1642918527_45a2f184d29658156973.jpg', '1642761475_a3263dbc8165f4434bb1.jpeg', '087782596590', '$2y$10$rSapBXNRmumgvPMGYl3hqOo8BOw76gl5KTTddJUbPv6vJdpReemaa', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '-----BEGIN RSA PRIVATE KEY-----\r\nMIIEogIBAAKCAQEA7NtmnKQBjK4ezsqlclXpfWWQg4DzPSid82rgkofWeJQaSDmx\r\nCWfLjE5vPUIe85tJlyZQqrD3G1LBzD8498REzCA5KZOqlbNRQifx7m8HjH+FEUC7\r\nR+CWUtGFq39oakCFxyR/w8GUVe0wPe1mzmxZc/mrPr6NZ60a0ynXdatBuleobZG1\r\neG5cOCsYI6Yep/r0eUYM09jzhQ9n/2QQFEnNvxS2MAKYdQO5vs+8v/1+h8yXHPav\r\nWy9nppMxZCEJr9bdPtTnF7kfAjfMznZfO5p/Xnqv2pV3VZw2Kdqazn1Kv+Ogf8Do\r\nP/Ow7JTtzgMqEDZyktf6zC01AKGouAsb9VRanwIDAQABAoIBADmHeL7nHvE6gYUc\r\nt16z+0hX2Of39ByQtvyeovk0QSV8Y33TdWqhaVEk4+PvIXFt8EvkJIew//QE/8lK\r\nOd4EL+mckgXFNhOyQDRfW2XcVesMNhfgrxxgMmLfPSZQhd342gVqmhXD+PF98M+5\r\nz9SngHqo060jv1jFNNTBPvH3rLlDhaTvVvbs5P3m1fzXMYYJUW7ox2PCMKsUkhw7\r\nR+28YzGTSugEUMeJcZ15KObzmpqbqWCuLEl+485tAnIxPH+9XCEyBZwlLCf6ns2J\r\nlZytFgvKrEVLjpE9onwb4LIj3OGKfJlWsWyy4YcPxtxM66ELfP16oSbnmkchKDl/\r\nL7ODVeECgYEA+iNZalekn6v/Q42wtPlbeMW6voVhllUZdhh2DCHN30lMM35tQGfg\r\nQUG8CURW5dUIXXGvDrLMcOrgvZiubMaT6KnHHtAjjyQfIlo3N40fUVoUsS+gzOW+\r\nVcLP/2rMYrXaN0ueg1GNFMlVvbiLP7ufqyIfHmVnyNfzDgoOnpv6slkCgYEA8mhf\r\n7BOih2X+i0mMUwzqsXH05fSCCS87sPsCqaTlvSboP93CGseYNeSBsub6Cgs3LsJ6\r\nVgIsAVvM8S+ldFXqqj2H5jjvx479kgnW03AJuQT/fAPEAKh5PLhAeFyS2ReWnMRG\r\nwqtdR0mpr9dkz4Fop3Px2M51YJmW+TObyGkYJbcCgYAGoi1a3pwlB+CrH/TRt9Mv\r\nLr83Ej52SCd2tEtdIwBcrYrxyqaHELonwOCFtmQ/kBi6sasczq0RSYlQPd5SUCnX\r\n/7iiHo7y2thghtf0BzAPbj4iPMsc4/LaP2JYubJV49C3qq+3d9Av/u7hKyW2OPmR\r\nBkSg/7ty3hc6BhZBKo3JcQKBgBbXDMqyouq9CnnXSTh+DBMCGMAeBK6W27n2PK79\r\nUYQ8CUATRfm9+rKBQFM5/i86FU37lwlJlRnfq3TCN4W5nq3BtG9VyAn2iB/de3da\r\npB/hv6zQsgQZ26qD9dchadi4p0FIIR6whM51u15NHjuLBvBYNV5nPZoHfrkmSrRc\r\naqELAoGAJMycdKodb0u/XgE98KUZZcIP0k4Ggiowom3mXbrzruqNwd9UdsGdxQHK\r\nX58gWMWrzh6PXcpWY+atZBKXB3Q8X07JjpfHtdprrvUMgx28P3VSXxjBn1mGETuP\r\nGJkNnqWxY11x0GM2Chjj9ODKQZX/wLilxAQN56/7Ns/eqnJF6R8=\r\n-----END RSA PRIVATE KEY-----', '-----BEGIN RSA PUBLIC KEY-----\r\nMIIBCgKCAQEA7NtmnKQBjK4ezsqlclXpfWWQg4DzPSid82rgkofWeJQaSDmxCWfL\r\njE5vPUIe85tJlyZQqrD3G1LBzD8498REzCA5KZOqlbNRQifx7m8HjH+FEUC7R+CW\r\nUtGFq39oakCFxyR/w8GUVe0wPe1mzmxZc/mrPr6NZ60a0ynXdatBuleobZG1eG5c\r\nOCsYI6Yep/r0eUYM09jzhQ9n/2QQFEnNvxS2MAKYdQO5vs+8v/1+h8yXHPavWy9n\r\nppMxZCEJr9bdPtTnF7kfAjfMznZfO5p/Xnqv2pV3VZw2Kdqazn1Kv+Ogf8DoP/Ow\r\n7JTtzgMqEDZyktf6zC01AKGouAsb9VRanwIDAQAB\r\n-----END RSA PUBLIC KEY-----', '2022-01-21 17:34:48', '2022-01-23 13:15:27', NULL),
(10, '0102519029', 'muhammad.muhsin@if.uai.ac.id', 'Muhsin Wira', 'Muhammad Muhsin Wirabumi ', 'default.jpg', '1642770106_5f78232b6bb8b5369222.png', '', '$2y$10$oSIHgQkaaFd9TMz0BxK2WOJBp7m7Q9zD4MMBsid2q78408tiQslei', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '-----BEGIN RSA PRIVATE KEY-----\r\nMIIEpAIBAAKCAQEAwD1ZRA238ACWvi+tkv8rTNnWQJ+PNpOMZcBNarJ8907bAFlq\r\nXpCIAE3GQ2BVn0HiktI3dBYpWTP5W6GwRgpGWAKOhYB+ARPLNrTn3ElmndjGID/Y\r\nwwS7a5wOghryWJTWohOmweh2vjw2770NpIndU7kWo7M3+E72z2IAMnKraG4PGc42\r\n3hY/SrEkOv14+C6hu2xYC6V4NbaHfcFZBcJG39RRMNnqkYhrBSe0rFQrr5KZM2g1\r\nl5T7KtBUmkxCwFChGHBaRWIgPM3O4pRcioaLXQei851E6LWCWiuj2zM56PLFn+D6\r\nebY3KK/7jSKJjaVrxZW8uXeH+QIkKPmYc5KmowIDAQABAoIBAQCBLfh5MZrDrTGe\r\ntZ025T8skklV/aKX8whqK5IaO7yb1yJ1FqDS0N6DDcBH8Ek5DmX5cUeQO4AnkDRl\r\nLb6tIiRo6bbp4RFLGgj5RxFzRuOs+EkSzLSVP+3Nfv2E0iS9/65HFVt+e/6nEQF9\r\nkhXD1lyi8QJUmI7oze8uJlWpkMK8FeborcE6w/pOmE3qmtVAbXvuJGkVeZcvRD/Q\r\n8WQ/B8lGZw3JNy3oixFcbDScGPrZPO75xILv7MuUpIsM/QjRqLOfHcdooR537T94\r\nNEd+mncmWVnzigL7CF5p4WmVnXLF88i0P9bixBKh17q8rEjiKH0ExCqycAOC8/L6\r\nq7C+Ev/BAoGBAOAQjALZ6sr/eX6t9gUfTTZLXK7z5HmGU5s4l3L3UY6WkqO6dTMu\r\nGwUQGkRpB0nRGv/h3VvPhM6RwKsvo21oF7rTITifFdS01Jsn5MMJkRZgjCMoFlFr\r\nFI5hvgEeQXx7kx8UJdiiBbDax2f1Y2DLU8Glx9Ds/j3daKwY52ITo19DAoGBANuj\r\nmjCSa09awIXquxTvtDugs98YtAugMEp8k/w/g4L5SOhsJqxVaA0D2WNy/6UXr6Qd\r\ndG57aIeBXFlbRB+u9JhCzSYoe8rw3A2gxd2C1LI4xy7fWwlXdtLJx5toXVHF/u91\r\nXXdQVVnLYXGIKW+DPtdHQxvr2S/0hwZPUCFhI7UhAoGAKZ1pI65tmT5RxmFw7Aqg\r\nQJFGqYfKy3dTV+Tu2/9rOlxk59vdoJ/TjOEsv7/yBpe7uAKvJjoopGUVr7WtWMiY\r\nf65u4SFK4LKlOhvytPa1574OyQjM/Foy+y7UJ0kDSKd6767CSLXu8KXxmzFMP9ID\r\nwFeWAQvDPKI+qpgFgYW8NhkCgYEAxSlRajSlm7Btjkkt8xdSBQy3Kpd0V9NORi8a\r\ncJ9bIKFCL1GWTbDFHJnN9RXwInTmuD2wnNSu+qTHD3d76a0V5/BfU9eXeI9KGfmu\r\nZK/i2rFZK9xYTkRzZ7i2M+01iAhiVvZWFprIYzjMmiuOdomsSXew6EmIxyGMa7+a\r\nwLwAX8ECgYAo58EAS0fhHxFLwSlxFWPooVP0PbAladVSLj9HCiLq5AXzj2A2uaV9\r\nUhrKcatEbqnQA1Sx/X9xSJfNTz+FRQ/agNhgfLaFdpzKbDJRP9oaEbeDsMZ00A96\r\nxTcUrq4eEXCa6ekvaOE6Vn1LR4rI4m1H//3nh0ZosdlF+slTM+w90A==\r\n-----END RSA PRIVATE KEY-----', '-----BEGIN RSA PUBLIC KEY-----\r\nMIIBCgKCAQEAwD1ZRA238ACWvi+tkv8rTNnWQJ+PNpOMZcBNarJ8907bAFlqXpCI\r\nAE3GQ2BVn0HiktI3dBYpWTP5W6GwRgpGWAKOhYB+ARPLNrTn3ElmndjGID/YwwS7\r\na5wOghryWJTWohOmweh2vjw2770NpIndU7kWo7M3+E72z2IAMnKraG4PGc423hY/\r\nSrEkOv14+C6hu2xYC6V4NbaHfcFZBcJG39RRMNnqkYhrBSe0rFQrr5KZM2g1l5T7\r\nKtBUmkxCwFChGHBaRWIgPM3O4pRcioaLXQei851E6LWCWiuj2zM56PLFn+D6ebY3\r\nKK/7jSKJjaVrxZW8uXeH+QIkKPmYc5KmowIDAQAB\r\n-----END RSA PUBLIC KEY-----', '2022-01-21 19:49:03', '2022-01-21 20:01:46', NULL),
(11, '0105519009', 'saepulimam229@gmail.com', 'Saepul Imam', 'Saepul Imam', 'default.jpg', '1642770030_5dad949a56d6e37ce2b2.jpg', '89601564498', '$2y$10$cjORBSAFj6Zzj19ldbUy6OTsZNcvzuzEQIcsRHNv9m4rnWowhDnhy', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '-----BEGIN RSA PRIVATE KEY-----\r\nMIIEpAIBAAKCAQEAyQncTMIxmGealsj4YHS+faIdk1QHsa0wH+1yRrt/o01fJjdD\r\nMQ8214e6WMVrmY8124VJylARg2iDd81goe1nDnki/Bwn7B5RNMhzvY0RUqj441KJ\r\naAXlYOymdAr+P0C2CrbrtFHOqYz8r8MWR4Vkk8rUJZsEztTXzeBO9ClhSDPx0EVG\r\n5xrXg00yWaRomUpC0Dffn1BKXqeOhBWoG0A96FeAy18dIS6gay2P+xm1R7mtuUJd\r\nsA3N5TpHqWz1h2NtIABWEWFl5ysREgDz642G8ruY+RRH42PReaRxdz2gmGl+EIT2\r\nTWNvkW1X32BzloOie6hmbc4LzsNrn5MF4/l07wIDAQABAoIBAH+7rCV5HVngOfCk\r\nMGvYwU/BuVjqgxj5GSKwE3OtniN7/YCijCaXrBi1PEk65mri+y1HOuM4jGgZ964e\r\n5876sAgaH4hfu13ixWXsFt3Qy7jhc4G752IYnO1Ab2I7ud8mloOoRYqEj/JaihKC\r\nuZ0nvAfLT4+1NxDTW2qLop6vzAe7GRX1nGbqMXLFU0yK9GTDpQGyUmbBPzWyhw3w\r\nyqDYEvkKfRyhUPbGTDUVbFtUzqTj2FYdujSkBcmbkrpFYTHmhW8326FYpBwjRMx6\r\n4e3XoQeTvbYzg1qFUDXt87gdlT0lUmrR+6p8h/FQJAkTdwWPLTMocYquKVg6UBxl\r\nb9bGe0ECgYEA5NO118cUk24Kn2GMuiuXbNHfY/b9NdkfPU3D4vUWPVbonom+xZl4\r\nJNWMX2sGbHQgNQuQPBWN27uhqpi8ADRtJ7wrh2tJv++mLrAGXzi1efSVNhdhJyn+\r\nrWUPaffC+Qs6RBg1yzNAlf20tAU1+y7m6YIs5IbgRF17EZYDj7McXcMCgYEA4Olj\r\nAcMsuaZ1DFeqr11ekt/bI2pt5c3Ft9rv/Weo69rhMpQRSC8v5f8q2Gvef5tE5JMy\r\npU1kF9oCSDypHeelOISOEFm7vXJ7SatpZqiOFfL0ukTMAU7cDL9bxQOHXC+F/SEO\r\nKDjTTie2vPo8kbpZkfUrNgq8ePShE51SmH67PWUCgYEAuBxHQRfizERLs7UPP3N3\r\nYIz0SkAdt0e8xNxe8ar0e+IDRBvcLKywaCKR0OwRvQ0qJMPrBwzomJU9HD/Lc/a6\r\npK/X7hs6uX2eng3u8op0KW3K6DyjZJl7WhPn9QDuFOcduFAqaBYSrxv0WquepT01\r\neUfNywliRF9ad+nVb7dS6XUCgYAq8waQGJha33msoLUcheUAgTUUv0c7Qh9Gq812\r\ng6wTVhn5EaN3OGOaNS8WYwr7LUhrqdxbCrtZfq0+5C6bYlf/wfhrEOe0Fr+KYuxe\r\nyUNQ17N6OpcGjOuil4xLxA++P+kDXKOadLeNTjIsRlD4tzBRmhLlYAl7w6Na3oke\r\nS90vrQKBgQCQcEqWy22yvz2POzolpksL2RkxktNZY8S1aeOaXuXRy1wT5h3Nmyy/\r\n1BmnEZL9UD4zQVnUepd7X/H2eTXBGNuQCrROl9yMLuzZVwleTXAIPFrv0ayRrJA0\r\nKZCU5sj/5+6/dTld0h9UQnfwV4OANExsWgPyiNo76qDRMKM2i7t+vQ==\r\n-----END RSA PRIVATE KEY-----', '-----BEGIN RSA PUBLIC KEY-----\r\nMIIBCgKCAQEAyQncTMIxmGealsj4YHS+faIdk1QHsa0wH+1yRrt/o01fJjdDMQ82\r\n14e6WMVrmY8124VJylARg2iDd81goe1nDnki/Bwn7B5RNMhzvY0RUqj441KJaAXl\r\nYOymdAr+P0C2CrbrtFHOqYz8r8MWR4Vkk8rUJZsEztTXzeBO9ClhSDPx0EVG5xrX\r\ng00yWaRomUpC0Dffn1BKXqeOhBWoG0A96FeAy18dIS6gay2P+xm1R7mtuUJdsA3N\r\n5TpHqWz1h2NtIABWEWFl5ysREgDz642G8ruY+RRH42PReaRxdz2gmGl+EIT2TWNv\r\nkW1X32BzloOie6hmbc4LzsNrn5MF4/l07wIDAQAB\r\n-----END RSA PUBLIC KEY-----', '2022-01-21 19:49:04', '2022-01-21 20:03:44', NULL),
(12, '0104518012', 'dhafiezlukman@gmail.com', 'Hafiez lukman', 'Hafiez Lukman Dwi Putro', '1642770299_96749b62d7ed221a0834.jpg', '1642770021_d937d5119ad121fdc827.jpg', '083892155226', '$2y$10$z52A9IviAZG44eI4d8qv.ethzttfL9Zl2gHDbCVdGvh4NgSAn7bYG', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '-----BEGIN RSA PRIVATE KEY-----\r\nMIIEpQIBAAKCAQEArOG/L2D7E4nR6OlBVNOUToh5sWijSMem+JWijn54+pwV8Hbb\r\n/Iog0kybph/kNS61goTmzz3Mm0fClaIlWexNvZx9yGZ64VB2x6f3KsPjbZfrBKg/\r\niEsCt6amgJQAGg4yCQWBpuIOKLdNcRE34jf/F6HUR+/FimFeaaqvB/QDAUYDSjev\r\n5L61EVn7DWFp1VzQ4nKz/aSxx6HELxuLHTscSx9ETY5am/EyTDY43tYNlkAW0MDB\r\nolfFqnQHQvaTC7m7uKr/TXjvOTAbgdYUbOQrYdfJNBdCJKVxItiRH1k/F01i/jNK\r\narpvEMVnLUDwF0rv4TaOWky5lVlFleNRhYysGwIDAQABAoIBAQCHJswxm91svteM\r\n/50FVYqhgmuwV58e7IYJ2+EDCLhHIvK71A/Sc6GJBj7ANjpPoT5g1MkjxqpH0me6\r\nVtJgZC26R7bFjegOcLsLBrJhilYnfRZLw8Q3JnzvWabc6dbSh7px9w4OiraK+hHe\r\njJlljmUr8mVj/3ws3EXU0YyX6RjYSrwnZRhHNaWkSrL7KbVBLWAXUvwfCUOtvc6x\r\nmg6MTS2VW+OnfgD6QxKSqOCcrEAiOG+/KkVe8g9QY6c2Fij0wg9DDwS1Q3EAozjs\r\n1vlx+IdD8O0yp//y1L1JKAN9mCIKAf3WjtXMvjSg6jDsSDKcxqFwlZesCptocX4p\r\nzPgIRpTRAoGBAN43wZfJ0fiou+v7VU3PGjRylsPzkR0hYMrW+aP/aklkkJUfhqz3\r\nZl+GG4LfqSLC1IT90zTFOHoH/KVIWhZ70MRAMdjk5DCzNIkph3keBEefkF8hFRo0\r\nIi85nez3foOeubWPJqoihV8DzdaJb+OcTn7YpIYGZiTY5eNwDbRMB9RXAoGBAMcp\r\n8IEnZZdp3WkSSKCP4CuMZRHBwfD5HIGL+WiwSjGdctPmBP9qx8dXwBhA96sqcIbI\r\ng8cedjJKCkwTJeuLOmHsn+zqUGsUETWgT0t3ZdWlW3IC1UrzvLVvUtJqu11uyIDP\r\niCmLA0yD0GROlmxXhf/FyiTcUZe6mPIGmXmVBmvdAoGAQp70q00WZjYwIM95A5rT\r\ngGXaTWT4XINlQWqx7Tjl5JsBvbN17OU/C+Ro2xOy4XkHvddbOrbl96/tTqAiYhs8\r\nu5mDWENHJlKTrYuF0gntvotX/S0t5m060m2zqxeIFm2/v27raJZw5ct+KpOJt/Nk\r\nlSLeMFA6z1E3mrg9Y5BnyIECgYEAjR0fJjOm3LCKy17EDNfESrbQCdPSOY4X74Yg\r\n8lcuSpc3fAIXem3LHWgEWGr30NRiJG3ASP5BWwJw51QN4yWj+SwyaCfhUO1IAEoU\r\nxPDVO5pM/6wYOmIWTCuTcDllhh7ve60P2feAH9+pcNjp5dvhuscGojVkrm/s3Fdm\r\nuOmpQhUCgYEAgauJdmyDmdeWGReLWBkhKwLEWFmyIiBFJXZc2S5NaqTVSv57RATK\r\nx1ViyOibYxOqFB7X3NrfxvBRqN0HGbIxtgvx/80+PSb36fdPq0UADTPET1haBYjV\r\nTLHHTX4j1pnyPfp+fnDrzi6qSr7+qIKYi5/XgvX01sixnMv+ZKv2qp0=\r\n-----END RSA PRIVATE KEY-----', '-----BEGIN RSA PUBLIC KEY-----\r\nMIIBCgKCAQEArOG/L2D7E4nR6OlBVNOUToh5sWijSMem+JWijn54+pwV8Hbb/Iog\r\n0kybph/kNS61goTmzz3Mm0fClaIlWexNvZx9yGZ64VB2x6f3KsPjbZfrBKg/iEsC\r\nt6amgJQAGg4yCQWBpuIOKLdNcRE34jf/F6HUR+/FimFeaaqvB/QDAUYDSjev5L61\r\nEVn7DWFp1VzQ4nKz/aSxx6HELxuLHTscSx9ETY5am/EyTDY43tYNlkAW0MDBolfF\r\nqnQHQvaTC7m7uKr/TXjvOTAbgdYUbOQrYdfJNBdCJKVxItiRH1k/F01i/jNKarpv\r\nEMVnLUDwF0rv4TaOWky5lVlFleNRhYysGwIDAQAB\r\n-----END RSA PUBLIC KEY-----', '2022-01-21 19:49:09', '2022-01-21 20:04:59', NULL),
(13, '0102519014', 'id.makmudin@gmail.com', 'Makmudin', 'Makmudin', '1642770235_7293ecc82be170f6a7eb.ico', '1642769552_ab7673da44e2a2877ec8.png', '089672231770', '$2y$10$/l0hJMfyCViYWY.Jvr2t6ewVkDtOWLdkwE5qj/huBINANjSOdjMMy', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '-----BEGIN RSA PRIVATE KEY-----\r\nMIIEpAIBAAKCAQEA3CgC1bFL7smgKJiGnmtHhWaxausaZDSJzsDh8PBKmo3vAAFV\r\nECyN50mC/fvEY0jflZPLaphpb7w6fK5vBEnY/v9wCM75mR2w4mNl0P0EosulK5S5\r\n3Q+yDnQ0U7I+OTOWZ1nnV8s91g5TO7ipIWc9PNRhLL4zraUTK05t7r+5Qt0Ad95H\r\n9mOhEz7Is57Bo2TTnm0DScpu2zna+Wyov43g8PoIXXtXAI1Jq3M24h7iwdmhX9vv\r\n+UOpoTp9sy8qETkgbGPjmJ0s2wJb70B3ZMAkWSUxkLnchcr/QJUetcU0CDaoGYNy\r\nirgqzDrzjj8XXlgfPK70I/6ExoPHDV4t+4nwVwIDAQABAoIBAQCX5/Osxx0BspWT\r\n7UpV3OgIoAcjIv2ezrGXu3cq7GJNqkmS01iCRHvVbt+3qBSl/Q5pAwWEk42Mz2/7\r\nv9BSQTI9ILuJGGcYw2fdjYAfZ7XfLmzVWVW1trLBTmUcqwxMI9BPl7UM2uvb2x6L\r\nQqtQpQ+X/WLfoI2/7vr/Eqq/5gJKozM+wNzajJ5eVfqvmWeqjEMG7et/68hnuCs5\r\nzAPdjWwd+LFo9dNnTsmD6GhOxIxSVgykvgrbzLKkf4yKj5QivsRR8BwfBakueP/W\r\nJY5KqgDikQb1EwiY8gJWsU97/YrKZduNyUtjKsm+7CHNdxi7YcBpt+1T8W4ZTr9l\r\nzgy4ThshAoGBAPl0b24TtwLTjdAfXcrAOkFiquRLM+SR1LMYDb2Rl/s33LDFU9a8\r\nuVD1yBzlsOyAIyJZgnSsHw2PwTDcnDjhUu4KGq2rSlx6zkBZ99IY73907dn3JkP8\r\n1mpnIQ+YPgWIVbFZZGf6okMPhFXxSn/CE1bK2k9wDIHc53OFM7VrV847AoGBAOHu\r\nx8HLbq3m/U0O4AamAMKKGqYPgf/cj42Lakyzt2NcMr67dkH8Nm05ioOsmgLmGd4Y\r\nPxR7udkW36BXJpgLOIQgugnMEh3SBt93RX7d2ZdkVHRwAxEkPS9UH1rgrPAABbSV\r\nkRjCL7FKDUX9vANRZAi2tt7sbbs0FbLdE21F1jiVAoGAEufvNhGKck1kVxy5eA9f\r\nmusGdqz4bt9aloRBLlflg+W09TTPaNv+05L9KquB4DrJ7uWHzJ3q8JUvmCtwL6Ns\r\nLJxZb0YnKaEpFpl6/dJj/G35RObFYKu9+Gx+hfcM5FBz5jAXOwY03A5GAll6QvqL\r\niq1vJEwitojuhcPXqm1LR1cCgYEAuXav1+/NDUg+ypDZadu/Z/LCaWr1hjliRgkZ\r\n25jzg8bdiSCNtSD69LJ1eB2p15NXzK8OqRvftctHC3I/JjSf0iajUQOKI5yTM8HO\r\n9JPc2J/tjB+fBOVArKdbjdg9Xk5GYLUehLpzOA/X0Yq2WeroORb0Cw7+DNx2q3s7\r\nRUo8zfkCgYArLL2C/iophlKSmu57CSzzaGWhj8/ugkTJerc7cpB3Ktfx6RpIy4/b\r\ncmTrkC9LgZpFNiO6SekZ5tJYnjDLVLOfQMyavG9OGjUGl/6CUMcxY+Z3j8o5Ieed\r\ntVpMHNsgm4D/uS8oaoIMEQfXPpngDkJ/m7/Z14IyXNQqQhgEU5YlQg==\r\n-----END RSA PRIVATE KEY-----', '-----BEGIN RSA PUBLIC KEY-----\r\nMIIBCgKCAQEA3CgC1bFL7smgKJiGnmtHhWaxausaZDSJzsDh8PBKmo3vAAFVECyN\r\n50mC/fvEY0jflZPLaphpb7w6fK5vBEnY/v9wCM75mR2w4mNl0P0EosulK5S53Q+y\r\nDnQ0U7I+OTOWZ1nnV8s91g5TO7ipIWc9PNRhLL4zraUTK05t7r+5Qt0Ad95H9mOh\r\nEz7Is57Bo2TTnm0DScpu2zna+Wyov43g8PoIXXtXAI1Jq3M24h7iwdmhX9vv+UOp\r\noTp9sy8qETkgbGPjmJ0s2wJb70B3ZMAkWSUxkLnchcr/QJUetcU0CDaoGYNyirgq\r\nzDrzjj8XXlgfPK70I/6ExoPHDV4t+4nwVwIDAQAB\r\n-----END RSA PUBLIC KEY-----', '2022-01-21 19:49:10', '2022-01-21 20:03:55', NULL),
(14, '0102520013', 'mmazzam4@gmail.com', 'Mubarok Azzam', 'Muhammad Mubarok Azzam', '1642770090_19ad24c7a1ca1605ddc8.jpg', '1642770023_18a079926282b0e05894.jpeg', '+6289627929495', '$2y$10$0vFfwS0GYoNv8D4rdEi1q.vwjdnzBsyTnZ2D6o8/0QQRTxmt/7BKi', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '-----BEGIN RSA PRIVATE KEY-----\r\nMIIEpAIBAAKCAQEA0pPNSmnWnWVNIxZ99m0a4dmu83oe+nTHEAVmzQmqsBTTwJhj\r\nz2C2sbdRPaPXzXGnnLB+dmz01fMGU5PgVk8WLBhwIbp6IkIFlFfKoZC6OUGk/SIN\r\nBzI14zevBZnKRRfkIC0uSGrC/jnEA9nFOc+ZuQwsQXRG6PPty3upHMrf0RRicnvO\r\nevDZ+hZEXsnfyo1uGhXC4txSAl58WtddqwQydY8SaImRTiTyw4PlJomfrp8elErI\r\n38a2qTleJ5AVdhoqs4fPD66G7abo2QWNu79StnL95pfD/rBcF+RPj6aPm5yYHE16\r\nGlidegH2a+mQ/GxczUXHKHLSLhaeHsAXBNdkpwIDAQABAoIBABdl2N+11uTyRpnp\r\ne+GPyfbiazAel6aYpy2+i+eodVDPX5/8zspSIrqoddx1ghsPz+H3MnYSMTo8oK1U\r\ntw6gBwSrSnpU8BEyaNBM2PUO0cJe6ug9ilkMWTSAEXB74B/BQdXZb1UYl8YLwR30\r\nape724bWNWyocOCdigScHvRWDnx6pbkeFfzC2bmb5BEGWLeiSOOAIq7bl1qDlGGz\r\nnD9WlZt8fnx4j5xaGVcpEDBZLeodxP0xudXj4BlaFL3AfS9qnz0LH/5CncxHKsfV\r\nHseOI8rp+B1Gk9odiDldU5f9jj3ewtCE0nur8PZt4u8K8VPnwAJ43hhY8QJL/UuR\r\n81U8OfECgYEA8ik5EXPc0wL6EHfKd9V3BOsEbNAOGQi8PBIk7Ohwu4rIhRJZUt+P\r\nCc3MdrqlFxv1vSIOm34AWNo8dpnErZwZihp716qUd4WfDTL9pd75hBFqWhCSNxKd\r\nr0ZSQdUoPezX606hn3Iwq4cqO9FaXkpDMfZEkf5WIlas0VlA08G3VTMCgYEA3pyD\r\nzpNRZBw/XoxsZW1IdBbqTrnsctY8IQVpCcrX6d89uqcmL8Z71e6H2qZXw06KwbzP\r\nKPdDzO0TDIsCWvz0Fs0iSeP9lRrvxk8zegONOvS0KT3Gg0PpiBXJkKueF1hkU2TZ\r\n8UeI4XujBL+eBT7iXiiarNw991+1v9mP5QEwir0CgYBxmKLbrAU/uxrBFOCWfD17\r\nwh9uR98FIVLjvwMxWwxe/Yh43BWoyZRY3gB3BbEh+Qy6rzo4+M+C3sUUQafAZQSa\r\nAzhq/+rrcnQdBfl0kPdtW5oPK8zbJtFvgkZd+XcKLYtQJ6+rky5/mEVYkCmbJ60D\r\nx+l8rtmK/CvPfNXrP+kXfwKBgQCXvDl/khzVTwfGq5KrI+1R69iz5rkLoYmEvIpX\r\nOWMor5kE5C/8Op9oN9l0KRQDNUMRQWA3PSuCwEnOr+XgHTFHZXWsxfGwM5ciJhQh\r\nY9BdUjSHM+tex+ijcK5epQvyP7bKvSBs/OSJRVvdvbq5Op7TrXuYvdqjBiL9bQ9O\r\n+hubRQKBgQCacT/v4GupnZvqt5mwwDM9uApY2WeDs712J9fFeIXnGi6equktsxxM\r\n4iIp4We1jbKhQWf9wA3LpCnjAMqgS9I639yy1fysDYzgfs/9nEO5k1b6W0D2xfAY\r\n8QNfU3NWZ7Z0bqGjc8LcXFzQzrLSZLqOxSuaKxpFHactm4j3x2l5Mg==\r\n-----END RSA PRIVATE KEY-----', '-----BEGIN RSA PUBLIC KEY-----\r\nMIIBCgKCAQEA0pPNSmnWnWVNIxZ99m0a4dmu83oe+nTHEAVmzQmqsBTTwJhjz2C2\r\nsbdRPaPXzXGnnLB+dmz01fMGU5PgVk8WLBhwIbp6IkIFlFfKoZC6OUGk/SINBzI1\r\n4zevBZnKRRfkIC0uSGrC/jnEA9nFOc+ZuQwsQXRG6PPty3upHMrf0RRicnvOevDZ\r\n+hZEXsnfyo1uGhXC4txSAl58WtddqwQydY8SaImRTiTyw4PlJomfrp8elErI38a2\r\nqTleJ5AVdhoqs4fPD66G7abo2QWNu79StnL95pfD/rBcF+RPj6aPm5yYHE16Glid\r\negH2a+mQ/GxczUXHKHLSLhaeHsAXBNdkpwIDAQAB\r\n-----END RSA PUBLIC KEY-----', '2022-01-21 19:49:11', '2022-01-21 20:01:30', NULL),
(15, '0106519023', 'nabilawa1904@gmail.com', 'nabilawidy', 'Nabila Widya Azzahra', '1642770022_2c3dc4655690b231b264.jpg', '1642769913_7209b28801f1a11631c1.jpeg', '+6281908882001', '$2y$10$B9H5CtpKywtzquJbgbuuhuPWhcYvgmSR98iJKkwOhClpfnfpJt2te', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '-----BEGIN RSA PRIVATE KEY-----\r\nMIIEowIBAAKCAQEAwTtrh0i2yaFyTNFbjs2+ZTFaRji6CkY9vm1uUT9rQA8u857H\r\naNuX9/bRn/fuCLBNS79gdt/KTB8IL2SAWLrQQ+WhxU3wsG/52SAcTbPEQz3J77bD\r\noodk1dEJLvwkLBbKpWoK4oAOwWl+PHPvV5npRELTcI4ML+oax6QpBmgq+wYKOEAU\r\nP7HHrbObmxQUub1e2j213UKFm5lIAbozD4i6smGOIxtLUsd0hwfGUI46zIOchI9T\r\nOtO/C4Ox5DC3s6PuNkiS0USJ6zxtZNqzyHVuV4LsAI4A9f9wGrmz6gqkcc54/ud7\r\nOOE1y3heZHpixmQ4G9lSL7WnTJ7nX1lE4wY2ZQIDAQABAoIBAQCV0Pghv6LY2a/B\r\nF2Ehayt/UbBoWXsElEky561smPsSg7Mnd6esCPXebyNAH/4SBn8nh43HHOO/+R9j\r\nf0xzfwQSYGv4ieFfKrJQQbEwHXzBlZqHnPA5hzgK/zNblmqFNHaRoZIm4pqOIriZ\r\nLloXVWGiZx2AWuHgFGYG+6RDL2iDjmN8T+FoajlZr5xDWXA0xTO27BhHWWuiLrjF\r\n5TPQHUwgCwt44RqX9lQyqCI+fJOJqRSiBwa/cbTMUIuND0SAJFRhLgcCFBAWLhrA\r\ne+KOPfnbVBHI8stagHbEhTLZHAxWQPTmpykrMr2upnSz2FeckhyHyRxkCT4DerMM\r\nM/5fMTvRAoGBAP0yOFCKtSaDI/eRJmxb7UFycjRHeals2AXFD58eyJvPSmFxHTbk\r\nL7cT7P39DuCtfP/jTESyMJuSJ+sifSoCi144qPozr2CinZu7dQYef/Cgsw2ux0og\r\nYpNZWTNMQahfPV8oFvjcmwkmB+66cxZpiyxeyvfQ9UDWp9p8KjjVY6OrAoGBAMNf\r\nNZVGDEeB25tRYZ5hNi+aTHKDf15FO8W6+T7ZWPpSwswvLaSUO733+EbKmyHna94h\r\neaqvSbMXoZYKGI0R7PMIooRxMN7UBp727nrZIj/wf+BuKyI4w9n4Jvg2C2Ft2iN+\r\nhm3AopcgT0SgY+ccXt/ganM2cBn6Q5kI9G4Uh34vAoGAPB9Ss/1b6ps1TTIQV6a0\r\nfdf5OmTGhO6tlSEoBna+2BCu7th3QXOJyQVYPy95+uv3RKPqll1hoW9hPzpfUjxs\r\nb6EwrsjbGi1DE5m9vgg8BR2DpvobpIRwI+ERh1bSOHL1FcVlPw7TWabIN23aqjXB\r\nsHWJ6LKbqhvOm9jkBb7V/CUCgYBtXUiTbQjGpoyWHzI0BFrevtL4b1/HF55kC0wm\r\nwGgsiFN/FRHJxSjEKKEUj6nTisY5LCf9Qe5RkHLlmHUx0sz/JuBCn1IqCipCphvN\r\nLOsdO7V5nnIK0BfiViUKYMZyHZo0sEjz+xeI3Y9B7T6/SoRZcjhkkh6ijBN3ASpC\r\nzL8kBQKBgAgOPXshCaoYbh9gwpsAwBViERSneRQiIlKkQ1HUB9PdAcq0vq/resCO\r\nPoZb7McXwabH1NKbA/zIjoaxj1WmA9IgW/5OYOT2ekJFEmEXnSud7/yrEMnn2gMY\r\nHQ0n5YaqrIN+o9JwXmfxwMuwLZ6vneiV7k6HCNk2MLjFsft+cAim\r\n-----END RSA PRIVATE KEY-----', '-----BEGIN RSA PUBLIC KEY-----\r\nMIIBCgKCAQEAwTtrh0i2yaFyTNFbjs2+ZTFaRji6CkY9vm1uUT9rQA8u857HaNuX\r\n9/bRn/fuCLBNS79gdt/KTB8IL2SAWLrQQ+WhxU3wsG/52SAcTbPEQz3J77bDoodk\r\n1dEJLvwkLBbKpWoK4oAOwWl+PHPvV5npRELTcI4ML+oax6QpBmgq+wYKOEAUP7HH\r\nrbObmxQUub1e2j213UKFm5lIAbozD4i6smGOIxtLUsd0hwfGUI46zIOchI9TOtO/\r\nC4Ox5DC3s6PuNkiS0USJ6zxtZNqzyHVuV4LsAI4A9f9wGrmz6gqkcc54/ud7OOE1\r\ny3heZHpixmQ4G9lSL7WnTJ7nX1lE4wY2ZQIDAQAB\r\n-----END RSA PUBLIC KEY-----', '2022-01-21 19:49:12', '2022-01-21 20:00:22', NULL),
(16, '123456789', 'rizkamaharani1608@gmail.com', 'rizka', 'rizka m', '1642770751_bf2a7e29c5589850501b.png', '1642770751_e5ae24d7b526bc5c9ea3.png', '081212121212', '$2y$10$EsGTbE7tlQP6cJjCVaLrMe4AbzBOUBgefegjaZmxWIg.JXoPM.VdO', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '-----BEGIN RSA PRIVATE KEY-----\r\nMIIEpAIBAAKCAQEA44zGmQpFPTUUnlNksJUPISq04q14PZ7bbGrBbbP5+yYC6M0C\r\nEX1Dbt4ur4re6wDM6UbQPOX9uIfDZRXYMuCONfx1L6x232JGWc/6WmprYnIFq3hl\r\nggs11eHUNjr3laZ11qK4PLTeeIV7gnG4/W2Qj1I/mXNYsnv1EuOWZOnO0UR6nftU\r\n+5LuIBNdAGpTU+jK6Fbkx2mQT3fJAfnZWWEPhc66wBOp2svS2bz+kFu3Brz9mMD0\r\nLffG5WUf2YG06o1yQ8YbJEXOeAKZ5HFFGxq9u36XeQitiQTU1MO70uRaOtRQ4vi/\r\nUgw0YQ8qUU/nERUVc1vO8IZFl7b74p1Q4j1K4QIDAQABAoIBADg+iKw1TK33W9RS\r\nmpXHEklJbBKHfCwHAweGT69VCBoa6Ccw3S0DgFJ8GqALPFRsCzox5bDXzGH7NMHc\r\np2bT+HLBpxmUkIFgojD65k/I9CgONPaQOM7vBGyMeE67Po0/6uqVp+JhdoflvoSc\r\npXQGy++RDeVZDHh5iTcVCAyDejphMmCBeei4YyJvy3BmNpmQ4+OyDnR3WdWsIO//\r\nMOp5ZViRu5Po1VOQrn8U9ws5h99o9ruPtyMIuh9ckjtQ15FXc1WjOzkPcYDAhzea\r\nHQtDF13bDXmjeUiLnsQokWM/cNRMw7QxTiSb06zIGLHBuSwAktz/gC6T6FDbdJNZ\r\n3Dx+DUECgYEA+zSFnlVYNgipvwHVFVSuJHN2Aia+YUiQTWU+oJlQDbCz4t6K6yQ9\r\nji66pLUifA5D8gaYnslA7DAbjfcYNbQwRK1rU9kUx5g8/RRPPArTTzQLnDAYc+Eu\r\nCtT2oVj8Qh1s6L7X2MKfjAF28XTnjn5SVrjDLhZbHJ5Ofu/KyMLBxJkCgYEA5+Sq\r\ncWlNarh3cnf9k5eI8vezQiKns8J93+Ye2RTc39sHp9QQKTTLJGKjTp3543vRXk85\r\nDvIUB2opozTvv8AvftTZKSz2/NoE28GOlD0UZHqcMRWwSSSHm99Z93l3gl2ShL78\r\nf/9MKU3Z2Kbj+jsmg6mR9Nimaa1ho2rLlbFL3YkCgYEAijExlJHUrh0D7K0AYPSt\r\nvCW8dKCFuRTnNXyOAGF29aEQxKyydXsBVfeE+9kduGtMm5dfXHLQgV5Ruj6Flf2j\r\nVBSm54CTet3YJ02F7TzzVC4IeQrIWO82mgTgDJDcbS6s3DkomvkuNiIUIe6y9+Os\r\nPkL0NKVdyBeajSAzSVBCsnkCgYBbBjI1VE1UL9aLMzhxP9E89igCNNI5SIXaZl0D\r\nfyH4KOTHZwF0+0kmHiXWTUJynf6gE17lU/aytmRjsPrO/ORn16rqc8D7naS8kiyi\r\nWZtwmYRH7CiHfXRRpgmNj7tui8ZgnwtEPvUpXWq+lTv11FQY6G3ne0dPQgSKffgt\r\n6StLaQKBgQDyY3VSmQ/3eDXgZHoESmccwa0GCz6bNAQiwxBSs2ZdLEV1BSBqhqwu\r\nRDD/dE44h8FtLip3QPrWYnnkSAHqMTKndEhTY6TtaQl7jFtVBE8piu3WiCU7eMXb\r\n8kHc2UJNtGZmqER8TCT+6I6otT9Re9Q3BECCHlxyjH/slKhAFMQGjA==\r\n-----END RSA PRIVATE KEY-----', '-----BEGIN RSA PUBLIC KEY-----\r\nMIIBCgKCAQEA44zGmQpFPTUUnlNksJUPISq04q14PZ7bbGrBbbP5+yYC6M0CEX1D\r\nbt4ur4re6wDM6UbQPOX9uIfDZRXYMuCONfx1L6x232JGWc/6WmprYnIFq3hlggs1\r\n1eHUNjr3laZ11qK4PLTeeIV7gnG4/W2Qj1I/mXNYsnv1EuOWZOnO0UR6nftU+5Lu\r\nIBNdAGpTU+jK6Fbkx2mQT3fJAfnZWWEPhc66wBOp2svS2bz+kFu3Brz9mMD0LffG\r\n5WUf2YG06o1yQ8YbJEXOeAKZ5HFFGxq9u36XeQitiQTU1MO70uRaOtRQ4vi/Ugw0\r\nYQ8qUU/nERUVc1vO8IZFl7b74p1Q4j1K4QIDAQAB\r\n-----END RSA PUBLIC KEY-----', '2022-01-21 19:49:16', '2022-01-21 20:12:31', NULL),
(17, '0104519002', 'almapertiwi33@gmail.com', 'Alma Pertiwi', 'Alma Pertiwi', 'default.jpg', '1642770750_ef43dfcb10aa4fe9481b.png', '081283251199', '$2y$10$70t4dWH4Ag8pcYsoH0vgReurJtgCHYWBx0IqME5aY3ulT71sXyU9u', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '-----BEGIN RSA PRIVATE KEY-----\r\nMIIEogIBAAKCAQEAqRT44vqT1iEHY7biUTjuEzNzK/uQwHQHdtqd4zZGyAHC+0FB\r\n99tljblNC1kaC2s4fXSagIZkgbh1AmdNYF9iz2l7Rmc8tOeBEGmHKn5HBqUlDu7G\r\nPDEVHI6EYdfigyD3pJyMscG7UZFFFHoin96Q2vzsxNChNQl7CLJQzDmy3A3YUQog\r\nt+KdQPU7d7B+wKKb9JjTOtmuLvQV+rDInIMWRlL6bfBtvO4uRKltykrgE+tINFH1\r\ndXb4UYUHKMkXUf+/me9CMxuEJ+bb3XGFu26/PhmPdhAXE1LyNLTPzBeri4Gt4j5s\r\nMKBdhWsv9Cc9oIFwrMR5AnLuMDcb/HwcpU9TQQIDAQABAoIBAEusIjPbt9yGzbrX\r\n9/QoCY04YpxVq5QmmcyczTsKaKVM/Incy/x1Cb9jJlMk3p4rr42eaSOKgmL4Pg4E\r\nU8IFDsELUWvR+n5weffxctgWygz0TmCfhsMbqHouYpsztqG/WHYoxmMr9HzuCj++\r\n5c4tGyGXPxRa1ztYceMTg0vTqvQG13znTXOOnmh3USy5UJJHVgqahjV4VUw78rGg\r\ncCPHXZN4xkHWFcZQQiD4mvhHbbqt+dZnyeyFtBJpVl5dDOsGhWoATklyEE/4x8rs\r\nIQPpPY9qF4tbjQkXBdtDNuFMrypb8M+cEtQbKLKFkUcmlOK3zbT7Is4Ipc6KwNKx\r\n7sQMuc0CgYEA4HCvQRjKo7q9waJc+QZJTB95ETWl7OWnyvE2AiY04yDp+Gu2iSsM\r\n//rn7lVApPQ7OKWMED9WRBDaP8r9BoXuCo64r+BvAxX0pMrKnkPiM5WS6j19M8lb\r\n46Z3ITuZAK3BigR0dCPh7hDqS3wP1dCeycbOmE5fSPJD4QsTXiOmCF8CgYEAwNuF\r\ngazC0zC4TchsC55VOW/kZFNdd88xDcL9yvSEJO4AgqCeSQrvrJIxCrRFRow4+wjx\r\nD54vkkYMds9TraWTM0EemiC/LyPvBdLTNTciZo8I27klBobghY8YfaPC31jbi2AQ\r\nRxI74BwYeQn9Rg7ymB+r0Ggl8NDYfAy61dzYyF8CgYBlSzYtgQzjvEIsBCVF1sp5\r\n6rJvS/Eo67VA6IBhk/DGmXI/Rg3J9n4VgZ3veNaGHBwmQsDmDE/YxGpb5DcyHHwE\r\nk8lSx04S7HPPdB7iMu0CLv1xbnL1TmmEYvrdKtKw9bqlmcEdMZykH0o+6y0SaOdh\r\nVbKkFqr2dzCffqotEJW8rQKBgDO1qGJQlBxUH9abOn0TAv7XhYFw6MrK/vgVpD7a\r\nuOO9/N0Je+dRy1mWCRg5pal4x35ns1rgqxipN4ZTqLgSgRlpCG+DAD//foMtN/w4\r\nwDyHdXSUe9z4JRMqfwKQ+hswlA0WwMaNmQhKADXT+9jhASLQuxyyEBo1pRX9w8q7\r\n4FQ5AoGATMR3X5qp557khMk2TqU6Aiq14Iu9FDQyCu+cJCazNrWJEb120h5NPeKC\r\n2oLhs/IebO8kMubPkpIeCS9uqATXrvEnlZCf0CLD6QMjyf3bVk5Lcha+iOM8V2TJ\r\nOPaPVGrxbQBS3uC4e8+Y2wuu2ohsLnujwjE0Y7mS1a35kpIx5UU=\r\n-----END RSA PRIVATE KEY-----', '-----BEGIN RSA PUBLIC KEY-----\r\nMIIBCgKCAQEAqRT44vqT1iEHY7biUTjuEzNzK/uQwHQHdtqd4zZGyAHC+0FB99tl\r\njblNC1kaC2s4fXSagIZkgbh1AmdNYF9iz2l7Rmc8tOeBEGmHKn5HBqUlDu7GPDEV\r\nHI6EYdfigyD3pJyMscG7UZFFFHoin96Q2vzsxNChNQl7CLJQzDmy3A3YUQogt+Kd\r\nQPU7d7B+wKKb9JjTOtmuLvQV+rDInIMWRlL6bfBtvO4uRKltykrgE+tINFH1dXb4\r\nUYUHKMkXUf+/me9CMxuEJ+bb3XGFu26/PhmPdhAXE1LyNLTPzBeri4Gt4j5sMKBd\r\nhWsv9Cc9oIFwrMR5AnLuMDcb/HwcpU9TQQIDAQAB\r\n-----END RSA PUBLIC KEY-----', '2022-01-21 19:49:20', '2022-01-21 20:12:30', NULL),
(18, NULL, 'mirzaalyaf@gmail.com', 'Mirza Ali Yafie', NULL, 'default.jpg', NULL, NULL, '$2y$10$cZ/I8jQroZ2dafdsDdn/6e6gMN7prf95cgbRrr/3WvSYMBKFhnSuG', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '-----BEGIN RSA PRIVATE KEY-----\r\nMIIEowIBAAKCAQEAklcO/iEkt99AEUcE7Bv1kddvuUr8X3XeTNXASqe3BUTzHvkG\r\nk4s+lVNP1vtMVgNDRvwZqwr9EdHlBG0UMjbOtgnIpyswq/+Egceb4qKHqEHvmwML\r\nZq1EqFJNC68E7v7YPZLgU5tVTw3CZgyEHTJUdH6FZujHT/FdS/9JpaLpImDFSB0j\r\nf+i6i4uYEx0Cjgg/4shzAUIpROCVNuQUl68yEKdNdMLvx7mpjjK+iDm3yVY3Klhx\r\nVo1h2YcbxbvhkUP3KAjkqhqtKQ047qIBecHOW9tk/cG7rXj0kyUd16huoJXJBbla\r\nbj1/jloVqLYOZTTnmLMhDvwS9ZXVX3MrQuoGvwIDAQABAoIBAB4RmVkKQlstmiJy\r\nr0Y8cHbpB2HRUI3k0CqFeR9d2rNQeYwRqxJB+DgCiFMqC4NY5Ef/oN6OQXWZ5S7F\r\novK2ZD7vP7VpoHSW6gkolJU6xBkEg1EcjQkp7QOQ9ZfC/IaHArOULFfBgQPfVeRW\r\nCgddwhC1tn9wsRNyCrOE3wMTuEeBvzzSiyCcWVHN6v7QsfALrlE0JSeMjSjUbaQH\r\nUfLjGniOgVgPAkLNHahczn1YI5FMqiTdcul1be8CcguBaU0thlM81j3hEAt7npQv\r\nale+jcJinlZud5S6LZztvfF8wW9MmaeBPZr9svtdNoW+0UG5CoFC+qo1PBSL7Q3e\r\nXRRG5lECgYEAwpleq4vemH0nCGerybLMpHnBXoBFNB32fq1ehWsBDJgo0I3Cvwo7\r\nfCW7NZXcCS1ASv5uAZ08VzD0dmRLwo93HyUGg/+ZZkEP9PN7M4O8ix1dMzqM18AO\r\nG8eob5rl6pv2L47qA9ySrOFX45mtfMoIiIQDnvxT2+Eii+hum3UypAUCgYEAwIOX\r\n9BwzT9TXrPhxK3VrA2H8H395DAPKSv+ZSv9qGYnQPIVatsUvY0G2yW27/xy/IS7G\r\nbyLlc6qBNkg9bEGCQTQJANZ4pcKLWfYYRSzK8mRktMPp6U3E1nRahUO+FnBDHNO3\r\nyBjscurAiMSZfQaxZ6r+vyaySRF8Ch/r1GHs3vMCgYAuDcn/40w83nGcZZycUXpo\r\n+n+u88BtAyJQ/IrAHIDVEDWolcQfHjbRvMQ/fEXkzhbHKMu0Chg7slRIqJfdZcKV\r\nVlfiaV1Oe9tg5zajDGxUqBBkjVjDvqoYHPpZ31jGWz66JqJvY4Y67+Gy9a2/OLko\r\nRcXtnF3kTbW1Ur7Kf8QKWQKBgHKpbkXszfsMcHELgIw74UMgh0RTbktjrodA+ZKb\r\n0hvn42lInCEkDPd3WmFaxJBMFOK0s2faRwO/WDp2iG8EDYq8bWhcVXuVBd7NHuOE\r\nrFP2y6yGy7kzoruAjbG2CW/f6Xkv+NRrU9mWTJqpTioTZHK0fApqB+JRUanOHW5f\r\n7O9VAoGBAKPXf/NhIa2ip/VbUwJUteBIeqJPqQvslAYXNy3SkSh/WhPFjn9p/0Je\r\nrxoQi7IrdJWQN7rOW6en8cV5kVqh0e8Yg8KXz2Es5mn0AX3RNzoXm9HZ0GFnao11\r\nYi9UIdmaz30s8AZn3JiW1kHDGMHLjpUjBpGMlV3aKdpXP9hLFBJG\r\n-----END RSA PRIVATE KEY-----', '-----BEGIN RSA PUBLIC KEY-----\r\nMIIBCgKCAQEAklcO/iEkt99AEUcE7Bv1kddvuUr8X3XeTNXASqe3BUTzHvkGk4s+\r\nlVNP1vtMVgNDRvwZqwr9EdHlBG0UMjbOtgnIpyswq/+Egceb4qKHqEHvmwMLZq1E\r\nqFJNC68E7v7YPZLgU5tVTw3CZgyEHTJUdH6FZujHT/FdS/9JpaLpImDFSB0jf+i6\r\ni4uYEx0Cjgg/4shzAUIpROCVNuQUl68yEKdNdMLvx7mpjjK+iDm3yVY3KlhxVo1h\r\n2YcbxbvhkUP3KAjkqhqtKQ047qIBecHOW9tk/cG7rXj0kyUd16huoJXJBblabj1/\r\njloVqLYOZTTnmLMhDvwS9ZXVX3MrQuoGvwIDAQAB\r\n-----END RSA PUBLIC KEY-----', '2022-01-21 19:49:29', '2022-01-21 20:00:03', NULL),
(19, '', 'mfadhilgva12@gmail.com', 'Muhammad Fadhil', '', '1642769813_37b4d659d50ac9440a46.png', '1642770639_b55f8f813b0cf345e75e.png', '', '$2y$10$L4y8532PsMkyLlG3P79/re4xywk6LrQ8DNV8BQDvixow3nk3pKBIa', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '-----BEGIN RSA PRIVATE KEY-----\r\nMIIEowIBAAKCAQEAvjeA9PXESf3uJjey+ABCPMXoW9rrbosaXgekEXanj/2OWmRM\r\nTMFpjUDr+AI5zU7C3yM60MClFChIwjFt1AX9PE2EbG8K/qFnHQaGPjSqP4xSiE1X\r\nu4Ge0gvoZmj5/MEhb6ihSS9HudAB6TzCfIv2bHD1lVxBqfl1HMqoxGr6xtuy5nsn\r\n824TzhoJL57mIE4d0veUrRBeWLU+mzPEayIkjdUh4xQ/eiSqQQX0yWap4BBKp8sj\r\n1+DyQiufBL0l+pAP/eTL4uzRmUXsXM4v1zUmTPz2tFzgNlw04UdQDitvneFq2/Ns\r\nUn2PbCh0jnV+SIPXs259M35MspKCGwSEmOLQBQIDAQABAoIBAQCBgbCfFyVJa0XV\r\nZ17GUwbF8ci9oVNhs/uDwZgG+84hzvQ4vsjkCVsf/O+rr3hDPDiZS5cjwcWi77p5\r\n3MV18Y30nKJoYUIPEzztGiAUAi9XjOY0PtRYqWvEfq7/6sEpQSTOrPUCqtoevGxQ\r\nrDmOKozgUBgkVOewHlOKAsDc2ilbcdIYE+Ue0N92bdkp2oo5Z3IIc9MfuccVaSvU\r\n/FYN8oPcVpCRyaD49Wx8GQHp2LyJXe8d5ggyzxxihGXJk+A4IHYSvnejo1pfGxvx\r\nPYZzHVMFmWv0jFF/K441R8dGdiXr54MeVtzxPaH4/BNvQEv1UlFLQEjZygSfGrRE\r\n0YKsAk6RAoGBAPzj50zKjo9KMetBKJsC1d8XOiC+/yKKA5cFgJpAQTrZ2AgwSjKE\r\ndBq6Hn73u5h5PVWctvltedQHAc3/0bY3iFPIEyzvEpWxyjYxRBuRdn+Gpcr9XtsX\r\nxFxVH2aoylw124XpVkhR0a6Tn5X5cXVqKrWklziQU8VQCwiIUB2XNjfrAoGBAMCO\r\nTgOsM2hKo/uOGXZ9XY7lYekLBjOqP7oXrxuyQOZQKwROvYzjM6OZUuulxhyQ4EPa\r\nMKggmgY9XKuldrqTosqUwddN17iS7em8OgK8R4g2YG7x8pRZbeL2MYY4Eas6Oxi1\r\n+GQw/Oq+tHKnuJTrTS8y7mCliVGbrUyMlwe2TYvPAoGAYcnG4Rzab3IjR3MUvowk\r\nI3YZ1hvFEJgJt1Y7WmpKTvV54gC6UDqDouohbLti4RzQqNBGuMCqgWCMRBoN/8YN\r\ng0g0kgWITDZJmRcH3Rkslzd72LiM+29/UKzhzZKrXWi+EFQgNyrcSANxjE6+nsaE\r\n6WRRzV+R5RSEj7IWOLsGDi0CgYBU3iOqYLpjrAosdEvquoSC17zYruAz40SlK40l\r\nQuJx4EGla2MF9pmq8Ifojq8LphsCLOenIn9gYqk2if4Ta8CjUv9AevGqSzALBcf3\r\nrq5EbdsA6yiElAnnr6TSSGIZOtgTIxjwZ9sBR75Wjm+/SxpAxEzmUe99BYVTKN/k\r\nKUhyZwKBgG2K/sHIt7aDYv4JCcItqswlOFEamkMtN42vHKU6YeaIE0JCTthj+VBA\r\nyLasXNLNUaITHQfMH9APEvuNecd1TJCOb1DKlMQBKSJ5h2XOpCZo+NSvZsDCjS1U\r\nv/nn9Mcz9f4/moGkQ7aCiiGvTjU9nIXJG9GCXnERB5Tz/4/EIAmX\r\n-----END RSA PRIVATE KEY-----', '-----BEGIN RSA PUBLIC KEY-----\r\nMIIBCgKCAQEAvjeA9PXESf3uJjey+ABCPMXoW9rrbosaXgekEXanj/2OWmRMTMFp\r\njUDr+AI5zU7C3yM60MClFChIwjFt1AX9PE2EbG8K/qFnHQaGPjSqP4xSiE1Xu4Ge\r\n0gvoZmj5/MEhb6ihSS9HudAB6TzCfIv2bHD1lVxBqfl1HMqoxGr6xtuy5nsn824T\r\nzhoJL57mIE4d0veUrRBeWLU+mzPEayIkjdUh4xQ/eiSqQQX0yWap4BBKp8sj1+Dy\r\nQiufBL0l+pAP/eTL4uzRmUXsXM4v1zUmTPz2tFzgNlw04UdQDitvneFq2/NsUn2P\r\nbCh0jnV+SIPXs259M35MspKCGwSEmOLQBQIDAQAB\r\n-----END RSA PUBLIC KEY-----', '2022-01-21 19:49:38', '2022-01-21 20:10:39', NULL),
(20, '0102519026', 'rinaldi.mahendra@if.uai.ac.id', 'aldi', 'rinaldi mahendra', '1642770175_d0a610d645c919bad1b9.png', '1642770757_ba4775ac5afb065e11a7.png', '08333221111', '$2y$10$PkTvHFwjScaxqB8RTWN9Xe2.QRm3JOcFWEYHWGzZlJIqTSO2YgNH6', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '-----BEGIN RSA PRIVATE KEY-----\r\nMIIEogIBAAKCAQEAoStZJ6syEQTSBsgdD5Xqc9zQWGTD1je7WcoiziUgP0hLfIoh\r\nKE8eQIzOaiTc2eyEPkNB3gDokrTBbJ+Q203tpj5kLgKaa4Zvts733jT/Y6ijdcfk\r\nLy+HK5PKbgfmqhoRAksr3lasJ8o6QVz0kdgdIHv8GQBp3UCWXXgvJvrFp2U3YX6V\r\nQCRpaMjX4HmMiVXL4bdZ7ehPWufSo7/HxovClwkHzp39JUeWHi5ne8MRoiJcEFjM\r\ntGtE9rynmEZn7TTK5UTAfkU+xucE5p8hp6Qhbj5hVgMoyx6/DvlSb7EIkFVReKZj\r\n5MoDue1W01gePDDHC6SLU0fdxw049tlkQro7GQIDAQABAoIBAAUG0RUHpdwaBmLn\r\nwuBFkLZkYKshGWqI+nLmdwdu6P6QRqpvtHEJZqwkuBtfYvP5CHbYqik+ZgKNWKsG\r\nnwH4AD17HKzCsAZCfyF4ewqXJI/7Jn356gf+t3yIc3vTC0Kq5XTo20ln8p6bFA4N\r\n1CLoVqA4vbgZ5zNbXFU19mKE171Mwi3Iilby44ABhXU6mqM1zOqhG41BmEJUYSGj\r\nDhpnovBfRdP5R7VvT3+8k0ymPPm20D0umf36r9thMYVigkh1gVNlXm/ZpyhLrz4r\r\n0HdXKirWDlrKXY7yVzmICZas5+IPbDUiu2PLurA6A6uFVCzjCv/1o2MAUJKHOK91\r\nFz54rTECgYEAy2zneksSyprwoNcDqCYGtbhZc3QQu5b7TynJnoaSMhOTcUcFNiQx\r\nfGgQzfw8Zzzn5+aGjpp4zk/WUlduoR+Xb0BQQwfhzNCg1Ag9B59F9sYObYMNkPDU\r\nzL+N1KJRCzQBJvrSxFMy5S9u+/9tLeyI7kU0C6wd7/0Awd08zJG9V9cCgYEAytKv\r\nIwl0geLB/RR5amxFjVc0C8DWYq3NBPowTqPz4qxDNu/peYN2rB3PERQfwvMIHH4h\r\ngChj9KPDJtch9oaAlCRd94xrlcnVBw4YIKa5J+bIGcrafyPyANrIyJv3dzpZZIj7\r\nIoIrmUlHQpasWr34BHw2987HSh08qFyFNY3t5o8CgYArdj8Wf8eqBeR3WLjtSgKQ\r\n/KwP4LJage17gmATQIknrcsInrXcVWtFOy6r88IsBHU/tJ73BMXevmv597gpMIi4\r\nOjNrvtldWw2hf4kagcr+6F3Yw/E4EFxGyn5Q+cT68cd1Po2daHEtSi8aI/59m1W+\r\nIob2H3Xd+l4ZDV2aD2E2zQKBgEbGUBEE2p/8Vb8PZvLpBzg0BthXGThj95fWCgdX\r\nFOKzQ90myKz7X+zdlgUapZ6smdb/eIc1EPQsNQwXpCVXeAS50ARy/pPNU0Xb+DVk\r\nmFXBJXBCpg4Zp/f+YHQIYMk9FjaLyj6Xd8lMlc45r7kWczZ1deTxRf+pxiHl7yHp\r\n/esnAoGAUw9xQApP1pXOSS5nvL4MeL8jY1WIr8RBdQmIK8wXUEggPj2B2TQpF8Yu\r\nPIa1MjkYVpu4OL9ccLg6ZdFHoXTVMHd02M05FdSQD3tW5EOKCLnm/4zBTbVp0vRG\r\nLLR7Wms5cRl46yqC2HSSeZcm6sqH+SxWO2XXBdL+94qoOGdwwFw=\r\n-----END RSA PRIVATE KEY-----', '-----BEGIN RSA PUBLIC KEY-----\r\nMIIBCgKCAQEAoStZJ6syEQTSBsgdD5Xqc9zQWGTD1je7WcoiziUgP0hLfIohKE8e\r\nQIzOaiTc2eyEPkNB3gDokrTBbJ+Q203tpj5kLgKaa4Zvts733jT/Y6ijdcfkLy+H\r\nK5PKbgfmqhoRAksr3lasJ8o6QVz0kdgdIHv8GQBp3UCWXXgvJvrFp2U3YX6VQCRp\r\naMjX4HmMiVXL4bdZ7ehPWufSo7/HxovClwkHzp39JUeWHi5ne8MRoiJcEFjMtGtE\r\n9rynmEZn7TTK5UTAfkU+xucE5p8hp6Qhbj5hVgMoyx6/DvlSb7EIkFVReKZj5MoD\r\nue1W01gePDDHC6SLU0fdxw049tlkQro7GQIDAQAB\r\n-----END RSA PUBLIC KEY-----', '2022-01-21 19:49:47', '2022-01-21 20:12:37', NULL),
(21, NULL, 'lilbluecandy@gmail.com', 'Syarifah Hani', NULL, 'default.jpg', NULL, NULL, '$2y$10$D2xfh3CRgXWSkatlN0oktuwiaX6KRKZoX.ZZ6lBS9bZ3DySIwTDAu', NULL, NULL, NULL, '447f17f2c8b9d85a8b4ad1fa9aa64228', NULL, NULL, 0, 0, '-----BEGIN RSA PRIVATE KEY-----\r\nMIIEowIBAAKCAQEAmsFy929d7//bnQCgL14qvxz2mR9+JrsZiLpj0kqHpbD/UQ6T\r\n/Elz118ejviWlutIjtPMQCA5FuUJ+h5D3MZL62HrvvB5k27ckTpLQJkegXPLEsvF\r\nvXWuijlM0TfvmeZ6+dZmbzii15/5HXVm5elHzsn1afJdSU5NUMm7p6Ys2TDH2J8A\r\niV7+KksIS3uenVxSJvNfVw2k6Aya2ZwH1S7ETQ7SPV4l+LxzkAsgItKdydZyVbLN\r\njoHfyzrUXgXT9Z0+674zMSw5Eg7kPDsEjZLsEngGhjuyxMNYQrrvzzUrV8Paly4P\r\n6jUMILyWwGHNT0JQG4Ok7QmfI4XisIsD9xb+jwIDAQABAoIBAA/Xn+JOp0orYhsH\r\ndl6DAFNCLshsHejvHGUP16oucQZ4QRrWKDYaet5gYWt3bUsT2QCuE+m4or+CQOw2\r\n7vGJ5zm4c36/dWKvZasEUbHSOvo7lV1eOOb1RiHmTcPZOxEBNDOhTCk0ng7+1Gy8\r\nmQUORYiYyiPHaN9ZQbb0f95gt5SgLgR2+dTmg0U08NemSDpfmasqoI4IbaXGro4p\r\n6Tm8lQprUu3jRicwSJQhCBiXWUOxxCugTxOWyCze/N7uMknw+yNo3Ny8i3GxSXkq\r\nqcryNCtrz0W0vbbshQtopYe/lz03wChmeOVqE/+q5LkCX+LCH8nkItHRSI8XrrYY\r\nXRVuixECgYEAyCrcR5AWNsU7SZVztxfa+XIR25TR4CpwNwJBz70epH8TTZgHcl5o\r\nRXvoGyjtvt8wlHCJ3aYkdh7W4vQWLCtbAz+qxTue2gGfACmCxyG6xfKM4bGbeW1W\r\nophANRudop2Ge/zOPn9Gsu+sDRdyDe8hR97eS09ywpqcIoKK9NRXHHkCgYEAxevr\r\ndrLVAH1ImRprRY4irPe4z6ETOBVmMYRhOawB+en58L0QpHmI4nj23MW3KdGJ+olf\r\nUr1xYNWEp23dI/z1wxQ1TZ3jcr6ZXKwbwbqaGZ+Oi/1DaI4sCJXZDrWvnLD3wWz7\r\nEgXj9CjnKO8REDA9oSwgYasrZSACJBXEaWy2oUcCgYBm6EoZbIVPITUqznAQOG52\r\ngeOWbTs9MPRCA6IMCCGh1kb5RGjHrquS1XHtzKv1zk7ucbEfR9RE+fPl+DESAjQn\r\nRmsoPU+cquqwraazc67PJ7SwL5xL4B+DNh0EcK8pNC04vy7VSJ/zTG66yEv1x/Pn\r\nPDgypaTNUallwJFp72TdmQKBgQCB0hRZgEWck5DJ8/1G20s9XyOW9RVxJQAqHKXV\r\nOVD2hxVNZgYDjEBQJH3wI7PXtzyk2/RthhtXI9ZmJ/b0gxkEwz2PUq/89K4NjkqK\r\nkQZBJlpO0mmjrBWP8BI2xs+QnLd15TDuCnUSEr5FKEJt9uaF0DbROYA2TX96Adka\r\nOZe1QwKBgE7wzWdkLsYk3a4NphUsEM3MbxBHqAkoEU+g7VlxXI4bs8ekYLbELhq7\r\nbctpdqLRWU4rlAwcQe4UET1ghMIPj4DNjVZ/CSmvaZRZcPUNxT4JPMAIsOgoY/sP\r\nTmMbKI1uBEfRqgwT8S/6ACg1MkYvI0phPEFsJ4JO+7Otvl1VMgX7\r\n-----END RSA PRIVATE KEY-----', '-----BEGIN RSA PUBLIC KEY-----\r\nMIIBCgKCAQEAmsFy929d7//bnQCgL14qvxz2mR9+JrsZiLpj0kqHpbD/UQ6T/Elz\r\n118ejviWlutIjtPMQCA5FuUJ+h5D3MZL62HrvvB5k27ckTpLQJkegXPLEsvFvXWu\r\nijlM0TfvmeZ6+dZmbzii15/5HXVm5elHzsn1afJdSU5NUMm7p6Ys2TDH2J8AiV7+\r\nKksIS3uenVxSJvNfVw2k6Aya2ZwH1S7ETQ7SPV4l+LxzkAsgItKdydZyVbLNjoHf\r\nyzrUXgXT9Z0+674zMSw5Eg7kPDsEjZLsEngGhjuyxMNYQrrvzzUrV8Paly4P6jUM\r\nILyWwGHNT0JQG4Ok7QmfI4XisIsD9xb+jwIDAQAB\r\n-----END RSA PUBLIC KEY-----', '2022-01-21 19:49:50', '2022-01-21 19:49:50', NULL),
(22, NULL, 'haeraniani3@gmail.com', 'haerani', NULL, 'default.jpg', NULL, NULL, '$2y$10$IWsvmNkK8NLVq1WMSrmn5ObTWNgwNl1MdKPfshETBI.pckSdQG64O', NULL, NULL, NULL, '170f6b3994f8a9aa4ba06562e503a405', NULL, NULL, 0, 0, '-----BEGIN RSA PRIVATE KEY-----\r\nMIIEogIBAAKCAQEA1sbw+TNvKxq1h4NnMETsHqxQpLPZng+tpGcNaUkRIS37JF2C\r\npzQMHmaAj12oy9dGDXH1lYt7uX8kHrSjSIEkNvTm0WTQ5ItuWWwx1yMRGxed9ymM\r\nJYCw6G2X7PHdK0uG3ulWFRy0My3t8ekV92xpgMDt5hWc55hEx6IOH4H80RFWA8jT\r\npelMJ43HJEpwiw2UBw8ltFucYu65pIIQvkYjhX+cKfJdw/7W13rd5yRUTHXOcXo8\r\nDA3YbeCwSSQ7CcJLrt21LDrkmkV5VbTlOxYKPHQhn78rjD/4E93H5N1oTwzU9As2\r\nYGpu+UriG5dvcE1AVGFh+D6NneHMNQ7o9QJyrQIDAQABAoIBADc3pGJdH9qUHlF9\r\nrfzR62ajZIRDnNIvM7RNrjwARgAiwyuBQwLbtbXnImw5Zxko+mCgiMPuvVteXZnr\r\nVQNh+D6Mzf7NjYsEcdVZpKKr6Ezv0HPn4ZkOsey/qEyJjhQAcedDVBdPbuCtkTwd\r\nccFPxPwOHduGePVtx1kPx9O/5pCVDJcwOCSLEwwOnUnqjYzrVWD8GSdvCDzYhZTn\r\nKszn0XbdagddBcVyVzmuCbrlUF5Fu7a+TQb7Gbcnx5njfIhSXxGvgRuSLGOPrU/G\r\nMSAbMNfj7QD2oVzSX9sGBo+zllIKFyFv+812FJLDQ58cYqCvbRP5NO0fqEbVX4P2\r\nPbiZh70CgYEA+hdt0/LhgYNldLIwsqVB8+PGzWJb3sNiNBWBxdyDz5irGxobfFEh\r\nhOSdKN5DKC/52E757JNRrnSnLfObJJJ+jRyIrnwp0BkORygQfvNyB65eqW+E+z3/\r\nmJI2vkcGh3ocWytUEVtD9BEZqPTbtB01lvu1xt/hOvOrcLl+ar0k5EcCgYEA29nt\r\npOeojEiyM0pXQRqcWmiijGGdiHotBbYwkVGyjRLgje8zzcP/Y7mgh+E5IAX3KwRf\r\nKT1i3ApugjuZL8/gT3Vo31HM3FJ6gaKJFSfdnEEKKrtwMpfS4FveC5xwdOaeYZKE\r\neD6w4TWH9W1LCx8JqAx/5RV4Bwm5yx8ZSZbiL2sCgYBfZaaATcqVY7DEtd/7lSw2\r\nQzGnUJiovbDtGzMYbYheHOdP/EJ1xmDZ13bXiwjlAH/2chHFm2ByAo9u6NjKN5NM\r\ncpD0teohNh2LKQ45ztU1dt8nFKIOUFT6NvPo2yDzdrHwWPPFdyHRrOAz4csYxneV\r\ns0hgpy+8FAzWf/tn7eRvqwKBgBpEQUZQfyyzisbh/ObEXSXYFoObLg0eO77Q86CJ\r\nGEIOnVGX4KKW5i5uASX63K5cyBkVnqD4upT7khRxNm4l8fDMYEk+JrG0EProBmTG\r\nrI18n9BXMKJ6zTENCMxuVmlBHG8f6D/Njah6ktHZyvt7K9YuGCGwnPSKTu5butO1\r\n+TQdAoGAPM1pvkgY7JeYidX465z4cPGFzLGAzqB7+FWp9D9/2InnOxYcaQJoB+Jl\r\nqjBExbZgzAAb1Aq5Gy9PBzIX5Kh38hMpNdqqQCC8ONLjIQcRmf2bqhonKBKUlIAz\r\nlZ/G6rpUKqqYU/iQ/0lUyeSEsmP09vVP3qWS9gkAe2kZ2zaibGg=\r\n-----END RSA PRIVATE KEY-----', '-----BEGIN RSA PUBLIC KEY-----\r\nMIIBCgKCAQEA1sbw+TNvKxq1h4NnMETsHqxQpLPZng+tpGcNaUkRIS37JF2CpzQM\r\nHmaAj12oy9dGDXH1lYt7uX8kHrSjSIEkNvTm0WTQ5ItuWWwx1yMRGxed9ymMJYCw\r\n6G2X7PHdK0uG3ulWFRy0My3t8ekV92xpgMDt5hWc55hEx6IOH4H80RFWA8jTpelM\r\nJ43HJEpwiw2UBw8ltFucYu65pIIQvkYjhX+cKfJdw/7W13rd5yRUTHXOcXo8DA3Y\r\nbeCwSSQ7CcJLrt21LDrkmkV5VbTlOxYKPHQhn78rjD/4E93H5N1oTwzU9As2YGpu\r\n+UriG5dvcE1AVGFh+D6NneHMNQ7o9QJyrQIDAQAB\r\n-----END RSA PUBLIC KEY-----', '2022-01-21 19:49:52', '2022-01-21 19:49:52', NULL),
(23, '0102519009', 'dewinurhayati2@gmail.com', 'dwinrhyt', 'dwi nurhayati', '1642770560_b2610b002637b082a533.jpg', '1642770514_3ad6c621ac94eb1d0074.png', '085157669703', '$2y$10$.3ay9HtLLwycOjLSfcn/neHF6k6E92F2yNNhwbqden4XtIFpBZTZK', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '-----BEGIN RSA PRIVATE KEY-----\r\nMIIEpAIBAAKCAQEApZ8n3DQfJor7zIyHWmqoPEangMvLR8Iw13BHn5Rkd9xmTo97\r\npNXe5aXApKOh8AHCMO2aDTWh2lpo4fqLxN/UHVof2nUvk0g2tTA9EUHsO1Rc19cx\r\ne9P4uZPB13gKRmNzpKDUa3/htacSrrgpnzLBe0DfUohM5oB63LzXJs7GXddFqL8m\r\nvZA4TM7vmM9qnnsYJ8AyuoAq1c3CXQpEb23+KsoBggXLHfDTdPoyCT3ZCW5XD7RC\r\nNWsRwRRDB8v2x4Oqf4L4hdsZ4y7Kiwi/RHGi54hf1LVFVf6sVKg8NnKlbXt0soS1\r\nN9CQG/Tdk8s47jdq0oI0mh7k8WiiceMeu8QCsQIDAQABAoIBAQCBfbaEjJvuXqwQ\r\nea86Gjn/Jp7ALJZ7PHFDgB3/vt3uePvkYHqjnjPwCXBdSTLLnBRgfOT9fvlU52sp\r\ng+LTwsztRhGxk/3mgYeEknqsi4ZPvN36Q94Emu7U6ZmdBdXCwu8fwD9U7V9jz4Tj\r\n5klklyJ/Y3E37ilx7vIgs+TkCrc9llfaFvW0Ycub7OCRkX6KJtVo9ACntHMHXUPH\r\nnqp56/615t9BKCqzAv3wJJpdip2lTeumoylU9pfu3dYy6DPlLZAhARWnJX2k5Lgv\r\nvu816cFzAz8ZYXLyVf0eNkyjPPSbSshPlJcq4rOiRfbNqQAxyCgn9gwb5G0nLkgT\r\nErjE1C2hAoGBANs4GZntmYFJFexHJTBQK+piAWhAMXkUFc5vtf+uTJdXKH10ILEM\r\nkfT44D4pY4DX2mdmvYJgE7Tcaka1YvaDo3xYuE/mVmUiG89Ujq6RbK3lVLWxgO5A\r\nYlfKBLzo4Pv+oChUxgoRGnWsQoIO/5XEQ+JDf8oA+x/UsfJbGFTtQ8EnAoGBAMFo\r\n8ErtV+EIef/t7rvTlAwUb835+2z9ykhliwPsEIgcd1KxVIP4HzGvIPl/0rHN1oT1\r\n6OFd1cJ3cMPXolJ+dm+1HUflxI1ff6GKYCuxp9U/4+BaHmppD5AdL+SyM9Dhh7Si\r\nBuX85Qi0jg964lmv9wBDt51PEy1+GbG4kl+IK9RnAoGBANavzDK5RBofLz8kNcFo\r\n4nk53dLw+wJuryRqtrxdQFj+XILwFYwOmWplyYZXFkF6I0Qck/94hBQdwF7bCL4P\r\nES6X3HkzROzqSH31e35uoRZ0f08pNPEfULBVAerXzm47YTHeQ8xcD6OqPcANXDSZ\r\n7zlJjX6RE16K+HI20E9rxW0FAoGAFM8Ag18zxD9QOOvVcpnZ5M7SFJwfo+NOPynF\r\noh9ky/AcGmZ/zE8GtCa+anmJJp4ZxWZbrtuUov6MwFVT3oJCpdQbmV+sHPW4Wp3z\r\nqN/NSdE86Cdp/FLfXMb3HyjZEFEjc5i3G0lxLtWWLy4uai3Xakze1Wrrikp14zwT\r\na3nQFWMCgYAOavPik6bAId/1t0OQcfoFs80PjkFztndfpLwRGyZjeAPAueNjPq7K\r\n1V78/Klwx8/tfPiDUJbfJixKXMMr58rxHXAy637W8PpVB5ExgnKuai6dS+92z6vt\r\nLtejtHXe/n2LG1j6vSkGCjHzZiigQzcrjCgFaODVF32e6tYiHqCXiw==\r\n-----END RSA PRIVATE KEY-----', '-----BEGIN RSA PUBLIC KEY-----\r\nMIIBCgKCAQEApZ8n3DQfJor7zIyHWmqoPEangMvLR8Iw13BHn5Rkd9xmTo97pNXe\r\n5aXApKOh8AHCMO2aDTWh2lpo4fqLxN/UHVof2nUvk0g2tTA9EUHsO1Rc19cxe9P4\r\nuZPB13gKRmNzpKDUa3/htacSrrgpnzLBe0DfUohM5oB63LzXJs7GXddFqL8mvZA4\r\nTM7vmM9qnnsYJ8AyuoAq1c3CXQpEb23+KsoBggXLHfDTdPoyCT3ZCW5XD7RCNWsR\r\nwRRDB8v2x4Oqf4L4hdsZ4y7Kiwi/RHGi54hf1LVFVf6sVKg8NnKlbXt0soS1N9CQ\r\nG/Tdk8s47jdq0oI0mh7k8WiiceMeu8QCsQIDAQAB\r\n-----END RSA PUBLIC KEY-----', '2022-01-21 19:49:53', '2022-01-21 20:09:20', NULL),
(24, NULL, 'rafi.2151247@gmail.com', 'Rafi', NULL, 'default.jpg', NULL, NULL, '$2y$10$gxyMVyEacVf/vJpLjQtFPOHQVNj7zyJ0XG9cOq8jRr1yL4q.LY4fq', NULL, NULL, NULL, 'e30874abc02ad9125f829857ea9558e2', NULL, NULL, 0, 0, '-----BEGIN RSA PRIVATE KEY-----\r\nMIIEpQIBAAKCAQEA5gsN+O5Ur4iaEtvPbFa+aWn1/jVyG/Y8QrJNBKUVAEw0w6Qz\r\nFp2JzeJdBkCJR/n1H6GElbZlEUJyMfc8XcybRgd7sn/FBg4up6zZ/vLQ7pOAyBGs\r\nFWkCFUXr7PmIpXkg6z9nRhR7ZAh0C+Vmj+V3ch8P8CpxxsPgJokjzQtPSeu2nglM\r\nIewu9RLUOCFLs1piVwWnR+AQgsCbnFBHHL6SCfW6KijnADoBMm+Hea1ImWgbIJqB\r\noIIDHrDbhcH+YgNpsdjza8azS0vJQN5rSzrt8j5/cl5E9NEvxten6ZCwlI8bAKka\r\nYKvfk/C/O0j153UxH9tuecnTOVy2bvhqRQubnwIDAQABAoIBAByCXjbtgn1GlqGj\r\nsC8jCPITebMJeJzShWFWq4jZ1KJ2z0s3vEUfPQbQ+OpfcSQEbEaBQ+cx9ZCQBYr/\r\nsvGE+/FP2BqlDwvTEiEhoNqhyRboHNuupP76RpHQWo7B1hd7zYKaFvhubWRWT9tx\r\nkKZgr87q3pTLDdKuT8c208MDlc35Nj7kj1gZHj61U0sn75Sl/uRmio1shu97YnCW\r\n6k9dl2y3sldorm+wx+wxqdra3JXWZGPTswrpraAJ+u0es9HbjQ5fAgRuAujbsl/e\r\npiPQ9wZNXrr9DiB/4FgRx+vjVVnQvSGHFTKFb9lodfbFjMlz+fKzGBnAJAThszov\r\nEW1auYECgYEA9caor5+cspuuD80+vdhwGiwtclFlm+Tg7zImLxE4mqAA31Cd8b4y\r\nbAzAbSctYWkgryBBR/siYuZ8+VFgvsx70CDAW34pb8WHeK0LTWPT/nu87lCN144m\r\nsgnP/uteaPgSk+mjukN1OjDYWjwjRdFqh3/IdtWTDz6kjAbRP0/HDb8CgYEA75za\r\nJHZx1LwgLl7OS6VooDhKJpdRqH9KNheKg8TsUPtqEssTIF1Zm6wok6fEsiaqkxQT\r\nqodoTuiY53cWI8QyuJWR3huhsoGWUhqh0f2esrd8jefjbgujV1l86Y4S+TfPlTPC\r\niBfVzpZ2R2SHWUAQeyT9YgYrHFPNR7k2Hsc+qiECgYEAoxh7pF/E+nl43p+S/SR9\r\n78BVQEFnrjYKVnDvCdjhuSpoqcizp1JR34XuxAB1iujaeZxr9bpfrUXKtSAdlT/Z\r\nAdpaC90C3ls0dQ5QK8ENUxkF3RezqNF6ODduwXmrovjMSz+GGPre9gin6elydshr\r\naxOPEdzUxA8L3qg/f0YPj70CgYEAhKYH2bG8mLHA+wq/F/+tKS2gVzbkHOzC76ke\r\npI4K6VYVxeuoXf1v0w9+sydoa9ueCKhPrtMherWnmFRD7G78SVV8GEKhxIma5z8Z\r\nIIBQL84GZSTfshc9SOkgjsd5V4B/KbEq216enayMND/B8jXWKeYzY+XYTelStoch\r\nH+7bkSECgYEA1V1BZ8+bwA5tB7szbuk1goplHniZdeWDjLAe8MZdjQxQBkEiQKig\r\nkXODXc8fic8u5oe6gzByZ6e4zg3LGLoVTmzQmTsi8a6teLRveJ2AgMlYcBj8OTmR\r\nmy6zxBIdT0YA/OYq4rt+HVY3vwVR8zaSEXIQfLLlFO6QJpgn1zbRtRA=\r\n-----END RSA PRIVATE KEY-----', '-----BEGIN RSA PUBLIC KEY-----\r\nMIIBCgKCAQEA5gsN+O5Ur4iaEtvPbFa+aWn1/jVyG/Y8QrJNBKUVAEw0w6QzFp2J\r\nzeJdBkCJR/n1H6GElbZlEUJyMfc8XcybRgd7sn/FBg4up6zZ/vLQ7pOAyBGsFWkC\r\nFUXr7PmIpXkg6z9nRhR7ZAh0C+Vmj+V3ch8P8CpxxsPgJokjzQtPSeu2nglMIewu\r\n9RLUOCFLs1piVwWnR+AQgsCbnFBHHL6SCfW6KijnADoBMm+Hea1ImWgbIJqBoIID\r\nHrDbhcH+YgNpsdjza8azS0vJQN5rSzrt8j5/cl5E9NEvxten6ZCwlI8bAKkaYKvf\r\nk/C/O0j153UxH9tuecnTOVy2bvhqRQubnwIDAQAB\r\n-----END RSA PUBLIC KEY-----', '2022-01-21 19:49:54', '2022-01-21 19:49:54', NULL),
(25, '0102519006', 'calistaaulia88@gmail.com', 'Calistaa', 'Calista Aulia Ichsan Putri', 'default.jpg', '1642770399_2ef789834f9b953a103a.jpg', '089513968859', '$2y$10$g1VFgD5nXaLszcxBoKaNvOGLRwBvUBJ419e4iWfHjUbJ0xwx2v4bO', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '-----BEGIN RSA PRIVATE KEY-----\r\nMIIEpAIBAAKCAQEAr+SXNNlzV3re2Sh2AyHnbLjqH20rQHxCK+9PUPPXl457H8N8\r\n0gr5ih8o5JZbolgzR/DWXSuWNtVYVCNChiVlk2iYHSfqNS9ulpxudEsLjZnR8EPk\r\nYm/R70PBNdLksvag7EG8Ka5OGJadJyuSTcfRYx3IWMlRsR+CkDlUC47xW6OGnuWc\r\najfv+gZHOs5+Ec9pilN3lQZR5epCwu6g1ixmlb/JdcKFxjFPh89rMuKFk08+W941\r\nMI8AO+fy6U2nkbgPB/A6H5Wb6NkgDj4pzT7+ftTs9XR11kRpkDc78kPfVwwgoQ9i\r\nOoXe4vsRA633ZjxeFXfQ390LC7nZdkcTDXHGmwIDAQABAoIBAQCKATSSBrr0vDb0\r\n80YElylYqI0pMyJoahYRGqaEwY06IFSCS4M32dyIfoI7N62V5tX1cAUA/R3Sz/mJ\r\nqlCbp+PWkI4o8hRUvm5qRTp0jBz4cOPDO8GJamqw69xAOsOtlswUEk9r9JLZv/J1\r\ntT4JQOoMdmWnI+2wpyRtvE0w9GpylsIXzTeZOnNoM3OBFYWTRCpR/E0NQFQBAhNu\r\njYqbJqKeb/A8K671AuwGy83cz3W6a6GqDnJZo+OoVdJwKHoyRFCY9txTVNgqoakt\r\nAd919d38kyCP9FtF9hX5znUiHAL+SjLkeziR3vH0SYh1qPPaeWsauO68TWBMSgW5\r\n9GX6WqWhAoGBANdElGzxM/Y41ShklsI4dGyHLWOIa34hj/A5W/3Eh09vekQw5yTY\r\nzzESVuuD4CeNB6CUwL4jgskEkz25maSSN+cCMpCviYx0CA4LxGBv9rdxxfZdNCH2\r\nf336kJMkPMRfq4Xf8uxO6jn9Lf6tANI2jl1LGIF63dCO1IgNtlc+NH4PAoGBANEs\r\nt23aOkJZdpp2gPxZE/IWpt6motOZ3W/UEV3c4qgzbBn4L9H1R6rd8VD7Mf1uIHG3\r\n+sWnHVDTMZrPTYU0cMm9u6Ti40czDNWiwHXnYd4rYfDnXeJuEissALe84C/iinqK\r\nE7udi7u+Sxs5dHD7waaY7LIBL3A1bmYenM1XJvq1AoGAW+pFcerfo/+KTG/+yzkt\r\nxPVHFRu3wih0fD8Rn15d5DYWP62d1GbauPo6sN8jQ9/85Lz/O3CQNGLGt/FawCFK\r\ny1Ft48d/9L/KfKzbkc3cy2FCBLqxOts0fscRGjK726F57HS+FdZwPohzLi4Sjq+K\r\nxBz/frHGqnmCGAG63K+L3FMCgYEAx0lqLWAX13Ty2bEDrOiVZzWLoF90jFNwtIWA\r\nUkQLMiNj384kiU2+DR3NNtFMTF7qzE1zv3I7LPE5tnvBKKLQvnRk3XBJB2Gs3bFk\r\n2jArfwcoFePo/7zM1JLk0ClEEnssYhlBOaOdKK7hUbvIo4hIdJgIEoOslaRiXSrX\r\nS4+4FG0CgYBp1AzHqFwXZzW3EvlZiF4Cq9Hra0Mvcvt0JmEFs5YDr91J9G8Ry1zC\r\nbuLBi3mCj9KQdZPEn/np0hxG/HHBX82D6F41vK4WDbMqOF1cboTvkMTeUMuBAEgq\r\nRRNHtxxY90GC8Gg+2Jv+Y+O/4bd+rqeHL/h6F/LHWS7KDcv6Bl/TeA==\r\n-----END RSA PRIVATE KEY-----', '-----BEGIN RSA PUBLIC KEY-----\r\nMIIBCgKCAQEAr+SXNNlzV3re2Sh2AyHnbLjqH20rQHxCK+9PUPPXl457H8N80gr5\r\nih8o5JZbolgzR/DWXSuWNtVYVCNChiVlk2iYHSfqNS9ulpxudEsLjZnR8EPkYm/R\r\n70PBNdLksvag7EG8Ka5OGJadJyuSTcfRYx3IWMlRsR+CkDlUC47xW6OGnuWcajfv\r\n+gZHOs5+Ec9pilN3lQZR5epCwu6g1ixmlb/JdcKFxjFPh89rMuKFk08+W941MI8A\r\nO+fy6U2nkbgPB/A6H5Wb6NkgDj4pzT7+ftTs9XR11kRpkDc78kPfVwwgoQ9iOoXe\r\n4vsRA633ZjxeFXfQ390LC7nZdkcTDXHGmwIDAQAB\r\n-----END RSA PUBLIC KEY-----', '2022-01-21 19:49:57', '2022-01-21 20:18:49', NULL),
(26, NULL, 'mrdwntrind99@gmail.com', 'Mochamad Ridwan Tri NurDadi', NULL, 'default.jpg', NULL, NULL, '$2y$10$PbOhxFCUQE1P5ppsCGj0p.2H1ZiBJsMY0gv9UukAH5z9c8sNWE6de', NULL, NULL, NULL, '38bbf50388688af45feb72e88c38eb1d', NULL, NULL, 0, 0, '-----BEGIN RSA PRIVATE KEY-----\r\nMIIEpAIBAAKCAQEArfaBFVvfgCGVTgnLJ0hjH/mnn9pphTzsTm4IMN18iwKHPk9W\r\nya26i5xHyzUUq8mygmbfPQETtNYkAbszDlOZhUr5AeRdrgNCCg/fL+Wwq+5cpztq\r\nkMlIBW5Vpvk7rnyruuA48jsPXaD6Lap68Pd1TlOyr3zd7Am0WpHcOge5jAUx1de0\r\ndqHTFgpoTo9Pw4ib3sIewYPuBzCpC1iYyoFUhfASm54UEvXBzoUnfwPhmqkhey4i\r\nH/PI/p8t3BQG9wEWXsHr+z1nVWPxPvcxbTd5sTJMdoseI7l6quNTxzXsWQzt9w9Y\r\nT9yEMYIR9OOOc2vaHZ1wCEFwC7CTynVsV0b9TwIDAQABAoIBAGXU5Sz2kbc0cWy0\r\nCOqe0f+WqYvGU3x99CnY+Qx5qnzI5xgPY1M9UfSFb/VAxi/lKoxw4X6ZUcrKi1tE\r\nFJfvUe+XunlkD35cQ90V+2TTRH7wUeZGvpOwb2tWcecC/++c5P3IYS1SayU4pRn0\r\nMHE7ubw2/GMDafjQmXVm6o5BlVijfr67XzbqIN7REEoKaPPC5oa/Vt0gaSpdaZ3M\r\nzp3D/XdKbY2wMMStcHpDR5VqMnQUiq1A5ZoB2fc0HYUmOXTLxgVmZ/8hW1+074Th\r\n3Q94IL5EbNRRU1w0g/9FwYg9BtqSrdwD9/DlwDxY5UWqK8Fc6YOrQKQg0ckm1j8R\r\nlUy/PbkCgYEA06Z1TyK/8F+ZvSw2CDWC72LkM3y+Uo6EZB5a1nXr1CzhBjIqEXku\r\nTjhBsHoYCk/OmBMFw6NhE8WuFr79w5RWB4Wnm7yn6MJ4VTwc/BhHA+pObdGAlfUx\r\nE5VTiLoBtZj+Az+s4tC5WUNJLIzwlzBaH/ueOq+GEjve7TSNC34WhnUCgYEA0mpj\r\nGMrBLqO3QXwp+VaYrh8BRN19lSdIszlUIgTPS6YInd1YttJn1p4h+vfpAXwKhJcb\r\nE8Z3ye9zTeQsgCg8rfXQc/ZD5+Gxtk3qXUE0qF6kUje/hZbNADFzQO6Or+VzZAq9\r\nSWpArNycbz+bdXCkXM5ASEhF4WfLaKIYDGei5DMCgYEAzGPu24pKY15fQGGGmGzc\r\n0kLk75fi0CUTUwBBZuQf5xmkAXDGUXN+NUl8nml599NURmXwZhrL7+UyFoNA2vPQ\r\nFJmM4AfS+yN6Q422y/jB89T9Am6UR7yuNSQ6tEo0xmNFwmtmkO9SXxJsgtpkqQyn\r\nrEU4a6H/znIE+XuLTfLo29UCgYEAvHldAGUE+1DcIkUkl9nQcw8EpPm8tnB0t0zf\r\npoUmZX14dGdDQqdfKaeFinareI/yH+f18hWxUOkyIBAFKFpiV/Q6XtS06KyJ8WED\r\nT7rLfxEfISIcZH26bLTepsfIeZgObwsLmAobmnsViLSx/FUEdLiubdCG/6toUPX4\r\nkov2JW8CgYAg5WPef6HCsmraWfBPH33D3fsuz+DWAULt8TlBOecO8D7uCD6hJfCF\r\nTBMoYiw6a3RGnSaHM5O3NZq6CehK5rLCY3OXxtAbktVX1W+BlWENWM6Hnwm310qs\r\nZnZSyRgk6XNn+4rhbCfWqRozgBmSoeWKnLXAwmLjutSWaNjgiAVtow==\r\n-----END RSA PRIVATE KEY-----', '-----BEGIN RSA PUBLIC KEY-----\r\nMIIBCgKCAQEArfaBFVvfgCGVTgnLJ0hjH/mnn9pphTzsTm4IMN18iwKHPk9Wya26\r\ni5xHyzUUq8mygmbfPQETtNYkAbszDlOZhUr5AeRdrgNCCg/fL+Wwq+5cpztqkMlI\r\nBW5Vpvk7rnyruuA48jsPXaD6Lap68Pd1TlOyr3zd7Am0WpHcOge5jAUx1de0dqHT\r\nFgpoTo9Pw4ib3sIewYPuBzCpC1iYyoFUhfASm54UEvXBzoUnfwPhmqkhey4iH/PI\r\n/p8t3BQG9wEWXsHr+z1nVWPxPvcxbTd5sTJMdoseI7l6quNTxzXsWQzt9w9YT9yE\r\nMYIR9OOOc2vaHZ1wCEFwC7CTynVsV0b9TwIDAQAB\r\n-----END RSA PUBLIC KEY-----', '2022-01-21 19:49:58', '2022-01-21 19:49:58', NULL);
INSERT INTO `users` (`id`, `id_number`, `email`, `username`, `name`, `image`, `signature`, `phone`, `password_hash`, `reset_hash`, `reset_at`, `reset_expires`, `activate_hash`, `status`, `status_message`, `active`, `force_pass_reset`, `private_key`, `public_key`, `created_at`, `updated_at`, `deleted_at`) VALUES
(27, NULL, 'fadhilatulmuthiah@if.uai.ac.id', 'Fadhila', NULL, 'default.jpg', NULL, NULL, '$2y$10$SiRRLhoRmNxujdfZmFMEBuNOIcpjIOH876OpLx23k4PGAk73F3KMG', NULL, NULL, NULL, '4d7d6ff8f2a250ccc65f1500930470f4', NULL, NULL, 0, 0, '-----BEGIN RSA PRIVATE KEY-----\r\nMIIEowIBAAKCAQEAuoJFv+DUnYFMM745F8xw7sqps3B9zVEYn9Wmtsb7C+ZFN98h\r\n5+aVwVLQZqzoeZX1XaMXXfOcAsPJWXjARd1XdhuppVf0m0RhyG8lYLeuyRyTC0GS\r\n0y/DzUUOiBBLK88CZ6CCgKbv3SmedS1m9P3qNk0EYbjBFVyPIE6dppTcsw5VDqXN\r\nJCl5IVTI3tM4vzJ7YRbGS5Nm28iALBQk3wchzh/oy8yOJj+L86CQKNt2xRo/kJpN\r\nGvUuXDnohpjpP590OnlPh76FuJb1bmToH9xa/r8x5vN7vXmBpZHAsVyi9OMOj4LW\r\nFoNUCJbE1iG4/QtbbekVZ72s4ankT9qYOJGJVwIDAQABAoIBAH81s5U4KEx1kCAK\r\nsq5ExxJYMH8vTt7nXUBHXTp1ZW2sVbHSAzJE2AfQEEy3yqiDW6PORXXTXqmUGJVq\r\nAtqkKa9pFsCryS7N6VPoWzoojpKlZrXat+ZLQeWUIGE1m8/5lc5QcDKHqjrS1D1g\r\nBkU7mrAGv+JXPXrwcr66YFTqW83T4lPQBo6mGG+NdgYXEzbMl0djiEcnYDOqo6Zp\r\nnyW+cc4zBHN1Ricw6CpE79g2nPz0w4a4i07V8ZNz/IxjSKvH1wcBQCUMUCmLffCf\r\nokvF1kfsp9X/dl106hjl509fi08UJwVksiD1t+dXjNa7uEsITK+z9qV4yFnBJ+i8\r\nsw5DyaECgYEA5MjRgTcUmtJy3ZinQ3TB/fSGpprG60xF1Nw4z2p4EihG/4QwhkMQ\r\nr0Da4uCbw1B3ps0moEpAmlRsZGWShtvCQZ8PMAj/XfZ/2y5EjA+VrH/ub5Bmfiu9\r\nJfPA5+QzdZsXl3hTr7A4KU+KIb0PL4iTz0vTcmlsjKJxSEqDr7Tv+A0CgYEA0LII\r\n1aiDZ/RcbGkfmmclBKbZM/6wWuA+7u5f8N5izg7JEQLrrHU0rzro5dAyBJOHQ69i\r\nQM5oSpQbZ33Ty/rNw6s+GSLnoJa0NeCRJKy9JsbSgGSTGt0brpy3n6ktspfbPKpk\r\n9tr9QDpHMIshKHIO52wwZyv0FcNqijuyhQeLKfMCgYEA3C+yAqxiNkdIqaDbif57\r\nHdETLpFT1O2JX727J1SOztrYyd4NXYp6KlE+2I/XGXj+TxiujiIoXt/VmiJvjT8/\r\njCxrT425SFOO5gF3k10EbgqKDfFp0xCBcF9ST1u/cvabE/qIgFQXGRsmFCaC0Pqf\r\nVyjhDgIMqKVGZY7hgl+ffJkCgYBk+U72+XKi8INrXK2SykcJ6iR7WMZBIfCxMBqx\r\ncxgBNPwpw+z9YzQbeHhJASPCPRMcN5ZlXrjtJJ3hw+qe7flyq77+8Hl7pI8K5l2z\r\njfRy943P21mljMehA2iA0p0upPTJdHQnUCtqUQgyv45KgG0foaQFtymBAizhNyMX\r\n5F976wKBgBjMItq5/21PFpVvBYn2lfV+o8y9ea/jtmMdOCDzHbmfGvxIf1fGlg64\r\nifI+agGqDN4u2HnqxlTa69fBC+vriIzL6cz9lFC/OIVodU1PsnxSLCR6o5wkJd4r\r\nc9C5d5V44WH2h/PRj1FTJs265MqRoKvP4B7XIQ1tTGJuNxMVFcWI\r\n-----END RSA PRIVATE KEY-----', '-----BEGIN RSA PUBLIC KEY-----\r\nMIIBCgKCAQEAuoJFv+DUnYFMM745F8xw7sqps3B9zVEYn9Wmtsb7C+ZFN98h5+aV\r\nwVLQZqzoeZX1XaMXXfOcAsPJWXjARd1XdhuppVf0m0RhyG8lYLeuyRyTC0GS0y/D\r\nzUUOiBBLK88CZ6CCgKbv3SmedS1m9P3qNk0EYbjBFVyPIE6dppTcsw5VDqXNJCl5\r\nIVTI3tM4vzJ7YRbGS5Nm28iALBQk3wchzh/oy8yOJj+L86CQKNt2xRo/kJpNGvUu\r\nXDnohpjpP590OnlPh76FuJb1bmToH9xa/r8x5vN7vXmBpZHAsVyi9OMOj4LWFoNU\r\nCJbE1iG4/QtbbekVZ72s4ankT9qYOJGJVwIDAQAB\r\n-----END RSA PUBLIC KEY-----', '2022-01-21 19:50:06', '2022-01-21 19:50:06', NULL),
(28, '0102519003', 'rahmanaulia0110@gmail.com', 'Aulia Rahman', 'Aulia Rahman', 'default.jpg', '1642770143_a50431e99c473a3a6fbf.png', '085850233608', '$2y$10$p3YxT/IUB225IOO6q71H.OS8FyrVnwH4HCfX7sySulIa3V.jWcwci', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '-----BEGIN RSA PRIVATE KEY-----\r\nMIIEpAIBAAKCAQEA2vQrT++3cASu8pSskBKyHrV8u3BjsDTp+ecNlZX9gOctiQEF\r\n505M2dZlo2tJb5wRUsKTgqVCYS6MVrM3SCQe1NKizJOVQbGW+LvcjeihnnYLmEtd\r\nQ+us4Am3xHCzOQP2diliMq8Y3jeBEhdxVBa7uTrlrPrWaagkgzwDi1qENbdZCfaH\r\nTRU89CWAuv+DKoD4+UhCnwbTYJUZYOimbq5LD1qMaxJ1FC42vUq3+HRru5J/meql\r\n4vadPQeYgzvAysz9zm/cV9IzxLorZsxQiQVCpMEoqnNbPW1Cd76RUED1LI2WMfl1\r\nm+R9ZPDtnaZ1bnPSG6rGM0tjQb5KXzW46h6X9wIDAQABAoIBAQCZF0Y9cw/gi/XC\r\n+T8a0WenXyAicrfRGX5LVElEQQZqHbnR5Fw7WZ0UZvrT440KM6ZNJm07WM9r4b8Q\r\nU+igUVkZV1mrDrm6oDA+JCRXOMPgZws+ZduFRQCv+Tt7Z414nROzlMXrSFBr94UQ\r\noEGGGQsSvWKfqxdF8uHsvIaB5j0wzIGkgJz9dV4gGb1cKbrveSukGkS4pfG17VR9\r\n8n8amRPQh1S+3URUrxNOaKLq8CPi2OBCcsMcqGhkOtAM1Jx+Kv7Z1ycpH63kLFjC\r\nFU81EwhTwoxTN3Eok5v8awBNKk2A7yGFGMeJ5jlceSQRmyOQENY1Z71gjo3ckppI\r\nQpUghSNRAoGBAO+Gpdo6ZYt6TbopR163M/O3cI/+VSqPIJhuO6coGCQcsxUkPsE7\r\n1R/5jgGGMOx7aLMEGoYcyeUlHSM6Le3nxSsXE57+OvCKK3E225h/H0ei9mt01vow\r\ndgt82oPefN7NyIkZyx7ShPy5s0JnYbDHcb7tXYtAO6qW6s2S/fR/8+MfAoGBAOoD\r\nTio1m1q3na1F6xNun8rrUOh5EbzdMUsOlNtQQv9HYDj9QtOmikkb/xNPowrDGyOX\r\nQ/HaxR5qhoQPAoraXOLlc1/NOy09gYgn5SLSK2eDaPW/jy5id080MZ652RQZxTAz\r\nOYDYXn7cShihEwMPd1xh2b+e/548X8sEoK2QgcgpAoGBAJEcae5D4rEVb3GRAIQJ\r\nSZglUjRqSP53p6+xWMJ0L+vw1y2/v6UhsoSkk7uoqIscWNnbapZFaqtASN7GqHyx\r\nJWptmJ2COALyMk9shK1mlnS37cI8DuGT6nAbO+cYK15wHUWyMrSBpb/WYRuhtjV7\r\nHxYkh7+NMpiuxaG1o9U0j3TRAoGAR+ViE3fK1jFJoV203pCDSY3ImtPvji4LIftF\r\n4qejHdkpB/lPmcU2AUY3tRAnkHvnD6U+u8SyASlLULFn3489MHy8WLeuMbUO4e0X\r\n6f3WVgQ6sB39eIvKCiyH/jMtLY7JVYi3Zw2S4rj9jtmWBL+wtVJe2w+Xi18TM0Wl\r\ntA2MwhkCgYBRWKCkifqB1Kog5gF/rkfsiAw/ba+mqR0cRftPYgeHB3N6/TZiCZNu\r\nMGiH4pJqjILdRo+MQtJTIgMyN54q1qYtUKDP5CbCt3eyATVSJDizyPzKHiDqkbBP\r\nPnUEoF+DdtPvpW7TcJipyD41y4HOloLD3oNuZ41zq2waY/zLxo+ZHA==\r\n-----END RSA PRIVATE KEY-----', '-----BEGIN RSA PUBLIC KEY-----\r\nMIIBCgKCAQEA2vQrT++3cASu8pSskBKyHrV8u3BjsDTp+ecNlZX9gOctiQEF505M\r\n2dZlo2tJb5wRUsKTgqVCYS6MVrM3SCQe1NKizJOVQbGW+LvcjeihnnYLmEtdQ+us\r\n4Am3xHCzOQP2diliMq8Y3jeBEhdxVBa7uTrlrPrWaagkgzwDi1qENbdZCfaHTRU8\r\n9CWAuv+DKoD4+UhCnwbTYJUZYOimbq5LD1qMaxJ1FC42vUq3+HRru5J/meql4vad\r\nPQeYgzvAysz9zm/cV9IzxLorZsxQiQVCpMEoqnNbPW1Cd76RUED1LI2WMfl1m+R9\r\nZPDtnaZ1bnPSG6rGM0tjQb5KXzW46h6X9wIDAQAB\r\n-----END RSA PUBLIC KEY-----', '2022-01-21 19:50:14', '2022-01-21 20:02:23', NULL),
(29, '0102518018', 'muhammad.ikbar@if.uai.ac.id', 'ikbar', 'Muhammad Ikbar Fahreza', '1642770236_acc77f20e212e6886696.jpg', '1642770110_f41f0931a1f26b145260.jpg', '082113395394', '$2y$10$YzKff65pDB3UEczp9Mjzje85MwHMlVew.0z3sPqVWwmAzE6wnrjQG', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '-----BEGIN RSA PRIVATE KEY-----\r\nMIIEogIBAAKCAQEArsVnAQ66uZwGHWDXGVOwaZQs5xn30kRBQTRbCwtBscdcnNqZ\r\nmsi/pQVTywoyKps0j8syoc473OBYc9Dx7pgeoR6nCAB2FdETGC/aUSTjOnXeIcw1\r\nhDFGJtyts7o6SSmDpxqvihtL85f4qgxxcwWoCXnELpcoAUNm48BoEp114q26CF8S\r\nQLTSN+Rt3/DSS2Bz0Mgekwc0Ek0wpx7SeTyi1k84USNr9xM8SIzhxFKlgA9wTpnb\r\nPy/5u9OiH7mCZynlhV3DFxgSl8G1lSp3riB3OlZm+U3arMp2JVh6QFYL5DfgL+y+\r\nO7IxFytsUME6mGjxfB0pI52CT84LVIihXIOXDwIDAQABAoIBAGCoEfh2wfQnAwa6\r\naRu7uiQZ699/8Bwc3Y4HO5bXCeUdYe3pw+vjvIGyeY4gPHBt19rywTTVjyvv81tS\r\nIosXHFF1V2FIiAY20/2bcX1RDk5lo41DmBFdAvQ5NePhSZzu1b3UN2MFB7NXyBGb\r\nwh6f8TgUXNh7hod0VHH/Fk+9P9Y13VwtkLa1UChW2k/XJ7Ec89ckbh+zCn61JVkn\r\nHAQg1b3djwf2EHktSzXqSxZyjBC+h1KDV0fiYY1ZIbwhqFk84Q7IwV00lnfaMDMb\r\nMYJiDge4y9Tf9h7u2GPv1KnkLb8IRllRbPJyUcZsGPJanB3zzIluwVjh0gpq1GID\r\nyQr2HVkCgYEA6HB8FRpQuAHEVLbHWu8TK83WfDJeiIKPkHV6zOZEnnCDx+p2dtFs\r\nveIzk/2NSvluxkT5Ms8G0OKAiG4BrRiS4Wb6l9SX9fcHuzATqyWc4IiApSSl6kYS\r\nmToQ1oiEepzhL6oTDRb2pxwHhRw6NDonfYLuaVG2/qmuRno7iNKyj8sCgYEAwHx/\r\nKRvA/xlO30nTQ957vDnkd4Zx6oQjgLDM7gKWTtZQW/T7K7F41eNjr7xR99bIKQfk\r\ndvIfh5D1eqku5D0vWYcDeIP/EoR72ejsz9d9LfcnJdMTSlCE8XW9/20y3QysP6FK\r\nuFA5k9JYUovPAEMBzfKlsUeZCk+sYaV2Gn1SJU0CgYBO7ZNU3yC1uvPeCErdl/0c\r\njMLeXYQ4Oo1hcmMGnNKEMpStF/KuGiMgv2TgReLqqJRzAwzTsfUQjTk0Gpa7HnMR\r\n0xQY5nnLbdzUNVkYbqc8n11/tlgYmz7JhSwejTDfKdJVixz4/uk2iZAMJS+meHDc\r\nb89hN/w5sYiaKft5VIKJzQKBgFrgLDTfSo3lh+w5cYnAV1C1UFzx14Rt4EkYr5fL\r\nFuWfnw7bKV4mirMIiP7l/RjyiUt902oow6QAVzUS/PV6wYkWChhy0REQBV0K8Ars\r\nZMg3wH7GGXxjaXCKMyqNho8ANa5Q2vMLxTM6AsLuCMvJ1udBoOKCuAk7NlpfgNPe\r\nyNKdAoGAXycQWwZrVJlt6aSkbtyV7kbQd8NEqsibIOAdKKVJbF6PJTg1XKrk+DAw\r\n7Yn0phrY1hlM8aWLbr8J7BfC+P9KIw6llfaxatGw/z53c0C3ZCjEY+dxaKS86cn6\r\nQFxPdczRBnyCIJkN+OA2SSQpY11pdRQzTqlRPUjUUssorVxethU=\r\n-----END RSA PRIVATE KEY-----', '-----BEGIN RSA PUBLIC KEY-----\r\nMIIBCgKCAQEArsVnAQ66uZwGHWDXGVOwaZQs5xn30kRBQTRbCwtBscdcnNqZmsi/\r\npQVTywoyKps0j8syoc473OBYc9Dx7pgeoR6nCAB2FdETGC/aUSTjOnXeIcw1hDFG\r\nJtyts7o6SSmDpxqvihtL85f4qgxxcwWoCXnELpcoAUNm48BoEp114q26CF8SQLTS\r\nN+Rt3/DSS2Bz0Mgekwc0Ek0wpx7SeTyi1k84USNr9xM8SIzhxFKlgA9wTpnbPy/5\r\nu9OiH7mCZynlhV3DFxgSl8G1lSp3riB3OlZm+U3arMp2JVh6QFYL5DfgL+y+O7Ix\r\nFytsUME6mGjxfB0pI52CT84LVIihXIOXDwIDAQAB\r\n-----END RSA PUBLIC KEY-----', '2022-01-21 19:50:35', '2022-01-21 20:03:56', NULL),
(30, NULL, 'mrdwntrind999@gmail.com', 'mridwantrinurdadi', NULL, 'default.jpg', NULL, NULL, '$2y$10$m4Fl17Z1g69EUrAY07MAZ..1eIFJv0Q.clxK3.EcIzePN2OUl5YD2', NULL, NULL, NULL, 'af48729f9a140d08737a1faf337030f0', NULL, NULL, 0, 0, '-----BEGIN RSA PRIVATE KEY-----\r\nMIIEpAIBAAKCAQEAsAmbuysX1w0jhtMFSv4BXcGeg40r2bb7+37J4C1ZvPFMJxy1\r\nNFyRfHZPQrnxkmMS0XHCPVvnqxgM8kv6b1NVFno6cCgnoSIUcEXYnnHEL9a2KeMI\r\nhAp1l9pWZhKM8Q7BB4O/JXL/u40mql8RhfAXuT6TShkFh0GZIf0zJlDC03cg2W8s\r\nG1cTlcwN9Ik4AtvK85QyJmIX0h10+27A+kBSxap0njV0e4fZwdA+aKwhz4Dv7Hhl\r\n1/8tO3XY4WYu098JbYb67O93Sh3QjurOFUKczfCY8cb9XL8WNHyZWyAyjHu1utJz\r\ntY1n1uBKBfhCiLyOzCkKh3zWk36IseWPINgYbQIDAQABAoIBAA/8H18Ej7qgX8x7\r\nVuyzWe5oiXtKk2PGoOT6Y1xu4cotYwveKHojubZCi/n0JoJzap8IJGor8UJxAaPy\r\n0D/RolVTLgFHNCoGjTKQtRXWIMlzRsFQ81ICHSF32waTwqaU/2QuS2ocIiqmq48m\r\n6NFvtsfEbd15ni3lAAG9GyrshHRtIyKUpp63OI1fsZ2EigUdMUPXXzlGtayR9FJ/\r\nlvpteuDU7noOaQKRc0RvF2JVg7VTrYs0hMXOnzeOhbzfnqq+Rn46tSSQ765Jod2Z\r\neWyHe93Yr0kntrcHdvo0VpX0B5hIvManH5ArsjGNOOzLQMNl8HPo5ezR2up17A2z\r\na8gS+SECgYEA6BPLphzjDI4tL3VJQz/oKn/YvLzzBQCv6wxQl7hqj0TtdJ40UH+S\r\norYIuNXM+uMT2uPxKs8j64aMm1WZgLZD3RU6gltHOHOYF9+jqaTOxc+1yYV0/Xuf\r\nRfECn7QE8e0kphm7dPo24CpdEjLEuXkmmE/4XJk/OL/xEsKdrLCIORkCgYEAwi7/\r\nvs4QmfQfc0mDg6OgHNDLt3WnYtzM9RKGgJU6J4yekrEdRX8DjA31NvYpWzJ8W+6V\r\n8ZbBfORI/FtYjSX0QNfAmn+WFMy+aZuPoGq8LdUJrZMqYrPnlrhBt3qDaxxWBqor\r\nw3C70lepyOGExbsygv0Dj4dv6niIk9kxMXwGAHUCgYAwZahrfMywmpm7subTWmlt\r\nK3okafb4DRuilc/cw/2c4Q/v6OoZ+3C18+Y/vX5gt6g1VqG9frML8+QwpJo9aEUg\r\nvsOT2bsxf5GxMNctkov4XoeXffhWwEgHyun0KhN57C1fYjBghamZ99uu5t11nFk7\r\nHDo7/U1c5VI9yk4dbDcMSQKBgQCzpbWW+Z9kPvTFvNI9/CgJ4KVHkkKMdQftBvmG\r\nhghqRG8D+XXCMLLAZL1i3rP+GiPxDTaNblKNT8myJnQzCVUClFgs1zKrBYx3uaJT\r\n38s+f6RXgBorfJMZ3ld1/pMMigeQXOjmBCrPe6ipHvKt1/TwOFGN/NfuTRrV5Y7c\r\nYAhRbQKBgQC+Xn1Fjo9os9vyC9fByZFS2g/hMtQ1cpkgDsdZuU29bLEP0RLxzDM8\r\nFbTSIrQ6VuSAgpUsBe01Jna0GrnXt5smQstx/L5fni6+h6AWZkaXsJFF+FfXFpoo\r\n9Qca7zLfsEgykwoNVUVUe07jIBUOLhpDHb/EFfPyhZ6SsUzx/2lcVw==\r\n-----END RSA PRIVATE KEY-----', '-----BEGIN RSA PUBLIC KEY-----\r\nMIIBCgKCAQEAsAmbuysX1w0jhtMFSv4BXcGeg40r2bb7+37J4C1ZvPFMJxy1NFyR\r\nfHZPQrnxkmMS0XHCPVvnqxgM8kv6b1NVFno6cCgnoSIUcEXYnnHEL9a2KeMIhAp1\r\nl9pWZhKM8Q7BB4O/JXL/u40mql8RhfAXuT6TShkFh0GZIf0zJlDC03cg2W8sG1cT\r\nlcwN9Ik4AtvK85QyJmIX0h10+27A+kBSxap0njV0e4fZwdA+aKwhz4Dv7Hhl1/8t\r\nO3XY4WYu098JbYb67O93Sh3QjurOFUKczfCY8cb9XL8WNHyZWyAyjHu1utJztY1n\r\n1uBKBfhCiLyOzCkKh3zWk36IseWPINgYbQIDAQAB\r\n-----END RSA PUBLIC KEY-----', '2022-01-21 19:51:07', '2022-01-21 19:51:07', NULL),
(31, '0102518020', 'mutiara.lutfiah@if.uai.ac.id', 'mutiaralpg13', 'Mutiara Lutfiah Putri Gunawan', '1642770124_27522ca6f901798ce7bb.jpg', '1642770003_fd5d11bfdff1f8ce11a0.png', '+6281291495117', '$2y$10$DWHUO3ZSj6QZDX257SpLJuzknnltDmFJzqLXY16ZFcJGlOTCzksbi', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '-----BEGIN RSA PRIVATE KEY-----\r\nMIIEowIBAAKCAQEA9iGdeVix32gZcP9PKoyLpw9JHUA4CUC5OBnWCtVIEblTrOpN\r\n2OtfvT7dH2S4WmuIiUTECZZT9sPvBlrxm6Qlaef5vPY2rFPOp30xKOjB+25fxC23\r\n18wp+2b2Hfgt8NgCbOYOztYqe0ZLAQ4fook6PSwEOyc5dL3tdqLI52lfGXjDW8kJ\r\nE6gzFfUhWidaPtr9jgrWjPmLamyDXoFDAFRmTL3HxyME/pfiBPTPxnRXl3UQsWHr\r\nXTYD8hKx0yfZZ5igN06/fouF1+knM51ShLsRUrV9U5GdHV/v6TyEO2v/QaEHzF9w\r\nl0Efy2Mw6Oqi+TdLZhHIMQg5OPWZPdIXsoi7JwIDAQABAoIBACrUNp7C/FCvwJ2V\r\nD6WLx1FOq55XamjRxmkotcI00tGiuhjAvMMeUg6QPdIUqK+zPpMEUEiKzBmIhrNI\r\nZ/p5WblQEHj9Lw5VlwQ2GLPRrM+fqTJt8iuu7y87/1+/q97Y97MTZUhApCvHU43f\r\nc0nJL0Utv567eJgD5KpcMTFzeITp01VUFV0uJ1RXvWZy4Z14DXKalKh3ChIlSN3G\r\n5/nlRnaOKdMKtvCSNg8utFynjIuaC8NHLi74ZD4+v5D18mFzp2DiPHBCtdBucOST\r\njsxwIsYSE89ysu/2QcHNgcLu7Yvuwhe0oXytNdYkL4scFIB0zVnc6kCn5/nezebK\r\nr6xfhOECgYEA/25rgVfIpVTgyPt8t0aKnv8Q8HwdY79Kg3fIs7lkwFrN9xQQFR4L\r\neuIyjoHoAmXQXDu5GJm2OgeJSmM41Bf60DhqSBF9GnlJSKVhrLn4w4iB61sGqNiy\r\nAh1Ub6k8WfBd7s7hno1zawjcm98j2p47s6tebRVgnGaiIHGik/QGD8UCgYEA9q3l\r\nDqoa5T8UfFPik4SIg6xWfe1mBSlOeCe8eKGZWVr7B+UqmRAz5c1wMb96E+71cXG7\r\nd6pMn9V1P+9Q6PMseZpJuTAyHEf9rGIibgfXmj52322TnE0X2Jqgb26F1hnDXc5g\r\n+Fm/pFegZ55kd8yKrqgQBQ0PTzNUdvdF6FVhgfsCgYBf0wLNsSr6q07w1zfAYdxb\r\nLYEjVsyHwRmpHGTU17YuW2JtUL9/zJet7/HbeGybiaqTD2yvB+tO9cjReUu2dZCI\r\nUMG+a6EtL1cIw9JSxCnI4QssSifDbBfLp0kn4qtbaksy7bXCj3o/K0Hnz9xZhYcM\r\nLjvsXFq0EeS8myTMsH0dqQKBgQDVYxAmY1fov2yFMDtryNYesVIQlPAPvu+2WQlc\r\ngM4a0e0do0v6JF4AiHppTm3YGHoRrISyu4qVKR3INMkU+maaurDTlbGDbXMvT6Tg\r\n8b+8GhTSqgNqzfW21eu6+SylTJwH5aNUsq5pB7QmbooSZ8n/1DonZGi95nVGhBjh\r\nJhq3SQKBgE02Ucqot0m9eA9opgfl1gcAfJehFdIyz/qFhIFSyyXXK3xssxiZ1DMI\r\nIK4cpnwAmhDSX3cGb92MLL9HDSLT35twLRK/vi0eHtoDyjjhi5jTbiG0x6lFstqu\r\nW9OaqALWBNKv1Yvcz3BqmLm9RIP61d5CTst97dnlMSKx6PqAhPrn\r\n-----END RSA PRIVATE KEY-----', '-----BEGIN RSA PUBLIC KEY-----\r\nMIIBCgKCAQEA9iGdeVix32gZcP9PKoyLpw9JHUA4CUC5OBnWCtVIEblTrOpN2Otf\r\nvT7dH2S4WmuIiUTECZZT9sPvBlrxm6Qlaef5vPY2rFPOp30xKOjB+25fxC2318wp\r\n+2b2Hfgt8NgCbOYOztYqe0ZLAQ4fook6PSwEOyc5dL3tdqLI52lfGXjDW8kJE6gz\r\nFfUhWidaPtr9jgrWjPmLamyDXoFDAFRmTL3HxyME/pfiBPTPxnRXl3UQsWHrXTYD\r\n8hKx0yfZZ5igN06/fouF1+knM51ShLsRUrV9U5GdHV/v6TyEO2v/QaEHzF9wl0Ef\r\ny2Mw6Oqi+TdLZhHIMQg5OPWZPdIXsoi7JwIDAQAB\r\n-----END RSA PUBLIC KEY-----', '2022-01-21 19:51:08', '2022-01-21 20:02:04', NULL),
(32, NULL, 'anggunvario@gmail.com', 'Devin', NULL, 'default.jpg', NULL, NULL, '$2y$10$SfktHNnnhw4BC1yaLmh.3e/CXW3ytEZuS.AYP4wQZgu8s.QDzol7O', NULL, NULL, NULL, 'dc81cf5f55805d0b64a4c61690473b2e', NULL, NULL, 0, 0, '-----BEGIN RSA PRIVATE KEY-----\r\nMIIEpAIBAAKCAQEAxkgTEt1+NhKEuRS2ahGMG/dEMTB+k9NivQaWKgVZqyV0aNW2\r\nG6IZh8241dd9MAxnc+ut+kCWXk7zdC5wuTzwFwqebz6muzmzCAS5ejS12Mo0KWnN\r\njkrBdraRF3LSSfSu2r8c7PWD/8QRXIM5e7ZC+S0fJ3Kc1AcmbNYVK35OLmnxqkRr\r\nuiZ45oRUMA6/WwD+ilrez44w56ZcQAR6ypO5GHsDULp/s1c+LBEeyGZILeheeR6d\r\n0j9o+R/3O56uu1+ruTI9luJNSkWYPwN+vV4qXx6jAp5ICH3O4o+KLNvx2dt56qDr\r\neXQMrDJtFV7Y5yFCjbgHiXhp8FCXgPrjMBlkqQIDAQABAoIBAQC+ILp5an3tZ5Bw\r\n0JWh27WX02BGMpQNN7MEQl6XaI30+HNJWzPGB4enmvJTys+11Q8WLrWis2/8eoQj\r\nsaxRU0d9MKd/UHocKVWsqKsZrZV5jVq7I0MB4FjmdmVmMKnIVKGeC4e3CC1MgTuM\r\nlB/4qmpJ+KRY9SPAhCKqVhXyoKhjA2xhCav/cteo0X6rbW4CWrq9ZUmg3L5YjpWG\r\nGldiljYToR3ZwFN0VcpLKZHE8WkkPU1wPpc2PR3TlQynkCt6ymNmun6wETpy9o+8\r\nZi2rRW72kxRC86mOvjReJXKHqCYifZ/y8LOGIbvdBF+pNdmRlAE8O3jBCxwAQK2Y\r\nfkBo1psJAoGBAP7r9AE5ZINB2/CwaluftrhKmXTilUTRpm+0jzLwKD/tPuhEqsUT\r\noJ9Ex8nyeSkuN8y1Pk5DTTh99IeVC0fdkTi0hP0Jg7YCirJ/5AlRHT7EKquB3mBH\r\nVYBG2NjjhIvA58LoRu85ZGvTZclpL172ZCrw/0RRiVFCdRbGnWcwJMqvAoGBAMce\r\nyZiz0GiWnXT4lxQ4yjmi5r22jeJ5jq7GwW2zy2gNQ4OGq9QfYu+fyx2vBpLCO2DV\r\nZrRjL1f4BGJ1IDFuh5Dj6prGQU6Yp3zJoiawP1jQMCPl6IShotTgUuRdxblN74Z7\r\nGgrjQ9ZENK/vp/1geVwEVnOqPieZgrRrKBc2OrwnAoGBAM4e/UIMJQCYvP0FuEnz\r\nfyvObfx7xVRK7HfAGFWIqBLggxANjcMiVqrRU3Yvz9YDX+zu0702X/cAqTsDwYZP\r\nWj/ufuWWzt/ZeEpSbJE3/BynQxVAQg25QCIjpuzgMmlKBlurssd1sYQZ/2B24222\r\nblHmYZDdGNoSkVhkKhuoaudTAoGAVO0crrSCvxj+L1WXmlheaBbCs0eZXG7cHE9J\r\nULDOoKKHmSFnSCHa4LkWuKJd+1o8WSCrnWRwXOS7egLaqDqsN2/+L+U/FXameOLG\r\n9hlV61tgLO9yLJ+EA6dps10LZ+2Fq6X1hY9I76pHjoJ48+ih2k0/UjXaLKmcxbau\r\ncrf+dSECgYBFsm3aEFsZ0Enm9uZF1TUldTwYO3gWBjgVGQZ21ByDz4sMkFKBdNKa\r\ntkpM0110g6l1dBFWXe1dkA2QZdTHjQ1B6dZ4tRAgY7z/qjE4cZ9ejXdlRzFT+GSs\r\nKDrsOFKHoSCyi/g7Ef/fg5dxw/rXLxgnfnKVgLO7dDsC6JJCycdb0w==\r\n-----END RSA PRIVATE KEY-----', '-----BEGIN RSA PUBLIC KEY-----\r\nMIIBCgKCAQEAxkgTEt1+NhKEuRS2ahGMG/dEMTB+k9NivQaWKgVZqyV0aNW2G6IZ\r\nh8241dd9MAxnc+ut+kCWXk7zdC5wuTzwFwqebz6muzmzCAS5ejS12Mo0KWnNjkrB\r\ndraRF3LSSfSu2r8c7PWD/8QRXIM5e7ZC+S0fJ3Kc1AcmbNYVK35OLmnxqkRruiZ4\r\n5oRUMA6/WwD+ilrez44w56ZcQAR6ypO5GHsDULp/s1c+LBEeyGZILeheeR6d0j9o\r\n+R/3O56uu1+ruTI9luJNSkWYPwN+vV4qXx6jAp5ICH3O4o+KLNvx2dt56qDreXQM\r\nrDJtFV7Y5yFCjbgHiXhp8FCXgPrjMBlkqQIDAQAB\r\n-----END RSA PUBLIC KEY-----', '2022-01-21 19:51:41', '2022-01-21 19:51:41', NULL),
(33, '0102517008', 'fadhilatulmutia@if.uai.ac.id', 'fadhil', 'Fadhilatul Muthiah', '1642770047_7c45fa1b1da074544352.png', '1642769978_5cf1c13a3fc7ccf9debd.png', '085202585202', '$2y$10$LneG1dO.HGCPYfi201xvnOEFb7R829puUKT60/dpnsX2TWF./RMFS', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '-----BEGIN RSA PRIVATE KEY-----\r\nMIIEowIBAAKCAQEAywbO6vryELtrJMkTLZ+qoiDsjoDLPBr2BxaHx9k2u73XDsEI\r\npro4//M8wnnR/NRLwPc+B4OYXCFPVQYyU5stX7ChNaohD1n8LRnEPLMcBr0W159j\r\nT5PluooCE+n3Gx1hAj8KkYuazJhlbwfartItBEq20enXIllXZEt3oIHhRheZqerE\r\nugZa0LVwOkuEmX9kGfSdXGNHK1uGx2NMPrX6O1gpl1RF17nC4wggERh6Ljddjmhz\r\nKxFqH3rxiyJFf8OrJNRTDeGpKY/SCnDrL4jyBL2MWWPWYSw8SQiBp7NYe0CY9Nxr\r\ncLGIrzRaRdboDOQ3v2LeZmBsKz2hXmdNgD4H7wIDAQABAoIBAAjIU50gm+YTZXAi\r\n7pxzorr+t5z2f1QrSmdGFzuS7uYyMSJnQUuNFLgluoQjJu1L9bb0Ow+yJp4dpsPj\r\nz7uEI/NWvbKHmISEfP8qdS23BchY16seLvqbSD3IiIx5+4GFxNOHDJr9MgYVtZWW\r\n/mO/ncjovn3YIsFOohQpm5Qq6ibQ/M69VJzU3XJxzgBW5Ec+wpDHg/pEiEA7jkS3\r\nMEM5EzTo41efb/qVTRZhmkCfqS8JTK51mbkHL64Hd/KivUgGml8Nn7XiA69WgsSL\r\nEWz1s/B7F6LV+oMMfmyoMK5rs+EQFFDTgpjV8oGlDiRirXBbiHWEvmRaMuixN7m1\r\ntcmrAqkCgYEA6cHwZvCvcbmaeC+k/vgXmsMSpXoicvX13tASOqYg3olbhimBV4iW\r\n80wkQUf3iniY1rIHZHijcWsltGf+1Qu8/APQqh29Z0kS8wsCCHEUFuDhklcbyOC8\r\nnO+phbvXIbw4Rz64rsfWJ/DeZFHvhruaxhvjAWJLzoQfzh3PYJQw9wsCgYEA3lhM\r\nasZoIfOBJeahaM//JWWBAht1ENIsz/HEYjJVIxnp1VGUerk2hqfk/KeLge6lJOhF\r\n83XBnZKMJKgWiKy+reVTmLqHQ9TpZuTmWu42pgb14dCmvvA6CCxvv9EYxyglLlKN\r\n+0vjp5NNZsmo6JVgIC7+j+QmvhSMZ58ZGX78sS0CgYEA5VeE8MpVp6Ns/Vvpasqo\r\nBgw8ACSLJfVRbHECYY5ak1t6c2/HWcVGLKBYtb/RC4d0lLgIbre5y+5PCOg7anTg\r\nzvVDRZR2Hp7gO5piPTwMdMHgLn7OYNC13Nd6oB4CXTPYl3XfJoQkBf3Zg92rvqnT\r\nmWkE2HfDXnPc7JHsw5nBTK8CgYBXeRd/PlVDXiAmAAjqSkIPvVI2uQSiPH2CxZPE\r\nKhcSeyRiVvj6GxmXej/9IhEhafiwf2zdrisgycG2viY3WPafRURRJrkGd6HnaBA0\r\nH9mCEeT0FPk0zx+VjZ3dMe70kxellLbk8WM7zxi5YobAEdxCbRqbE2AmkcD3F0Fx\r\npWLWdQKBgBq4p6nZo+2b1U7AhG90dMsioPokM7yvz/cGTORONintKk57dnMVHEsD\r\n2aRIvpuLLsWERTMl9rg7af5QTJ12Wg4TKlAi2G9DKNKMaTr9btMNE4z5hO4nexcF\r\n3ajBydxBSl1mdY5Lo9/ISzljvTPZ1wm+ZIQQw2ilvX5W/RQmseN4\r\n-----END RSA PRIVATE KEY-----', '-----BEGIN RSA PUBLIC KEY-----\r\nMIIBCgKCAQEAywbO6vryELtrJMkTLZ+qoiDsjoDLPBr2BxaHx9k2u73XDsEIpro4\r\n//M8wnnR/NRLwPc+B4OYXCFPVQYyU5stX7ChNaohD1n8LRnEPLMcBr0W159jT5Pl\r\nuooCE+n3Gx1hAj8KkYuazJhlbwfartItBEq20enXIllXZEt3oIHhRheZqerEugZa\r\n0LVwOkuEmX9kGfSdXGNHK1uGx2NMPrX6O1gpl1RF17nC4wggERh6LjddjmhzKxFq\r\nH3rxiyJFf8OrJNRTDeGpKY/SCnDrL4jyBL2MWWPWYSw8SQiBp7NYe0CY9NxrcLGI\r\nrzRaRdboDOQ3v2LeZmBsKz2hXmdNgD4H7wIDAQAB\r\n-----END RSA PUBLIC KEY-----', '2022-01-21 19:52:11', '2022-01-21 20:00:47', NULL),
(34, '0102517000', 'rafi.annas9000@gmail.com', 'Annaas', 'Rafi A', '1642770061_5cc86a70482c184ce4e8.png', '1642770061_75e63afb73af76c30c4c.png', '087888405008', '$2y$10$4eC5HaeO8tgYdopvf5mhBevWNnJc0lRVRTyPEOPGBL2uFQH.jAAR6', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '-----BEGIN RSA PRIVATE KEY-----\r\nMIIEogIBAAKCAQEAtzbhLWblKZy3pNTlqHYfp43iMW3hdgz4LJbyjYM/K8Jn5MEK\r\nR1qYvNMA3VBB+CH43JpKsJL/ziSheVasy9SiI10B1Xi8vgWeXT3A2JXX1sOMFP0T\r\nGNHoCUuc5XVWOHPGxk15O+0bs5pekw4blFQb4TeJeVdyyM+9fBdDMQneg7Ovcmme\r\nqwhhqeUk6kK+NArha5GpLNj02zXrOWDuSr57Fs65kQSqojZP3MooHeomyj4nDWlv\r\n53DAx3GB9YKX3i0yRnLq5VGn8HdlqyNd4qgKrwyOWsxj18AZ6QAqddklHTAYJ3fZ\r\ne3xsWwhwpPdhMuZEzLLkazU7Cp9euy+MiQNt3QIDAQABAoIBAGaADIBzFXgvVkqg\r\nVQ/nbhQ2e7p9p+p8nQeNN4vWRqw7qhY/rXl4BQV24v/uG8ovb2Qz6d9ZjkWNFs2k\r\noS2z+zXfndwJHUcOK6gsmUxSoJtlcWR4pYt4O+GfbNqux5rzotxkkZPmNl5H2etZ\r\ntDJK0AIzKPU66FvSZUccWJoB1HxHQsqilj6Qsd4ir4KDeNFbgq4D4uRR/1ydrJvz\r\n7XmcfLehZLK9NntDUUWQWc8CuSXoC1F2yWF5N1xIEHB2cyMCuINYQbftFKeQy7ZF\r\nxW09JCCwntPz8RNCRdSai5dEx426SouyCi50PPu7ArmuYyu4aqi0wTLpbIIixyPJ\r\nTgzpSqECgYEA6I7Zpr0yhpxmFAqmhCcFYi3PIZTkYkkp7NDE7Sv1exNF8OEscHiW\r\n2GPZ+sFcuj5rVkDXAU2B+8RqgJ9x1/acQo4B/tdrcoLIo9FmvXWyqC3e3eWi2EER\r\n2QuMWQ8a1W1AoxkTxF5A0o2ufeJJFxCD2WayIjM5/Uep6gH2C3XaiokCgYEAya64\r\nC/lD+1w5GbRZXQ973zUAFbaoFeEVmYFin0hmIXbiqaS1cM72Fx6pbLNw/6X9v0jM\r\nI/XgUx9rteP6ZUe7a0agfa3uY0EyQb+ycuUhjuXwfoY/ykegYuA6isrUaTXcXb4y\r\ncLr2m3UHAuQv8umoUKYm5VAvIvQG+qv/Ur1o47UCgYBjclq+g59sksrP/THxxyH1\r\nNvOhP6NeKD1GaIwdg7PIupgpBpFTUy3mQOTA5xj5B6Is0zNd+kAAYqDMeeJb4Lg3\r\nebR+vq3S3PxhmTUfBYqtglgQeZdmdITmVJripqPp6ns+g4XBbjC4GSAp8q8grs5D\r\nFDhOiatdlNyjFc2aXv5iSQKBgAms4Bdy9dfxLKwXAtJ8E605la90+8tQ6QBcPKb3\r\nii7AzU7mH+4xf4zMY8RbN2iMRggPLfvrp79VGo23SiPhtRQIZ1qgJXeNgSO2VpE8\r\nfMemMEthlV3W4dLcfvJ5mIcTlmbI4RKXZY0/p/5zg/lbTD/SOLt3hUtf+ZW8+pq1\r\ni3qhAoGAUzKadjtR/NV+AjI3ctmvFWgBw5ZBKWulVy6dW66KtFma17Gy8E7UEc1G\r\nTFzyL2iWP3VfWgRddS5a7uWeUU9VwFpv707Q6WtI5+5zDgMP5GzEzAZ5Z+hTUdE1\r\nxw5nY8zDvNLkvKGzTwB9yY7Xyy8GI9n5GktG70WT16xpdijp4fM=\r\n-----END RSA PRIVATE KEY-----', '-----BEGIN RSA PUBLIC KEY-----\r\nMIIBCgKCAQEAtzbhLWblKZy3pNTlqHYfp43iMW3hdgz4LJbyjYM/K8Jn5MEKR1qY\r\nvNMA3VBB+CH43JpKsJL/ziSheVasy9SiI10B1Xi8vgWeXT3A2JXX1sOMFP0TGNHo\r\nCUuc5XVWOHPGxk15O+0bs5pekw4blFQb4TeJeVdyyM+9fBdDMQneg7Ovcmmeqwhh\r\nqeUk6kK+NArha5GpLNj02zXrOWDuSr57Fs65kQSqojZP3MooHeomyj4nDWlv53DA\r\nx3GB9YKX3i0yRnLq5VGn8HdlqyNd4qgKrwyOWsxj18AZ6QAqddklHTAYJ3fZe3xs\r\nWwhwpPdhMuZEzLLkazU7Cp9euy+MiQNt3QIDAQAB\r\n-----END RSA PUBLIC KEY-----', '2022-01-21 19:53:00', '2022-01-21 20:01:01', NULL),
(35, NULL, 'aliframadhan504@gmail.con', 'Alif reza ramadhan', NULL, 'default.jpg', NULL, NULL, '$2y$10$TOuJxeMvLw0ztKzqXXfEwOi7tU1mMh46zTbV.RXm4NbitcMSXUt2u', NULL, NULL, NULL, '5dbbf5b41aa3d81e8ac287d22eef812d', NULL, NULL, 0, 0, '-----BEGIN RSA PRIVATE KEY-----\r\nMIIEpAIBAAKCAQEA0z0F6qSGVdtI0N2WN5RueT+Rxsi7UcJsezAaaeiECORD9li0\r\nM9pZApSotqi+kA2G4Rqxk6qlykaErX+D4AZQj4oaPX5+WWXtntRJd+VR27z2IZ86\r\nc+FsiFflTjhGD30VieNUsa5Xy9IZX2a0L2XS4d5fmpy1jviZelOozYybsoazp3WM\r\nZIZo0+/J7EdDwHQOaqJy608sLGMZUIr/3wmgRfI4nrLyhmsHeMTW+lET41S4fZUz\r\nKvyNwYXgdpWJ8y38h96V8JndxJC55GI3C1kpYFwILHvkj9DH7p47TAD2HKfI89ng\r\n5HVFfIho+yBxNPqnb0CdlNamp52X92wrLFz28wIDAQABAoIBAQCIDd7YsZ1AgVuW\r\nA5K0O6sn9xTKhxF3aJV8hpAMtNEN9Q/9BEcUusbnzZ4Y//i1SbEdHZdQd/IOpXrh\r\nUKc8zHRo71dVUjrJE8iHq02ippYhxMR3BVqdtoy0CIDN75rYcQVFaaFsS9GKmsjy\r\n1HCrspawGg1TxSl/a4lW67lmovDJe6L/AV4xGez7Vt4Y0/dQytHlhjKn8YMoonEI\r\n4TgEMT8ewuxax952KSr9ALlXaijHS+gXvD6r+vfKQXjsLIQTA0KQdzsnUHkBbNr2\r\n0GXnv1szsANJhB5OxphcHqq+T9Pf7BPLzUOYtbfkiMof8EbV+56cqEXYyQ1Kzuo2\r\naf7Fxy2hAoGBAPZP6AiZwC3y3w34iJUJdGxufPeKhdk/Fek2ZJCNvXsiM4Viqd+G\r\nq+YtsHkODH2Y95n6DjKHMJJcYntq/zLymVMm7wJP6U29E1c43CPlaG761NgB/96F\r\nJTmRRSh6v5TSRmuFoAci7m26X5pma264REcXEpAzmtST7Vu1GsyhCWkjAoGBANuL\r\n9lr0hHaPmrLxFQBg4MViByUWcYYNVP08J10GExLdzkSHrhIkyVFl4zjS6gVMGaVx\r\n6Dr81G5/OjDrs72Hshi2F69v+s/IYXFTEquEwu1iAluTCeRKuIQFFlHFFHaV4YV1\r\ncuGcKOblAm5giRV+GTXVtY3qi/dQwNpMhHz131/xAoGBAIQaVRsPwwehw8nNawtr\r\n17o0A+gLrj/W2tyKZKM2sdIxhKpcQTl2FAnOpWA3jbFq8hjuCOFGqmFFFTiWKSrc\r\n/Cihr/xweXNNHetgvoiuCDXFZ5Q2dlGU3WMjq5DLTKb3o/cU4sARFwlYtN+tYJ8w\r\nSsZJ9JXMZ5TthZby6d2n3NE7AoGARZJ03x3dXDTlsQ70uMn6cJI/8WDLWM+gvx7w\r\n2mmyYagoVU8pulYt9b1z4+3yevtCpUsTbJ3yM5HdvuLycn0t0ubhWpcBxBabym2o\r\n3PGVU+RbGundmJqVHkD+casicPHOJZyyawwxafnoa1HsHwN2ubifb/mDoTvV4Vee\r\nJHtF7gECgYBewio37VAmo2SeEPTMzHdIhD+StWnWbUb5E6bL8N0Zmsy2rQk61/v1\r\nbwEXG/WAAM/llghb4wEQZ5Zp6DMW3CqZtd1PrrUrGKsyjbxobWRoDrMhlpx/goh5\r\nL3UzuzXg7hmFcEuhRJ3czQiMdgJO6H8Eh9BoLePKzfOesau5Un4/4w==\r\n-----END RSA PRIVATE KEY-----', '-----BEGIN RSA PUBLIC KEY-----\r\nMIIBCgKCAQEA0z0F6qSGVdtI0N2WN5RueT+Rxsi7UcJsezAaaeiECORD9li0M9pZ\r\nApSotqi+kA2G4Rqxk6qlykaErX+D4AZQj4oaPX5+WWXtntRJd+VR27z2IZ86c+Fs\r\niFflTjhGD30VieNUsa5Xy9IZX2a0L2XS4d5fmpy1jviZelOozYybsoazp3WMZIZo\r\n0+/J7EdDwHQOaqJy608sLGMZUIr/3wmgRfI4nrLyhmsHeMTW+lET41S4fZUzKvyN\r\nwYXgdpWJ8y38h96V8JndxJC55GI3C1kpYFwILHvkj9DH7p47TAD2HKfI89ng5HVF\r\nfIho+yBxNPqnb0CdlNamp52X92wrLFz28wIDAQAB\r\n-----END RSA PUBLIC KEY-----', '2022-01-21 19:53:15', '2022-01-21 19:53:15', NULL),
(36, '0102517004', 'ciptadaffaaa@gmail.com', 'cipta daffa', 'Cipta Daffa', '1642770040_e1a05ed9be85f41cb5d4.jpg', '1642769998_48bdc9d1d750ba3db613.jpg', '081292799921', '$2y$10$j4UJg5MOzFQGsOxdTEWAa.WxjVEFZ73.Z3oUetdsJwr.ncNKWk6uW', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '-----BEGIN RSA PRIVATE KEY-----\r\nMIIEpQIBAAKCAQEAxyupD06++3B5rt9+c6fQApda8IjHN3xG0toLO34UHficFR01\r\nEWfw7TvNK4/bLJiMOJp7+e9FNq+lTuejBNK3p9CQlAN8yyDuF+G3jjAwAVa/T6qZ\r\nskhnghNMmdPuHlBhxkefigG+24vUQ3mXwMlXGDGszHlWUtt8rS4HS5UBlARChW9L\r\n2f+OD1dGZ5hODnjKe1BQg8Kei4tBQ+Y34L+AtBjTPTUIkhBciNmMNjvsy6vjWKxE\r\nKQJ/EwxFW5qz7vbs4kXi4yW12qXB7Pd45L+K1vzdjN/covOAPt3svMGWh5Opnb2w\r\nM3h/026IiNHgQs42vEaqfcsKa+PfkN42PixDOQIDAQABAoIBAQC5bY2VIdQu1dWE\r\nGLFqzeacMvvIix8mKj7p2XSxq7zg9m+iPLIGhYXJ6G4oy2Lbjx6lKDaaR8hhlH/M\r\nCV49hEzWIRgppWGO4BarB0tURsq6xF+StRso3732XS9o2+WKNX4CEvaWju95CSLS\r\nuyaspwa+EKl3KNRUieH2fa7vEEgK25OERMyV9sLfhs+AT4ViGw4LusDSnBhOaxvg\r\nT+WazYoNoGrCiaydMyJ0hHhEMF6/ioyKkCkDZRdGG4SV+EY4mfFILu7MXVVaYmOz\r\n79kEWgfZF7zyllYuijocs8vWPDXLm1+cSkIuJ0khcGdb88MUhbL3TXBKn59fWeKz\r\nEMrm+4kxAoGBAOylt6P80s4SVgA6ASM+sqgsafwUa/N4sS3bQqU1bDmql5ftb0zM\r\nmmifzXUtTgFeKsDdCSS4kNZ00Be/9jgm9Vg+emtK2y1ZFvPE/tU8vG4OR5yRB+v7\r\n55zUagXfk5gddh3D085ndlH/Ro7ISf5HgFTYD9A0atQO3GRpZs6xX5uNAoGBANd1\r\nWvgnVy6AZgVaqzyLTo5k7qBnnVhR5QEdIDoqp83wwKGRs567xiJECholM5KSYh+/\r\nNLGsaIjQXsgC8fbquY2//j1Bu8e/t9JuIAQaDhRCAuc+t6jNRp3rMZQKevauwIKZ\r\n5GI5qTECnfJXS0Nmcj+iwF0pmivv7XjGgZREwwVdAoGAUrqwU2zsSUxRsmyUvzyI\r\n+o/kUVLWVlxoHG7dgqIFfrdrnZpM4Z1ZkZ/kFMXM0l+YNKpRKvw27jISGWtraT/9\r\nX2cgJugZbWYKxxekOumruhHV6R8ulMoQs1vy4LDDiVcrVsaCAlNbItlKUloku/dF\r\nHuQVyyS4AABd/eB3J2UM1nUCgYEAp1aKNLm5SHCIzBfDbt5zQLy7aPGQjwvr5JWO\r\ndh6y/YvC0Lms29fS5sIZZn0GNQxkEWwbrPLOrZPISWegLbnYK3O2LjVjdpw8VL8b\r\nNpRV4v3x61AWrI/iDLyiYOxS3EyVT9neOzu1YE88BQAvgEWM7kelR7YL+5v4wBjM\r\ngy90mDECgYEAwubesm08w5al6M7sOv6To9kP2ugmB9rODVZqw3uruhJ9HWmaPrRh\r\n8d9DeMirA47tAJ+laQuQ6Zm8l9VQuspzusnTEs39atKgbS0I5nVJuZSP3d83MePF\r\nkJ7mJEMWsVedCUbYOuMN0T7jaicZ5lFMflgsbTOsqRwBnYGl7kA50nM=\r\n-----END RSA PRIVATE KEY-----', '-----BEGIN RSA PUBLIC KEY-----\r\nMIIBCgKCAQEAxyupD06++3B5rt9+c6fQApda8IjHN3xG0toLO34UHficFR01EWfw\r\n7TvNK4/bLJiMOJp7+e9FNq+lTuejBNK3p9CQlAN8yyDuF+G3jjAwAVa/T6qZskhn\r\nghNMmdPuHlBhxkefigG+24vUQ3mXwMlXGDGszHlWUtt8rS4HS5UBlARChW9L2f+O\r\nD1dGZ5hODnjKe1BQg8Kei4tBQ+Y34L+AtBjTPTUIkhBciNmMNjvsy6vjWKxEKQJ/\r\nEwxFW5qz7vbs4kXi4yW12qXB7Pd45L+K1vzdjN/covOAPt3svMGWh5Opnb2wM3h/\r\n026IiNHgQs42vEaqfcsKa+PfkN42PixDOQIDAQAB\r\n-----END RSA PUBLIC KEY-----', '2022-01-21 19:57:36', '2022-01-21 20:00:40', NULL),
(37, NULL, 'm.ridwan@if.uai.ac.id', 'mridwan', NULL, 'default.jpg', NULL, NULL, '$2y$10$DPf62Hq9lWYrAkNq2WIec.rS6P9cHYv712HaYPcGFvQz0ih4O8PJ6', NULL, NULL, NULL, '7e193ecaa97bd908ed5608804aad71bf', NULL, NULL, 0, 0, '-----BEGIN RSA PRIVATE KEY-----\r\nMIIEowIBAAKCAQEAslktU7mchsPt2rrwefJB/qazxoHGD9+nnncvgVOWVvUJxZ/p\r\nQ+k9kdlAyJCmAl1GO/qkmyqNuzvyinMAZrOXTYnPf1B+KuuYyAtYzBdpohdr8FxL\r\ndntsCIzK0eKKLGU8rGJDG95kcs55GrFGN4669w5zG9BQ/voEeC6u+JfCw651VzvY\r\nGkMi+lHeGEI50B0Zp0yfTAXx9dN8iFaJWZ5M0OVnh0Cc3Jk8/Ns5FTV9bgc7AU7C\r\nTWh7GAp4myUAHyDsjaPrRDYYLSkKa+zZkX4yaHoBxLNyuXvdfUP/4cCftTHS2PHx\r\n7w6tryQHOC3wK6kjxgGcS+YvcbR+PT0BOMEqiwIDAQABAoIBACzN2mU+K+RvNEHO\r\n1LrN8WZX2rHzyB4Uwbc9meGTbiFKTbooAiHdZmpNecjpDctqQ0quHMweVJzE4pmF\r\naoRieZAxHr+NKST/KtKWhyg+eXsPBz7K8OpC91DujcVMdAnTJPrpdJJ7vCBbXnEm\r\nN82dPbrzFlfWbYKgrJ7Em5A4D+W4crpO2FaJqRLGmL8KmSUWlJ0hjoUS5hr3dYXo\r\njTHNH/VQBQhrHU7ChO/iJq8TGzq8jy6wJpwMtucHmr6g9eDzrLm8WWCsaONZ6EnR\r\n/wi76A8RPLRsPWjEQu/wvu+hhdsJqEchgVXhU55B4CZfv2wJQ2z1Lr26I/vU/FkU\r\n6b+HyIECgYEA3AIRj2ROHjyOJdZbHOZsXp7bkyqxSfMdNABi3myPG3Cqa16ZOaKt\r\nDK9Y0+R188C95hKxqFDXqmHZ0U7m4leczfUFXmz7Ie2/WUTDdegRY9DYlihAcNss\r\n6eS9SZhooTonlVQ/cqYaWr6QJ/gd815NVjn4cjueviG7xB7/gEgEEL0CgYEAz4Zm\r\ncuup5DSwYla/rXZCHn1GUu5Owqnu/62MX6HECEnXD65/fjC4YkVwIcAlIXgskTZG\r\nMW51J3rA692ZmWVYnkNkyJhyStahfNmhKoXtaqim9ZlTImGkGldJh0KekFJ+3nha\r\nywy0/B7EKUKNSP77CKlCM/hB8VgKwtsMcvB3UOcCgYAFIt86E8NnHU7MP1bdM9vv\r\n0ZGau/JroYta/W9RdgNZRqYT35+AIvYbR7SxLbI7QJKuXl1bape+WI53PnpRam40\r\nuLWpYK30OtKuyNYvWH2fcO69gq8Oc292/moU38QBj5QA/niEuq/+0lgXNsmsNtVj\r\nX/MW56FrGuqBR5/7ZLMDmQKBgE7oJJY3wz5xRkvt/i3flF5xdcbcs/fSk3yGKaTH\r\nJnmcUfi1eeaqccFz86HxpGyofBGu2Fu9SzB6vVYxyVCJN3vd1jlrtbF9EKQfP+ei\r\nStbOT8V8yh59j98wJ1YV36Kyq2i9zI/+QebHcADcPEpwIVV2viRylehFeLoEfiRK\r\nCKQrAoGBAJNKjwty1KEjuLAPF+Oww2IKk0nhPp914DAYDG9LD5XhH/wxnuxE23wa\r\nSZqMXygkg0E7dxMS7gahbCE8lzmCMT0EmezqxFF4PmpupygpnoiBj274ZdVPzBVf\r\na0By2FpP5yMOSNWJIZBS8rV2/CvFqFAQh2gnGRDdVYyGTW2XmQUT\r\n-----END RSA PRIVATE KEY-----', '-----BEGIN RSA PUBLIC KEY-----\r\nMIIBCgKCAQEAslktU7mchsPt2rrwefJB/qazxoHGD9+nnncvgVOWVvUJxZ/pQ+k9\r\nkdlAyJCmAl1GO/qkmyqNuzvyinMAZrOXTYnPf1B+KuuYyAtYzBdpohdr8FxLdnts\r\nCIzK0eKKLGU8rGJDG95kcs55GrFGN4669w5zG9BQ/voEeC6u+JfCw651VzvYGkMi\r\n+lHeGEI50B0Zp0yfTAXx9dN8iFaJWZ5M0OVnh0Cc3Jk8/Ns5FTV9bgc7AU7CTWh7\r\nGAp4myUAHyDsjaPrRDYYLSkKa+zZkX4yaHoBxLNyuXvdfUP/4cCftTHS2PHx7w6t\r\nryQHOC3wK6kjxgGcS+YvcbR+PT0BOMEqiwIDAQAB\r\n-----END RSA PUBLIC KEY-----', '2022-01-21 20:01:41', '2022-01-21 20:01:41', NULL),
(38, NULL, 'rajabannisa.airo@if.uai.ac.id', '0102518023', NULL, 'default.jpg', NULL, NULL, '$2y$10$61I529vsfjWo3MrOZ9vbP.gudKufI1n09zrf58O1mRdmUSEfvnMz2', NULL, NULL, NULL, 'd23b20d46c0aaedd720567a37d8155e6', NULL, NULL, 0, 0, '-----BEGIN RSA PRIVATE KEY-----\r\nMIIEpAIBAAKCAQEA8MyQp2lZphmmB40DelTk0LevduFbVKJMP/gj6A7XhLIwOVIj\r\ngQZZGSyx6E/sJBsswfD96NvDMrewRpfhJAG5MIMY5dsOKNNILUVd0wn+Aarxo0pH\r\ndg6SdF3NC1cXu3HEwRWqkMRNCZc2h1U75hBNqi8i0su1YI4IpAODu4Z6AUBRXre9\r\nvL4ag3upbZYVr7EcrHQJOjDs281VHiBWH959y8LGzjs3t7HtwbDbmh8GNtf6xyPG\r\nnelr8w85YJ4JnOOPZ6FXLNLsBqEi4a/czo4c1IsprtM5UtA1glW+Ygrx0VKLBlz5\r\nVIRTAAkHiEYDWpzZUyGe0KwmP67i38oPJpFA1QIDAQABAoIBADL5CrH1kh2gFk5I\r\n4nCV4e3wxDrlD4FF7eAotekcozCay6yGn69jWZ8DoBFuQa2O9xWC3yzYwGRPEAiR\r\ng/4sQzhqt+2IRmIL/55drbPLzLIrroUDZ0ctZIEvjgUVhZePSLgazwVgGHKsSMWz\r\nHD/iOZ6J5dQ7fQSYbGnTuKIMoGz8+FVeCoKfnbW+4MITQz8hdi79WH9VTPYmaFVU\r\nrPZo0qcwqFYg986CXk7a5metOvdr6tZ7u4npmtD6S9sHAEErlNovnA2OHqpeCAxJ\r\n0IKG04f50TE8bVKHz0qSizNSkYM1sCEEr0sBXSmNqycZDkvDdH8g9gtDYxbqTb5I\r\nmrLvzC0CgYEA/v9xXdSFeExmfU1qMNIK7MJlfdY0SkAkohDHxSLEKIuWnUd36sVQ\r\n+h5oARcDRtbaQ3udYo1eXk7c4QVE3cQiKH2nFofTKrFWbEmLFd5IN7sPrc28oWOK\r\nK0nKsiiWp9gFfK1tdBPwg2dqLLmEi9MqmCBbZUmvhEPSz0YHMCx3P9sCgYEA8b7W\r\nLpaQWoSmE0nkwFcAkJA3oW30jBr6h7Ew4wLdO824eE6DHzFWZmAJoN9YAOiL1kny\r\nKBk7YLTgTkHLHTEX8lmXhiLKa/EPZbVbg0PEY9IZa8TJyAY1V9iXC+UN0mbaeXRl\r\ntPpLut/2n4Wou4OAfuUPUHXaulYbSOacrGMSeQ8CgYBIctMG0abKMwq7dw9Ap6yq\r\n7+BeDEn2/ppp4VKg0+vfiSlVrkSH01/acGEkTiGEMu74VVq18WxqZwWieRjD2UHL\r\nN0gNwrFgY9omEg8OO4VRMDiYLOf3AozzF5gbXiTPszR749pBLJkc/HjSFDNwdqKX\r\nbjoJYRIZBhwS/9Zy/W80GQKBgQCeP5OLecpTRuREWinhctKOz6lrBkSAdqSrsOVU\r\npapXHKr2LkcNY0mwyItlAO9l4NSxWUSo1SOWgbEX6V/h4yJO5jEXgKzLjkjLBrY6\r\nLmFgCsfTUUXZp57Bu6ndAntS0TuRKA3wM6zhTvztnhw/a6zw5FdrD0s4kWdZCIVl\r\nH5GXJwKBgQCjFRKtzFaUWuNCdkO7c4/ZMM+wBPFb5Xs9amfof2xGeRZxbkEvju/4\r\nSn6tfalpwlkXGHAXF4c98wg4+fvbORWCIO1giKiHOqSYQKDW+qYCLSgZPPsq/eyc\r\n2gFsropw5MulvNLZcWSLpBPPpvyNGT8TgHXcwJ+Ul5GegrnEQ5VsNg==\r\n-----END RSA PRIVATE KEY-----', '-----BEGIN RSA PUBLIC KEY-----\r\nMIIBCgKCAQEA8MyQp2lZphmmB40DelTk0LevduFbVKJMP/gj6A7XhLIwOVIjgQZZ\r\nGSyx6E/sJBsswfD96NvDMrewRpfhJAG5MIMY5dsOKNNILUVd0wn+Aarxo0pHdg6S\r\ndF3NC1cXu3HEwRWqkMRNCZc2h1U75hBNqi8i0su1YI4IpAODu4Z6AUBRXre9vL4a\r\ng3upbZYVr7EcrHQJOjDs281VHiBWH959y8LGzjs3t7HtwbDbmh8GNtf6xyPGnelr\r\n8w85YJ4JnOOPZ6FXLNLsBqEi4a/czo4c1IsprtM5UtA1glW+Ygrx0VKLBlz5VIRT\r\nAAkHiEYDWpzZUyGe0KwmP67i38oPJpFA1QIDAQAB\r\n-----END RSA PUBLIC KEY-----', '2022-01-21 20:06:29', '2022-01-21 20:06:29', NULL),
(39, NULL, 'muhammadnazritantowi@if.uai.ac.id', 'nazritnt', NULL, 'default.jpg', NULL, NULL, '$2y$10$2yJeZieOQvzegC9kfpg1L.RFc2VvUU3HL5dJil/hPN./VwgB68r5K', NULL, NULL, NULL, 'c0ea6559089d8b956c2f80129ba970ed', NULL, NULL, 0, 0, '-----BEGIN RSA PRIVATE KEY-----\r\nMIIEogIBAAKCAQEAuYq/JV1vn4/D1/LBBrjlU6KZ2IGHBr6YUAdjbMLrhw644Jjr\r\n/MMGcVUJNx815iqyzusYe1Yql1ikRw4YynK3cEd/Rrkvb1P/vQi/l5l1iLbZavF9\r\nThcnSR2/w/RC5gBUkPPsK+JDBuNFzHiRrJKU3vkax+3/X4OSz8xm2FFVbM2yihUS\r\n3ClMCtWNEd8u7rAmFBMSRh7WMnFil01PWWe5pzAVaNA1JQGvyEqiiLi/zty4Uv7z\r\nEI7szy/jxQe9f2hLXqCenMAgmmxh11nZsx0vORGxp3oo1kXN+U93PH6uvndAwh/Y\r\nEcpyBi7IiaBslHHDJasbj0/tCqkBZ0Tht6qg9QIDAQABAoIBAHoyMLVRFiTGMDtW\r\n+12MBCzS1/PJSr5cZD/AvfBxZ2Dph0UUMcekQef+EzWkboEJ+f1gxBzmoOJQVNEf\r\nLaCXcMyXqfFQITd24OUEj/ot7UR++C4AoX/+q7bxyswpYK3N5eQZYZ99QpuUrvF9\r\nLqOzXiyDbunhiuDC7LvCaLFqz5H5vjFOfTKs7sB2yLgZOVkQqYJJ0cwhOEQit/7S\r\nVhtpTYXs1WXdqgVuG8PgN+D/tO5oxJnKWoYoRd/TFUVrqHfNyy1UY1UBHjtnGr4w\r\nMjVTmBo2fRKTgn5Rc5F/5MnWnLcv1oJD2mQYWrVspqOJYaB5FySTKZxnf+EIurWs\r\nPj6xFUECgYEA8rZk+90s4HsQluWedl3RTWcrUAClnt53Az6jMzhF//+0WXsGyLfm\r\neAjHMJpgjDTgC9+MCWQwcDCq1bwFLT4fLK6zHu9o64agxgIGU+lMp47vZfCPN2pP\r\nU2wg8H5KHqLNlimkwg8lEDyscjdtblC3+XL1EQhqxdWN7rmbXKmf2t0CgYEAw7Mc\r\nJvrAGpTTUd/9kmQvaWC3w3hDA9ZyCdV3NAuX5Eq32CUkTRpv8WejQtqw8ZlcLspb\r\nskkHklam/4lXsyUrouK/k25xs0n5bo8ktjB1yW4kk9rJLTh1A6+My1IJZI0KCZOL\r\nQBkYzyKQKAiIxj1mHRSAgWnQZ4J94B5xcnwdwPkCgYAaZt7bSvbrwFdQos+2/oOb\r\nEOL0Q+3AN2Do2HJ2SuPKci1TIn/da6vFWOcaEWD5P3Mzt3CLQPvH6HNc5qQFhOFt\r\nQd+4OMDIBhANGgFINXOiMnk2NJHPrF/Oqk92+bXkWT9V21fRyEX22zLDBeaAfoVU\r\nvD2OScUbmhxjYItW7Bi4fQKBgEzKV12kPwUvKMyTy/hJf6El5nW5FvLGjvD05lVx\r\nxyQ5fXI/AMOQgCSFujZdgdkLiHSDyv9mUKZHgjf7OIJ/L2Q2/V1olQz5FfsgCBPF\r\naDKmGYw66X3pDWFo3SJbCnx+K1YeoyF/t5Bvy4kp8CF5rjvy84nUb4ZuWd47k+CM\r\ne1BhAoGAaZXTVcJanMVPRA2lFIx3kvpOaWjlB/e9SwKEQBT23gaK5O6j6P0OvpYG\r\nx2/IEW3RWvsRMaUr6/tXciZoF8Y6Embi5SDY2dSt83ntK7hafvv6CGrtUzlww4zZ\r\naatzP05UtWkOHkHO5/IjYEyVuLD8GWb81TFTxZFh0LqFp5coXto=\r\n-----END RSA PRIVATE KEY-----', '-----BEGIN RSA PUBLIC KEY-----\r\nMIIBCgKCAQEAuYq/JV1vn4/D1/LBBrjlU6KZ2IGHBr6YUAdjbMLrhw644Jjr/MMG\r\ncVUJNx815iqyzusYe1Yql1ikRw4YynK3cEd/Rrkvb1P/vQi/l5l1iLbZavF9Thcn\r\nSR2/w/RC5gBUkPPsK+JDBuNFzHiRrJKU3vkax+3/X4OSz8xm2FFVbM2yihUS3ClM\r\nCtWNEd8u7rAmFBMSRh7WMnFil01PWWe5pzAVaNA1JQGvyEqiiLi/zty4Uv7zEI7s\r\nzy/jxQe9f2hLXqCenMAgmmxh11nZsx0vORGxp3oo1kXN+U93PH6uvndAwh/YEcpy\r\nBi7IiaBslHHDJasbj0/tCqkBZ0Tht6qg9QIDAQAB\r\n-----END RSA PUBLIC KEY-----', '2022-01-21 20:12:16', '2022-01-21 20:12:16', NULL),
(40, '0325078405', 'denny@if.uai.ac.id', 'Denny Hermawan', 'Denny Hermawan', 'default.jpg', '1642835519_2ef84260f9618b07604c.png', '081389380702', '$2y$10$OSXAyFyLotX3XxNE6AM35eS5/XG8OEZjdmXa5ZKMKYMHjLnq8SRmC', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '-----BEGIN RSA PRIVATE KEY-----\r\nMIIEpQIBAAKCAQEA1U3y3AnEgPAsUUsvoH+mCs7JHEZ6145utZLyj7HmBCNJbeVJ\r\ngG0LDTSYeBA4v4eV4vJtwaN/oZNaweRdcfPw1nIOi6pQB8Jzjv7iF3l15j1Dl/56\r\nsi77zrG1nOxMbytbQIzTOshUY+mjDiyhSsxgyK7XYZC2kWp6gXlBiXkptimg7Ei8\r\n2plFN64EhzC2fl1fkxS2DQfFardIFoni6dsvyxxya2sGbtJVcZG6zlmJj2fZgSWh\r\n+Tw3ZWqUAmwEfguH6U5i4BLf3jNmavrIR+sUp0n7/h72N7ILBiirFfCVgOKi3iN+\r\nyf3yHuI7sHtIBKQzg7dXj5gnkJCnnNy39DYW0QIDAQABAoIBAQCMoT+k4quzdqVB\r\nU5iq8H3AUmU1RyJmS3miLKfPJTLJN5qJ4cl76miG5E5BmjBP1kxzu/Gw4OKc3FHR\r\n04XoQzRdrgT4/+iTtRgLBvB5GZMpoOqXoyexolhSBcf/Fauu/57CCBabgshgtwDR\r\nr4sHjYehx+QoZwh3BwSNqCwVPtTJS6PO04n2oMvMHTCAZqyOvVyYtUjdthCSsWTY\r\np7VHyWEGTabgNgzxzTYk+3jGqhARSQXTfH/b46kafW1/+MSluXyZS8QmErPhX7Xa\r\nw7v2nGn+KNCE0+6vd2E5cYS+14Z4QT2LrtlfOoYU03/DWnGr6nbmpeGXafxLBt+T\r\nifLwcrShAoGBAPwtH1aBaL3A2g3/kjhMyKIjpiFqsd5zGzDdvIDUIVE6WPV8L8ko\r\nH2f+VEaVb/Ad5Gf4dNO2L169S+uz+ndYg6iztB7+i5O/y+Xl8IV/jYHaTkVvOH48\r\nmbQacLlHcHan8yxubKW0HCw5XRr6KYcU1RHzWqotDbjaF9DklI/TpXOzAoGBANiJ\r\n79pqMHemvf122Eo2c6LPBhrNSPj5ZjOBuMbnnXkKHKlcE62owQFYNpgvanvYyeIU\r\nN+tcxEv9ERn71ofMq1wWmgsWJdWM9srrvlX3GSxzqugCSiCOwNZrD/l7q3VyLUiS\r\nnvn90+azRKNxxJId2ydXB1u7rSdZIBfUzop3FNlrAoGBAJyFzVu+Oyr8Vtw1c6aq\r\nUiYBho5bUUfHnmr4VpaIFJ38X1cP3AE5fDTqMZkWDEK36xt1pd36yPA/Aq6sKZyG\r\nPkIqOHS8fhoZBBAQZvgVsdmVjNugKyp/ps+ZUbpO00ly+Ybsi1dWsd3pRRcHi1si\r\n3RWlPPM/v7Kq+/lWx7d2IM3tAoGBAKje+gVWJzJJAYY4Nvm5eXkRBuvECRLSPVgR\r\n5K6KVw7cSfnyaw5Vux93UixhXiPzr432wp11HUk9tSaUdnw1q7YHkl7vCNaANr+O\r\nFkQojqNSGYkSsAiwC8eseyrPvam8P4CHiB/iSm1yhScKRIjHa/BEOOLbfHBhW1v6\r\nhJELyWC9AoGAZP18SXNhMt48QI5NNlVmkza/R9GuFH3WtNrhN//c/gmDGYu8b5w8\r\nc+fvWvDLlO7jM2cMbUQ0LTHbYsG3WKYr8Sxl6K5rtDfMkXEUmWOJv0dZqIWXD8C6\r\nqbizMYz6o0IGJDYwOamsyyfNQ1e4J3whTZbsLR+uVL2wk25YP2f1VkI=\r\n-----END RSA PRIVATE KEY-----', '-----BEGIN RSA PUBLIC KEY-----\r\nMIIBCgKCAQEA1U3y3AnEgPAsUUsvoH+mCs7JHEZ6145utZLyj7HmBCNJbeVJgG0L\r\nDTSYeBA4v4eV4vJtwaN/oZNaweRdcfPw1nIOi6pQB8Jzjv7iF3l15j1Dl/56si77\r\nzrG1nOxMbytbQIzTOshUY+mjDiyhSsxgyK7XYZC2kWp6gXlBiXkptimg7Ei82plF\r\nN64EhzC2fl1fkxS2DQfFardIFoni6dsvyxxya2sGbtJVcZG6zlmJj2fZgSWh+Tw3\r\nZWqUAmwEfguH6U5i4BLf3jNmavrIR+sUp0n7/h72N7ILBiirFfCVgOKi3iN+yf3y\r\nHuI7sHtIBKQzg7dXj5gnkJCnnNy39DYW0QIDAQAB\r\n-----END RSA PUBLIC KEY-----', '2022-01-22 13:29:08', '2022-01-22 14:11:59', NULL),
(41, '201843502427', 'iye.fredickson@gmail.com', 'iyefreed', 'muhammad Quraisy', 'default.jpg', '1642920500_d99703c6a630104c3752.png', '087880688799', '$2y$10$gsnp6Fv1GfaAGqannUy78e7WjU23AjO30wXWHWobq05CzGfoaISPO', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '-----BEGIN RSA PRIVATE KEY-----\r\nMIIEowIBAAKCAQEArDnWqOR4zI9AKoeizVFsYWlYwSnTFzlwx0Csr91WI+bsBnpG\r\ndURhJ4A13oTX7j4Oc07wkpIkfErEpJtUypFXcys3f10WlTG2rwMGQ1SJbo5lrHgX\r\n9oBgm1x90OPYxsrgH7Zyr+we8jYkASLoxjbHY/dRg06hCd9ziws9gOQQncVfWKG8\r\nZOxUEcQulGcGtRqBiT3h2HAhLaWK2i97C7uFb86xSlhtpV8hiAhsr2ZaRWis9IZH\r\nvCj0/Z0GuCogf8j3XLYrc4TDlzlssNtW3sX12il4V+EEu2sYZZ/G7l6TxnF/RWI1\r\nf+SPheF3QpDRksBf37BM+DgfEfX4rXS8nTXLgQIDAQABAoIBAQCm4tDoDaQkjDcg\r\nPxh5ngnIhr1zR+T9nzJyUXBEZdS/q1dQm5HEtkLydOE+Qzm96TI1d+vUC3sBWa4c\r\n10udkqLLvbfkWb61SVv9UI/0FGmr0J4jNqf5u8JhKYndLbv0PchZ0oBligceq2nO\r\nFBa9Y31ol9HLzBhuKbGbrYOmbtjPF0e1xcL9G+yINvtS2NTsg+HmH9LpeCz9zbcY\r\nYSXFUGtnVabs1sqP5VoSN34CRWIu8l8NuQfplW4nZoDLwri8uC1oKtHKV7+5812w\r\nKlWeACkaFrjiTaWXU0ArBi/qc/YslNFzpJhR10PKwGUpY/FKz24C4ellmrkSXTnu\r\ngwFKHUGxAoGBAN77+KPWCGF3UKucEVfHaoQdilJhPChFjyFTRvDM6EuPj8nfm1Xl\r\nQxTUto0cHhhpVs5OSWuPngADsLvBlw+8c3dMlBShctsxeKuDK8z2nSZcv7RfX2CC\r\n+LW7+RHcbW9doqEj4UZK+Dv+GT8+T1hth1vXNQCqDsUPepaVAocgImsVAoGBAMW5\r\n6nl7/huAy3MYkT+6HQP4qi8J5bJxEXRLO90nHfHy2XEzXhWXSkqY0AMVOMBjklTP\r\nltdqK4o9SQ/BlinX3oDdJFGM2CkwEsphJtOAtEK6au01pzl+wl/EZ5p9bP9mp8wh\r\nOrYfnKrrELQrc1L1g8yCrM7REc2Bs2Mcxp9kJQm9AoGATgY1Fn8KJ7CsVaAioWhx\r\n6RC9Gd5UQnM0hiCxrgjFL8toMOdBX2j9dAiKaA3yqfASI9ZY8n4qdy7TZJ900FjM\r\nvm3ZUu67Vd+Vrc4UQX/5tTa3DdJheU/a3xyLJqjO0i0dfu0jIomRGszq4KpY8URC\r\nHOzM6xKWYHXuG0rAu6+O25ECgYA/xUujbOMy2aJEd8r447zR+BRjYWzM1XzMpisj\r\nk6crzqhkwy14Bzh1wL1uER0hp7udUOqUhXCPgF6dD1GwIyhnJWu+RY++EPwue5D7\r\nLAp3bwpngSNy/rgQDRdhE0zhPqmlw53c+WsdEP1tLopeWkLs5cR4W6PDRS6nK7O/\r\n2pu7fQKBgBhRah46QlW2HVX22VelGqAtrnj3HlqLo0X/Hm8l5K8P+C2i6TWFW/L0\r\nlrStm7RhC5rh+fqCOlsBSwvtFzmWDSzdrZWVnhkKkd67CtSBdnX5F8KYOmF1KZ0k\r\nLNZuVa9eHw43HLYOBbQrgqDty7tT9O26n7h5+pR0F2bgHSMTBwZX\r\n-----END RSA PRIVATE KEY-----', '-----BEGIN RSA PUBLIC KEY-----\r\nMIIBCgKCAQEArDnWqOR4zI9AKoeizVFsYWlYwSnTFzlwx0Csr91WI+bsBnpGdURh\r\nJ4A13oTX7j4Oc07wkpIkfErEpJtUypFXcys3f10WlTG2rwMGQ1SJbo5lrHgX9oBg\r\nm1x90OPYxsrgH7Zyr+we8jYkASLoxjbHY/dRg06hCd9ziws9gOQQncVfWKG8ZOxU\r\nEcQulGcGtRqBiT3h2HAhLaWK2i97C7uFb86xSlhtpV8hiAhsr2ZaRWis9IZHvCj0\r\n/Z0GuCogf8j3XLYrc4TDlzlssNtW3sX12il4V+EEu2sYZZ/G7l6TxnF/RWI1f+SP\r\nheF3QpDRksBf37BM+DgfEfX4rXS8nTXLgQIDAQAB\r\n-----END RSA PUBLIC KEY-----', '2022-01-23 13:47:05', '2022-06-19 01:11:21', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_groups`
--
ALTER TABLE `auth_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD KEY `auth_groups_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `group_id_permission_id` (`group_id`,`permission_id`);

--
-- Indexes for table `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD KEY `auth_groups_users_user_id_foreign` (`user_id`),
  ADD KEY `group_id_user_id` (`group_id`,`user_id`);

--
-- Indexes for table `auth_logins`
--
ALTER TABLE `auth_logins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `auth_permissions`
--
ALTER TABLE `auth_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `auth_tokens_user_id_foreign` (`user_id`),
  ADD KEY `selector` (`selector`);

--
-- Indexes for table `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD KEY `auth_users_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `user_id_permission_id` (`user_id`,`permission_id`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `documents_from_id_foreign` (`from_id`),
  ADD KEY `documents_to_id_foreign` (`to_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `id_number` (`id_number`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `auth_groups`
--
ALTER TABLE `auth_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `auth_logins`
--
ALTER TABLE `auth_logins`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=167;

--
-- AUTO_INCREMENT for table `auth_permissions`
--
ALTER TABLE `auth_permissions`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD CONSTRAINT `auth_groups_permissions_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD CONSTRAINT `auth_groups_users_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD CONSTRAINT `auth_tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD CONSTRAINT `auth_users_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_users_permissions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `documents`
--
ALTER TABLE `documents`
  ADD CONSTRAINT `documents_from_id_foreign` FOREIGN KEY (`from_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `documents_to_id_foreign` FOREIGN KEY (`to_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
