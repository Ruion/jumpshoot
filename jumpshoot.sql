-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 28, 2019 at 04:23 PM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jumpshoot`
--

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `contact` varchar(16) NOT NULL,
  `score` varchar(3) NOT NULL,
  `game_score` text NOT NULL,
  `register_datetime` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`name`, `email`, `contact`, `score`, `game_score`, `register_datetime`) VALUES
('name1', 'email1', 'contact1', '', 'game_score1', 'register_datetime1'),
('name10', 'email10', 'contact10', '', 'game_score10', 'register_datetime10'),
('name2', 'email2', 'contact2', '', 'game_score2', 'register_datetime2'),
('name3', 'email3', 'contact3', '', 'game_score3', 'register_datetime3'),
('name4', 'email4', 'contact4', '', 'game_score4', 'register_datetime4'),
('name5', 'email5', 'contact5', '', 'game_score5', 'register_datetime5'),
('name6', 'email6', 'contact6', '', 'game_score6', 'register_datetime6'),
('name7', 'email7', 'contact7', '', 'game_score7', 'register_datetime7'),
('name8', 'email8', 'contact8', '', 'game_score8', 'register_datetime8'),
('name9', 'email9', 'contact9', '', 'game_score9', 'register_datetime9');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `phone` (`contact`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
