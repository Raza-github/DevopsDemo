-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 20, 2019 at 09:13 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `veg`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', 'f925916e2754e5e03f75dd58a5733251', '2017-01-24 16:21:18', '21-06-2018 08:27:55 PM');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `orderDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `paymentMethod` varchar(50) DEFAULT NULL,
  `orderStatus` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `userId`, `productId`, `quantity`, `orderDate`, `paymentMethod`, `orderStatus`) VALUES
(1, 1, '3', 1, '2017-03-07 19:32:57', 'COD', NULL),
(3, 1, '4', 1, '2017-03-10 19:43:04', 'Debit / Credit card', 'Delivered'),
(5, 1, '3', 1, '2017-03-08 19:21:38', 'COD', NULL),
(6, 1, '4', 1, '2017-03-08 19:21:38', 'COD', NULL),
(7, 4, '1', 1, '2019-09-18 13:32:33', 'COD', NULL),
(42, 7, '2', 1, '2019-10-05 17:19:33', 'Debit / Credit card', NULL),
(43, 7, '2', 1, '2019-10-06 12:03:07', 'COD', NULL),
(44, 7, '5', 1, '2019-10-07 05:00:32', 'COD', NULL),
(45, 8, '1', 2, '2019-10-07 10:14:48', 'Internet Banking', NULL),
(46, 8, '3', 3, '2019-10-07 10:14:48', 'Internet Banking', NULL),
(47, 8, '4', 3, '2019-10-07 10:14:48', 'Internet Banking', NULL),
(48, 1, '6', 1, '2019-10-17 15:25:32', 'COD', NULL),
(49, 7, '8', 2, '2019-10-19 05:14:45', 'COD', 'Delivered'),
(50, 9, '1', 3, '2019-10-19 08:17:51', 'Debit / Credit card', 'Delivered'),
(51, 9, '4', 1, '2019-10-19 08:17:51', 'Debit / Credit card', 'Delivered'),
(52, 7, '4', 2, '2019-10-20 06:55:13', 'COD', 'Delivered'),
(53, 7, '7', 3, '2019-10-20 06:55:13', 'COD', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ordertrackhistory`
--

CREATE TABLE `ordertrackhistory` (
  `id` int(11) NOT NULL,
  `orderId` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remark` mediumtext,
  `postingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ordertrackhistory`
--

INSERT INTO `ordertrackhistory` (`id`, `orderId`, `status`, `remark`, `postingDate`) VALUES
(1, 3, 'in Process', 'Order has been Shipped.', '2017-03-10 19:36:45'),
(2, 1, 'Delivered', 'Order Has been delivered', '2017-03-10 19:37:31'),
(3, 3, 'Delivered', 'Product delivered successfully', '2017-03-10 19:43:04'),
(4, 4, 'in Process', 'Product ready for Shipping', '2017-03-10 19:50:36'),
(5, 12, 'in Process', 'in process', '2019-10-05 09:45:08'),
(6, 27, 'in Process', 'qqqqq', '2019-10-05 16:36:00'),
(7, 49, 'Delivered', 'delivered', '2019-10-19 05:18:08'),
(8, 50, 'Delivered', '', '2019-10-19 08:47:48'),
(9, 51, 'Delivered', '', '2019-10-19 08:49:46'),
(10, 52, 'Delivered', '', '2019-10-20 07:11:24');

-- --------------------------------------------------------

--
-- Table structure for table `productreviews`
--

CREATE TABLE `productreviews` (
  `id` int(11) NOT NULL,
  `productId` int(11) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `review` longtext,
  `reviewDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `productreviews`
--

INSERT INTO `productreviews` (`id`, `productId`, `quality`, `price`, `value`, `name`, `summary`, `review`, `reviewDate`) VALUES
(2, 3, 4, 5, 5, 'Anuj Kumar', 'BEST PRODUCT FOR ME :)', 'BEST PRODUCT FOR ME :)', '2017-02-26 20:43:57'),
(3, 3, 3, 4, 3, 'Sarita pandey', 'Nice Product', 'Value for money', '2017-02-26 20:52:46'),
(4, 3, 3, 4, 3, 'Sarita pandey', 'Nice Product', 'Value for money', '2017-02-26 20:59:19');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `productPrice` int(11) DEFAULT NULL,
  `productPriceBeforeDiscount` int(20) NOT NULL,
  `productImage1` varchar(255) DEFAULT NULL,
  `productAvailability` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `productName`, `productPrice`, `productPriceBeforeDiscount`, `productImage1`, `productAvailability`, `postingDate`, `updationDate`) VALUES
(1, 'APPLE', 70, 100, 'apple1.png', 'In Stock', '2017-01-30 16:54:35', ''),
(2, 'MUSKMELON', 50, 60, 'melon1.png', 'In Stock', '2017-01-30 16:59:00', ''),
(3, 'WATERMELON', 70, 90, 'watermelon.png', 'In Stock', '2017-02-04 04:03:15', ''),
(4, 'CUSTARD-APPLE', 40, 60, 'cus1.png', 'In Stock', '2017-02-04 04:04:43', ''),
(5, 'BANANA', 40, 30, 'banana.png', 'In-stock', '2019-09-26 12:03:54', NULL),
(6, 'POMEGRAT', 50, 70, 'pom.png', 'out-of-stock', '2019-09-26 12:05:49', NULL),
(7, 'PLUM', 50, 80, 'plum.png', 'In Stock', '2019-10-01 21:42:00', NULL),
(12, 'Onion', 50, 78, 'on.png', 'In Stock', '2019-10-20 07:04:31', NULL),
(13, 'CAPSICUM', 50, 80, 'caps.png', 'In Stock', '2019-10-20 07:10:35', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userEmail`, `userip`, `loginTime`, `logout`, `status`) VALUES
(1, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 11:18:50', '', 1),
(2, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 11:29:33', '', 1),
(3, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 11:30:11', '', 1),
(4, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 15:00:23', '26-02-2017 11:12:06 PM', 1),
(5, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 18:08:58', '', 0),
(6, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 18:09:41', '', 0),
(7, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 18:10:04', '', 0),
(8, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 18:10:31', '', 0),
(9, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 18:13:43', '', 1),
(10, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-27 18:52:58', '', 0),
(11, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-27 18:53:07', '', 1),
(12, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-03 18:00:09', '', 0),
(13, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-03 18:00:15', '', 1),
(14, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-06 18:10:26', '', 1),
(15, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-07 12:28:16', '', 1),
(16, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-07 18:43:27', '', 1),
(17, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-07 18:55:33', '', 1),
(18, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-07 19:44:29', '', 1),
(19, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-08 19:21:15', '', 1),
(20, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-15 17:19:38', '', 1),
(21, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-15 17:20:36', '15-03-2017 10:50:39 PM', 1),
(22, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-16 01:13:57', '', 1),
(23, 'hgfhgf@gmass.com', 0x3a3a3100000000000000000000000000, '2018-04-29 09:30:40', '', 1),
(24, 'zareen@gmail.com', 0x3a3a3100000000000000000000000000, '2019-09-18 13:30:42', '05-10-2019 02:51:17 PM', 1),
(25, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2019-10-02 11:10:07', NULL, 0),
(26, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2019-10-02 11:10:19', NULL, 1),
(27, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2019-10-02 11:37:12', '05-10-2019 10:48:54 PM', 1),
(28, 'zaid@gmail.com', 0x3a3a3100000000000000000000000000, '2019-10-05 06:42:45', NULL, 1),
(29, 'zaid@gmail.com', 0x3a3a3100000000000000000000000000, '2019-10-05 08:50:02', '05-10-2019 02:25:52 PM', 1),
(30, 'ziya@gmail.com', 0x3a3a3100000000000000000000000000, '2019-10-05 09:04:28', NULL, 0),
(31, 'ziya@gmail.com', 0x3a3a3100000000000000000000000000, '2019-10-05 09:05:01', '05-10-2019 02:42:14 PM', 1),
(32, 'zaid@gmail.com', 0x3a3a3100000000000000000000000000, '2019-10-05 09:42:43', '05-10-2019 03:14:30 PM', 1),
(33, 'zaid@gmail.com', 0x3a3a3100000000000000000000000000, '2019-10-05 09:46:04', '05-10-2019 03:16:27 PM', 1),
(34, 'zaid@gmail.com', 0x3a3a3100000000000000000000000000, '2019-10-05 09:47:42', NULL, 1),
(35, 'ziya@gmail.com', 0x3a3a3100000000000000000000000000, '2019-10-05 13:44:53', '05-10-2019 07:35:15 PM', 1),
(36, 'zareen@gmail.com', 0x3a3a3100000000000000000000000000, '2019-10-05 16:33:01', '05-10-2019 10:07:18 PM', 1),
(37, 'zareen@gmail.com', 0x3a3a3100000000000000000000000000, '2019-10-05 16:39:20', '05-10-2019 10:10:28 PM', 1),
(38, 'zaid@gmail.com', 0x3a3a3100000000000000000000000000, '2019-10-05 16:42:17', NULL, 1),
(39, 'zaid@gmail.com', 0x3a3a3100000000000000000000000000, '2019-10-05 16:45:26', '05-10-2019 10:16:11 PM', 1),
(40, 'zareen@gmail.com', 0x3a3a3100000000000000000000000000, '2019-10-05 16:53:43', '05-10-2019 10:34:51 PM', 1),
(41, 'zaid@gmail.com', 0x3a3a3100000000000000000000000000, '2019-10-05 17:05:17', NULL, 0),
(42, 'zaid@gmail.com', 0x3a3a3100000000000000000000000000, '2019-10-05 17:05:39', NULL, 1),
(43, 'zaid@gmail.com', 0x3a3a3100000000000000000000000000, '2019-10-05 17:15:27', '05-10-2019 10:45:59 PM', 1),
(44, 'zareen@gmail.com', 0x3a3a3100000000000000000000000000, '2019-10-05 17:19:29', '05-10-2019 10:53:17 PM', 1),
(45, 'zareen@gmail.com', 0x3a3a3100000000000000000000000000, '2019-10-06 11:58:46', NULL, 0),
(46, 'zareen@gmail.com', 0x3a3a3100000000000000000000000000, '2019-10-06 11:59:50', '06-10-2019 05:33:27 PM', 1),
(47, 'zareen@gmail.com', 0x3a3a3100000000000000000000000000, '2019-10-07 05:00:28', NULL, 1),
(48, 'tanu@gmail.com', 0x3a3a3100000000000000000000000000, '2019-10-07 10:03:17', NULL, 1),
(49, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2019-10-17 15:25:23', '17-10-2019 08:56:14 PM', 1),
(50, 'zareen@gmail.com', 0x3a3a3100000000000000000000000000, '2019-10-19 05:12:18', NULL, 1),
(51, 'zareen@gmail.com', 0x3a3a3100000000000000000000000000, '2019-10-19 05:20:07', '19-10-2019 10:58:18 AM', 1),
(52, 'zareen@gmail.com', 0x3a3a3100000000000000000000000000, '2019-10-19 06:03:32', NULL, 1),
(53, 'zaid@gmail.com', 0x3a3a3100000000000000000000000000, '2019-10-19 08:16:44', '19-10-2019 02:18:56 PM', 1),
(54, 'zaid@gmail.com', 0x3a3a3100000000000000000000000000, '2019-10-19 17:46:25', '19-10-2019 11:25:20 PM', 1),
(55, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2019-10-19 17:55:29', '19-10-2019 11:27:32 PM', 1),
(56, 'zaid@gmail.com', 0x3a3a3100000000000000000000000000, '2019-10-19 17:57:42', NULL, 0),
(57, 'zaid@gmail.com', 0x3a3a3100000000000000000000000000, '2019-10-19 17:57:48', '19-10-2019 11:30:49 PM', 1),
(58, 'zareen@gmail.com', 0x3a3a3100000000000000000000000000, '2019-10-20 06:55:08', '20-10-2019 12:27:19 PM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `shippingAddress` longtext,
  `shippingState` varchar(255) DEFAULT NULL,
  `shippingCity` varchar(255) DEFAULT NULL,
  `shippingPincode` int(11) DEFAULT NULL,
  `billingAddress` longtext,
  `billingState` varchar(255) DEFAULT NULL,
  `billingCity` varchar(255) DEFAULT NULL,
  `billingPincode` int(11) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contactno`, `password`, `shippingAddress`, `shippingState`, `shippingCity`, `shippingPincode`, `billingAddress`, `billingState`, `billingCity`, `billingPincode`, `regDate`, `updationDate`) VALUES
(1, 'Anuj Kumar', 'anuj.lpu1@gmail.com', 9009857868, 'f925916e2754e5e03f75dd58a5733251', 'CS New Delhi', 'New Delhi', 'Delhi', 110001, 'New Delhi', 'New Delhi', 'Delhi', 110092, '2017-02-04 19:30:50', ''),
(2, 'Amit ', 'amit@gmail.com', 8285703355, '5c428d8875d2948607f3e3fe134d71b4', '', '', '', 0, '', '', '', 0, '2017-03-15 17:21:22', ''),
(7, 'zareen', 'zareen@gmail.com', 1234566788, '202cb962ac59075b964b07152d234b70', 'pune', 'maharashtra', 'pune', 411042, 'pune', 'maharashtra', 'pune', 411042, '2019-10-05 17:19:22', NULL),
(8, 'tanu', 'tanu@gmail.com', 456321, '202cb962ac59075b964b07152d234b70', 'rasta peth', 'maharashtra', 'pune', 411042, 'rasta peth', 'maharashtra', 'pune', 411042, '2019-10-07 10:03:06', NULL),
(9, 'zaid', 'zaid@gmail.com', 7777777777, '202cb962ac59075b964b07152d234b70', 'pune', 'maharashtra', 'pune', 411042, 'pune', 'maharashtra', 'pune', 411042, '2019-10-19 08:16:36', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vegetables`
--

CREATE TABLE `vegetables` (
  `id` int(20) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `productPrice` int(11) NOT NULL,
  `prooductPriceBeforeDiscount` int(20) NOT NULL,
  `productImage1` varchar(255) NOT NULL,
  `productAvailability` varchar(255) NOT NULL,
  `postingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vegetables`
--

INSERT INTO `vegetables` (`id`, `productName`, `productPrice`, `prooductPriceBeforeDiscount`, `productImage1`, `productAvailability`, `postingDate`, `updationDate`) VALUES
(1, 'CAPSICUM', 20, 30, 'caps.png', 'In Stock', '2019-09-29 23:50:13', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productreviews`
--
ALTER TABLE `productreviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vegetables`
--
ALTER TABLE `vegetables`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `productreviews`
--
ALTER TABLE `productreviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
