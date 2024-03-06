-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 05, 2024 at 08:56 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `feedback`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_01_08_053007_create_roles_table', 2),
(6, '2023_01_08_061051_create_events_table', 3),
(7, '2023_01_08_071346_create_posts_table', 4),
(8, '2023_01_08_075301_create_post_likes_table', 5),
(9, '2023_01_08_083044_create_post_comments_table', 6),
(10, '2023_01_09_055503_create_society_likes_table', 7),
(11, '2023_01_10_064240_create_student_friends_table', 8),
(12, '2023_01_10_073404_create_messages_table', 9);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'auth_token', '29d8cec51e8b84bbc738f21c3b86c192a6eb3ad051602ab645f7b3841ea19273', '[\"*\"]', NULL, NULL, '2023-01-08 13:56:51', '2023-01-08 13:56:51'),
(2, 'App\\Models\\User', 4, 'auth_token', '24494f22ae742fffe5635393fc44db8296ca1af1b2b4e103e0e804dcb54cfdd9', '[\"*\"]', NULL, NULL, '2023-01-08 13:57:11', '2023-01-08 13:57:11'),
(3, 'App\\Models\\User', 6, 'auth_token', '7bb27383d11eee813f0d6894a4b2d16015429a7beccd99da65ace4c40d64b872', '[\"*\"]', NULL, NULL, '2023-01-08 13:57:27', '2023-01-08 13:57:27'),
(4, 'App\\Models\\User', 3, 'auth_token', 'c55eb762c7a3e4c377e17d6e8b85671eda6370a2e9f969c086f14737de8ee9a5', '[\"*\"]', NULL, NULL, '2023-01-08 13:57:46', '2023-01-08 13:57:46'),
(5, 'App\\Models\\User', 1, 'auth_token', '616e83e535ac3dd03fef41e8a4fae35903087978bfd2d757ebac1a847b7abdcf', '[\"*\"]', NULL, NULL, '2023-01-08 13:58:03', '2023-01-08 13:58:03'),
(6, 'App\\Models\\User', 4, 'auth_token', 'fc15fa69b2fed46d925df6544ec54b59ab2a81031590fdb80b08e8a02c20ab8e', '[\"*\"]', '2023-01-08 15:34:18', NULL, '2023-01-08 14:26:20', '2023-01-08 15:34:18'),
(7, 'App\\Models\\User', 1, 'auth_token', '85a6e24c42e4830baa64890e22cc4c7827c719c89ffd0fd1a112c68db9c65dd3', '[\"*\"]', '2023-01-09 14:23:00', NULL, '2023-01-08 16:00:30', '2023-01-09 14:23:00'),
(8, 'App\\Models\\User', 5, 'auth_token', '81e070a7b18014e6c34e184a44a4a5851ad164c69f4b4960989e3e64e45dcdc9', '[\"*\"]', '2023-01-09 14:24:19', NULL, '2023-01-09 14:23:35', '2023-01-09 14:24:19'),
(9, 'App\\Models\\User', 4, 'auth_token', 'f6c104259f891a420293c53dc9ed5c39435df1fcbc3bc7d52381941105fdf52e', '[\"*\"]', '2023-01-09 14:25:26', NULL, '2023-01-09 14:24:56', '2023-01-09 14:25:26'),
(10, 'App\\Models\\User', 1, 'auth_token', '000d7694e06fbc3fac02e70ebd630713fcf298372bb83e61a2abf541a93fabb8', '[\"*\"]', '2023-01-09 16:33:32', NULL, '2023-01-09 14:25:49', '2023-01-09 16:33:32'),
(12, 'App\\Models\\User', 3, 'auth_token', '320f7a11d6700a8a5e7d7077319455993e6ba00f49dc79641c64f2b2f82d65e4', '[\"*\"]', NULL, NULL, '2023-01-23 06:09:15', '2023-01-23 06:09:15'),
(13, 'App\\Models\\User', 2, 'auth_token', '3ad206c0ee4e0c1c824ee67952c73056c61f4edceeedded75fedc513d8e54b94', '[\"*\"]', NULL, NULL, '2023-01-23 06:10:01', '2023-01-23 06:10:01'),
(14, 'App\\Models\\User', 5, 'auth_token', 'ac2c16aed6f6f414700caa5e76be11945a73a95fd13f9e659762e7eb074c3664', '[\"*\"]', NULL, NULL, '2023-01-23 06:10:30', '2023-01-23 06:10:30'),
(15, 'App\\Models\\User', 3, 'auth_token', '7810aa2b7da0156693513197b9980bc691a476c0edf46286aa93116b6abfc0d9', '[\"*\"]', NULL, NULL, '2023-01-23 08:40:05', '2023-01-23 08:40:05'),
(16, 'App\\Models\\User', 3, 'auth_token', '413806f18e7b2be52df07086efd9fb1208af7b24d917a03442fcd89df5e434c2', '[\"*\"]', NULL, NULL, '2023-01-23 08:40:25', '2023-01-23 08:40:25'),
(17, 'App\\Models\\User', 3, 'auth_token', 'a99f0d956b663307be6b16fddb6d199bab366859d1312452b6a58ef997b3cbd2', '[\"*\"]', NULL, NULL, '2023-01-23 08:41:16', '2023-01-23 08:41:16'),
(18, 'App\\Models\\User', 3, 'auth_token', '0da80d0c38696ffc0de2710ed1b2bf5bc12c75069f25e2aabbe72bdcbd8bd006', '[\"*\"]', NULL, NULL, '2023-01-23 08:44:51', '2023-01-23 08:44:51'),
(19, 'App\\Models\\User', 3, 'auth_token', 'd2e6c08f9e1db681c56abdaebff37f983f0cd7fb302b37b165cc635e6066fb5f', '[\"*\"]', NULL, NULL, '2023-01-23 08:48:38', '2023-01-23 08:48:38'),
(20, 'App\\Models\\User', 3, 'auth_token', 'f65f896c8700c660f8244e182676d4456712913acac984be02f144f4bbb778de', '[\"*\"]', NULL, NULL, '2023-01-23 08:49:00', '2023-01-23 08:49:00'),
(21, 'App\\Models\\User', 3, 'auth_token', '80c11fb0bbd0248aaca8ff3d25bfbaa0a3152e8bdbf56c0df13c536269d938fb', '[\"*\"]', NULL, NULL, '2023-01-23 08:49:48', '2023-01-23 08:49:48'),
(23, 'App\\Models\\User', 5, 'auth_token', '9529590066a2f250fdda68a4cfaeee3f9f2f8d0e1088e92fe60e917777f732e3', '[\"*\"]', NULL, NULL, '2023-01-24 09:25:28', '2023-01-24 09:25:28'),
(24, 'App\\Models\\User', 3, 'auth_token', '7c8d0f57ed835201af89995f1f18044e242ced1d62fbc5c906faa5dddaf33bf5', '[\"*\"]', NULL, NULL, '2023-01-25 13:51:26', '2023-01-25 13:51:26'),
(25, 'App\\Models\\User', 3, 'auth_token', '6976b8cb152a936a47366eefb8b03f2623744ebe9cbb45c4c6d6324eab1ad1cf', '[\"*\"]', NULL, NULL, '2023-01-25 13:51:28', '2023-01-25 13:51:28'),
(26, 'App\\Models\\User', 5, 'auth_token', '6412b275e7e9724c32cdd5df67cd6b6889ac33830a29829a18268d4c4d4ed84d', '[\"*\"]', NULL, NULL, '2023-01-26 01:07:39', '2023-01-26 01:07:39'),
(27, 'App\\Models\\User', 5, 'auth_token', 'bf9813027152f5d81a712d4e76e992e7765cbc5ded3bcb90ae483d5b3a863b79', '[\"*\"]', '2023-01-26 14:07:33', NULL, '2023-01-26 01:43:15', '2023-01-26 14:07:33'),
(28, 'App\\Models\\User', 3, 'auth_token', '6d669197aed59e567dd59ff205d68c4db73581dba54468555152ed01d8f6d8b6', '[\"*\"]', NULL, NULL, '2023-01-26 16:07:05', '2023-01-26 16:07:05'),
(29, 'App\\Models\\User', 3, 'auth_token', 'a17d3d14b5f05fc7297f1a049b601f29fe2b56fa7e6b889e3b1237e874804564', '[\"*\"]', '2023-01-26 16:09:03', NULL, '2023-01-26 16:07:18', '2023-01-26 16:09:03'),
(30, 'App\\Models\\User', 3, 'auth_token', '991b20fdfeaaa3967b50a16432e2f6fa9e56a28870b4e552b075defda3016cc7', '[\"*\"]', '2023-01-26 16:11:21', NULL, '2023-01-26 16:11:11', '2023-01-26 16:11:21'),
(31, 'App\\Models\\User', 3, 'auth_token', '7a1d0566f51464fab1e906293b410ad99d4fed2c67ba3cc1c3d53cc449d47fc7', '[\"*\"]', '2023-01-26 16:12:17', NULL, '2023-01-26 16:12:02', '2023-01-26 16:12:17'),
(32, 'App\\Models\\User', 4, 'auth_token', '4e02c06fb3f292537cd98eb6c7946663b29cdc6549d81392f76544827d0b9fea', '[\"*\"]', '2023-01-26 16:33:34', NULL, '2023-01-26 16:12:32', '2023-01-26 16:33:34'),
(33, 'App\\Models\\User', 1, 'auth_token', '0f8aca4c384152fbbb05958b6c0ba315be2a30e751ea260d5b41de4ec246c2a8', '[\"*\"]', NULL, NULL, '2023-01-28 15:44:38', '2023-01-28 15:44:38'),
(34, 'App\\Models\\User', 1, 'auth_token', '3cb70fb3e50b75fc0731c3ef78ce8ea441862c350b28bdf1c531c0fbf6896688', '[\"*\"]', NULL, NULL, '2023-01-28 16:00:21', '2023-01-28 16:00:21'),
(35, 'App\\Models\\User', 6, 'auth_token', '4d6cbb068a140cd9640773d9a5976eb9f59790b36ff00e5be4882b59f50b2fcb', '[\"*\"]', NULL, NULL, '2023-01-28 16:00:47', '2023-01-28 16:00:47'),
(36, 'App\\Models\\User', 6, 'auth_token', '71e0633fd02b2df8402760f9d9ac4c9599ab1bcd1d679add3f1f360dc48028e2', '[\"*\"]', NULL, NULL, '2023-01-28 16:02:27', '2023-01-28 16:02:27'),
(37, 'App\\Models\\User', 6, 'auth_token', 'ecc65462221523bc92d91c1570e206a252828b7f0b0d43efc8d465f310134016', '[\"*\"]', NULL, NULL, '2023-01-28 16:05:10', '2023-01-28 16:05:10'),
(38, 'App\\Models\\User', 6, 'auth_token', 'd50f5a52dce7cc1a072ab5d17b14adeee03453edfabc9d763accb9d3d8da8134', '[\"*\"]', NULL, NULL, '2023-01-28 16:09:05', '2023-01-28 16:09:05'),
(39, 'App\\Models\\User', 6, 'auth_token', '9bb04b0978228d0e9aa03aba9cd07c0549939f26cbae76869d2999e1a8315b41', '[\"*\"]', '2023-01-30 08:37:17', NULL, '2023-01-30 07:34:24', '2023-01-30 08:37:17'),
(40, 'App\\Models\\User', 1, 'auth_token', '84e57d44d2a9251a671c0753c156f6bf9ecae775fdf890eeaa196d06542b4097', '[\"*\"]', '2023-01-30 08:38:03', NULL, '2023-01-30 08:37:39', '2023-01-30 08:38:03'),
(41, 'App\\Models\\User', 1, 'auth_token', 'c4196c8e4dd838c36bd993a3fe57347977cc3cccab646668ff50f2376a71721e', '[\"*\"]', NULL, NULL, '2023-01-30 08:49:20', '2023-01-30 08:49:20'),
(42, 'App\\Models\\User', 1, 'auth_token', 'cbd0166209a10de7d71f8dbc49799fad6c130d360ac7df80066a43ded2cfc51a', '[\"*\"]', NULL, NULL, '2023-01-30 08:50:30', '2023-01-30 08:50:30'),
(43, 'App\\Models\\User', 6, 'auth_token', '10116eb2fd054d44c70bcbea39203e4c4b8ebc5bce150f83f6c2311b650179c3', '[\"*\"]', NULL, NULL, '2023-01-30 08:51:47', '2023-01-30 08:51:47'),
(44, 'App\\Models\\User', 6, 'auth_token', '13974d3a86e1a6ba502004e03aa5172972e784940aee38871da754e74552cb4c', '[\"*\"]', NULL, NULL, '2023-01-30 08:52:23', '2023-01-30 08:52:23'),
(45, 'App\\Models\\User', 1, 'auth_token', 'ee131b145375956806744ed19d5d16e209b29d423aa70e31627dacd78d464f68', '[\"*\"]', '2023-01-30 08:56:28', NULL, '2023-01-30 08:53:21', '2023-01-30 08:56:28'),
(46, 'App\\Models\\User', 1, 'auth_token', '7cbbefecd579f8fb480e480632b195c8d4a73432d2b39c153b05a200bf518420', '[\"*\"]', NULL, NULL, '2023-01-30 08:56:32', '2023-01-30 08:56:32'),
(47, 'App\\Models\\User', 6, 'auth_token', '6fdc2979ce44930f4ade5f13a33b810c9c6b88dac31c38a6440973e406d7b9a9', '[\"*\"]', NULL, NULL, '2023-01-30 08:56:46', '2023-01-30 08:56:46'),
(48, 'App\\Models\\User', 7, 'auth_token', '83c7d611ba683e9b5996d5382c11b74e874c68043939a526744e0e13afa717b2', '[\"*\"]', NULL, NULL, '2023-01-30 08:57:32', '2023-01-30 08:57:32'),
(49, 'App\\Models\\User', 7, 'auth_token', 'ca49792715808520e09ce285d526fe7120c758d0f6010e8e7344c3a6302939f7', '[\"*\"]', NULL, NULL, '2023-01-30 08:59:40', '2023-01-30 08:59:40'),
(50, 'App\\Models\\User', 1, 'auth_token', '8d75ecd76c65ce8f4f0515d78b895dcd67c6a65dddf8b3deabd9725e3462ca76', '[\"*\"]', NULL, NULL, '2023-01-30 09:00:07', '2023-01-30 09:00:07'),
(51, 'App\\Models\\User', 1, 'auth_token', '79b555a7b70ff9dcfe2083c61fee1c77f3a5ac49607e9f7811caff50e489edfb', '[\"*\"]', NULL, NULL, '2023-01-30 09:00:41', '2023-01-30 09:00:41'),
(52, 'App\\Models\\User', 7, 'auth_token', '6d3b2a03d61f4eb8654abffff2254459a9d91dcac535d06aa15757ab2aa238a0', '[\"*\"]', '2023-01-30 12:44:43', NULL, '2023-01-30 10:19:14', '2023-01-30 12:44:43'),
(53, 'App\\Models\\User', 7, 'auth_token', 'da579ca574faff2023e298c43e83f8fda2a5d09e95f06839b605ccba4d995753', '[\"*\"]', NULL, NULL, '2023-01-30 10:19:50', '2023-01-30 10:19:50'),
(54, 'App\\Models\\User', 7, 'auth_token', 'a38f82b8ca2d4a1e0fce1136c44dd8ddc7e7cad02d0f6b3970c081b00442dcd0', '[\"*\"]', NULL, NULL, '2023-01-30 10:26:04', '2023-01-30 10:26:04'),
(55, 'App\\Models\\User', 7, 'auth_token', 'b28857fb632154b31449737a3b047ba2fe629c1484eb3a86a27bc298faacf87d', '[\"*\"]', NULL, NULL, '2023-01-30 10:26:27', '2023-01-30 10:26:27'),
(56, 'App\\Models\\User', 7, 'auth_token', '00e236fb8204fba82c562a03d7ab9af6cfef3bfc80f14115c9f65486b2d0dadf', '[\"*\"]', NULL, NULL, '2023-01-30 12:17:11', '2023-01-30 12:17:11'),
(57, 'App\\Models\\User', 7, 'auth_token', 'f8a9301acaf199946ffa786f10ffdf9ff837c6515bc61c0e4afa2a3ccb18d9e2', '[\"*\"]', NULL, NULL, '2023-01-30 12:30:21', '2023-01-30 12:30:21'),
(58, 'App\\Models\\User', 1, 'auth_token', 'bad1f4aef272f559434c39a87c96eac979ac74d6ef28ecccacb82c3d936a5528', '[\"*\"]', '2023-01-30 12:59:00', NULL, '2023-01-30 12:45:03', '2023-01-30 12:59:00'),
(59, 'App\\Models\\User', 6, 'auth_token', '95f9e6c9e044d0e980b4b87c8c9371f8c1808861b238d9b61d9c5bc1c1fe95a7', '[\"*\"]', '2023-01-30 13:05:17', NULL, '2023-01-30 12:59:29', '2023-01-30 13:05:17'),
(60, 'App\\Models\\User', 1, 'auth_token', '7ea23b749066f74405e8aa287c2045b60a84de04aa476e348ee0676625f23785', '[\"*\"]', '2024-02-26 09:02:57', NULL, '2024-02-26 08:30:26', '2024-02-26 09:02:57'),
(61, 'App\\Models\\User', 1, 'auth_token', '47ec6274bd67e3cbd7875f8374d7ee34b05e5785a576dd7a59d8526697a94814', '[\"*\"]', NULL, NULL, '2024-02-26 11:51:36', '2024-02-26 11:51:36'),
(62, 'App\\Models\\User', 1, 'auth_token', 'dd57639fea86cd2de731a535aba0872fef243e08f0baef3025e8f2e28b1f02bb', '[\"*\"]', NULL, NULL, '2024-03-05 11:42:28', '2024-03-05 11:42:28'),
(63, 'App\\Models\\User', 1, 'auth_token', '35c92f924ed1f5040153e54237d397db5cb19da8ea81f1cb3351002ad09a14db', '[\"*\"]', NULL, NULL, '2024-03-05 11:44:27', '2024-03-05 11:44:27'),
(64, 'App\\Models\\User', 1, 'auth_token', 'd156822e21e81e5a60f41b49e3ac1dcf70ddc8906536b7d53ef1aca89c98a3ea', '[\"*\"]', NULL, NULL, '2024-03-05 11:44:46', '2024-03-05 11:44:46'),
(65, 'App\\Models\\User', 1, 'auth_token', 'd12dc8d30417f39835874e0427fe11ffa80a92b8eea2cf65fd99730778da215e', '[\"*\"]', NULL, NULL, '2024-03-05 11:47:04', '2024-03-05 11:47:04'),
(66, 'App\\Models\\User', 1, 'auth_token', 'a99fba8e17bf76e2fc2e7554c4e8cb1c0b7f0d1e27e65402778ce1d84d3ed0e6', '[\"*\"]', NULL, NULL, '2024-03-05 11:50:03', '2024-03-05 11:50:03');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `joinby` varchar(25) NOT NULL,
  `participate` varchar(50) NOT NULL,
  `message` text NOT NULL,
  `suggest` text NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `fname`, `lname`, `email`, `joinby`, `participate`, `message`, `suggest`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Junaid', 'Hafeez', 'junaidhafeez18@gmail.com', 'yes', 'Advertisment', 'Test 1', 'Test 2', '2023-01-30 07:56:43', '2023-01-30 07:56:43', NULL),
(2, 'Junaid', 'Hafeez', 'junaidhafeez18@gmail.com', 'yes', 'Advertisment', 'Test 3', 'Test 4', '2023-01-30 07:56:43', '2023-01-30 07:56:43', NULL),
(3, 'Junaid', 'Hafeez', 'junaidhafeez@gmail.com', 'yes', 'Social Media', 'hello test 1', 'hello test 2', '2024-03-05 13:37:58', '2024-03-05 13:37:58', NULL),
(4, 'Junaid', 'Hafeez', 'junaidhafeez@gmail.com', 'Maybe', 'Google Search', 'hello dummy text 1', 'hello dummy text 2', '2024-03-05 14:07:07', '2024-03-05 14:07:07', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `post_comments`
--

CREATE TABLE `post_comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_comments`
--

INSERT INTO `post_comments` (`id`, `student_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Thanks for the valuable information.', '2024-03-03 13:05:13', '2024-03-03 13:05:13');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `role`, `created_at`, `updated_at`) VALUES
(1, 'Admin', '2023-01-08 05:36:50', NULL),
(2, 'Student', '2023-01-08 05:36:50', NULL),
(3, 'Society', '2023-01-08 05:37:11', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role_id` int(11) NOT NULL,
  `profile_pic` varchar(255) DEFAULT NULL,
  `cover_photo` varchar(255) DEFAULT NULL,
  `tagline` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `login_status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '1- Active 0- Offline',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role_id`, `profile_pic`, `cover_photo`, `tagline`, `description`, `login_status`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Junaid', 'junaidhafeez@gmail.com', NULL, '$2y$10$VG8xl92o2c1/cUtloNYx4eb5rBLwGPJcZxSZS6YDBPlyxsRUvuVYe', 2, 'junaid.jpg', NULL, NULL, NULL, 0, NULL, '2023-01-08 05:39:34', '2024-03-05 14:55:08', NULL);

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
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_comments`
--
ALTER TABLE `post_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `post_comments`
--
ALTER TABLE `post_comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
