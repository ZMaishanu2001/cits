-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 18, 2018 at 08:03 PM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `police_cits`
--

-- --------------------------------------------------------

--
-- Table structure for table `court_repot`
--

CREATE TABLE IF NOT EXISTS `court_repot` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `criminal_id` varchar(255) NOT NULL,
  `crime_id` varchar(255) NOT NULL,
  `court_name` varchar(255) NOT NULL,
  `court_sentence` varchar(255) NOT NULL,
  `judge` varchar(225) NOT NULL,
  `address` varchar(255) NOT NULL,
  `court` varchar(255) NOT NULL,
  `cu_date` varchar(255) NOT NULL,
  `officer` varchar(255) NOT NULL,
  `file_id` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `court_repot`
--

INSERT INTO `court_repot` (`id`, `criminal_id`, `crime_id`, `court_name`, `court_sentence`, `judge`, `address`, `court`, `cu_date`, `officer`, `file_id`) VALUES
(1, 'CML/2018/13', 'CS/2018/1', 'Court of Apel', 'c', 'c', 'c', 'c', 'September 03, 2018', 'admin12', 'FL/2018/1'),
(2, 'CML/2018/18', 'CS/2018/3', 'Court of Apel', '2years', 'Aliyu', 'Jalingo', 'ggggg', 'September 03, 2018', 'admin12', 'FL/2018/2'),
(3, 'CML/2018/21', 'CS/2018/4', 'GFHJG', 'VBNM,', 'CGVHBJNKM', 'FGHJK', 'FGHJGKJH', 'September 05, 2018', 'admin12', 'FL/2018/3'),
(4, 'CML/2018/26', 'CS/2018/5', 'Court of Apel', '2years', 'Judge A. Bau', 'Jalingo', 'he can bail himselve at 5000 naira', 'September 07, 2018', 'admin12', 'FL/2018/4'),
(5, 'CML/2018/26', 'CS/2018/5', 'Federal High Court', '3months', 'Judge C. John', 'Yola', 'No bail', 'September 07, 2018', 'admin12', 'FL/2018/5');

-- --------------------------------------------------------

--
-- Table structure for table `crimes`
--

CREATE TABLE IF NOT EXISTS `crimes` (
  `crime_id` varchar(255) NOT NULL,
  `case_date` varchar(255) NOT NULL,
  `case_type` varchar(255) NOT NULL,
  `case_desc` varchar(255) NOT NULL,
  `criminal_id` varchar(255) NOT NULL,
  `report_date` varchar(255) NOT NULL,
  `officer` varchar(255) NOT NULL,
  `id` int(255) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `crimes`
--

INSERT INTO `crimes` (`crime_id`, `case_date`, `case_type`, `case_desc`, `criminal_id`, `report_date`, `officer`, `id`) VALUES
('CS/2018/1', '2018-09-03', 'Fighting', '1112', 'CML/2018/13', 'September 02, 2018', 'admin12', 1),
('CS/2018/2', '2018-08-26', 'Kidnapping', 'Kindapped a girl', 'CML/2018/13', 'September 03, 2018', 'admin12', 2),
('CS/2018/3', '2018-08-29', 'Fighting', 'gjtjytyyy', 'CML/2018/18', 'September 03, 2018', 'admin12', 3),
('CS/2018/4', '2018-08-28', 'Gang', 'esrdfgyhujkl;', 'CML/2018/21', 'September 05, 2018', 'admin12', 4),
('CS/2018/5', '2018-08-27', 'Gang', 'Group gansters', 'CML/2018/26', 'September 07, 2018', 'admin12', 5),
('CS/2018/6', '2018-08-27', 'Robbery', 'Along Bauchi Gambo raod', 'CML/2018/27', 'September 07, 2018', 'admin12', 6),
('CS/2018/7', '2018-09-19', 'Fighting', 'Killed opponent', 'CML/2018/29', 'September 18, 2018', 'admin12', 7);

-- --------------------------------------------------------

--
-- Table structure for table `criminals`
--

CREATE TABLE IF NOT EXISTS `criminals` (
  `criminal_id` varchar(255) NOT NULL,
  `Officer` varchar(255) NOT NULL,
  `mode_id` varchar(255) NOT NULL,
  `id_num` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `nickname` varchar(255) NOT NULL,
  `eye_color` varchar(255) NOT NULL,
  `skin_color` varchar(255) NOT NULL,
  `mental_sta` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `picture` blob NOT NULL,
  `cu_date` varchar(255) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=29 ;

--
-- Dumping data for table `criminals`
--

INSERT INTO `criminals` (`criminal_id`, `Officer`, `mode_id`, `id_num`, `name`, `nickname`, `eye_color`, `skin_color`, `mental_sta`, `address`, `gender`, `picture`, `cu_date`, `id`) VALUES
('CML/2018/20', 'admin12', 'Voters card', '22', '22', '2', '2', '2', 'Yes', '2', 'Male', 0x636f6e7069632f696e6465782e6a7067, 'September 04, 2018', 20),
('CML/2018/21', 'admin12', 'Voters card', '3456', 'ddd', 'fghjkl', 'ghjkl', 'ghjkl', 'No', 'fdghjkl', 'Other', 0x636f6e7069632f6c6f676f2e4a5047, 'September 05, 2018', 21),
('CML/2018/22', 'admin12', 'Voters card', '111', '1111', '11', '11', '11', 'Yes', '111', 'Male', 0x636f6e7069632f332e6a7067, 'September 07, 2018', 25),
('CML/2018/26', 'admin12', 'Voters card', '12111', 'Musa Hamid', 'musa', 'red', 'black', 'No', 'jalingo', 'Male', 0x636f6e7069632f342e6a7067, 'September 07, 2018', 26),
('CML/2018/27', 'admin12', 'National ID', '1211', 'Reb', 'reb', 'green', 'white', 'No', 'Azare LGA', 'Male', 0x636f6e7069632f322e6a7067, 'September 07, 2018', 27),
('CML/2018/28', 'admin12', 'Voters card', '123', 'Tina', 'Nill', 'red', 'black', 'No', 'jalinggo', 'Female', 0x636f6e7069632f352e6a7067, 'September 18, 2018', 28);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `position` varchar(100) NOT NULL,
  `service_number` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `name`, `position`, `service_number`) VALUES
(5, 'admin12', '12345', 'Hamid Pate', 'Low Ranking Officer', 'NP1411'),
(6, 'admin11', 'password', 'Zaks Ibro', 'High Ranking Officer', 'NP1211'),
(9, 'officer1', 'passs', 'Hey Himy', 'Low Ranking Officer', 'n1311');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
