-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 23, 2017 at 04:07 AM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `l5pp`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2017_08_22_110819_create_todos_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('92a5a1fe176b06a089e469c541e97749ff0e38012c6e0d044f83f4354e24913bbb17360bae885303', 2, 2, NULL, '["*"]', 0, '2017-08-22 06:09:39', '2017-08-22 06:09:39', '2017-09-06 11:39:39'),
('985ea52458c11e116cf8e03b459596db333e881a62a31c32b0abc6778b61f0c14c004cb434b1004f', 2, 2, NULL, '["*"]', 0, '2017-08-22 06:09:54', '2017-08-22 06:09:54', '2017-09-06 11:39:54'),
('5425c9e19255ecf1b3be3a5e15f54390270bd3a5d19fc389da6d5f50e321d3d814bb2c7b222f72d6', 2, 2, NULL, '["*"]', 0, '2017-08-22 06:09:56', '2017-08-22 06:09:56', '2017-09-06 11:39:56'),
('a045a956822b6835433cbb9e6477d760b3a171870eb59299ba9b96b6b269a323f636be0282839ef0', 2, 2, NULL, '["*"]', 0, '2017-08-22 06:10:14', '2017-08-22 06:10:14', '2017-09-06 11:40:14'),
('f86c1d6698d9fb697eaf2115b0113821fa3c056770f51d7462ea021122dad6ea2065fbec0ce11fd6', 2, 2, NULL, '["*"]', 0, '2017-08-22 06:10:14', '2017-08-22 06:10:14', '2017-09-06 11:40:14'),
('2bf0fbe867e509b786ad60c2c56cd633cd7fae8873d894d5efce880dc3d460cc1a052c4bbce2767e', 2, 2, NULL, '["*"]', 0, '2017-08-22 06:33:11', '2017-08-22 06:33:11', '2017-09-06 12:03:11'),
('c93e5b97f905ec533c8eec4fd935c19f99be76bda72151f7fde2d6562168da4944e6824a6c5e177e', 2, 2, NULL, '["*"]', 0, '2017-08-22 06:33:55', '2017-08-22 06:33:55', '2017-09-06 12:03:55'),
('f746721c357b14163b83ac93eb759f69bdac6b7d6b466fa4278fd930a5fe300288929bc7d4d69448', 2, 2, NULL, '["*"]', 0, '2017-08-22 06:35:25', '2017-08-22 06:35:25', '2017-09-06 12:05:25'),
('73fe1778ee95ca20fa8a306878e865491bd30eddf46755aa3eff6254146270fb20d642e885cf6fd8', 2, 2, NULL, '["*"]', 0, '2017-08-22 06:35:40', '2017-08-22 06:35:40', '2017-09-06 12:05:40'),
('5fa75c34862cb20300904b56f5ee1826f6118379733a761ef740d4961ec179eb5aa37e989cde6c0a', 2, 2, NULL, '["*"]', 0, '2017-08-22 06:37:43', '2017-08-22 06:37:43', '2017-09-06 12:07:43'),
('02c1342ab655e72f15bcd0af2956e4ea736024b3f4aea903878647072ac140317af39ad8f15af6c3', 2, 2, NULL, '["*"]', 0, '2017-08-22 06:46:40', '2017-08-22 06:46:40', '2017-09-06 12:16:40');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', '0qOqVQQH826EUHkHuXgT7aqYHwk5DLi5hdLkhYwH', 'http://localhost', 1, 0, 0, '2017-08-22 03:16:11', '2017-08-22 03:16:11'),
(2, NULL, 'Laravel Password Grant Client', 'JMwmRwqmN620iLG9vAVIDI0lRICIwqlTmriOjIR1', 'http://localhost', 0, 1, 0, '2017-08-22 03:16:11', '2017-08-22 03:16:11');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2017-08-22 03:16:11', '2017-08-22 03:16:11');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_refresh_tokens`
--

INSERT INTO `oauth_refresh_tokens` (`id`, `access_token_id`, `revoked`, `expires_at`) VALUES
('aec6dcb0eba80b576f8b60f754eeb1310c9b98a7a35e261d7b15a32ea050187fadd4c6e763778559', '92a5a1fe176b06a089e469c541e97749ff0e38012c6e0d044f83f4354e24913bbb17360bae885303', 0, '2017-09-21 11:39:39'),
('0938f789c76b7446d275a250a8a1740e65224aa54269611cd3548b9716cd8e3741e89cbf4f5f0ca1', '985ea52458c11e116cf8e03b459596db333e881a62a31c32b0abc6778b61f0c14c004cb434b1004f', 0, '2017-09-21 11:39:54'),
('b75e6b829105f117d43f513c9b3cc647ee520192da687bf76b96e9d2e7235fd97bb3896d78655734', '5425c9e19255ecf1b3be3a5e15f54390270bd3a5d19fc389da6d5f50e321d3d814bb2c7b222f72d6', 0, '2017-09-21 11:39:56'),
('0dbcde8b7a1296761d9bdc69464ed0b7be5a7cb6a3fdcb04b04a4fed5fc148cded082d65230a2b79', 'a045a956822b6835433cbb9e6477d760b3a171870eb59299ba9b96b6b269a323f636be0282839ef0', 0, '2017-09-21 11:40:14'),
('8d8268940f7cd78aac54a3431303d188dd07c750e4ba32e3570e57790940f1e57b18e5c74f65b292', 'f86c1d6698d9fb697eaf2115b0113821fa3c056770f51d7462ea021122dad6ea2065fbec0ce11fd6', 0, '2017-09-21 11:40:14'),
('324f709720ae6e4788652c741e16f74ba92fd53add37e53055446e5f1ede05d2cdd101ff92a8f10a', '2bf0fbe867e509b786ad60c2c56cd633cd7fae8873d894d5efce880dc3d460cc1a052c4bbce2767e', 0, '2017-09-21 12:03:11'),
('27062e915f4af582f33bc82ea22cfd261836ca94a46cf4299a869b84f839aa803bd79eb8dab393fc', 'c93e5b97f905ec533c8eec4fd935c19f99be76bda72151f7fde2d6562168da4944e6824a6c5e177e', 0, '2017-09-21 12:03:55'),
('482f79d9420091e5c60e73c3dda9af5c5fc7a5a488b714467fb38e956ccee85623b4e99d593891ba', 'f746721c357b14163b83ac93eb759f69bdac6b7d6b466fa4278fd930a5fe300288929bc7d4d69448', 0, '2017-09-21 12:05:25'),
('2154ba120938a90169cc34518bc988bb9a38322599180729786205ce5de0d527973a1ac918f27448', '73fe1778ee95ca20fa8a306878e865491bd30eddf46755aa3eff6254146270fb20d642e885cf6fd8', 0, '2017-09-21 12:05:40'),
('e4251657a242dd6a528861ca219300c737e12acf77317d44a90a4635aa1a3ef60e9c6fd5d9084ce5', '5fa75c34862cb20300904b56f5ee1826f6118379733a761ef740d4961ec179eb5aa37e989cde6c0a', 0, '2017-09-21 12:07:43'),
('56cb2605bda4f934039cdd1d0cd70e4d60825366d74fe18f34fc6b8be26142dd55c4d39a5816be64', '02c1342ab655e72f15bcd0af2956e4ea736024b3f4aea903878647072ac140317af39ad8f15af6c3', 0, '2017-09-21 12:16:40');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `todos`
--

CREATE TABLE `todos` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `task` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `done` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `todos`
--

INSERT INTO `todos` (`id`, `user_id`, `task`, `done`, `created_at`, `updated_at`) VALUES
(1, 1, 'Ducimus at natus qui reiciendis.', 0, '2017-08-22 05:43:30', '2017-08-22 05:43:30'),
(2, 1, 'Quo ad doloribus est quia.', 1, '2017-08-22 05:43:30', '2017-08-22 05:43:30'),
(3, 1, 'Aspernatur adipisci amet quam fuga asperiores ex.', 1, '2017-08-22 05:43:30', '2017-08-22 05:43:30'),
(4, 1, 'Labore aperiam recusandae ullam.', 1, '2017-08-22 05:43:30', '2017-08-22 05:43:30'),
(5, 1, 'Iure facere et corporis quae.', 1, '2017-08-22 05:43:30', '2017-08-22 05:43:30'),
(6, 1, 'Optio et soluta minima dolores pariatur.', 0, '2017-08-22 05:43:30', '2017-08-22 05:43:30'),
(7, 1, 'Nobis illo pariatur facilis qui.', 0, '2017-08-22 05:43:30', '2017-08-22 05:43:30'),
(8, 1, 'Sint similique ut maiores exercitationem debitis ut.', 0, '2017-08-22 05:43:30', '2017-08-22 05:43:30'),
(9, 1, 'Veniam numquam quasi sit ea eos nulla labore.', 0, '2017-08-22 05:43:30', '2017-08-22 05:43:30'),
(10, 1, 'Dolores nostrum placeat porro sit autem doloremque.', 0, '2017-08-22 05:43:30', '2017-08-22 05:43:30');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Govindaraj Kannan', 'govindarajk@sensiple.com', '$2y$10$YyeC69w4muu/ep6rfPaP3O3vk4ViPTxbNA7Ncn2PhryUYcjfZXmFi', NULL, '2017-08-22 03:40:14', '2017-08-22 03:40:14'),
(2, 'Major Daugherty', 'johndoe@scotch.io', '$2y$10$SDGmmD7D8MagEtiHiRQwT.BAliOfFf7roi3thWOe1ji0UOXlVoruG', 'vT2ZeA0CwJ', '2017-08-22 05:43:30', '2017-08-22 05:43:30');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `todos`
--
ALTER TABLE `todos`
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
-- AUTO_INCREMENT for table `todos`
--
ALTER TABLE `todos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
