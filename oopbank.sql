-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 17, 2021 at 08:30 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `oopbank`
--

-- --------------------------------------------------------

--
-- Table structure for table `ac`
--

CREATE TABLE `ac` (
  `id` int(5) UNSIGNED ZEROFILL NOT NULL,
  `name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ac`
--

INSERT INTO `ac` (`id`, `name`) VALUES
(00001, 'Shikhar');

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `Account_number` varchar(15) DEFAULT NULL,
  `Branch_name` varchar(30) DEFAULT NULL,
  `Balance` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`Account_number`, `Branch_name`, `Balance`) VALUES
('AC-00001', 'Jublee Road', 1500),
('AC-00002', 'Karwan Bazar', 1000),
('AC-00003', 'Central Road', 500),
('AC-00004', 'Progoti Shoroni', 500),
('AC-00005', 'Progoti Shoroni', 500);

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `Email` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Email`, `Password`) VALUES
('asifsamy@gmail.com', '12345'),
('shikhar34@gmail.com', '123');

-- --------------------------------------------------------

--
-- Table structure for table `borrower`
--

CREATE TABLE `borrower` (
  `Customer_name` varchar(50) DEFAULT NULL,
  `Loan_number` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `Branch_name` varchar(30) DEFAULT NULL,
  `Branch_city` varchar(30) DEFAULT NULL,
  `Assets` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`Branch_name`, `Branch_city`, `Assets`) VALUES
('Gulshan', 'Dhaka', 10000000),
('Progoti Shoroni', 'Dhaka', 10000000),
('Karwan Bazar', 'Dhaka', 10000000),
('Central Road', 'Rangpur', 10000000),
('Agrabad', 'Chittagong', 10000000),
('Jublee Road', 'Chittagong', 10000000);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `Customer_name` varchar(30) DEFAULT NULL,
  `Customer_street` varchar(30) DEFAULT NULL,
  `Customer_city` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`Customer_name`, `Customer_street`, `Customer_city`) VALUES
('Samy', 'Jublee Road', 'Chittagong'),
('Asif', 'Beily Road', 'Dhaka'),
('Sanjida', 'Pakapara', 'Rangpur'),
('Bokkor', 'DIT Road', 'Dhaka'),
('Shohag', 'DIT Road', 'Dhaka'),
('vdszx', 'vzxzxzxzxzx', 'vzdx');

-- --------------------------------------------------------

--
-- Table structure for table `depositor`
--

CREATE TABLE `depositor` (
  `Customer_name` varchar(30) DEFAULT NULL,
  `Account_number` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `depositor`
--

INSERT INTO `depositor` (`Customer_name`, `Account_number`) VALUES
('Samy', 'AC-00001'),
('Asif', 'AC-00002'),
('Sanjida', 'AC-00003'),
('Bokkor', 'AC-00004'),
('Shohag', 'AC-00005');

-- --------------------------------------------------------

--
-- Table structure for table `lc`
--

CREATE TABLE `lc` (
  `id` int(5) UNSIGNED ZEROFILL NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `loan`
--

CREATE TABLE `loan` (
  `Loan_number` varchar(15) DEFAULT NULL,
  `Branch_name` varchar(30) DEFAULT NULL,
  `Amount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `sno` int(3) NOT NULL,
  `sender` text NOT NULL,
  `receiver` text NOT NULL,
  `balance` int(8) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`sno`, `sender`, `receiver`, `balance`, `datetime`) VALUES
(1, 'Shikhar Singhal', 'Kiara', 100, '2021-06-02 08:48:18'),
(7, 'Varun', 'Shikhar Singhal', 1000, '2021-06-08 22:53:17'),
(8, 'mukul', 'Shikhar Singhal', 4000, '2021-06-11 10:39:26'),
(9, 'Sparks bank', 'Shikhar Singhal', 3000, '2021-06-13 10:46:44'),
(10, 'Sparks bank', 'Shikhar Singhal', 7000, '2021-06-13 11:05:21'),
(11, 'Sparks foundation', 'Shikhar Singhal', 1000, '2021-06-14 00:38:23'),
(12, 'Sparks Foundation', 'Shikhar Singhal', 10000, '2021-06-14 00:47:12'),
(13, 'Sparks', 'Shikhar Singhal', 2000, '2021-06-14 07:10:25'),
(14, 'Rohit Agarwal', 'Sparks foundation', 100, '2021-06-14 07:15:19'),
(15, 'Rohan Singh', 'Rohit Agarwal', 1000, '2021-06-14 07:18:12');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `Name` varchar(30) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`Name`, `Email`, `Password`) VALUES
('Asif', 'asifsamy@gmail.com', '12345'),
('Vatsal', 'heyvats@gmail.com', '234'),
('Samy', 'samy_ewu@yahoo.com', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(3) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `balance` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `balance`) VALUES
(11, 'Shikhar Singhal', 'shikhar34@gmail.com', 26900),
(19, 'Rohit Agarwal', 'singhalshikhar027@gmail.com', 7000),
(24, 'Shikhar Singhal', 'xyz@gmail.com', 400000),
(25, 'Sparks bank', 'xyz@gmail.com', 2990000),
(26, 'Sparks foundation', 'sparks@gmail.com', 299100),
(27, 'Sparks Foundation', 'sparks32@gmail.com', 22000),
(28, 'Sparks', 'spark@gmail.com', 1000),
(29, 'Rohit Agarwal', '123@gmail.com', 100),
(30, 'Rohan Singh', 'rohan32@gmail.com', 39000),
(31, 'Shikhar Singhal', 'shikhar34@gmail.com', 20000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ac`
--
ALTER TABLE `ac`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD UNIQUE KEY `Email` (`Email`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD UNIQUE KEY `Email` (`Email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ac`
--
ALTER TABLE `ac`
  MODIFY `id` int(5) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `sno` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
