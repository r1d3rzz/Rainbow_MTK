-- phpMyAdmin SQL Dump
-- version 3.4.10.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 23, 2021 at 01:03 PM
-- Server version: 5.5.20
-- PHP Version: 5.3.10

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `brandlook`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(120) NOT NULL,
  `password` varchar(120) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `password`) VALUES
(1, 'admin', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE IF NOT EXISTS `contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(120) NOT NULL,
  `name` varchar(120) NOT NULL,
  `message` varchar(120) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `email`, `name`, `message`) VALUES
(6, 'rider@gmail.com', 'Rider', 'testing'),
(8, 'hlahtay@gmail.com', 'Hla Htay', 'Hello Testing'),
(12, 'test@gmail.com', 'Testing Server', 'testing one two three'),
(13, 'rider@gmail.com', 'Rider', 'Password repair\r\nHello ');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE IF NOT EXISTS `items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(120) NOT NULL,
  `img` varchar(120) NOT NULL,
  `price` varchar(120) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `name`, `img`, `price`) VALUES
(7, 'Suit', 'item_1.jpg', '$500'),
(8, 'New Suit', 'item_2.jpg', '$500'),
(9, 'Bag', 'item_3.jpg', '$250'),
(10, 'New bag', 'item_4.jpg', '$500'),
(13, 'Runner', 'item_5.jpg', '$200'),
(18, 'Laptop', 'pexels-caio-67112.jpg', '$500');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `order_id` varchar(120) NOT NULL,
  `product` varchar(120) NOT NULL,
  `price` varchar(120) NOT NULL,
  `name` varchar(120) NOT NULL,
  `mobile` varchar(120) NOT NULL,
  `city` varchar(120) NOT NULL,
  `address` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `product`, `price`, `name`, `mobile`, `city`, `address`) VALUES
('Order ID 11', 'New Suit', '$500', 'Nwe ni', '2456', 'yangon', 'Tgn'),
('Order ID 212', 'Runner', '$200', 'Kyaw Kyaw', '0929285544', 'Yangon', 'Yankin'),
('Order ID 945', 'Bag', '$250', 'Test', '0931543084', 'Earth', 'World'),
('Order ID 792', 'Laptop', '$500', 'Rider', '0929285544', 'Yangon', 'Yankin');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE IF NOT EXISTS `register` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(120) NOT NULL,
  `email` varchar(120) NOT NULL,
  `password` varchar(120) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `phone` varchar(120) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `name`, `email`, `password`, `gender`, `phone`) VALUES
(18, 'Rider', 'rider@gmail.com', 'c0bdec7fd8d75960ddf39e0963941dfc', 'Male', '09429285544'),
(19, 'Myint Thway Khine', 'myintthwaykhine127@gmail.com', '607a64b565a2aea9f89380b09938347f', 'Male', '09799867006');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
