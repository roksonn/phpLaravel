-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 27, 2022 at 09:05 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `proiectlaravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `authers`
--

CREATE TABLE `authers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `authers`
--

INSERT INTO `authers` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Haylee Runolfsdottir', '2022-01-27 10:53:36', '2022-01-27 10:53:36'),
(2, 'Bruce Paucek', '2022-01-27 10:53:36', '2022-01-27 10:53:36'),
(3, 'Mr. Gunner Purdy', '2022-01-27 10:53:36', '2022-01-27 10:53:36'),
(4, 'Carmella Marvin', '2022-01-27 10:53:36', '2022-01-27 10:53:36'),
(5, 'Dorian Parisian IV', '2022-01-27 10:53:36', '2022-01-27 10:53:36'),
(6, 'Amira Barrows', '2022-01-27 10:53:36', '2022-01-27 10:53:36'),
(7, 'Dr. Lonzo Nitzsche Jr.', '2022-01-27 10:53:36', '2022-01-27 10:53:36'),
(8, 'Keanu Roob', '2022-01-27 10:53:36', '2022-01-27 10:53:36'),
(9, 'Libby Prohaska', '2022-01-27 10:53:36', '2022-01-27 10:53:36'),
(10, 'Fredrick Kuvalis', '2022-01-27 10:53:36', '2022-01-27 10:53:36');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `auther_id` bigint(20) UNSIGNED DEFAULT NULL,
  `publisher_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `name`, `category_id`, `auther_id`, `publisher_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Repellendus doloremque dolores dolorum autem quis.', 7, 7, 10, 'Y', '2022-01-27 10:53:36', '2022-01-27 10:53:36'),
(2, 'Eos dolor quos ab.', 10, 4, 10, 'N', '2022-01-27 10:53:36', '2022-01-27 16:56:50'),
(3, 'Distinctio aperiam distinctio repellendus.', 10, 2, 7, 'Y', '2022-01-27 10:53:36', '2022-01-27 10:53:36'),
(4, 'Saepe recusandae placeat placeat inventore.', 7, 1, 7, 'Y', '2022-01-27 10:53:36', '2022-01-27 10:53:36'),
(5, 'Expedita est illum beatae sunt.', 9, 6, 1, 'Y', '2022-01-27 10:53:36', '2022-01-27 10:53:36'),
(6, 'Est et est similique.', 4, 3, 5, 'Y', '2022-01-27 10:53:36', '2022-01-27 10:53:36'),
(7, 'Qui alias eveniet eaque iste reprehenderit.', 3, 8, 3, 'Y', '2022-01-27 10:53:36', '2022-01-27 10:53:36'),
(8, 'Molestias et et mollitia consequatur.', 7, 2, 4, 'Y', '2022-01-27 10:53:36', '2022-01-27 10:53:36'),
(9, 'Tempora aliquam ut delectus et modi.', 5, 7, 10, 'Y', '2022-01-27 10:53:36', '2022-01-27 10:53:36'),
(10, 'Velit sit a.', 7, 2, 5, 'Y', '2022-01-27 10:53:36', '2022-01-27 10:53:36');

-- --------------------------------------------------------

--
-- Table structure for table `book_issues`
--

CREATE TABLE `book_issues` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `book_id` bigint(20) UNSIGNED NOT NULL,
  `issue_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `return_date` timestamp NULL DEFAULT NULL,
  `issue_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `return_day` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `book_issues`
--

INSERT INTO `book_issues` (`id`, `student_id`, `book_id`, `issue_date`, `return_date`, `issue_status`, `return_day`, `created_at`, `updated_at`) VALUES
(1, 15, 2, '2022-01-26 22:00:00', '2022-02-15 22:00:00', 'N', NULL, '2022-01-27 16:56:50', '2022-01-27 16:56:50');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Dr. Gloria Cruickshank', '2022-01-27 10:53:36', '2022-01-27 10:53:36'),
(2, 'Prof. Andrew Cruickshank Sr.', '2022-01-27 10:53:36', '2022-01-27 10:53:36'),
(3, 'Laney Dare', '2022-01-27 10:53:36', '2022-01-27 10:53:36'),
(4, 'Justice Waters', '2022-01-27 10:53:36', '2022-01-27 10:53:36'),
(5, 'Danny Balistreri', '2022-01-27 10:53:36', '2022-01-27 10:53:36'),
(6, 'Golda Purdy', '2022-01-27 10:53:36', '2022-01-27 10:53:36'),
(7, 'Dr. Talon Turner', '2022-01-27 10:53:36', '2022-01-27 10:53:36'),
(8, 'Dr. Fritz Price', '2022-01-27 10:53:36', '2022-01-27 10:53:36'),
(9, 'Mr. Alexander Raynor', '2022-01-27 10:53:36', '2022-01-27 10:53:36'),
(10, 'Joel Turner', '2022-01-27 10:53:36', '2022-01-27 10:53:36');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_12_28_031441_create_settings_table', 1),
(6, '2021_12_28_032107_create_students_table', 1),
(7, '2021_12_28_032155_create_admins_table', 1),
(8, '2021_12_28_032307_create_publishers_table', 1),
(9, '2021_12_28_032327_create_categories_table', 1),
(10, '2021_12_28_032552_create_authers_table', 1),
(11, '2021_12_28_032555_create_books_table', 1),
(12, '2021_12_28_032649_create_book_issues_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `publishers`
--

CREATE TABLE `publishers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `publishers`
--

INSERT INTO `publishers` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Dr. Raphael Hermiston Sr.', '2022-01-27 10:53:36', '2022-01-27 10:53:36'),
(2, 'Lily Dietrich', '2022-01-27 10:53:36', '2022-01-27 10:53:36'),
(3, 'Mrs. Hulda Mohr', '2022-01-27 10:53:36', '2022-01-27 10:53:36'),
(4, 'Travis Dibbert', '2022-01-27 10:53:36', '2022-01-27 10:53:36'),
(5, 'Tom Gorczany', '2022-01-27 10:53:36', '2022-01-27 10:53:36'),
(6, 'Jewell Kunze', '2022-01-27 10:53:36', '2022-01-27 10:53:36'),
(7, 'Jeromy Shanahan', '2022-01-27 10:53:36', '2022-01-27 10:53:36'),
(8, 'Tyshawn Wyman', '2022-01-27 10:53:36', '2022-01-27 10:53:36'),
(9, 'Dorcas Morissette', '2022-01-27 10:53:36', '2022-01-27 10:53:36'),
(10, 'Brown Hilpert DDS', '2022-01-27 10:53:36', '2022-01-27 10:53:36');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `return_days` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fine` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `return_days`, `fine`, `created_at`, `updated_at`) VALUES
(1, '20', '5', '2022-01-27 10:53:36', '2022-01-27 10:53:36');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `class` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `age`, `gender`, `email`, `phone`, `address`, `class`, `created_at`, `updated_at`) VALUES
(1, 'Arvid Russel', '50', 'male', 'rogelio.kub@example.org', '(234) 333-4353', '961 Ernestina Ports Suite 914\nPort Nicoland, ME 41112', 'Optio velit officiis.', '2022-01-27 10:53:36', '2022-01-27 10:53:36'),
(2, 'Catalina Keebler', '55', 'female', 'tthiel@example.org', '763.638.5567', '5101 Bettye Ridge Apt. 719\nWest Jayborough, KS 37137-1009', 'Rerum quo et.', '2022-01-27 10:53:36', '2022-01-27 10:53:36'),
(3, 'Willard Orn', '80', 'female', 'gregory06@example.com', '+14304946634', '910 Jast Isle\nSouth Zackeryside, MS 63350-5942', 'Illum quidem molestiae.', '2022-01-27 10:53:36', '2022-01-27 10:53:36'),
(4, 'Thora King', '75', 'female', 'maxine.kemmer@example.org', '+1.283.869.7971', '455 Garnet Summit\nLinaport, IN 79647', 'Dolores enim aspernatur quia rerum.', '2022-01-27 10:53:36', '2022-01-27 10:53:36'),
(5, 'Deshawn Yundt', '67', 'female', 'rschaefer@example.net', '509.598.8027', '565 Ritchie Loop\nRahulstad, WV 93430', 'Eum et soluta.', '2022-01-27 10:53:36', '2022-01-27 10:53:36'),
(6, 'Dr. Geraldine Tillman', '51', 'male', 'mabelle22@example.com', '(618) 276-0067', '2006 Christop Common Apt. 075\nLake Rexhaven, LA 05927', 'Quas nesciunt repudiandae.', '2022-01-27 10:53:36', '2022-01-27 10:53:36'),
(7, 'Kendall Ullrich', '78', 'female', 'rmarvin@example.net', '971-990-1339', '482 Pacocha Center Apt. 529\nSouth Kylerview, NH 12742-3025', 'Minima sunt quam.', '2022-01-27 10:53:36', '2022-01-27 10:53:36'),
(8, 'Dr. Abe Medhurst', '24', 'female', 'shanon86@example.net', '+1.949.250.8362', '6325 Eddie Island\nMarianemouth, IL 61311', 'Veniam eaque velit.', '2022-01-27 10:53:36', '2022-01-27 10:53:36'),
(9, 'Ava Hammes', '71', 'female', 'ezulauf@example.net', '+1-732-738-8202', '42037 Crist Orchard\nLake Alfredatown, WA 49563-8309', 'Reprehenderit vitae officia dolore.', '2022-01-27 10:53:36', '2022-01-27 10:53:36'),
(10, 'Aimee Erdman', '47', 'female', 'fhartmann@example.net', '(830) 598-8442', '6533 Abbigail Extensions\nSouth Lysanne, IA 87950', 'Eum expedita maxime.', '2022-01-27 10:53:36', '2022-01-27 10:53:36'),
(11, 'Reva Doyle', '28', 'female', 'kelvin.boyle@example.org', '+1 (442) 201-2311', '1296 Kenna Junctions\nBlickton, VA 86641-7711', 'Rerum repellendus voluptates quam.', '2022-01-27 10:53:36', '2022-01-27 10:53:36'),
(12, 'Meredith Hane', '20', 'male', 'alene.eichmann@example.org', '+1 (559) 793-8233', '156 Sally Rue Apt. 405\nEast Sofia, MD 67026', 'Cum dolores enim quisquam.', '2022-01-27 10:53:36', '2022-01-27 10:53:36'),
(13, 'Stanton Hettinger', '61', 'female', 'dwill@example.com', '636-288-7166', '52289 Von Plaza\nDurgantown, MI 37897', 'Omnis voluptatum perspiciatis illum.', '2022-01-27 10:53:37', '2022-01-27 10:53:37'),
(14, 'Miss Rafaela Grimes Sr.', '19', 'female', 'dejon.weimann@example.org', '540.733.9362', '860 Sheila Plains\nCodyhaven, CA 36813', 'Iste tenetur debitis.', '2022-01-27 10:53:37', '2022-01-27 10:53:37'),
(15, 'Mr. Demond Dicki', '75', 'female', 'zella43@example.org', '818-453-4670', '2353 Stephen Wells Apt. 113\nDarrylburgh, WI 88790-9767', 'Quidem rerum qui.', '2022-01-27 10:53:37', '2022-01-27 10:53:37'),
(16, 'Prof. Zora Stokes', '74', 'female', 'amani.crona@example.org', '+1 (657) 998-9597', '9324 Verla Islands Apt. 257\nLake Travonport, MA 71796-8707', 'Nulla sed omnis quisquam.', '2022-01-27 10:53:37', '2022-01-27 10:53:37'),
(17, 'Hector Abernathy DDS', '26', 'male', 'nikolaus.molly@example.com', '726.764.6775', '21676 Gabriella Inlet Suite 528\nNorth Alyssonhaven, ND 89482', 'Sed sapiente vitae beatae.', '2022-01-27 10:53:37', '2022-01-27 10:53:37'),
(18, 'Brandi Erdman', '36', 'male', 'adell.gislason@example.com', '+1-413-275-0352', '8675 Yundt Plain\nEast Lelia, KY 14445-3653', 'Et dolorem quod cumque.', '2022-01-27 10:53:37', '2022-01-27 10:53:37'),
(19, 'Micaela Pfannerstill', '22', 'male', 'lupe.reynolds@example.org', '1-814-971-5017', '4722 Mitchell Flat Apt. 240\nBaileystad, OK 99702-5571', 'Dolorem sunt nostrum.', '2022-01-27 10:53:37', '2022-01-27 10:53:37');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin', '$2y$10$ay7t.KHnzVxBjBLddSrFsOgASj5Zdy6Hld22X0ORE7YmvnbnXHyW.', '2022-01-27 10:53:36', '2022-01-27 10:53:36');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `authers`
--
ALTER TABLE `authers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD KEY `books_category_id_foreign` (`category_id`),
  ADD KEY `books_auther_id_foreign` (`auther_id`),
  ADD KEY `books_publisher_id_foreign` (`publisher_id`);

--
-- Indexes for table `book_issues`
--
ALTER TABLE `book_issues`
  ADD PRIMARY KEY (`id`),
  ADD KEY `book_issues_student_id_foreign` (`student_id`),
  ADD KEY `book_issues_book_id_foreign` (`book_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `publishers`
--
ALTER TABLE `publishers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `authers`
--
ALTER TABLE `authers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `book_issues`
--
ALTER TABLE `book_issues`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `publishers`
--
ALTER TABLE `publishers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_auther_id_foreign` FOREIGN KEY (`auther_id`) REFERENCES `authers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `books_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `books_publisher_id_foreign` FOREIGN KEY (`publisher_id`) REFERENCES `publishers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `book_issues`
--
ALTER TABLE `book_issues`
  ADD CONSTRAINT `book_issues_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`),
  ADD CONSTRAINT `book_issues_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
