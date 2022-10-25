-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 25, 2022 at 06:21 PM
-- Server version: 5.7.31
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hr_dept`
--

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

DROP TABLE IF EXISTS `user_details`;
CREATE TABLE IF NOT EXISTS `user_details` (
  `userid` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `dob` date NOT NULL,
  `country` varchar(50) NOT NULL,
  `useraddress` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`userid`, `password`, `fname`, `lname`, `gender`, `dob`, `country`, `useraddress`, `email`) VALUES
('MM-001', 'max@1234', 'Millan', 'Max', 'Male', '1969-03-28', 'Uganda', 'Makerere', 'millan@yahoo.co.uk'),
('SA-002', '@sheila2@22', 'Sheila', 'Amuge', 'Female', '2000-10-30', 'Kenya', 'Nairobi', 'sheila@gmail.com'),
('PA-003', '*12345', 'Peter', 'Amone', 'Male', '1970-12-01', 'Tanzania', 'Arusha', 'peter.amone@hotmail.com'),
('SK-004', '#2.@.2.@_', 'Susan', 'Akello', 'Female', '1980-08-11', 'Rwanda', 'Kigali', 'susan.akello@gmail.com');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
