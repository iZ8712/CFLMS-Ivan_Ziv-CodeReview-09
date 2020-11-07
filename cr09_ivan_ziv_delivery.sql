-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 07, 2020 at 08:42 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cr09_ivan_ziv_delivery`
--
CREATE DATABASE IF NOT EXISTS `cr09_ivan_ziv_delivery` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `cr09_ivan_ziv_delivery`;

-- --------------------------------------------------------

--
-- Table structure for table `collecting_station`
--

CREATE TABLE `collecting_station` (
  `CS_ID` int(11) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Address` varchar(50) DEFAULT NULL,
  `Post_Offices` varchar(50) DEFAULT NULL,
  `District` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `collecting_station`
--

INSERT INTO `collecting_station` (`CS_ID`, `Name`, `Address`, `Post_Offices`, `District`) VALUES
(189, 'S03', 'Lionstreet 78', '4', 3453),
(345, 'S01', 'Tigerstreet 123', '4', 3453),
(678, 'S02', 'Pumastreet 57', '4', 3453);

-- --------------------------------------------------------

--
-- Table structure for table `coustomer`
--

CREATE TABLE `coustomer` (
  `Coustomer_ID` int(11) NOT NULL,
  `First_Name` varchar(50) DEFAULT NULL,
  `Last_Name` varchar(50) DEFAULT NULL,
  `Stairs` varchar(50) DEFAULT NULL,
  `Door` varchar(50) DEFAULT NULL,
  `Address` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `coustomer`
--

INSERT INTO `coustomer` (`Coustomer_ID`, `First_Name`, `Last_Name`, `Stairs`, `Door`, `Address`) VALUES
(11, 'George', 'Raygen', '5', '12', 1564),
(22, 'Peter', 'Peterson', '1', '9', 1034),
(33, 'Laura', 'Michael', '8', '125', 1876);

-- --------------------------------------------------------

--
-- Table structure for table `district`
--

CREATE TABLE `district` (
  `District_ID` int(11) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Address` varchar(50) DEFAULT NULL,
  `City` varchar(50) DEFAULT NULL,
  `Collecting_Stations` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `district`
--

INSERT INTO `district` (`District_ID`, `Name`, `Address`, `City`, `Collecting_Stations`) VALUES
(2134, 'D11', 'Somewhere 21', 'Vienna', '4'),
(3453, 'D12', 'Anywhere 22', 'Vienna', '6'),
(6786, 'D09', 'Overthere 23', 'Vienna', '2');

-- --------------------------------------------------------

--
-- Table structure for table `drop_of_point`
--

CREATE TABLE `drop_of_point` (
  `ID` int(11) NOT NULL,
  `Adresse` varchar(50) DEFAULT NULL,
  `Employee` int(11) DEFAULT NULL,
  `Post_Office` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `drop_of_point`
--

INSERT INTO `drop_of_point` (`ID`, `Adresse`, `Employee`, `Post_Office`) VALUES
(1, 'Silverstreet 45', 890123, 999),
(2, 'Goldstreet 1', 890123, 999),
(3, 'Copperstreet 77', 123456, 999),
(4, 'Zincstreet 87', 345678, 999),
(5, 'Ironstreet', 678901, 999),
(6, 'Titanstreet 12', 789012, 999);

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `emp_ID` int(11) NOT NULL,
  `First_Name` varchar(50) DEFAULT NULL,
  `Last_Name` varchar(50) DEFAULT NULL,
  `Hire_Date` date DEFAULT NULL,
  `Position` enum('Postman','Counterclerk') DEFAULT NULL,
  `Salary` varchar(50) DEFAULT NULL,
  `Post_Office` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`emp_ID`, `First_Name`, `Last_Name`, `Hire_Date`, `Position`, `Salary`, `Post_Office`) VALUES
(123456, 'John', 'Doe', '2011-05-05', 'Postman', '70000', 999),
(234567, 'John', 'Wick', '2013-01-14', 'Counterclerk', '90000', 999),
(345678, 'Martha', 'Kent', '2017-08-11', 'Postman', '70000', 999),
(678901, 'Mark', 'Jackson', '2001-10-12', 'Counterclerk', '80000', 999),
(789012, 'Eric', 'Smith', '2008-04-14', 'Postman', '60000', 999),
(890123, 'Jane', 'Doe', '2020-02-05', 'Postman', '60000', 999);

-- --------------------------------------------------------

--
-- Table structure for table `jurisdiction`
--

CREATE TABLE `jurisdiction` (
  `JUS_ID` int(11) NOT NULL,
  `Address` varchar(50) DEFAULT NULL,
  `Post_Office` int(11) DEFAULT NULL,
  `Employee` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jurisdiction`
--

INSERT INTO `jurisdiction` (`JUS_ID`, `Address`, `Post_Office`, `Employee`) VALUES
(1034, 'Bluestreet 67', 999, 345678),
(1278, 'Whitestreet 125', 999, 789012),
(1564, 'Greenstreet 1', 999, 123456),
(1598, 'Pinkstreet', 999, 789012),
(1876, 'Redstreet 23', 999, 123456),
(1923, 'Blackstreet 82', 999, 345678);

-- --------------------------------------------------------

--
-- Table structure for table `mail`
--

CREATE TABLE `mail` (
  `M_ID` int(11) NOT NULL,
  `DATE_IN` date DEFAULT NULL,
  `Sender_Name` varchar(50) DEFAULT NULL,
  `Sender_Addresse` varchar(50) DEFAULT NULL,
  `Sender_City` varchar(50) DEFAULT NULL,
  `Receiver_Name` varchar(50) DEFAULT NULL,
  `Receiver_Addresse` varchar(50) DEFAULT NULL,
  `Receiver_City` varchar(50) DEFAULT NULL,
  `Weight` enum('100','200','300') DEFAULT NULL,
  `Shipping` enum('Plane','Ship','Normal','Priority') DEFAULT NULL,
  `Employee` int(11) DEFAULT NULL,
  `Post_Office` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mail`
--

INSERT INTO `mail` (`M_ID`, `DATE_IN`, `Sender_Name`, `Sender_Addresse`, `Sender_City`, `Receiver_Name`, `Receiver_Addresse`, `Receiver_City`, `Weight`, `Shipping`, `Employee`, `Post_Office`) VALUES
(4444, '2020-08-05', 'Mr. Pitt', 'Ironstreet', 'Vienna', 'Mrs. Hanks', 'Browstreet 344', 'New York', '100', 'Ship', 234567, 999),
(5555, '2020-07-15', 'Mrs Porsche', 'Copperstreet 3', 'Vienna', 'Mrs Ford', 'Greystreet 56', 'Rom', '200', 'Normal', 678901, 999),
(6666, '2020-08-11', 'Mr Messi', 'Goldstreet 2', 'Vienna', 'Mrs Ronaldo', 'Turquoisestreet 567', 'Rio', '300', 'Plane', 234567, 999);

-- --------------------------------------------------------

--
-- Table structure for table `packet`
--

CREATE TABLE `packet` (
  `P_ID` int(11) NOT NULL,
  `DATE_IN` date DEFAULT NULL,
  `Sender_Name` varchar(50) DEFAULT NULL,
  `Sender_Addresse` varchar(50) DEFAULT NULL,
  `Sender_City` varchar(50) DEFAULT NULL,
  `Receiver_Name` varchar(50) DEFAULT NULL,
  `Receiver_Addresse` varchar(50) DEFAULT NULL,
  `Receiver_City` varchar(50) DEFAULT NULL,
  `Weight` enum('400','500','1000') DEFAULT NULL,
  `Shipping` enum('Plane','Ship','Normal','Priority') DEFAULT NULL,
  `Employee` int(11) DEFAULT NULL,
  `Post_Office` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `packet`
--

INSERT INTO `packet` (`P_ID`, `DATE_IN`, `Sender_Name`, `Sender_Addresse`, `Sender_City`, `Receiver_Name`, `Receiver_Addresse`, `Receiver_City`, `Weight`, `Shipping`, `Employee`, `Post_Office`) VALUES
(111, '2020-11-02', 'Mr.Smith', 'Pinkstreet 12', 'Vienna', 'Mrs Jackson', 'Yellowstreet 23', 'Graz', '400', 'Plane', 678901, 999),
(222, '2020-10-06', 'Mrs Wick', 'Bluestreet 34', 'Vienna', 'Mr Johnson', 'Violetstreet 32', 'Salzburg', '500', 'Ship', 678901, 999),
(333, '2020-09-09', 'Mr Peterson', 'Greenstreet 234', 'Vienna', 'Mr Anderson', 'Orangestreet 99', 'Bregenz', '1000', 'Priority', 234567, 999);

-- --------------------------------------------------------

--
-- Table structure for table `post_office`
--

CREATE TABLE `post_office` (
  `PO_ID` int(11) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Address` varchar(50) DEFAULT NULL,
  `Jurisdiction` varchar(50) DEFAULT NULL,
  `Employees` varchar(50) DEFAULT NULL,
  `Drop_Of_Points` varchar(50) DEFAULT NULL,
  `Mail` varchar(50) DEFAULT NULL,
  `Packet` varchar(50) DEFAULT NULL,
  `Collecting_Station` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `post_office`
--

INSERT INTO `post_office` (`PO_ID`, `Name`, `Address`, `Jurisdiction`, `Employees`, `Drop_Of_Points`, `Mail`, `Packet`, `Collecting_Station`) VALUES
(465, 'P01', 'Tennisstreet 4', '10', '10', '20', '1000', '1000', 345),
(512, 'P03', 'Soccerstreet', '12', '14', '40', '1500', '1500', 345),
(999, 'P02', 'Golfstreet 29', '9', '8', '25', '1200', '1200', 345);

-- --------------------------------------------------------

--
-- Table structure for table `transport`
--

CREATE TABLE `transport` (
  `TS_ID` int(11) NOT NULL,
  `Type` enum('LKW','PKW','Scooter') DEFAULT NULL,
  `Weight` varchar(50) DEFAULT NULL,
  `Collecting_Station` int(11) DEFAULT NULL,
  `Employee` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transport`
--

INSERT INTO `transport` (`TS_ID`, `Type`, `Weight`, `Collecting_Station`, `Employee`) VALUES
(12, 'LKW', '4000', 345, 123456),
(43, 'Scooter', '100', 345, 890123),
(99, 'PKW', '2500', 345, 678901);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `collecting_station`
--
ALTER TABLE `collecting_station`
  ADD PRIMARY KEY (`CS_ID`),
  ADD KEY `District` (`District`);

--
-- Indexes for table `coustomer`
--
ALTER TABLE `coustomer`
  ADD PRIMARY KEY (`Coustomer_ID`),
  ADD KEY `Address` (`Address`);

--
-- Indexes for table `district`
--
ALTER TABLE `district`
  ADD PRIMARY KEY (`District_ID`);

--
-- Indexes for table `drop_of_point`
--
ALTER TABLE `drop_of_point`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Employee` (`Employee`),
  ADD KEY `Post_Office` (`Post_Office`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`emp_ID`),
  ADD KEY `Post_Office` (`Post_Office`);

--
-- Indexes for table `jurisdiction`
--
ALTER TABLE `jurisdiction`
  ADD PRIMARY KEY (`JUS_ID`),
  ADD KEY `Post_Office` (`Post_Office`),
  ADD KEY `Employee` (`Employee`);

--
-- Indexes for table `mail`
--
ALTER TABLE `mail`
  ADD PRIMARY KEY (`M_ID`),
  ADD KEY `Post_Office` (`Post_Office`),
  ADD KEY `Employee` (`Employee`);

--
-- Indexes for table `packet`
--
ALTER TABLE `packet`
  ADD PRIMARY KEY (`P_ID`),
  ADD KEY `Post_Office` (`Post_Office`),
  ADD KEY `Employee` (`Employee`);

--
-- Indexes for table `post_office`
--
ALTER TABLE `post_office`
  ADD PRIMARY KEY (`PO_ID`),
  ADD KEY `Collecting_Station` (`Collecting_Station`);

--
-- Indexes for table `transport`
--
ALTER TABLE `transport`
  ADD PRIMARY KEY (`TS_ID`),
  ADD KEY `Collecting_Station` (`Collecting_Station`),
  ADD KEY `Employee` (`Employee`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `collecting_station`
--
ALTER TABLE `collecting_station`
  ADD CONSTRAINT `collecting_station_ibfk_1` FOREIGN KEY (`District`) REFERENCES `district` (`District_ID`);

--
-- Constraints for table `coustomer`
--
ALTER TABLE `coustomer`
  ADD CONSTRAINT `coustomer_ibfk_1` FOREIGN KEY (`Address`) REFERENCES `jurisdiction` (`JUS_ID`);

--
-- Constraints for table `drop_of_point`
--
ALTER TABLE `drop_of_point`
  ADD CONSTRAINT `drop_of_point_ibfk_1` FOREIGN KEY (`Employee`) REFERENCES `employees` (`emp_ID`),
  ADD CONSTRAINT `drop_of_point_ibfk_2` FOREIGN KEY (`Post_Office`) REFERENCES `post_office` (`PO_ID`);

--
-- Constraints for table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_ibfk_1` FOREIGN KEY (`Post_Office`) REFERENCES `post_office` (`PO_ID`);

--
-- Constraints for table `jurisdiction`
--
ALTER TABLE `jurisdiction`
  ADD CONSTRAINT `jurisdiction_ibfk_1` FOREIGN KEY (`Post_Office`) REFERENCES `post_office` (`PO_ID`),
  ADD CONSTRAINT `jurisdiction_ibfk_2` FOREIGN KEY (`Employee`) REFERENCES `employees` (`emp_ID`);

--
-- Constraints for table `mail`
--
ALTER TABLE `mail`
  ADD CONSTRAINT `mail_ibfk_1` FOREIGN KEY (`Post_Office`) REFERENCES `post_office` (`PO_ID`),
  ADD CONSTRAINT `mail_ibfk_2` FOREIGN KEY (`Employee`) REFERENCES `employees` (`emp_ID`);

--
-- Constraints for table `packet`
--
ALTER TABLE `packet`
  ADD CONSTRAINT `packet_ibfk_1` FOREIGN KEY (`Post_Office`) REFERENCES `post_office` (`PO_ID`),
  ADD CONSTRAINT `packet_ibfk_2` FOREIGN KEY (`Employee`) REFERENCES `employees` (`emp_ID`);

--
-- Constraints for table `post_office`
--
ALTER TABLE `post_office`
  ADD CONSTRAINT `post_office_ibfk_1` FOREIGN KEY (`Collecting_Station`) REFERENCES `collecting_station` (`CS_ID`);

--
-- Constraints for table `transport`
--
ALTER TABLE `transport`
  ADD CONSTRAINT `transport_ibfk_1` FOREIGN KEY (`Collecting_Station`) REFERENCES `collecting_station` (`CS_ID`),
  ADD CONSTRAINT `transport_ibfk_2` FOREIGN KEY (`Employee`) REFERENCES `employees` (`emp_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
