-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 20, 2024 at 11:38 AM
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
-- Database: `myproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `qunty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `userid`, `productid`, `qunty`) VALUES
(31, 7, 11, 223),
(32, 7, 11, 1),
(33, 7, 11, 2),
(34, 7, 11, 2),
(35, 7, 11, 2),
(36, 7, 11, 2),
(37, 7, 11, 2),
(38, 7, 11, 1),
(39, 7, 11, 223),
(40, 7, 21, 22),
(41, 7, 21, 22),
(42, 7, 21, 22),
(43, 7, 21, 22),
(44, 7, 21, 22),
(45, 7, 21, 22),
(46, 7, 21, 22),
(47, 7, 21, 22),
(48, 7, 21, 22),
(49, 7, 11, 2),
(50, 7, 11, 11),
(51, 7, 11, 11),
(52, 7, 11, 11),
(53, 7, 20, 1),
(54, 7, 20, 1),
(55, 7, 20, 1),
(56, 7, 20, 1),
(57, 7, 20, 1),
(58, 7, 20, 1),
(59, 7, 18, 1),
(60, 7, 11, 4),
(61, 7, 18, 1),
(62, 7, 18, 1),
(63, 7, 18, 2);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryname` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryname`) VALUES
(1, 'TV'),
(2, 'Dishwasher'),
(5, 'Computer'),
(6, 'Blu-ray & DVD Player'),
(7, 'Projectors'),
(8, 'Hometheater System'),
(9, 'Cameras'),
(10, 'Camcorders'),
(11, 'Washer & Dryers'),
(13, 'Microwaves');

-- --------------------------------------------------------

--
-- Table structure for table `contactus`
--

CREATE TABLE `contactus` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contactus`
--

INSERT INTO `contactus` (`id`, `fullname`, `email`, `message`) VALUES
(1, 'ram', 'ram@', 'good'),
(2, 'ram', 'ram@', 'good');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `pname` varchar(255) NOT NULL,
  `pdescription` text NOT NULL,
  `pprice` varchar(255) NOT NULL,
  `pstock` int(11) NOT NULL,
  `pimage` varchar(255) NOT NULL,
  `special` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `category_id`, `pname`, `pdescription`, `pprice`, `pstock`, `pimage`, `special`) VALUES
(11, 1, 'Samsung', 'Samsung 356', 'Rs.20000', 11, 'images/sam.png', 1),
(12, 9, 'Nikon D7000', 'Nikon', 'Rs.3500', 53, 'images/nik.jpg', 0),
(13, 9, 'Kodak Camera', 'Camera', 'Rs.3000', 112, 'images/kod.jpg', 1),
(14, 1, 'Acer Monitor', '22 inch', 'Rs.15000', 234, 'images/acer.jpg', 0),
(15, 10, 'Sony camcorders', 'Sony lense', 'Rs.16000', 765, 'images/sony.png', 0),
(16, 7, 'Samsung Projector', 'Projector', 'Rs.27950', 11, 'images/sam-pro.jpg', 1),
(18, 2, 'Godrej', 'Dishwasher', 'Rs.1200', 4, 'images/2.png', 0),
(19, 1, 'LG RH', 'LG ', 'Rs.9999', 427, 'images/15.png', 1),
(20, 8, 'Samsung Range', 'Range', 'Rs.7500', 1, 'images/range.png', 0),
(21, 6, 'Phillips Bdp32', 'DVD Player', 'Rs.1365', 519, 'images/dvd.png', 1),
(22, 8, 'Intex GT43', 'Hometheator', 'Rs.2500', 1102, 'images/hometheater.png', 0),
(23, 8, 'Zebronics Fast21', 'Hometheator', 'Rs.4350', 359, 'images/hometheater1.png', 1),
(24, 11, 'Whirpool DR', 'Dryers', 'Rs.14599', 7, 'images/dry.png', 0),
(25, 13, 'Black Decker', 'Microwave', 'Rs.6700', 50, 'images/micro.png', 0),
(29, 5, 'computer', 'computer', 'Rs.14000', 15, 'images/com.png', 0);

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE `signup` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`id`, `fullname`, `email`, `password`) VALUES
(1, 'ram ', 'ramratt099@gmail.com', '1234'),
(7, 'ram shah', 'ram@gmail.com', '1111');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contactus`
--
ALTER TABLE `contactus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `signup`
--
ALTER TABLE `signup`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `contactus`
--
ALTER TABLE `contactus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `signup`
--
ALTER TABLE `signup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
