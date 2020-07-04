-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: sql208.epizy.com
-- Generation Time: Jul 04, 2020 at 01:08 PM
-- Server version: 5.6.47-87.0
-- PHP Version: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `epiz_25981751_taskdata`
--

-- --------------------------------------------------------

--
-- Table structure for table `tdata`
--

CREATE TABLE `tdata` (
  `name` varchar(255) NOT NULL,
  `words` int(5) NOT NULL,
  `extra` varchar(255) NOT NULL,
  `date1` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tdata`
--

INSERT INTO `tdata` (`name`, `words`, `extra`, `date1`) VALUES
('How To do SEO', 100, 'ABCXYZ', '2020-06-11'),
('pitfall', 500, 'ABCXYZ', '2020-06-11'),
('ABC', 50, 'ABCXYZ', '2020-06-11'),
('ABC', 500, 'ABCXYZ', '2020-06-12'),
('PQR', 200, 'ABCXYZ', '2020-06-11'),
('XYZ', 600, 'ABCXYZ', '2020-06-13'),
('abc', 600, 'sdvf', '2020-07-04'),
('xyz', 200, 'ABCXYZ', '2020-06-12'),
('abc', 500, 'sdvf', '2020-07-03'),
('abc', 950, 'sdvf', '2020-07-05'),
('abc', 100, 'sdvf', '2020-07-03');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
