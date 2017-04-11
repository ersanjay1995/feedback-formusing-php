-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 09, 2017 at 10:58 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `feedback`
--

-- --------------------------------------------------------

--
-- Table structure for table `feedback_result`
--

CREATE TABLE IF NOT EXISTS `feedback_result` (
`fr_id` int(11) NOT NULL,
  `stud_id` varchar(50) NOT NULL,
  `q_id` int(11) NOT NULL,
  `ans` varchar(500) NOT NULL,
  `anst` varchar(500) NOT NULL,
  `tsmp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback_result`
--

INSERT INTO `feedback_result` (`fr_id`, `stud_id`, `q_id`, `ans`, `anst`, `tsmp`) VALUES
(51, '', 3, 'sd', '', '2017-04-09 20:24:53'),
(52, '', 4, 'poor', '', '2017-04-09 20:24:53'),
(53, '', 5, '', 'poor', '2017-04-09 20:24:53');

-- --------------------------------------------------------

--
-- Table structure for table `questionmaster`
--

CREATE TABLE IF NOT EXISTS `questionmaster` (
`qid` int(11) NOT NULL,
  `question` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questionmaster`
--

INSERT INTO `questionmaster` (`qid`, `question`, `type`) VALUES
(1, 'how much rating??', 'radio'),
(2, 'write your suggetion??', 'text'),
(3, 'faculty review ', 'text'),
(4, 'libarary functiolity', 'radio'),
(5, 'text and radio', 'both');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE IF NOT EXISTS `student` (
`id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `eno` varchar(50) NOT NULL,
  `course` varchar(50) NOT NULL,
  `fecname` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `name`, `email`, `eno`, `course`, `fecname`) VALUES
(2, 'sanjay', 'sanjaymakwana45@gmail.com', '140283107017', 'ce', 'vbv'),
(3, 'sanjay', 'sanjaymakwana45@gmail.com', '140283107017', 'cs', 'vbv'),
(4, 'sanjay', 'sanjaymakwana45@gmail.com', '140283107017', 'cs', 'fff'),
(5, 'sanjay', 'sanjaymakwana45@gmail.com', '140283107017', 'cs', 'fff'),
(6, '', '', '', '', ''),
(7, '', '', '', '', ''),
(8, '', '', '', '', ''),
(9, '', '', '', '', ''),
(10, '', '', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `feedback_result`
--
ALTER TABLE `feedback_result`
 ADD PRIMARY KEY (`fr_id`);

--
-- Indexes for table `questionmaster`
--
ALTER TABLE `questionmaster`
 ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `feedback_result`
--
ALTER TABLE `feedback_result`
MODIFY `fr_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=54;
--
-- AUTO_INCREMENT for table `questionmaster`
--
ALTER TABLE `questionmaster`
MODIFY `qid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
