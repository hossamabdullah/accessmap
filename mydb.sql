-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 10, 2018 at 01:40 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mydb`
--

-- --------------------------------------------------------

--
-- Table structure for table `locationgeometry`
--

CREATE TABLE `locationgeometry` (
  `geometryId` int(11) NOT NULL,
  `latitude` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `place`
--

CREATE TABLE `place` (
  `placeId` int(11) NOT NULL,
  `locationId` int(11) DEFAULT NULL,
  `placeShortName` varchar(45) DEFAULT NULL,
  `placeLongName` varchar(255) DEFAULT NULL,
  `placeAddress` varchar(255) DEFAULT NULL,
  `placeRate` int(11) DEFAULT NULL,
  `placeIcon` varchar(255) DEFAULT NULL,
  `AddressUrl` varchar(255) DEFAULT NULL,
  `placeWebsite` varchar(255) DEFAULT NULL,
  `placePhotoId` int(11) DEFAULT NULL,
  `placeGeometryId` int(11) DEFAULT NULL,
  `dateCreated` date DEFAULT NULL,
  `dateModified` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `placephoto`
--

CREATE TABLE `placephoto` (
  `placePhotoId` int(11) NOT NULL,
  `placePhoto` varchar(255) DEFAULT NULL,
  `dateCreated` date DEFAULT NULL,
  `dateModified` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `reviewId` int(11) NOT NULL,
  `reviewUserId` int(11) DEFAULT NULL,
  `placeId` int(11) DEFAULT NULL,
  `reviewPhotoId` int(11) DEFAULT NULL,
  `reviewRating` int(11) DEFAULT NULL,
  `reviewComment` varchar(255) DEFAULT NULL,
  `dateCreated` date DEFAULT NULL,
  `dateModified` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userId` int(11) NOT NULL,
  `firstName` varchar(45) DEFAULT NULL,
  `lastName` varchar(45) DEFAULT NULL,
  `phoneNumber` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `userRate` int(11) DEFAULT NULL,
  `userPhotoId` int(11) DEFAULT NULL,
  `isActive` tinyint(1) DEFAULT NULL,
  `notes` varchar(45) DEFAULT NULL,
  `dateCreated` date DEFAULT NULL,
  `dateModified` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `userphoto`
--

CREATE TABLE `userphoto` (
  `userPhotoId` int(11) NOT NULL,
  `userPhoto` varchar(255) DEFAULT NULL,
  `dateCreated` date DEFAULT NULL,
  `dateModified` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `visits`
--

CREATE TABLE `visits` (
  `visitId` int(11) NOT NULL,
  `placeId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `reviewId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `locationgeometry`
--
ALTER TABLE `locationgeometry`
  ADD PRIMARY KEY (`geometryId`);

--
-- Indexes for table `place`
--
ALTER TABLE `place`
  ADD PRIMARY KEY (`placeId`);

--
-- Indexes for table `placephoto`
--
ALTER TABLE `placephoto`
  ADD PRIMARY KEY (`placePhotoId`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`reviewId`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userId`);

--
-- Indexes for table `userphoto`
--
ALTER TABLE `userphoto`
  ADD PRIMARY KEY (`userPhotoId`);

--
-- Indexes for table `visits`
--
ALTER TABLE `visits`
  ADD PRIMARY KEY (`visitId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
