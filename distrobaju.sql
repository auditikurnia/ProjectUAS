-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 14, 2023 at 02:49 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `distrobaju`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brd_id` int(11) NOT NULL,
  `brand` varchar(50) NOT NULL,
  `logo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brd_id`, `brand`, `logo`) VALUES
(4, 'Adidas', 'adidas.png'),
(5, 'Chanel', 'Chanel.png'),
(9, 'Nike', 'nike.png');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(11) NOT NULL,
  `category` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `category`) VALUES
(1, 'Topwear');

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `clr_id` int(11) NOT NULL,
  `color` varchar(30) NOT NULL,
  `color_cd` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`clr_id`, `color`, `color_cd`) VALUES
(0, 'No Color', ''),
(1, 'White', '#FFFFFF'),
(2, 'Black', '#000000'),
(3, 'Red', '#FF0000'),
(4, 'Yellow', '#FFFF00'),
(5, 'Navy Blue', '#000080'),
(6, 'Charcoal Gray', '#4D4E4F'),
(7, 'Brown', '#A52A2A');

-- --------------------------------------------------------

--
-- Table structure for table `counter`
--

CREATE TABLE `counter` (
  `counter_id` int(11) NOT NULL,
  `counter_ip` varchar(50) NOT NULL,
  `counter_date` date NOT NULL,
  `counter_time` time NOT NULL,
  `counter_visit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `counter`
--

INSERT INTO `counter` (`counter_id`, `counter_ip`, `counter_date`, `counter_time`, `counter_visit`) VALUES
(1, '::1', '2023-06-07', '14:26:02', 1),
(2, '::1', '2023-06-11', '08:52:34', 1),
(3, '::1', '2023-06-13', '11:44:33', 1),
(4, '::1', '2023-06-14', '19:42:05', 1);

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `item_id` varchar(11) NOT NULL,
  `item_name` varchar(100) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `scat_id` int(11) NOT NULL,
  `brd_id` int(11) NOT NULL,
  `size` varchar(30) NOT NULL,
  `clr_id` int(11) NOT NULL,
  `bgimg` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL,
  `detail` text NOT NULL,
  `material_care` mediumtext NOT NULL,
  `price` varchar(11) NOT NULL,
  `discount` varchar(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `available` varchar(10) NOT NULL,
  `creation_date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`item_id`, `item_name`, `cat_id`, `scat_id`, `brd_id`, `size`, `clr_id`, `bgimg`, `image`, `detail`, `material_care`, `price`, `discount`, `stock`, `available`, `creation_date`) VALUES
('0003', 'Kaos Pria Adidas', 1, 1, 4, 'S,M,L,XL,XXL', 0, '0608priaadidas.jpg', 'priaadidas.jpg', 'Printed T-shirt, has a round neck, short sleeves', '100% cotton\r\nMachine Wash', '70000', '10', 100, 'Ada', '2017-08-15'),
('0004', 'Kaos Pria Chanel', 1, 1, 5, 'S,M,L,XL,XXL', 0, '0608priachanel.jpg', 'priachanel.jpg', 'Black and white printed coco chanel short sleeves T-Shirt', '100% cotton\r\nMachine Wash', '75000', '0', 98, 'Ada', '2017-08-15'),
('0005', 'Kaos Pria Nike', 1, 1, 9, 'S,M,L,XL', 0, '0608prianike.jpg', 'prianike.jpg', 'Nike printed T-Shirt, has a round neck, short sleeves', '100% cotton\r\nMachine Wash', '70000', '0', 98, 'Ada', '2017-08-15'),
('0008', 'Kaos Wanita Adidas', 1, 1, 4, 'S,M,L,XL', 0, '0608wanitaadidas.jpg', 'wanitaadidas.jpg', 'Women T-Shirt', '100% cotton\r\nMachine Wash', '80000', '20', 46, 'Ada', '2017-08-15'),
('0009', 'Kaos Wanita Chanel', 1, 1, 5, 'S,M,L,XL,XXL', 0, '0608wanitachanel.jpg', 'wanitachanel.jpg', 'Chanel casual t-shirt, short sleeves', 'Cotton\r\nMachine-Wash', '85000', '0', 50, 'Ada', '2017-08-21'),
('0010', 'Kaos Wanita Nike', 1, 1, 9, 'S,M,L,XL', 0, '0608wanitanike.jpg', 'wanitanike.jpg', 'Nike women t-shirt, short sleeves', 'Cotton\r\nMachine-Wash', '80000', '0', 50, 'Ada', '2017-08-21'),
('0011', 'Kaos Anak Adidas', 1, 1, 4, 'S,M,L,4-5Y,6-7Y,8-9Y,10-11Y', 0, '0608anakadidas.jpg', 'anakadidas.jpg', 'Kids t-shirt unisex, short sleeves', 'Cotton\r\nMachine-Wash', '60000', '0', 50, 'Ada', '2017-08-21'),
('0018', 'Kaos Anak Nike', 1, 1, 9, 'S,M,L,XL,4-5Y,6-7Y,8-9Y,10-11Y', 0, '0608anaknike.jpg', 'anaknike.jpg', 'Kids t-shirt unisex, short sleeves', 'Cotton\r\nMachine-wash', '60000', '0', 50, 'Ada', '2017-12-13');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `member_id` varchar(11) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `address` text NOT NULL,
  `city` varchar(80) NOT NULL,
  `state` varchar(60) NOT NULL,
  `zip_code` varchar(10) NOT NULL,
  `phone` varchar(18) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `reg_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`member_id`, `fullname`, `gender`, `address`, `city`, `state`, `zip_code`, `phone`, `email`, `password`, `reg_date`) VALUES
('0002', 'Auditi Kurnia Wijayanti', 'Perempuan', 'Waru', 'Sidoarjo', 'Jawa Timur', '61256', '+6281217658723', 'auditikurniaw@gmail.com', 'd1c95ae9116e1502a937e7450727ded9', '2023-06-11');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` varchar(11) NOT NULL,
  `customer_id` varchar(11) NOT NULL,
  `owner_name` varchar(50) NOT NULL,
  `cardbank_type` varchar(12) NOT NULL,
  `card_number` varchar(100) NOT NULL,
  `payment_status` varchar(11) NOT NULL,
  `totals` varchar(11) NOT NULL,
  `creation_date` date NOT NULL,
  `creation_time` time NOT NULL DEFAULT '00:00:00',
  `order_status` varchar(11) NOT NULL,
  `order_valid_date` date NOT NULL,
  `order_valid_time` time NOT NULL DEFAULT '00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `customer_id`, `owner_name`, `cardbank_type`, `card_number`, `payment_status`, `totals`, `creation_date`, `creation_time`, `order_status`, `order_valid_date`, `order_valid_time`) VALUES
('0001', '0002', 'Auditi Kurnia Wijayanti', 'Bank BNI', '123456789', 'PAID', '128000', '2023-06-11', '09:24:52', 'PENDING', '2023-06-11', '09:24:52'),
('0002', '0002', 'Auditi Kurnia Wijayanti', 'Bank BNI', '123456789', 'PAID', '70000', '2023-06-11', '09:38:43', 'PENDING', '2023-06-11', '09:38:43'),
('0003', '0002', 'Auditi Kurnia Wijayanti', 'Bank BNI', '123456789', 'PAID', '64000', '2023-06-13', '12:01:28', 'PENDING', '2023-06-13', '12:01:28'),
('0004', '0002', 'Auditi Kurnia Wijayanti', 'Bank BNI', '123456789', 'PAID', '64000', '2023-06-14', '19:43:32', 'PENDING', '2023-06-14', '19:43:32');

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `detail_id` int(11) NOT NULL,
  `order_id` varchar(11) NOT NULL,
  `bgimg` varchar(100) NOT NULL,
  `item_code` varchar(11) NOT NULL,
  `item_name` varchar(100) NOT NULL,
  `color` varchar(11) NOT NULL,
  `size` varchar(5) NOT NULL,
  `qty` int(11) NOT NULL,
  `disc` int(3) NOT NULL,
  `price` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `order_detail`
--

INSERT INTO `order_detail` (`detail_id`, `order_id`, `bgimg`, `item_code`, `item_name`, `color`, `size`, `qty`, `disc`, `price`) VALUES
(5, '0001', '0608wanitaadidas.jpg', '0008', 'Kaos Wanita Adidas', '', 'S', 2, 20, '80000'),
(6, '0002', '0608prianike.jpg', '0005', 'Kaos Pria Nike', '', 'S', 1, 0, '70000'),
(7, '0003', '0608wanitaadidas.jpg', '0008', 'Kaos Wanita Adidas', '', 'S', 1, 20, '80000'),
(8, '0004', '0608wanitaadidas.jpg', '0008', 'Kaos Wanita Adidas', '', 'M', 1, 20, '80000');

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `scat_id` int(11) NOT NULL,
  `subcategory` varchar(50) NOT NULL,
  `cat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`scat_id`, `subcategory`, `cat_id`) VALUES
(1, 'T-Shirt', 1),
(8, 'Jeans', 2),
(9, 'Casual Trousers', 2),
(10, 'Formal Trousers', 2),
(11, 'Shorts', 2),
(12, 'Shirts Women', 14),
(13, 'Tops, T-Shirts and Shirts', 4),
(14, 'Jackets and Waistcoats', 4),
(15, 'Boys T-Shirts', 7),
(16, 'Girls Tops and T-shirts', 8),
(17, 'Boys Shirts', 7),
(18, 'Girls Dresses', 8),
(19, 'Boys Jackets', 7),
(20, 'Girls Sweaters', 8),
(21, 'Girls Jeans and Trousers', 8),
(22, 'Boys Jeans and Trousers', 7),
(23, 'Boys Track Pants', 7),
(24, 'Girls Track Pants', 8),
(25, 'Boys Casual Shoes', 9),
(26, 'Boys Sports Shoes', 9),
(27, 'Shorts and Skirts', 4);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` varchar(11) NOT NULL,
  `fullname` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `user` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `pass` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `fullname`, `user`, `pass`) VALUES
('3', 'Auditi Kurnia Wijayanti', 'auditikur', 'd1c95ae9116e1502a937e7450727ded9');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brd_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`clr_id`);

--
-- Indexes for table `counter`
--
ALTER TABLE `counter`
  ADD PRIMARY KEY (`counter_id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`item_id`),
  ADD KEY `cat_id` (`cat_id`),
  ADD KEY `scat_id` (`scat_id`),
  ADD KEY `brd_id` (`brd_id`),
  ADD KEY `clr_id` (`clr_id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`member_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`detail_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`scat_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `fullname` (`fullname`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brd_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `clr_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `counter`
--
ALTER TABLE `counter`
  MODIFY `counter_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `scat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `items_ibfk_1` FOREIGN KEY (`cat_id`) REFERENCES `categories` (`cat_id`),
  ADD CONSTRAINT `items_ibfk_2` FOREIGN KEY (`scat_id`) REFERENCES `subcategories` (`scat_id`),
  ADD CONSTRAINT `items_ibfk_3` FOREIGN KEY (`brd_id`) REFERENCES `brands` (`brd_id`),
  ADD CONSTRAINT `items_ibfk_4` FOREIGN KEY (`clr_id`) REFERENCES `colors` (`clr_id`);

--
-- Constraints for table `members`
--
ALTER TABLE `members`
  ADD CONSTRAINT `members_ibfk_1` FOREIGN KEY (`member_id`) REFERENCES `orders` (`order_id`);

--
-- Constraints for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD CONSTRAINT `order_detail_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
