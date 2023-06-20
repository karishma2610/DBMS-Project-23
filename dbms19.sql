-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 20, 2023 at 02:03 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbms19`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `username`, `password`, `created_at`) VALUES
(1, 'admin', '$2y$10$Eq.LJ1J7Br1uIoB1rlfIpOWvugKCW9D3WJyiMlmzNK43Ox9R3qwPG', '2023-04-11 16:58:46');

-- --------------------------------------------------------

--
-- Table structure for table `hostelcomplaint`
--

CREATE TABLE `hostelcomplaint` (
  `id` int(11) NOT NULL,
  `rollno` varchar(50) NOT NULL,
  `userid` varchar(255) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `hostel` varchar(255) NOT NULL,
  `hostelname` varchar(5) NOT NULL,
  `room` varchar(5) NOT NULL,
  `category` varchar(50) NOT NULL,
  `descr` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'In Process',
  `dt` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hostelcomplaint`
--

INSERT INTO `hostelcomplaint` (`id`, `rollno`, `userid`, `name`, `email`, `phone`, `hostel`, `hostelname`, `room`, `category`, `descr`, `status`, `dt`) VALUES
(7, 'IIT2021204', 'karishma', 'Karishma Mitra', 'IIT2021204@iiita.ac.in', '9315364045', 'Girls Hostel', 'GH-1', '113A', 'Electricity', 'Fan not working.', 'RESOLVED', '2023-04-26 16:01:00'),
(21, 'IIT2021148', 'pragati', 'Pragati Gupta', 'iit2021148@iiita.ac.in', '6397467147', 'Girls Hostel', 'GH-1', '112B', 'Hygiene', 'Room is not being cleaned on a daily basis.', 'In Process', '2023-05-10 18:28:17'),
(22, 'IIT2021148', 'pragati', 'Pragati Gupta', 'iit2021148@iiita.ac.in', '6397467147', 'Girls Hostel', 'GH-1', '112B', 'General', 'Lots of mosquitoes.', 'RESOLVED', '2023-05-10 18:29:08'),
(23, 'IIT2021204', 'karishma', 'Karishma Mitra', 'iit2021204@iiita.ac.in', '9315364045', 'Girls Hostel', 'GH-1', '113A', 'Internet', 'Lan speed not sufficient.', 'In Process', '2023-05-10 18:30:03'),
(24, 'IIT2021117', 'rishika', 'Rishika Rajput', 'iit2021117@iiita.ac.in', '9767432567', 'Girls Hostel', 'GH-3', '216A', 'Electricity', 'Lights and fan not in proper working condition.', 'In Process', '2023-05-10 18:31:35'),
(25, 'IIT2021117', 'rishika', 'Rishika Rajput', 'iit2021117@iiita.ac.in', '9767432567', 'Girls Hostel', 'GH-3', '216A', 'Internet', 'Lan gets disconnected automatically. ', 'RESOLVED', '2023-05-10 18:33:05'),
(26, 'iit2021151', 'raaj', 'Raaj Tandon', 'iit2021151@iiita.ac.in', '6783689872', 'Boys Hostel', 'BH-3', '356', 'Electricity', 'Fan is not working', 'In Process', '2023-05-10 18:39:50'),
(27, 'iit2021151', 'raaj', 'Raaj Tandon', 'iit2021151@iiita.ac.in', '6783689872', 'Boys Hostel', 'BH-3', '356', 'Internet', 'Lan speed is very slow.', 'RESOLVED', '2023-05-10 18:40:03'),
(28, 'iit2021151', 'raaj', 'Raaj Tandon', 'iit2021151@iiita.ac.in', '6783689872', 'Boys Hostel', 'BH-3', '356', 'Hygiene', 'Bathrooms are not clean.', 'RESOLVED', '2023-05-10 18:40:22'),
(29, 'IIT2021154', 'saksham', 'Saksham Golechha', 'iit2021154@iiita.ac.in', '9767545343', 'Boys Hostel', 'BH-4', '645', 'General', 'Theft of money from hostel room.', 'In Process', '2023-05-10 18:42:41'),
(30, 'IIT2021154', 'saksham', 'Saksham Golechha', 'iit2021154@iiita.ac.in', '9767545343', 'Boys Hostel', 'BH-4', '645', 'Electricity', 'Irregular power supply.', 'In Process', '2023-05-10 18:43:02'),
(31, 'IIT2021115', 'vipul', 'Vipul Jain', 'iit2021115@iiita.ac.in', '7676587876', 'Boys Hostel', 'BH-1', '342', 'General', 'Water quality not proper.', 'RESOLVED', '2023-05-10 18:47:05'),
(32, 'IIT2021115', 'vipul', 'Vipul Jain', 'iit2021115@iiita.ac.in', '7676587876', 'Boys Hostel', 'BH-1', '342', 'Hygiene', 'Too many mosquitoes.', 'RESOLVED', '2023-05-10 18:47:30');

-- --------------------------------------------------------

--
-- Table structure for table `messcomplaint`
--

CREATE TABLE `messcomplaint` (
  `id` int(11) NOT NULL,
  `userid` varchar(255) NOT NULL,
  `name` varchar(100) NOT NULL,
  `hostel` varchar(255) NOT NULL,
  `rollno` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `compl` varchar(255) NOT NULL,
  `dt` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `messcomplaint`
--

INSERT INTO `messcomplaint` (`id`, `userid`, `name`, `hostel`, `rollno`, `email`, `compl`, `dt`) VALUES
(5, 'rishika', 'Rishika Rajput', 'GH', 'IIT2021117', 'iit2021117@iiita.ac.in', 'Good quality food products not being used.', '2023-05-10 18:34:09'),
(6, 'rishika', 'Rishika Rajput', 'GH', 'IIT2021117', 'iit2021117@iiita.ac.in', 'No proper timing is being followed.', '2023-05-10 18:34:29'),
(7, 'karishma', 'Karishma Mitra', 'GH', 'IIT2021204', 'iit2021204@iiita.ac.in', 'No proper menu is being followed.', '2023-05-10 18:35:30'),
(8, 'karishma', 'Karishma Mitra', 'GH', 'IIT2021204', 'iit2021204@iiita.ac.in', 'Food quality and taste is very poor.', '2023-05-10 18:35:45'),
(9, 'pragati', 'Pragati Gupta', 'GH', 'IIT2021148', 'iit2021148@iiita.ac.in', 'Taste is very bad.', '2023-05-10 18:36:28'),
(10, 'raaj', 'Raaj Tandon', 'BH', 'iit2021151', 'iit2021151@iiita.ac.in', 'Same chana dal in menu everyday.', '2023-05-10 18:41:03'),
(11, 'saksham', 'Saksham Golechha', 'BH', 'IIT2021154', 'iit2021154@iiita.ac.in', 'No variety is being offered. Please change the menu.', '2023-05-10 18:44:11'),
(12, 'vipul', 'Vipul Jain', 'BH', 'IIT2021115', 'iit2021115@iiita.ac.in', 'Milk is very diluted with water.', '2023-05-10 18:48:05'),
(13, 'pragati', 'Pragati ', 'GH', 'IIT2021148', 'iit2021148@iiita.ac.in', 'Food quality not up to the mark.', '2023-05-11 16:08:47');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `created_at`) VALUES
(1, 'rishika', '$2y$10$hF3Jc2ex33bBXzI2aPhEJOT5c07m7UVNj3vik/Stf.J1.QnRLOK2W', '2023-04-12 11:28:04'),
(3, 'karishma', '$2y$10$Eq.LJ1J7Br1uIoB1rlfIpOWvugKCW9D3WJyiMlmzNK43Ox9R3qwPG', '2023-04-11 16:51:19'),
(4, 'pragati', '$2y$10$Nn1m3nFVsAYFb8./M/8PTeyZNw4tmMYm2ss7ggB/QHD3kxx6S3uwG', '2023-05-10 18:25:26'),
(5, 'raaj', '$2y$10$wuANbdmumtfWfjDtL7K99uxbsdNxwQHjbaTDQeQ9/KzpSKKY14ewO', '2023-05-10 18:38:09'),
(6, 'saksham', '$2y$10$cRck/8Ofh3J1WoZGHmKjVeRuLQIiKUtLoAz3KKY4PIXJfJcH2odJu', '2023-05-10 18:41:39'),
(7, 'vipul', '$2y$10$tW1gaMK23RHOh2IEfxmyg.y5RXYCFZkLsmeFWmYZ6xfgQuhAoBZxS', '2023-05-10 18:44:52'),
(8, 'arnav', '$2y$10$vzYldG4Dy.ot.XD20ZRxC.PfZujVuETSyZd88bi0elMApwRnfLy72', '2023-05-11 16:09:52');

-- --------------------------------------------------------

--
-- Table structure for table `wardens`
--

CREATE TABLE `wardens` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wardens`
--

INSERT INTO `wardens` (`id`, `username`, `password`, `created_at`) VALUES
(1, 'warden', '$2y$10$Eq.LJ1J7Br1uIoB1rlfIpOWvugKCW9D3WJyiMlmzNK43Ox9R3qwPG', '2023-04-11 19:29:39');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hostelcomplaint`
--
ALTER TABLE `hostelcomplaint`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messcomplaint`
--
ALTER TABLE `messcomplaint`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wardens`
--
ALTER TABLE `wardens`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `hostelcomplaint`
--
ALTER TABLE `hostelcomplaint`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `messcomplaint`
--
ALTER TABLE `messcomplaint`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `wardens`
--
ALTER TABLE `wardens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
