-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 31, 2023 at 11:43 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `attendance_tracker`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendances`
--

CREATE TABLE `attendances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `subject_id` bigint(20) UNSIGNED NOT NULL,
  `attendance_date` date NOT NULL,
  `present` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attendances`
--

INSERT INTO `attendances` (`id`, `student_id`, `subject_id`, `attendance_date`, `present`, `created_at`, `updated_at`) VALUES
(4, 1, 2, '2023-07-30', 1, '2023-07-30 13:52:43', '2023-07-30 13:52:43'),
(5, 2, 2, '2023-07-30', 1, '2023-07-30 13:52:43', '2023-07-30 13:52:43'),
(6, 1, 1, '2023-07-30', 1, '2023-07-30 14:31:53', '2023-07-30 14:31:53'),
(9, 1, 1, '2023-07-30', 1, '2023-07-30 14:41:28', '2023-07-30 14:41:28'),
(10, 1, 1, '2023-07-30', 1, '2023-07-30 14:45:19', '2023-07-30 14:45:19'),
(12, 2, 2, '2023-01-01', 1, '2023-07-30 14:55:54', '2023-07-30 14:55:54'),
(13, 2, 2, '2023-01-01', 1, '2023-07-30 14:56:24', '2023-07-30 14:56:24'),
(14, 1, 1, '2023-02-03', 1, '2023-07-31 12:28:14', '2023-07-31 12:28:14'),
(15, 4, 1, '2023-02-03', 1, '2023-07-31 12:28:14', '2023-07-31 12:28:14'),
(16, 5, 1, '2023-02-03', 1, '2023-07-31 12:28:14', '2023-07-31 12:28:14'),
(17, 2, 2, '2023-01-01', 1, '2023-07-31 12:34:33', '2023-07-31 12:34:33'),
(18, 2, 4, '2023-01-01', 1, '2023-07-31 12:35:48', '2023-07-31 12:35:48'),
(19, 4, 4, '2023-01-01', 1, '2023-07-31 12:35:48', '2023-07-31 12:35:48'),
(20, 1, 2, '2023-06-17', 1, '2023-07-31 13:31:20', '2023-07-31 13:31:20'),
(21, 2, 2, '2023-06-17', 1, '2023-07-31 13:31:20', '2023-07-31 13:31:20'),
(22, 1, 1, '2023-03-04', 1, '2023-07-31 13:46:37', '2023-07-31 13:46:37'),
(23, 2, 1, '2023-03-04', 1, '2023-07-31 13:46:37', '2023-07-31 13:46:37'),
(24, 3, 5, '2023-01-01', 1, '2023-07-31 13:52:28', '2023-07-31 13:52:28'),
(25, 5, 5, '2023-01-01', 0, '2023-07-31 13:52:28', '2023-07-31 13:52:28'),
(26, 3, 5, '2023-01-01', 1, '2023-07-31 13:54:18', '2023-07-31 13:54:18'),
(27, 5, 5, '2023-01-01', 1, '2023-07-31 13:54:18', '2023-07-31 13:54:18'),
(28, 1, 1, '2023-01-01', 1, '2023-07-31 14:04:29', '2023-07-31 14:04:29'),
(29, 2, 1, '2023-01-01', 1, '2023-07-31 14:04:29', '2023-07-31 14:04:29'),
(30, 4, 1, '2023-01-01', 1, '2023-07-31 14:04:29', '2023-07-31 14:04:29'),
(33, 2, 1, '2023-01-01', 0, '2023-07-31 14:05:51', '2023-07-31 14:05:51'),
(34, 4, 1, '2023-01-01', 0, '2023-07-31 14:05:51', '2023-07-31 14:05:51'),
(35, 5, 1, '2023-01-01', 1, '2023-07-31 14:05:51', '2023-07-31 14:05:51'),
(36, 1, 1, '2023-01-01', 0, '2023-07-31 14:07:40', '2023-07-31 14:07:40'),
(37, 2, 1, '2023-01-01', 0, '2023-07-31 14:07:40', '2023-07-31 14:07:40'),
(38, 4, 1, '2023-01-01', 0, '2023-07-31 14:07:40', '2023-07-31 14:07:40'),
(39, 5, 1, '2023-01-01', 1, '2023-07-31 14:07:40', '2023-07-31 14:07:40'),
(40, 1, 1, '2023-01-01', 0, '2023-07-31 14:12:36', '2023-07-31 14:12:36'),
(41, 2, 1, '2023-01-01', 0, '2023-07-31 14:12:36', '2023-07-31 14:12:36'),
(42, 4, 1, '2023-01-01', 0, '2023-07-31 14:12:36', '2023-07-31 14:12:36'),
(43, 5, 1, '2023-01-01', 1, '2023-07-31 14:12:36', '2023-07-31 14:12:36'),
(44, 1, 1, '2023-01-01', 0, '2023-07-31 14:14:06', '2023-07-31 14:14:06'),
(45, 2, 1, '2023-01-01', 0, '2023-07-31 14:14:06', '2023-07-31 14:14:06'),
(46, 4, 1, '2023-01-01', 0, '2023-07-31 14:14:06', '2023-07-31 14:14:06'),
(47, 5, 1, '2023-01-01', 1, '2023-07-31 14:14:06', '2023-07-31 14:14:06'),
(48, 1, 1, '2023-01-01', 0, '2023-07-31 14:24:49', '2023-07-31 14:24:49'),
(49, 2, 1, '2023-01-01', 0, '2023-07-31 14:24:49', '2023-07-31 14:24:49'),
(50, 4, 1, '2023-01-01', 0, '2023-07-31 14:24:49', '2023-07-31 14:24:49'),
(51, 5, 1, '2023-01-01', 1, '2023-07-31 14:24:49', '2023-07-31 14:24:49'),
(52, 1, 1, '2023-01-01', 0, '2023-07-31 14:26:57', '2023-07-31 14:26:57'),
(53, 2, 1, '2023-01-01', 0, '2023-07-31 14:26:57', '2023-07-31 14:26:57'),
(54, 4, 1, '2023-01-01', 0, '2023-07-31 14:26:57', '2023-07-31 14:26:57'),
(55, 5, 1, '2023-01-01', 1, '2023-07-31 14:26:57', '2023-07-31 14:26:57'),
(56, 1, 3, '2023-06-20', 1, '2023-07-31 14:27:24', '2023-07-31 14:27:24'),
(57, 3, 3, '2023-06-20', 0, '2023-07-31 14:27:24', '2023-07-31 14:27:24'),
(58, 4, 3, '2023-06-20', 0, '2023-07-31 14:27:24', '2023-07-31 14:27:24'),
(59, 4, 4, '2023-07-11', 1, '2023-07-31 14:29:52', '2023-07-31 14:29:52'),
(60, 3, 5, '2023-08-27', 1, '2023-07-31 14:32:01', '2023-07-31 14:32:01'),
(61, 5, 5, '2023-08-27', 1, '2023-07-31 14:32:01', '2023-07-31 14:32:01'),
(62, 3, 3, '2023-05-09', 1, '2023-07-31 14:33:33', '2023-07-31 14:33:33'),
(63, 4, 3, '2023-05-09', 1, '2023-07-31 14:33:33', '2023-07-31 14:33:33'),
(64, 3, 5, '2023-10-05', 1, '2023-07-31 14:35:05', '2023-07-31 14:35:05'),
(65, 5, 5, '2023-10-05', 1, '2023-07-31 14:35:05', '2023-07-31 14:35:05'),
(66, 3, 3, '2023-03-07', 1, '2023-07-31 14:40:37', '2023-07-31 14:40:37'),
(67, 4, 3, '2023-03-07', 1, '2023-07-31 14:40:37', '2023-07-31 14:40:37'),
(68, 1, 1, '2023-01-01', 1, '2023-07-31 14:45:41', '2023-07-31 14:45:41'),
(69, 2, 1, '2023-01-01', 1, '2023-07-31 14:45:41', '2023-07-31 14:45:41'),
(70, 5, 1, '2023-01-01', 1, '2023-07-31 14:45:41', '2023-07-31 14:45:41'),
(71, 3, 2, '2023-04-04', 1, '2023-07-31 14:47:14', '2023-07-31 14:47:14'),
(72, 4, 2, '2023-04-04', 1, '2023-07-31 14:47:14', '2023-07-31 14:47:14'),
(73, 5, 2, '2023-04-04', 1, '2023-07-31 14:47:14', '2023-07-31 14:47:14'),
(74, 1, 2, '2023-04-04', 0, '2023-07-31 15:03:54', '2023-07-31 15:03:54'),
(75, 2, 2, '2023-04-04', 0, '2023-07-31 15:03:54', '2023-07-31 15:03:54'),
(76, 3, 2, '2023-04-04', 0, '2023-07-31 15:03:54', '2023-07-31 15:03:54'),
(77, 4, 2, '2023-04-04', 0, '2023-07-31 15:03:54', '2023-07-31 15:03:54'),
(78, 5, 2, '2023-04-04', 1, '2023-07-31 15:03:54', '2023-07-31 15:03:54'),
(79, 1, 2, '2023-04-04', 0, '2023-07-31 15:04:40', '2023-07-31 15:04:40'),
(80, 2, 2, '2023-04-04', 0, '2023-07-31 15:04:40', '2023-07-31 15:04:40'),
(81, 3, 2, '2023-04-04', 0, '2023-07-31 15:04:40', '2023-07-31 15:04:40'),
(82, 4, 2, '2023-04-04', 0, '2023-07-31 15:04:40', '2023-07-31 15:04:40'),
(83, 5, 2, '2023-04-04', 1, '2023-07-31 15:04:40', '2023-07-31 15:04:40'),
(84, 1, 2, '2023-12-31', 0, '2023-07-31 15:05:11', '2023-07-31 15:05:11'),
(85, 2, 2, '2023-12-31', 0, '2023-07-31 15:05:11', '2023-07-31 15:05:11'),
(86, 3, 2, '2023-12-31', 0, '2023-07-31 15:05:11', '2023-07-31 15:05:11'),
(87, 4, 2, '2023-12-31', 1, '2023-07-31 15:05:11', '2023-07-31 15:05:11'),
(88, 5, 2, '2023-12-31', 0, '2023-07-31 15:05:11', '2023-07-31 15:05:11'),
(89, 1, 1, '2023-03-03', 0, '2023-07-31 15:55:33', '2023-07-31 15:55:33'),
(90, 2, 1, '2023-03-03', 0, '2023-07-31 15:55:33', '2023-07-31 15:55:33'),
(91, 4, 1, '2023-03-03', 0, '2023-07-31 15:55:33', '2023-07-31 15:55:33'),
(92, 5, 1, '2023-03-03', 0, '2023-07-31 15:55:33', '2023-07-31 15:55:33');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
(12, '2023_07_28_064403_create_students_table', 1),
(25, '2014_10_12_000000_create_users_table', 2),
(26, '2014_10_12_100000_create_password_reset_tokens_table', 2),
(27, '2019_08_19_000000_create_failed_jobs_table', 2),
(28, '2019_12_14_000001_create_personal_access_tokens_table', 2),
(29, '2023_07_28_095508_create_students_table', 2),
(30, '2023_07_28_095625_create_student_subject_table', 2),
(31, '2023_07_30_175521_create_attendances_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `registration_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `registration_number`, `fname`, `lname`, `created_at`, `updated_at`) VALUES
(1, '2023123', 'fdsf', 'dfdf', '2023-07-30 11:57:35', '2023-07-30 11:57:35'),
(2, '2023435', 'phil', 'salt', '2023-07-30 12:34:15', '2023-07-30 12:34:15'),
(3, '2023453', 'jake', 'paul', '2023-07-31 12:26:28', '2023-07-31 12:26:28'),
(4, '2023765', 'cameron', 'green', '2023-07-31 12:26:47', '2023-07-31 12:26:47'),
(5, '2023675', 'Phil', 'Salt', '2023-07-31 12:27:04', '2023-07-31 12:27:04'),
(6, '2023569', 'kiki', 'gigi', '2023-07-31 15:57:38', '2023-07-31 15:57:38');

-- --------------------------------------------------------

--
-- Table structure for table `student_subject`
--

CREATE TABLE `student_subject` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `subject_ids` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`subject_ids`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_subject`
--

INSERT INTO `student_subject` (`id`, `student_id`, `subject_ids`, `created_at`, `updated_at`) VALUES
(1, 1, '[\"1\",\"2\",\"3\"]', NULL, NULL),
(2, 2, '[\"1\",\"2\",\"4\"]', NULL, NULL),
(3, 3, '[\"2\",\"3\",\"5\"]', NULL, NULL),
(4, 4, '[\"1\",\"2\",\"3\",\"4\"]', NULL, NULL),
(5, 5, '[\"1\",\"2\",\"4\",\"5\"]', NULL, NULL),
(6, 6, '[\"1\",\"3\",\"5\"]', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendances`
--
ALTER TABLE `attendances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attendances_student_id_foreign` (`student_id`);

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
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `students_registration_number_unique` (`registration_number`);

--
-- Indexes for table `student_subject`
--
ALTER TABLE `student_subject`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_subject_student_id_foreign` (`student_id`);

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
-- AUTO_INCREMENT for table `attendances`
--
ALTER TABLE `attendances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `student_subject`
--
ALTER TABLE `student_subject`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attendances`
--
ALTER TABLE `attendances`
  ADD CONSTRAINT `attendances_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `student_subject`
--
ALTER TABLE `student_subject`
  ADD CONSTRAINT `student_subject_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
