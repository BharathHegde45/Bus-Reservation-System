-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 18, 2021 at 06:02 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sbtbsphp`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` int(100) NOT NULL,
  `booking_id` varchar(255) NOT NULL,
  `customer_id` varchar(255) NOT NULL,
  `route_id` varchar(255) NOT NULL,
  `customer_route` varchar(200) NOT NULL,
  `booked_amount` varchar(100) NOT NULL,
  `booked_seat` varchar(100) NOT NULL,
  `booking_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `booking_id`, `customer_id`, `route_id`, `customer_route`, `booked_amount`, `booked_seat`, `booking_created`) VALUES
(60, 'TBZJ360', 'CUST-2114034', 'RT-1908653', 'MANGALURU, KANYAKUMARI',2500, '3', '2021-10-16 22:15:13'),
(61, 'QK0MT61', 'CUST-2017936', 'RT-9941455', 'CHENNAI, KOCHI', 2000, '15', '2024-01-17 22:36:10'),
(62, 'A8L5662', 'CUST-5585037', 'RT-3835554', 'BENGALURU, MUMBAI', 3200, '2', '2024-01-18 00:08:51'),
(63, 'QDNGC63', 'CUST-8996235', 'RT-3835554', 'BENGALURU, MUMBAI', 3200, '15', '2024-01-18 09:31:30'),
(64, 'X34RW64', 'CUST-9474738', 'RT-3835554', 'BENGALURU, MUMBAI', 3200, '6', '2024-01-18 09:32:21'),
(65, 'JKZVT65', 'CUST-4031139', 'RT-3835554', 'BENGALURU, MUMBAI', 3200, '18', '2024-01-17 09:33:36'),
(66, 'HIIAN66', 'CUST-9997540', 'RT-5887160', 'AHEMADABAD, DELHI', 5000, '16', '2024-01-18 09:40:16'),
(67, 'QLOE167', 'CUST-9997540', 'RT-3835554', 'BENGALURU, MUMBAI',3200, '12', '2024-01-18 09:41:01');

-- --------------------------------------------------------

--
-- Table structure for table `buses`
--

CREATE TABLE `buses` (
  `id` int(100) NOT NULL,
  `bus_no` varchar(255) NOT NULL,
  `bus_assigned` tinyint(1) NOT NULL DEFAULT '0',
  `bus_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `buses`
--

INSERT INTO `buses` (`id`, `bus_no`, `bus_assigned`, `bus_created`) VALUES
(44, 'MVL1000', 0, '2024-02-16 22:05:16'),
(45, 'ABC0010', 1, '2024-02-17 22:32:46'),
(46, 'XYZ7890', 0, '2024-01-17 22:33:15'),
(47, 'BCC9999', 0, '2024-01-17 22:33:22'),
(48, 'RDH4255', 1, '2024-01-17 22:33:36'),
(49, 'TTH8888', 1, '2024-01-18 00:05:32'),
(50, 'MMM9969', 1, '2024-01-18 00:06:02'),
(51, 'LLL7699', 1, '2024-01-18 00:06:42'),
(52, 'SSX6633', 0, '2024-01-18 00:06:52'),
(53, 'NBS4455', 0, '2024-01-18 09:27:49'),
(54, 'CAS3300', 1, '2024-01-18 09:36:54');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(100) NOT NULL,
  `customer_id` varchar(255) NOT NULL,
  `customer_name` varchar(30) NOT NULL,
  `customer_phone` varchar(10) NOT NULL,
  `customer_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `customer_id`, `customer_name`, `customer_phone`, `customer_created`) VALUES
(34, 'CUST-2114034', 'RAHUL PANDEY', '7002001200', '2024-01-16 22:09:12'),
(35, 'CUST-8996235', 'RAMESH KUMAR', '4012222222', '2024-01-17 22:30:23'),
(36, 'CUST-2017936', 'RAJESH SHARMA', '7011111111', '2024-01-17 22:30:53'),
(37, 'CUST-5585037', 'RAKSHIT SHETTY', '1111111110', '2024-01-17 22:31:20'),
(38, 'CUST-9474738', 'SANGEETA REDDY', '7900000000', '2024-01-18 09:32:02'),
(39, 'CUST-4031139', 'MALVIKA IYER', '1003000010', '2024-01-18 09:33:08'),
(40, 'CUST-9997540', 'Demo Customer', '7777777700', '2024-01-18 09:39:10');

-- --------------------------------------------------------

--
-- Table structure for table `routes`
--

CREATE TABLE `routes` (
  `id` int(100) NOT NULL,
  `route_id` varchar(255) NOT NULL,
  `bus_no` varchar(155) NOT NULL,
  `route_cities` varchar(255) NOT NULL,
  `route_dep_date` date NOT NULL,
  `route_dep_time` time NOT NULL,
  `route_step_cost` int(100) NOT NULL,
  `route_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `routes`
--

INSERT INTO `routes` (`id`, `route_id`, `bus_no`, `route_cities`, `route_dep_date`, `route_dep_time`, `route_step_cost`, `route_created`) VALUES
(53, 'RT-1908653', 'MVL1000', 'MANGALURU,KANYAKUMARI', '2021-10-17', '22:05:00', 100, '2024-01-16 22:05:42'),
(54, 'RT-3835554', 'MMM9969', 'CHENNAI, KOCHI', '2021-10-19', '23:13:00', 70, '2024-01-16 22:12:32'),
(55, 'RT-9941455', 'RDH4255','BENGALURU, MUMBAI' , '2021-10-18', '10:00:00', 110, '2024-01-17 22:34:47'),
(56, 'RT-9069556', 'XYZ7890', 'BENGALURU, MUMBAI', '2021-10-19', '11:40:00', 85, '2024-01-17 23:39:57'),
(57, 'RT-775557', 'ABC0010', 'BENGALURU, MUMBAI', '2021-10-19', '13:30:00', 131, '2024-01-17 23:42:12'),
(58, 'RT-753558', 'TTH8888', 'BENGALURU, MUMBAI', '2021-10-20', '12:04:00', 55, '2024-01-18 00:04:42'),
(59, 'RT-6028759', 'LLL7699','AHEMADABAD, DELHI' , '2021-10-20', '13:50:00', 166, '2024-01-18 00:07:50'),
(60, 'RT-5887160', 'CAS3300', 'BENGALURU, MUMBAI', '2021-10-19', '10:30:00', 118, '2024-01-18 09:38:30');

-- --------------------------------------------------------

--
-- Table structure for table `seats`
--

CREATE TABLE `seats` (
  `bus_no` varchar(155) NOT NULL,
  `seat_booked` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `seats`
--

INSERT INTO `seats` (`bus_no`, `seat_booked`) VALUES
('ABC0010', NULL),
('BCC9999', NULL),
('CAS3300', '16'),
('LLL7699', NULL),
('MMM9969', '2,15,6,18,12'),
('MVL1000', '3'),
('NBS4455', NULL),
('RDH4255', '15'),
('SSX6633', NULL),
('TTH8888', NULL),
('XYZ7890', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_fullname` varchar(100) NOT NULL,
  `user_name` varchar(30) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_fullname`, `user_name`, `user_password`, `user_created`) VALUES
(1, 'Bharath Hegde', 'admin', '$2y$10$7rLSvRVyTQORapkDOqmkhetjF6H9lJHngr4hJMSM2lHObJbW5EQh6', '2024-06-02 13:55:21'),
(1, 'Ashirvad BM', 'admin', '$2y$10$7rLSvRVyTQORapkDOqmkhetjF6H9lJHngr4hJMSM2lHObJbW5EQh6', '2024-06-02 13:55:21'),
(1, 'Chandan ML', 'admin', '$2y$10$7rLSvRVyTQORapkDOqmkhetjF6H9lJHngr4hJMSM2lHObJbW5EQh6', '2024-06-02 13:55:21'),
(1, 'Mallikarjun NY', 'admin', '$2y$10$7rLSvRVyTQORapkDOqmkhetjF6H9lJHngr4hJMSM2lHObJbW5EQh6', '2024-06-02 13:55:21'),
(2, 'Test Admin', 'testadmin', '$2y$10$A2eGOu1K1TSBqMwjrEJZg.lgy.FmCUPl/l5ugcYOXv4qKWkFEwcqS', '2024-10-17 21:10:07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `buses`
--
ALTER TABLE `buses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `routes`
--
ALTER TABLE `routes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seats`
--
ALTER TABLE `seats`
  ADD PRIMARY KEY (`bus_no`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;
--
-- AUTO_INCREMENT for table `buses`
--
ALTER TABLE `buses`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `routes`
--
ALTER TABLE `routes`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
