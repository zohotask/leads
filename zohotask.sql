-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 28, 2019 at 03:26 PM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `zohotask`
--

-- --------------------------------------------------------

--
-- Table structure for table `leads`
--
use id5510657_zohotask;

CREATE TABLE `leads` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 2),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 2),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 2),
(6, '2016_06_01_000004_create_oauth_clients_table', 2),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 2),
(8, '2019_01_25_020827_create_leads_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('006d30a1ac634c78e04f89ec124b8e54137e4d6cf78be7cbc2c9ca8c9097f25f1e1d157eaa3cab9b', 4, 1, 'TutsForWeb', '[]', 0, '2019-01-24 21:32:49', '2019-01-24 21:32:49', '2020-01-25 03:02:49'),
('0b5a6b68461ad11d17a2f6afa8df9d7e4db3675eab224fd6ab2935f1262ebaba76c72e4111562d79', 2, 1, 'TutsForWeb', '[]', 0, '2019-01-24 21:21:12', '2019-01-24 21:21:12', '2020-01-25 02:51:12'),
('1649d83abef6c5d2a4d38a06e668ca8902b99d8d80e49ddcc9ee5c4f5c3b5ca2c2945af8e4b5c60e', 7, 1, 'ZohoTask', '[]', 0, '2019-01-26 03:10:04', '2019-01-26 03:10:04', '2020-01-26 08:40:04'),
('1c9f79701b48b821e5c8e4b3332ad7536ec28bdbd5eb9a37c89d1ffc7a2ce4d5884eb766dd4eeb22', 9, 1, 'ZohoTask', '[]', 0, '2019-01-27 08:33:19', '2019-01-27 08:33:19', '2020-01-27 14:03:19'),
('1f6bdf59b829ab7a9796087305272a3e8e168a8a49c6cd2227a3214f8c15af2b98cf982768e1cdd9', 11, 1, 'ZohoTask', '[]', 0, '2019-01-28 02:03:47', '2019-01-28 02:03:47', '2020-01-28 07:33:47'),
('2d791798f03833b4e1fbd031f7d146f4dfa54756e77a574284ad7da10c3c77a30c0fbecf9817abce', 8, 1, 'ZohoTask', '[]', 0, '2019-01-27 08:29:52', '2019-01-27 08:29:52', '2020-01-27 13:59:52'),
('39517b551ca339d15779be1db91e11274e07df371ed140f8bf936b2bccb854cd1f7aad5fccf93295', 11, 1, 'ZohoTask', '[]', 0, '2019-01-28 02:04:07', '2019-01-28 02:04:07', '2020-01-28 07:34:07'),
('3f5dc35b91ff258f9e4c612bb9dd42655b51f4c5edda7d896147b40f6bff4261d32ecfcf697decaa', 5, 1, 'ZohoTask', '[]', 0, '2019-01-25 21:16:16', '2019-01-25 21:16:16', '2020-01-26 02:46:16'),
('46b054e478df7dcc3b1a2a16c094766e32dd037ad7c2488834a1f3e7f0544e7701fc5dc5ed9b4df6', 9, 1, 'ZohoTask', '[]', 0, '2019-01-27 20:30:52', '2019-01-27 20:30:52', '2020-01-28 02:00:52'),
('54d9f20545765e5bf548ddb44d7906c29d2312a876e9032e878746c524e3bbac67abb158ec6749d5', 1, 1, 'TutsForWeb', '[]', 0, '2019-01-24 20:45:42', '2019-01-24 20:45:42', '2020-01-25 02:15:42'),
('771e45456d168a15d8200f22e049086d3881cac7a59b3926fc2590fd13549a5ecf05aa233d36f521', 6, 1, 'ZohoTask', '[]', 0, '2019-01-26 03:04:50', '2019-01-26 03:04:50', '2020-01-26 08:34:50'),
('8dc805dbfc2b88c8f19cbc586093eafed6f1420da23567ba38fb0da3e7717fb90401f9a7d3fd6754', 10, 1, 'ZohoTask', '[]', 0, '2019-01-28 01:58:40', '2019-01-28 01:58:40', '2020-01-28 07:28:40'),
('c22c999bd0e2b7d70442f6cfa8e4c2f2f6851ece3ef23ed735ecf3a27d0fb15910e4845efe2587a5', 7, 1, 'ZohoTask', '[]', 0, '2019-01-26 03:11:15', '2019-01-26 03:11:15', '2020-01-26 08:41:15'),
('f1b66ed7b843d885570884f4c9dbae383a5c21d48066a857c58ba990809ca52036684baede0e469b', 1, 1, 'TutsForWeb', '[]', 0, '2019-01-24 10:32:49', '2019-01-24 10:32:49', '2020-01-24 16:02:49'),
('f62768ffcafe106059ad8954e7089472aab6c59852c7801920f510d6c9ee714e73ec7d7175ce4061', 3, 1, 'TutsForWeb', '[]', 0, '2019-01-24 21:30:04', '2019-01-24 21:30:04', '2020-01-25 03:00:04'),
('ffb8d36fd3104396820f97c852fd8c390e184728519d469d6a02e22d34cc7da5a04cfa5da509b599', 6, 1, 'ZohoTask', '[]', 0, '2019-01-26 01:25:30', '2019-01-26 01:25:30', '2020-01-26 06:55:30');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `scopes` text COLLATE utf8_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'l2kswNfpgVOTRDHctE4HRXiziXT5qyhJm4uUr1WI', 'http://localhost', 1, 0, 0, '2019-01-24 10:00:27', '2019-01-24 10:00:27'),
(2, NULL, 'Laravel Password Grant Client', 'Qr5JP27n4IMsRJKla8mEb9G2W4rflkwIJUVHpV4G', 'http://localhost', 0, 1, 0, '2019-01-24 10:00:27', '2019-01-24 10:00:27');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2019-01-24 10:00:27', '2019-01-24 10:00:27');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `client_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `client_secret` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'null',
  `scope` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'null',
  `ruri` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'null',
  `zoho_token` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'null',
  `zoho_refresh_token` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `client_id`, `client_secret`, `scope`, `ruri`, `zoho_token`, `zoho_refresh_token`, `remember_token`, `created_at`, `updated_at`) VALUES
(11, 'testuser', 'test@zoho.com', '$2y$10$e5P1ibq82vKC.PnYr15c9e6sRjCNfU9Sp44.cpZKviWxL4CcMb1pG', '1000.LG9IX802O61P66093JIGPQPKD2DUML', '1e42511f8d26ec7f167cf6805f2bc1521180f5294a', 'ZohoCRM.modules.ALL', 'https://zetoe.000webhostapp.com/zoho/index.html', '1000.20876ec24370feaedb9ad77fd03fb3a2.b72f82c66666d29402d3da375f985629', '1000.538b58ba13b4086588aeb11269418cdf.b4f74fdbd384ecc3a5622802ea2ba471', NULL, '2019-01-28 02:03:47', '2019-01-28 02:03:47');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `leads`
--
ALTER TABLE `leads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
-- AUTO_INCREMENT for table `leads`
--
ALTER TABLE `leads`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
