-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 05, 2022 at 12:17 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gadgetstoredb`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `categoryid` int(11) NOT NULL,
  `catname` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`categoryid`, `catname`) VALUES
(4, 'GAMING'),
(5, 'VIDEO GAME DISC'),
(6, 'MUSIC & AUDIO'),
(7, 'POWER SOLUTION');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `productid` int(11) NOT NULL,
  `categoryid` int(1) NOT NULL,
  `productname` varchar(30) NOT NULL,
  `price` double NOT NULL,
  `photo` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`productid`, `categoryid`, `productname`, `price`, `photo`) VALUES
(31, 4, 'PSP 1000 Fat', 4000, 'upload/PSP 1000 Fat_1643724616.jpg'),
(32, 4, 'Playstation 1 Fat', 1982, 'upload/Playstation 1 Fat_1643724777.png'),
(33, 4, 'Playstation 2 Slim ', 11000, 'upload/Playstation 2 Slim_1643729477.jpg'),
(35, 4, 'PS1 Controller Analog', 1000, 'upload/Playstation 1 Controller Analog_1643729581.png'),
(36, 4, 'PS2 Controller Analog', 980, 'upload/Playstation 2 Controller Analog_1643729663.png'),
(37, 4, 'Playstation 1 Memory Card', 541, 'upload/Playstation 1 Memory Card_1643729754.jpg'),
(38, 4, 'Playstation 2 Memory Card', 450, 'upload/Playstation 2 Memory Card_1643729817.png'),
(39, 4, 'PSP 1000 Memory Stick', 199, 'upload/PSP 1000 Memory Stick_1643729908.png'),
(40, 4, 'PSP 1000 Charger', 99, 'upload/PSP 1000 Charger_1643729990.jpg'),
(42, 5, 'Need for Speed Underground Riv', 850, 'upload/Need for Speed Underground Rivals UMD Psp Disc_1643731388.jpg'),
(43, 5, 'Gran Turismo 2 Video Game Play', 1030, 'upload/Gran Turismo 2 Video Game Playstation 1 Disc_1643731728.jpg'),
(44, 6, 'PSP 2000 Earphone', 420, 'upload/psp-earphone-2000-series_1643732194.jpg'),
(45, 6, 'PSP Headphone', 259, 'upload/PSP Headphone_1643732418.jpg'),
(46, 6, 'JBL Waterproof Bluetooth Speak', 4899, 'upload/JBL Speaker_1643732675.jpg'),
(47, 7, 'iPhone USB Charger', 119, 'upload/Iphone USB Charger_1643734318.png'),
(48, 7, 'PSP 1000 USB', 189, 'upload/PSP 1000 USB_1643734391.png');

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

CREATE TABLE `purchase` (
  `purchaseid` int(11) NOT NULL,
  `customer` varchar(50) NOT NULL,
  `total` double NOT NULL,
  `date_purchase` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_detail`
--

CREATE TABLE `purchase_detail` (
  `pdid` int(11) NOT NULL,
  `purchaseid` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`categoryid`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`productid`);

--
-- Indexes for table `purchase`
--
ALTER TABLE `purchase`
  ADD PRIMARY KEY (`purchaseid`);

--
-- Indexes for table `purchase_detail`
--
ALTER TABLE `purchase_detail`
  ADD PRIMARY KEY (`pdid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `categoryid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `productid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `purchase`
--
ALTER TABLE `purchase`
  MODIFY `purchaseid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `purchase_detail`
--
ALTER TABLE `purchase_detail`
  MODIFY `pdid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
