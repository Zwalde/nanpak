-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 19, 2019 at 10:05 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `id` int(11) NOT NULL,
  `brand` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`id`, `brand`) VALUES
(1, 'Spurs'),
(2, 'Nike'),
(4, 'Polo'),
(6, 'Apple');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `items` text COLLATE utf8_unicode_ci NOT NULL,
  `expire_date` datetime NOT NULL,
  `paid` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `items`, `expire_date`, `paid`) VALUES
(1, '[{\"id\":\"6\",\"size\":\"large\",\"quantity\":\"2\"},{\"id\":\"12\",\"size\":\"large\",\"quantity\":\"4\"},{\"id\":\"2\",\"size\":\"large\",\"quantity\":\"2\"},{\"id\":\"7\",\"size\":\"small\",\"quantity\":\"1\"}]', '2020-01-09 11:38:33', 0),
(3, '[{\"id\":\"7\",\"size\":\"small\",\"quantity\":\"1\"}]', '2020-01-11 07:10:10', 0),
(4, '[{\"id\":\"3\",\"size\":\"medium\",\"quantity\":\"2\"},{\"id\":\"4\",\"size\":\"medium\",\"quantity\":\"2\"}]', '2020-01-16 10:32:17', 0);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `category` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `parent` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category`, `parent`) VALUES
(1, 'Men', 0),
(2, 'Women', 0),
(3, 'Boys', 0),
(4, 'Girls', 0),
(5, 'Shirts', 1),
(6, 'Pants', 1),
(7, 'Shoes', 1),
(8, 'Accessories', 1),
(9, 'Shirt', 2),
(10, 'Pants', 2),
(11, 'Shoes', 2),
(12, 'Dresses', 2),
(13, 'Shirts', 3),
(14, 'Pants', 3),
(15, 'Dresses', 4),
(16, 'Shoes', 4),
(17, 'Accessories', 2),
(27, 'Shoes', 3);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `list_price` decimal(10,2) NOT NULL,
  `brand` int(11) NOT NULL,
  `categories` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `images` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `featured` tinyint(4) NOT NULL DEFAULT 0,
  `sizes` text COLLATE utf8_unicode_ci NOT NULL,
  `deleted` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `price`, `list_price`, `brand`, `categories`, `images`, `description`, `featured`, `sizes`, `deleted`) VALUES
(2, 'Beautiful shirt', '12.99', '24.99', 1, '5', '/zitchat/Pixs/products/49793498ec9a04279b288fdcd33d7993.jpg', 'What a beautiful shirt....', 1, 'small:3,medium:6,large:9', 0),
(3, 'T shirt', '56.99', '36.99', 1, '5', '/zitchat/Pixs/spurs red.jpg', 'Only few in stock...', 1, 'small:3,medium:5,large:2', 0),
(4, 'Brown shirt', '29.99', '24.99', 1, '5', '/zitchat/Pixs/spurs navyblue.jpg', 'Only few available...', 1, 'small:4,medium:2,large:6', 0),
(5, 'White shirt', '15.99', '12.99', 1, '5', '/zitchat/Pixs/spurs white.jpg', 'only few available in stock', 1, 'small:5,medium:2,large:2', 0),
(6, 'Spurs shirt', '29.99', '12.99', 1, '5', '/zitchat/Pixs/spurs brown.jpg', 'Only few available ....', 1, 'small:1,medium:4,large:2', 0),
(7, 'Spurs shirt', '29.99', '12.99', 1, '5', '/zitchat/Pixs/spurs white.jpg', 'Only few available...', 1, 'small:2,medium:5,large:3', 0),
(8, 'Spurs shirt', '29.99', '12.99', 1, '5', '/zitchat/Pixs/spurs navyblue.jpg', 'Only few available', 1, 'small:3,medium:1,large:5', 0),
(12, 'car', '18.99', '35.99', 2, '14', '/zitchat/Pixs/products/2ba6fee6e06defa495cfaccb372afbeb.jpeg', 'big', 1, 'large:4', 0),
(13, 'nan', '125.00', '120.00', 6, '13', '/zitchat/Pixs/products/f810b54efc2ec885d388d9c0fb1ff8af.jpg', 'good quality', 1, 'large:1', 0);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(11) NOT NULL,
  `charge_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cart_id` int(11) NOT NULL,
  `full_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(175) COLLATE utf8_unicode_ci NOT NULL,
  `street` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `street2` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(175) COLLATE utf8_unicode_ci NOT NULL,
  `state` varchar(175) COLLATE utf8_unicode_ci NOT NULL,
  `zip_code` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(175) COLLATE utf8_unicode_ci NOT NULL,
  `sub_total` decimal(10,2) NOT NULL,
  `tax` decimal(10,2) NOT NULL,
  `grand_total` decimal(10,2) NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `txn_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `txn_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `full_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(175) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `join_date` datetime NOT NULL DEFAULT current_timestamp(),
  `last_login` datetime NOT NULL,
  `permissions` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `full_name`, `email`, `password`, `join_date`, `last_login`, `permissions`) VALUES
(1, 'Zwalde Nankpak', 'zwaldenanpak@yahoo.com', '$2y$10$I1E3Hd6SXvWGumlORlvBbOJrtjQUFKMLQtNORBB.RlP8TbUVoV.nu', '2019-12-05 08:32:39', '2019-12-17 09:43:11', 'admin,editor'),
(4, 'jeremiah', 'jeremiah@yahoo.com', '$2y$10$7sJOZpLeL1K11Vn1DrahJO9QksvMj/xTCVPlgIAbYcNZOC3QdOej2', '2019-12-08 17:44:53', '2019-12-08 20:14:03', 'editor');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
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
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
