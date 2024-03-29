-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 08, 2019 at 01:00 PM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_itsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `id` int(11) NOT NULL,
  `year` year(4) DEFAULT NULL,
  `purchase` int(11) DEFAULT NULL,
  `sale` int(11) DEFAULT NULL,
  `profit` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`id`, `year`, `purchase`, `sale`, `profit`) VALUES
(1, 2013, 2000, 3000, 1000),
(2, 2014, 4500, 5000, 500),
(3, 2015, 3000, 4500, 1500),
(4, 2016, 2000, 3000, 1000),
(5, 2017, 2000, 4000, 2000),
(6, 2018, 2200, 3000, 800),
(7, 2019, 5000, 7000, 2000);

-- --------------------------------------------------------

--
-- Table structure for table `asset_accesscard`
--

CREATE TABLE `asset_accesscard` (
  `ID` int(11) NOT NULL,
  `AccessCard` varchar(255) NOT NULL,
  `ReplacementCard` varchar(255) NOT NULL,
  `TicketId` varchar(255) NOT NULL,
  `Status` varchar(255) NOT NULL,
  `DateAdded` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `asset_accesscard`
--

INSERT INTO `asset_accesscard` (`ID`, `AccessCard`, `ReplacementCard`, `TicketId`, `Status`, `DateAdded`) VALUES
(4, '8739699', '5889762', 'OP364640', 'Deployed', '2019-06-23 12:49:50'),
(5, 'test', 'test', 'test', 'Deployed', '2019-06-26 07:07:16'),
(6, '22', '22', '22', 'Spare', '2019-06-27 08:07:18');

-- --------------------------------------------------------

--
-- Table structure for table `asset_batteries`
--

CREATE TABLE `asset_batteries` (
  `ID` int(11) NOT NULL,
  `Brand` varchar(255) NOT NULL,
  `Model` varchar(255) NOT NULL,
  `SerialNumber` varchar(255) NOT NULL,
  `PONumber` varchar(255) NOT NULL,
  `UPS_AssetTag` varchar(255) NOT NULL,
  `UPSBrandModel` varchar(255) NOT NULL,
  `DeliveryDate` date NOT NULL,
  `TicketNumber` varchar(255) NOT NULL,
  `DateInstalled` date NOT NULL,
  `PerformedBy` varchar(255) NOT NULL,
  `Status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `asset_batteries`
--

INSERT INTO `asset_batteries` (`ID`, `Brand`, `Model`, `SerialNumber`, `PONumber`, `UPS_AssetTag`, `UPSBrandModel`, `DeliveryDate`, `TicketNumber`, `DateInstalled`, `PerformedBy`, `Status`) VALUES
(1, 'ACCU-CELL Power', '12V 7AH', '334367', '10004795', '', '', '0000-00-00', '', '0000-00-00', '', 'Spare'),
(2, 'ACCU-CELL Power', '12V 7AH', '334368', '10004795', '', '', '0000-00-00', '', '0000-00-00', '', 'Spare'),
(3, 'ACCU-CELL Power', '12V 7AH', '334369', '10004795', '', '', '0000-00-00', '', '0000-00-00', '', 'Spare'),
(4, 'ACCU-CELL Power', '12V 7AH', '334370', '10004795', '', '', '0000-00-00', '', '0000-00-00', '', 'Spare'),
(5, 'ACCU-CELL Power', '12V 7AH', '334371', '10004795', '', '', '0000-00-00', '', '0000-00-00', 'Arjay Cobarde', 'Deployed'),
(6, 'ACCU-CELL Power', '12V 7AH', '334372', '10004795', '', '', '0000-00-00', '', '0000-00-00', 'Arjay Cobarde', 'Deployed'),
(7, 'ACCU-CELL Power', '12V 7AH', '334373', '10004795', '', '', '0000-00-00', '', '0000-00-00', 'Arjay Cobarde', 'Deployed'),
(8, 'ACCU-CELL Power', '12V 7AH', '334374', '10004795', '', '', '0000-00-00', '', '0000-00-00', 'Arjay Cobarde', 'Deployed'),
(9, 'ACCU-CELL Power', '12V 7AH', '334375', '10004795', '', '', '0000-00-00', '', '0000-00-00', 'Arjay Cobarde', 'Deployed'),
(10, 'ACCU-CELL Power', '12V 7AH', '334376', '10004795', '', '', '0000-00-00', '', '0000-00-00', 'Arjay Cobarde', 'Deployed'),
(11, 'ACCU-CELL Power', '12V 7AH', '334377', '10004795', '', '', '0000-00-00', '', '0000-00-00', '', 'Spare'),
(12, 'ACCU-CELL Power', '12V 7AH', '334378', '10004795', '', '', '0000-00-00', '', '0000-00-00', '', 'Spare'),
(13, 'ACCU-CELL Power', '12V 7AH', '334379', '10004795', '', '', '0000-00-00', '', '0000-00-00', '', 'Spare'),
(14, 'ACCU-CELL Power', '12V 7AH', '334380', '10004795', '', '', '0000-00-00', '', '0000-00-00', '', 'Spare'),
(15, 'ACCU-CELL Power', '12V 7AH', '334381', '10004795', '', '', '0000-00-00', '', '0000-00-00', '', 'Spare'),
(16, 'ACCU-CELL Power', '12V 7AH', '334382', '10004795', '', '', '0000-00-00', '', '0000-00-00', '', 'Spare'),
(17, 'ACCU-CELL Power', '12V 7AH', '334383', '10004795', '', '', '0000-00-00', '', '0000-00-00', '', 'Spare'),
(18, 'ACCU-CELL Power', '12V 7AH', '334384', '10004795', '', '', '0000-00-00', '', '0000-00-00', '', 'Spare'),
(19, 'ACCU-CELL Power', '12V 7AH', '334385', '10004795', '', '', '0000-00-00', '', '0000-00-00', '', 'Spare'),
(20, 'ACCU-CELL Power', '12V 7AH', '334386', '10004795', '', '', '0000-00-00', '', '0000-00-00', '', 'Spare'),
(21, 'ACCU-CELL Power', '12V 7AH', '334387', '10004795', '', '', '0000-00-00', '', '0000-00-00', '', 'Spare'),
(22, 'ACCU-CELL Power', '12V 7AH', '334388', '10004795', '', '', '0000-00-00', '', '0000-00-00', '', 'Spare'),
(23, 'ACCU-CELL Power', '12V 7AH', '334389', '10004795', '', '', '0000-00-00', '', '0000-00-00', 'Arjay Cobarde', 'Deployed'),
(24, 'ACCU-CELL Power', '12V 7AH', '334390', '10004795', '', '', '0000-00-00', '', '0000-00-00', 'Arjay Cobarde', 'Deployed'),
(25, 'ACCU-CELL Power', '12V 7AH', '334391', '10004795', '', '', '0000-00-00', '', '0000-00-00', '', 'Spare'),
(26, 'ACCU-CELL Power', '12V 7AH', '334392', '10004795', '', '', '0000-00-00', '', '0000-00-00', '', 'Spare'),
(27, 'ACCU-CELL Power', '12V 7AH', '334393', '10004795', '', '', '0000-00-00', '', '0000-00-00', '', 'Spare'),
(28, 'ACCU-CELL Power', '12V 7AH', '334394', '10004795', '', '', '0000-00-00', '', '0000-00-00', '', 'Spare'),
(29, 'ACCU-CELL Power', '12V 7AH', '334395', '10004795', '', '', '0000-00-00', '', '0000-00-00', '', 'Spare'),
(30, 'ACCU-CELL Power', '12V 7AH', '334396', '10004795', '', '', '0000-00-00', '', '0000-00-00', '', 'Spare'),
(31, 'ACCU-CELL Power', '12V 7AH', '334397', '10004795', '', '', '0000-00-00', '', '0000-00-00', '', 'Spare'),
(32, 'ACCU-CELL Power', '12V 7AH', '334398', '10004795', '', '', '0000-00-00', '', '0000-00-00', '', 'Spare'),
(33, 'ACCU-CELL Power', '12V 7AH', '334399', '10004795', '', '', '0000-00-00', '', '0000-00-00', 'Arjay Cobarde', 'Deployed'),
(34, 'ACCU-CELL Power', '12V 7AH', '334400', '10004795', '', '', '0000-00-00', '', '0000-00-00', 'Arjay Cobarde', 'Deployed'),
(35, 'ACCU-CELL Power', '12V 7AH', '334401', '10004795', 'LINK14FUPSIT26218', '', '0000-00-00', 'OP370430', '2019-07-17', 'Arjay Cobarde', 'Deployed'),
(36, 'ACCU-CELL Power', '12V 7AH', '334402', '10004795', '', '', '0000-00-00', '', '0000-00-00', '', 'Spare'),
(37, 'ACCU-CELL Power', '12V 7AH', '334403', '10004795', 'LINK14FUPSIT26218', '', '0000-00-00', 'OP370430', '2019-07-17', 'Arjay Cobarde', 'Deployed'),
(38, 'ACCU-CELL Power', '12V 7AH', '334404', '10004795', '', '', '0000-00-00', '', '0000-00-00', '', 'Spare'),
(39, 'ACCU-CELL Power', '12V 7AH', '334405', '10004795', '', '', '0000-00-00', '', '0000-00-00', 'Arjay Cobarde', 'Deployed'),
(40, 'ACCU-CELL Power', '12V 7AH', '334406', '10004795', 'LINK14FUPSIT26227', '', '0000-00-00', 'OP366683', '2019-06-20', 'Arjay Cobarde', 'Deployed'),
(41, 'ACCU-CELL Power', '12V 7AH', '334407', '10004795', '', '', '0000-00-00', '', '0000-00-00', 'Arjay Cobarde', 'Deployed'),
(42, 'ACCU-CELL Power', '12V 7AH', '334408', '10004795', 'LINK14FUPSIT26227', '', '0000-00-00', 'OP366683', '2019-06-20', 'Arjay Cobarde', 'Deployed'),
(43, 'ACCU-CELL Power', '12V 7AH', '334409', '10004795', '', '', '0000-00-00', '', '0000-00-00', 'Arjay Cobarde', 'Deployed'),
(44, 'ACCU-CELL Power', '12V 7AH', '334410', '10004795', '', '', '0000-00-00', '', '0000-00-00', 'Arjay Cobarde', 'Deployed'),
(45, 'ACCU-CELL Power', '12V 7AH', '334411', '10004795', 'LINK14FUPSIT26294', '', '0000-00-00', 'OP368047', '2019-06-23', 'Arjay Cobarde', 'Deployed'),
(46, 'ACCU-CELL Power', '12V 7AH', '334412', '10004795', 'LINK14FUPSIT26294', '', '0000-00-00', 'OP368047', '2019-06-23', 'Arjay Cobarde', 'Deployed'),
(47, 'ACCU-CELL Power', '12V 7AH', '334413', '10004795', 'none', '', '0000-00-00', 'None_UsedB', '0000-00-00', 'Arjay Cobarde', 'Spare'),
(48, 'ACCU-CELL Power', '12V 7AH', '334414', '10004795', '', '', '0000-00-00', '', '0000-00-00', 'Arjay Cobarde', 'Spare'),
(49, 'ACCU-CELL Power', '12V 7AH', '334415', '10004795', '', '', '0000-00-00', '', '0000-00-00', 'Arjay Cobarde', 'Deployed'),
(50, 'ACCU-CELL Power', '12V 7AH', '334416', '10004795', '', '', '0000-00-00', '', '0000-00-00', 'Arjay Cobarde', 'Deployed'),
(51, 'ACCU-CELL Power', '12V 7AH', '334417', '10004795', '', '', '0000-00-00', '', '0000-00-00', 'Arjay Cobarde', 'Deployed'),
(52, 'ACCU-CELL Power', '12V 7AH', '334418', '10004795', '', '', '0000-00-00', '', '0000-00-00', 'Arjay Cobarde', 'Deployed'),
(53, 'ACCU-CELL Power', '12V 7AH', '334419', '10004795', '', '', '0000-00-00', '', '0000-00-00', 'Arjay Cobarde', 'Deployed'),
(54, 'ACCU-CELL Power', '12V 7AH', '334420', '10004795', '', '', '0000-00-00', '', '0000-00-00', 'Arjay Cobarde', 'Deployed'),
(55, 'ACCU-CELL Power', '12V 7AH', '334421', '10004795', '', '', '0000-00-00', '', '0000-00-00', 'Arjay Cobarde', 'Deployed'),
(56, 'ACCU-CELL Power', '12V 7AH', '334422', '10004795', '', '', '0000-00-00', '', '0000-00-00', 'Arjay Cobarde', 'Deployed'),
(57, 'ACCU-CELL Power', '12V 7AH', '334423', '10004795', '', '', '0000-00-00', '', '0000-00-00', 'Arjay Cobarde', 'Deployed'),
(58, 'ACCU-CELL Power', '12V 7AH', '334424', '10004795', '', '', '0000-00-00', '', '0000-00-00', 'Arjay Cobarde', 'Deployed'),
(59, 'ACCU-CELL Power', '12V 7AH', '334425', '10004795', '', '', '0000-00-00', 'none', '0000-00-00', 'Arjay Cobarde', 'Deployed'),
(60, 'ACCU-CELL Power', '12V 7AH', '334426', '10004795', '', '', '0000-00-00', 'none', '0000-00-00', 'Arjay Cobarde', 'Deployed'),
(61, 'ACCU-CELL Power', '12V 7AH', '334427', '10004795', '', '', '0000-00-00', 'none', '0000-00-00', 'Arjay Cobarde', 'Deployed'),
(62, 'ACCU-CELL Power', '12V 7AH', '334428', '10004795', '', '', '0000-00-00', 'none', '0000-00-00', 'Arjay Cobarde', 'Deployed'),
(63, 'ACCU-CELL Power', '12V 7AH', '334429', '10004795', '', '', '0000-00-00', 'none', '0000-00-00', 'Arjay Cobarde', 'Deployed'),
(64, 'ACCU-CELL Power', '12V 7AH', '334430', '10004795', '', '', '0000-00-00', 'none', '0000-00-00', 'Arjay Cobarde', 'Deployed'),
(65, 'ACCU-CELL Power', '12V 7AH', '334431', '10004795', '', '', '0000-00-00', 'none', '0000-00-00', 'Arjay Cobarde', 'Deployed'),
(66, 'ACCU-CELL Power', '12V 7AH', '334432', '10004795', '', '', '0000-00-00', 'none', '0000-00-00', 'Arjay Cobarde', 'Deployed'),
(67, 'ACCU-CELL Power', '12V 7AH', '334433', '10004795', '', '', '0000-00-00', 'none', '0000-00-00', 'Arjay Cobarde', 'Deployed'),
(68, 'ACCU-CELL Power', '12V 7AH', '334434', '10004795', '', '', '0000-00-00', 'none', '0000-00-00', 'Arjay Cobarde', 'Deployed'),
(69, 'ACCU-CELL Power', '12V 7AH', '334435', '10004795', '', '', '0000-00-00', 'none', '0000-00-00', 'Arjay Cobarde', 'Deployed'),
(70, 'ACCU-CELL Power', '12V 7AH', '334436', '10004795', '', '', '0000-00-00', 'none', '0000-00-00', 'Arjay Cobarde', 'Deployed'),
(71, 'ACCU-CELL Power', '12V 7AH', '334437', '10004795', '', '', '0000-00-00', '', '0000-00-00', 'Arjay Cobarde', 'Deployed'),
(72, 'ACCU-CELL Power', '12V 7AH', '334438', '10004795', '', '', '0000-00-00', '', '0000-00-00', 'Arjay Cobarde', 'Deployed'),
(73, 'ACCU-CELL Power', '12V 7AH', '334439', '10004795', '', '', '0000-00-00', '', '0000-00-00', 'Arjay Cobarde', 'Spare'),
(74, 'ACCU-CELL Power', '12V 7AH', '334440', '10004795', '', '', '0000-00-00', '', '0000-00-00', 'Arjay Cobarde', 'Spare'),
(75, 'ACCU-CELL Power', '12V 7AH', '334441', '10004795', '', '', '0000-00-00', '', '2019-06-08', 'Arjay Cobarde', 'Spare'),
(76, 'ACCU-CELL Power', '12V 7AH', '334442', '10004795', '', '', '0000-00-00', '', '0000-00-00', 'Arjay Cobarde', 'Spare'),
(77, 'ACCU-CELL Power', '12V 7AH', '334443', '10004795', '', '', '0000-00-00', '', '2019-06-06', 'Arjay Cobarde', 'Spare'),
(78, 'ACCU-CELL Power', '12V 7AH', '334444', '10004795', '', '', '0000-00-00', '', '2019-06-05', 'Arjay Cobarde', 'Spare'),
(79, 'ACCU-CELL Power', '12V 7AH', '334445', '10004795', '', '', '0000-00-00', '', '2019-06-06', 'Arjay Cobarde', 'Spare'),
(80, 'ACCU-CELL Power', '12V 7AH', '334446', '10004795', '', '', '0000-00-00', '', '2019-06-06', 'Arjay Cobarde', 'Spare');

-- --------------------------------------------------------

--
-- Table structure for table `asset_dataport`
--

CREATE TABLE `asset_dataport` (
  `id` int(11) NOT NULL,
  `DataPort` varchar(255) NOT NULL,
  `DateCreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `asset_dataport`
--

INSERT INTO `asset_dataport` (`id`, `DataPort`, `DateCreated`) VALUES
(1, 'D001', '2019-05-12 04:15:26'),
(2, 'D002', '2019-05-12 04:15:26'),
(3, 'D003', '2019-05-12 04:15:26'),
(4, 'D004', '2019-05-12 04:15:26'),
(5, 'D005', '2019-05-12 04:15:26'),
(6, 'D006', '2019-05-12 04:15:26'),
(7, 'D007', '2019-05-12 04:15:26'),
(8, 'D008', '2019-05-12 04:15:26'),
(9, 'D009', '2019-05-12 04:15:26'),
(10, 'D010', '2019-05-12 04:15:26'),
(11, 'D011', '2019-05-12 04:15:26'),
(12, 'D012', '2019-05-12 04:15:26'),
(13, 'D013', '2019-05-12 04:15:26'),
(14, 'D014', '2019-05-12 04:15:26'),
(15, 'D015', '2019-05-12 04:15:26'),
(16, 'D016', '2019-05-12 04:15:26'),
(17, 'D017', '2019-05-12 04:15:26'),
(18, 'D018', '2019-05-12 04:15:26'),
(19, 'D019', '2019-05-12 04:15:26'),
(20, 'D020', '2019-05-12 04:15:26'),
(21, 'D021', '2019-05-12 04:15:26'),
(22, 'D022', '2019-05-12 04:15:26'),
(23, 'D023', '2019-05-12 04:15:26'),
(24, 'D024', '2019-05-12 04:15:26'),
(25, 'D025', '2019-05-12 04:15:26'),
(26, 'D026', '2019-05-12 04:15:26'),
(27, 'D027', '2019-05-12 04:15:26'),
(28, 'D028', '2019-05-12 04:15:26'),
(29, 'D029', '2019-05-12 04:15:26'),
(30, 'D030', '2019-05-12 04:15:26'),
(31, 'D031', '2019-05-12 04:15:26'),
(32, 'D032', '2019-05-12 04:15:26'),
(33, 'D033', '2019-05-12 04:15:26'),
(34, 'D034', '2019-05-12 04:15:26'),
(35, 'D035', '2019-05-12 04:15:26'),
(36, 'D036', '2019-05-12 04:15:26'),
(37, 'D037', '2019-05-12 04:15:26'),
(38, 'D038', '2019-05-12 04:15:26'),
(39, 'D039', '2019-05-12 04:15:26'),
(40, 'D040', '2019-05-12 04:15:26'),
(41, 'D041', '2019-05-12 04:15:26'),
(42, 'D042', '2019-05-12 04:15:26'),
(43, 'D043', '2019-05-12 04:15:26'),
(44, 'D044', '2019-05-12 04:15:26'),
(45, 'D045', '2019-05-12 04:15:26'),
(46, 'D046', '2019-05-12 04:15:26'),
(47, 'D047', '2019-05-12 04:15:26'),
(48, 'D048', '2019-05-12 04:15:26'),
(49, 'D049', '2019-05-12 04:15:26'),
(50, 'D050', '2019-05-14 14:07:57'),
(51, 'D051', '2019-05-14 14:07:57'),
(52, 'D052', '2019-05-14 14:07:57'),
(53, 'D053', '2019-05-14 14:07:57'),
(54, 'D054', '2019-05-14 14:07:57'),
(55, 'D055', '2019-05-14 14:07:57'),
(56, 'D056', '2019-05-14 14:07:57'),
(57, 'D057', '2019-05-14 14:07:57'),
(58, 'D058', '2019-05-14 14:07:57'),
(59, 'D059', '2019-05-14 14:07:57'),
(60, 'D060', '2019-05-14 14:07:57'),
(61, 'D061', '2019-05-14 14:07:57'),
(62, 'D062', '2019-05-14 14:07:57'),
(63, 'D063', '2019-05-14 14:07:57'),
(64, 'D064', '2019-05-14 14:07:57'),
(65, 'D065', '2019-05-14 14:07:57'),
(66, 'D066', '2019-05-14 14:07:57'),
(67, 'D067', '2019-05-14 14:07:57'),
(68, 'D068', '2019-05-14 14:07:57'),
(69, 'D069', '2019-05-14 14:07:57'),
(70, 'D070', '2019-05-14 14:07:57'),
(71, 'D071', '2019-05-14 14:07:57'),
(72, 'D072', '2019-05-14 14:07:57'),
(73, 'D073', '2019-05-14 14:07:57'),
(74, 'D074', '2019-05-14 14:07:57'),
(75, 'D075', '2019-05-14 14:07:57'),
(76, 'D076', '2019-05-14 14:07:57'),
(77, 'D077', '2019-05-14 14:07:57'),
(78, 'D078', '2019-05-14 14:07:57'),
(79, 'D079', '2019-05-14 14:07:57'),
(80, 'D080', '2019-05-14 14:07:57'),
(81, 'D081', '2019-05-14 14:07:57'),
(82, 'D082', '2019-05-14 14:07:57'),
(83, 'D083', '2019-05-14 14:07:57'),
(84, 'D084', '2019-05-14 14:07:57'),
(85, 'D085', '2019-05-14 14:07:57'),
(86, 'D086', '2019-05-14 14:07:57'),
(87, 'D087', '2019-05-14 14:07:57'),
(88, 'D088', '2019-05-14 14:07:57'),
(89, 'D089', '2019-05-14 14:07:57'),
(90, 'D090', '2019-05-14 14:07:57'),
(91, 'D091', '2019-05-14 14:07:57'),
(92, 'D092', '2019-05-14 14:07:57'),
(93, 'D093', '2019-05-14 14:07:57'),
(94, 'D094', '2019-05-14 14:07:57'),
(95, 'D095', '2019-05-14 14:07:57'),
(96, 'D096', '2019-05-14 14:07:57'),
(97, 'D097', '2019-05-14 14:07:57'),
(98, 'D098', '2019-05-14 14:07:57'),
(99, 'D099', '2019-05-14 14:07:57'),
(100, 'D100', '2019-05-14 14:18:19'),
(101, 'D101', '2019-05-14 14:18:19'),
(102, 'D102', '2019-05-14 14:19:37'),
(103, 'D103', '2019-05-14 14:19:37'),
(104, 'D104', '2019-05-14 14:22:06'),
(105, 'D105', '2019-05-14 14:22:06'),
(106, 'D106', '2019-05-14 14:22:06'),
(107, 'D107', '2019-05-14 14:22:06'),
(108, 'D108', '2019-05-14 14:22:06'),
(109, 'D109', '2019-05-14 14:22:06'),
(110, 'D110', '2019-05-14 14:22:06'),
(111, 'D111', '2019-05-14 14:22:06'),
(112, 'D112', '2019-05-14 14:22:06'),
(113, 'D113', '2019-05-14 14:22:06'),
(114, 'D114', '2019-05-14 14:22:06'),
(115, 'D115', '2019-05-14 14:22:06'),
(116, 'D116', '2019-05-14 14:22:06'),
(117, 'D117', '2019-05-14 14:22:06'),
(118, 'D118', '2019-05-14 14:22:06'),
(119, 'D119', '2019-05-14 14:22:06'),
(120, 'D120', '2019-05-14 14:22:06'),
(121, 'D121', '2019-05-14 14:22:06'),
(122, 'D122', '2019-05-14 14:22:06'),
(123, 'D123', '2019-05-14 14:22:06'),
(124, 'D124', '2019-05-14 14:22:06'),
(125, 'D125', '2019-05-14 14:22:06'),
(126, 'D126', '2019-05-14 14:22:06'),
(127, 'D127', '2019-05-14 14:22:06'),
(128, 'D128', '2019-05-14 14:22:06'),
(129, 'D129', '2019-05-14 14:22:06'),
(130, 'D130', '2019-05-14 14:22:06'),
(131, 'D131', '2019-05-14 14:22:06'),
(132, 'D132', '2019-05-14 14:22:06'),
(133, 'D133', '2019-05-14 14:22:06'),
(134, 'D134', '2019-05-14 14:22:06'),
(135, 'D135', '2019-05-14 14:22:06'),
(136, 'D136', '2019-05-14 14:22:06'),
(137, 'D-1*', '2019-05-14 16:55:27'),
(138, 'D-2*', '2019-05-14 16:55:27'),
(139, 'D-3*', '2019-05-14 16:55:27'),
(140, 'D-4*', '2019-05-14 16:55:27'),
(141, 'D-5*', '2019-05-14 16:55:27'),
(142, 'D-6*', '2019-05-14 16:55:27'),
(143, 'D-7*', '2019-05-14 16:55:27'),
(144, 'D-8*', '2019-05-14 16:55:27'),
(145, 'D-9*', '2019-05-14 16:55:27'),
(146, 'D-10*', '2019-05-14 16:55:27'),
(147, 'D-11*', '2019-05-14 16:55:27'),
(148, 'D-12*', '2019-05-14 16:55:27'),
(149, 'D-13*', '2019-05-14 16:55:27'),
(150, 'D-14*', '2019-05-14 16:55:27'),
(151, 'D-15*', '2019-05-14 16:55:27'),
(152, 'D-16*', '2019-05-14 16:55:27'),
(153, 'D-17*', '2019-05-14 16:55:27'),
(154, 'D-18*', '2019-05-14 16:55:27'),
(155, 'D-19*', '2019-05-14 16:55:27'),
(156, 'D-20*', '2019-05-14 16:55:27'),
(157, 'Storage', '2019-05-15 16:26:49'),
(158, 'Electrical Room', '2019-05-15 16:26:49'),
(159, 'IT Office', '2019-05-15 16:26:49');

-- --------------------------------------------------------

--
-- Table structure for table `asset_site`
--

CREATE TABLE `asset_site` (
  `id` int(11) NOT NULL,
  `SiteName` varchar(255) NOT NULL,
  `Date_Created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `asset_site`
--

INSERT INTO `asset_site` (`id`, `SiteName`, `Date_Created`) VALUES
(1, 'The Link', '2019-05-08 18:56:04');

-- --------------------------------------------------------

--
-- Table structure for table `asset_status`
--

CREATE TABLE `asset_status` (
  `id` int(11) NOT NULL,
  `AssetStatus` varchar(255) NOT NULL,
  `DateCreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `asset_status`
--

INSERT INTO `asset_status` (`id`, `AssetStatus`, `DateCreated`) VALUES
(1, 'Spare', '2019-05-08 19:17:00'),
(2, 'Deployed', '2019-05-08 19:17:00'),
(3, 'Defective', '2019-05-08 19:17:00'),
(4, 'Disposed', '2019-05-08 19:17:00'),
(5, 'For Warranty', '2019-05-21 15:37:26');

-- --------------------------------------------------------

--
-- Table structure for table `asset_storagedevice`
--

CREATE TABLE `asset_storagedevice` (
  `ID` int(3) NOT NULL,
  `Brand` varchar(255) NOT NULL,
  `Model` varchar(255) NOT NULL,
  `SerialNumber` varchar(255) NOT NULL,
  `Capacity` int(3) NOT NULL,
  `Location` varchar(255) NOT NULL,
  `MicrostatusTicket` varchar(255) NOT NULL,
  `AddedBy` varchar(255) NOT NULL,
  `DateUpdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Status` varchar(255) DEFAULT NULL,
  `Remarks` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `asset_storagedevice`
--

INSERT INTO `asset_storagedevice` (`ID`, `Brand`, `Model`, `SerialNumber`, `Capacity`, `Location`, `MicrostatusTicket`, `AddedBy`, `DateUpdated`, `Status`, `Remarks`) VALUES
(1, 'Seagate', 'ST35004131', 'S2A3KWKA', 500, 'Server Room', 'OP300304', 'Arjay Cobarde', '2019-07-02 05:23:03', 'Deployed', 'Updated Location'),
(2, 'Western Digital', 'WD3200AAJS', 'WMAV2HV43078', 320, 'Server Room', '', 'Arjay Cobarde', '2019-07-02 07:22:33', 'Spare', ''),
(3, 'Western Digital', 'WD3200AAJS', 'WMAV2HU92541', 320, 'Server Room', '', 'Arjay Cobarde', '2019-07-02 07:24:49', 'Spare', ''),
(4, 'Hitachi', 'HDS721050CLA662', 'JP1572FN0DM4AK', 500, 'LINK14FDESKIT25189', '', 'Arjay Cobarde', '2019-07-03 02:29:22', 'Deployed', ''),
(5, 'Seagate', 'ST3500413AS', 'W2A6QMEL', 500, 'Server Room', '', 'Arjay Cobarde', '2019-07-08 18:09:36', 'Spare', '-Pull out from Admin PC Nina and Kim last 7/9/2019 - Arjay');

-- --------------------------------------------------------

--
-- Table structure for table `asset_type`
--

CREATE TABLE `asset_type` (
  `id` int(11) NOT NULL,
  `AssetType` varchar(255) NOT NULL,
  `DateCreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `asset_type`
--

INSERT INTO `asset_type` (`id`, `AssetType`, `DateCreated`) VALUES
(1, 'Keyboard', '2019-05-08 19:08:08'),
(2, 'Mouse', '2019-05-08 19:08:08'),
(3, 'Headset', '2019-05-14 18:59:12');

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `id` int(11) NOT NULL,
  `client_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`id`, `client_name`) VALUES
(1, 'Microsourcing'),
(2, 'Eagleview');

-- --------------------------------------------------------

--
-- Table structure for table `floor`
--

CREATE TABLE `floor` (
  `ID` int(11) NOT NULL,
  `Floor` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `floor`
--

INSERT INTO `floor` (`ID`, `Floor`) VALUES
(1, '14F');

-- --------------------------------------------------------

--
-- Table structure for table `msassets`
--

CREATE TABLE `msassets` (
  `ID` int(11) NOT NULL,
  `Site` varchar(255) NOT NULL,
  `Department` varchar(255) NOT NULL,
  `DataPort` varchar(255) NOT NULL,
  `AssetType` varchar(255) NOT NULL,
  `BundledCPU` varchar(255) NOT NULL,
  `Brand` varchar(255) NOT NULL,
  `Model` varchar(255) NOT NULL,
  `SerialNumber` varchar(255) NOT NULL,
  `Status` varchar(255) NOT NULL,
  `Ownership` varchar(255) NOT NULL,
  `OwnershipClientName` varchar(255) NOT NULL,
  `MicrostatusTicket` text NOT NULL,
  `PONumber` text NOT NULL,
  `PODate` date NOT NULL,
  `DeliveryDate` date NOT NULL,
  `VendorName` varchar(255) NOT NULL,
  `WarrantyStartDate` date NOT NULL,
  `WarrantyEndDate` date NOT NULL,
  `DateAdded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `AddedBy` varchar(255) NOT NULL,
  `DeployedBy` varchar(255) NOT NULL,
  `DateUpdated` date NOT NULL,
  `UpdatedBy` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `msassets`
--

INSERT INTO `msassets` (`ID`, `Site`, `Department`, `DataPort`, `AssetType`, `BundledCPU`, `Brand`, `Model`, `SerialNumber`, `Status`, `Ownership`, `OwnershipClientName`, `MicrostatusTicket`, `PONumber`, `PODate`, `DeliveryDate`, `VendorName`, `WarrantyStartDate`, `WarrantyEndDate`, `DateAdded`, `AddedBy`, `DeployedBy`, `DateUpdated`, `UpdatedBy`) VALUES
(1, 'The Link', '14F', 'Storage', 'Keyboard', '', '', '', 'BEXHP0CCPAP6J3', 'Spare', 'MicroSourcing', '', '0', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(2, 'The Link', '14F', 'D-8*', 'Keyboard', '', '', '', 'BEXHP0CCPAP6J2', 'Deployed', 'MicroSourcing', '', 'None_UsedByArjay', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', 'Arjay Cobarde', '2019-01-01', ''),
(3, 'The Link', '14F', 'D119', 'Keyboard', '', '', '', 'BEXHP0CCPAP6J9', 'Deployed', 'MicroSourcing', '', 'OP358118', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(4, 'The Link', '14F', 'D025', 'Keyboard', '', '', '', 'BEXHP0CCPAP6J4', 'Deployed', 'MicroSourcing', '', 'OP299018', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(5, 'The Link', '14F', 'Storage', 'Keyboard', '', '', '', 'BEXHP0CCPAP6J8', 'Spare', 'MicroSourcing', '', '0', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(6, 'The Link', '14F', 'Storage', 'Keyboard', '', '', '', 'BEXHP0CCPAP6J6', 'Spare', 'MicroSourcing', '', '0', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(7, 'The Link', '14F', 'Storage', 'Keyboard', '', '', '', 'BEXHP0CCPAP6J5', 'Spare', 'MicroSourcing', '', '0', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(8, 'The Link', '14F', 'Storage', 'Keyboard', '', '', '', 'BEXHP0CCPAP6J7', 'Spare', 'MicroSourcing', '', '0', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(9, 'The Link', '14F', 'Storage', 'Keyboard', '', '', '', 'BEXHP0CCPAP8JL', 'For Warranty', 'MicroSourcing', '', 'OP303950,OP369532', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', 'Arjay Cobarde', '2019-06-26', ''),
(10, 'The Link', '14F', 'Storage', 'Keyboard', '', '', '', 'BEXHP0CCPAP8JN', 'Spare', 'MicroSourcing', '', '0', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(11, 'The Link', '14F', 'D055', 'Keyboard', '', '', '', 'BEXHP0CCPAP8JM', 'Deployed', 'MicroSourcing', '', 'OP369532', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', 'Arjay Cobarde', '2019-06-26', ''),
(12, 'The Link', '14F', 'D132', 'Keyboard', '', '', '', 'BEXHP0CCPAP8J0', 'Deployed', 'MicroSourcing', '', 'OP286604', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(13, 'The Link', '14F', 'Storage', 'Keyboard', '', '', '', 'BEXHP0CCPAP8JG', 'Spare', 'MicroSourcing', '', '0', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(14, 'The Link', '14F', 'D045', 'Keyboard', '', '', '', 'BEXHP0CCPAP8JF', 'Deployed', 'MicroSourcing', '', 'OP311337', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(15, 'The Link', '14F', 'D058', 'Keyboard', '', '', '', 'BEXHP0CCPAP8JP', 'Deployed', 'MicroSourcing', '', 'OP338693', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(16, 'The Link', '14F', 'D055', 'Keyboard', 'SGH817RFCV', '', '', 'BEXHP0CCOAO8JI', 'Deployed', 'MicroSourcing', '', 'OP311334', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(17, 'The Link', '14F', 'D068', 'Keyboard', 'SGH817RFCY', '', '', 'BEXHP0CCPAP8JJ', 'Deployed', 'MicroSourcing', '', 'OP311141', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(18, 'The Link', '14F', 'D001', 'Keyboard', 'SGH817RFCS', '', '', 'BEXHP0CCPAP8JH', 'Deployed', 'MicroSourcing', '', 'OP307746', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(19, 'The Link', '14F', 'Storage', 'Keyboard', 'SGH817RFBZ', '', '', 'BEXHP0CCPAP8KT', 'Spare', 'MicroSourcing', '', '0', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(20, 'The Link', '14F', 'D001', 'Keyboard', 'SGH817RFC2', '', '', 'BEXHP0CCPAP8KU', 'Deployed', 'MicroSourcing', '', 'OP338333', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(21, 'The Link', '14F', 'D131', 'Keyboard', 'SGH817RFC0', '', '', 'BEXHP0CCPAP8KV', 'Deployed', 'MicroSourcing', '', 'OP300912', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(22, 'The Link', '14F', 'D125', 'Keyboard', 'SGH817RFCX', '', '', 'BEXHP0CCPAP8KW', 'Deployed', 'MicroSourcing', '', 'OP298286', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(23, 'The Link', '14F', 'Storage', 'Keyboard', 'SGH817RFD3', '', '', 'BEXHP0CCPAP8KX', 'Spare', 'MicroSourcing', '', '0', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(24, 'The Link', '14F', 'Storage', 'Keyboard', 'SGH817RFD4', '', '', 'BEXHP0CCPAP8L1', 'Spare', 'MicroSourcing', '', '0', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(25, 'The Link', '14F', 'D126', 'Keyboard', 'SGH817RFCN', '', '', 'BEXHP0CCPAP8L2', 'Deployed', 'MicroSourcing', '', 'OP345462', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(26, 'The Link', '14F', 'D042', 'Keyboard', 'SGH817RFD0', '', '', 'BEXHP0CCPAP8L0', 'Deployed', 'MicroSourcing', '', 'OP329017', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(27, 'The Link', '14F', 'D065', 'Keyboard', 'SGH817RFD1', '', '', 'BEXHP0CCPAP8KZ', 'Deployed', 'MicroSourcing', '', 'OP334559', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(28, 'The Link', '14F', 'Storage', 'Keyboard', 'SGH817RFD5', '', '', 'BEXHP0CCPAP8KY', 'Spare', 'MicroSourcing', '', '0', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(29, 'The Link', '14F', 'D065', 'Keyboard', 'SGH817RFD6', '', '', 'BEXHP0CCPAP6IS', 'Deployed', 'MicroSourcing', '', 'OP335474', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(30, 'The Link', '14F', 'D038', 'Keyboard', 'SGH817RFCQ', '', '', 'BEXHP0CCPAP6IR', 'Deployed', 'MicroSourcing', '', 'OP320591', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(31, 'The Link', '14F', 'Storage', 'Keyboard', 'SGH817RFCC', '', '', 'BEXHP0CCPAP6J0', 'Spare', 'MicroSourcing', '', '0', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(32, 'The Link', '14F', 'D110', 'Keyboard', 'SGH817RFCD', '', '', 'BEXHP0CCPAP6IZ', 'Deployed', 'MicroSourcing', '', 'OP301896', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(33, 'The Link', '14F', 'D122', 'Keyboard', 'SGH817RFCF', '', '', 'BEXHP0CCPAP6IY', 'Deployed', 'MicroSourcing', '', 'OP355493', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(34, 'The Link', '14F', 'D128', 'Keyboard', 'SGH817RFD7', '', '', 'BEXHP0CCPAP0FA', 'Deployed', 'MicroSourcing', '', 'OP364097', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', 'Arjay Cobarde', '2019-06-05', ''),
(35, 'The Link', '14F', 'D001', 'Keyboard', 'SGH817RFCR', '', '', 'BEXHP0CCPAP6IU', 'Deployed', 'MicroSourcing', '', 'NoTicket', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(36, 'The Link', '14F', 'D084', 'Keyboard', 'SGH817RFC9', '', '', 'BEXHP0CCPAP8JW', 'Deployed', 'MicroSourcing', '', 'OP349410', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(37, 'The Link', '14F', 'D119', 'Keyboard', 'SGH817RFCW', '', '', 'BEXHP0CCPAP8JX', 'Deployed', 'MicroSourcing', '', 'OP305859', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(38, 'The Link', '14F', 'D001', 'Keyboard', 'SGH817RFD8', '', '', 'BEXHP0CCPAP8JZ', 'Deployed', 'MicroSourcing', '', 'Noticket', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(39, 'The Link', '14F', 'D113', 'Keyboard', 'SGH817RFD2', '', '', 'BEXHP0CCPAP8JV', 'Deployed', 'MicroSourcing', '', 'OP355421', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(40, 'The Link', '14F', 'D077', 'Keyboard', 'SGH817RFD9', '', '', 'BEXHP0CCPAP8JY', 'Deployed', 'MicroSourcing', '', 'OP294348', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(41, 'The Link', '14F', 'D136', 'Keyboard', 'SGH817RFCP', '', '', 'BEXHP0CCPAP8DX', 'Deployed', 'MicroSourcing', '', 'OP298381', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(42, 'The Link', '14F', 'D050', 'Keyboard', 'SGH817RFCB', '', '', 'BEXHP0CCPAP6FH', 'Deployed', 'MicroSourcing', '', 'OP369531', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', 'Arjay Cobarde', '2019-06-26', ''),
(43, 'The Link', '14F', 'D114', 'Mouse', 'SGH817RFC3', '', '', 'FCMHH0AKZAND5M', 'Deployed', 'MicroSourcing', '', 'OP330065', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(44, 'The Link', '14F', 'D063', 'Mouse', 'SGH817RFC4', '', '', 'FCMHH0AKZAND5U', 'Deployed', 'MicroSourcing', '', 'OP304332', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(45, 'The Link', '14F', 'D060', 'Mouse', 'SGH817RFCG', '', '', 'FCMHH0AKZAND60', 'Deployed', 'MicroSourcing', '', 'OP295067', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(46, 'The Link', '14F', 'D011', 'Mouse', 'SGH817RFCH', '', '', 'FCMHH0AKZAND5R', 'Deployed', 'MicroSourcing', '', 'OP287385', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(47, 'The Link', '14F', 'D054', 'Mouse', 'SGH817RFCL', '', '', 'FCMHH0AKZAND5O', 'Deployed', 'MicroSourcing', '', 'OP336663,OP361422,OP365692', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', 'Arjay Cobarde', '2019-06-11', ''),
(48, 'The Link', '14F', 'D-13*', 'Mouse', 'SGH817RFCM', '', '', 'FCMHH0AKZAND5H', 'Deployed', 'MicroSourcing', '', 'Deployed To Cielo', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(49, 'The Link', '14F', 'D063', 'Mouse', 'SGH817RFC5', '', '', 'FCMHH0AKZAND5A', 'Deployed', 'MicroSourcing', '', 'OP335928', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(50, 'The Link', '14F', 'D015', 'Mouse', 'SGH817RFC6', '', '', 'FCMHH0AKZAND5J', 'Deployed', 'MicroSourcing', '', 'OP287385', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(51, 'The Link', '14F', 'D-4*', 'Mouse', 'SGH817RFCJ', '', '', 'FCMHH0AKZAND5G', 'Deployed', 'MicroSourcing', '', 'cebuitsd002', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(52, 'The Link', '14F', 'D091', 'Mouse', 'SGH817RFCK', '', '', 'FCMHH0AKZAND64', 'Deployed', 'MicroSourcing', '', 'OP328236', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(53, 'The Link', '14F', 'D003', 'Mouse', 'SGH817RFC7', '', '', 'FCMHH0AKZAND61', 'Deployed', 'MicroSourcing', '', 'OP289858', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(54, 'The Link', '14F', 'D132', 'Mouse', 'SGH817RFC8', '', '', 'FCMHH0AKZAND6A', 'Deployed', 'MicroSourcing', '', 'OP294402', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(55, 'The Link', '14F', 'D075', 'Mouse', 'SGH817RFC1', '', '', 'FCMHH0AKZAND20', 'Deployed', 'MicroSourcing', '', 'OP325498', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(56, 'The Link', '14F', 'D109', 'Mouse', 'SGH817RFCZ', '', '', 'FCMHH0AKZAND67', 'Deployed', 'MicroSourcing', '', 'OP338987', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(57, 'The Link', '14F', 'D044', 'Mouse', 'SGH817RFCT', '', '', 'FCMHH0AKZAND5B', 'Deployed', 'MicroSourcing', '', 'OP286309', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(58, 'The Link', '14F', 'IT Office', 'Mouse', 'SGH817RFCV', '', '', 'FCMMH0AKZAND69', 'Spare', 'MicroSourcing', '', 'OP320519,OP365905', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', 'Arjay Cobarde', '2019-06-12', ''),
(59, 'The Link', '14F', 'D127', 'Mouse', 'SGH817RFCY', '', '', 'FCMHH0AKZAND5V', 'Deployed', 'MicroSourcing', '', 'OP340304', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(60, 'The Link', '14F', 'Storage', 'Mouse', 'SGH817RFCS', '', '', 'FCMHH0AKZAND5F', 'Spare', 'MicroSourcing', '', '0', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(61, 'The Link', '14F', 'D002', 'Mouse', 'SGH817RFBZ', '', '', 'FCMHH0AKZAND6B', 'Deployed', 'MicroSourcing', '', 'OP355755', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(62, 'The Link', '14F', 'D-8*', 'Mouse', 'SGH817RFC2', '', '', 'FCMHH0AKZAND5C', 'Deployed', 'MicroSourcing', '', 'ID PRINTER', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(63, 'The Link', '14F', 'D061', 'Mouse', 'SGH817RFC0', '', '', 'FCMHH0AKZAND5E', 'Deployed', 'MicroSourcing', '', 'IN338732', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(64, 'The Link', '14F', 'D-2*', 'Mouse', 'SGH817RFCX', '', '', 'FCMHH0AKZAND52', 'Deployed', 'MicroSourcing', '', 'Sir Jason', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(65, 'The Link', '14F', 'D115', 'Mouse', 'SGH817RFD3', '', '', 'FCMHH0AKZAND65', 'Deployed', 'MicroSourcing', '', 'OP306468', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(66, 'The Link', '14F', 'D113', 'Mouse', 'SGH817RFD4', '', '', 'FCMHH0AKZAND66', 'Deployed', 'MicroSourcing', '', 'OP321819', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(67, 'The Link', '14F', 'D071', 'Mouse', 'SGH817RFCN', '', '', 'FCMHH0AKZAND53', 'Deployed', 'MicroSourcing', '', 'OP294725', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(68, 'The Link', '14F', 'D122', 'Mouse', 'SGH817RFD0', '', '', 'FCMHH0AKZAND5S', 'Deployed', 'MicroSourcing', '', 'OP298819', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(69, 'The Link', '14F', 'D067', 'Mouse', 'SGH817RFD1', '', '', 'FCMHH0AKZAND62', 'Deployed', 'MicroSourcing', '', 'OP332318', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(70, 'The Link', '14F', 'D023', 'Mouse', 'SGH817RFD5', '', '', 'FCMMH0AKZAND68', 'Deployed', 'MicroSourcing', '', 'OP319069', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(71, 'The Link', '14F', 'D105', 'Mouse', 'SGH817RFD6', '', '', 'FCMHH0AKZND6H', 'Deployed', 'MicroSourcing', '', 'OP294652', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(72, 'The Link', '14F', 'D136', 'Mouse', 'SGH817RFCQ', '', '', 'FCMMH0AKZAND6E', 'Deployed', 'MicroSourcing', '', 'OP298381', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(73, 'The Link', '14F', 'D128', 'Mouse', 'SGH817RFCC', '', '', 'FCMHH0AKZAND5L', 'Deployed', 'MicroSourcing', '', 'OP298972', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(74, 'The Link', '14F', 'D116', 'Mouse', 'SGH817RFCD', '', '', 'FCMHH0AKZAND63', 'Deployed', 'MicroSourcing', '', 'OP308938', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(75, 'The Link', '14F', 'D012', 'Mouse', 'SGH817RFCF', '', '', 'FCMHH0AKZAND5I', 'Deployed', 'MicroSourcing', '', 'OP287385', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(76, 'The Link', '14F', 'D080', 'Mouse', 'SGH817RFD7', '', '', 'FCMHH0AAKZAND5N', 'Deployed', 'MicroSourcing', '', 'OP323821', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(77, 'The Link', '14F', 'Storage', 'Mouse', 'SGH817RFCR', '', '', 'FCMHH0AKZAND6G', 'Spare', 'MicroSourcing', '', 'OP359736', '10004795', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', 'Arjay Cobarde', '2019-06-06', ''),
(78, 'The Link', '14F', 'D014', 'Mouse', 'SGH817RFC9', '', '', 'FCMHH0AKZAND59', 'Deployed', 'MicroSourcing', '', 'OP287388', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(79, 'The Link', '14F', 'D019', 'Mouse', 'SGH817RFCW', '', '', 'FCMHH0AKZAND6I', 'Deployed', 'MicroSourcing', '', 'OP311248', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(80, 'The Link', '14F', 'D-12*', 'Mouse', 'SGH817RFD8', '', '', 'FCMHH0AKZAND5P', 'Deployed', 'MicroSourcing', '', 'Ms Nina', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(81, 'The Link', '14F', 'D013', 'Mouse', 'SGH817RFD2', '', '', 'FCMHH0AKZAND5Y', 'Deployed', 'MicroSourcing', '', 'OP287385', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(82, 'The Link', '14F', 'D124', 'Mouse', 'SGH817RFD9', '', '', 'FCMHH0AKZAND5K', 'Deployed', 'MicroSourcing', '', 'OP283256', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(83, 'The Link', '14F', 'D128', 'Mouse', 'SGH817RFCP', '', '', 'FCMHH0AKZAND5Z', 'Deployed', 'MicroSourcing', '', 'IN310323', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(84, 'The Link', '14F', 'D107', 'Mouse', 'SGH817RFCB', '', '', 'FCMHH0AKZAND6F', 'Deployed', 'MicroSourcing', '', 'OP313753', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(85, 'The Link', '14F', 'Storage', 'Mouse', '0', '', '', 'FCMHH0CQWAIE1Q', 'Spare', 'MicroSourcing', '', '0', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(86, 'The Link', '14F', 'D037', 'Mouse', '0', '', '', 'FCMHH0CQWAIE1Y', 'Deployed', 'MicroSourcing', '', 'OP366688', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', 'Arjay Cobarde', '2019-06-15', ''),
(87, 'The Link', '14F', 'D046', 'Mouse', '0', '', '', 'FCMHH0CQWAIE1M', 'Deployed', 'MicroSourcing', '', 'OP365905', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', 'Arjay Cobarde', '2019-06-19', ''),
(88, 'The Link', '14F', 'Storage', 'Mouse', '0', '', '', 'FCMHH0CQWAIE1L', 'Spare', 'MicroSourcing', '', '0', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(89, 'The Link', '14F', 'Storage', 'Mouse', '0', '', '', 'FCMHH0CQWAIE1X', 'Spare', 'MicroSourcing', '', '0', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(90, 'The Link', '14F', 'D092', 'Mouse', '0', '', '', 'FCMHH0CQWAIE2X', 'Deployed', 'MicroSourcing', '', 'OP374892', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', 'Arjay Cobarde', '2019-07-16', ''),
(91, 'The Link', '14F', 'Storage', 'Mouse', '0', '', '', 'FCMHH0CQWAIE2H', 'Spare', 'MicroSourcing', '', '0', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(92, 'The Link', '14F', 'Storage', 'Mouse', '0', '', '', 'FCMHH0CQWAIDKO', 'Spare', 'MicroSourcing', '', '0', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(93, 'The Link', '14F', 'D044', 'Mouse', '0', '', '', 'FCMHH0CQWAIE1N', 'Deployed', 'MicroSourcing', '', 'OP365730', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', 'Arjay Cobarde', '2019-06-12', ''),
(94, 'The Link', '14F', 'D051', 'Mouse', '0', '', '', 'FCMHH0CQWAIE1O', 'Deployed', 'MicroSourcing', '', 'OP364705', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', 'Arjay Cobarde', '2019-05-31', ''),
(95, 'The Link', '14F', 'D076', 'Mouse', '0', '', '', 'FCMHH0CQWAIE1U', 'Deployed', 'MicroSourcing', '', 'IN360754', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(96, 'The Link', '14F', 'Storage', 'Mouse', '0', '', '', 'FCMHH0CQWAIE20', 'Spare', 'MicroSourcing', '', '0', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(97, 'The Link', '14F', 'D-14*', 'Mouse', '0', '', '', 'FCMHH0CQWAIE22', 'Deployed', 'MicroSourcing', '', 'IN360754', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', 'Arjay Cobarde', '2019-05-31', ''),
(98, 'The Link', '14F', 'Storage', 'Mouse', '0', '', '', 'FCMHH0CQWAIE2N', 'Spare', 'MicroSourcing', '', '0', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(99, 'The Link', '14F', 'Storage', 'Mouse', '0', '', '', 'FCMHH0CQWAIE2V', 'Spare', 'MicroSourcing', '', '0', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(100, 'The Link', '14F', 'D070', 'Mouse', '0', '', '', 'FCMHH0CQWAIE2O', 'Deployed', 'MicroSourcing', '', 'OP361361', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', 'Arjay Cobarde', '0000-00-00', 'Arjay Cobarde'),
(101, 'The Link', '14F', 'D114', 'Mouse', '0', '', '', 'FCMHH0CQWAIE1T', 'Deployed', 'MicroSourcing', '', 'OP361422', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', 'Arjay Cobarde', '2019-05-25', ''),
(102, 'The Link', '14F', 'D112', 'Mouse', '0', '', '', 'FCMHH0CQWAIE1W', 'Deployed', 'MicroSourcing', '', 'OP344717', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(103, 'The Link', '14F', 'Storage', 'Mouse', '0', '', '', 'FCMHH0CQWAIE1R', 'Spare', 'MicroSourcing', '', '0', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(104, 'The Link', '14F', 'Storage', 'Mouse', '0', '', '', 'FCMHH0CQWAIE1S', 'Spare', 'MicroSourcing', '', '0', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(105, 'The Link', '14F', 'Storage', 'Mouse', '0', '', '', 'FCMHH0CQWAIE25', 'Spare', 'MicroSourcing', '', '0', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(106, 'The Link', '14F', 'Storage', 'Mouse', '0', '', '', 'FCMHH0CQWAIE26', 'Spare', 'MicroSourcing', '', '0', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(107, 'The Link', '14F', 'Storage', 'Mouse', '0', '', '', 'FCMHH0CQWAIE2U', 'Spare', 'MicroSourcing', '', '0', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(108, 'The Link', '14F', 'Storage', 'Mouse', '0', '', '', 'FCMHH0CQWAIE2S', 'Spare', 'MicroSourcing', '', '0', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(109, 'The Link', '14F', 'D014', 'Mouse', '0', '', '', 'FCMHH0CQWAIE21', 'Deployed', 'MicroSourcing', '', 'OP342406', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(110, 'The Link', '14F', 'D033', 'Mouse', '0', '', '', 'FCMHH0CQWAIE24', 'Deployed', 'MicroSourcing', '', 'OP358170', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(111, 'The Link', '14F', 'IT Office', 'Mouse', '0', '', '', 'FCMHH0CQWAIE2K', 'Spare', 'MicroSourcing', '', 'OP505556,OP358956,OP364675', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', 'Arjay Cobarde', '2019-06-17', ''),
(112, 'The Link', '14F', 'Storage', 'Mouse', '0', '', '', 'FCMHH0CQWAIE2G', 'Spare', 'MicroSourcing', '', '0', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(113, 'The Link', '14F', 'D083', 'Mouse', '0', '', '', 'FCMHH0CQWAIE2D', 'Deployed', 'MicroSourcing', '', 'OP35720', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(114, 'The Link', '14F', 'D-7*', 'Mouse', '0', '', '', 'FCMHH0CQWAIE2E', 'Deployed', 'MicroSourcing', '', 'OP352973', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(115, 'The Link', '14F', 'D123', 'Mouse', '0', '', '', 'FCMHH0CQWAIE2L', 'Deployed', 'MicroSourcing', '', 'OP343341', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', 'Arjay Cobarde', '2019-06-12', ''),
(116, 'The Link', '14F', 'D063', 'Mouse', '0', '', '', 'FCMHH0CQWAIE2W', 'Deployed', 'MicroSourcing', '', 'OP352799', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(117, 'The Link', '14F', 'D071', 'Mouse', '0', '', '', 'FCMHH0CQWAIE2Y', 'Deployed', 'MicroSourcing', '', 'OP349996', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(118, 'The Link', '14F', 'D117', 'Mouse', '0', '', '', 'FCMHH0CQWAIE2R', 'Deployed', 'MicroSourcing', '', 'OP359736', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(119, 'The Link', '14F', 'D110', 'Mouse', '0', '', '', 'FCMHH0CQWAIE2T', 'Deployed', 'MicroSourcing', '', 'OP355417', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(120, 'The Link', '14F', 'D026', 'Mouse', '0', '', '', 'FCMHH0CQWAIE2A', 'Deployed', 'MicroSourcing', '', 'OP358956', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(121, 'The Link', '14F', 'D039', 'Mouse', '0', '', '', 'FCMHH0CQWAIE2M', 'Deployed', 'MicroSourcing', '', 'OP344129', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(122, 'The Link', '14F', 'Storage', 'Mouse', '0', '', '', 'FCMHH0CQWAIE1V', 'Spare', 'MicroSourcing', '', 'NoTicket', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', 'Arjay Cobarde', '2018-05-25', ''),
(123, 'The Link', '14F', 'D012', 'Mouse', '0', '', '', 'FCMHH0CQWAIE1Z', 'Deployed', 'MicroSourcing', '', 'OP353134', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(124, 'The Link', '14F', 'D098', 'Mouse', '0', '', '', 'FCMHH0CQWAIE2I', 'Deployed', 'MicroSourcing', '', 'OP344017', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(125, 'The Link', '14F', 'D003', 'Mouse', '0', '', '', 'FCMHH0CQWAIE1P', 'Deployed', 'MicroSourcing', '', 'OP349876', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(126, 'The Link', '14F', 'D134', 'Mouse', '0', '', '', 'FCMHH0CQWAIE27', 'Deployed', 'MicroSourcing', '', 'OP346034', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(127, 'The Link', '14F', 'D125', 'Headset', '0', '', '', 'MSCEBHS017', 'Deployed', 'MicroSourcing', '', 'OP303663', '10004238', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(128, 'The Link', '14F', 'Storage', 'Headset', '0', '', '', 'MSCEBHS018', 'Spare', 'MicroSourcing', '', '0', '10004238', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(129, 'The Link', '14F', 'D-6*', 'Headset', '0', '', '', 'MSCEBHS019', 'Deployed', 'MicroSourcing', '', 'Ticket5222019', '10004238', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(130, 'The Link', '14F', 'Storage', 'Headset', '0', '', '', 'MSCEBHS020', 'Spare', 'MicroSourcing', '', '0', '10004238', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(131, 'The Link', '14F', 'Storage', 'Headset', '0', '', '', 'MSCEBHS021', 'Spare', 'MicroSourcing', '', '0', '10004238', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(132, 'The Link', '14F', 'Storage', 'Headset', '0', '', '', 'MSCEBHS022', 'Spare', 'MicroSourcing', '', '0', '10004238', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(133, 'The Link', '14F', 'Storage', 'Headset', '0', '', '', 'MSCEBHS023', 'Spare', 'MicroSourcing', '', '0', '10004238', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(134, 'The Link', '14F', 'Storage', 'Headset', '0', '', '', 'MSCEBHS024', 'Spare', 'MicroSourcing', '', '0', '10004238', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(135, 'The Link', '14F', 'Storage', 'Headset', '0', '', '', 'MSCEBHS025', 'Spare', 'MicroSourcing', '', '0', '10004238', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(136, 'The Link', '14F', 'Storage', 'Headset', '0', '', '', 'MSCEBHS026', 'Spare', 'MicroSourcing', '', '0', '10004238', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(137, 'The Link', '14F', 'D094', 'Monitor', '', 'HP', 'ProDispay P232', '6CM9041QL6', 'Deployed', 'MicroSourcing', '', 'OP356846', '10005459', '2019-03-22', '2019-05-04', '', '2019-04-04', '2022-05-23', '2019-05-25 00:28:22', '', '', '0000-00-00', ''),
(138, 'The Link', '14F', 'D016', 'Monitor', '', 'HP', 'ProDisplay P232', '6CM9041RBS', 'Deployed', 'MicroSourcing', '', 'none', '10005459', '2019-03-22', '2019-05-04', '', '2019-04-04', '2022-05-23', '2019-05-25 00:28:22', '', '', '0000-00-00', ''),
(139, 'The Link', '14F', 'D089', 'Monitor', '', 'HP', 'ProDisplay P232', '6CM9041RBL', 'Deployed', 'MicroSourcing', '', 'OP359816', '10005459', '2019-03-22', '2019-05-04', '', '2019-04-04', '2022-05-23', '2019-05-25 00:28:22', '', '', '0000-00-00', ''),
(140, 'The Link', '14F', 'D019', 'Monitor', '', 'HP', 'ProdDisplay P232', '6CM9041R38', 'Deployed', 'MicroSourcing', '', 'OP361142', '10005459', '2019-03-22', '2019-05-04', '', '2019-04-04', '2022-05-23', '2019-05-25 00:28:22', '', '', '0000-00-00', ''),
(141, 'The Link', '14F', 'D045', 'Monitor', '', 'HP', 'ProDisplay P232', '6CM9041RBF', 'Deployed', 'MicroSourcing', '', 'none', '10005459', '2019-03-22', '2019-05-04', '', '2019-04-04', '2022-05-23', '2019-05-25 00:28:22', '', '', '0000-00-00', ''),
(142, 'The Link', '14F', 'D-5*', 'Monitor', '', 'HP', 'ProDisplay P232', '6CM9041RBQ', 'Deployed', 'MicroSourcing', '', 'none', '10005459', '2019-03-22', '2019-05-04', '', '2019-04-04', '2022-05-23', '2019-05-25 00:28:22', '', '', '0000-00-00', ''),
(143, 'The Link', '14F', 'D018', 'Monitor', '', 'HP', 'ProDisplay P232', '6CM9041RBN', 'Deployed', 'MicroSourcing', '', 'OP361369', '10005459', '2019-03-22', '2019-05-04', '', '2019-04-04', '2022-05-23', '2019-05-25 00:28:22', '', '', '0000-00-00', ''),
(144, 'The Link', '14F', 'D017', 'Monitor', '', 'HP', 'ProDisplay P232', '6CM9041R18', 'Deployed', 'MicroSourcing', '', 'OP361370', '10005459', '2019-03-22', '2019-05-04', '', '2019-04-04', '2022-05-23', '2019-05-25 00:28:22', '', '', '0000-00-00', ''),
(145, 'The Link', '14F', 'Storage', 'Monitor', '', 'HP', 'ProDisplay P232', '6CM9041RBP', 'Spare', 'MicroSourcing', '', 'none', '10005459', '2019-03-22', '2019-05-04', '', '2019-04-04', '2022-05-23', '2019-05-25 00:28:22', '', '', '0000-00-00', ''),
(146, 'The Link', '14F', 'Storage', 'Monitor', '', 'HP', 'ProDisplay P232', '6CM9041QTF', 'Spare', 'MicroSourcing', '', 'none', '10005459', '2019-03-22', '2019-05-04', '', '2019-04-04', '2022-05-23', '2019-05-25 00:28:22', '', '', '0000-00-00', ''),
(147, 'The Link', '14F', 'Storage', 'Monitor', '', 'HP', 'ProDisplay P232', '6CM9041QY7', 'Spare', 'MicroSourcing', '', 'none', '10005459', '2019-03-22', '2019-05-04', '', '2019-04-04', '2022-05-23', '2019-05-25 00:28:22', '', '', '0000-00-00', ''),
(148, 'The Link', '14F', 'Storage', 'Monitor', '', 'HP', 'ProDisplay P232', '6CM9041QY8', 'Spare', 'MicroSourcing', '', 'none', '10005459', '2019-03-22', '2019-05-04', '', '2019-04-04', '2022-05-23', '2019-05-25 00:28:22', '', 'Arjay Cobarde', '0001-01-01', ''),
(149, 'The Link', '14F', 'Storage', 'Monitor', '', 'HP', 'ProDisplay P232', '6CM9041RBR', 'Spare', 'MicroSourcing', '', 'none', '10005459', '2019-03-22', '2019-05-04', '', '2019-04-04', '2022-05-23', '2019-05-25 00:28:22', '', '', '0000-00-00', ''),
(150, 'The Link', '14F', 'Storage', 'Monitor', '', 'HP', 'ProDisplay P232', '6CM9041QYC', 'Spare', 'MicroSourcing', '', 'none', '10005459', '2019-03-22', '2019-05-04', '', '2019-04-04', '2022-05-23', '2019-05-25 00:28:22', '', '', '0000-00-00', ''),
(151, 'The Link', '14F', 'Storage', 'Monitor', '', 'HP', 'ProDisplay P232', '6CM9041QY9', 'Spare', 'MicroSourcing', '', 'none', '10005459', '2019-03-22', '2019-05-04', '', '2019-04-04', '2022-05-23', '2019-05-25 00:28:22', '', '', '0000-00-00', ''),
(153, 'The Link', '14F', 'IT Office', 'Keyboard', 'None', 'SampleBrand', 'SampleModel', 'SampleSerial', 'For Warranty', 'None', 'None', 'None222', '1012312312', '2019-11-02', '2019-11-09', 'none', '2019-11-02', '2019-11-23', '2019-11-02 01:40:39', 'Arjay Cobarde', 'Administrator', '2019-11-03', '');

-- --------------------------------------------------------

--
-- Stand-in structure for view `network_chart`
--
CREATE TABLE `network_chart` (
`ID` int(11)
,`Site` varchar(255)
,`client` varchar(255)
,`SelectISP` varchar(255)
,`Status` varchar(255)
,`select_circuit` varchar(255)
,`TicketID` varchar(255)
,`DateStarted` datetime
,`DateRestored` datetime
,`RFO` varchar(255)
,`PerformedBy` varchar(255)
,`Outage` bigint(21)
);

-- --------------------------------------------------------

--
-- Table structure for table `network_circuit`
--

CREATE TABLE `network_circuit` (
  `id` int(11) NOT NULL,
  `circuit_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `network_circuit`
--

INSERT INTO `network_circuit` (`id`, `circuit_id`) VALUES
(1, '446539'),
(2, 'NET1814-200M'),
(3, 'MPI77-112011-79030');

-- --------------------------------------------------------

--
-- Table structure for table `network_isp`
--

CREATE TABLE `network_isp` (
  `id` int(11) NOT NULL,
  `isp_provider` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `network_isp`
--

INSERT INTO `network_isp` (`id`, `isp_provider`) VALUES
(1, 'PLDT'),
(2, 'INFINIVAN'),
(3, 'GLOBE'),
(4, 'MASERGY');

-- --------------------------------------------------------

--
-- Table structure for table `network_outage`
--

CREATE TABLE `network_outage` (
  `ID` int(11) NOT NULL,
  `Site` varchar(255) NOT NULL,
  `client` varchar(255) NOT NULL,
  `SelectISP` varchar(255) NOT NULL,
  `Status` varchar(255) NOT NULL,
  `select_circuit` varchar(255) NOT NULL,
  `TicketID` varchar(255) NOT NULL,
  `DateStarted` datetime NOT NULL,
  `DateRestored` datetime NOT NULL,
  `RFO` varchar(255) NOT NULL,
  `PerformedBy` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `network_outage`
--

INSERT INTO `network_outage` (`ID`, `Site`, `client`, `SelectISP`, `Status`, `select_circuit`, `TicketID`, `DateStarted`, `DateRestored`, `RFO`, `PerformedBy`) VALUES
(1, 'The Link', '', 'GLOBE', 'Closed', '446539', 'CS-10112780', '2019-01-03 02:17:00', '2019-01-03 08:24:00', 'No active alarm monitored on the circuit trail, monitored with traffic', 'Administrator'),
(2, 'The Link', '', 'GLOBE', 'Closed', '446539', 'NoTicket_1', '2019-03-02 05:07:00', '2019-03-02 13:11:00', 'Note: Globe did not reply to our email', 'Arjay Cobarde'),
(3, 'The Link', '', 'GLOBE', 'Closed', '446539', 'CS-10199342', '2019-03-06 14:59:00', '2019-03-06 23:05:00', 'Circuit was initially affected by a network outage at Iloilo due to FOC Cut', 'Arjay Cobarde'),
(4, 'The Link', '', 'GLOBE', 'Closed', '446539', 'CS-10204240', '2019-03-11 09:22:00', '2019-03-11 11:08:00', 'No active alarm monitored with historical error', 'Arjay Cobarde'),
(5, 'The Link', '', 'GLOBE', 'Closed', '446539', 'NoTicket_2', '2019-03-24 13:27:00', '2019-03-24 14:16:00', 'Note: No email reply from Globe', 'Arjay Cobarde'),
(6, 'The Link', '', 'GLOBE', 'Closed', '446539', 'CS-10225530', '2019-03-25 21:49:00', '2019-03-26 04:31:00', ' link is currently affected by the network outage between Tektite Pasig to Makati.', 'Arjay Cobarde'),
(7, 'The Link', '', 'GLOBE', 'Closed', '446539', 'CS-10254787', '2019-04-15 21:32:00', '2019-04-16 00:03:00', '48core UG hit by backhoe due to ongoing road widening by DPWH project at brgy. Bantayan, SJB, Antique. ', 'Arjay Cobarde'),
(8, 'The Link', '', 'GLOBE', 'Closed', '446539', 'CS-10259337', '2019-04-22 00:19:00', '2019-04-22 13:55:00', 'Techno Plaza node is seen with active alarm\r\n-dummy', 'Arjay Cobarde'),
(9, 'The Link', '', 'GLOBE', 'Closed', '446539', 'CS-10265591', '2019-04-25 22:31:00', '2019-04-25 23:30:00', '"RFO: Degraded signal between Makati and Paco\r\nAT: Alarms cleared prior to isolation"', 'Arjay Cobarde'),
(10, 'The Link', '', 'GLOBE', 'Closed', '446539', 'CS-10288580', '2019-05-11 01:00:00', '2019-05-11 03:00:00', 'Degraded link between Paco to Makati', 'Arjay Cobarde'),
(12, 'The Link', '', 'GLOBE', 'Closed', '446539', 'CS-10296630', '2019-05-17 01:55:00', '2019-05-17 05:13:00', 'Circuit is initially affected by our network outage in Binan - Tiaong. 24c aerial FOC dragged by vehicle at Sto Tomas Batangas Pulling maintenance loop of FOC and re-spliced.', 'Arjay Cobarde'),
(13, 'The Link', '', 'GLOBE', 'Closed', '446539', 'CS-10312985', '2019-05-25 21:05:00', '2019-05-26 13:30:00', 'Seeing historical hits between Makati and PACO. Already raise to support for permanent solution. ', 'Arjay Cobarde'),
(14, 'The Link', '', 'GLOBE', 'Closed', '446539', 'NoTicket_06042019', '2019-06-04 14:31:00', '2019-06-04 18:03:00', '', 'Arjay Cobarde'),
(15, 'The Link', '', 'GLOBE', 'Closed', '446539', 'Noticket_June9', '2019-06-09 09:09:00', '2019-06-09 10:48:00', '123123123', 'Arjay Cobarde'),
(16, 'The Link', '', 'GLOBE', 'Closed', '446539', 'Noticket_June10', '2019-06-10 09:15:00', '2019-06-10 19:15:00', '', 'Arjay Cobarde'),
(17, 'The Link', '', 'GLOBE', 'Closed', '446539', 'NoTicket_June11', '2019-06-11 11:10:00', '2019-06-11 12:48:00', 'No Ticket Replied Globe TSC', 'Arjay Cobarde'),
(22, 'The Link', '', 'INFINIVAN', 'Closed', 'NET1814-200M', 'ITTN20189150145', '2018-09-15 10:21:00', '2018-09-15 13:07:00', '', 'Arjay Cobarde'),
(23, 'The Link', '', 'INFINIVAN', 'Closed', 'NET1814-200M', 'ITTN20181060152', '2018-10-06 10:03:00', '2018-10-06 11:18:00', '', 'Arjay Cobarde'),
(24, 'The Link', '', 'INFINIVAN', 'Closed', 'NET1814-200M', 'NoTicket_January2019', '2019-01-09 23:20:00', '2019-01-10 01:17:00', '', 'Arjay Cobarde'),
(25, 'The Link', '', 'INFINIVAN', 'Closed', 'NET1814-200M', 'NoTicket_February2019', '2019-02-02 13:51:00', '2019-02-02 17:50:00', '', 'Arjay Cobarde'),
(26, 'The Link', '', 'INFINIVAN', 'Closed', 'NET1814-200M', 'NoTicket_April2019', '2019-04-03 04:34:00', '2019-04-03 04:52:00', '', 'Arjay Cobarde'),
(27, 'The Link', '', 'INFINIVAN', 'Closed', 'NET1814-200M', 'NoTicket_May2019', '2019-05-27 23:57:00', '2019-05-28 00:08:00', '', 'Arjay Cobarde'),
(28, 'The Link', '', 'PLDT', 'Closed', 'MPI77-112011-79030', '27384669', '2018-09-21 00:19:00', '2018-09-21 10:00:00', '', 'Arjay Cobarde'),
(29, 'The Link', '', 'PLDT', 'Closed', 'MPI77-112011-79030', '28571132', '2019-01-09 23:20:00', '2019-01-10 01:45:00', '', 'Arjay Cobarde'),
(30, 'The Link', '', 'GLOBE', 'Closed', '446539', 'CS-10251778', '2019-04-13 06:51:00', '2019-04-13 08:44:00', '', 'Arjay Cobarde');

-- --------------------------------------------------------

--
-- Table structure for table `network_status`
--

CREATE TABLE `network_status` (
  `id` int(11) NOT NULL,
  `network_status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `network_status`
--

INSERT INTO `network_status` (`id`, `network_status`) VALUES
(1, 'Open'),
(2, 'Closed');

-- --------------------------------------------------------

--
-- Stand-in structure for view `update_asset`
--
CREATE TABLE `update_asset` (
`ID` int(11)
,`DataPort` varchar(255)
,`Status` varchar(255)
,`MicrostatusTicket` text
,`PONumber` text
);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_roles` varchar(255) DEFAULT 'InActive',
  `reg_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_name`, `user_password`, `user_email`, `user_roles`, `reg_date`) VALUES
(1, 'Administrator', '21232f297a57a5a743894a0e4a801fc3', 'admin@localhost.com', 'Administrator', '2019-05-12 06:24:08'),
(2, 'Arjay Cobarde', '42e23624daa4efec80eea1a135b79a4d', 'arjay.cobarde@microsourcing.ph', 'Administrator', '2019-05-13 03:47:38'),
(5, 'Ed', 'ff9d61fadef920f9de831b4044446b0f', 'ed.banez@microsourcing.com', 'Administrator', '2019-05-18 00:29:36'),
(6, 'Julie Himaya', '42f749ade7f9e195bf475f37a44cafcb', 'julie.himaya@microsourcing.ph', 'Administrator', '2019-05-18 00:31:11'),
(18, 'Sample User', '2ac9cb7dc02b3c0083eb70898e549b63', 'user@localhost.com', 'User', '2019-06-11 17:49:44');

-- --------------------------------------------------------

--
-- Table structure for table `user_group`
--

CREATE TABLE `user_group` (
  `id` int(11) NOT NULL,
  `UserRoles` varchar(255) NOT NULL DEFAULT 'Inactive',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_group`
--

INSERT INTO `user_group` (`id`, `UserRoles`, `created_at`) VALUES
(17, 'User', '2019-05-08 18:05:06'),
(19, 'Administrator', '2019-05-08 18:11:59');

-- --------------------------------------------------------

--
-- Stand-in structure for view `viewassetstorage`
--
CREATE TABLE `viewassetstorage` (
`ID` int(3)
,`Brand` varchar(255)
,`Model` varchar(255)
,`SerialNumber` varchar(255)
,`Capacity` int(3)
,`Location` varchar(255)
,`MicrostatusTicket` varchar(255)
,`AddedBy` varchar(255)
,`DateUpdated` timestamp
,`Status` varchar(255)
,`Remarks` text
,`AssetTag` varchar(17)
);

-- --------------------------------------------------------

--
-- Structure for view `network_chart`
--
DROP TABLE IF EXISTS `network_chart`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `network_chart`  AS  select `network_outage`.`ID` AS `ID`,`network_outage`.`Site` AS `Site`,`network_outage`.`client` AS `client`,`network_outage`.`SelectISP` AS `SelectISP`,`network_outage`.`Status` AS `Status`,`network_outage`.`select_circuit` AS `select_circuit`,`network_outage`.`TicketID` AS `TicketID`,`network_outage`.`DateStarted` AS `DateStarted`,`network_outage`.`DateRestored` AS `DateRestored`,`network_outage`.`RFO` AS `RFO`,`network_outage`.`PerformedBy` AS `PerformedBy`,timestampdiff(HOUR,`network_outage`.`DateStarted`,`network_outage`.`DateRestored`) AS `Outage` from `network_outage` ;

-- --------------------------------------------------------

--
-- Structure for view `update_asset`
--
DROP TABLE IF EXISTS `update_asset`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `update_asset`  AS  select `msassets`.`ID` AS `ID`,`msassets`.`DataPort` AS `DataPort`,`msassets`.`Status` AS `Status`,`msassets`.`MicrostatusTicket` AS `MicrostatusTicket`,`msassets`.`PONumber` AS `PONumber` from `msassets` ;

-- --------------------------------------------------------

--
-- Structure for view `viewassetstorage`
--
DROP TABLE IF EXISTS `viewassetstorage`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `viewassetstorage`  AS  select `asset_storagedevice`.`ID` AS `ID`,`asset_storagedevice`.`Brand` AS `Brand`,`asset_storagedevice`.`Model` AS `Model`,`asset_storagedevice`.`SerialNumber` AS `SerialNumber`,`asset_storagedevice`.`Capacity` AS `Capacity`,`asset_storagedevice`.`Location` AS `Location`,`asset_storagedevice`.`MicrostatusTicket` AS `MicrostatusTicket`,`asset_storagedevice`.`AddedBy` AS `AddedBy`,`asset_storagedevice`.`DateUpdated` AS `DateUpdated`,`asset_storagedevice`.`Status` AS `Status`,`asset_storagedevice`.`Remarks` AS `Remarks`,concat('LINK14FHDDIT',lpad(`asset_storagedevice`.`ID`,5,'0')) AS `AssetTag` from `asset_storagedevice` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `asset_accesscard`
--
ALTER TABLE `asset_accesscard`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `asset_batteries`
--
ALTER TABLE `asset_batteries`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `asset_dataport`
--
ALTER TABLE `asset_dataport`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `asset_site`
--
ALTER TABLE `asset_site`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `asset_status`
--
ALTER TABLE `asset_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `asset_storagedevice`
--
ALTER TABLE `asset_storagedevice`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `asset_type`
--
ALTER TABLE `asset_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `floor`
--
ALTER TABLE `floor`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `msassets`
--
ALTER TABLE `msassets`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `network_circuit`
--
ALTER TABLE `network_circuit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `network_isp`
--
ALTER TABLE `network_isp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `network_outage`
--
ALTER TABLE `network_outage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `network_status`
--
ALTER TABLE `network_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_group`
--
ALTER TABLE `user_group`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `asset_accesscard`
--
ALTER TABLE `asset_accesscard`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `asset_batteries`
--
ALTER TABLE `asset_batteries`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;
--
-- AUTO_INCREMENT for table `asset_dataport`
--
ALTER TABLE `asset_dataport`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;
--
-- AUTO_INCREMENT for table `asset_site`
--
ALTER TABLE `asset_site`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `asset_status`
--
ALTER TABLE `asset_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `asset_storagedevice`
--
ALTER TABLE `asset_storagedevice`
  MODIFY `ID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `asset_type`
--
ALTER TABLE `asset_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `floor`
--
ALTER TABLE `floor`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `msassets`
--
ALTER TABLE `msassets`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;
--
-- AUTO_INCREMENT for table `network_circuit`
--
ALTER TABLE `network_circuit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `network_isp`
--
ALTER TABLE `network_isp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `network_outage`
--
ALTER TABLE `network_outage`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `network_status`
--
ALTER TABLE `network_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `user_group`
--
ALTER TABLE `user_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
