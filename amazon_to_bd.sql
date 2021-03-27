-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 27, 2021 at 11:48 AM
-- Server version: 8.0.23-0ubuntu0.20.04.1
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `amazon_to_bd`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_03_27_084449_create_products_table', 1),
(5, '2021_03_27_093043_add_shipping_price_to_products_table', 2),
(6, '2021_03_27_100604_add_product_link_to_products_table', 3);

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint UNSIGNED NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` int NOT NULL,
  `shipping_price` int NOT NULL,
  `product_photo_link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `product_desc`, `product_price`, `shipping_price`, `product_photo_link`, `product_link`, `created_at`, `updated_at`) VALUES
(1, 'Lenovo Legion 5', '15.6\" FHD (1920x1080) IPS Screen, AMD Ryzen 7 4800H Processor, 16GB DDR4, 512GB SSD, NVIDIA GTX 1660Ti, Windows 10, 82B1000AUS, Phantom Black ', 84500, 21043, 'https://images-na.ssl-images-amazon.com/images/I/81w%2B3k4U8PL._AC_SL1500_.jpg', 'https://www.amazon.com/Lenovo-1920x1080-Processor-Windows-82B1000AUS/dp/B08BB9RWXD/', NULL, NULL),
(2, 'Corsair HS35', 'Stereo Gaming Headset - Memory Foam Earcups - Works with PC, Mac, Xbox Series X, Xbox Series S, Xbox One, PS5, PS4, Nintendo Switch, iOS and Android - Carbon (CA-9011195-NA) ', 3000, 13700, 'https://images-na.ssl-images-amazon.com/images/I/71HsDyNw%2BqL._AC_SL1500_.jpg', 'https://www.amazon.com/Corsair-HS35-Headset-Earcups-Headphones/dp/B07QX99XJJ/', NULL, NULL),
(3, 'RAPOO vt950', 'RAPOO Optical Gaming Mouse, Wired and Wireless Modes, Rechargeable, RGB Backlight, Ergonomic Design, 5 Adjustable DPI, 11 Programmable Buttons for Windows, Desktop, Laptop, PC- Black', 3000, 9107, 'https://images-na.ssl-images-amazon.com/images/I/518KaF4WxkL._AC_SL1200_.jpg', 'https://www.amazon.com/Rechargeable-Backlight-Ergonomic-Adjustable-Programmable/dp/B07GP9JCRM/', NULL, NULL),
(4, 'ROCCAT Vulcan Pro', '', 13500, 6770, 'https://images-na.ssl-images-amazon.com/images/I/81vVdYyaClL._AC_SL1500_.jpg', 'https://www.amazon.com/ROCCAT-Vulcan-Optical-Gaming-Keyboard/dp/B08J4HQGZ2/', NULL, NULL),
(5, 'Sony SRS-XB12', 'Mini Bluetooth Speaker Loud Extra Bass Portable Wireless Speaker with Bluetooth -Loud Audio for Phone Calls- Small Waterproof and Dustproof Travel Music Speakers Black SRS-XB12/B ', 5100, 6170, 'https://images-na.ssl-images-amazon.com/images/I/71dabsS48LL._AC_SL1500_.jpg', 'https://www.amazon.com/Sony-SRS-XB12-Portable-Bluetooth-Speaker/dp/B07P85CDHG/', NULL, NULL),
(6, 'Creative GigaWorks T40', 'T40 Series II 2.0 Multimedia Speaker System with BasXPort Technology, Black ', 8500, 12700, 'https://images-na.ssl-images-amazon.com/images/I/71eI3KS5T%2BL._AC_SL1500_.jpg', 'https://www.amazon.com/Creative-GigaWorks-Multimedia-BasXPort-Technology/dp/B001S14DYO/', NULL, NULL),
(7, 'Apple Magic Keyboard', 'Wireless, Rechargable', 9500, 6730, 'https://images-na.ssl-images-amazon.com/images/I/51tewAA8QEL._AC_SL1024_.jpg', 'https://www.amazon.com/Apple-Keyboard-Wireless-Rechargable-English/dp/B016QO64FI/', NULL, NULL),
(8, 'Canon ImageCLASS LBP6030w', 'Monochrome Wireless Laser Printer, Compact Design , White', 7600, 8220, 'https://images-na.ssl-images-amazon.com/images/I/41Vpyl2j6zL._AC_.jpg', 'https://www.amazon.com/Canon-imageCLASS-LBP6030w-Wireless-Printer/dp/B00K5UZO0Q/', NULL, NULL),
(9, 'Samsung USB 3.1 128 GB', '', 1500, 7190, 'https://images-na.ssl-images-amazon.com/images/I/915WmjswdxL._AC_SL1500_.jpg', 'https://www.amazon.com/Samsung-MUF-128AB-AM-Plus-128GB/dp/B07D7PDLXC/', NULL, NULL),
(10, 'HP SSD S700 2.5\" 250GB SATA', '250GB SATA III 3D NAND Internal Solid State Drive (SSD) 2DP98AA#ABC', 3900, 6500, 'https://images-na.ssl-images-amazon.com/images/I/51BrHlnB8jL._AC_SL1000_.jpg', 'https://www.amazon.com/HP-2DP98AAABC-250GB-Retail-2DP98AA/dp/B071FCJLHC/', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
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
-- Indexes for table `products`
--
ALTER TABLE `products`
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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
