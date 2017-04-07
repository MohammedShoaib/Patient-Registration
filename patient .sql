-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 07, 2017 at 11:22 PM
-- Server version: 5.7.17-0ubuntu0.16.04.1
-- PHP Version: 7.0.15-0ubuntu0.16.04.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `patient`
--
CREATE DATABASE IF NOT EXISTS `patient` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `patient`;

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--
-- Creation: Apr 07, 2017 at 04:56 AM
-- Last update: Apr 07, 2017 at 05:31 PM
--

DROP TABLE IF EXISTS `patient`;
CREATE TABLE `patient` (
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `age` int(3) NOT NULL,
  `dob` varchar(15) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `freeText` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONS FOR TABLE `patient`:
--

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`firstName`, `lastName`, `phone`, `age`, `dob`, `gender`, `freeText`) VALUES
('hj', 'hj', '777777777', 78, '1998-12-12', 'Male', 'bfdhfbhbhb '),
('hxbhb', 'hjbhbhjb', '445', 5, '0004-05-05', 'Male', ' '),
('jesus', 'christ', '0000000000', 20, '1996-10-19', 'Male', 'i am a god\r\n\r\n '),
('jk', 'jk', '889898989', 28, '1989-05-03', 'Male', ' '),
('jnjjkbk', 'kjbkjbjkbkj', '14253253342', 20, '1996-10-19', 'Male', '599 '),
('kjbkjb', 'jkbkjbkj', '56416545646', 20, '1996-10-19', 'Male', 'bb '),
('kk', 'kk', '9999999999', 20, '1996-07-19', 'Male', ' dfv'),
('kkkkk', 'kkkkk', '7878787878', 20, '1996-10-19', 'Male', ' '),
('lkdsvlksnn', 'lknlknlk', '5454545454', 21, '1996-01-01', 'Male', ' '),
('mahesh', 'parab', '5445677689', 20, '1996-06-22', 'Male', ' fr'),
('md', 'shoaib', '8197078400', 20, '19/10/1996', 'male', 'I have AIDS.'),
('mdd', 'shoaib', '8197078400', 20, '1996-10-19', 'Male', 'i am a boy '),
('Mohammed', 'Shoaib', '12344444', 30, '1987-05-03', 'Male', 'd '),
('naila', 'noushin', '8199090089', 10, '2007-02-01', 'Male', 'I suffer from depression'),
('sadsdf', 'dsf', '23134234', 12, '2000-11-11', 'Male', ' edw'),
('sbcjhb', 'jkbjkbkj', '68466466', 20, '1996-10-19', 'Male', '66 '),
('sdsaasdsa', 'sad', '121212121', 10, '2007-01-01', 'Male', ' jhbjh'),
('tayyab', 'khan', '8989890000', 30, '1987-01-01', 'Male', 'no worries'),
('tiya', 'rajput', '7887788778', 28, '1989-08-11', 'Male', ' '),
('xxxx', 'xx', '8888888888', 20, '1996-10-19', 'Male', ' ss');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`firstName`,`lastName`,`phone`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
