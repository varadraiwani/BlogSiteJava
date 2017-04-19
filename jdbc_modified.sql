-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 19, 2017 at 05:56 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `jdbc`
--

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE IF NOT EXISTS `blog` (
  `topic` varchar(30) NOT NULL,
  `title` varchar(50) NOT NULL,
  `author` varchar(30) NOT NULL,
  `date` date NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`topic`, `title`, `author`, `date`, `content`) VALUES
('politics', 'My first politics blog', 'qwerty', '2017-04-17', 'Politics has some major issues related to it today. The conditions in Syria, ties between USA and Russia, all present a major issue to us. It has become necessary to think about and take actions against what has been happenning around the world.'),
('social issues', 'society', 'varad', '2017-04-08', 'Society has become poluted by human minds. Minds that are selfish and can go o any extent to meet their needs and desires. We are no longer what evolution expected us to be. It could be time for a new, fitter species to replace us at the peak of the biological pyramid.');

-- --------------------------------------------------------

--
-- Table structure for table `emp`
--

CREATE TABLE IF NOT EXISTS `emp` (
  `Name` varchar(20) NOT NULL,
  `password` varchar(30) NOT NULL,
  `sex` varchar(6) NOT NULL,
  `dob` date NOT NULL,
  `email` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emp`
--

INSERT INTO `emp` (`Name`, `password`, `sex`, `dob`, `email`) VALUES
('varad', 'varad', 'male', '1996-04-08', 'varad.raiwani@gmail.com'),
('qwerty', 'qwerty', 'male', '1997-04-08', 'qwerty@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `friends`
--

CREATE TABLE IF NOT EXISTS `friends` (
  `friend1` varchar(30) NOT NULL,
  `friend2` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE IF NOT EXISTS `messages` (
  `toPerson` varchar(30) NOT NULL,
  `from` varchar(30) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`toPerson`, `from`, `message`) VALUES
('varad', 'qwerty', 'hello... i like your blogs'),
('qwerty', 'varad', 'thanx');

-- --------------------------------------------------------

--
-- Table structure for table `requests`
--

CREATE TABLE IF NOT EXISTS `requests` (
  `from` varchar(30) NOT NULL,
  `toperson` varchar(30) NOT NULL,
  `value` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `requests`
--

INSERT INTO `requests` (`from`, `toperson`, `value`) VALUES
('varad', 'varad', NULL);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
