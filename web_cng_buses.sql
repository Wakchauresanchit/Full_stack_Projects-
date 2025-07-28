-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 04, 2025 at 06:30 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `web_cng_buses`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `email`, `password`) VALUES
(1, 'sanchit@gmail.com', '917286');

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `id` int(40) NOT NULL,
  `PUMP ID` varchar(34) NOT NULL,
  `name` varchar(40) NOT NULL,
  `city` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `cngrequired` int(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`id`, `PUMP ID`, `name`, `city`, `email`, `cngrequired`) VALUES
(2, '3', 'sanchit', 'kolkata', 'sanchit@gmail.com', 3000),
(3, '6', 'Shreya', 'sinner', 'S@gmail.com', 400),
(4, '1', 'soham', 'sinner', 'soham@gmail.com', 400),
(6, '1', 'kartik', 'nashik', 'k@gmail.com', 500),
(7, '4', 'vijay', 'nashik', 'vijay@gmailcom', 400),
(8, '6', 'abdul', 'mumbai', 'maksad@gmail.com', 5000);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(40) NOT NULL,
  `name` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `pump_id` int(40) NOT NULL,
  `city` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `name`, `email`, `password`, `pump_id`, `city`) VALUES
(1, 'aboli', 'ab@gmail.com', '12345', 1, 'kotul'),
(2, 'atharv', 'atharv@gmail.com', '123456789', 3, 'moh'),
(3, 'atharv', 'atharv@gmail.com', '123456789', 3, 'moh'),
(4, 'shree', 'satyajeet@gmail.com', '7469', 6, 'dindori'),
(5, 'Akshay', 'akshay@gmail.com', '23678', 6, 'pune'),
(6, 'dipali', 'dipali@gmail.com', '1234', 1, 'sinnar');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id` int(20) NOT NULL,
  `pump_name` varchar(40) NOT NULL,
  `address` varchar(40) NOT NULL,
  `city` varchar(40) NOT NULL,
  `taluka` varchar(40) NOT NULL,
  `district` varchar(40) NOT NULL,
  `opentime` varchar(40) NOT NULL,
  `closetime` varchar(40) NOT NULL,
  `mobile` varchar(40) NOT NULL,
  `latitude` varchar(40) NOT NULL,
  `longitude` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `status` varchar(40) NOT NULL,
  `CNG_in_Kg` int(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `pump_name`, `address`, `city`, `taluka`, `district`, `opentime`, `closetime`, `mobile`, `latitude`, `longitude`, `password`, `status`, `CNG_in_Kg`) VALUES
(1, 'Om Sai', 'Palse', 'nashik', 'Sinner', 'Nashik', '9am', '12 pm', '9172864950', '30 east', '40 west', '1234', 'avaliable', 4100),
(2, 'krushna', 'viragaon', 'akole', 'akole', 'A.Nagar', '5am', '10 pm', '4562790', '20 east', '36 west', '0987', 'pending', 28467),
(4, 'shiv', 'dongargaon', 'rajapur', 'sangamner', 'A.Nagar', '7am', '1pm', '346219', '235 north', '23d5 south', '6543', 'pending', 4036),
(5, 'shri ganesh', 'katraj', 'sinner', 'sangamner', 'A.Nagar', '5am', '12 pm', '1234567', '235 north', '23d5 south', '34567', 'avaliable', 3234),
(6, 'Patil pump', 'radhaswami nagar', 'Pachora', 'Pachora', 'Jalgaon', '8 am', '11 pm', '57708-8', '30 east', '23d5 south', '1234', 'pending', 30225),
(7, 'sanchit', 'Palse', 'nashik', 'Sinner', 'Nashik', '8 am', '12 pm', '6515312', '235 north', '36 west', '346', 'pending', 12345),
(8, 'HP', 'thambhole', 'virgaon', 'akole', 'A.Nagar', '3 am', '11 pm', '856367854', '3425 west', '568 north', 'hp123', 'pending', 9000);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(20) NOT NULL,
  `name` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `mobile` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `city` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `mobile`, `password`, `city`) VALUES
(1, 'karan', 'k@gmail.com', '492730', '1234', 'goa'),
(2, 'om', 'O@gmail.com', '5472974', '1209', 'akole'),
(3, 'sattu', 'sattu@gmail.com', '6274927', '5678', 'deothan'),
(4, 'kartik', 'kd@gmail', '3668798', '85453', 'virgaon'),
(5, 'Rani', 'r@gmail.com', '5765879', '456789', 'shivde'),
(6, 'nikhil', 'n@gmail.com', '865987', '96874', 'mumbai'),
(7, 'khushi', '@gmail.com', '564429', '1432543', 'shinde'),
(8, 'hitesh', 'hitesh@gmail.com', '986071', '45920', 'Jamner'),
(9, 'dipali', 'dipali@gmail.com', '8976789789', '2002', 'sinnar'),
(10, 'kalpesh', 'kapya@312', '942026', '1212', 'baramati'),
(11, 'Prashant', 'prashant@gmail.com', '45329098', '598624', 'baghur'),
(13, 'tanmayi', 't@gmail.com', '7687679878', '454545', 'pune'),
(14, 'Rushi', 'rushi@gmail.com', '1234567', '12345', 'nifad');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `id` int(40) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(40) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
