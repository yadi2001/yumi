-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 03, 2020 at 02:12 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.2.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `yumifood`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` tinyint(4) DEFAULT NULL,
  `migration` varchar(46) DEFAULT NULL,
  `batch` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_07_20_062632_create_vendors_table', 1),
(4, '2019_07_20_073041_create_tags_table', 1),
(5, '2019_07_20_073402_create_taggables_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `restaurant_name` varchar(128) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `qty` int(5) NOT NULL,
  `price` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `restaurant_name`, `vendor_id`, `tag_id`, `qty`, `price`, `amount`, `updated_at`, `created_at`) VALUES
(1, 'Oke Restaurant', 1, 4, 10, 200000, 2000000, '2020-07-03 05:01:48', NULL),
(5, 'Yes Restaurant', 2, 3, 20, 100000, 2000000, '2020-07-02 19:28:42', '2020-07-02 19:08:17'),
(7, 'Ada Restaurant', 8, 1, 10, 100000, 1000000, '2020-07-03 00:49:28', '2020-07-02 20:16:00'),
(8, 'Green Restaurant', 4, 10, 20, 100000, 2000000, '2020-07-02 20:25:34', '2020-07-02 20:25:34'),
(9, 'Restaurant Betawi', 3, 7, 20, 300000, 6000000, '2020-07-03 01:31:20', '2020-07-03 01:31:20');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(0) DEFAULT NULL,
  `token` varchar(0) DEFAULT NULL,
  `created_at` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sqlite_sequence`
--

CREATE TABLE `sqlite_sequence` (
  `name` varchar(10) DEFAULT NULL,
  `seq` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sqlite_sequence`
--

INSERT INTO `sqlite_sequence` (`name`, `seq`) VALUES
('migrations', 5),
('tags', 14),
('vendors', 50);

-- --------------------------------------------------------

--
-- Table structure for table `taggables`
--

CREATE TABLE `taggables` (
  `tag_id` tinyint(4) DEFAULT NULL,
  `taggable_id` tinyint(4) DEFAULT NULL,
  `taggable_type` varchar(10) DEFAULT NULL,
  `created_at` varchar(0) DEFAULT NULL,
  `updated_at` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `taggables`
--

INSERT INTO `taggables` (`tag_id`, `taggable_id`, `taggable_type`, `created_at`, `updated_at`) VALUES
(12, 1, 'AppVendor', '', ''),
(2, 1, 'AppVendor', '', ''),
(1, 1, 'AppVendor', '', ''),
(4, 1, 'AppVendor', '', ''),
(3, 1, 'AppVendor', '', ''),
(6, 1, 'AppVendor', '', ''),
(8, 1, 'AppVendor', '', ''),
(9, 1, 'AppVendor', '', ''),
(11, 1, 'AppVendor', '', ''),
(12, 2, 'AppVendor', '', ''),
(2, 2, 'AppVendor', '', ''),
(6, 2, 'AppVendor', '', ''),
(8, 2, 'AppVendor', '', ''),
(9, 2, 'AppVendor', '', ''),
(11, 2, 'AppVendor', '', ''),
(14, 3, 'AppVendor', '', ''),
(2, 3, 'AppVendor', '', ''),
(1, 3, 'AppVendor', '', ''),
(4, 3, 'AppVendor', '', ''),
(6, 3, 'AppVendor', '', ''),
(9, 3, 'AppVendor', '', ''),
(11, 3, 'AppVendor', '', ''),
(12, 4, 'AppVendor', '', ''),
(2, 4, 'AppVendor', '', ''),
(3, 4, 'AppVendor', '', ''),
(6, 4, 'AppVendor', '', ''),
(8, 4, 'AppVendor', '', ''),
(7, 4, 'AppVendor', '', ''),
(9, 4, 'AppVendor', '', ''),
(10, 4, 'AppVendor', '', ''),
(14, 5, 'AppVendor', '', ''),
(4, 5, 'AppVendor', '', ''),
(3, 5, 'AppVendor', '', ''),
(1, 5, 'AppVendor', '', ''),
(2, 5, 'AppVendor', '', ''),
(6, 5, 'AppVendor', '', ''),
(9, 5, 'AppVendor', '', ''),
(8, 5, 'AppVendor', '', ''),
(11, 5, 'AppVendor', '', ''),
(12, 6, 'AppVendor', '', ''),
(2, 6, 'AppVendor', '', ''),
(6, 6, 'AppVendor', '', ''),
(8, 6, 'AppVendor', '', ''),
(9, 6, 'AppVendor', '', ''),
(7, 6, 'AppVendor', '', ''),
(11, 6, 'AppVendor', '', ''),
(13, 7, 'AppVendor', '', ''),
(2, 7, 'AppVendor', '', ''),
(3, 7, 'AppVendor', '', ''),
(1, 7, 'AppVendor', '', ''),
(6, 7, 'AppVendor', '', ''),
(9, 7, 'AppVendor', '', ''),
(7, 7, 'AppVendor', '', ''),
(10, 7, 'AppVendor', '', ''),
(12, 8, 'AppVendor', '', ''),
(3, 8, 'AppVendor', '', ''),
(1, 8, 'AppVendor', '', ''),
(4, 8, 'AppVendor', '', ''),
(6, 8, 'AppVendor', '', ''),
(9, 8, 'AppVendor', '', ''),
(7, 8, 'AppVendor', '', ''),
(10, 8, 'AppVendor', '', ''),
(12, 9, 'AppVendor', '', ''),
(2, 9, 'AppVendor', '', ''),
(1, 9, 'AppVendor', '', ''),
(6, 9, 'AppVendor', '', ''),
(7, 9, 'AppVendor', '', ''),
(8, 9, 'AppVendor', '', ''),
(9, 9, 'AppVendor', '', ''),
(10, 9, 'AppVendor', '', ''),
(14, 10, 'AppVendor', '', ''),
(2, 10, 'AppVendor', '', ''),
(1, 10, 'AppVendor', '', ''),
(4, 10, 'AppVendor', '', ''),
(6, 10, 'AppVendor', '', ''),
(9, 10, 'AppVendor', '', ''),
(8, 10, 'AppVendor', '', ''),
(10, 10, 'AppVendor', '', ''),
(13, 11, 'AppVendor', '', ''),
(1, 11, 'AppVendor', '', ''),
(4, 11, 'AppVendor', '', ''),
(2, 11, 'AppVendor', '', ''),
(3, 11, 'AppVendor', '', ''),
(6, 11, 'AppVendor', '', ''),
(9, 11, 'AppVendor', '', ''),
(10, 11, 'AppVendor', '', ''),
(13, 12, 'AppVendor', '', ''),
(2, 12, 'AppVendor', '', ''),
(6, 12, 'AppVendor', '', ''),
(8, 12, 'AppVendor', '', ''),
(10, 12, 'AppVendor', '', ''),
(14, 13, 'AppVendor', '', ''),
(4, 13, 'AppVendor', '', ''),
(1, 13, 'AppVendor', '', ''),
(6, 13, 'AppVendor', '', ''),
(7, 13, 'AppVendor', '', ''),
(11, 13, 'AppVendor', '', ''),
(12, 14, 'AppVendor', '', ''),
(3, 14, 'AppVendor', '', ''),
(4, 14, 'AppVendor', '', ''),
(6, 14, 'AppVendor', '', ''),
(8, 14, 'AppVendor', '', ''),
(7, 14, 'AppVendor', '', ''),
(10, 14, 'AppVendor', '', ''),
(12, 15, 'AppVendor', '', ''),
(4, 15, 'AppVendor', '', ''),
(6, 15, 'AppVendor', '', ''),
(9, 15, 'AppVendor', '', ''),
(8, 15, 'AppVendor', '', ''),
(7, 15, 'AppVendor', '', ''),
(10, 15, 'AppVendor', '', ''),
(12, 16, 'AppVendor', '', ''),
(3, 16, 'AppVendor', '', ''),
(2, 16, 'AppVendor', '', ''),
(6, 16, 'AppVendor', '', ''),
(7, 16, 'AppVendor', '', ''),
(8, 16, 'AppVendor', '', ''),
(11, 16, 'AppVendor', '', ''),
(13, 17, 'AppVendor', '', ''),
(4, 17, 'AppVendor', '', ''),
(1, 17, 'AppVendor', '', ''),
(6, 17, 'AppVendor', '', ''),
(9, 17, 'AppVendor', '', ''),
(11, 17, 'AppVendor', '', ''),
(14, 18, 'AppVendor', '', ''),
(2, 18, 'AppVendor', '', ''),
(3, 18, 'AppVendor', '', ''),
(4, 18, 'AppVendor', '', ''),
(6, 18, 'AppVendor', '', ''),
(7, 18, 'AppVendor', '', ''),
(8, 18, 'AppVendor', '', ''),
(9, 18, 'AppVendor', '', ''),
(11, 18, 'AppVendor', '', ''),
(12, 19, 'AppVendor', '', ''),
(1, 19, 'AppVendor', '', ''),
(2, 19, 'AppVendor', '', ''),
(3, 19, 'AppVendor', '', ''),
(4, 19, 'AppVendor', '', ''),
(6, 19, 'AppVendor', '', ''),
(7, 19, 'AppVendor', '', ''),
(8, 19, 'AppVendor', '', ''),
(10, 19, 'AppVendor', '', ''),
(13, 20, 'AppVendor', '', ''),
(4, 20, 'AppVendor', '', ''),
(1, 20, 'AppVendor', '', ''),
(2, 20, 'AppVendor', '', ''),
(3, 20, 'AppVendor', '', ''),
(6, 20, 'AppVendor', '', ''),
(7, 20, 'AppVendor', '', ''),
(9, 20, 'AppVendor', '', ''),
(8, 20, 'AppVendor', '', ''),
(11, 20, 'AppVendor', '', ''),
(14, 21, 'AppVendor', '', ''),
(4, 21, 'AppVendor', '', ''),
(6, 21, 'AppVendor', '', ''),
(8, 21, 'AppVendor', '', ''),
(7, 21, 'AppVendor', '', ''),
(10, 21, 'AppVendor', '', ''),
(14, 22, 'AppVendor', '', ''),
(3, 22, 'AppVendor', '', ''),
(1, 22, 'AppVendor', '', ''),
(4, 22, 'AppVendor', '', ''),
(6, 22, 'AppVendor', '', ''),
(8, 22, 'AppVendor', '', ''),
(10, 22, 'AppVendor', '', ''),
(13, 23, 'AppVendor', '', ''),
(1, 23, 'AppVendor', '', ''),
(2, 23, 'AppVendor', '', ''),
(4, 23, 'AppVendor', '', ''),
(6, 23, 'AppVendor', '', ''),
(7, 23, 'AppVendor', '', ''),
(9, 23, 'AppVendor', '', ''),
(8, 23, 'AppVendor', '', ''),
(11, 23, 'AppVendor', '', ''),
(13, 24, 'AppVendor', '', ''),
(4, 24, 'AppVendor', '', ''),
(2, 24, 'AppVendor', '', ''),
(3, 24, 'AppVendor', '', ''),
(6, 24, 'AppVendor', '', ''),
(8, 24, 'AppVendor', '', ''),
(10, 24, 'AppVendor', '', ''),
(13, 25, 'AppVendor', '', ''),
(1, 25, 'AppVendor', '', ''),
(2, 25, 'AppVendor', '', ''),
(6, 25, 'AppVendor', '', ''),
(8, 25, 'AppVendor', '', ''),
(7, 25, 'AppVendor', '', ''),
(9, 25, 'AppVendor', '', ''),
(11, 25, 'AppVendor', '', ''),
(12, 26, 'AppVendor', '', ''),
(3, 26, 'AppVendor', '', ''),
(4, 26, 'AppVendor', '', ''),
(6, 26, 'AppVendor', '', ''),
(8, 26, 'AppVendor', '', ''),
(7, 26, 'AppVendor', '', ''),
(11, 26, 'AppVendor', '', ''),
(12, 27, 'AppVendor', '', ''),
(4, 27, 'AppVendor', '', ''),
(1, 27, 'AppVendor', '', ''),
(2, 27, 'AppVendor', '', ''),
(3, 27, 'AppVendor', '', ''),
(6, 27, 'AppVendor', '', ''),
(9, 27, 'AppVendor', '', ''),
(7, 27, 'AppVendor', '', ''),
(11, 27, 'AppVendor', '', ''),
(14, 28, 'AppVendor', '', ''),
(3, 28, 'AppVendor', '', ''),
(2, 28, 'AppVendor', '', ''),
(4, 28, 'AppVendor', '', ''),
(6, 28, 'AppVendor', '', ''),
(8, 28, 'AppVendor', '', ''),
(9, 28, 'AppVendor', '', ''),
(10, 28, 'AppVendor', '', ''),
(12, 29, 'AppVendor', '', ''),
(2, 29, 'AppVendor', '', ''),
(4, 29, 'AppVendor', '', ''),
(3, 29, 'AppVendor', '', ''),
(6, 29, 'AppVendor', '', ''),
(8, 29, 'AppVendor', '', ''),
(7, 29, 'AppVendor', '', ''),
(10, 29, 'AppVendor', '', ''),
(13, 30, 'AppVendor', '', ''),
(3, 30, 'AppVendor', '', ''),
(2, 30, 'AppVendor', '', ''),
(4, 30, 'AppVendor', '', ''),
(6, 30, 'AppVendor', '', ''),
(7, 30, 'AppVendor', '', ''),
(8, 30, 'AppVendor', '', ''),
(9, 30, 'AppVendor', '', ''),
(10, 30, 'AppVendor', '', ''),
(14, 31, 'AppVendor', '', ''),
(3, 31, 'AppVendor', '', ''),
(6, 31, 'AppVendor', '', ''),
(8, 31, 'AppVendor', '', ''),
(9, 31, 'AppVendor', '', ''),
(7, 31, 'AppVendor', '', ''),
(10, 31, 'AppVendor', '', ''),
(14, 32, 'AppVendor', '', ''),
(1, 32, 'AppVendor', '', ''),
(3, 32, 'AppVendor', '', ''),
(2, 32, 'AppVendor', '', ''),
(6, 32, 'AppVendor', '', ''),
(8, 32, 'AppVendor', '', ''),
(7, 32, 'AppVendor', '', ''),
(9, 32, 'AppVendor', '', ''),
(11, 32, 'AppVendor', '', ''),
(13, 33, 'AppVendor', '', ''),
(3, 33, 'AppVendor', '', ''),
(1, 33, 'AppVendor', '', ''),
(4, 33, 'AppVendor', '', ''),
(2, 33, 'AppVendor', '', ''),
(6, 33, 'AppVendor', '', ''),
(9, 33, 'AppVendor', '', ''),
(8, 33, 'AppVendor', '', ''),
(10, 33, 'AppVendor', '', ''),
(13, 34, 'AppVendor', '', ''),
(2, 34, 'AppVendor', '', ''),
(1, 34, 'AppVendor', '', ''),
(4, 34, 'AppVendor', '', ''),
(3, 34, 'AppVendor', '', ''),
(6, 34, 'AppVendor', '', ''),
(8, 34, 'AppVendor', '', ''),
(9, 34, 'AppVendor', '', ''),
(7, 34, 'AppVendor', '', ''),
(11, 34, 'AppVendor', '', ''),
(13, 35, 'AppVendor', '', ''),
(4, 35, 'AppVendor', '', ''),
(3, 35, 'AppVendor', '', ''),
(6, 35, 'AppVendor', '', ''),
(8, 35, 'AppVendor', '', ''),
(9, 35, 'AppVendor', '', ''),
(7, 35, 'AppVendor', '', ''),
(11, 35, 'AppVendor', '', ''),
(13, 36, 'AppVendor', '', ''),
(1, 36, 'AppVendor', '', ''),
(4, 36, 'AppVendor', '', ''),
(2, 36, 'AppVendor', '', ''),
(6, 36, 'AppVendor', '', ''),
(7, 36, 'AppVendor', '', ''),
(11, 36, 'AppVendor', '', ''),
(12, 37, 'AppVendor', '', ''),
(3, 37, 'AppVendor', '', ''),
(4, 37, 'AppVendor', '', ''),
(1, 37, 'AppVendor', '', ''),
(6, 37, 'AppVendor', '', ''),
(9, 37, 'AppVendor', '', ''),
(11, 37, 'AppVendor', '', ''),
(13, 38, 'AppVendor', '', ''),
(1, 38, 'AppVendor', '', ''),
(4, 38, 'AppVendor', '', ''),
(3, 38, 'AppVendor', '', ''),
(2, 38, 'AppVendor', '', ''),
(6, 38, 'AppVendor', '', ''),
(9, 38, 'AppVendor', '', ''),
(10, 38, 'AppVendor', '', ''),
(13, 39, 'AppVendor', '', ''),
(4, 39, 'AppVendor', '', ''),
(2, 39, 'AppVendor', '', ''),
(3, 39, 'AppVendor', '', ''),
(6, 39, 'AppVendor', '', ''),
(7, 39, 'AppVendor', '', ''),
(9, 39, 'AppVendor', '', ''),
(10, 39, 'AppVendor', '', ''),
(12, 40, 'AppVendor', '', ''),
(3, 40, 'AppVendor', '', ''),
(6, 40, 'AppVendor', '', ''),
(8, 40, 'AppVendor', '', ''),
(10, 40, 'AppVendor', '', ''),
(13, 41, 'AppVendor', '', ''),
(2, 41, 'AppVendor', '', ''),
(4, 41, 'AppVendor', '', ''),
(1, 41, 'AppVendor', '', ''),
(6, 41, 'AppVendor', '', ''),
(7, 41, 'AppVendor', '', ''),
(10, 41, 'AppVendor', '', ''),
(12, 42, 'AppVendor', '', ''),
(1, 42, 'AppVendor', '', ''),
(3, 42, 'AppVendor', '', ''),
(4, 42, 'AppVendor', '', ''),
(2, 42, 'AppVendor', '', ''),
(6, 42, 'AppVendor', '', ''),
(7, 42, 'AppVendor', '', ''),
(8, 42, 'AppVendor', '', ''),
(11, 42, 'AppVendor', '', ''),
(13, 43, 'AppVendor', '', ''),
(2, 43, 'AppVendor', '', ''),
(4, 43, 'AppVendor', '', ''),
(6, 43, 'AppVendor', '', ''),
(9, 43, 'AppVendor', '', ''),
(11, 43, 'AppVendor', '', ''),
(14, 44, 'AppVendor', '', ''),
(3, 44, 'AppVendor', '', ''),
(6, 44, 'AppVendor', '', ''),
(7, 44, 'AppVendor', '', ''),
(9, 44, 'AppVendor', '', ''),
(10, 44, 'AppVendor', '', ''),
(14, 45, 'AppVendor', '', ''),
(3, 45, 'AppVendor', '', ''),
(2, 45, 'AppVendor', '', ''),
(1, 45, 'AppVendor', '', ''),
(6, 45, 'AppVendor', '', ''),
(8, 45, 'AppVendor', '', ''),
(11, 45, 'AppVendor', '', ''),
(13, 46, 'AppVendor', '', ''),
(3, 46, 'AppVendor', '', ''),
(2, 46, 'AppVendor', '', ''),
(1, 46, 'AppVendor', '', ''),
(6, 46, 'AppVendor', '', ''),
(9, 46, 'AppVendor', '', ''),
(11, 46, 'AppVendor', '', ''),
(12, 47, 'AppVendor', '', ''),
(3, 47, 'AppVendor', '', ''),
(4, 47, 'AppVendor', '', ''),
(6, 47, 'AppVendor', '', ''),
(8, 47, 'AppVendor', '', ''),
(7, 47, 'AppVendor', '', ''),
(10, 47, 'AppVendor', '', ''),
(12, 48, 'AppVendor', '', ''),
(2, 48, 'AppVendor', '', ''),
(4, 48, 'AppVendor', '', ''),
(1, 48, 'AppVendor', '', ''),
(6, 48, 'AppVendor', '', ''),
(9, 48, 'AppVendor', '', ''),
(7, 48, 'AppVendor', '', ''),
(8, 48, 'AppVendor', '', ''),
(10, 48, 'AppVendor', '', ''),
(14, 49, 'AppVendor', '', ''),
(4, 49, 'AppVendor', '', ''),
(2, 49, 'AppVendor', '', ''),
(3, 49, 'AppVendor', '', ''),
(1, 49, 'AppVendor', '', ''),
(6, 49, 'AppVendor', '', ''),
(7, 49, 'AppVendor', '', ''),
(11, 49, 'AppVendor', '', ''),
(13, 50, 'AppVendor', '', ''),
(2, 50, 'AppVendor', '', ''),
(4, 50, 'AppVendor', '', ''),
(3, 50, 'AppVendor', '', ''),
(6, 50, 'AppVendor', '', ''),
(7, 50, 'AppVendor', '', ''),
(8, 50, 'AppVendor', '', ''),
(11, 50, 'AppVendor', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` tinyint(4) DEFAULT NULL,
  `name` varchar(10) DEFAULT NULL,
  `created_at` varchar(0) DEFAULT NULL,
  `updated_at` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'chinese', '', ''),
(2, 'western', '', ''),
(3, 'korean', '', ''),
(4, 'indonesian', '', ''),
(5, 'beverages', '', ''),
(6, 'halal', '', ''),
(7, 'lunch', '', ''),
(8, 'dinner', '', ''),
(9, 'breakfast', '', ''),
(10, 'fish', '', ''),
(11, 'meat', '', ''),
(12, 'budget', '', ''),
(13, 'affordable', '', ''),
(14, 'expensive', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` varchar(0) DEFAULT NULL,
  `name` varchar(0) DEFAULT NULL,
  `email` varchar(0) DEFAULT NULL,
  `email_verified_at` varchar(0) DEFAULT NULL,
  `password` varchar(0) DEFAULT NULL,
  `remember_token` varchar(0) DEFAULT NULL,
  `created_at` varchar(0) DEFAULT NULL,
  `updated_at` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `vendors`
--

CREATE TABLE `vendors` (
  `id` tinyint(4) DEFAULT NULL,
  `name` varchar(31) DEFAULT NULL,
  `logo` varchar(54) DEFAULT NULL,
  `created_at` varchar(0) DEFAULT NULL,
  `updated_at` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vendors`
--

INSERT INTO `vendors` (`id`, `name`, `logo`, `created_at`, `updated_at`) VALUES
(1, 'Emmerich Group', 'https://lorempixel.com/640/480/food/?20979', '', ''),
(2, 'Parker-Hammes', 'https://lorempixel.com/640/480/food/?75908', '', ''),
(3, 'Barrows-Willms', 'https://lorempixel.com/640/480/food/?52752', '', ''),
(4, 'Bayer-Zboncak', 'https://lorempixel.com/640/480/food/?13597', '', ''),
(5, 'Kilback-White', 'https://lorempixel.com/640/480/food/?53407', '', ''),
(6, 'Feil-Berge', 'https://lorempixel.com/640/480/food/?18191', '', ''),
(7, 'Cummings Inc', 'https://lorempixel.com/640/480/food/?73234', '', ''),
(8, 'Langosh Ltd', 'https://lorempixel.com/640/480/food/?80830', '', ''),
(9, 'Davis, Quigley and Herman', 'https://lorempixel.com/640/480/food/?36824', '', ''),
(10, 'Champlin and Sons', 'https://lorempixel.com/640/480/food/?59322', '', ''),
(11, 'Stoltenberg-Doyle', 'https://lorempixel.com/640/480/food/?21597', '', ''),
(12, 'Goodwin-Hickle', 'https://lorempixel.com/640/480/food/?21861', '', ''),
(13, 'Schulist, VonRueden and Kemmer', 'https://lorempixel.com/640/480/food/?47751', '', ''),
(14, 'Gutmann, Schowalter and Klein', 'https://lorempixel.com/640/480/food/?48109', '', ''),
(15, 'Rau PLC', 'http://lorempixel.com/output/animals-q-g-640-480-7.jpg', '', ''),
(16, 'Crooks, Gottlieb and Rowe', 'http://lorempixel.com/output/animals-q-g-640-480-7.jpg', '', ''),
(17, 'Daniel, Bernier and Predovic', 'https://lorempixel.com/640/480/food/?75417', '', ''),
(18, 'Bartoletti Ltd', 'https://lorempixel.com/640/480/food/?38317', '', ''),
(19, 'Nitzsche, Crooks and Mueller', 'https://lorempixel.com/640/480/food/?22708', '', ''),
(20, 'Schuster, Frami and Buckridge', 'http://lorempixel.com/output/animals-q-g-640-480-7.jpg', '', ''),
(21, 'Orn-Sauer', 'https://lorempixel.com/640/480/food/?71166', '', ''),
(22, 'O\'Connell Ltd', 'http://lorempixel.com/output/animals-q-g-640-480-7.jpg', '', ''),
(23, 'Hauck Inc', 'https://lorempixel.com/640/480/food/?34895', '', ''),
(24, 'Nolan-Greenfelder', 'https://lorempixel.com/640/480/food/?44637', '', ''),
(25, 'Baumbach-O\'Hara', 'https://lorempixel.com/640/480/food/?74752', '', ''),
(26, 'Turcotte and Sons', 'https://lorempixel.com/640/480/food/?91129', '', ''),
(27, 'Nolan-Fritsch', 'https://lorempixel.com/640/480/food/?94933', '', ''),
(28, 'Nikolaus-Pollich', 'http://lorempixel.com/output/animals-q-g-640-480-7.jpg', '', ''),
(29, 'Walter, Towne and Buckridge', 'https://lorempixel.com/640/480/food/?47243', '', ''),
(30, 'Gaylord PLC', 'https://lorempixel.com/640/480/food/?82699', '', ''),
(31, 'Hammes, Schmitt and Langworth', 'https://lorempixel.com/640/480/food/?30197', '', ''),
(32, 'Blick, Fahey and Parker', 'https://lorempixel.com/640/480/food/?47052', '', ''),
(33, 'Hilpert LLC', 'https://lorempixel.com/640/480/food/?38968', '', ''),
(34, 'Kirlin, Hackett and Larkin', 'https://lorempixel.com/640/480/food/?78269', '', ''),
(35, 'Predovic, Daugherty and Pollich', 'https://lorempixel.com/640/480/food/?69165', '', ''),
(36, 'Mayert Inc', 'https://lorempixel.com/640/480/food/?22260', '', ''),
(37, 'D\'Amore PLC', 'https://lorempixel.com/640/480/food/?78171', '', ''),
(38, 'Greenfelder, Moen and Smitham', 'https://lorempixel.com/640/480/food/?40484', '', ''),
(39, 'Turcotte Inc', 'http://lorempixel.com/output/animals-q-g-640-480-7.jpg', '', ''),
(40, 'Feil, Heathcote and Dibbert', 'https://lorempixel.com/640/480/food/?32249', '', ''),
(41, 'Grady-Weimann', 'https://lorempixel.com/640/480/food/?98935', '', ''),
(42, 'Spencer-Feest', 'https://lorempixel.com/640/480/food/?53021', '', ''),
(43, 'Barton, Thompson and Cronin', 'https://lorempixel.com/640/480/food/?80487', '', ''),
(44, 'Grady-Kreiger', 'https://lorempixel.com/640/480/food/?41057', '', ''),
(45, 'Raynor Ltd', 'https://lorempixel.com/640/480/food/?81730', '', ''),
(46, 'Cormier, Padberg and Weimann', 'https://lorempixel.com/640/480/food/?46898', '', ''),
(47, 'Welch and Sons', 'http://lorempixel.com/output/animals-q-g-640-480-7.jpg', '', ''),
(48, 'Upton, Schaden and Conn', 'http://lorempixel.com/output/animals-q-g-640-480-7.jpg', '', ''),
(49, 'Ritchie-Green', 'https://lorempixel.com/640/480/food/?96891', '', ''),
(50, 'Gusikowski-Hane', 'https://lorempixel.com/640/480/food/?30950', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
