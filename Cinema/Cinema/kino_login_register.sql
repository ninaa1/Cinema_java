-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 22, 2020 at 07:25 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.2.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kino_login_register`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_details`
--

CREATE TABLE `admin_details` (
  `id` int(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_details`
--

INSERT INTO `admin_details` (`id`, `name`, `username`, `password`) VALUES
(1, 'admin', 'admin', '1234'),
(2, 'admin1', 'admin1', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(200) NOT NULL,
  `Halls` varchar(50) NOT NULL,
  `from date` date NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`id`, `title`, `description`, `Halls`, `from date`, `time`) VALUES
(1, 'Film5', 'Horor', 'Dvorana 3', '2020-09-16', '18:00:00'),
(2, 'Film2', 'Triler', 'Dvorana 4', '2020-08-26', '23:00:00'),
(6, 'Titanic', 'drama', 'Dvorana 2', '2020-09-05', '21:00:00'),
(9, 'Film', 'film', 'Dvorana 1', '2020-09-30', '21:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE `reservation` (
  `id` int(11) NOT NULL,
  `hall` varchar(225) NOT NULL,
  `seats` int(11) NOT NULL,
  `user` varchar(225) NOT NULL,
  `movie` varchar(100) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reservation`
--

INSERT INTO `reservation` (`id`, `hall`, `seats`, `user`, `movie`, `date`) VALUES
(17, '1', 1, 'Nina1', 'Film1', '2020-08-20'),
(18, '1', 3, 'Nina1', 'Film1', '2020-08-20'),
(28, '1', 1, 'Nina1', 'Film1', '2020-09-30');

-- --------------------------------------------------------

--
-- Table structure for table `seat`
--

CREATE TABLE `seat` (
  `id` int(11) NOT NULL,
  `hall` int(22) NOT NULL,
  `seat` int(11) NOT NULL,
  `date` date NOT NULL,
  `status` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `seat`
--

INSERT INTO `seat` (`id`, `hall`, `seat`, `date`, `status`) VALUES
(64, 1, 1, '2020-08-20', 'Rezervirano'),
(65, 1, 2, '2020-08-20', 'Slobodno'),
(66, 1, 3, '2020-08-20', 'Rezervirano'),
(67, 1, 4, '2020-08-20', 'Slobodno'),
(68, 1, 5, '2020-08-20', 'Slobodno'),
(69, 1, 6, '2020-08-20', 'Slobodno'),
(70, 1, 7, '2020-08-20', 'Slobodno'),
(71, 1, 8, '2020-08-20', 'Slobodno'),
(72, 1, 9, '2020-08-20', 'Slobodno'),
(73, 1, 10, '2020-08-20', 'Slobodno'),
(74, 1, 11, '2020-08-20', 'Slobodno'),
(75, 1, 12, '2020-08-20', 'Slobodno'),
(76, 1, 13, '2020-08-20', 'Slobodno'),
(77, 1, 14, '2020-08-20', 'Slobodno'),
(78, 1, 15, '2020-08-20', 'Slobodno'),
(79, 1, 16, '2020-08-20', 'Slobodno'),
(80, 1, 17, '2020-08-20', 'Slobodno'),
(81, 1, 18, '2020-08-20', 'Slobodno'),
(82, 1, 19, '2020-08-20', 'Slobodno'),
(83, 1, 20, '2020-08-20', 'Slobodno'),
(84, 1, 21, '2020-08-20', 'Slobodno'),
(85, 1, 22, '2020-08-20', 'Slobodno'),
(86, 1, 23, '2020-08-20', 'Slobodno'),
(87, 1, 24, '2020-08-20', 'Slobodno'),
(88, 1, 25, '2020-08-20', 'Slobodno'),
(89, 2, 1, '2020-08-26', 'Rezervirano'),
(90, 2, 2, '2020-08-26', 'Slobodno'),
(91, 2, 3, '2020-08-26', 'Slobodno'),
(92, 2, 4, '2020-08-26', 'Slobodno'),
(93, 2, 5, '2020-08-26', 'Slobodno'),
(94, 2, 6, '2020-08-26', 'Slobodno'),
(95, 2, 7, '2020-08-26', 'Slobodno'),
(96, 2, 8, '2020-08-26', 'Slobodno'),
(97, 2, 9, '2020-08-26', 'Slobodno'),
(98, 2, 10, '2020-08-26', 'Slobodno'),
(99, 2, 11, '2020-08-26', 'Slobodno'),
(100, 2, 12, '2020-08-26', 'Slobodno'),
(101, 2, 13, '2020-08-26', 'Slobodno'),
(102, 2, 14, '2020-08-26', 'Slobodno'),
(103, 2, 15, '2020-08-26', 'Slobodno'),
(104, 2, 16, '2020-08-26', 'Slobodno'),
(105, 2, 17, '2020-08-26', 'Slobodno'),
(106, 2, 18, '2020-08-26', 'Slobodno'),
(107, 2, 19, '2020-08-26', 'Slobodno'),
(108, 2, 20, '2020-08-26', 'Slobodno'),
(109, 2, 21, '2020-08-26', 'Slobodno'),
(110, 2, 22, '2020-08-26', 'Slobodno'),
(111, 2, 23, '2020-08-26', 'Slobodno'),
(112, 2, 24, '2020-08-26', 'Slobodno'),
(113, 2, 25, '2020-08-26', 'Slobodno'),
(114, 3, 1, '2020-09-05', 'Rezervirano'),
(115, 3, 2, '2020-09-05', 'Slobodno'),
(116, 3, 3, '2020-09-05', 'Slobodno'),
(117, 3, 4, '2020-09-05', 'Slobodno'),
(118, 3, 5, '2020-09-05', 'Slobodno'),
(119, 3, 6, '2020-09-05', 'Slobodno'),
(120, 3, 7, '2020-09-05', 'Slobodno'),
(121, 3, 8, '2020-09-05', 'Slobodno'),
(122, 3, 9, '2020-09-05', 'Slobodno'),
(123, 3, 10, '2020-09-05', 'Slobodno'),
(124, 3, 11, '2020-09-05', 'Slobodno'),
(125, 3, 12, '2020-09-05', 'Slobodno'),
(126, 3, 13, '2020-09-05', 'Slobodno'),
(127, 3, 14, '2020-09-05', 'Slobodno'),
(128, 3, 15, '2020-09-05', 'Slobodno'),
(129, 3, 16, '2020-09-05', 'Slobodno'),
(130, 3, 17, '2020-09-05', 'Slobodno'),
(131, 3, 18, '2020-09-05', 'Slobodno'),
(132, 3, 19, '2020-09-05', 'Slobodno'),
(133, 3, 20, '2020-09-05', 'Slobodno'),
(134, 3, 21, '2020-09-05', 'Slobodno'),
(135, 3, 22, '2020-09-05', 'Slobodno'),
(136, 3, 23, '2020-09-05', 'Slobodno'),
(137, 3, 24, '2020-09-05', 'Slobodno'),
(138, 3, 25, '2020-09-05', 'Slobodno'),
(139, 4, 1, '2020-09-16', 'Rezervirano'),
(140, 4, 2, '2020-09-16', 'Slobodno'),
(141, 4, 3, '2020-09-16', 'Slobodno'),
(142, 4, 4, '2020-09-16', 'Slobodno'),
(143, 4, 5, '2020-09-16', 'Slobodno'),
(144, 4, 6, '2020-09-16', 'Slobodno'),
(145, 4, 7, '2020-09-16', 'Slobodno'),
(146, 4, 8, '2020-09-16', 'Slobodno'),
(147, 4, 9, '2020-09-16', 'Slobodno'),
(148, 4, 10, '2020-09-16', 'Slobodno'),
(149, 4, 11, '2020-09-16', 'Slobodno'),
(150, 4, 12, '2020-09-16', 'Slobodno'),
(151, 4, 13, '2020-09-16', 'Slobodno'),
(152, 4, 14, '2020-09-16', 'Slobodno'),
(153, 4, 15, '2020-09-16', 'Slobodno'),
(154, 4, 16, '2020-09-16', 'Slobodno'),
(155, 4, 17, '2020-09-16', 'Slobodno'),
(156, 4, 18, '2020-09-16', 'Slobodno'),
(157, 4, 19, '2020-09-16', 'Slobodno'),
(158, 4, 20, '2020-09-16', 'Slobodno'),
(159, 4, 21, '2020-09-16', 'Slobodno'),
(160, 4, 22, '2020-09-16', 'Slobodno'),
(161, 4, 23, '2020-09-16', 'Slobodno'),
(162, 4, 24, '2020-09-16', 'Slobodno'),
(163, 4, 25, '2020-09-16', 'Slobodno'),
(164, 1, 1, '2020-09-30', 'Rezervirano'),
(165, 1, 2, '2020-09-30', 'Slobodno'),
(166, 1, 3, '2020-09-30', 'Slobodno'),
(167, 1, 4, '2020-09-30', 'Slobodno'),
(168, 1, 5, '2020-09-30', 'Slobodno'),
(169, 1, 6, '2020-09-30', 'Slobodno'),
(170, 1, 7, '2020-09-30', 'Slobodno'),
(171, 1, 8, '2020-09-30', 'Slobodno'),
(172, 1, 9, '2020-09-30', 'Slobodno'),
(173, 1, 10, '2020-09-30', 'Slobodno'),
(174, 1, 11, '2020-09-30', 'Slobodno'),
(175, 1, 12, '2020-09-30', 'Slobodno'),
(176, 1, 13, '2020-09-30', 'Slobodno'),
(177, 1, 14, '2020-09-30', 'Slobodno'),
(178, 1, 15, '2020-09-30', 'Slobodno'),
(179, 1, 16, '2020-09-30', 'Slobodno'),
(180, 1, 17, '2020-09-30', 'Slobodno'),
(181, 1, 18, '2020-09-30', 'Slobodno'),
(182, 1, 19, '2020-09-30', 'Slobodno'),
(183, 1, 20, '2020-09-30', 'Slobodno'),
(184, 1, 21, '2020-09-30', 'Slobodno'),
(185, 1, 22, '2020-09-30', 'Slobodno'),
(186, 1, 23, '2020-09-30', 'Slobodno'),
(187, 1, 24, '2020-09-30', 'Slobodno'),
(188, 1, 25, '2020-09-30', 'Slobodno');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `u_id` int(11) NOT NULL,
  `u_fname` varchar(50) CHARACTER SET utf8 NOT NULL,
  `u_lname` varchar(50) CHARACTER SET utf8 NOT NULL,
  `u_name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `u_pass` varchar(20) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`u_id`, `u_fname`, `u_lname`, `u_name`, `u_pass`) VALUES
(1, 'nxhajd', 'alkdl', 'tdfga', '123456'),
(2, 'test', 'test1', 'test12', '12345678'),
(6, 'Nina', 'Nina12', 'Nina1', 'nina12'),
(8, 'ana', 'anic', 'anaa1', '1111');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_details`
--
ALTER TABLE `admin_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seat`
--
ALTER TABLE `seat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`u_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_details`
--
ALTER TABLE `admin_details`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `seat`
--
ALTER TABLE `seat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=189;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `u_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
