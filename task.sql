-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 05, 2020 at 07:28 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `task`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(64) NOT NULL,
  `phonenum` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `phonenum`, `address`) VALUES
(1, 'hassan', 'hassan@gmail.com', '123456', '01095350454', 'nasr city'),
(7, 'yousif', 'yousif@gmail.com', '123456', '0123456789', 'cairo'),
(8, 'asd', 'asd@gmail.com', 'asdasdasd', '0123456789', 'asd'),
(9, 'ahmed', 'ahmed@gmail.com', '123456', '01022556633', 'menouf'),
(10, 'omar', 'omar@gmail.com', '123456', '01122334455', 'benha'),
(11, 'mohamed', 'mohamed@gmail.com', '12345', '01122334455', 'aswan'),
(12, 'mahmoud', 'mahmoud@gmail.com', '1234', '123456789', 'suiz'),
(13, 'yousif1', 'yousif1@gmail.com', '12345', '123456789', 'tanta'),
(14, '', '', '', '', ''),
(15, 'ahmed', 'lkl@kjjkl.com', 'lkjkl', 'jlkjlk', 'kjkljkjkll'),
(16, 'jkljljl', 'kjkljlk', 'jklj', 'lk', 'jkl'),
(17, 'jkljljl', 'kjkljlk', 'jklj', 'lk', 'jkl'),
(18, 'llkklklkl;', 'klkl;kl;', 'kl;k', 'lk', ';l'),
(19, 'llkklklkl;', 'klkl;kl;', 'kl;k', 'lk', ';l'),
(20, 'llkklklkl;', 'klkl;kl;', 'kl;k', 'lk', ';l'),
(21, 'jkljljl', 'kjkljlk', 'jklj', 'lk', 'jkl'),
(22, 'jkljljl', 'kjkljlk', 'jklj', 'lk', 'jkl'),
(23, 'jkljljl', 'kjkljlk', 'jklj', 'lk', 'jkl'),
(24, 'ahmedkl', 'ljlkjlk', 'kl', 'jl', 'kj'),
(25, 'lkjlkjkl', 'jkljkljkljkljkl', 'jkljljklj', 'lkjkl', 'jkl'),
(26, 'jlkjklkjl', 'jkljlkjkljlkj', 'kljkljlkjkljkl', 'jkljkljljkljkl', 'jlkjlkjl'),
(27, 'wewe', 'ewewe', 'ewewe', 'ewew', 'ewewe'),
(28, 'asdsd', 'sdsad', 'dsad', 'sdsad', 'sadsd'),
(29, 'sdsad', 'sdasd', 'dsdads', 'dsad', 'dsad'),
(30, 'asdsad', 'dsadsad', 'asdsad', 'asdsad', 'sadsad'),
(31, 'sadsad', 'sdadsa', 'sadsad', 'sadsad', 'sdasds'),
(32, 'sadsad', 'sadsad', 'dsadsad', 'sadsad', 'sadsad'),
(33, 'sdsadsadsad', 'sdsad', 'sadsad', 'sadsad', 'dsadsad'),
(34, 'sadsda', 'sdasdsa', 'dsadsad', 'sdsadsad', 'dsadsad'),
(35, 'dfdsfdsf', 'dfdsf', 'dfdsfds', 'fdsfdsf', 'dsfdsf');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
