-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 23, 2017 at 12:32 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `restful_api_demo`
--

-- --------------------------------------------------------

--
-- Table structure for table `lampu`
--

CREATE TABLE `lampu` (
  `warna` varchar(20) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lampu`
--

INSERT INTO `lampu` (`warna`, `status`) VALUES
('merah', 0),
('kuning', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `user_info_id` int(70) NOT NULL,
  `user_id_fk` int(70) NOT NULL,
  `user_name` varchar(45) DEFAULT NULL,
  `user_location` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_login`
--

CREATE TABLE `user_login` (
  `user_id` int(70) NOT NULL,
  `user_email` varchar(45) NOT NULL,
  `user_password` varchar(45) DEFAULT NULL,
  `user_join_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_login`
--

INSERT INTO `user_login` (`user_id`, `user_email`, `user_password`, `user_join_date`) VALUES
(1, 'arya@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '2016-12-22 15:22:01'),
(2, 'kamu@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '2016-12-22 15:22:37'),
(4, 'CUKIP@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '2016-12-22 15:32:45'),
(5, 'waladi@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '2016-12-22 15:37:18'),
(6, 'akhiyar@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '2016-12-22 15:37:31'),
(7, 'akiyar@apps.cs.ipb.ac.id', '82d21e53f74b7a30c620f25404837be9', '2016-12-23 13:08:01'),
(9, 'akiyarwaladi@apps.cs.ipb.ac.id', '82d21e53f74b7a30c620f25404837be9', '2016-12-23 13:21:31'),
(10, 'tasngab@io.com', '6a95a989961131b3d698f4b1a68378f8', '2016-12-23 13:22:54');

-- --------------------------------------------------------

--
-- Table structure for table `user_status`
--

CREATE TABLE `user_status` (
  `user_status_id` int(70) NOT NULL,
  `user_id_fk` int(70) NOT NULL,
  `status_text` text,
  `status_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`user_info_id`),
  ADD UNIQUE KEY `user_id_fk_UNIQUE` (`user_id_fk`);

--
-- Indexes for table `user_login`
--
ALTER TABLE `user_login`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_email_UNIQUE` (`user_email`);

--
-- Indexes for table `user_status`
--
ALTER TABLE `user_status`
  ADD PRIMARY KEY (`user_status_id`),
  ADD UNIQUE KEY `user_id_fk_UNIQUE` (`user_id_fk`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `user_info_id` int(70) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user_login`
--
ALTER TABLE `user_login`
  MODIFY `user_id` int(70) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `user_status`
--
ALTER TABLE `user_status`
  MODIFY `user_status_id` int(70) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `user_info`
--
ALTER TABLE `user_info`
  ADD CONSTRAINT `user_info_foreign_key` FOREIGN KEY (`user_id_fk`) REFERENCES `user_login` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `user_status`
--
ALTER TABLE `user_status`
  ADD CONSTRAINT `user_status_foreign_key` FOREIGN KEY (`user_id_fk`) REFERENCES `user_login` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
