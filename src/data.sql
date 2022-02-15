-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 14, 2022 at 01:00 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kp`
--

-- --------------------------------------------------------

--
-- Table structure for table `gameexch567`
--

CREATE TABLE `gameexch567` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `website` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `king1`
--

CREATE TABLE `king1` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `website` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `king1`
--

INSERT INTO `king1` (`id`, `name`, `phone`, `website`, `username`) VALUES
(2021, 'Nisar', '9980880796', 'King567', 'nishu'),
(2022, 'Ranjith', '9449438109', 'Winexch567', 'ranju55'),
(2023, 'Arman', '9964882752', 'Playwin567', 'arman5'),
(2024, 'Priya', '8549901065', 'Gameexch567', 'priya55');

-- --------------------------------------------------------

--
-- Table structure for table `king2`
--

CREATE TABLE `king2` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `website` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `king2`
--

INSERT INTO `king2` (`id`, `name`, `phone`, `website`, `username`) VALUES
(1, 'Ranjith', '9449438109', 'Playwin567', 'ranju56');

-- --------------------------------------------------------

--
-- Table structure for table `play567`
--

CREATE TABLE `play567` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `website` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `playwin567`
--

CREATE TABLE `playwin567` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `website` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tmp_data`
--

CREATE TABLE `tmp_data` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tmp_data`
--

INSERT INTO `tmp_data` (`id`, `name`, `phone`) VALUES
(103, 'Nisar', '9980880796'),
(104, 'Ranjith', '9449438109'),
(105, 'Arman', '9964882752'),
(106, 'Priya', '8549901065'),
(107, 'sdg', '9786543210'),
(108, 'dgz', '9786543211'),
(109, 'sdg', '9786543212'),
(110, 'sdg', '9786543213'),
(111, 'fhfgjfgj', '9786543214'),
(112, 'dretert', '9786543215'),
(113, 'dyhd', '9786543216'),
(114, 'dfhdh', '9786543217');

-- --------------------------------------------------------

--
-- Table structure for table `winexch567`
--

CREATE TABLE `winexch567` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `website` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gameexch567`
--
ALTER TABLE `gameexch567`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `king1`
--
ALTER TABLE `king1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `king2`
--
ALTER TABLE `king2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `play567`
--
ALTER TABLE `play567`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `playwin567`
--
ALTER TABLE `playwin567`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tmp_data`
--
ALTER TABLE `tmp_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `winexch567`
--
ALTER TABLE `winexch567`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gameexch567`
--
ALTER TABLE `gameexch567`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `king1`
--
ALTER TABLE `king1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2025;

--
-- AUTO_INCREMENT for table `king2`
--
ALTER TABLE `king2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `play567`
--
ALTER TABLE `play567`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `playwin567`
--
ALTER TABLE `playwin567`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tmp_data`
--
ALTER TABLE `tmp_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT for table `winexch567`
--
ALTER TABLE `winexch567`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
