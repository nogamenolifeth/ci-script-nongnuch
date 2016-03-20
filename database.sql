-- phpMyAdmin SQL Dump
-- version 4.4.12
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 20, 2016 at 04:46 PM
-- Server version: 10.0.20-MariaDB
-- PHP Version: 5.6.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `อะไรก็ว่าไปครับ`
--

-- --------------------------------------------------------

--
-- Table structure for table `ci_board_group`
--

CREATE TABLE IF NOT EXISTS `ci_board_group` (
  `id` int(3) NOT NULL,
  `seq` int(4) NOT NULL,
  `url` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `detail` text,
  `counter` int(6) NOT NULL,
  `active` tinyint(1) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ci_board_group`
--

INSERT INTO `ci_board_group` (`id`, `seq`, `url`, `title`, `detail`, `counter`, `active`) VALUES
(1, 1, 'web', 'เวปไซต์', 'เวปไซต์', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ci_board_message`
--

CREATE TABLE IF NOT EXISTS `ci_board_message` (
  `id` int(4) NOT NULL,
  `by_type` varchar(5) NOT NULL,
  `user_id` int(5) NOT NULL,
  `del_id` int(10) NOT NULL,
  `post_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ci_board_reply`
--

CREATE TABLE IF NOT EXISTS `ci_board_reply` (
  `id` int(11) NOT NULL,
  `user_id` int(5) NOT NULL,
  `topic_id` int(6) NOT NULL,
  `detail` text NOT NULL,
  `post_date` datetime NOT NULL,
  `active` tinyint(1) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ci_board_reply`
--

INSERT INTO `ci_board_reply` (`id`, `user_id`, `topic_id`, `detail`, `post_date`, `active`) VALUES
(1, 1, 1, 'เวปไซต์', '2016-03-20 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ci_board_thanks`
--

CREATE TABLE IF NOT EXISTS `ci_board_thanks` (
  `id` int(6) NOT NULL,
  `user_id_a` int(5) NOT NULL,
  `user_id_b` int(5) NOT NULL,
  `post_date` date NOT NULL,
  `active` tinyint(1) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ci_board_thanks`
--

INSERT INTO `ci_board_thanks` (`id`, `user_id_a`, `user_id_b`, `post_date`, `active`) VALUES
(1, 1, 1, '2016-03-20', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ci_board_topic`
--

CREATE TABLE IF NOT EXISTS `ci_board_topic` (
  `id` int(6) NOT NULL,
  `seq` int(2) NOT NULL,
  `user_id` int(5) NOT NULL,
  `group_id` int(3) NOT NULL,
  `title` varchar(100) NOT NULL,
  `detail` text NOT NULL,
  `post_date` datetime NOT NULL,
  `up_date` datetime DEFAULT NULL,
  `reply_date` datetime DEFAULT NULL,
  `counter` int(6) NOT NULL,
  `reply` int(6) NOT NULL,
  `active` tinyint(1) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ci_board_topic`
--

INSERT INTO `ci_board_topic` (`id`, `seq`, `user_id`, `group_id`, `title`, `detail`, `post_date`, `up_date`, `reply_date`, `counter`, `reply`, `active`) VALUES
(1, 1, 1, 1, 'เวปไซต์', 'เวปไซต์', '2016-03-20 00:00:00', '2016-03-20 00:00:00', '2016-03-20 00:00:00', 4, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ci_downloads`
--

CREATE TABLE IF NOT EXISTS `ci_downloads` (
  `id` int(3) NOT NULL,
  `group` int(2) NOT NULL,
  `title` varchar(50) NOT NULL,
  `detail` text,
  `name` varchar(30) NOT NULL,
  `add_date` datetime NOT NULL,
  `up_date` datetime DEFAULT NULL,
  `counter` int(6) NOT NULL,
  `active` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ci_guide`
--

CREATE TABLE IF NOT EXISTS `ci_guide` (
  `id` int(4) NOT NULL,
  `url` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `detail` text NOT NULL,
  `keyword` varchar(100) NOT NULL,
  `post_date` datetime NOT NULL,
  `counter` int(6) NOT NULL,
  `active` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ci_member`
--

CREATE TABLE IF NOT EXISTS `ci_member` (
  `user_id` int(5) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `name` varchar(30) NOT NULL,
  `image` varchar(30) DEFAULT NULL,
  `thanks` int(6) NOT NULL,
  `exp` int(6) NOT NULL DEFAULT '1',
  `signature` text,
  `regis_date` datetime NOT NULL,
  `up_date` datetime DEFAULT NULL,
  `active` tinyint(1) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ci_member`
--

INSERT INTO `ci_member` (`user_id`, `email`, `password`, `name`, `image`, `thanks`, `exp`, `signature`, `regis_date`, `up_date`, `active`) VALUES
(1, 'webmaster@xn--72cg7bb9m.com', 'm73eZCZMj1Z5xp03SK8HOc8pfwoR1iOAyFE8qcyZW2qhAGJEn6Z7kEEYofGKVVckJkNdwMnCVnc0eZLacAD22A==', 'พบสุข', NULL, 0, 1, 'true', '2016-03-19 23:55:39', '2016-03-20 16:43:26', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ci_message`
--

CREATE TABLE IF NOT EXISTS `ci_message` (
  `id` int(6) NOT NULL,
  `user_id` int(5) NOT NULL,
  `user_name` varchar(30) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `title` varchar(100) NOT NULL,
  `detail` text NOT NULL,
  `post_date` datetime NOT NULL,
  `user_read` tinyint(1) NOT NULL,
  `active` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ci_project`
--

CREATE TABLE IF NOT EXISTS `ci_project` (
  `id` int(3) NOT NULL,
  `group` int(2) NOT NULL,
  `title` varchar(50) NOT NULL,
  `detail` text,
  `name` varchar(30) NOT NULL,
  `add_date` datetime NOT NULL,
  `up_date` datetime DEFAULT NULL,
  `counter` int(6) NOT NULL,
  `active` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ci_board_group`
--
ALTER TABLE `ci_board_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ci_board_message`
--
ALTER TABLE `ci_board_message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ci_board_reply`
--
ALTER TABLE `ci_board_reply`
  ADD PRIMARY KEY (`id`),
  ADD KEY `topic_id` (`topic_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `ci_board_thanks`
--
ALTER TABLE `ci_board_thanks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ci_board_topic`
--
ALTER TABLE `ci_board_topic`
  ADD PRIMARY KEY (`id`),
  ADD KEY `group_id` (`group_id`);

--
-- Indexes for table `ci_downloads`
--
ALTER TABLE `ci_downloads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ci_guide`
--
ALTER TABLE `ci_guide`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ci_member`
--
ALTER TABLE `ci_member`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `ci_message`
--
ALTER TABLE `ci_message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ci_project`
--
ALTER TABLE `ci_project`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ci_board_group`
--
ALTER TABLE `ci_board_group`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ci_board_message`
--
ALTER TABLE `ci_board_message`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ci_board_reply`
--
ALTER TABLE `ci_board_reply`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ci_board_thanks`
--
ALTER TABLE `ci_board_thanks`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ci_board_topic`
--
ALTER TABLE `ci_board_topic`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ci_downloads`
--
ALTER TABLE `ci_downloads`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ci_guide`
--
ALTER TABLE `ci_guide`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ci_member`
--
ALTER TABLE `ci_member`
  MODIFY `user_id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ci_message`
--
ALTER TABLE `ci_message`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ci_project`
--
ALTER TABLE `ci_project`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
