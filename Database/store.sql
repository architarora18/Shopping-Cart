-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 28, 2021 at 05:54 AM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `store`
--

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
CREATE TABLE IF NOT EXISTS `items` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(40) NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=MyISAM AUTO_INCREMENT=79 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`pid`, `NAME`, `price`) VALUES
(1, 'Canon EOS', 36000),
(2, 'Nikon DSLR', 40000),
(3, 'Sony DSLR', 45000),
(4, 'Olympus DSLR', 50000),
(5, 'Titan Model #301', 13000),
(6, 'Titan Model #201', 3000),
(7, 'HMT Milan', 8000),
(8, 'Faber Luba #111', 18000),
(9, 'H&W', 800),
(10, 'Luis Phil', 1000),
(11, 'John Zok', 1500),
(12, 'Jhalsani', 1300),
(13, 'cocktail dress', 3600),
(55, 'Wedding Suit', 10000),
(15, 'Long Dress', 2000),
(16, 'Mini Dress', 1300),
(17, 'Long dress', 1800),
(18, 'Prom Dress', 2000),
(19, 'Vintage Chiffon Dress', 2200),
(20, 'Short Prom Dress', 1500),
(21, 'High Neck Ruffle Dress', 3000),
(22, 'Circle Dress', 1700),
(23, 'Prom Dress', 1600),
(24, 'Princess Dress', 3000),
(25, 'Princess Gown', 2300),
(26, 'Long Dress', 1700),
(28, 'Bell Sleeve Dress', 1800),
(29, 'Long Ombre Dress', 2200),
(30, 'Maxi Dress', 2500),
(31, 'Long Dress', 3000),
(32, 'Floral Printed Dress', 2200),
(33, 'Gown', 2800),
(34, 'Wedding Dress', 6500),
(35, 'Shiny Dress', 3500),
(36, 'Wedding Suit', 12000),
(37, 'Wedding Suit', 15000),
(38, 'Wedding Suit', 12500),
(39, 'Turtle Neck', 1000),
(40, 'Printed Shirt', 600),
(41, 'Check Shirt', 900),
(42, 'Plain Shirt', 450),
(43, 'Printed Shirt', 850),
(44, 'Suit', 10550),
(45, 'Turtle Neck', 950),
(46, 'Long Neck Designer', 1200),
(47, 'Plain Shirt', 700),
(48, 'Turtle Neck', 900),
(49, 'Shirt', 600),
(50, 'Three Piece Suit', 13500),
(51, '4 Pair Plane Shirts', 2300),
(52, 'Plane T-shirt', 500),
(53, 'Black Turtle Neck', 1000),
(54, 'Check Shirt', 550),
(56, 'Lehanga', 2500),
(57, 'Sherwani', 3000),
(62, 'Suit', 1800),
(60, 'Kurta', 1500),
(63, 'Suit', 1800),
(64, 'Suit', 3500),
(65, 'Suit', 4500),
(66, 'Skirt', 1700),
(67, 'Kurta', 1900),
(68, 'Skirt', 1300),
(69, 'Skirt', 1500),
(70, 'Skirt', 1200),
(71, 'Lehanga', 1900),
(72, 'Kurta', 2000),
(73, 'High Neck ', 1900),
(74, 'Sherwani ', 3400),
(75, 'Check Suit', 3700),
(76, 'Long Dress', 2000);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`),
  KEY `id_2` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `contact`, `city`, `address`) VALUES
(3, 'ajay', 'ajay@xyz.com', '2b0ffe524d56133517ab8c2baaf72f99', '9463300376', 'nabha', '975,patiala road, nabha'),
(2, 'archit', 'archit@xyz.com', '25f9e794323b453885f5181f1b624d0b', '1234567890', 'mohali', '123,mohali'),
(4, 'ankit arora', 'ankit@xyz.com', 'e10adc3949ba59abbe56e057f20f883e', '7380066600', 'mohali', '123,mohali'),
(5, 'Archit Arora', 'architarora2k@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '7589090600', 'SAS NAGAR, MOHALI', 'H.NO. 804, PHASE IV, SECTOR 59');

-- --------------------------------------------------------

--
-- Table structure for table `users_items`
--

DROP TABLE IF EXISTS `users_items`;
CREATE TABLE IF NOT EXISTS `users_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `status` enum('added to cart','confirmed') NOT NULL,
  PRIMARY KEY (`id`),
  KEY `item_id` (`item_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_items`
--

INSERT INTO `users_items` (`id`, `user_id`, `item_id`, `status`) VALUES
(3, 3, 8, 'added to cart'),
(4, 3, 11, 'added to cart'),
(5, 3, 9, 'added to cart'),
(6, 4, 2, 'added to cart'),
(7, 4, 3, 'added to cart'),
(8, 4, 4, 'added to cart'),
(41, 5, 67, 'added to cart'),
(43, 5, 45, 'added to cart');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
