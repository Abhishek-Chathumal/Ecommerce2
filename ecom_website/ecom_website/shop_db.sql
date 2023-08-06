-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 14, 2023 at 07:11 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `password`) VALUES
(1, 'admin', '6216f8a75fd5bb3d5f22b6f9958cdede3fc086c2');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(10) NOT NULL,
  `quantity` int(10) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `pid`, `name`, `price`, `quantity`, `image`) VALUES
(3, 8, 6, 'Baseus Pro10000mAh Power Bank', 37, 1, '02-27.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `user_id`, `name`, `email`, `number`, `message`) VALUES
(1, 8, 'Abhishek', 'abhishek@hotmail.com', '0123456789', 'Hi!');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `number` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` date NOT NULL,
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_price`, `placed_on`, `payment_status`) VALUES
(1, 9, 'feasg', '234567897', 'vmk1@gmail.com', 'cash on delivery', 'flat no. 12sdf, dfg, sdfr, rty, ewrty - 12328', 'iPad 10.9” 10th Gen 2022 Tempered Glass (10 x 1) - ', 10, '0000-00-00', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `details` varchar(500) NOT NULL,
  `price` int(10) NOT NULL,
  `image_01` varchar(100) NOT NULL,
  `image_02` varchar(100) NOT NULL,
  `image_03` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `details`, `price`, `image_01`, `image_02`, `image_03`) VALUES
(3, 'iPad 10.9” 10th Gen 2022 Tempered Glass', 'Easy to install and remove. Better Resistance Against Scratches. Insulates Your Screen A Bit Against Drops. Makes It Much More Pleasant To Use. Gives Maximum Protection\r\n', 10, 'ipad 1.png', 'ipad 2.png', 'ipad 3.png'),
(6, 'Baseus Pro10000mAh Power Bank', 'Mini and Compact: Fit right into your hand, easy to carry around.\r\n22.5W Super-Fast Charging: Compatible with Huawei 5A 22.5W super fast charge, and in QC, PD, SCP, FCP, AFC certified, fast charging for Huawei, for Xiaomi, for Samsung phones.\r\nSimultaneous Charging for 3 Devices: 3 devices charging at the same time, no more waiting.\r\n18W Fast Charging Input: Supports PD3.0 18W power input, fully self-charges in about 6~7 hours.\r\nClearly See Remaining Battery Level: Has a digital display', 37, '02-27.jpg', '01-41.jpg', '03-15.jpg'),
(8, 'Anker 100W USB-C to USB-C 2.0 Cable', 'Dual chip design with higher efficiency and charging stability \r\n6 Months Warranty', 20, 'PowerLine-III-Type-C-to-Type-C-2.0-Cable.jpg', 'PowerLine-III-Type-C-to-Type-C-2.0-Cable-2.jpg', 'PowerLine-III-Type-C-to-Type-C-2.0-Cable-3.jpg'),
(10, 'Tempered Glass Screen Protector for iPhone 14', '•	High Quality Glass Material\r\n•	Better Resistance Against Scratches\r\n•	Insulates Your Screen A Bit Against Drop\r\n•	Makes It Much More Pleasant To Use\r\n•	Gives Maximum Protection\r\n•	Maintains Original Shine And Finish', 15, '04-87.jpg', '02-118.jpg', '01-40.jpg'),
(11, 'Joyroom JR-A27 3-in-1 Magnetic Charging Station', 'For mainstream mobile phones/earphones that support wireless charging.           \r\n24W and above high power adapter is recommended to use for your better experience feeling. \r\n20W high power output, new design of 3-in-1 watch storage magnetic wireless charger. \r\n6 Months Warranty', 50, 'Joyroom-JR-A27-3in1-Magnetic-Charging-Station-4.jpg', 'Joyroom-JR-A27-3in1-Magnetic-Charging-Station-3.jpg', 'Joyroom-JR-A27-3in1-Magnetic-Charging-Station.jpg'),
(12, 'MTB Camera Lens Protector for iPhone 14 Pro Max', 'The product is environmentally friendly and pollution-free\r\nHigh safety coefficient, High touch sensitivity, highly fit and dismantling\r\nToughened glass has high transparency, and the color will never change\r\nThe surrounding part is smooth to protect the screen from being smashed ', 7, 'NNEEE-12.jpg', 'NNEEE-01.jpg', 'Joyroom-JR-PF728-iPhone-12-Mini-Camera-Lens-Film-03.jpg'),
(13, 'Transparent Anti-Shock Back Cover for Apple iPhone 14 Pro', 'Easy to use. Shockproof edges.', 15, '03-56.jpg', '01-70.jpg', '02-64.jpg'),
(14, 'Dikex Premium Back cover for iPhone 14 Plus', 'Anti shock and light weight.\r\nImpact Resistant, shatterproof, protector for dirt/bumps/scratch.\r\nEasy installation and easy to clean.\r\nUltra durable.\r\nComfortable feeling.\r\nPerfect design for all ports.\r\nEasy to put on.', 13, '01-69.jpg', '02-57.jpg', '05-20.jpg'),
(15, 'Nothing Ear 1 Wireless Earbuds', 'Active Noise Cancellation. Up to 34 hours of listening. 3 High Definition\r\nMicrophones', 120, 'Nothing-Ear-1-1.png', 'Nothing-Ear-1-6-600x600-1.png', 'Nothing-Ear-1-600x600-1.png'),
(16, 'Joyroom Portable Mini Fast Charger ', 'Quick Charging: Provide fast charging for iPhone. Charge your iP 13 up to 58% in 30 minutes. High-quality: Made of premium PC fireproof material, which is durable, stable, and safe to use', 20, '01-45.jpg', 'download-4-1.png', 'download-5-1.png'),
(17, 'Yesido Windshield Phone Holder', 'The base is pasted with strong non-marking glue, reinforced support, and extended arm for better stability during use', 10, '01-73.jpg', '02-57.jpg', '03-43.jpg'),
(18, 'Xiaomi Imilab Smart Watch', 'Up to 30 Days Battery Life. 13 Sports Modes. IP68 Water Resistant. Heart Rate & SpO2 Blood Oxygen Monitoring. Customizable Watch Faces. Notification Alerts.', 45, 'Xiaomi-Imilab-KW66-Smart-Watch-01.jpg', 'Xiaomi-Imilab-KW66-Smart-Watch-02-600x600.jpg', 'Xiaomi-Imilab-KW66-Smart-Watch-03.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(1, 'rashmika', 'rashmikapramodya@gmail.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220'),
(5, 'abishek', 'abishek@gmail.com', '219486ad74ebe4c2c9f5ec496882ce103ff6a927'),
(7, 'dfhjdbf', 'sdsjds@gh.com', '8cb2237d0679ca88db6464eac60da96345513964'),
(8, 'user', 'user@gmail.com', '8cb2237d0679ca88db6464eac60da96345513964'),
(9, 'refref', 'repa@gmail.com', '5fa339bbbb1eeaced3b52e54f44576aaf0d77d96');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `user_id`, `pid`, `name`, `price`, `image`) VALUES
(2, 8, 3, 'iPad 10.9” 10th Gen 2022 Tempered Glass', 10, 'ipad 1.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
