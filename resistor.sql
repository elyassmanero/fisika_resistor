-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 05, 2015 at 02:24 AM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `fisika`
--

-- --------------------------------------------------------

--
-- Table structure for table `resistor`
--

CREATE TABLE IF NOT EXISTS `resistor` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `warna` varchar(20) NOT NULL,
  `gelang1` int(11) NOT NULL,
  `gelang2` int(11) NOT NULL,
  `gelang3` varchar(4) NOT NULL,
  `toleransi` int(11) NOT NULL,
  `color_bg` varchar(20) NOT NULL DEFAULT '#fff',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `resistor`
--

INSERT INTO `resistor` (`ID`, `warna`, `gelang1`, `gelang2`, `gelang3`, `toleransi`, `color_bg`) VALUES
(1, 'hitam', 0, 0, '0', 1, 'black'),
(2, 'Coklat', 1, 1, '1', 1, 'brown'),
(3, 'Merah', 2, 2, '2', 2, 'red'),
(4, 'Orange', 3, 3, '3', -1, 'orange'),
(5, 'Kuning', 4, 4, '4', -1, 'yellow'),
(6, 'Hijau', 5, 5, '5', -1, 'green'),
(9, 'Biru', 6, 6, '6', -1, 'blue'),
(10, 'Ungu', 7, 7, '7', -1, 'purple'),
(11, 'Abu-abu', 8, 8, '8', -1, 'gray'),
(12, 'Putih', 9, 9, '9', -1, 'white'),
(13, 'Emas', -1, -1, '0.1', 5, 'gold'),
(14, 'Perak', -1, -1, '0.01', 10, 'silver'),
(15, 'None', -1, -1, '-1', 20, '#fff');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
