-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 28, 2020 at 09:42 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `oems`
--

-- --------------------------------------------------------

--
-- Table structure for table `leave`
--

CREATE TABLE `leave` (
  `id` int(11) NOT NULL,
  `mid` int(11) NOT NULL,
  `date_in` int(11) NOT NULL,
  `date_out` int(11) NOT NULL,
  `reasons` varchar(250) NOT NULL,
  `leave_type` varchar(100) NOT NULL,
  `total_date` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` int(10) UNSIGNED NOT NULL,
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
  `married` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

CREATE TABLE `planned_leave` (
  `id` int(11) NOT NULL,
  `leave_form` varchar(20) NOT NULL,
  `from_to` varchar(20) NOT NULL,
  `reason_of_leave` varchar(300) NOT NULL,
  `unplanned_activity` varchar(20) NOT NULL,
  `hod_recommend` varchar(400) NOT NULL,
  `remarks` varchar(200) NOT NULL,
  `authority_recommend` varchar(200) NOT NULL,
  `leave_type` varchar(20) NOT NULL,
  `saff_id` int(11) NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `planned_leave`
--

INSERT INTO `planned_leave` (`id`, `leave_form`, `from_to`, `reason_of_leave`, `unplanned_activity`, `hod_recommend`, `remarks`, `authority_recommend`, `leave_type`, `saff_id`, `status`) VALUES
(2, '2016-03-23', '2016-03-23', 'please give me leave', 'Late Entry', 'yes', 'accept leave application', 'yes', 'cl', 8, 'yes'),
(3, '2001-01-01', '2001-01-01', 'late', 'Missed Punch', 'no', 'late', 'no', 'ml', 8, 'no'),
(4, '2010-02-01', '2010-02-03', 'xyz', 'Unplanned Leave', 'yes', 'xyz', 'yes', 'ml', 9, 'yes'),
(6, '2001-02-03', '2001-02-07', 'xyz', 'yes', 'no', 'no remarks', 'no', 'ml', 6, 'yes'),
(7, '2012-03-05', '2012-03-07', 'xyz', 'yes', 'no', 'xyz', 'no', 'ml', 6, 'yes'),
(9, '2001-02-02', '2001-02-04', 'sdcsc', 'null', 'no', 'wow', 'yes', 'ml', 8, 'no'),
(10, '2001-02-12', '2001-02-12', 'xyzzy', 'null', 'yes', 'xyzzy', 'yes', 'ml', 9, 'yes'),
(11, '2000-06-06', '2000-06-07', 'xyzzy', 'null', 'no', 'xyzzy', 'no', 'ml', 13, 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `saff`
--

CREATE TABLE `saff` (
  `id` int(11) NOT NULL,
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
  `dob` varchar(30) NOT NULL,
  `home_phone` int(11) NOT NULL,
  `cell_phone` int(11) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `married` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `saff`
--

INSERT INTO `saff` (`id`, `name`, `email`, `mobile`, `address`, `dept`, `salary`, `uname`, `pass`, `designation`, `city`, `state`, `country`, `zip_code`, `dob`, `home_phone`, `cell_phone`, `gender`, `married`) VALUES
(1, 'sumit', 'smanhar26@gmail.com', 2147483647, ' korba', 'CS', 75000, 'sumit', '123456', '', '', '', '', 0, '0', 0, 0, '', ''),
(6, 'admin', '', 0, '', '', 0, 'admin', '123456', '', '', '', '', 0, '0', 0, 0, '', ''),
(7, 'ravi', 'ravi@gmail.com', 1234567777, 'Korba  ', 'CS', 700000, 'ravi', '123456', '', '', '', '', 0, '0', 0, 0, '', ''),
(8, 'sunil', 'sunil@gmail.com', 2147483647, '  raipur', 'cs', 80000, 'sunil', '123456', '', '', 'chhattisgarh', 'india', 492001, '456', 2147483647, 2147483647, 'male', 'unmairred'),
(9, 'megh', 'megh@meghpatel.com', 999123, 'xyz  ', 'Managing', 500000, 'megh', 'ninja', 'CEO', 'vadodara', 'gujarat', 'india', 390011, '2001-05-04', 123456, 123456, 'male', 'unmarried'),
(10, 'dhwani', 'dhwani@gmail.com', 1234567, '  xyz', 'Managing', 200000, 'dhwani', 'dcm', 'xyz', 'Gandhidham', 'gujarat', 'india', 123, '2000-05-23', 12345, 12345, 'female', 'unmarried'),
(11, 'deshna', 'deshna@gmail.com', 123456789, 'xyz  ', 'IT', 20000, 'deshna', 'deshna', 'student', 'dahod', 'gujarat', 'india', 12345, '2000-06-04', 12345, 1234567, 'female', 'unmarried'),
(12, 'anant', 'anant@gmail.com', 12314, 'fw  ', '124124', 333333, 'anant', 'anant', 'student', 'Vadodara', 'gujarat', 'india', 21323, '1244-35-12', 1244, 1244, 'male', 'divorced'),
(13, 'ajp', 'ajp@gmail.com', 12345, 'xyz  ', 'IT', 20000, 'ajp', '123456', 'student', 'vadodara', 'gujarat', 'india', 1234, '2001-02-03', 123, 12345, 'male', 'unmarried');

-- --------------------------------------------------------

--
-- Table structure for table `unplanned_leave`
--

CREATE TABLE `unplanned_leave` (
  `id` int(11) NOT NULL,
  `leave_from` varchar(30) NOT NULL,
  `from_to` varchar(30) NOT NULL,
  `application_type` varchar(20) NOT NULL,
  `from_time` varchar(20) NOT NULL,
  `duration` varchar(20) NOT NULL,
  `leave_type` varchar(20) NOT NULL,
  `hod_recommend` varchar(20) NOT NULL,
  `remarks` varchar(200) NOT NULL,
  `authority_recommend` varchar(20) NOT NULL,
  `auth_remarks` varchar(300) NOT NULL,
  `saff_id` int(11) NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `unplanned_leave`
--

INSERT INTO `unplanned_leave` (`id`, `leave_from`, `from_to`, `application_type`, `from_time`, `duration`, `leave_type`, `hod_recommend`, `remarks`, `authority_recommend`, `auth_remarks`, `saff_id`, `status`) VALUES
(1, '2016-03-11', '2016-03-13', 'Planned leave', '', '', 'lmp', 'yes', 'please give leave', 'yes', 'sorry , we can not give you leave', 8, 'no'),
(2, '2001-01-01', '2001-01-01', 'Short Break', '03:00', '07:00', 'ml', 'no', 'xyz', 'no', 'xyz', 8, 'no'),
(3, '2000-02-02', '2000-02-05', 'Short Break', '05:00', '07:00', 'ml', 'no', 'xyz', 'no', '', 10, 'yes'),
(4, '2001-01-05', '2001-01-07', 'ml', '03:00', '07:00', 'ml', 'no', 'xyz', 'no', 'xyz', 6, 'yes'),
(6, '2002-12-12', '2002-12-13', 'Short Break', '03:00', '05:00', 'lmp', 'yes', 'no', 'yes', 'no', 8, 'no'),
(7, '2001-02-21', '2001-02-23', 'Short Break', '04:45', '05:30', 'ml', 'yes', 'wdcw', 'yes', 'wdcw', 8, 'no'),
(8, '2001-01-21', '2001-02-23', 'Short Break', '03:00', '04:00', 'ml', 'yes', 'sdks', 'yes', 'svcsc', 8, 'no'),
(9, '2001-05-04', '2001-05-07', 'Short Break', '03:00', '05:00', 'ml', 'yes', 'xy', 'yes', 'cox', 9, 'no'),
(10, '2001-02-03', '2001-05-04', 'Short Break', '03:00', '05:00', 'ml', 'yes', 'xyzzy', 'yes', 'xyzzy', 13, 'yes');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `leave`
--
ALTER TABLE `leave`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `planned_leave`
--
ALTER TABLE `planned_leave`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `saff`
--
ALTER TABLE `saff`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `unplanned_leave`
--
ALTER TABLE `unplanned_leave`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `leave`
--
ALTER TABLE `leave`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `planned_leave`
--
ALTER TABLE `planned_leave`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `saff`
--
ALTER TABLE `saff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `unplanned_leave`
--
ALTER TABLE `unplanned_leave`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
