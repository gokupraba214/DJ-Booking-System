-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 27, 2021 at 08:30 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `odmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `employeedetail`
--

CREATE TABLE `employeedetail` (
  `ID` int(11) NOT NULL,
  `EmpFname` varchar(50) DEFAULT NULL,
  `EmpLName` varchar(50) NOT NULL,
  `EmpCode` varchar(50) DEFAULT NULL,
  `EmpDept` varchar(120) DEFAULT NULL,
  `EmpAddress` varchar(120) DEFAULT NULL,
  `EmpContactNo` bigint(10) DEFAULT NULL,
  `EmpGender` enum('Male','Female') DEFAULT NULL,
  `EmpEmail` varchar(200) DEFAULT NULL,
  `EmpPassword` varchar(100) DEFAULT NULL,
  `EmpJoingdate` date DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employeedetail`
--

INSERT INTO `employeedetail` (`ID`, `EmpFname`, `EmpLName`, `EmpCode`, `EmpDept`, `EmpAddress`, `EmpContactNo`, `EmpGender`, `EmpEmail`, `EmpPassword`, `EmpJoingdate`, `PostingDate`) VALUES
(1, 'Subhash', 'Pandey', '123465', 'IT', NULL, 1234567890, 'Male', 'abc@gmail.com', 'Test@12345', '2019-01-02', '2019-02-06 06:31:49'),
(2, 'Anuj', 'Kumar', '123465558', 'CS', NULL, 1234567890, 'Male', 'anuj@gmail.com', '123', '2017-03-23', '2019-02-06 06:41:42'),
(3, 'Ankush', 'Pandey', '123467', 'IT', NULL, 1234567890, 'Male', 'ankush@gmail.com', '89756', '2010-09-13', '2019-02-06 06:42:15'),
(15, 'Gokulnath', 'Prabaharan', '2203', 'Sound System', NULL, 1136256687, 'Male', 'gg@gmail.com', 'gokul', '2020-06-05', '2020-10-21 19:29:56'),
(16, 'GOO', 'LAH', '0001', NULL, NULL, NULL, NULL, 'hyg@gmail.com', '0000', NULL, '2020-10-22 15:13:35'),
(17, 'test', 'test', '1234', NULL, NULL, NULL, NULL, 'gu@gmail.com', '567', NULL, '2020-11-02 15:30:08'),
(18, 'ing', 'rre', '5555', NULL, NULL, NULL, NULL, 'dffddf@gmail.com', '12345', NULL, '2021-04-26 08:18:34'),
(19, 'gdfgd', 'sdfsdgfd', '45454', NULL, NULL, NULL, NULL, 'tester@gmail.com', '1234', NULL, '2021-04-26 08:19:31');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `image_text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `image`, `image_text`) VALUES
(0, '42714055_1949225031767445_5741215395973431296_o.jpg', ''),
(0, '42714055_1949225031767445_5741215395973431296_o.jpg', ''),
(0, '42714055_1949225031767445_5741215395973431296_o.jpg', ''),
(0, '42714055_1949225031767445_5741215395973431296_o.jpg', ''),
(0, '42714055_1949225031767445_5741215395973431296_o.jpg', ''),
(0, '2883.jpg', ''),
(0, '2883.jpg', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` varchar(120) DEFAULT NULL,
  `UserName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'DJ REVVY', 'admin', 143130909, 'DJREVVY@gmail.com', '68eacb97d86f0c4621fa2b0e17cabd8c', '2020-01-21 11:48:13');

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking`
--

CREATE TABLE `tblbooking` (
  `ID` int(10) NOT NULL,
  `BookingID` int(10) DEFAULT NULL,
  `ServiceID` int(10) DEFAULT NULL,
  `Name` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `EventDate` varchar(200) DEFAULT NULL,
  `EventStartingtime` varchar(200) DEFAULT NULL,
  `EventEndingtime` varchar(200) DEFAULT NULL,
  `VenueAddress` mediumtext,
  `EventType` varchar(200) DEFAULT NULL,
  `TotalP` int(10) DEFAULT NULL,
  `AdditionalInformation` mediumtext,
  `BookingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Remark` varchar(200) DEFAULT NULL,
  `Status` varchar(200) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblbooking`
--

INSERT INTO `tblbooking` (`ID`, `BookingID`, `ServiceID`, `Name`, `MobileNumber`, `Email`, `EventDate`, `EventStartingtime`, `EventEndingtime`, `VenueAddress`, `EventType`, `TotalP`, `AdditionalInformation`, `BookingDate`, `Remark`, `Status`, `UpdationDate`) VALUES
(5, 365319422, 5, 'Test', 8097867576, 'test@gmail.com', '2020-02-12', '7 p.m', '10 p.m', 'R-789 KW Raj Nagar Ghaziabad', 'Get Together', NULL, 'xskjhj nbzxjhgagwejmb gdjswgdscbxzmnb', '2020-01-29 05:39:29', 'ff', 'Approved', '2020-10-08 17:49:34'),
(8, 542375603, 1, 'gokulnath', 1136256697, 'gokupraba214@gmail.com', '2020-10-09', '1 p.m', '3 p.m', 'pipsjdfp9iakf', 'Birthday Party', NULL, 'nothing', '2020-10-08 17:52:19', 'delete', 'Cancelled', '2020-10-08 18:02:19'),
(9, 574249232, 1, 'gokul', 11362556697, 'gokul@gmail.com', '2020-10-30', '12 p.m', '1 p.m', 'jkgggiuhituif', 'Wedding', NULL, 'kgiuih', '2020-10-21 19:50:17', 'yes', 'Approved', '2020-10-22 15:02:59'),
(10, 280978498, 7, 'gokulnath', 1136256697, 'gokuraba214@gmail.com', '2020-11-10', '9 a.m', '11 a.m', 'No.2126 kamung Trans Krian ,14300 Nibong Tebal, Pulau Pinang.', 'Anniversary', 50, 'Nothing', '2020-11-02 14:35:40', 'hh', 'Approved', '2020-11-02 14:55:07'),
(11, 675955266, 7, 'sdfs', 1121321, 'xdfds@gmai.com', '2020-11-12', '4 a.m', '5 a.m', ';lskd;fl', 'Engagement', 0, 'lkfl', '2020-11-02 16:10:52', 'h', 'Approved', '2020-11-04 18:41:47'),
(12, NULL, NULL, 'foog', 15433323, 'hhh@gmail.com', '1/2/2000', '12.00', '3.00', 'sdsdfdf', 'Wedding', NULL, 'sdsdsd', '2021-04-26 06:07:43', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbleventtype`
--

CREATE TABLE `tbleventtype` (
  `ID` int(10) NOT NULL,
  `EventType` varchar(200) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbleventtype`
--

INSERT INTO `tbleventtype` (`ID`, `EventType`, `CreationDate`) VALUES
(1, 'Anniversary', '2020-01-22 07:01:39'),
(2, 'Birthday Party', '2020-01-22 07:02:34'),
(5, 'College', '2020-01-22 07:03:11'),
(8, 'Engagement', '2020-01-22 07:03:51'),
(11, 'Night Club', '2020-01-22 07:04:26'),
(18, 'Wedding', '2020-01-22 07:06:07'),
(19, 'Concert', '2020-11-02 15:02:50');

-- --------------------------------------------------------

--
-- Table structure for table `tblpage`
--

CREATE TABLE `tblpage` (
  `ID` int(10) NOT NULL,
  `PageType` varchar(100) DEFAULT NULL,
  `PageTitle` mediumtext,
  `PageDescription` mediumtext,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`) VALUES
(1, 'aboutus', 'About Us', '<p style=\"text-align: left;\"><font color=\"#ffff99\" style=\"\" size=\"4\" face=\"arial\">Everything we do at</font><font style=\"color: rgb(255, 255, 0);\" size=\"4\" face=\"arial\"> </font><font style=\"\" size=\"4\" face=\"arial\" color=\"#ffff99\">Mix</font><font style=\"\" size=\"4\" face=\"arial\" color=\"#000000\"> </font><font color=\"#ffff99\" style=\"\" size=\"4\" face=\"arial\">Crew Station begins with our love of electronic music. Since our foundation in 2009,the mission has remained the same.Serve the unique needs of our community with high-class products and service that inspire and connect the landscape of creators,DJ\'s and fans.Through this commitment, our goal is to constanly drive innovationn and inspiration ,helping to lead and define the progression of dance music culture.Today,Mix Crew Station remains the recognized industry leader for the DJ community with a local.</font></p>', NULL, NULL, '2020-11-02 15:05:57');

-- --------------------------------------------------------

--
-- Table structure for table `tblservice`
--

CREATE TABLE `tblservice` (
  `ID` int(10) NOT NULL,
  `ServiceName` varchar(200) DEFAULT NULL,
  `SerDes` varchar(250) NOT NULL,
  `ServicePrice` varchar(200) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblservice`
--

INSERT INTO `tblservice` (`ID`, `ServiceName`, `SerDes`, `ServicePrice`, `CreationDate`) VALUES
(7, 'Lightings', '8\"Moving Head Sharpy 250 Watts(New Style)\r\n10\" LED Bucken 50 Watts Each\r\nSmoke Effect Machine\r\nLed Stack\r\nFull Range Top Speaker(4Pcs Speaker 1200watts) - RCF\r\n2 Double Sub Speaker\r\nFull Set of Amplifier', '2000', '2020-11-02 05:04:49'),
(8, 'Wedding Dinner ', 'Sound\r\n2\" Full Range Top Speaker (4Pcs Speaker 1200watts) - RCF\r\n2\" Double Sub Speaker (4pcs 1800watts) - RCF\r\n2\" Monitor Speaker - 1000 Watts Each - RCF\r\n1\" 24 Channel Digital Yamaha Mixer\r\n1\" Full Set Of Amplifier, Wiring And Set Up \r\n1\" Technician', '4500', '2020-11-02 05:11:11');

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE `tbluser` (
  `ID` int(10) NOT NULL,
  `Name` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Message` mediumtext,
  `MsgDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `IsRead` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`ID`, `Name`, `MobileNumber`, `Email`, `Message`, `MsgDate`, `IsRead`) VALUES
(1, 'Test', 7887878787, 'test@gmail.com', 'Hello', '2020-01-24 07:00:34', 1),
(2, 'Gokulnath', 1136256697, 'gokupraba214@gmail.com', 'hye', '2020-10-22 15:00:51', 1),
(3, 'gokulnath', 1136255697, 'gokuth45gmail.com', 'Hye', '2020-11-02 14:40:32', 1),
(4, 'gokulnath', 113625587, 'gokuraba214@gmail.com', 'Hye there.', '2020-11-02 14:42:02', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employeedetail`
--
ALTER TABLE `employeedetail`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `EmpCode` (`EmpCode`);

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ServiceID` (`ServiceID`),
  ADD KEY `EventType` (`EventType`(191));

--
-- Indexes for table `tbleventtype`
--
ALTER TABLE `tbleventtype`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `EventType` (`EventType`(191));

--
-- Indexes for table `tblpage`
--
ALTER TABLE `tblpage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblservice`
--
ALTER TABLE `tblservice`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID` (`ID`);

--
-- Indexes for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employeedetail`
--
ALTER TABLE `employeedetail`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbleventtype`
--
ALTER TABLE `tbleventtype`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tblpage`
--
ALTER TABLE `tblpage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblservice`
--
ALTER TABLE `tblservice`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
