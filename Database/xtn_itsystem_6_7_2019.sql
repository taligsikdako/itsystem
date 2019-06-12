-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 07, 2019 at 01:13 AM
-- Server version: 10.1.33-MariaDB
-- PHP Version: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `xtn_itsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `assets_old`
--

CREATE TABLE `assets_old` (
  `id` int(11) NOT NULL,
  `asset_id` int(11) NOT NULL,
  `Site` varchar(255) NOT NULL,
  `AssetType` varchar(255) NOT NULL,
  `CPUSerialNumber` varchar(255) NOT NULL,
  `SerialNumber` varchar(255) NOT NULL,
  `ReplacementSerialNumber` varchar(255) NOT NULL,
  `DatePurchased` date NOT NULL,
  `ReceivedBy` varchar(255) NOT NULL,
  `DateReceived` date NOT NULL,
  `PONumber` varchar(255) NOT NULL,
  `Status` varchar(255) NOT NULL,
  `DateAdded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `DataPort` varchar(255) DEFAULT NULL,
  `DeployedBy` varchar(255) DEFAULT NULL,
  `DateDeployed` date DEFAULT NULL,
  `TicketID` varchar(100) DEFAULT NULL,
  `Remarks` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assets_old`
--

INSERT INTO `assets_old` (`id`, `asset_id`, `Site`, `AssetType`, `CPUSerialNumber`, `SerialNumber`, `ReplacementSerialNumber`, `DatePurchased`, `ReceivedBy`, `DateReceived`, `PONumber`, `Status`, `DateAdded`, `DataPort`, `DeployedBy`, `DateDeployed`, `TicketID`, `Remarks`) VALUES
(1, 0, 'Cebu', 'Keyboard', 'SGH817RFC3', 'BEXHP0CCPAP6J3', '', '2018-05-30', 'Administrator', '2018-05-30', '10003613', 'Spare', '2019-05-13 03:20:39', NULL, NULL, NULL, NULL, NULL),
(2, 0, 'Cebu', 'Keyboard', 'SGH817RFC4', 'BEXHP0CCPAP6J2', '', '2018-05-30', 'Administrator', '2018-05-30', '10003613', 'Spare', '2019-05-13 03:21:17', NULL, NULL, NULL, NULL, NULL),
(3, 0, 'Cebu', 'Keyboard', 'SGH817RFCG', 'BEXHP0CCPAP6J9', '', '2018-05-30', 'Administrator', '2015-05-30', '10003613', 'Deployed', '2019-05-13 03:21:42', 'D119', 'Arjay Cobarde', '2019-05-10', 'OP358118', NULL),
(4, 0, 'Cebu', 'Keyboard', 'SGH817RFCH', 'BEXHP0CCPAP6J4', '', '2018-05-30', 'Administrator', '2018-05-30', '10003613', 'Deployed', '2019-05-13 03:22:21', 'D025', 'Administrator', '2018-09-09', 'OP299018', NULL),
(5, 0, 'Cebu', 'Keyboard', 'SGH817RFCL', 'BEXHP0CCPAP6J8', '', '2018-05-30', 'Administrator', '2018-05-30', '10003613', 'Spare', '2019-05-13 03:22:46', NULL, NULL, NULL, NULL, NULL),
(6, 0, 'Cebu', 'Keyboard', 'SGH817RFCM', 'BEXHP0CCPAP6J6', '', '2018-05-30', 'Administrator', '2018-05-30', '10003613', 'Spare', '2019-05-13 03:23:12', NULL, NULL, NULL, NULL, NULL),
(7, 0, 'Cebu', 'Keyboard', 'SGH817RFC5', 'BEXHP0CCPAP6J5', '', '2018-05-30', 'Administrator', '2018-05-30', '10003613', 'Spare', '2019-05-13 03:23:39', NULL, NULL, NULL, NULL, NULL),
(8, 0, 'Cebu', 'Keyboard', 'SGH817RFC6', 'BEXHP0CCPAP6J7', '', '2018-05-30', 'Administrator', '2018-05-30', '10003613', 'Spare', '2019-05-13 03:24:28', NULL, NULL, NULL, NULL, NULL),
(9, 0, 'Cebu', 'Keyboard', 'SGH817RFCJ', 'BEXHP0CCPAP8JL', '', '2018-05-30', 'Administrator', '2018-05-30', '10003613', 'Deployed', '2019-05-13 03:24:58', 'D020', 'Arjay Cobarde', '2018-09-26', 'OP303950', NULL),
(10, 0, 'Cebu', 'Keyboard', 'SGH817RFCK', 'BEXHP0CCPAP8JN', '', '2018-05-30', 'Administrator', '2018-05-30', '10003613', 'Spare', '2019-05-13 03:25:21', NULL, NULL, NULL, NULL, NULL),
(11, 0, 'Cebu', 'Keyboard', 'SGH817RFC7', 'BEXHP0CCPAP8JM', '', '2018-05-30', 'Administrator', '2018-05-30', '10003613', 'Spare', '2019-05-13 03:25:40', NULL, NULL, NULL, NULL, NULL),
(12, 0, 'Cebu', 'Keyboard', 'SGH817RFC8', 'BEXHP0CCPAP8J0', '', '2018-05-30', 'Administrator', '2018-05-30', '10003613', 'Deployed', '2019-05-13 03:26:10', 'D132', 'Arjay Cobarde', '2018-07-23', 'OP286604', NULL),
(13, 0, 'Cebu', 'Keyboard', 'SGH817RFC1', 'BEXHP0CCPAP8JG', '', '2018-05-30', 'Administrator', '2018-05-30', '10003613', 'Spare', '2019-05-13 03:26:31', NULL, NULL, NULL, NULL, NULL),
(14, 0, 'Cebu', 'Keyboard', 'SGH817RFCZ', 'BEXHP0CCPAP8JF', '', '2018-05-30', 'Administrator', '2018-05-30', '10003613', 'Deployed', '2019-05-13 03:26:52', 'D045', 'Arjay Cobarde', '2018-10-24', 'OP311337', NULL),
(15, 0, 'Cebu', 'Keyboard', 'SGH817RFCT', 'BEXHP0CCPAP8JP', '', '2018-05-30', 'Administrator', '2018-05-30', '10003613', 'Deployed', '2019-05-13 03:27:24', 'D058', 'Arjay Cobarde', '2019-02-20', 'OP338693', NULL),
(16, 0, 'Cebu', 'Keyboard', 'SGH817RFCV', 'BEXHP0CCOAO8JI', '', '2018-05-30', 'Administrator', '2018-05-30', '10003613', 'Deployed', '2019-05-13 03:27:46', 'D055', 'Arjay Cobarde', '2018-10-24', 'OP311334', NULL),
(17, 0, 'Cebu', 'Keyboard', 'SGH817RFCY', 'BEXHP0CCPAP8JJ', '', '2018-05-30', 'Administrator', '2018-05-30', '10003613', 'Deployed', '2019-05-13 03:28:07', 'D068', 'Arjay Cobarde', '2018-10-24', 'OP311141', NULL),
(18, 0, 'Cebu', 'Keyboard', 'SGH817RFCS', 'BEXHP0CCPAP8JH', '', '2018-05-30', 'Administrator', '2018-05-30', '10003613', 'Deployed', '2019-05-13 03:28:41', 'D001', 'Arjay Cobarde', '2018-10-11', 'OP307746', NULL),
(19, 0, 'Cebu', 'Keyboard', 'SGH817RFBZ', 'BEXHP0CCPAP8KT', '', '2018-05-30', 'Administrator', '2018-05-30', '10003613', 'Spare', '2019-05-13 03:31:56', NULL, NULL, NULL, NULL, NULL),
(20, 0, 'Cebu', 'Keyboard', 'SGH817RFC2', 'BEXHP0CCPAP8KU', '', '2018-05-30', 'Administrator', '2018-05-30', '10003613', 'Deployed', '2019-05-13 03:32:19', 'D001', 'Arjay Cobarde', '2019-02-19', 'OP338333', NULL),
(21, 0, 'Cebu', 'Keyboard', 'SGH817RFC0', 'BEXHP0CCPAP8KV', '', '2018-05-30', 'Administrator', '2018-05-30', '10003613', 'Deployed', '2019-05-13 03:32:45', 'D131', 'Arjay Cobarde', '2018-09-15', 'OP300912', NULL),
(22, 0, 'Cebu', 'Keyboard', 'SGH817RFCX', 'BEXHP0CCPAP8KW', '', '2018-05-30', 'Administrator', '2018-05-30', '10003613', 'Deployed', '2019-05-13 03:33:04', 'D125', 'Arjay Cobarde', '2018-09-15', 'OP298286', NULL),
(23, 0, 'Cebu', 'Keyboard', 'SGH817RFD3', 'BEXHP0CCPAP8KX', '', '2018-05-30', 'Administrator', '2018-05-30', '10003613', 'Spare', '2019-05-13 03:33:30', NULL, NULL, NULL, NULL, NULL),
(24, 0, 'Cebu', 'Keyboard', 'SGH817RFD4', 'BEXHP0CCPAP8L1', '', '2018-05-30', 'Administrator', '2018-05-30', '10003613', 'Spare', '2019-05-13 03:33:51', NULL, NULL, NULL, NULL, NULL),
(25, 0, 'Cebu', 'Keyboard', 'SGH817RFCN', 'BEXHP0CCPAP8L2', '', '2018-05-30', 'Administrator', '2018-05-30', '10003613', 'Deployed', '2019-05-13 03:34:14', 'D126', 'Arjay Cobarde', '2019-03-19', 'OP345462', NULL),
(26, 0, 'Cebu', 'Keyboard', 'SGH817RFD0', 'BEXHP0CCPAP8L0', '', '2018-05-30', 'Administrator', '2018-05-30', '10003613', 'Deployed', '2019-05-13 03:34:44', 'D042', 'Arjay Cobarde', '2019-01-13', 'OP329017', NULL),
(27, 0, 'Cebu', 'Keyboard', 'SGH817RFD1', 'BEXHP0CCPAP8KZ', '', '2018-05-30', 'Administrator', '2018-05-30', '10003613', 'Deployed', '2019-05-13 03:35:19', 'D065', 'Arjay Cobarde', '2019-02-03', 'OP334559', NULL),
(28, 0, 'Cebu', 'Keyboard', 'SGH817RFD5', 'BEXHP0CCPAP8KY', '', '2018-05-30', 'Administrator', '2018-05-30', '10003613', 'Spare', '2019-05-13 03:40:22', NULL, NULL, NULL, NULL, NULL),
(29, 0, 'Cebu', 'Keyboard', 'SGH817RFD6', 'BEXHP0CCPAP6IS', '', '2018-05-30', 'Administrator', '2018-05-30', '10003613', 'Deployed', '2019-05-13 03:41:08', 'D065', 'Arjay Cobarde', '2019-02-06', 'OP335474', NULL),
(30, 0, 'Cebu', 'Keyboard', 'SGH817RFCQ', 'BEXHP0CCPAP6IR', '', '2018-05-30', 'Administrator', '2018-05-30', '10003613', 'Deployed', '2019-05-13 03:41:36', 'D038', 'Arjay Cobarde', '2018-12-01', 'OP320591', NULL),
(31, 0, 'Cebu', 'Keyboard', 'SGH817RFCC', 'BEXHP0CCPAP6J0', '', '2018-05-30', 'Administrator', '2018-05-30', '10003613', 'Spare', '2019-05-13 03:41:59', NULL, NULL, NULL, NULL, NULL),
(32, 0, 'Cebu', 'Keyboard', 'SGH817RFCD', 'BEXHP0CCPAP6IZ', '', '2018-05-30', 'Administrator', '2018-05-30', '10003613', 'Deployed', '2019-05-13 03:43:01', 'D110', 'Arjay Cobarde', '2018-09-19', 'OP301896', NULL),
(33, 0, 'Cebu', 'Keyboard', 'SGH817RFCF', 'BEXHP0CCPAP6IY', '', '2018-05-30', 'Administrator', '2018-05-30', '10003613', 'Deployed', '2019-05-13 03:43:20', 'D122', 'Arjay Cobarde', '2019-05-03', 'OP355493', NULL),
(34, 0, 'Cebu', 'Keyboard', 'SGH817RFD7', 'BEXHP0CCPAP0FA', '', '2018-05-30', 'Administrator', '2018-05-30', '10003613', 'Spare', '2019-05-13 03:43:43', NULL, NULL, NULL, NULL, NULL),
(35, 0, 'Cebu', 'Keyboard', 'SGH817RFCR', 'BEXHP0CCPAP6IU', '', '2018-05-30', 'Administrator', '2018-05-30', '10003613', 'Deployed', '2019-05-13 03:44:02', 'D001', 'Arjay Cobarde', '2018-01-01', 'NoTicket', NULL),
(36, 0, 'Cebu', 'Keyboard', 'SGH817RFC9', 'BEXHP0CCPAP8JW', '', '2018-05-30', 'Administrator', '2018-05-30', '10003613', 'Deployed', '2019-05-13 03:44:32', 'D084', 'Arjay Cobarde', '2019-04-03', 'OP349410', NULL),
(37, 0, 'Cebu', 'Keyboard', 'SGH817RFCW', 'BEXHP0CCPAP8JX', '', '2018-05-30', 'Administrator', '2018-05-30', '10003613', 'Deployed', '2019-05-13 03:45:00', 'D119', 'Arjay Cobarde', '2018-10-04', 'OP305859', NULL),
(38, 0, 'Cebu', 'Keyboard', 'SGH817RFD8', 'BEXHP0CCPAP8JZ', '', '2018-05-30', 'Administrator', '2018-05-30', '10003613', 'Deployed', '2019-05-13 03:45:20', 'D001', 'Arjay Cobarde', '2018-01-01', 'Noticket', NULL),
(39, 0, 'Cebu', 'Keyboard', 'SGH817RFD2', 'BEXHP0CCPAP8JV', '', '2018-05-30', 'Administrator', '2018-05-30', '10003613', 'Deployed', '2019-05-13 03:45:44', 'D113', 'Arjay Cobarde', '2019-05-01', 'OP355421', NULL),
(40, 0, 'Cebu', 'Keyboard', 'SGH817RFD9', 'BEXHP0CCPAP8JY', '', '2018-05-30', 'Administrator', '2018-05-30', '10003613', 'Deployed', '2019-05-13 03:46:07', 'D077', 'Arjay Cobarde', '2018-08-22', 'OP294348', NULL),
(41, 0, 'Cebu', 'Keyboard', 'SGH817RFCP', 'BEXHP0CCPAP8DX', '', '2018-05-30', 'Administrator', '2018-05-30', '10003613', 'Deployed', '2019-05-13 03:46:29', 'D136', 'Arjay Cobarde', '2018-09-06', 'OP298381', NULL),
(42, 0, 'Cebu', 'Keyboard', 'SGH817RFCB', 'BEXHP0CCPAP6FH', '', '2018-05-30', 'Administrator', '2018-05-30', '10003613', 'Spare', '2019-05-13 03:46:48', NULL, NULL, NULL, NULL, NULL),
(43, 0, 'Cebu', 'Mouse', 'SGH817RFC3', 'FCMHH0AKZAND5M', '', '2018-05-30', 'Arjay Cobarde', '2018-05-30', '10003613', 'Deployed', '2019-05-13 03:48:43', 'D114', 'Arjay Cobarde', '2019-01-17', 'OP330065', NULL),
(44, 0, 'Cebu', 'Mouse', 'SGH817RFC4', 'FCMHH0AKZAND5U', '', '2018-05-30', 'Arjay Cobarde', '2018-05-30', '10003613', 'Deployed', '2019-05-13 03:49:04', 'D063', 'Arjay Cobarde', '2018-08-27', 'OP304332', NULL),
(45, 0, 'Cebu', 'Mouse', 'SGH817RFCG', 'FCMHH0AKZAND60', '', '2018-05-30', 'Arjay Cobarde', '2018-05-30', '10003613', 'Deployed', '2019-05-13 03:49:22', 'D060', 'Arjay Cobarde', '2018-08-25', 'OP295067', NULL),
(46, 0, 'Cebu', 'Mouse', 'SGH817RFCH', 'FCMHH0AKZAND5R', '', '2018-05-30', 'Arjay Cobarde', '2018-05-30', '10003613', 'Deployed', '2019-05-13 03:49:43', 'D011', 'Arjay Cobarde', '2018-07-25', 'OP287385', NULL),
(47, 0, 'Cebu', 'Mouse', 'SGH817RFCL', 'FCMHH0AKZAND5O', '', '2018-05-30', 'Arjay Cobarde', '2018-05-30', '10003613', 'Deployed', '2019-05-13 03:50:14', 'D114', 'Arjay Cobarde', '2019-02-12', 'OP336663', NULL),
(48, 0, 'Cebu', 'Mouse', 'SGH817RFCM', 'FCMHH0AKZAND5H', '', '2018-05-30', 'Arjay Cobarde', '2018-05-30', '10003613', 'Deployed', '2019-05-13 03:50:33', 'D-13*', 'Arjay Cobarde', '2018-06-10', 'Deployed To Cielo', NULL),
(49, 0, 'Cebu', 'Mouse', 'SGH817RFC5', 'FCMHH0AKZAND5A', '', '2018-05-30', 'Arjay Cobarde', '2018-05-30', '10003613', 'Deployed', '2019-05-13 03:50:53', 'D063', 'Arjay Cobarde', '2019-02-08', 'OP335928', NULL),
(50, 0, 'Cebu', 'Mouse', 'SGH817RFC6', 'FCMHH0AKZAND5J', '', '2018-05-30', 'Arjay Cobarde', '2018-05-30', '10003613', 'Deployed', '2019-05-13 03:51:14', 'D015', 'Arjay Cobarde', '2018-07-25', 'OP287385', NULL),
(51, 0, 'Cebu', 'Mouse', 'SGH817RFCJ', 'FCMHH0AKZAND5G', '', '2018-05-30', 'Arjay Cobarde', '2018-05-30', '10003613', 'Deployed', '2019-05-13 04:13:30', 'D-4*', 'Arjay Cobarde', '2018-08-02', 'cebuitsd002', NULL),
(52, 0, 'Cebu', 'Mouse', 'SGH817RFCK', 'FCMHH0AKZAND64', '', '2018-05-30', 'Arjay Cobarde', '2018-05-30', '10003613', 'Deployed', '2019-05-13 04:13:59', 'D091', 'Arjay Cobarde', '2018-01-09', 'OP328236', NULL),
(53, 0, 'Cebu', 'Mouse', 'SGH817RFC7', 'FCMHH0AKZAND61', '', '2018-05-30', 'Arjay Cobarde', '2018-05-30', '10003613', 'Deployed', '2019-05-13 04:14:19', 'D003', 'Arjay Cobarde', '2018-08-06', 'OP289858', NULL),
(54, 0, 'Cebu', 'Mouse', 'SGH817RFC8', 'FCMHH0AKZAND6A', '', '2018-05-30', 'Arjay Cobarde', '2018-05-30', '10003613', 'Deployed', '2019-05-13 04:14:40', 'D132', 'Arjay Cobarde', '2018-08-23', 'OP294402', NULL),
(55, 0, 'Cebu', 'Mouse', 'SGH817RFC1', 'FCMHH0AKZAND20', '', '2018-05-30', 'Arjay Cobarde', '2018-05-30', '10003613', 'Deployed', '2019-05-13 04:15:02', 'D075', 'Arjay Cobarde', '2018-12-27', 'OP325498', NULL),
(56, 0, 'Cebu', 'Mouse', 'SGH817RFCZ', 'FCMHH0AKZAND67', '', '2018-05-30', 'Arjay Cobarde', '2018-05-30', '10003613', 'Deployed', '2019-05-13 04:15:22', 'D109', 'Arjay Cobarde', '2019-02-20', 'OP338987', NULL),
(57, 0, 'Cebu', 'Mouse', 'SGH817RFCT', 'FCMHH0AKZAND5B', '', '2018-05-30', 'Arjay Cobarde', '2018-05-30', '10003613', 'Deployed', '2019-05-13 04:15:43', 'D044', 'Arjay Cobarde', '2018-07-20', 'OP286309', NULL),
(58, 0, 'Cebu', 'Mouse', 'SGH817RFCV', 'FCMMH0AKZAND69', '', '2018-05-30', 'Arjay Cobarde', '2018-05-30', '10003613', 'Deployed', '2019-05-13 04:16:00', 'D056', 'Arjay Cobarde', '2018-11-30', 'OP320519', NULL),
(59, 0, 'Cebu', 'Mouse', 'SGH817RFCY', 'FCMHH0AKZAND5V', '', '2018-05-30', 'Arjay Cobarde', '2018-05-30', '10003613', 'Deployed', '2019-05-13 04:16:24', 'D127', 'Arjay Cobarde', '2019-02-27', 'OP340304', NULL),
(60, 0, 'Cebu', 'Mouse', 'SGH817RFCS', 'FCMHH0AKZAND5F', '', '2018-05-30', 'Arjay Cobarde', '2018-05-30', '10003613', 'Spare', '2019-05-13 04:16:50', NULL, NULL, NULL, NULL, NULL),
(61, 0, 'Cebu', 'Mouse', 'SGH817RFBZ', 'FCMHH0AKZAND6B', '', '2018-05-30', 'Arjay Cobarde', '2018-05-30', '10003613', 'Deployed', '2019-05-13 04:17:10', 'D002', 'Arjay Cobarde', '2019-02-07', 'OP355755', NULL),
(62, 0, 'Cebu', 'Mouse', 'SGH817RFC2', 'FCMHH0AKZAND5C', '', '2018-05-30', 'Arjay Cobarde', '2018-05-30', '10003613', 'Deployed', '2019-05-13 04:17:32', 'D-8*', 'Arjay Cobarde', '2018-06-13', 'ID PRINTER', NULL),
(63, 0, 'Cebu', 'Mouse', 'SGH817RFC0', 'FCMHH0AKZAND5E', '', '2018-05-30', 'Arjay Cobarde', '2018-05-30', '10003613', 'Deployed', '2019-05-13 04:23:17', 'D061', 'Arjay Cobarde', '2019-02-20', 'IN338732', NULL),
(64, 0, 'Cebu', 'Mouse', 'SGH817RFCX', 'FCMHH0AKZAND52', '', '2018-05-30', 'Arjay Cobarde', '2018-05-30', '10003613', 'Deployed', '2019-05-13 04:23:37', 'D-2*', 'Arjay Cobarde', '2018-10-11', 'Sir Jason', NULL),
(65, 0, 'Cebu', 'Mouse', 'SGH817RFD3', 'FCMHH0AKZAND65', '', '2018-05-30', 'Arjay Cobarde', '2018-05-30', '10003613', 'Deployed', '2019-05-13 04:24:06', 'D115', 'Arjay Cobarde', '2018-10-05', 'OP306468', NULL),
(66, 0, 'Cebu', 'Mouse', 'SGH817RFD4', 'FCMHH0AKZAND66', '', '2018-05-30', 'Arjay Cobarde', '2018-05-30', '10003613', 'Deployed', '2019-05-13 04:24:33', 'D113', 'Arjay Cobarde', '2018-12-16', 'OP321819', NULL),
(67, 0, 'Cebu', 'Mouse', 'SGH817RFCN', 'FCMHH0AKZAND53', '', '2018-05-30', 'Arjay Cobarde', '2018-05-30', '10003613', 'Deployed', '2019-05-13 04:25:06', 'D071', 'Arjay Cobarde', '2018-08-21', 'OP294725', NULL),
(68, 0, 'Cebu', 'Mouse', 'SGH817RFD0', 'FCMHH0AKZAND5S', '', '2018-05-30', 'Arjay Cobarde', '2018-05-30', '10003613', 'Deployed', '2019-05-13 04:25:32', 'D122', 'Arjay Cobarde', '2018-09-07', 'OP298819', NULL),
(69, 0, 'Cebu', 'Mouse', 'SGH817RFD1', 'FCMHH0AKZAND62', '', '2018-05-30', 'Arjay Cobarde', '2018-05-30', '10003613', 'Deployed', '2019-05-13 04:25:53', 'D067', 'Arjay Cobarde', '2018-01-25', 'OP332318', NULL),
(70, 0, 'Cebu', 'Mouse', 'SGH817RFD5', 'FCMMH0AKZAND68', '', '2018-05-30', 'Arjay Cobarde', '2018-05-30', '10003613', 'Deployed', '2019-05-13 04:26:11', 'D023', 'Arjay Cobarde', '2018-11-25', 'OP319069', NULL),
(71, 0, 'Cebu', 'Mouse', 'SGH817RFD6', 'FCMHH0AKZND6H', '', '2018-05-30', 'Arjay Cobarde', '2018-05-30', '10003613', 'Deployed', '2019-05-13 04:26:37', 'D105', 'Arjay Cobarde', '2018-08-23', 'OP294652', NULL),
(72, 0, 'Cebu', 'Mouse', 'SGH817RFCQ', 'FCMMH0AKZAND6E', '', '2018-05-30', 'Arjay Cobarde', '2018-05-30', '10003613', 'Deployed', '2019-05-13 04:27:03', 'D136', 'Arjay Cobarde', '2018-09-06', 'OP298381', NULL),
(73, 0, 'Cebu', 'Mouse', 'SGH817RFCC', 'FCMHH0AKZAND5L', '', '2018-05-30', 'Arjay Cobarde', '2018-05-30', '10003613', 'Deployed', '2019-05-13 04:27:22', 'D128', 'Arjay Cobarde', '2018-09-08', 'OP298972', NULL),
(74, 0, 'Cebu', 'Mouse', 'SGH817RFCD', 'FCMHH0AKZAND63', '', '2018-05-30', 'Arjay Cobarde', '2018-05-30', '10003613', 'Deployed', '2019-05-13 04:27:41', 'D116', 'Arjay Cobarde', '2018-10-16', 'OP308938', NULL),
(75, 0, 'Cebu', 'Mouse', 'SGH817RFCF', 'FCMHH0AKZAND5I', '', '2018-05-30', 'Arjay Cobarde', '2018-05-30', '10003613', 'Deployed', '2019-05-13 04:27:58', 'D012', 'Arjay Cobarde', '2018-07-25', 'OP287385', NULL),
(76, 0, 'Cebu', 'Mouse', 'SGH817RFD7', 'FCMHH0AAKZAND5N', '', '2018-05-30', 'Arjay Cobarde', '2018-05-30', '10003613', 'Deployed', '2019-05-13 04:28:25', 'D080', 'Arjay Cobarde', '2018-12-14', 'OP323821', NULL),
(77, 0, 'Cebu', 'Mouse', 'SGH817RFCR', 'FCMHH0AKZAND6G', '', '2018-05-30', 'Arjay Cobarde', '2018-05-30', '10003613', 'Deployed', '2019-05-13 04:28:42', 'D-11*', 'Arjay Cobarde', '2018-01-28', 'MS Cha', NULL),
(78, 0, 'Cebu', 'Mouse', 'SGH817RFC9', 'FCMHH0AKZAND59', '', '2018-05-30', 'Arjay Cobarde', '2018-05-30', '10003613', 'Deployed', '2019-05-13 04:29:02', 'D014', 'Arjay Cobarde', '2018-07-25', 'OP287388', NULL),
(79, 0, 'Cebu', 'Mouse', 'SGH817RFCW', 'FCMHH0AKZAND6I', '', '2018-05-30', 'Arjay Cobarde', '2018-05-30', '10003613', 'Deployed', '2019-05-13 04:29:25', 'D019', 'Arjay Cobarde', '2018-10-23', 'OP311248', NULL),
(80, 0, 'Cebu', 'Mouse', 'SGH817RFD8', 'FCMHH0AKZAND5P', '', '2018-05-30', 'Arjay Cobarde', '2018-05-30', '10003613', 'Deployed', '2019-05-13 04:29:52', 'D-12*', 'Arjay Cobarde', '2018-06-28', 'Ms Nina', NULL),
(81, 0, 'Cebu', 'Mouse', 'SGH817RFD2', 'FCMHH0AKZAND5Y', '', '2018-05-30', 'Arjay Cobarde', '2018-05-30', '10003613', 'Deployed', '2019-05-13 04:30:18', 'D013', 'Arjay Cobarde', '2018-07-25', 'OP287385', NULL),
(82, 0, 'Cebu', 'Mouse', 'SGH817RFD9', 'FCMHH0AKZAND5K', '', '2018-05-30', 'Arjay Cobarde', '2018-05-30', '10003613', 'Deployed', '2019-05-13 04:30:36', 'D124', 'Arjay Cobarde', '2018-07-09', 'OP283256', NULL),
(83, 0, 'Cebu', 'Mouse', 'SGH817RFCP', 'FCMHH0AKZAND5Z', '', '2018-05-30', 'Arjay Cobarde', '2018-05-30', '10003613', 'Deployed', '2019-05-13 04:30:55', 'D128', 'Arjay Cobarde', '2018-10-19', 'IN310323', NULL),
(84, 0, 'Cebu', 'Mouse', 'SGH817RFCB', 'FCMHH0AKZAND6F', '', '2018-05-30', 'Arjay Cobarde', '2018-05-30', '10003613', 'Deployed', '2019-05-13 04:31:23', 'D107', 'Arjay Cobarde', '2018-11-02', 'OP313753', NULL),
(85, 0, 'Cebu', 'Mouse', '', 'FCMHH0CQWAIE1Q', '', '2018-05-30', 'Arjay Cobarde', '2018-05-30', '10003613', 'Spare', '2019-05-13 04:32:12', NULL, NULL, NULL, NULL, NULL),
(86, 0, 'Cebu', 'Mouse', '', 'FCMHH0CQWAIE1Y', '', '2018-05-30', 'Arjay Cobarde', '2018-05-30', '10003613', 'Spare', '2019-05-13 04:32:27', NULL, NULL, NULL, NULL, NULL),
(87, 0, 'Cebu', 'Mouse', '', 'FCMHH0CQWAIE1M', '', '2018-05-30', 'Arjay Cobarde', '2018-05-30', '10003613', 'Spare', '2019-05-13 04:32:44', NULL, NULL, NULL, NULL, NULL),
(88, 0, 'Cebu', 'Mouse', '', 'FCMHH0CQWAIE1L', '', '2018-05-30', 'Arjay Cobarde', '2018-05-30', '10003613', 'Spare', '2019-05-13 04:33:02', NULL, NULL, NULL, NULL, NULL),
(89, 0, 'Cebu', 'Mouse', '', 'FCMHH0CQWAIE1X', '', '2018-05-30', 'Arjay Cobarde', '2018-05-30', '10003613', 'Spare', '2019-05-13 04:33:34', NULL, NULL, NULL, NULL, NULL),
(90, 0, 'Cebu', 'Mouse', '', 'FCMHH0CQWAIE2X', '', '2018-05-30', 'Arjay Cobarde', '2018-05-30', '10003613', 'Spare', '2019-05-13 04:33:48', NULL, NULL, NULL, NULL, NULL),
(91, 0, 'Cebu', 'Mouse', '', 'FCMHH0CQWAIE2H', '', '2018-05-30', 'Arjay Cobarde', '2018-05-30', '10003613', 'Spare', '2019-05-13 05:18:58', NULL, NULL, NULL, NULL, NULL),
(92, 0, 'Cebu', 'Mouse', '', 'FCMHH0CQWAIDKO', '', '2018-05-30', 'Arjay Cobarde', '2018-05-30', '10003613', 'Spare', '2019-05-13 05:19:28', NULL, NULL, NULL, NULL, NULL),
(93, 0, 'Cebu', 'Mouse', '', 'FCMHH0CQWAIE1N', '', '2018-05-30', 'Arjay Cobarde', '2018-05-30', '10003613', 'Spare', '2019-05-13 05:19:43', NULL, NULL, NULL, NULL, NULL),
(94, 0, 'Cebu', 'Mouse', '', 'FCMHH0CQWAIE1O', '', '2018-05-30', 'Arjay Cobarde', '2018-05-30', '10003613', 'Spare', '2019-05-13 05:20:03', NULL, NULL, NULL, NULL, NULL),
(95, 0, 'Cebu', 'Mouse', '', 'FCMHH0CQWAIE1U', '', '2018-05-30', 'Arjay Cobarde', '2018-05-30', '10003613', 'Deployed', '2019-05-13 05:20:19', 'D076', 'Arjay Cobarde', '2019-05-22', 'IN360754', NULL),
(96, 0, 'Cebu', 'Mouse', '', 'FCMHH0CQWAIE20', '', '2018-05-30', 'Arjay Cobarde', '2018-05-30', '10003613', 'Spare', '2019-05-13 05:20:37', NULL, NULL, NULL, NULL, NULL),
(97, 0, 'Cebu', 'Mouse', '', 'FCMHH0CQWAIE22', '', '2018-05-30', 'Arjay Cobarde', '2018-05-30', '10003613', 'Spare', '2019-05-13 05:20:53', NULL, NULL, NULL, NULL, NULL),
(98, 0, 'Cebu', 'Mouse', '', 'FCMHH0CQWAIE2N', '', '2018-05-30', 'Arjay Cobarde', '2018-05-30', '10003613', 'Spare', '2019-05-13 05:21:15', NULL, NULL, NULL, NULL, NULL),
(99, 0, 'Cebu', 'Mouse', '', 'FCMHH0CQWAIE2V', '', '2018-05-30', 'Arjay Cobarde', '2018-05-30', '10003613', 'Spare', '2019-05-13 05:21:35', NULL, NULL, NULL, NULL, NULL),
(100, 0, 'Cebu', 'Mouse', '', 'FCMHH0CQWAIE2O', '', '2018-05-30', 'Arjay Cobarde', '2018-05-30', '10003613', 'Deployed', '2019-05-13 05:21:53', 'D070', 'Arjay Cobarde', '2019-05-24', 'OP361361', NULL),
(101, 0, 'Cebu', 'Mouse', '', 'FCMHH0CQWAIE1T', '', '2018-05-30', 'Arjay Cobarde', '2018-05-30', '10003613', 'Spare', '2019-05-13 05:22:12', NULL, NULL, NULL, NULL, NULL),
(102, 0, 'Cebu', 'Mouse', '', 'FCMHH0CQWAIE1W', '', '2018-05-30', 'Arjay Cobarde', '2018-05-30', '10003613', 'Deployed', '2019-05-13 05:22:26', 'D112', 'Arjay Cobarde', '2019-03-16', 'OP344717', NULL),
(103, 0, 'Cebu', 'Mouse', '', 'FCMHH0CQWAIE1R', '', '2018-05-30', 'Arjay Cobarde', '2018-05-30', '10003613', 'Spare', '2019-05-13 05:22:39', NULL, NULL, NULL, NULL, NULL),
(104, 0, 'Cebu', 'Mouse', '', 'FCMHH0CQWAIE1S', '', '2018-05-30', 'Arjay Cobarde', '2018-05-30', '10003613', 'Spare', '2019-05-13 05:22:55', NULL, NULL, NULL, NULL, NULL),
(105, 0, 'Cebu', 'Mouse', '', 'FCMHH0CQWAIE25', '', '2018-05-30', 'Arjay Cobarde', '2018-05-30', '10003613', 'Spare', '2019-05-13 05:23:17', NULL, NULL, NULL, NULL, NULL),
(106, 0, 'Cebu', 'Mouse', '', 'FCMHH0CQWAIE26', '', '2018-05-30', 'Arjay Cobarde', '2018-05-30', '10003613', 'Spare', '2019-05-13 05:23:34', NULL, NULL, NULL, NULL, NULL),
(107, 0, 'Cebu', 'Mouse', '', 'FCMHH0CQWAIE2U', '', '2018-05-30', 'Arjay Cobarde', '2018-05-30', '10003613', 'Spare', '2019-05-13 05:24:23', NULL, NULL, NULL, NULL, NULL),
(108, 0, 'Cebu', 'Mouse', '', 'FCMHH0CQWAIE2S', '', '2018-05-30', 'Arjay Cobarde', '2018-05-30', '10003613', 'Spare', '2019-05-13 05:24:37', NULL, NULL, NULL, NULL, NULL),
(109, 0, 'Cebu', 'Mouse', '', 'FCMHH0CQWAIE21', '', '2018-05-30', 'Arjay Cobarde', '2018-05-30', '10003613', 'Deployed', '2019-05-13 05:24:55', 'D014', 'Arjay Cobarde', '2019-03-07', 'OP342406', NULL),
(110, 0, 'Cebu', 'Mouse', '', 'FCMHH0CQWAIE24', '', '2018-05-30', 'Arjay Cobarde', '2018-05-30', '10003613', 'Deployed', '2019-05-13 05:25:09', 'D033', 'Arjay Cobarde', '2019-05-12', 'OP358170', NULL),
(111, 0, 'Cebu', 'Mouse', '', 'FCMHH0CQWAIE2K', '', '2018-05-30', 'Arjay Cobarde', '2018-05-30', '10003613', 'Spare', '2019-05-13 05:25:24', 'IT Office', 'Arjay Cobarde', '2019-04-09', 'OP505556,OP358956', NULL),
(112, 0, 'Cebu', 'Mouse', '', 'FCMHH0CQWAIE2G', '', '2018-05-30', 'Arjay Cobarde', '2018-05-30', '10003613', 'Spare', '2019-05-13 05:25:40', NULL, NULL, NULL, NULL, NULL),
(113, 0, 'Cebu', 'Mouse', '', 'FCMHH0CQWAIE2D', '', '2018-05-30', 'Arjay Cobarde', '2018-05-30', '10003613', 'Deployed', '2019-05-13 05:26:00', 'D083', 'Arjay Cobarde', '2019-05-09', 'OP35720', NULL),
(114, 0, 'Cebu', 'Mouse', '', 'FCMHH0CQWAIE2E', '', '2018-05-30', 'Arjay Cobarde', '2019-05-30', '10003613', 'Deployed', '2019-05-13 05:26:17', 'D-7*', 'Arjay Cobarde', '2019-04-20', 'OP352973', NULL),
(115, 0, 'Cebu', 'Mouse', '', 'FCMHH0CQWAIE2L', '', '2018-05-30', 'Arjay Cobarde', '2018-05-30', '10003613', 'Deployed', '2019-05-13 05:26:36', 'D046', 'Arjay Cobarde', '2019-03-11', 'OP343341', NULL),
(116, 0, 'Cebu', 'Mouse', '', 'FCMHH0CQWAIE2W', '', '2018-05-30', 'Arjay Cobarde', '2018-05-30', '10003613', 'Deployed', '2019-05-13 05:26:50', 'D063', 'Arjay Cobarde', '2019-04-18', 'OP352799', NULL),
(117, 0, 'Cebu', 'Mouse', '', 'FCMHH0CQWAIE2Y', '', '2018-05-30', 'Arjay Cobarde', '2018-05-30', '10003613', 'Deployed', '2019-05-13 05:27:05', 'D071', 'Arjay Cobarde', '2019-04-05', 'OP349996', NULL),
(118, 0, 'Cebu', 'Mouse', '', 'FCMHH0CQWAIE2R', '', '2018-05-30', 'Arjay Cobarde', '2018-05-30', '10003613', 'Deployed', '2019-05-13 05:27:20', 'D117', 'Arjay Cobarde', '2019-05-18', 'OP359736', NULL),
(119, 0, 'Cebu', 'Mouse', '', 'FCMHH0CQWAIE2T', '', '2018-05-30', 'Arjay Cobarde', '2018-05-30', '10003613', 'Deployed', '2019-05-13 05:27:36', 'D110', 'Arjay Cobarde', '2019-05-01', 'OP355417', NULL),
(120, 0, 'Cebu', 'Mouse', '', 'FCMHH0CQWAIE2A', '', '2018-05-30', 'Arjay Cobarde', '2018-05-30', '10003613', 'Deployed', '2019-05-13 05:27:54', 'D026', 'Administrator', '2019-05-15', 'OP358956', NULL),
(121, 0, 'Cebu', 'Mouse', '', 'FCMHH0CQWAIE2M', '', '2018-05-30', 'Arjay Cobarde', '2018-05-30', '10003613', 'Deployed', '2019-05-13 05:28:11', 'D039', 'Arjay Cobarde', '2019-03-14', 'OP344129', NULL),
(122, 0, 'Cebu', 'Mouse', '', 'FCMHH0CQWAIE1V', '', '2018-05-30', 'Arjay Cobarde', '2018-05-30', '10003613', 'Spare', '2019-05-13 05:28:25', NULL, NULL, NULL, NULL, NULL),
(123, 0, 'Cebu', 'Mouse', '', 'FCMHH0CQWAIE1Z', '', '2018-05-30', 'Arjay Cobarde', '2018-05-30', '10003613', 'Deployed', '2019-05-13 05:28:38', 'D012', 'Arjay Cobarde', '2019-04-22', 'OP353134', NULL),
(124, 0, 'Cebu', 'Mouse', '', 'FCMHH0CQWAIE2I', '', '2018-05-30', 'Arjay Cobarde', '2018-05-30', '10003613', 'Deployed', '2019-05-13 05:28:51', 'D098', 'Arjay Cobarde', '2019-03-13', 'OP344017', NULL),
(125, 0, 'Cebu', 'Mouse', '', 'FCMHH0CQWAIE1P', '', '2018-05-30', 'Arjay Cobarde', '2018-05-30', '10003613', 'Deployed', '2019-05-13 05:29:05', 'D003', 'Arjay Cobarde', '2019-04-05', 'OP349876', NULL),
(126, 0, 'Cebu', 'Mouse', '', 'FCMHH0CQWAIE27', '', '2018-05-30', 'Arjay Cobarde', '2018-05-30', '10003613', 'Deployed', '2019-05-13 05:29:23', 'D134', 'Arjay Cobarde', '2019-03-21', 'OP346034', NULL),
(128, 0, 'Cebu', 'Headset', '', 'MSCEBHS017', '', '2018-09-10', 'Arjay Cobarde', '2018-09-10', '10004238', 'Deployed', '2019-05-21 15:49:03', 'D125', 'Arjay Cobarde', '2018-09-26', 'OP303663', NULL),
(129, 0, 'Cebu', 'Headset', '', 'MSCEBHS018', '', '2018-09-10', 'Arjay Cobarde', '2018-09-10', '10004238 ', 'Spare', '2019-05-21 15:56:29', NULL, NULL, NULL, NULL, NULL),
(130, 0, 'Cebu', 'Headset', '', 'MSCEBHS019', '', '2018-09-10', 'Arjay Cobarde', '2018-09-10', '10004238', 'Deployed', '2019-05-21 15:56:55', 'D-6*', 'Arjay Cobarde', '2019-05-18', 'Ticket5222019', NULL),
(131, 0, 'Cebu', 'Headset', '', 'MSCEBHS020', '', '2018-09-10', 'Arjay Cobarde', '2018-09-10', '10004238', 'Spare', '2019-05-21 15:57:14', NULL, NULL, NULL, NULL, NULL),
(132, 0, 'Cebu', 'Headset', '', 'MSCEBHS021', '', '2018-09-10', 'Arjay Cobarde', '2018-09-10', '10004238', 'Spare', '2019-05-21 15:57:56', NULL, NULL, NULL, NULL, NULL),
(133, 0, 'Cebu', 'Headset', '', 'MSCEBHS022', '', '2018-09-10', 'Arjay Cobarde', '2018-09-10', '10004238', 'Spare', '2019-05-21 15:58:24', NULL, NULL, NULL, NULL, NULL),
(134, 0, 'Cebu', 'Headset', '', 'MSCEBHS023', '', '2018-09-10', 'Arjay Cobarde', '2018-09-10', '10004238', 'Spare', '2019-05-21 15:58:49', NULL, NULL, NULL, NULL, NULL),
(135, 0, 'Cebu', 'Headset', '', 'MSCEBHS024', '', '2018-09-10', 'Arjay Cobarde', '2018-09-10', '10004238', 'Spare', '2019-05-21 15:59:22', NULL, NULL, NULL, NULL, NULL),
(136, 0, 'Cebu', 'Headset', '', 'MSCEBHS025', '', '2018-09-10', 'Arjay Cobarde', '2018-09-10', '10004238', 'Spare', '2019-05-21 15:59:43', NULL, NULL, NULL, NULL, NULL),
(137, 0, 'Cebu', 'Headset', '', 'MSCEBHS026', '', '2018-09-10', 'Arjay Cobarde', '2018-09-10', '10004238', 'Spare', '2019-05-21 16:00:04', NULL, NULL, NULL, NULL, NULL),
(138, 0, 'Cebu', 'Keyboard', '', 'SampleOnly', '', '2019-05-22', 'Arjay Cobarde', '2019-05-23', 'POSample101', 'Spare', '2019-05-22 14:36:54', 'D001', 'Arjay Cobarde', '2019-05-22', 'TicketSample101', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `asset_batteries`
--

CREATE TABLE `asset_batteries` (
  `ID` int(11) NOT NULL,
  `DataPort` varchar(255) NOT NULL,
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

INSERT INTO `asset_batteries` (`ID`, `DataPort`, `Brand`, `Model`, `SerialNumber`, `PONumber`, `UPS_AssetTag`, `UPSBrandModel`, `DeliveryDate`, `TicketNumber`, `DateInstalled`, `PerformedBy`, `Status`) VALUES
(1, '', 'ACCU-CELL Power', '12V 7AH', '334367', '10004795', '', '', '0000-00-00', '', '0000-00-00', '', 'Spare'),
(2, '', 'ACCU-CELL Power', '12V 7AH', '334368', '10004795', '', '', '0000-00-00', '', '0000-00-00', '', 'Spare'),
(3, '', 'ACCU-CELL Power', '12V 7AH', '334369', '10004795', '', '', '0000-00-00', '', '0000-00-00', '', 'Spare'),
(4, '', 'ACCU-CELL Power', '12V 7AH', '334370', '10004795', '', '', '0000-00-00', '', '0000-00-00', '', 'Spare'),
(5, '', 'ACCU-CELL Power', '12V 7AH', '334371', '10004795', '', '', '0000-00-00', '', '0000-00-00', '', 'Spare'),
(6, '', 'ACCU-CELL Power', '12V 7AH', '334372', '10004795', '', '', '0000-00-00', '', '0000-00-00', '', 'Spare'),
(7, '', 'ACCU-CELL Power', '12V 7AH', '334373', '10004795', '', '', '0000-00-00', '', '0000-00-00', '', 'Spare'),
(8, '', 'ACCU-CELL Power', '12V 7AH', '334374', '10004795', '', '', '0000-00-00', '', '0000-00-00', '', 'Spare'),
(9, '', 'ACCU-CELL Power', '12V 7AH', '334375', '10004795', '', '', '0000-00-00', '', '0000-00-00', '', 'Spare'),
(10, '', 'ACCU-CELL Power', '12V 7AH', '334376', '10004795', '', '', '0000-00-00', '', '0000-00-00', '', 'Spare'),
(11, '', 'ACCU-CELL Power', '12V 7AH', '334377', '10004795', '', '', '0000-00-00', '', '0000-00-00', '', 'Spare'),
(12, '', 'ACCU-CELL Power', '12V 7AH', '334378', '10004795', '', '', '0000-00-00', '', '0000-00-00', '', 'Spare'),
(13, '', 'ACCU-CELL Power', '12V 7AH', '334379', '10004795', '', '', '0000-00-00', '', '0000-00-00', '', 'Spare'),
(14, '', 'ACCU-CELL Power', '12V 7AH', '334380', '10004795', '', '', '0000-00-00', '', '0000-00-00', '', 'Spare'),
(15, '', 'ACCU-CELL Power', '12V 7AH', '334381', '10004795', '', '', '0000-00-00', '', '0000-00-00', '', 'Spare'),
(16, '', 'ACCU-CELL Power', '12V 7AH', '334382', '10004795', '', '', '0000-00-00', '', '0000-00-00', '', 'Spare'),
(17, '', 'ACCU-CELL Power', '12V 7AH', '334383', '10004795', '', '', '0000-00-00', '', '0000-00-00', '', 'Spare'),
(18, '', 'ACCU-CELL Power', '12V 7AH', '334384', '10004795', '', '', '0000-00-00', '', '0000-00-00', '', 'Spare'),
(19, '', 'ACCU-CELL Power', '12V 7AH', '334385', '10004795', '', '', '0000-00-00', '', '0000-00-00', '', 'Spare'),
(20, '', 'ACCU-CELL Power', '12V 7AH', '334386', '10004795', '', '', '0000-00-00', '', '0000-00-00', '', 'Spare'),
(21, '', 'ACCU-CELL Power', '12V 7AH', '334387', '10004795', '', '', '0000-00-00', '', '0000-00-00', '', 'Spare'),
(22, '', 'ACCU-CELL Power', '12V 7AH', '334388', '10004795', '', '', '0000-00-00', '', '0000-00-00', '', 'Spare'),
(23, '', 'ACCU-CELL Power', '12V 7AH', '334389', '10004795', '', '', '0000-00-00', '', '0000-00-00', '', 'Spare'),
(24, '', 'ACCU-CELL Power', '12V 7AH', '334390', '10004795', '', '', '0000-00-00', '', '0000-00-00', '', 'Spare'),
(25, '', 'ACCU-CELL Power', '12V 7AH', '334391', '10004795', '', '', '0000-00-00', '', '0000-00-00', '', 'Spare'),
(26, '', 'ACCU-CELL Power', '12V 7AH', '334392', '10004795', '', '', '0000-00-00', '', '0000-00-00', '', 'Spare'),
(27, '', 'ACCU-CELL Power', '12V 7AH', '334393', '10004795', '', '', '0000-00-00', '', '0000-00-00', '', 'Spare'),
(28, '', 'ACCU-CELL Power', '12V 7AH', '334394', '10004795', '', '', '0000-00-00', '', '0000-00-00', '', 'Spare'),
(29, '', 'ACCU-CELL Power', '12V 7AH', '334395', '10004795', '', '', '0000-00-00', '', '0000-00-00', '', 'Spare'),
(30, '', 'ACCU-CELL Power', '12V 7AH', '334396', '10004795', '', '', '0000-00-00', '', '0000-00-00', '', 'Spare'),
(31, '', 'ACCU-CELL Power', '12V 7AH', '334397', '10004795', '', '', '0000-00-00', '', '0000-00-00', '', 'Spare'),
(32, '', 'ACCU-CELL Power', '12V 7AH', '334398', '10004795', '', '', '0000-00-00', '', '0000-00-00', '', 'Spare'),
(33, '', 'ACCU-CELL Power', '12V 7AH', '334399', '10004795', '', '', '0000-00-00', '', '0000-00-00', '', 'Spare'),
(34, '', 'ACCU-CELL Power', '12V 7AH', '334400', '10004795', '', '', '0000-00-00', '', '0000-00-00', '', 'Spare'),
(35, '', 'ACCU-CELL Power', '12V 7AH', '334401', '10004795', '', '', '0000-00-00', '', '0000-00-00', '', 'Spare'),
(36, '', 'ACCU-CELL Power', '12V 7AH', '334402', '10004795', '', '', '0000-00-00', '', '0000-00-00', '', 'Spare'),
(37, '', 'ACCU-CELL Power', '12V 7AH', '334403', '10004795', '', '', '0000-00-00', '', '0000-00-00', '', 'Spare'),
(38, '', 'ACCU-CELL Power', '12V 7AH', '334404', '10004795', '', '', '0000-00-00', '', '0000-00-00', '', 'Spare'),
(39, '', 'ACCU-CELL Power', '12V 7AH', '334405', '10004795', '', '', '0000-00-00', '', '0000-00-00', '', 'Spare'),
(40, '', 'ACCU-CELL Power', '12V 7AH', '334406', '10004795', '', '', '0000-00-00', '', '0000-00-00', '', 'Spare'),
(41, '', 'ACCU-CELL Power', '12V 7AH', '334407', '10004795', '', '', '0000-00-00', '', '0000-00-00', '', 'Spare'),
(42, '', 'ACCU-CELL Power', '12V 7AH', '334408', '10004795', '', '', '0000-00-00', '', '0000-00-00', '', 'Spare'),
(43, '', 'ACCU-CELL Power', '12V 7AH', '334409', '10004795', '', '', '0000-00-00', '', '0000-00-00', '', 'Spare'),
(44, '', 'ACCU-CELL Power', '12V 7AH', '334410', '10004795', '', '', '0000-00-00', '', '0000-00-00', '', 'Spare'),
(45, '', 'ACCU-CELL Power', '12V 7AH', '334411', '10004795', '', '', '0000-00-00', '', '0000-00-00', '', 'Spare'),
(46, '', 'ACCU-CELL Power', '12V 7AH', '334412', '10004795', '', '', '0000-00-00', '', '0000-00-00', '', 'Spare'),
(47, '', 'ACCU-CELL Power', '12V 7AH', '334413', '10004795', '', '', '0000-00-00', '', '0000-00-00', '', 'Spare'),
(48, '', 'ACCU-CELL Power', '12V 7AH', '334414', '10004795', '', '', '0000-00-00', '', '0000-00-00', '', 'Spare'),
(49, '', 'ACCU-CELL Power', '12V 7AH', '334415', '10004795', '', '', '0000-00-00', '', '0000-00-00', '', 'Spare'),
(50, '', 'ACCU-CELL Power', '12V 7AH', '334416', '10004795', '', '', '0000-00-00', '', '0000-00-00', '', 'Spare'),
(51, '', 'ACCU-CELL Power', '12V 7AH', '334417', '10004795', '', '', '0000-00-00', '', '0000-00-00', '', 'Spare'),
(52, '', 'ACCU-CELL Power', '12V 7AH', '334418', '10004795', '', '', '0000-00-00', '', '0000-00-00', '', 'Spare'),
(53, '', 'ACCU-CELL Power', '12V 7AH', '334419', '10004795', '', '', '0000-00-00', '', '0000-00-00', '', 'Spare'),
(54, '', 'ACCU-CELL Power', '12V 7AH', '334420', '10004795', '', '', '0000-00-00', '', '0000-00-00', '', 'Spare'),
(55, '', 'ACCU-CELL Power', '12V 7AH', '334421', '10004795', '', '', '0000-00-00', '', '0000-00-00', '', 'Spare'),
(56, '', 'ACCU-CELL Power', '12V 7AH', '334422', '10004795', '', '', '0000-00-00', '', '0000-00-00', '', 'Spare'),
(57, '', 'ACCU-CELL Power', '12V 7AH', '334423', '10004795', '', '', '0000-00-00', '', '0000-00-00', '', 'Spare'),
(58, '', 'ACCU-CELL Power', '12V 7AH', '334424', '10004795', '', '', '0000-00-00', '', '0000-00-00', '', 'Spare'),
(59, '', 'ACCU-CELL Power', '12V 7AH', '334425', '10004795', '', '', '0000-00-00', '', '0000-00-00', '', 'Spare'),
(60, '', 'ACCU-CELL Power', '12V 7AH', '334426', '10004795', '', '', '0000-00-00', '', '0000-00-00', '', 'Spare'),
(61, '', 'ACCU-CELL Power', '12V 7AH', '334427', '10004795', '', '', '0000-00-00', '', '0000-00-00', '', 'Spare'),
(62, '', 'ACCU-CELL Power', '12V 7AH', '334428', '10004795', '', '', '0000-00-00', '', '0000-00-00', '', 'Spare'),
(63, '', 'ACCU-CELL Power', '12V 7AH', '334429', '10004795', '', '', '0000-00-00', '', '0000-00-00', '', 'Spare'),
(64, '', 'ACCU-CELL Power', '12V 7AH', '334430', '10004795', '', '', '0000-00-00', '', '0000-00-00', '', 'Spare'),
(65, '', 'ACCU-CELL Power', '12V 7AH', '334431', '10004795', '', '', '0000-00-00', '', '0000-00-00', '', 'Spare'),
(66, '', 'ACCU-CELL Power', '12V 7AH', '334432', '10004795', '', '', '0000-00-00', '', '0000-00-00', '', 'Spare'),
(67, '', 'ACCU-CELL Power', '12V 7AH', '334433', '10004795', '', '', '0000-00-00', '', '0000-00-00', '', 'Spare'),
(68, '', 'ACCU-CELL Power', '12V 7AH', '334434', '10004795', '', '', '0000-00-00', '', '0000-00-00', '', 'Spare'),
(69, '', 'ACCU-CELL Power', '12V 7AH', '334435', '10004795', '', '', '0000-00-00', '', '0000-00-00', '', 'Spare'),
(70, '', 'ACCU-CELL Power', '12V 7AH', '334436', '10004795', '', '', '0000-00-00', '', '0000-00-00', '', 'Spare'),
(71, '', 'ACCU-CELL Power', '12V 7AH', '334437', '10004795', '', '', '0000-00-00', '', '0000-00-00', '', 'Spare'),
(72, '', 'ACCU-CELL Power', '12V 7AH', '334438', '10004795', '', '', '0000-00-00', '', '0000-00-00', '', 'Spare'),
(73, '', 'ACCU-CELL Power', '12V 7AH', '334439', '10004795', '', '', '0000-00-00', '', '0000-00-00', '', 'Spare'),
(74, '', 'ACCU-CELL Power', '12V 7AH', '334440', '10004795', '', '', '0000-00-00', '', '0000-00-00', '', 'Spare'),
(75, '', 'ACCU-CELL Power', '12V 7AH', '334441', '10004795', '', '', '0000-00-00', '', '0000-00-00', '', 'Spare'),
(76, '', 'ACCU-CELL Power', '12V 7AH', '334442', '10004795', '', '', '0000-00-00', '', '0000-00-00', '', 'Spare'),
(77, 'D-20*', 'ACCU-CELL Power', '12V 7AH', '334443', '10004795_1', 'MSCEBUF14U001', '', '0000-00-00', 'sample_ticket', '2019-06-06', 'Arjay Cobarde', 'Deployed'),
(78, 'Storage', 'ACCU-CELL Power', '12V 7AH', '334444', '10004795_1', 'MSCEBUF14u001', '', '0000-00-00', 'OP359736', '2019-06-05', 'Arjay Cobarde', 'Deployed'),
(79, 'Storage', 'ACCU-CELL Power', '12V 7AH', '334445', '10004795', 'MSCEBUF14U001', '', '0000-00-00', 'OP359736', '2019-06-06', 'Arjay Cobarde', 'Deployed'),
(80, 'Storage', 'ACCU-CELL Power', '12V 7AH', '334446', '10004795', 'MSCEBUF14U002', '', '0000-00-00', 'OP359736_sample', '2019-06-06', 'Arjay Cobarde', 'Deployed'),
(83, 'Storage', 'ACCU-CELL Power', '12V 7AH', '3344432', '10004795', 'MSCEBUUPS001', '', '2019-06-04', 'OP359736', '2019-06-06', 'Arjay Cobarde', 'Spare');

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
  `Floor` varchar(255) NOT NULL,
  `DataPort` varchar(255) NOT NULL,
  `AssetType` varchar(255) NOT NULL,
  `BundledCPU` varchar(255) NOT NULL,
  `Brand` varchar(255) NOT NULL,
  `Model` varchar(255) NOT NULL,
  `SerialNumber` varchar(255) NOT NULL,
  `Status` varchar(255) NOT NULL,
  `Ownership` varchar(255) NOT NULL,
  `OwnershipClientName` varchar(255) NOT NULL,
  `MicrostatusTicket` varchar(255) NOT NULL,
  `PONumber` varchar(255) NOT NULL,
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

INSERT INTO `msassets` (`ID`, `Site`, `Floor`, `DataPort`, `AssetType`, `BundledCPU`, `Brand`, `Model`, `SerialNumber`, `Status`, `Ownership`, `OwnershipClientName`, `MicrostatusTicket`, `PONumber`, `PODate`, `DeliveryDate`, `VendorName`, `WarrantyStartDate`, `WarrantyEndDate`, `DateAdded`, `AddedBy`, `DeployedBy`, `DateUpdated`, `UpdatedBy`) VALUES
(1, 'The Link', '14F', 'Storage', 'Keyboard', '', '', '', 'BEXHP0CCPAP6J3', 'Spare', 'MicroSourcing', '', '0', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(2, 'The Link', '14F', 'Storage', 'Keyboard', '', '', '', 'BEXHP0CCPAP6J2', 'Spare', 'MicroSourcing', '', '0', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(3, 'The Link', '14F', 'D119', 'Keyboard', '', '', '', 'BEXHP0CCPAP6J9', 'Deployed', 'MicroSourcing', '', 'OP358118', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(4, 'The Link', '14F', 'D025', 'Keyboard', '', '', '', 'BEXHP0CCPAP6J4', 'Deployed', 'MicroSourcing', '', 'OP299018', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(5, 'The Link', '14F', 'Storage', 'Keyboard', '', '', '', 'BEXHP0CCPAP6J8', 'Spare', 'MicroSourcing', '', '0', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(6, 'The Link', '14F', 'Storage', 'Keyboard', '', '', '', 'BEXHP0CCPAP6J6', 'Spare', 'MicroSourcing', '', '0', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(7, 'The Link', '14F', 'Storage', 'Keyboard', '', '', '', 'BEXHP0CCPAP6J5', 'Spare', 'MicroSourcing', '', '0', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(8, 'The Link', '14F', 'Storage', 'Keyboard', '', '', '', 'BEXHP0CCPAP6J7', 'Spare', 'MicroSourcing', '', '0', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(9, 'The Link', '14F', 'D020', 'Keyboard', '', '', '', 'BEXHP0CCPAP8JL', 'Deployed', 'MicroSourcing', '', 'OP303950', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(10, 'The Link', '14F', 'Storage', 'Keyboard', '', '', '', 'BEXHP0CCPAP8JN', 'Spare', 'MicroSourcing', '', '0', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(11, 'The Link', '14F', 'Storage', 'Keyboard', '', '', '', 'BEXHP0CCPAP8JM', 'Spare', 'MicroSourcing', '', '0', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
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
(34, 'The Link', '14F', 'Storage', 'Keyboard', 'SGH817RFD7', '', '', 'BEXHP0CCPAP0FA', 'Spare', 'MicroSourcing', '', '0', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(35, 'The Link', '14F', 'D001', 'Keyboard', 'SGH817RFCR', '', '', 'BEXHP0CCPAP6IU', 'Deployed', 'MicroSourcing', '', 'NoTicket', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(36, 'The Link', '14F', 'D084', 'Keyboard', 'SGH817RFC9', '', '', 'BEXHP0CCPAP8JW', 'Deployed', 'MicroSourcing', '', 'OP349410', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(37, 'The Link', '14F', 'D119', 'Keyboard', 'SGH817RFCW', '', '', 'BEXHP0CCPAP8JX', 'Deployed', 'MicroSourcing', '', 'OP305859', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(38, 'The Link', '14F', 'D001', 'Keyboard', 'SGH817RFD8', '', '', 'BEXHP0CCPAP8JZ', 'Deployed', 'MicroSourcing', '', 'Noticket', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(39, 'The Link', '14F', 'D113', 'Keyboard', 'SGH817RFD2', '', '', 'BEXHP0CCPAP8JV', 'Deployed', 'MicroSourcing', '', 'OP355421', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(40, 'The Link', '14F', 'D077', 'Keyboard', 'SGH817RFD9', '', '', 'BEXHP0CCPAP8JY', 'Deployed', 'MicroSourcing', '', 'OP294348', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(41, 'The Link', '14F', 'D136', 'Keyboard', 'SGH817RFCP', '', '', 'BEXHP0CCPAP8DX', 'Deployed', 'MicroSourcing', '', 'OP298381', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(42, 'The Link', '14F', 'Storage', 'Keyboard', 'SGH817RFCB', '', '', 'BEXHP0CCPAP6FH', 'Spare', 'MicroSourcing', '', '0', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(43, 'The Link', '14F', 'D114', 'Mouse', 'SGH817RFC3', '', '', 'FCMHH0AKZAND5M', 'Deployed', 'MicroSourcing', '', 'OP330065', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(44, 'The Link', '14F', 'D063', 'Mouse', 'SGH817RFC4', '', '', 'FCMHH0AKZAND5U', 'Deployed', 'MicroSourcing', '', 'OP304332', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(45, 'The Link', '14F', 'D060', 'Mouse', 'SGH817RFCG', '', '', 'FCMHH0AKZAND60', 'Deployed', 'MicroSourcing', '', 'OP295067', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(46, 'The Link', '14F', 'D011', 'Mouse', 'SGH817RFCH', '', '', 'FCMHH0AKZAND5R', 'Deployed', 'MicroSourcing', '', 'OP287385', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(47, 'The Link', '14F', 'IT Office', 'Mouse', 'SGH817RFCL', '', '', 'FCMHH0AKZAND5O', 'For Warranty', 'MicroSourcing', '', 'OP336663,OP361422', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', 'Arjay Cobarde', '2019-05-25', ''),
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
(58, 'The Link', '14F', 'D056', 'Mouse', 'SGH817RFCV', '', '', 'FCMMH0AKZAND69', 'Deployed', 'MicroSourcing', '', 'OP320519', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
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
(86, 'The Link', '14F', 'Storage', 'Mouse', '0', '', '', 'FCMHH0CQWAIE1Y', 'Spare', 'MicroSourcing', '', '0', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(87, 'The Link', '14F', 'Storage', 'Mouse', '0', '', '', 'FCMHH0CQWAIE1M', 'Spare', 'MicroSourcing', '', '0', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(88, 'The Link', '14F', 'Storage', 'Mouse', '0', '', '', 'FCMHH0CQWAIE1L', 'Spare', 'MicroSourcing', '', '0', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(89, 'The Link', '14F', 'Storage', 'Mouse', '0', '', '', 'FCMHH0CQWAIE1X', 'Spare', 'MicroSourcing', '', '0', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(90, 'The Link', '14F', 'Storage', 'Mouse', '0', '', '', 'FCMHH0CQWAIE2X', 'Spare', 'MicroSourcing', '', '0', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(91, 'The Link', '14F', 'Storage', 'Mouse', '0', '', '', 'FCMHH0CQWAIE2H', 'Spare', 'MicroSourcing', '', '0', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(92, 'The Link', '14F', 'Storage', 'Mouse', '0', '', '', 'FCMHH0CQWAIDKO', 'Spare', 'MicroSourcing', '', '0', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(93, 'The Link', '14F', 'Storage', 'Mouse', '0', '', '', 'FCMHH0CQWAIE1N', 'Spare', 'MicroSourcing', '', '0', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(94, 'The Link', '14F', 'Storage', 'Mouse', '0', '', '', 'FCMHH0CQWAIE1O', 'Spare', 'MicroSourcing', '', '0', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(95, 'The Link', '14F', 'D076', 'Mouse', '0', '', '', 'FCMHH0CQWAIE1U', 'Deployed', 'MicroSourcing', '', 'IN360754', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(96, 'The Link', '14F', 'Storage', 'Mouse', '0', '', '', 'FCMHH0CQWAIE20', 'Spare', 'MicroSourcing', '', '0', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(97, 'The Link', '14F', 'Storage', 'Mouse', '0', '', '', 'FCMHH0CQWAIE22', 'Spare', 'MicroSourcing', '', '0', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
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
(111, 'The Link', '14F', 'D029', 'Mouse', '0', '', '', 'FCMHH0CQWAIE2K', 'Deployed', 'MicroSourcing', '', 'OP505556,OP358956,OP364675', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', 'Arjay Cobarde', '2019-06-07', ''),
(112, 'The Link', '14F', 'Storage', 'Mouse', '0', '', '', 'FCMHH0CQWAIE2G', 'Spare', 'MicroSourcing', '', '0', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(113, 'The Link', '14F', 'D083', 'Mouse', '0', '', '', 'FCMHH0CQWAIE2D', 'Deployed', 'MicroSourcing', '', 'OP35720', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(114, 'The Link', '14F', 'D-7*', 'Mouse', '0', '', '', 'FCMHH0CQWAIE2E', 'Deployed', 'MicroSourcing', '', 'OP352973', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
(115, 'The Link', '14F', 'D046', 'Mouse', '0', '', '', 'FCMHH0CQWAIE2L', 'Deployed', 'MicroSourcing', '', 'OP343341', '10003613', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '', '', '0000-00-00', ''),
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
(152, 'The Link', '14F', 'Storage', 'Keyboard', 'Bundled Sample', 'Brand Sample', 'Brand Model', 'Brand Serial Number', 'For Warranty', '', '', '', 'POSample', '2019-05-29', '2019-05-29', 'Vendor Samle', '2019-05-29', '2019-05-24', '2019-05-28 22:11:49', 'Arjay Cobarde', '', '0000-00-00', '');

-- --------------------------------------------------------

--
-- Stand-in structure for view `networkdowntime`
-- (See below for the actual view)
--
CREATE TABLE `networkdowntime` (
`ID` int(11)
,`Downtime` bigint(21)
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
  `OutageDuration` tinyint(4) NOT NULL,
  `RFO` varchar(255) NOT NULL,
  `PerformedBy` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `network_outage`
--

INSERT INTO `network_outage` (`ID`, `Site`, `client`, `SelectISP`, `Status`, `select_circuit`, `TicketID`, `DateStarted`, `DateRestored`, `OutageDuration`, `RFO`, `PerformedBy`) VALUES
(1, 'The Link', '', 'GLOBE', 'Closed', '', 'CS-10112780', '2019-01-03 02:17:00', '2019-01-03 08:24:00', 0, 'No active alarm monitored on the circuit trail, monitored with traffic', 'Administrator'),
(2, 'The Link', '', 'GLOBE', 'Closed', '', 'NoTicket_1', '2019-03-02 05:07:00', '2019-03-02 13:11:00', 0, 'Note: Globe did not reply to our email', 'Arjay Cobarde'),
(3, 'The Link', '', 'GLOBE', 'Closed', '', 'CS-10199342', '2019-03-06 14:59:00', '2019-03-06 23:05:00', 0, 'Circuit was initially affected by a network outage at Iloilo due to FOC Cut', 'Arjay Cobarde'),
(4, 'The Link', '', 'GLOBE', 'Closed', '', 'CS-10204240', '2019-03-11 09:22:00', '2019-03-11 11:08:00', 0, 'No active alarm monitored with historical error', 'Arjay Cobarde'),
(5, 'The Link', '', 'GLOBE', 'Closed', '', 'NoTicket_2', '2019-03-24 13:27:00', '2019-03-24 14:16:00', 0, 'Note: No email reply from Globe', 'Arjay Cobarde'),
(6, 'The Link', '', 'GLOBE', 'Closed', '', 'CS-10225530', '2019-03-25 21:49:00', '2019-03-26 04:31:00', 0, ' link is currently affected by the network outage between Tektite Pasig to Makati.', 'Arjay Cobarde'),
(7, 'The Link', '', 'GLOBE', 'Closed', '', 'CS-10254787', '2019-04-15 21:32:00', '2019-04-16 00:03:00', 0, '48core UG hit by backhoe due to ongoing road widening by DPWH project at brgy. Bantayan, SJB, Antique. ', 'Arjay Cobarde'),
(8, 'The Link', '', 'GLOBE', 'Closed', '', 'CS-10259337', '2019-04-22 00:19:00', '2019-04-22 13:55:00', 0, 'Techno Plaza node is seen with active alarm\r\n-dummy', 'Arjay Cobarde'),
(9, 'The Link', '', 'GLOBE', 'Closed', '', 'CS-10265591', '2019-04-25 22:31:00', '2019-04-25 23:30:00', 0, '\"RFO: Degraded signal between Makati and Paco\r\nAT: Alarms cleared prior to isolation\"', 'Arjay Cobarde'),
(10, 'The Link', '', 'GLOBE', 'Closed', '', 'CS-10288580', '2019-05-11 01:00:00', '2019-05-11 03:00:00', 0, 'Degraded link between Paco to Makati', 'Arjay Cobarde'),
(12, 'The Link', '', 'GLOBE', 'Closed', '446539', 'CS-10296630', '2019-05-17 01:55:00', '2019-05-17 05:13:00', 0, 'Circuit is initially affected by our network outage in Binan - Tiaong. 24c aerial FOC dragged by vehicle at Sto Tomas Batangas Pulling maintenance loop of FOC and re-spliced.', 'Arjay Cobarde'),
(13, 'The Link', '', 'GLOBE', 'Closed', '446539', 'CS-10312985', '2019-05-25 21:05:00', '2019-05-26 13:30:00', 0, 'Seeing historical hits between Makati and PACO. Already raise to support for permanent solution. ', 'Arjay Cobarde'),
(14, 'The Link', '', 'GLOBE', 'Closed', '446539', 'NoTicket_06042019', '2019-06-04 14:31:00', '2019-06-04 18:03:00', 0, '', 'Arjay Cobarde');

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
-- (See below for the actual view)
--
CREATE TABLE `update_asset` (
`ID` int(11)
,`DataPort` varchar(255)
,`Status` varchar(255)
,`MicrostatusTicket` varchar(255)
,`PONumber` varchar(255)
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
  `user_roles` varchar(255) DEFAULT NULL,
  `reg_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_name`, `user_password`, `user_email`, `user_roles`, `reg_date`) VALUES
(1, 'Administrator', 'ff9d61fadef920f9de831b4044446b0f', 'admin@localhost.com', 'Administrator', '2019-05-12 06:24:08'),
(2, 'Arjay Cobarde', '42e23624daa4efec80eea1a135b79a4d', 'arjay.cobarde@microsourcing.ph', 'Administrator', '2019-05-13 03:47:38'),
(4, 'Team XTN', '2ac9cb7dc02b3c0083eb70898e549b63', 'teamxtn@localhost.com', 'Operation Associate Specialist', '2019-05-15 17:12:19'),
(5, 'Ed', 'ff9d61fadef920f9de831b4044446b0f', 'ed.banez@microsourcing.com', 'Administrator', '2019-05-18 00:29:36'),
(6, 'Julie Himaya', '42f749ade7f9e195bf475f37a44cafcb', 'julie.himaya@microsourcing.ph', 'Administrator', '2019-05-18 00:31:11');

-- --------------------------------------------------------

--
-- Table structure for table `user_group`
--

CREATE TABLE `user_group` (
  `id` int(11) NOT NULL,
  `UserRoles` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_group`
--

INSERT INTO `user_group` (`id`, `UserRoles`, `created_at`) VALUES
(17, 'User', '2019-05-08 18:05:06'),
(18, 'Operation Associate Specialist', '2019-05-08 18:06:01'),
(19, 'Administrator', '2019-05-08 18:11:59');

-- --------------------------------------------------------

--
-- Structure for view `networkdowntime`
--
DROP TABLE IF EXISTS `networkdowntime`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `networkdowntime`  AS  select `network_outage`.`ID` AS `ID`,timestampdiff(HOUR,`network_outage`.`DateStarted`,`network_outage`.`DateRestored`) AS `Downtime` from `network_outage` ;

-- --------------------------------------------------------

--
-- Structure for view `update_asset`
--
DROP TABLE IF EXISTS `update_asset`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `update_asset`  AS  select `msassets`.`ID` AS `ID`,`msassets`.`DataPort` AS `DataPort`,`msassets`.`Status` AS `Status`,`msassets`.`MicrostatusTicket` AS `MicrostatusTicket`,`msassets`.`PONumber` AS `PONumber` from `msassets` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assets_old`
--
ALTER TABLE `assets_old`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `assets_old`
--
ALTER TABLE `assets_old`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

--
-- AUTO_INCREMENT for table `asset_batteries`
--
ALTER TABLE `asset_batteries`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

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
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=153;

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
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `network_status`
--
ALTER TABLE `network_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `user_group`
--
ALTER TABLE `user_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
