-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 14, 2020 at 10:55 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nursery`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `image`, `created_at`, `updated_at`) VALUES
(4, 'Flower', '1603181034.jpg', '2020-10-20 02:03:54', '2020-10-20 02:03:54'),
(5, 'Fruits', '1603181056.jpg', '2020-10-20 02:04:16', '2020-10-20 02:04:16'),
(6, 'Wood', '1603181266.png', '2020-10-20 02:07:46', '2020-10-20 02:07:46'),
(8, 'New category', '1607938948.jpg', '2020-12-14 03:42:28', '2020-12-14 03:42:28'),
(9, 'Flower2', '1607939198.JPG', '2020-12-14 03:46:39', '2020-12-14 03:46:39');

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
(3, '2020_10_14_183855_create_roles_table', 1),
(4, '2020_10_16_054655_create_categories_table', 1),
(5, '2020_10_16_175845_create_trees_table', 1),
(7, '2020_10_18_133255_create_orders_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `tree_id` int(11) NOT NULL,
  `transaction_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` double NOT NULL,
  `qty` int(11) NOT NULL,
  `currency` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `tree_id`, `transaction_id`, `customer_name`, `customer_mobile`, `customer_email`, `amount`, `qty`, `currency`, `status`, `customer_address`, `city`, `owner_id`, `created_at`, `updated_at`) VALUES
(32, 8, 10, '5facdf9edbf3b', 'Lalshan', '01817319263', 'lal@gmail.com', 20, 2, 'BDT', 'Success', 'D Block Uposhohor Sylhet', 'Sylhet', 9, NULL, NULL),
(33, 8, 10, '5facdfd7bdfaa', 'Lalshan', '01817319263', 'lal@gmail.com', 30, 3, 'BDT', 'Success', 'D Block Uposhohor Sylhet', 'Sylhet', 9, NULL, NULL),
(34, 14, 10, '5face3bdc7950', 'Ohi', '01817319263', 'abc@gmail.com', 70, 7, 'BDT', 'Success', 'D Block Uposhohor Sylhet', 'Sylhet', 9, NULL, NULL),
(36, 8, 10, '5face66f369cf', 'Kamla', '01817319263', 'lal@gmail.com', 30, 3, 'BDT', 'Success', 'D Block Uposhohor Sylhet', 'Sylhet', 9, NULL, NULL),
(38, 22, 13, '5fd73554a2643', 'Nishi', '01817319263', 'nishi@gmail.com', 260, 2, 'BDT', 'Success', 'D Block Uposhohor Sylhet', 'Sylhet', 21, NULL, NULL),
(39, 22, 10, '5fd735ca9e42f', 'Nishi', '01817319263', 'abc@gmail.com', 20, 2, 'BDT', 'Success', 'D Block Uposhohor Sylhet', 'Sylhet', 9, NULL, NULL);

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
('juel@gmail.com', '$2y$10$s43j4wDdlNS6AEqlzyujM.ZNJoxrjToNhtFVZrkDdcLfM/FruYwO2', '2020-10-29 09:53:48');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', NULL, NULL),
(2, 'Nursery', NULL, NULL),
(3, 'User', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `trees`
--

CREATE TABLE `trees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `qty` int(11) NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `picture` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `trees`
--

INSERT INTO `trees` (`id`, `category_id`, `user_id`, `name`, `price`, `qty`, `details`, `picture`, `status`, `created_at`, `updated_at`) VALUES
(4, 5, 6, 'Mango', 200.00, 0, 'Insert Update Delete module is primary requirement for each project, so in this tutorial i will give you step by step instruction for creating crud (Create Read Update Delete) Application in laravel 6. you will understand how to use resource route, controller, blade files, model and migration for crud operation in laravel', '1603183765.jpg', 'Approved', '2020-10-20 02:49:25', '2020-10-20 02:50:52'),
(5, 5, 6, 'Coconut', 300.00, 0, 'Insert Update Delete module is primary requirement for each project, so in this tutorial i will give you step by step instruction for creating crud (Create Read Update Delete) Application in laravel 6. you will understand how to use resource route, controller, blade files, model and migration for crud operation in laravel', '1603183789.jpg', 'Approved', '2020-10-20 02:49:49', '2020-10-20 02:50:35'),
(6, 6, 6, 'Akashi', 180.00, 0, 'Insert Update Delete module is primary requirement for each project, so in this tutorial i will give you step by step instruction for creating crud (Create Read Update Delete) Application in laravel 6. you will understand how to use resource route, controller, blade files, model and migration for crud operation in laravel', '1603184211.png', 'Approved', '2020-10-20 02:56:51', '2020-10-20 02:59:06'),
(8, 5, 9, 'Orange', 80.00, 0, 'The orange is the fruit of various citrus species in the family Rutaceae; it primarily refers to Citrus × sinensis, which is also called sweet orange, to distinguish it from the related Citrus × aurantium, referred to as bitter orange', '1603188654.jpg', 'Approved', '2020-10-20 04:10:54', '2020-10-20 04:12:26'),
(9, 4, 9, 'Lily', 50.00, 0, 'The orange is the fruit of various citrus species in the family Rutaceae; it primarily refers to Citrus × sinensis, which is also called sweet orange, to distinguish it from the related Citrus × aurantium, referred to as bitter orange', '1603188688.jpg', 'Approved', '2020-10-20 04:11:28', '2020-11-11 14:06:06'),
(10, 5, 9, 'Batabi Levu', 10.00, 73, 'erteyrtgyuyi', '1605155457.jpg', 'Approved', '2020-11-11 22:28:58', '2020-12-14 03:52:10'),
(13, 6, 21, 'kODOM', 130.00, 98, 'RYFTJHJLJKitytoyu;tyr[t', '1607939269.JPG', 'Approved', '2020-12-14 03:47:49', '2020-12-14 03:50:12');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `provider_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `email_verified_at`, `provider_id`, `provider`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, 'Fateh Ahmed', 'fateh@gmail.com', '2020-10-19 18:00:00', NULL, NULL, '$2y$10$U8IivBOyiKtjBmI07VpJ4OwzPiYsrQ7uQipWWtS/s3lcm2veg.VkK', 'Xafa7tj5NNzHdDVT1oiyO8WEACEVxrhIdY7ds9IsYn3IreTVg3oKtQKoMXMw', '2020-10-20 00:21:24', '2020-10-20 00:21:24'),
(2, 3, 'Kamal', 'kamal@gmail.com', '2020-10-19 18:00:00', NULL, NULL, '$2y$10$5QcRVnwMk8zOR/r7PGkwXOILKdqSWe0NcG6F.LVDtRsiN7XQmLfNy', NULL, '2020-10-20 01:56:29', '2020-10-20 01:56:29'),
(3, 2, 'Saeed Nursery', 'saeed@gmail.com', '2020-09-30 18:00:00', NULL, NULL, '$2y$10$SD5qIhcMzZe9bBVqyHuVHOz1VEdbLWuyX0y5Lr0GSlkmweiNVIskK', NULL, '2020-10-20 02:09:02', '2020-10-20 02:09:02'),
(4, 3, 'Samad', 'samad@gmail.com', '2020-10-20 02:29:58', NULL, NULL, '$2y$10$lD1AdoGx2flo496alFdKduaurdKFn/vtd6QFZDyxjDogI0WGaXvkW', NULL, '2020-10-20 02:28:10', '2020-10-20 02:29:58'),
(5, 3, 'Rahim', 'rahim@gmail.com', '2020-10-20 02:36:54', NULL, NULL, '$2y$10$rsTgODYeBUQRphNbGWjgg.43ouCP13WxtUKGanp/NfP9C6O8PV6ma', 'ms2YM3nN0o7i7LGeSB4AhDikldiqvvwwhsaj5f0KRBtqEbkj2UfkPFOxfcNW', '2020-10-20 02:36:31', '2020-10-20 02:36:54'),
(6, 2, 'Tareq Nursery', 'tareq@gmail.com', '2020-10-20 02:47:36', NULL, NULL, '$2y$10$yLRYuy/C6ryH1St6N9TKyuax8QXARJrKJE6ipdaxWd6.TATf30TY2', NULL, '2020-10-20 02:47:21', '2020-10-20 02:47:36'),
(8, 3, 'Lalshan', 'lal@gmail.com', '2020-10-20 04:07:17', NULL, NULL, '$2y$10$dG5tojjDPR0bf1YwQlKRiulWIeuWYZtNXXXcI8MBLUSWUAZK7v4qS', NULL, '2020-10-20 04:07:00', '2020-10-20 04:07:17'),
(9, 2, 'Jewel', 'juel@gmail.com', '2020-10-20 04:08:42', NULL, NULL, '$2y$10$qvUL/hbEqgCebiM0SwmrcuTFGC0sxroX1mnG3JOUR6M2LB9kiE3Q2', NULL, '2020-10-20 04:08:24', '2020-10-20 04:08:42'),
(10, 3, 'Nisa', 'nisa@gmail.com', '2020-10-19 18:00:00', NULL, NULL, '$2y$10$FcgvdqGAG4ptIxqzfxvvnuqUmYjvWFBANkiMskjP2qPN652syDZRi', NULL, '2020-10-20 04:18:17', '2020-10-20 04:18:17'),
(11, 2, 'Kamal', 'erte@gmail.com', NULL, NULL, NULL, '$2y$10$9SV0u6Ey2z2mWhZqXxE4UeBplcF0.Ma6jZBCTynl13ZKRBls0yYAy', NULL, '2020-10-23 02:41:05', '2020-10-23 02:41:05'),
(12, 3, 'Saeed', 'dulal@gmail.com', NULL, NULL, NULL, '$2y$10$aQaFyjPzea5kCBcUw1qZueALyZ9W7Cebq4xgj5CdvdhqvSkBgyg.e', NULL, '2020-10-27 00:03:19', '2020-10-27 00:03:19'),
(13, 3, 'Rafi', 'rafi@gmail.com', NULL, NULL, NULL, '$2y$10$HgY5LCTnocki2Lkr5QagA.rkdzzVeRKRrwmZrYNeaI0LtyUsjPGWe', NULL, '2020-11-12 01:20:14', '2020-11-12 01:20:14'),
(14, 3, 'Mahi', 'mahi@gmail.com', '2020-11-12 01:25:39', NULL, NULL, '$2y$10$r831jscVfMTUOc1woVfESOCvss3lrgosH4ISgpTvcIsmF5tpzStEa', NULL, '2020-11-12 01:25:19', '2020-11-12 01:25:39'),
(16, 3, 'Amana', 'amana@gmail.com', '2020-11-12 01:39:49', NULL, NULL, '$2y$10$Z9lXEnqcWtjfE30CJnSToecsf7xCoCZa.w7sOP.o2m4bXqJA7ZtaG', NULL, '2020-11-12 01:39:25', '2020-11-12 01:39:49'),
(21, 2, 'Forhad', 'forhad@gmail.com', '2020-12-14 03:47:18', NULL, NULL, '$2y$10$/pyjjpE6LYTwzgCmcycy0uLpB6nzAUcqlXlvqZ1O5beu/tYNN4NtG', NULL, '2020-12-14 03:47:06', '2020-12-14 03:47:18'),
(22, 3, 'Nishi', 'nishi@gmail.com', '2020-12-14 03:49:16', NULL, NULL, '$2y$10$2aAzsVAr5WsO7qz9ktr/y.RSUx/kM99QPFMHEWC92MZkw4YOrU1du', NULL, '2020-12-14 03:49:05', '2020-12-14 03:49:16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trees`
--
ALTER TABLE `trees`
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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `trees`
--
ALTER TABLE `trees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
