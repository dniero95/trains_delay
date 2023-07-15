-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jul 15, 2023 at 10:18 AM
-- Server version: 5.7.34
-- PHP Version: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `trains_delay`
--

-- --------------------------------------------------------

--
-- Table structure for table `journeys`
--

CREATE TABLE `journeys` (
  `journey_id` bigint(20) NOT NULL,
  `train_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `journeys`
--

INSERT INTO `journeys` (`journey_id`, `train_id`, `user_id`) VALUES
(1, 1, 3),
(2, 1, 1),
(4, 1, 2),
(5, 1, 4),
(6, 3, 1),
(7, 3, 4),
(8, 3, 2),
(9, 3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `trains`
--

CREATE TABLE `trains` (
  `train_id` bigint(20) NOT NULL,
  `arrival_time` datetime(6) DEFAULT NULL,
  `departure_arrival` tinyint(4) DEFAULT NULL,
  `departure_time` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `trains`
--

INSERT INTO `trains` (`train_id`, `arrival_time`, `departure_arrival`, `departure_time`) VALUES
(1, '2023-07-16 18:30:00.000000', 1, '2023-07-16 21:30:00.000000'),
(3, '2023-07-16 06:00:00.000000', 0, '2023-07-16 09:00:00.000000');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `surname` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `name`, `surname`) VALUES
(1, 'Andrei', 'Antal'),
(2, 'Marco', 'Niero'),
(3, 'Dario', 'Niero'),
(4, 'Erika', 'Antal');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `journeys`
--
ALTER TABLE `journeys`
  ADD PRIMARY KEY (`journey_id`),
  ADD KEY `FKeret9h6hyu7sqcyw7njebw64g` (`train_id`),
  ADD KEY `FK1um7r8cm6rnn4dinfmarjjmqv` (`user_id`);

--
-- Indexes for table `trains`
--
ALTER TABLE `trains`
  ADD PRIMARY KEY (`train_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `journeys`
--
ALTER TABLE `journeys`
  MODIFY `journey_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `trains`
--
ALTER TABLE `trains`
  MODIFY `train_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `journeys`
--
ALTER TABLE `journeys`
  ADD CONSTRAINT `FK1um7r8cm6rnn4dinfmarjjmqv` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `FKeret9h6hyu7sqcyw7njebw64g` FOREIGN KEY (`train_id`) REFERENCES `trains` (`train_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
