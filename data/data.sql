-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 10, 2018 at 05:16 AM
-- Server version: 5.6.34-log
-- PHP Version: 7.1.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `week03`
--

-- --------------------------------------------------------

--
-- Table structure for table `albums`
--

CREATE TABLE `albums` (
  `id` int(10) NOT NULL,
  `title` varchar(225) NOT NULL,
  `artist` varchar(225) NOT NULL,
  `year` varchar(225) NOT NULL,
  `cover` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `albums`
--

INSERT INTO `albums` (`id`, `title`, `artist`, `year`, `cover`) VALUES
(1, 'Minutes to Midnight', 'Linkin Park', '2007', 'img/LP_Minutes_to_Midnight.jpg'),
(2, 'Carnival of Rust', 'Poets of the Fall', '2006', 'img/PotF_Carnival_of_Rust.jpg'),
(3, 'Trapt', 'Trapt', '2002', 'img/Trapt.jpg'),
(4, 'The Truth About Love', 'P!nk', '2012', 'img/P_The_Truth_About_Love.jpg'),
(5, 'We Love Katamari', 'Namco Sound Team', '2005', 'img/NST_We_Love_Katamari.jpg'),
(6, 'Alive', 'BIGBANG', '2012', 'img/BB_Alive.jpg'),
(7, 'Cowboy Bebop: Blue', 'Yoko Kanno', '2001', 'img/YK_Cowboy_Bebop-Blue.jpg'),
(8, 'Das Testament', 'E Nomine', '2002', 'img/E_Das_Testament.jpg'),
(9, 'Final Fantasy VII: Advent Children Original Soundtrack', 'Nobuo Uematsu', '2005', 'img/NU_FFVII-Advent_Children_OST.jpg'),
(10, 'Summer Wars Original Mostion Picture Soundtrack', 'Akihiko Matsumoto', '2016', 'img/AM_Summer_Wars_OST.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `albums`
--
ALTER TABLE `albums`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
