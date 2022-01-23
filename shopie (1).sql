-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 23 يناير 2022 الساعة 14:54
-- إصدار الخادم: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopie`
--

-- --------------------------------------------------------

--
-- بنية الجدول `failed_jobs`
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
-- بنية الجدول `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `image` text NOT NULL,
  `full_name` text NOT NULL,
  `phone` varchar(100) NOT NULL,
  `qty` int(100) NOT NULL,
  `price` int(100) NOT NULL,
  `created_at` varchar(100) NOT NULL,
  `updated_at` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- إرجاع أو استيراد بيانات الجدول `orders`
--

INSERT INTO `orders` (`id`, `image`, `full_name`, `phone`, `qty`, `price`, `created_at`, `updated_at`) VALUES
(1, 'product_images/1641491643product-2.jpg', 'monzer omer', '249962949287', 1, 152, '2022-01-07 04:05:43', '2022-01-07 04:05:43');

-- --------------------------------------------------------

--
-- بنية الجدول `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `personal_access_tokens`
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
-- بنية الجدول `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `product_title` text NOT NULL,
  `product_desc` text NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_image` text NOT NULL,
  `product_image_1` text NOT NULL,
  `product_cat` text NOT NULL,
  `product_type` tinyint(100) NOT NULL DEFAULT 0,
  `created_at` text NOT NULL,
  `updated_at` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- إرجاع أو استيراد بيانات الجدول `products`
--

INSERT INTO `products` (`id`, `product_title`, `product_desc`, `product_price`, `product_image`, `product_image_1`, `product_cat`, `product_type`, `created_at`, `updated_at`) VALUES
(3, 'oppo', 'smart phone', 120, 'product_images/1641491397product-1.jpg', 'product_images/1641491397product-1-hover.jpg', 'Smartphones', 0, '2022-01-06 17:49:58', '2022-01-06 17:49:58'),
(4, 'nicon', 'nicon camera', 152, 'product_images/1641491643product-2.jpg', 'product_images/1641491643product-2-hover.jpg', 'Camera', 0, '2022-01-06 17:54:03', '2022-01-06 17:54:03'),
(5, 'Hd televesion', 'T.V', 120, 'product_images/1641529381arrival-1.jpg', 'product_images/1641529381arrival-1-hover.jpg', 'Televisions', 1, '2022-01-07 04:23:01', '2022-01-07 04:23:01'),
(6, 'Lenovo Laptop', 'Lenovo', 120, 'product_images/1641529685arrival-2.jpg', 'product_images/1641529685arrival-2-hover.jpg', 'Speakers', 1, '2022-01-07 04:28:05', '2022-01-07 04:28:05'),
(7, 'New Smartphone', 'samsung', 152, 'product_images/1641529739arrival-3.jpg', 'product_images/1641529739arrival-3-hover.jpg', 'Smartphones', 1, '2022-01-07 04:28:59', '2022-01-07 04:28:59'),
(8, 'New Printer', 'New Printer', 85, 'product_images/1641529787arrival-4.jpg', 'product_images/1641529787arrival-4-hover.jpg', 'Speakers', 1, '2022-01-07 04:29:47', '2022-01-07 04:29:47'),
(9, 'New Headphones', 'New', 78, 'product_images/1641529851arrival-5.jpg', 'product_images/1641529851arrival-5-hover.jpg', 'Smartphones', 1, '2022-01-07 04:30:51', '2022-01-07 04:30:51'),
(10, 'New Speakers', 'speaker', 854, 'product_images/1641529896arrival-6.jpg', 'product_images/1641529896arrival-6-hover.jpg', 'Speakers', 1, '2022-01-07 04:31:36', '2022-01-07 04:31:36');

-- --------------------------------------------------------

--
-- بنية الجدول `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` int(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `created_at` text NOT NULL,
  `updated_at` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- بنية الجدول `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_as` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `role_as`, `created_at`, `updated_at`) VALUES
(1, 'monzer omer', 'montheromer8@gmail.com', NULL, '$2y$10$KkM0H8OSE94xLcwuZFVMfuS5YqL.Itys4Llhk74RRdiCjVonjnTqa', NULL, 1, '2021-12-23 03:38:17', '2021-12-23 03:38:17'),
(2, 'Allen Stokely', 'allen@virtual-email.com', NULL, '$2y$10$uWB3g4QNTm.kMrEw8ZvCsOeXIj8L8nyLUxQN4uR6nIfRCEoqw2yz2', NULL, 0, '2021-12-23 04:24:09', '2021-12-23 04:24:09'),
(3, 'monzer omer', 'allen@virtual-email.comh', NULL, '$2y$10$dhZkjU.76AWrqICHjoQgDORB8t3Q1t3C.0YRQrjCo90zm7wlkhQ8W', NULL, 0, '2022-01-07 03:36:22', '2022-01-07 03:36:22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
