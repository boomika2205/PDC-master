-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 07, 2020 at 11:28 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pdc`
--

-- --------------------------------------------------------

--
-- Table structure for table `academics`
--

CREATE TABLE `academics` (
  `uid` varchar(12) NOT NULL,
  `id1` varchar(5) DEFAULT NULL,
  `id2` varchar(5) DEFAULT NULL,
  `id3` varchar(5) DEFAULT NULL,
  `id4` varchar(5) DEFAULT NULL,
  `id5` varchar(5) DEFAULT NULL,
  `id6` varchar(5) DEFAULT NULL,
  `id7` varchar(5) DEFAULT NULL,
  `id8` varchar(5) DEFAULT NULL,
  `marksheet` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `academics`
--

INSERT INTO `academics` (`uid`, `id1`, `id2`, `id3`, `id4`, `id5`, `id6`, `id7`, `id8`, `marksheet`) VALUES
('ayu', '1', '1', '1', '1', '1', '1', '1', '1', ''),
('boo', '6', '6', '6', '6', '6', '6', '6', '6', ''),
('parth', '7', '7', '7', '7', '7', '7', '7', '7', 'parth.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `username`, `password`, `email`) VALUES
(1, 'yashvi', 'yashvi', 'y@gmail.com'),
(2, 'parth', 'parth', 'p@g.com'),
(3, 'ayu', 'ayu', 'ayu@gmail.com'),
(4, 'naisha', 'naisha', 'n@shah.com'),
(5, 'boo', 'boo', 'boo@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `cocirricular`
--

CREATE TABLE `cocirricular` (
  `id` int(11) NOT NULL,
  `uid` varchar(12) NOT NULL,
  `name` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `type` varchar(11) NOT NULL,
  `award` varchar(20) NOT NULL,
  `location` varchar(20) NOT NULL,
  `certificate` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cocirricular`
--

INSERT INTO `cocirricular` (`id`, `uid`, `name`, `date`, `type`, `award`, `location`, `certificate`) VALUES
(4, 'boo', 'p', '0000-00-00', 'p', 'p', 'p', 'helllo'),
(2, 'parth', 'hjkh', '0000-00-00', 'ih', 'ihi', 'ijhl', 'parth');

-- --------------------------------------------------------

--
-- Table structure for table `extracirricular`
--

CREATE TABLE `extracirricular` (
  `id` int(11) NOT NULL,
  `uid` varchar(12) NOT NULL,
  `name` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `type` varchar(11) NOT NULL,
  `award` varchar(20) NOT NULL,
  `location` varchar(20) NOT NULL,
  `certificate` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `miniproject`
--

CREATE TABLE `miniproject` (
  `id` int(11) NOT NULL,
  `uid` varchar(12) NOT NULL,
  `title` varchar(50) NOT NULL,
  `mentor` varchar(20) DEFAULT NULL,
  `domain` varchar(30) DEFAULT NULL,
  `outcome` varchar(50) NOT NULL,
  `abstract` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `patent`
--

CREATE TABLE `patent` (
  `id` int(11) NOT NULL,
  `uid` varchar(12) NOT NULL,
  `title` varchar(50) NOT NULL,
  `mentor` varchar(50) NOT NULL,
  `domain` varchar(20) NOT NULL,
  `outcome` varchar(50) NOT NULL,
  `abstract` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `id` int(11) NOT NULL,
  `uid` varchar(12) NOT NULL,
  `title` varchar(50) NOT NULL,
  `mentor` varchar(50) DEFAULT NULL,
  `domain` varchar(20) DEFAULT NULL,
  `outcome` varchar(50) NOT NULL,
  `abstract` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `research`
--

CREATE TABLE `research` (
  `id` int(11) NOT NULL,
  `uid` varchar(12) NOT NULL,
  `title` varchar(50) NOT NULL,
  `mentor` varchar(50) NOT NULL,
  `domain` varchar(20) NOT NULL,
  `outcome` varchar(50) NOT NULL,
  `abstract` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `social`
--

CREATE TABLE `social` (
  `id` int(11) NOT NULL,
  `uid` varchar(12) NOT NULL,
  `name` varchar(20) NOT NULL,
  `date` date NOT NULL,
  `nature` varchar(20) NOT NULL,
  `certificate` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `uid` varchar(12) NOT NULL,
  `name` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `emailID` varchar(50) NOT NULL,
  `branch` varchar(5) NOT NULL,
  `phoneNo` varchar(10) NOT NULL,
  `permission` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `academics`
--
ALTER TABLE `academics`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cocirricular`
--
ALTER TABLE `cocirricular`
  ADD PRIMARY KEY (`uid`,`name`,`date`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `extracirricular`
--
ALTER TABLE `extracirricular`
  ADD PRIMARY KEY (`uid`,`name`,`date`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `miniproject`
--
ALTER TABLE `miniproject`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Indexes for table `patent`
--
ALTER TABLE `patent`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Indexes for table `research`
--
ALTER TABLE `research`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Indexes for table `social`
--
ALTER TABLE `social`
  ADD PRIMARY KEY (`uid`,`name`,`nature`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `cocirricular`
--
ALTER TABLE `cocirricular`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `extracirricular`
--
ALTER TABLE `extracirricular`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `miniproject`
--
ALTER TABLE `miniproject`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `patent`
--
ALTER TABLE `patent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `research`
--
ALTER TABLE `research`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `social`
--
ALTER TABLE `social`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
