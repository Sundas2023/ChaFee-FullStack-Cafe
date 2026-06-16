-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 17, 2026 at 12:43 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chafee_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `item_name` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `added_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `item_name`, `price`, `added_at`) VALUES
(1, 'Hot Coffee', 0, '2026-06-16 21:16:41'),
(2, 'Hot Coffee', 0, '2026-06-16 21:16:42'),
(4, 'Hot Latte', 0, '2026-06-16 21:16:44'),
(5, 'Hot Latte', 0, '2026-06-16 21:16:44'),
(7, 'Iced Cappuccino', 0, '2026-06-16 21:16:56'),
(8, 'Iced Cappuccino', 0, '2026-06-16 21:16:56'),
(9, 'Iced Cappuccino', 0, '2026-06-16 21:16:56'),
(10, 'Iced Cappuccino', 0, '2026-06-16 21:16:57'),
(12, 'Iced Coolup', 0, '2026-06-16 21:16:58'),
(13, 'Iced Coolup', 0, '2026-06-16 21:16:58'),
(14, 'Iced Coolup', 0, '2026-06-16 21:16:58'),
(15, 'Iced Coolup', 0, '2026-06-16 21:16:59'),
(16, 'Iced Milky Latte', 0, '2026-06-16 21:17:00'),
(17, 'Iced Milky Latte', 0, '2026-06-16 21:17:00'),
(19, 'Iced Cappuccino', 300, '2026-06-16 21:20:15'),
(20, 'Hot Coffee', 440, '2026-06-16 21:20:17'),
(21, 'Iced Coolup', 300, '2026-06-16 21:20:18'),
(22, 'Iced Cappuccino', 300, '2026-06-16 21:25:55'),
(23, 'Hot Cappuccino', 320, '2026-06-16 21:25:58'),
(24, 'Hot Coffee', 440, '2026-06-16 21:26:00'),
(26, 'Iced Cappuccino', 300, '2026-06-16 21:37:40'),
(27, 'Iced Coolup', 300, '2026-06-16 21:50:49'),
(28, 'Hot Chocolate', 490, '2026-06-16 21:50:54'),
(29, 'Iced Cappuccino', 300, '2026-06-16 21:50:55'),
(30, 'Iced Coolup', 300, '2026-06-16 21:53:04'),
(31, 'Iced Cappuccino', 300, '2026-06-16 21:53:06'),
(32, 'Hot Cappuccino', 320, '2026-06-16 22:06:54'),
(33, 'Hot Latte', 190, '2026-06-16 22:06:56');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `customer_name` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` text NOT NULL,
  `total_amount` int(11) NOT NULL,
  `status` varchar(50) DEFAULT 'Order Placed',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `created_at`) VALUES
(1, 'Sundas Abdul Majeed', 'sundasabdulmajeed@gmail.com', '$2y$10$MiF3SljMr09VkWU.hHOU6umrWt7X7LdWowpZrF48b5AqEu/Y1L.k2', '2026-06-15 23:26:33');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
