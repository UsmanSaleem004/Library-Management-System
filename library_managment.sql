-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 12, 2023 at 10:01 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library_managment`
--
CREATE DATABASE IF NOT EXISTS `library_managment` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `library_managment`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `email` varchar(25) NOT NULL,
  `pass` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `email`, `pass`) VALUES
(1, 'abc@gmail.com', '123'),
(2, 'talhachudhary@gmail.com', '1122');

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `id` int(11) NOT NULL,
  `bookpic` varchar(25) NOT NULL,
  `bookname` varchar(25) NOT NULL,
  `bookdetail` varchar(110) NOT NULL,
  `bookaudor` varchar(25) NOT NULL,
  `bookpub` varchar(25) NOT NULL,
  `branch` varchar(110) NOT NULL,
  `bookprice` varchar(25) NOT NULL,
  `bookquantity` varchar(25) NOT NULL,
  `bookava` int(11) NOT NULL,
  `bookrent` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`id`, `bookpic`, `bookname`, `bookdetail`, `bookaudor`, `bookpub`, `branch`, `bookprice`, `bookquantity`, `bookava`, `bookrent`) VALUES
(4, 'arrow.jpg', 'system programming', '1st edition', 'no idea', 'Suscipit', 'cs', '1120', '124', 34, 9),
(5, 'logo.png', 'math', 'Qui ex dolor ', 'mubeen', 'enw', 'electrical', '264', '157', 157, 0),
(6, 'arrow.png', 'web programming', 'web base', 'ahmad', 'tab', 'cs', '76', '3', 0, 3),
(7, '1logo.jpg', 'phy', 'mathhhh', 'ali', 'ans', 'BSCS', '1236', '32', 32, 0);

-- --------------------------------------------------------

--
-- Table structure for table `issuebook`
--

CREATE TABLE `issuebook` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `issuename` varchar(25) NOT NULL,
  `issuebook` varchar(25) NOT NULL,
  `issuetype` varchar(25) NOT NULL,
  `issuedays` int(11) NOT NULL,
  `issuedate` varchar(25) NOT NULL,
  `issuereturn` varchar(25) NOT NULL,
  `fine` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `issuebook`
--

INSERT INTO `issuebook` (`id`, `userid`, `issuename`, `issuebook`, `issuetype`, `issuedays`, `issuedate`, `issuereturn`, `fine`) VALUES
(2, 1, 'salman', 'Rich d', 'student', 3, '30/08/2022', '02/10/2022', 0),
(3, 2, 'talha', 'Scott ', 'teacher', 4, '30/07/2022', '03/08/2022', 0),
(10, 1, 'salman', 'sc', 'student', 7, '01/04/2021', '08/04/2021', 0),
(11, 1, 'salman', 'zain', 'student', 7, '01/04/2021', '08/04/2021', 0),
(12, 5, 'salmanali', 'talha', 'teacher', 21, '23/12/2022', '13/01/2023', 0),
(13, 2, 'reb', 'ans', 'teacher', 5, '23/12/2022', '2/01/2023', 0),
(14, 5, 'm_talha', 'web programming', 'teacher', 2, '11/01/2023', '13/01/2023', 0);

-- --------------------------------------------------------

--
-- Table structure for table `requestbook`
--

CREATE TABLE `requestbook` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `bookid` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `usertype` varchar(25) NOT NULL,
  `bookname` varchar(25) NOT NULL,
  `issuedays` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `requestbook`
--

INSERT INTO `requestbook` (`id`, `userid`, `bookid`, `username`, `usertype`, `bookname`, `issuedays`) VALUES
(8, 5, 5, 'm_talha', 'teacher', 'math', '21'),
(9, 5, 6, 'm_talha', 'teacher', 'web programming', '21'),
(10, 2, 4, 'ans_awan', 'teacher', 'system programming', '21'),
(11, 2, 5, 'ans_awan', 'teacher', 'math', '21'),
(12, 1, 5, 'zain', 'student', 'math', '7'),
(13, 1, 6, 'zain', 'student', 'web programming', '7');

-- --------------------------------------------------------

--
-- Table structure for table `userdata`
--

CREATE TABLE `userdata` (
  `id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `email` varchar(25) NOT NULL,
  `pass` varchar(25) NOT NULL,
  `type` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `userdata`
--

INSERT INTO `userdata` (`id`, `name`, `email`, `pass`, `type`) VALUES
(1, 'zain', 'zain@gmail.com', '1234', 'student'),
(2, 'ans_awan', 'ans@gmail.com', '12ab', 'teacher'),
(5, 'm_talha', '1234@gmail.com', '123', 'teacher'),
(6, 'abdullaha', 'ab@gmail.com', 'ab', 'student');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `issuebook`
--
ALTER TABLE `issuebook`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pk_fk` (`userid`);

--
-- Indexes for table `requestbook`
--
ALTER TABLE `requestbook`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pk_fk_book` (`bookid`),
  ADD KEY `pk_fk_users` (`userid`);

--
-- Indexes for table `userdata`
--
ALTER TABLE `userdata`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `issuebook`
--
ALTER TABLE `issuebook`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `requestbook`
--
ALTER TABLE `requestbook`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `userdata`
--
ALTER TABLE `userdata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `issuebook`
--
ALTER TABLE `issuebook`
  ADD CONSTRAINT `pk_fk` FOREIGN KEY (`userid`) REFERENCES `userdata` (`id`);

--
-- Constraints for table `requestbook`
--
ALTER TABLE `requestbook`
  ADD CONSTRAINT `pk_fk_users` FOREIGN KEY (`userid`) REFERENCES `userdata` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
