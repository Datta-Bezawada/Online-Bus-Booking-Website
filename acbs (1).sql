-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 20, 2021 at 10:58 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `acbs`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_details`
--

CREATE TABLE `admin_details` (
  `name` varchar(30) DEFAULT NULL,
  `admin_id` varchar(30) DEFAULT NULL,
  `password` varchar(150) DEFAULT NULL,
  `ph_no` varchar(13) DEFAULT NULL,
  `unique_id` int(11) NOT NULL,
  `session_id` varchar(100) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_details`
--

INSERT INTO `admin_details` (`name`, `admin_id`, `password`, `ph_no`, `unique_id`, `session_id`) VALUES
('Amit Peechara', 'ap429@snu.edu.in', 'ae42cd69d3ffe0542671da01dae70923', '8885259592', 1, 'fasm4s7um9knc9qfk039ccehla'),
('Pranay', 'pa281@snu.edu.in', 'eebbea9d98b5de98be62b16fe831de05', '6300527081', 10, 'fasm4s7um9knc9qfk039ccehla'),
('Datta Bezewada', 'dv395@snu.edu.in', '4d64e3f1b064ac027f13d0abe1cff039', '9592555233', 11, 'fasm4s7um9knc9qfk039ccehla');

-- --------------------------------------------------------

--
-- Table structure for table `admin_log`
--

CREATE TABLE `admin_log` (
  `serial_no` int(11) NOT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `ip_address` varchar(50) DEFAULT NULL,
  `session_id` varchar(100) DEFAULT NULL,
  `admin_unique_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_log`
--

INSERT INTO `admin_log` (`serial_no`, `time_stamp`, `ip_address`, `session_id`, `admin_unique_id`) VALUES
(85, '2021-04-19 15:40:32', '::1', '468hfjg6ftl3jfv5f9ql649ldu', 1),
(86, '2021-04-19 19:51:13', '::1', '468hfjg6ftl3jfv5f9ql649ldu', 1),
(87, '2021-04-19 19:53:21', '::1', '468hfjg6ftl3jfv5f9ql649ldu', 1),
(88, '2021-04-19 21:20:08', '::1', '468hfjg6ftl3jfv5f9ql649ldu', 1),
(89, '2021-04-19 21:20:44', '::1', '468hfjg6ftl3jfv5f9ql649ldu', 1),
(90, '2021-04-19 21:37:43', '::1', '468hfjg6ftl3jfv5f9ql649ldu', 1),
(91, '2021-04-20 06:21:50', '::1', 'fasm4s7um9knc9qfk039ccehla', 1),
(92, '2021-04-20 07:01:48', '::1', 'fasm4s7um9knc9qfk039ccehla', 10),
(93, '2021-04-20 07:02:08', '::1', 'fasm4s7um9knc9qfk039ccehla', 11),
(94, '2021-04-20 08:52:25', '::1', 'fasm4s7um9knc9qfk039ccehla', 1),
(95, '2021-04-20 08:57:40', '::1', 'fasm4s7um9knc9qfk039ccehla', 1);

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `serial_no` int(11) NOT NULL,
  `From` varchar(40) DEFAULT NULL,
  `To` varchar(40) DEFAULT NULL,
  `txn_id` varchar(30) DEFAULT NULL,
  `img_ref` varchar(100) DEFAULT NULL,
  `user_uniqueID` int(11) DEFAULT NULL,
  `unique_tripID` int(11) DEFAULT NULL,
  `payment_method` varchar(10) DEFAULT NULL,
  `timestamp` datetime DEFAULT NULL,
  `isValidated` char(1) NOT NULL DEFAULT 'P'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`serial_no`, `From`, `To`, `txn_id`, `img_ref`, `user_uniqueID`, `unique_tripID`, `payment_method`, `timestamp`, `isValidated`) VALUES
(60, 'RGIA', 'Secretariat', '0', NULL, 1016, 21, 'cash', '2021-04-19 21:41:06', 'A'),
(61, 'Madhapur', 'RGIA', '123456123456123456', 'Amit_22_2021-04-19 215855.jpg', 1016, 22, 'paytm', '2021-04-19 21:58:55', 'A'),
(62, '', '', '123456789012', 'Amit_21_2021-04-20 015529.jpg', 1016, 21, 'paytm', '2021-04-20 01:55:29', 'P'),
(63, 'RGIA', 'Necklace Road', '0', NULL, 1016, 21, 'cash', '2021-04-20 02:49:17', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `customer_details`
--

CREATE TABLE `customer_details` (
  `name` varchar(50) NOT NULL,
  `email_id` varchar(40) DEFAULT NULL,
  `password` varchar(70) NOT NULL,
  `ph_no` varchar(13) NOT NULL,
  `unique_id` int(11) NOT NULL,
  `session_id` varchar(100) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer_details`
--

INSERT INTO `customer_details` (`name`, `email_id`, `password`, `ph_no`, `unique_id`, `session_id`) VALUES
('Amit', 'ap429@snu.edu.in', 'e7985493a1517c9f2d3dcce3db5176a8', '8885259592', 1016, 'fasm4s7um9knc9qfk039ccehla');

-- --------------------------------------------------------

--
-- Table structure for table `route`
--

CREATE TABLE `route` (
  `route_id` int(11) NOT NULL,
  `Time` time DEFAULT NULL,
  `From` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `route`
--

INSERT INTO `route` (`route_id`, `Time`, `From`) VALUES
(1, '11:30:00', 'RGIA'),
(2, '12:30:00', 'RGIA'),
(3, '13:30:00', 'RGIA'),
(4, '14:30:00', 'Madhapur'),
(5, '08:00:00', 'Paradise'),
(6, '09:30:00', 'JNTU');

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE `schedule` (
  `serial_no` int(11) NOT NULL,
  `Time` time DEFAULT NULL,
  `stop_name` varchar(50) DEFAULT NULL,
  `route_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `schedule`
--

INSERT INTO `schedule` (`serial_no`, `Time`, `stop_name`, `route_id`) VALUES
(1, '11:30:00', 'Secunderabad', 1),
(2, '11:40:00', 'L B Nagar', 1),
(3, '11:50:00', 'Miyapur', 1),
(4, '12:00:00', 'Secretariat', 1),
(5, '12:10:00', 'Necklace Road', 1),
(6, '12:20:00', 'KPHB', 1),
(7, '12:30:00', 'old airport', 2),
(8, '12:40:00', 'Hitec City', 2),
(11, '13:30:00', 'Suchitra Circle', 3),
(12, '13:40:00', 'Ameerpet', 3),
(13, '13:50:00', 'Raj Bhavan', 3),
(15, '14:30:00', 'Panjagutta', 4),
(16, '14:40:00', 'Malaysian TownShip', 4),
(17, '14:50:00', 'RGIA', 4),
(20, '08:30:00', 'Sun City', 5),
(21, '08:35:00', 'Jubilee Hills', 5),
(22, '08:45:00', 'Banjara Hills', 5),
(23, '09:00:00', 'RGIA', 5),
(24, '10:00:00', 'RGIA', 6);

-- --------------------------------------------------------

--
-- Table structure for table `trip_details`
--

CREATE TABLE `trip_details` (
  `Unique_tripID` int(11) NOT NULL,
  `From` varchar(40) DEFAULT NULL,
  `To` varchar(40) DEFAULT NULL,
  `Availability` int(11) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `Start_time` time DEFAULT NULL,
  `Cost` decimal(10,0) DEFAULT NULL,
  `route_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `trip_details`
--

INSERT INTO `trip_details` (`Unique_tripID`, `From`, `To`, `Availability`, `Date`, `Start_time`, `Cost`, `route_id`) VALUES
(21, 'RGIA', 'Secunderabad', 37, '2021-04-20', NULL, '140', 1),
(22, 'Madhapur', 'RGIA', 44, '2021-04-20', NULL, '180', 4),
(23, 'RGIA', 'L B Nagar', 100, '2021-05-01', NULL, '250', 1),
(24, 'Paradise', 'RGIA', 35, '2021-05-02', NULL, '500', 5),
(25, 'RGIA', 'Raj Bhavan', 10, '2021-05-02', NULL, '100', 3),
(26, 'Paradise', 'RGIA', 100, '2021-04-21', NULL, '120', 5);

-- --------------------------------------------------------

--
-- Table structure for table `user_log`
--

CREATE TABLE `user_log` (
  `serial_no` int(11) NOT NULL,
  `time_stamp` timestamp NULL DEFAULT NULL,
  `ip_address` varchar(50) DEFAULT NULL,
  `session_id` varchar(100) DEFAULT NULL,
  `user_unique_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_log`
--

INSERT INTO `user_log` (`serial_no`, `time_stamp`, `ip_address`, `session_id`, `user_unique_id`) VALUES
(138, '2021-04-19 15:51:48', '::1', '468hfjg6ftl3jfv5f9ql649ldu', 1016),
(139, '2021-04-19 19:15:21', '::1', '468hfjg6ftl3jfv5f9ql649ldu', 1016),
(140, '2021-04-19 19:28:13', '::1', '468hfjg6ftl3jfv5f9ql649ldu', 1016),
(141, '2021-04-19 19:54:17', '::1', '468hfjg6ftl3jfv5f9ql649ldu', 1016),
(142, '2021-04-19 21:18:02', '::1', '468hfjg6ftl3jfv5f9ql649ldu', 1016),
(143, '2021-04-20 06:24:38', '::1', 'fasm4s7um9knc9qfk039ccehla', 1016),
(144, '2021-04-20 06:56:51', '::1', 'fasm4s7um9knc9qfk039ccehla', 1016);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_details`
--
ALTER TABLE `admin_details`
  ADD PRIMARY KEY (`unique_id`);

--
-- Indexes for table `admin_log`
--
ALTER TABLE `admin_log`
  ADD PRIMARY KEY (`serial_no`),
  ADD KEY `admin_unique_id` (`admin_unique_id`);

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`serial_no`),
  ADD KEY `bookings_ibfk_1` (`unique_tripID`),
  ADD KEY `bookings_ibfk_2` (`user_uniqueID`);

--
-- Indexes for table `customer_details`
--
ALTER TABLE `customer_details`
  ADD PRIMARY KEY (`unique_id`);

--
-- Indexes for table `route`
--
ALTER TABLE `route`
  ADD PRIMARY KEY (`route_id`);

--
-- Indexes for table `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`serial_no`),
  ADD KEY `route_id` (`route_id`);

--
-- Indexes for table `trip_details`
--
ALTER TABLE `trip_details`
  ADD PRIMARY KEY (`Unique_tripID`),
  ADD KEY `route_id` (`route_id`);

--
-- Indexes for table `user_log`
--
ALTER TABLE `user_log`
  ADD PRIMARY KEY (`serial_no`),
  ADD KEY `user_unique_id` (`user_unique_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_details`
--
ALTER TABLE `admin_details`
  MODIFY `unique_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `admin_log`
--
ALTER TABLE `admin_log`
  MODIFY `serial_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `serial_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `customer_details`
--
ALTER TABLE `customer_details`
  MODIFY `unique_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1017;

--
-- AUTO_INCREMENT for table `route`
--
ALTER TABLE `route`
  MODIFY `route_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `schedule`
--
ALTER TABLE `schedule`
  MODIFY `serial_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `trip_details`
--
ALTER TABLE `trip_details`
  MODIFY `Unique_tripID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `user_log`
--
ALTER TABLE `user_log`
  MODIFY `serial_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin_log`
--
ALTER TABLE `admin_log`
  ADD CONSTRAINT `admin_log_ibfk_1` FOREIGN KEY (`admin_unique_id`) REFERENCES `admin_details` (`unique_id`);

--
-- Constraints for table `bookings`
--
ALTER TABLE `bookings`
  ADD CONSTRAINT `bookings_ibfk_1` FOREIGN KEY (`unique_tripID`) REFERENCES `trip_details` (`Unique_tripID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `bookings_ibfk_2` FOREIGN KEY (`user_uniqueID`) REFERENCES `customer_details` (`unique_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `schedule`
--
ALTER TABLE `schedule`
  ADD CONSTRAINT `schedule_ibfk_1` FOREIGN KEY (`route_id`) REFERENCES `route` (`route_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `trip_details`
--
ALTER TABLE `trip_details`
  ADD CONSTRAINT `trip_details_ibfk_1` FOREIGN KEY (`route_id`) REFERENCES `route` (`route_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_log`
--
ALTER TABLE `user_log`
  ADD CONSTRAINT `user_log_ibfk_1` FOREIGN KEY (`user_unique_id`) REFERENCES `customer_details` (`unique_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
