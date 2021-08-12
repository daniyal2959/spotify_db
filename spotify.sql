-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 21, 2020 at 09:17 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spotify`
--

-- --------------------------------------------------------

--
-- Table structure for table `followers`
--

CREATE TABLE `followers` (
  `ID` int(11) NOT NULL,
  `UID` int(11) NOT NULL,
  `FID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `followers`
--

INSERT INTO `followers` (`ID`, `UID`, `FID`) VALUES
(7, 3, 1),
(1, 1, 2),
(8, 3, 2),
(2, 1, 3),
(15, 10, 4),
(10, 10, 6),
(6, 1, 8),
(4, 1, 10),
(5, 1, 17);

-- --------------------------------------------------------

--
-- Table structure for table `followings`
--

CREATE TABLE `followings` (
  `ID` int(11) NOT NULL,
  `UID` int(11) NOT NULL,
  `FID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `followings`
--

INSERT INTO `followings` (`ID`, `UID`, `FID`) VALUES
(10, 2, 1),
(2, 1, 2),
(6, 3, 2),
(1, 1, 3),
(9, 2, 3),
(13, 11, 3),
(8, 3, 4),
(14, 11, 5),
(4, 1, 7),
(15, 11, 7),
(3, 1, 10),
(11, 2, 10),
(17, 11, 10),
(5, 1, 16),
(12, 2, 16),
(7, 3, 17),
(16, 11, 17);

-- --------------------------------------------------------

--
-- Table structure for table `likedlists`
--

CREATE TABLE `likedlists` (
  `ID` int(11) NOT NULL,
  `UID` int(11) NOT NULL,
  `MID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `likedlists`
--

INSERT INTO `likedlists` (`ID`, `UID`, `MID`) VALUES
(5, 3, 1),
(10, 16, 1),
(14, 17, 1),
(23, 10, 1),
(8, 3, 2),
(11, 16, 2),
(15, 17, 2),
(22, 4, 2),
(12, 16, 4),
(16, 17, 4),
(21, 4, 4),
(1, 1, 5),
(6, 3, 5),
(18, 2, 5),
(24, 7, 5),
(2, 1, 6),
(19, 2, 6),
(7, 3, 7),
(3, 1, 8),
(13, 16, 8),
(20, 2, 8),
(26, 7, 8),
(4, 1, 9),
(25, 7, 9),
(9, 3, 10),
(17, 8, 10),
(27, 7, 10);

-- --------------------------------------------------------

--
-- Table structure for table `musics`
--

CREATE TABLE `musics` (
  `ID` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Duration` int(4) NOT NULL,
  `UID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `musics`
--

INSERT INTO `musics` (`ID`, `Name`, `Duration`, `UID`) VALUES
(1, 'ziadi.mp3', 165, 11),
(2, 'sadbar.mp3', 222, 11),
(4, 'gerye.mp3', 186, 11),
(5, 'BekhabDonya.mp3', 225, 5),
(6, 'ParPar.mp3', 226, 5),
(7, 'BiAsemoon.mp3', 200, 5),
(8, 'GoleEshgh.mp3', 218, 6),
(9, 'labkhandbezan.mp3', 164, 6),
(10, 'Divaneh', 244, 6);

-- --------------------------------------------------------

--
-- Table structure for table `playedmusics`
--

CREATE TABLE `playedmusics` (
  `ID` int(11) NOT NULL,
  `UID` int(11) NOT NULL,
  `MID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `playedmusics`
--

INSERT INTO `playedmusics` (`ID`, `UID`, `MID`) VALUES
(6, 1, 1),
(7, 5, 2),
(8, 1, 4),
(9, 1, 5),
(10, 1, 6),
(11, 2, 10),
(12, 2, 8),
(13, 17, 2),
(14, 6, 10),
(15, 17, 7),
(16, 17, 4),
(17, 16, 8),
(18, 16, 5),
(19, 16, 2),
(20, 10, 9);

-- --------------------------------------------------------

--
-- Table structure for table `playlistmusics`
--

CREATE TABLE `playlistmusics` (
  `ID` int(11) NOT NULL,
  `PLID` int(11) NOT NULL,
  `MID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `playlistmusics`
--

INSERT INTO `playlistmusics` (`ID`, `PLID`, `MID`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 4),
(6, 5, 1),
(7, 5, 4),
(8, 3, 6),
(9, 3, 4),
(10, 3, 7),
(11, 2, 8),
(12, 4, 4),
(13, 1, 9),
(14, 3, 8);

-- --------------------------------------------------------

--
-- Table structure for table `playlists`
--

CREATE TABLE `playlists` (
  `ID` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `UID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `playlists`
--

INSERT INTO `playlists` (`ID`, `Name`, `UID`) VALUES
(1, 'Favorite', 1),
(2, 'Favorite', 3),
(3, 'My Songs', 10),
(4, 'My Musics', 16),
(5, 'ahanghaye man', 17);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `ID` int(11) NOT NULL,
  `fullname` varchar(75) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `status` int(2) DEFAULT NULL,
  `type` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID`, `fullname`, `username`, `password`, `email`, `status`, `type`) VALUES
(1, 'Daniyal Sedighpour', 'Daniyal.S', '74e3efa4fc0193388e3e5668b06ba86abf2c81b6', 'daniyal.s.2959@gmail.com', NULL, 2),
(2, 'Amir MohammadNezhad', 'amir_m', '8bc5de83cf1daf79ed5b2f13f93d7c05d01d0388', 'amir@gmail.com', NULL, 2),
(3, 'Ali Rezaei', 'alirezaei', 'cf6795da1ef2ab0d009f075c796e5773327e4699', 'alirezaei@yahoo.com', NULL, 2),
(4, 'Faeze Samadi', 'f.s', 'f8e9427e0cc59a9e94c5ed40e2c3885334e187e2', 'f.s@gmail.com', NULL, 2),
(5, 'Mahdi Jahani', 'mahdi.j', '18ad10fd4a67f21fc07b1aa5046b410f6b2bedf1', 'mahdi.jahani@gmail.com', 1, 1),
(6, 'Reza Bahram', 'reza_bahram', '932c716e8523f7b8de0ac9ee50462c7e63d82023', 'reza.bah@yahoo.com', 1, 1),
(7, 'Omid Naderi', 'omid_naderi75', '51b6837dd57ab7e96a438d4d8da2c7f279c3d4d5', 'omid.naderi@gmail.com', NULL, 3),
(8, 'Sajjad Ahmadi', 's.ahmadi.g', '1a09b095b4d51d8a4ac2e04b88d3dee23c50e260', 's.a.g@gmail.com', NULL, 3),
(9, 'Aron Afshar', 'aron.afshar', '19b58543c85b97c5498edfd89c11c3aa8cb5fe51', 'dg@h.com', 3, 1),
(10, 'Fateme Sedighpour', 'fateme.sd', '562bbdd68d50e3141f8819ce95aa2e9a44e99a85', 'ewyrey@gmail.com', NULL, 2),
(11, 'Baran', 'baran', '2751e0c51c719c60a28c4db70197fd84672076a7', 'ghjsdh@gmail.com', 1, 1),
(12, 'Sahar', 'sahar', '5c75b1e28d1474ea16e4ba0e348f4aa869b4776e', 'gearfjrtj@gmaul.com', 1, 1),
(13, 'Garsha Rezaei', 'garsh.reza', 'b9ddfb038fa7fb377574826b59cf2d6115504354', 'sfhsejk@gmail.com', 2, 1),
(14, 'Mohsen Chavoshi', 'mohsen_chavoshi', '028e76101fdd041cfb82884f373a2097349f7b13', 'dfkjahu@yahoo.com', 2, 1),
(15, 'Mohsen Yegane', 'm.yegane', '8f0b35be9525384875a2aad5d1b24ee635874413', 'dhdrgjrdyjky53239@gmail.com', 3, 1),
(16, 'Sara Samimi', 'sara_sa', 'e6adb33cde59848a103dba465de59815fa85f027', 'slhdgerjhl@hotmail.com', NULL, 3),
(17, 'Reyhane Samimi', 'reyhane.samd', 'cabd418061d7083aa39a784724fe1fb784231213', 'rey@msn.com', NULL, 3);

-- --------------------------------------------------------

--
-- Table structure for table `userstatus`
--

CREATE TABLE `userstatus` (
  `ID` int(11) NOT NULL,
  `Name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `userstatus`
--

INSERT INTO `userstatus` (`ID`, `Name`) VALUES
(1, 'Verified'),
(2, 'Reject'),
(3, 'In Progress');

-- --------------------------------------------------------

--
-- Table structure for table `usertypes`
--

CREATE TABLE `usertypes` (
  `ID` int(11) NOT NULL,
  `Name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `usertypes`
--

INSERT INTO `usertypes` (`ID`, `Name`) VALUES
(1, 'Artist'),
(2, 'Listener'),
(3, 'Uploader');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `followers`
--
ALTER TABLE `followers`
  ADD PRIMARY KEY (`ID`,`UID`),
  ADD KEY `followers_ibfk_1` (`UID`),
  ADD KEY `followers_ibfk_2` (`FID`);

--
-- Indexes for table `followings`
--
ALTER TABLE `followings`
  ADD PRIMARY KEY (`ID`,`UID`),
  ADD KEY `UID` (`UID`),
  ADD KEY `FID` (`FID`);

--
-- Indexes for table `likedlists`
--
ALTER TABLE `likedlists`
  ADD PRIMARY KEY (`ID`,`UID`),
  ADD KEY `UID` (`UID`),
  ADD KEY `MID` (`MID`);

--
-- Indexes for table `musics`
--
ALTER TABLE `musics`
  ADD PRIMARY KEY (`ID`,`UID`),
  ADD KEY `musics_ibfk_1` (`UID`);

--
-- Indexes for table `playedmusics`
--
ALTER TABLE `playedmusics`
  ADD PRIMARY KEY (`ID`,`UID`,`MID`),
  ADD KEY `MID` (`MID`),
  ADD KEY `playedmusics_ibfk_2` (`UID`);

--
-- Indexes for table `playlistmusics`
--
ALTER TABLE `playlistmusics`
  ADD PRIMARY KEY (`ID`,`PLID`,`MID`),
  ADD KEY `MID` (`MID`),
  ADD KEY `PLID` (`PLID`);

--
-- Indexes for table `playlists`
--
ALTER TABLE `playlists`
  ADD PRIMARY KEY (`ID`,`UID`),
  ADD KEY `UID` (`UID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `type` (`type`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `userstatus`
--
ALTER TABLE `userstatus`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `usertypes`
--
ALTER TABLE `usertypes`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `followers`
--
ALTER TABLE `followers`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `followings`
--
ALTER TABLE `followings`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `likedlists`
--
ALTER TABLE `likedlists`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `musics`
--
ALTER TABLE `musics`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `playedmusics`
--
ALTER TABLE `playedmusics`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `playlistmusics`
--
ALTER TABLE `playlistmusics`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `playlists`
--
ALTER TABLE `playlists`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `userstatus`
--
ALTER TABLE `userstatus`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `usertypes`
--
ALTER TABLE `usertypes`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `followers`
--
ALTER TABLE `followers`
  ADD CONSTRAINT `followers_ibfk_1` FOREIGN KEY (`UID`) REFERENCES `users` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `followers_ibfk_2` FOREIGN KEY (`FID`) REFERENCES `users` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `followings`
--
ALTER TABLE `followings`
  ADD CONSTRAINT `followings_ibfk_1` FOREIGN KEY (`UID`) REFERENCES `users` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `followings_ibfk_2` FOREIGN KEY (`FID`) REFERENCES `users` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `likedlists`
--
ALTER TABLE `likedlists`
  ADD CONSTRAINT `likedlists_ibfk_1` FOREIGN KEY (`UID`) REFERENCES `users` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `likedlists_ibfk_2` FOREIGN KEY (`MID`) REFERENCES `musics` (`ID`);

--
-- Constraints for table `musics`
--
ALTER TABLE `musics`
  ADD CONSTRAINT `musics_ibfk_1` FOREIGN KEY (`UID`) REFERENCES `users` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `playedmusics`
--
ALTER TABLE `playedmusics`
  ADD CONSTRAINT `playedmusics_ibfk_1` FOREIGN KEY (`MID`) REFERENCES `musics` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `playedmusics_ibfk_2` FOREIGN KEY (`UID`) REFERENCES `users` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `playlistmusics`
--
ALTER TABLE `playlistmusics`
  ADD CONSTRAINT `playlistmusics_ibfk_1` FOREIGN KEY (`MID`) REFERENCES `musics` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `playlistmusics_ibfk_2` FOREIGN KEY (`PLID`) REFERENCES `playlists` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `playlists`
--
ALTER TABLE `playlists`
  ADD CONSTRAINT `playlists_ibfk_1` FOREIGN KEY (`UID`) REFERENCES `users` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`type`) REFERENCES `usertypes` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `users_ibfk_2` FOREIGN KEY (`status`) REFERENCES `userstatus` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
