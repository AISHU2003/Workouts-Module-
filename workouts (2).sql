-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 23, 2024 at 12:41 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `workouts`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_trainer`
--

CREATE TABLE `add_trainer` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `experience` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `fees` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `adminlogin`
--

CREATE TABLE `adminlogin` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` int(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `confirmpassword` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adminlogin`
--

INSERT INTO `adminlogin` (`id`, `name`, `email`, `phone`, `password`, `confirmpassword`) VALUES
(1, 'admin', 'admin@gmail.com', 1234567890, 'admin123', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `bargraph`
--

CREATE TABLE `bargraph` (
  `Sno` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `day1` int(11) NOT NULL,
  `day2` int(11) NOT NULL,
  `day3` int(11) NOT NULL,
  `day4` int(11) NOT NULL,
  `day5` int(11) NOT NULL,
  `day6` int(11) NOT NULL,
  `day7` int(11) NOT NULL,
  `day8` int(11) NOT NULL,
  `day9` int(11) NOT NULL,
  `day10` int(11) NOT NULL,
  `day11` int(11) NOT NULL,
  `day12` int(11) NOT NULL,
  `day13` int(11) NOT NULL,
  `day14` int(11) NOT NULL,
  `day15` int(11) NOT NULL,
  `day16` int(11) NOT NULL,
  `day17` int(11) NOT NULL,
  `day18` int(11) NOT NULL,
  `day19` int(11) NOT NULL,
  `day20` int(11) NOT NULL,
  `day21` int(11) NOT NULL,
  `day22` int(11) NOT NULL,
  `day23` int(11) NOT NULL,
  `day24` int(11) NOT NULL,
  `day25` int(11) NOT NULL,
  `day26` int(11) NOT NULL,
  `day27` int(11) NOT NULL,
  `day28` int(11) NOT NULL,
  `day29` int(11) NOT NULL,
  `day30` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bargraph`
--

INSERT INTO `bargraph` (`Sno`, `user_id`, `name`, `day1`, `day2`, `day3`, `day4`, `day5`, `day6`, `day7`, `day8`, `day9`, `day10`, `day11`, `day12`, `day13`, `day14`, `day15`, `day16`, `day17`, `day18`, `day19`, `day20`, `day21`, `day22`, `day23`, `day24`, `day25`, `day26`, `day27`, `day28`, `day29`, `day30`) VALUES
(13, 1, 'swathi', 3, 4, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `id` int(11) NOT NULL,
  `classname` text NOT NULL,
  `classdescription` varchar(255) NOT NULL,
  `classtime` varchar(255) NOT NULL,
  `amount` varchar(200) NOT NULL,
  `meetingurl` varchar(150) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`id`, `classname`, `classdescription`, `classtime`, `amount`, `meetingurl`, `image`) VALUES
(8, 'Cardio Kickboxing', 'An energetic class combing cardio and kickboxing techniques.', '5:30 PM - 6:30 PM', '300', 'https://meet.google.com/tmi-stam-dnd', 'kickboxing.jpg'),
(11, 'CrossFit', 'High-intensity functional fitness training for overall strength and endurance.', '7:00 AM - 8:00 AM', '250', 'https://meet.google.com/qnd-nabr-epx', 'crossfit.jpg'),
(12, 'Pilates', ' Core-focused exercises to improve strength, flexibility, and posture.', '9:00 AM - 10:00 AM', '150', 'https://meet.google.com/rsf-psja-ufs', 'pillates.jpg'),
(13, 'Zumba Classes', 'Combines dance and aerobic movements set to energetic music. Provides a fun and effective cardiovascular workout.', '6:30 PM - 7:30 PM', '200', 'https://meet.google.com/tia-ewys-cpb', 'zumbaclass.jpg'),
(14, 'HIIT Classes', 'High-Intensity Interval Training alternates between short bursts of intense exercise and periods of rest. Effective for burning calories and improving fitness.', '3:00 PM - 4:00 PM', '200', 'https://meet.google.com/ysc-bbmw-aye', 'hiitclasses.jpg'),
(15, 'Barre Classes', 'Combines elements of ballet, Pilates, and yoga. Focuses on isometric strength training and flexibility.', '8:30 AM - 9:30 AM', '350', 'https://meet.google.com/nsf-fowc-eze', 'barreclasses.jpg'),
(16, 'Aqua Aerobics', 'Performed in water to reduce impact on joints. Improves cardiovascular fitness and muscle strength.', '5:00 PM - 6:30 PM', '300', 'https://meet.google.com/qxe-xspc-cpb', 'aquaaerobics.jpg'),
(17, 'Yoga Class', 'Join our Yoga class to experience tranquility and improve flexibility. This class is suitable for all levels, from beginners to advanced practitioners.', ' 6:00 PM - 7:00 PM', '100', 'https://meet.google.com/hno-zprf-zob', 'yogaclass.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `confirmpassword` varchar(100) NOT NULL,
  `role` text NOT NULL,
  `Height` int(100) NOT NULL,
  `Weight` int(100) NOT NULL,
  `TargetWeight` int(100) NOT NULL,
  `status` text NOT NULL,
  `Gender` varchar(100) NOT NULL,
  `Age` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `name`, `email`, `phone`, `password`, `confirmpassword`, `role`, `Height`, `Weight`, `TargetWeight`, `status`, `Gender`, `Age`) VALUES
(1, 'swathi', 'swathi@gmail.com', '1234567890', '123', '123', '', 163, 60, 55, '', 'female', 20),
(2, 'chaitu', 'chaitu@gmail.com', '1234567890', '123', '123', '', 5, 60, 55, '', 'male', 23),
(3, '', 'cherry@gmail.com', '1234567890', '123', '123', '', 163, 75, 65, '', '0', 20),
(4, 'swetha', 'swetha@gmail.com', '0987654321', '123', '123', '', 4, 40, 45, '', 'female', 19),
(5, 'akshaya', 'akshaya@gmail.com', '9876543210', '123', '123', '', 5, 65, 50, '', 'female', 20),
(6, 'meena', 'lohitha@gmail.com', '9876543210', '123', '123', '', 5, 60, 50, '', '0', 20),
(7, 'keerthi', 'kreethi@gmail.com', '9876543210', '123', '123', '', 0, 0, 0, '', '', 0),
(8, 'meena', 'meena@gmail.com', '0987654321', '12', '12', '', 5, 60, 45, '', 'female', 20),
(9, 'sweety', 'sweety@gmail.com', '9876543212', '123', '123', '', 7, 70, 55, '', 'female', 20),
(10, 'aishu', 'aishu@gmail.com', '1234567890', '123', '123', '', 4, 75, 65, '', 'female', 24),
(11, 'preethi', 'preethi@gmail.com', '8170824216', '123', '123', '', 163, 75, 65, '', 'female', 24),
(12, 'prasanth', 'prasanth@gmail.com', '6406305321', '123', '123', '', 5, 60, 55, '', 'male', 24),
(13, 'abbhi', 'abbhi@gmail.com', '9550571231', '123', '123', '', 163, 75, 65, '', 'male', 24),
(14, 'koushik', 'koushik@gmail.com', '9876654432', '123', '123', '', 4, 60, 65, '', 'male', 24),
(15, 'sahithi', 'sahithi@gmail.com', '7968650234', '123', '123', '', 5, 60, 65, '', 'female', 20),
(17, 'keerthi', 'keerthi@gmail.com', '9454482635', '123', '123', '', 4, 60, 65, '', 'female', 20),
(18, 'meenakshi', 'meena@gmail.com', '1234567890', '123', '123', '', 0, 0, 0, '', '', 0),
(19, 'sweety', 'sweety@gmail.com', '9873354211', '123', '123', '', 0, 0, 0, '', '', 0),
(20, 'bindu', 'bindu@gmail.com', '6587412397', '123', '123', '', 56, 70, 66, '', 'female', 22),
(21, 'krithi', 'krithi@gmail.com', '9574472249', '123', '123', '', 56, 70, 66, '', 'female', 20),
(22, 'priyanka', 'priyanka@gmail.com', '9874563210', '123', '123', '', 56, 70, 67, '', 'male', 20),
(24, 'karthik', 'kar@gmail.com', '8573364488', '123', '123', '', 56, 70, 66, '', 'female', 20),
(25, 'karr', 'karr@gmail.com', '9973364488', '123', '123', '', 56, 70, 66, '', 'female', 20),
(26, 'sas', 'sas@gmail.com', '9876543210', '123', '123', '', 55, 50, 45, '', 'female', 18),
(27, 'saa', 'saa@gmail.com', '876543212', '123', '456', '', 167, 43, 55, '', 'female', 22),
(28, 'naina', 'naina@gmail.com', '9874563210', '123', '123', '', 0, 0, 0, '', '', 0),
(30, 'dhatchu', 'dhatchu@gmail.com', '0912384756', '12', '12', '', 0, 0, 0, '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `i` int(100) NOT NULL,
  `sender` varchar(100) NOT NULL,
  `message` varchar(100) NOT NULL,
  `id` int(100) NOT NULL,
  `activity` varchar(100) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`i`, `sender`, `message`, `id`, `activity`, `timestamp`) VALUES
(1, 'swathi', 'hello', 0, '', '2023-12-20 17:29:30'),
(2, 'User', 'hiii', 0, '', '2023-12-20 17:33:12'),
(3, 'User', 'hii', 0, '', '2023-12-20 17:40:15'),
(4, '', 'heyyyy', 0, '', '2023-12-20 17:41:50'),
(5, '', 'hello', 0, '', '2023-12-20 17:50:34'),
(6, '', 'hoii', 0, '', '2023-12-20 17:52:10'),
(7, '', 'hi', 0, '', '2023-12-20 17:55:26'),
(8, '', 'hi', 0, '', '2023-12-20 18:03:00'),
(9, '', 'hoiiii', 0, '', '2023-12-20 18:07:21'),
(10, 'swathi', 'hi', 0, '', '2023-12-21 07:31:56'),
(12, 'preethi', 'heyyyy', 0, '', '2024-01-03 04:34:29'),
(13, 'preethi', 'yeah!!!', 0, '', '2024-01-03 05:18:24'),
(14, 'preethi', 'hi', 0, '', '2024-01-03 09:36:52'),
(15, 'prasanth', 'hello', 0, '', '2024-01-04 12:04:38'),
(16, 'admin', 'hello guyss!!', 0, '', '2024-01-04 12:17:54'),
(17, 'prasanth', 'how many days want to reduce weight', 0, '', '2024-01-05 03:34:53'),
(18, 'prasanth', 'take 1 month after see the result then contiune', 0, '', '2024-01-05 03:35:37'),
(19, 'admin', 'okay', 0, '', '2024-01-09 13:52:36'),
(20, '', 'hi', 0, '', '2024-01-09 19:11:14'),
(21, 'meenakshi', 'hello nice', 0, '', '2024-02-28 05:48:03');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` varchar(200) NOT NULL,
  `payment_id` varchar(200) NOT NULL,
  `amount` varchar(200) NOT NULL,
  `product_id` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `payment_id`, `amount`, `product_id`) VALUES
(1, '1', 'pay_NMnWwHDe9fz6vJ', '300', '1'),
(2, '2', 'pay_NMo7TB2wtiBc6Y', '200', '1'),
(3, '1', 'pay_NMo9dL8pYZslOO', '200', '1'),
(4, '5', 'pay_NMoE0rUCpsWelG', '200', '10'),
(5, '1', 'pay_NMoI2LsJXIPvpd', '200', '10'),
(6, '1', 'pay_NMoJJ1Vvom5E4H', '300', '8'),
(7, '1', 'pay_NMoMaVacUvZCtu', '300', '8'),
(8, '1', 'pay_NMoO4jSEHlsVLz', '300', '8'),
(9, '1', 'pay_NMoYDpEgnPDUeU', '300', '8'),
(10, '6', 'pay_NMoe71OOsg9eX9', '100', '7'),
(11, '1', 'pay_NMoipemPO2Z32Z', '200', '10'),
(12, '1', 'pay_NMqCa2jR1Fbvqw', '200', '10'),
(13, '1', 'pay_NMqEHC3lmvh5Ul', '200', '10'),
(14, '1', 'pay_NMqFcUUmN8KLd0', '200', '10'),
(15, '1', 'pay_NMqGM5MyHQDOaY', '200', '10'),
(16, '1', 'pay_NMqHNXIPQ3uDhs', '200', '10'),
(17, '1', 'pay_NMqJfCkrNIkG2g', '200', '10'),
(18, '1', 'pay_NMsFRiTqWirQlP', '100', '7'),
(19, '1', 'pay_NMvH5efxB0Kx8I', '150', '12'),
(20, '1', 'pay_NMzJIpCmPulrrN', '100', '7'),
(21, '1', 'pay_NN9c8Qr8qmDgA4', '300', '16'),
(22, '1', 'pay_NNAbMtrzWYXTGj', '250', '11'),
(23, '1', 'pay_NNEzYOIdnGEiA5', '200', '13'),
(24, '1', 'pay_NNFJWLS2csRtID', '250', '11'),
(25, '11', 'pay_NNFNLutqSj9UBS', '250', '11'),
(26, '11', 'pay_NNFgacRVF2Rn0N', '300', '8'),
(27, '11', 'pay_NRFX1wjVFkUH8z', '150', '12'),
(28, '14', 'pay_NSjZumVr1UJSRo', '150', '12'),
(29, '11', 'pay_NWK5ldK2Au7KAf', '300', '16'),
(30, '11', 'pay_NWKCPuUx6tHoze', '100', '17'),
(31, '11', 'pay_NX40AfU9rpSk8H', '350', '15'),
(32, '11', 'pay_NXqZoe17PNVFid', '200', '14'),
(33, '1', 'pay_NfzHMesszo1vYY', '350', '15'),
(34, '18', 'pay_NgBk8tUMKCofOd', '150', '12'),
(35, '1', 'pay_NgBweRcDa2rdpx', '100', '17'),
(36, '1', 'pay_NnUrJYgKgiaHeg', '200', '14'),
(37, '18', 'pay_NzBhpSAOnsvcjG', '350', '15');

-- --------------------------------------------------------

--
-- Table structure for table `trainerlogin`
--

CREATE TABLE `trainerlogin` (
  `t_id` int(10) NOT NULL,
  `name` text NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `add_trainer`
--
ALTER TABLE `add_trainer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adminlogin`
--
ALTER TABLE `adminlogin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bargraph`
--
ALTER TABLE `bargraph`
  ADD PRIMARY KEY (`Sno`);

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`i`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trainerlogin`
--
ALTER TABLE `trainerlogin`
  ADD PRIMARY KEY (`t_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `add_trainer`
--
ALTER TABLE `add_trainer`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `adminlogin`
--
ALTER TABLE `adminlogin`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bargraph`
--
ALTER TABLE `bargraph`
  MODIFY `Sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `i` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `trainerlogin`
--
ALTER TABLE `trainerlogin`
  MODIFY `t_id` int(10) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
