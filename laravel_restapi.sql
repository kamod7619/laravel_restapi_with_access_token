-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 11, 2024 at 08:32 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_restapi`
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
(6, '2024_10_10_161235_create_products_table', 2);

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
  `expires_at` datetime DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `expires_at`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'auth_token', '1b3852262c2fb7010ab6a95d5d7b6b59ea72f46b5da8d14d308a4b31f4d1e532', '[\"*\"]', NULL, NULL, '2024-10-10 08:45:36', '2024-10-10 08:45:36'),
(2, 'App\\Models\\User', 1, 'auth_token', 'e19ee6e5c11becf979ef2ed874d4fd795f08961a8b584c6ec2092ab5cc20ad89', '[\"*\"]', NULL, '2024-10-11 00:28:11', '2024-10-10 10:35:43', '2024-10-11 00:28:11'),
(3, 'App\\Models\\User', 2, 'auth_token', '1ffa94da30bdbdd6a3a2a432e3cfd8db0066bd9398e7e666a82a48d3ee4c76c8', '[\"*\"]', NULL, NULL, '2024-10-11 00:32:46', '2024-10-11 00:32:46');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `sku` varchar(255) NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `stock` int(11) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `sku`, `price`, `stock`, `description`, `created_at`, `updated_at`) VALUES
(1, 'voluptas nihil possimus', 'SKU-WRYGD9KR', 884.42, 24, 'Autem qui occaecati vitae maxime tenetur enim deleniti sed.', '2024-10-10 10:45:24', '2024-10-10 10:45:24'),
(2, 'quae ea laudantium', 'SKU-Q3MD2IEY', 342.27, 10, 'Neque qui sit non aut eum aut sapiente et.', '2024-10-10 10:45:24', '2024-10-10 10:45:24'),
(3, 'nihil molestiae possimus', 'SKU-OAAYTUP2', 56.66, 40, 'Ut velit id nesciunt mollitia officiis.', '2024-10-10 10:45:24', '2024-10-10 10:45:24'),
(4, 'aut nemo voluptatem', 'SKU-QRNOARC0', 749.92, 86, 'Est illo repudiandae incidunt quisquam.', '2024-10-10 10:45:24', '2024-10-10 10:45:24'),
(5, 'id laboriosam hic', 'SKU-OWGB7TEO', 43.08, 35, 'Voluptatibus sapiente id non expedita deserunt.', '2024-10-10 10:45:24', '2024-10-10 10:45:24'),
(6, 'qui facere et', 'SKU-0QTV6SPU', 380.35, 82, 'Eius rerum aliquam et non provident.', '2024-10-10 10:45:24', '2024-10-10 10:45:24'),
(7, 'iure molestiae temporibus', 'SKU-Q7LL597F', 17.43, 0, 'Ut consequatur sed eveniet consequatur dolorem excepturi est.', '2024-10-10 10:45:24', '2024-10-10 10:45:24'),
(8, 'dolor hic quidem', 'SKU-4WMJ1LTK', 817.47, 29, 'Reiciendis sapiente pariatur aut non et ipsam delectus laudantium.', '2024-10-10 10:45:24', '2024-10-10 10:45:24'),
(9, 'qui quam quo', 'SKU-7JDKE1R2', 816.09, 5, 'Doloremque dolores qui quo ea eos.', '2024-10-10 10:45:24', '2024-10-10 10:45:24'),
(10, 'dolores molestiae earum', 'SKU-BXBARDEF', 126.92, 19, 'Et ad voluptas accusantium deserunt laborum rerum.', '2024-10-10 10:45:24', '2024-10-10 10:45:24'),
(11, 'quasi itaque reprehenderit', 'SKU-PE6KQUKS', 212.25, 61, 'Laboriosam quia esse et rerum.', '2024-10-10 10:45:24', '2024-10-10 10:45:24'),
(12, 'sed ut qui', 'SKU-LNGGDZMY', 943.08, 27, 'Sit qui est nam voluptas qui ratione.', '2024-10-10 10:45:24', '2024-10-10 10:45:24'),
(13, 'est incidunt eum', 'SKU-VTC0TRKK', 372.19, 3, 'Fugit sed velit et.', '2024-10-10 10:45:24', '2024-10-10 10:45:24'),
(14, 'dolor fugiat molestiae', 'SKU-FQ5FM18B', 393.81, 18, 'Accusantium quaerat dolorum vel non tempora corporis voluptatem nihil.', '2024-10-10 10:45:24', '2024-10-10 10:45:24'),
(15, 'facilis nam dignissimos', 'SKU-VZE4K5OC', 145.10, 45, 'Non eligendi placeat qui nihil ratione.', '2024-10-10 10:45:24', '2024-10-10 10:45:24'),
(16, 'ut eveniet beatae', 'SKU-7H2SU09C', 698.54, 39, 'Eveniet omnis dolore voluptatem in quia.', '2024-10-10 10:45:24', '2024-10-10 10:45:24'),
(17, 'non quo molestiae', 'SKU-KIOX9JUS', 165.40, 24, 'Voluptatibus odit eaque quae.', '2024-10-10 10:45:24', '2024-10-10 10:45:24'),
(18, 'consequatur sed consequatur', 'SKU-SVFAMH3J', 675.10, 10, 'Tempora maxime et id hic.', '2024-10-10 10:45:24', '2024-10-10 10:45:24'),
(19, 'amet dignissimos nihil', 'SKU-U6FYSNQL', 478.26, 36, 'Itaque minima iusto magnam nihil.', '2024-10-10 10:45:24', '2024-10-10 10:45:24'),
(20, 'sint minus id', 'SKU-AQPQVZKE', 208.47, 89, 'Sed temporibus maiores fugit nisi quisquam beatae.', '2024-10-10 10:45:24', '2024-10-10 10:45:24'),
(21, 'alias pariatur quisquam', 'SKU-W7BQVCXC', 730.59, 84, 'Expedita autem quasi necessitatibus facere ipsum.', '2024-10-10 10:45:24', '2024-10-10 10:45:24'),
(22, 'neque magni sed', 'SKU-BGUDFSBU', 421.42, 10, 'Omnis et voluptatem hic qui quasi praesentium.', '2024-10-10 10:45:24', '2024-10-10 10:45:24'),
(23, 'eum sit eum', 'SKU-QDSEX5AE', 102.91, 90, 'Delectus sunt autem dolorum sequi.', '2024-10-10 10:45:24', '2024-10-10 10:45:24'),
(24, 'earum consequuntur sit', 'SKU-3C2IN1NC', 960.92, 64, 'Aliquam qui inventore dicta amet aliquam commodi est expedita.', '2024-10-10 10:45:24', '2024-10-10 10:45:24'),
(25, 'amet dolor id', 'SKU-6PSROJ5G', 237.29, 37, 'Sit tempore similique necessitatibus reprehenderit.', '2024-10-10 10:45:24', '2024-10-10 10:45:24'),
(26, 'deleniti voluptatem reprehenderit', 'SKU-X6TCIJKJ', 519.63, 63, 'Repellendus voluptatem itaque et quisquam maiores adipisci consectetur.', '2024-10-10 10:45:24', '2024-10-10 10:45:24'),
(27, 'itaque officiis delectus', 'SKU-DXSLXUVN', 787.96, 49, 'Ad ad dolorem reiciendis aut eius inventore quia ipsum.', '2024-10-10 10:45:24', '2024-10-10 10:45:24'),
(28, 'repellendus commodi magni', 'SKU-VFUEDWNE', 214.77, 18, 'Id aut odit nemo.', '2024-10-10 10:45:24', '2024-10-10 10:45:24'),
(29, 'ut ut quidem', 'SKU-9JKBGPK5', 773.49, 97, 'Odit rerum sunt perferendis molestias accusamus.', '2024-10-10 10:45:24', '2024-10-10 10:45:24'),
(30, 'voluptatibus quo nihil', 'SKU-4PXQRJLA', 734.20, 17, 'Aut numquam nesciunt enim voluptatem et.', '2024-10-10 10:45:24', '2024-10-10 10:45:24'),
(31, 'tempore explicabo ex', 'SKU-7UCIAQLS', 851.31, 67, 'Est vitae repellendus et odit blanditiis consequatur.', '2024-10-10 10:45:24', '2024-10-10 10:45:24'),
(32, 'aut consequatur minima', 'SKU-EGWLSBUC', 29.86, 20, 'Quia et vero enim suscipit sit.', '2024-10-10 10:45:24', '2024-10-10 10:45:24'),
(33, 'omnis consequuntur omnis', 'SKU-KWNNPZBB', 929.56, 95, 'Reiciendis repellat reprehenderit dolor praesentium est cupiditate illum voluptas.', '2024-10-10 10:45:24', '2024-10-10 10:45:24'),
(34, 'quia et nisi', 'SKU-OIDAXRKW', 712.98, 31, 'Fugiat asperiores quis quasi quia ut placeat aspernatur.', '2024-10-10 10:45:24', '2024-10-10 10:45:24'),
(35, 'assumenda consequatur repellat', 'SKU-QRCJHMHF', 335.10, 45, 'Dolorem at repellat id amet hic recusandae.', '2024-10-10 10:45:24', '2024-10-10 10:45:24'),
(36, 'ea incidunt id', 'SKU-HMYLIPYA', 104.46, 31, 'Ipsa esse repellendus incidunt.', '2024-10-10 10:45:24', '2024-10-10 10:45:24'),
(37, 'eum maiores praesentium', 'SKU-9PS4PZ5R', 741.37, 37, 'Voluptatem molestiae numquam delectus porro optio est soluta.', '2024-10-10 10:45:24', '2024-10-10 10:45:24'),
(38, 'culpa aut blanditiis', 'SKU-ROCBLQKC', 324.03, 91, 'Id voluptas molestias et et vel possimus aut magnam.', '2024-10-10 10:45:24', '2024-10-10 10:45:24'),
(39, 'voluptatem labore ut', 'SKU-LTN2UA05', 430.82, 81, 'Aut eos id eum voluptatibus natus.', '2024-10-10 10:45:24', '2024-10-10 10:45:24'),
(40, 'repudiandae sapiente hic', 'SKU-KYEZBXQX', 559.68, 82, 'Ut dolores sequi et veritatis.', '2024-10-10 10:45:24', '2024-10-10 10:45:24'),
(41, 'a est voluptas', 'SKU-RTSNCVYU', 757.91, 5, 'Impedit vitae aspernatur tempore et omnis saepe porro.', '2024-10-10 10:45:24', '2024-10-10 10:45:24'),
(42, 'dicta suscipit ea', 'SKU-PADJ1DSL', 307.05, 41, 'Tempore sit libero cupiditate et amet vero.', '2024-10-10 10:45:24', '2024-10-10 10:45:24'),
(43, 'vitae quaerat sunt', 'SKU-9CKCQGLR', 642.60, 88, 'Libero rem possimus enim qui aut adipisci modi.', '2024-10-10 10:45:24', '2024-10-10 10:45:24'),
(44, 'et ratione qui', 'SKU-LCEMC1YA', 798.06, 61, 'Voluptas quas et quis consequatur.', '2024-10-10 10:45:24', '2024-10-10 10:45:24'),
(45, 'sed est laboriosam', 'SKU-0IDML6MP', 261.70, 13, 'Ipsam molestiae vero repudiandae.', '2024-10-10 10:45:24', '2024-10-10 10:45:24'),
(46, 'hic consectetur et', 'SKU-HSFVPTSU', 302.34, 7, 'Ut et saepe distinctio nostrum adipisci eius.', '2024-10-10 10:45:24', '2024-10-10 10:45:24'),
(47, 'est natus nihil', 'SKU-0RMFAGEE', 113.58, 58, 'A dolorem cumque accusantium facilis.', '2024-10-10 10:45:24', '2024-10-10 10:45:24'),
(48, 'ratione amet quas', 'SKU-WMT7ILN8', 797.00, 71, 'Est nostrum quis aut necessitatibus earum.', '2024-10-10 10:45:24', '2024-10-10 10:45:24'),
(49, 'qui consequatur quia', 'SKU-PHPGROQQ', 11.65, 6, 'Possimus delectus dolores necessitatibus vel dicta maiores molestiae.', '2024-10-10 10:45:24', '2024-10-10 10:45:24'),
(50, 'iusto laudantium et', 'SKU-3KGKIXGA', 769.60, 77, 'Commodi doloremque enim consectetur enim impedit.', '2024-10-10 10:45:24', '2024-10-10 10:45:24');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Test Kamod', 'kamod@gmail.com', NULL, '$2y$10$9/44/9TO3fzDfH3SPNGuBear8igzXI4ziJa.EvEx3EycVwMaovM7K', NULL, '2024-10-10 08:42:12', '2024-10-10 08:42:12'),
(2, 'Test Kamod1', 'kamod1@gmail.com', NULL, '$2y$10$WIWOc.If6DrHhhIN14gnMeTK9jP8wCoOaaKXciUlA7/qQ6mzcvcSa', NULL, '2024-10-11 00:31:23', '2024-10-11 00:31:23');

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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_sku_unique` (`sku`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
