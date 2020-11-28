-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 26, 2016 at 07:05 AM
-- Server version: 5.5.32
-- PHP Version: 5.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `oems`
--
CREATE DATABASE IF NOT EXISTS `oems` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `oems`;

-- --------------------------------------------------------

--
-- Table structure for table `leave`
--

CREATE TABLE IF NOT EXISTS `leave` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mid` int(11) NOT NULL,
  `date_in` int(11) NOT NULL,
  `date_out` int(11) NOT NULL,
  `reasons` varchar(250) NOT NULL,
  `leave_type` varchar(100) NOT NULL,
  `total_date` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE IF NOT EXISTS `members` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `uname` varchar(45) NOT NULL,
  `pass` varchar(45) NOT NULL,
  `regdate` date NOT NULL,
  `salary` double NOT NULL,
  `designation` varchar(200) NOT NULL,
  `emp_address` varchar(200) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `zip_code` int(11) NOT NULL,
  `dob` int(11) NOT NULL,
  `home_phone` int(11) NOT NULL,
  `cell_phone` int(11) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `married` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `first_name`, `last_name`, `email`, `uname`, `pass`, `regdate`, `salary`, `designation`, `emp_address`, `city`, `state`, `country`, `zip_code`, `dob`, `home_phone`, `cell_phone`, `gender`, `married`) VALUES
(6, 'ravi', 'kumar', 'ravi@gmail.com', 'ravi', '123456', '2015-10-05', 0, 'Professor', '', '', '', '', 0, 0, 0, 0, '', ''),
(8, '', '', '', 'admin', '123456', '0000-00-00', 0, '', '', '', '', '', 0, 0, 0, 0, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `planned_leave`
--

CREATE TABLE IF NOT EXISTS `planned_leave` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `leave_form` varchar(20) NOT NULL,
  `from_to` varchar(20) NOT NULL,
  `reason_of_leave` varchar(300) NOT NULL,
  `unplanned_activity` varchar(20) NOT NULL,
  `hod_recommend` varchar(400) NOT NULL,
  `remarks` varchar(200) NOT NULL,
  `authority_recommend` varchar(200) NOT NULL,
  `leave_type` varchar(20) NOT NULL,
  `date_of_application` varchar(20) NOT NULL,
  `saff_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `planned_leave`
--

INSERT INTO `planned_leave` (`id`, `leave_form`, `from_to`, `reason_of_leave`, `unplanned_activity`, `hod_recommend`, `remarks`, `authority_recommend`, `leave_type`, `date_of_application`, `saff_id`) VALUES
(2, '2016-03-23', '2016-03-23', 'please give me leave', 'Late Entry', 'yes', 'accept leave application', 'yes', 'cl', '', 8);

-- --------------------------------------------------------

--
-- Table structure for table `saff`
--

CREATE TABLE IF NOT EXISTS `saff` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `mobile` int(11) NOT NULL,
  `address` varchar(250) NOT NULL,
  `dept` varchar(150) NOT NULL,
  `salary` int(11) NOT NULL,
  `uname` varchar(150) NOT NULL,
  `pass` varchar(150) NOT NULL,
  `designation` varchar(150) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `zip_code` int(11) NOT NULL,
  `dob` int(11) NOT NULL,
  `home_phone` int(11) NOT NULL,
  `cell_phone` int(11) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `married` varchar(20) NOT NULL,
  `photo` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `saff`
--

INSERT INTO `saff` (`id`, `name`, `email`, `mobile`, `address`, `dept`, `salary`, `uname`, `pass`, `designation`, `city`, `state`, `country`, `zip_code`, `dob`, `home_phone`, `cell_phone`, `gender`, `married`, `photo`) VALUES
(1, 'sumit', 'smanhar26@gmail.com', 2147483647, ' korba', 'CS', 75000, 'sumit', '123456', '', '', '', '', 0, 0, 0, 0, '', '', ''),
(6, '', '', 0, '', '', 0, 'admin', '123456', '', '', '', '', 0, 0, 0, 0, '', '', ''),
(7, 'ravi', 'ravi@gmail.com', 1234567777, 'Korba  ', 'CS', 700000, 'ravi', '123456', '', '', '', '', 0, 0, 0, 0, '', '', ''),
(8, 'sunil', 'sunil@gmail.com', 2147483647, '  raipur', 'cs', 80000, 'sunil', '123456', '', '', 'chhattisgarh', 'india', 492001, 456, 2147483647, 2147483647, 'male', 'unmairred', '');

-- --------------------------------------------------------

--
-- Table structure for table `unplanned_leave`
--

CREATE TABLE IF NOT EXISTS `unplanned_leave` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `leave_from` varchar(30) NOT NULL,
  `from_to` varchar(30) NOT NULL,
  `application_type` varchar(20) NOT NULL,
  `from_time` varchar(20) NOT NULL,
  `duration` varchar(20) NOT NULL,
  `leave_type` varchar(20) NOT NULL,
  `hod_recommend` varchar(20) NOT NULL,
  `recommend` varchar(400) NOT NULL,
  `remarks` varchar(200) NOT NULL,
  `authority_recommend` varchar(20) NOT NULL,
  `auth_remarks` varchar(300) NOT NULL,
  `date_of_application` varchar(20) NOT NULL,
  `saff_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `unplanned_leave`
--

INSERT INTO `unplanned_leave` (`id`, `leave_from`, `from_to`, `application_type`, `from_time`, `duration`, `leave_type`, `hod_recommend`, `recommend`, `remarks`, `authority_recommend`, `auth_remarks`, `date_of_application`, `saff_id`) VALUES
(1, '2016-03-11', '2016-03-13', 'Planned leave', '', '', 'lmp', 'yes', '', 'please give leave', 'yes', 'sorry , we can not give you leave', '', 8);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
