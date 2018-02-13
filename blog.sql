-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 09, 2018 at 09:16 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title`, `content`, `created_at`, `updated_at`, `user_id`) VALUES
(15, 'Article', 'ASfsafgas', '2018-02-07 23:38:25', '2018-02-07 23:38:25', 2),
(19, 'saDAS', 'DASDSAD', '2018-02-08 23:51:47', '2018-02-08 23:51:47', 1);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `content` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `article_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `content`, `article_id`, `user_id`, `created_at`, `updated_at`) VALUES
(3, 'asdasd', 15, 1, '2018-02-08 00:34:24', '2018-02-08 00:34:24'),
(6, 'asdsad', 15, 1, '2018-02-09 00:07:46', '2018-02-09 00:07:46'),
(7, 'dasdsad', 15, 1, '2018-02-09 00:07:50', '2018-02-09 00:07:50'),
(8, 'sadsafsadfdsf', 15, 1, '2018-02-09 00:07:55', '2018-02-09 00:07:55'),
(9, 'dfdsfadsf', 19, 1, '2018-02-09 00:08:24', '2018-02-09 00:08:24'),
(10, 'sdasdasdas', 15, 1, '2018-02-09 00:08:56', '2018-02-09 00:08:56'),
(11, 'dasfadfdsfdsfaasfd', 15, 1, '2018-02-09 00:09:26', '2018-02-09 00:09:26'),
(12, 'dasdasda', 15, 1, '2018-02-09 00:10:00', '2018-02-09 00:10:00'),
(13, 'dasad', 15, 1, '2018-02-09 00:10:13', '2018-02-09 00:10:13'),
(14, 'dasdas', 15, 1, '2018-02-09 00:10:55', '2018-02-09 00:10:55'),
(15, 'dsadas', 15, 1, '2018-02-09 00:11:45', '2018-02-09 00:11:45');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(5, '2018_02_06_024911_create_articles_table', 2),
(8, '2018_02_08_024434_add_user_id_to_articles', 3),
(11, '2018_02_08_051650_create_comments_table', 4);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Emil Tapire', 'emilcarlo@gmail.com', '$2y$10$BtBMHzdGbdKLC3IE3YDKNeZIaX3/0ArjoAloM./Yimklwe5qjuEN.', 'a7J19V2Cz8ngVT8lEU1EXh0nSy6ZlZupMZrRIPSwBfgyxmVvpXaACfOmWkno', '2018-02-07 17:30:04', '2018-02-07 17:30:04'),
(2, 'Carlo Datiles', 'carlodatiles@gmail.com', '$2y$10$cIz0HpZxfCOF.ZsekjbJt.8JNLJ4u/gxta3qBqcv2CijtV.sAe3lm', 'lMxow9o1GGwcInl4SnPCbcT9v4aVkoDVc0wGAOc2NIhWGxe2QKRzgiFXR2EZ', '2018-02-07 19:37:03', '2018-02-07 19:37:03'),
(3, 'Emil Tapire', 'emilcarlotapire@msn.com', '$2y$10$Fk6ZlVfRIvePRldACeCrK.GYJUv00Rx3sRpc8mvX552c4JFSFPp1y', 'mLMVraCEAJPiXumZLrVeVPTyG1iuGDVMJmbKbd4NK4XyKPM82xNbHtjFfP82', '2018-02-08 17:47:09', '2018-02-08 17:47:09'),
(4, 'Carlo Tapire', 'mitcemil@yahoo.com', '$2y$10$p2IqINriXlHhiSGDZ4ZTd.sZxBgt8qYrFjsXkhOLAwkv0ZK7hboRa', 'gWHKWBvDZV7XDYHLzRUrsdM1KWRrjUgclHdVVtqfG3xIg0vCDAMxJIPZOHyE', '2018-02-08 19:00:39', '2018-02-08 19:00:39'),
(5, 'Raquel Galapon', 'rgalapon@gmail.com', '$2y$10$gM/El7lPjyZXgtjHuoN18uvRp0avmFkOC0mpTS5J20CBCCtqLABdK', 'Sy7IEle5OiquD9DRYOOYPzm0V6mwjaeUYzAIzvtSHxTxg8bH8I2TDhmEA4ot', '2018-02-08 19:09:09', '2018-02-08 19:09:09'),
(6, 'James Abalos', 'jabalos@gmail.com', '$2y$10$NnBxtvIKBqKM0a9H3vEbtuZMqTqftQnqIZH9BorR0SY78isGm3wcG', 'hOx4CWVgfy37ecsNdllWT3dBU5ABhWUDoZBcOwF44vKnE9X0IWYNdmo3Awx3', '2018-02-08 19:11:14', '2018-02-08 19:11:14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `articles_user_id_foreign` (`user_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_user_id_foreign` (`user_id`),
  ADD KEY `comments_article_id_foreign` (`article_id`);

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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `articles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_article_id_foreign` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
