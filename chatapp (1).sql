-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 25, 2021 at 08:40 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `chatapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE IF NOT EXISTS `messages` (
  `msg_id` int(10) NOT NULL AUTO_INCREMENT,
  `incoming_msg_id` varchar(20) NOT NULL,
  `outgoing_msg_id` varchar(20) NOT NULL,
  `msg` varchar(1000) NOT NULL,
  PRIMARY KEY (`msg_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=41 ;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`msg_id`, `incoming_msg_id`, `outgoing_msg_id`, `msg`) VALUES
(18, '1120775000', '935250404', 'hi rashida'),
(19, '935250404', '1120775000', 'hello mark'),
(20, '935250404', '1120775000', 'how are u?'),
(21, '1120775000', '935250404', 'hi'),
(22, '935250404', '1120775000', 'hello'),
(23, '1120775000', '935250404', 'hi'),
(24, '935250404', '1120775000', 'helloooo'),
(25, '1549722125', '1120775000', 'hi'),
(26, '1549722125', '1120775000', 'hi hawel'),
(27, '1120775000', '1549722125', 'hi rashida'),
(28, '1549722125', '1120775000', 'how are you?'),
(29, '1120775000', '1549722125', 'I am fine dear'),
(30, '1549722125', '1120775000', 'ok'),
(31, '1120775000', '1549722125', 'gtttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttt'),
(32, '1549722125', '1120775000', 'hello hawel'),
(33, '935250404', '1120775000', 'hi'),
(34, '935250404', '1120775000', 'hello'),
(35, '935250404', '1120775000', 'where are you?'),
(36, '935250404', '1120775000', 'hi'),
(37, '935250404', '1120775000', 'hi'),
(38, '935250404', '1120775000', 'hi'),
(39, '1549722125', '501605475', 'hi hawel'),
(40, '501605475', '1549722125', 'hi jules');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(10) NOT NULL AUTO_INCREMENT,
  `unique_id` int(10) NOT NULL,
  `fname` varchar(200) NOT NULL,
  `lname` varchar(200) NOT NULL,
  `email` varchar(500) NOT NULL,
  `password` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `status` varchar(50) NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `unique_id` (`unique_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `unique_id`, `fname`, `lname`, `email`, `password`, `image`, `status`) VALUES
(1, 1120775000, 'Rashida', 'Mahroof ', 'rashidamahroof@gmail.com', 'rashi123', '1637739152user1.png', 'Offline now'),
(15, 1549722125, 'hawel', 'doe', 'haweldoe@gmail.com', 'hawerg', '1637745986user3.jpg', 'Offline now'),
(16, 935250404, 'Mark', 'Winsten', 'mark@gmail.com', '123', '1637757178user1.jpg', 'Offline now'),
(19, 501605475, 'Jules', 'Trass', 'lal@gmaail.com', 'lal', '1637822168user2.jpg', 'Offline now');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
