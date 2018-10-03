-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 28, 2018 at 01:41 PM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_gammu`
--

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('bo7snbva8uurl67fi4bkise1893q4q2d', '127.0.0.1', 1534943918, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533343934333931383b),
('5hcfstla57qq61p2jir0kbvj4c6ve6db', '127.0.0.1', 1534944226, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533343934343232363b),
('nel7lksf75rsngcifc1mmjip5ae1nskt', '127.0.0.1', 1534944651, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533343934343635313b),
('9jn7i562bldei2bslsole354b6oco8b3', '127.0.0.1', 1534944975, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533343934343937353b49535f4c4f47494e5f41444d494e7c623a313b6e616d657c733a343a22726f6f74223b656d61696c7c733a31333a22726f6f74406d61696c2e636f6d223b70617373776f72647c733a34303a2237633461386430396361333736326166363165353935323039343364633236343934663839343162223b757365725f69647c733a313a2232223b),
('tmojrgaoeqppp77h6uiiesl3jd4hveb7', '127.0.0.1', 1534945784, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533343934353738343b49535f4c4f47494e5f41444d494e7c623a313b6e616d657c733a343a22726f6f74223b656d61696c7c733a31333a22726f6f74406d61696c2e636f6d223b70617373776f72647c733a34303a2237633461386430396361333736326166363165353935323039343364633236343934663839343162223b757365725f69647c733a313a2232223b),
('a7l48hgj5tt869ne5vbr7k50eqh3akpd', '127.0.0.1', 1534946087, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533343934363038373b49535f4c4f47494e5f41444d494e7c623a313b6e616d657c733a343a22726f6f74223b656d61696c7c733a31333a22726f6f74406d61696c2e636f6d223b70617373776f72647c733a34303a2237633461386430396361333736326166363165353935323039343364633236343934663839343162223b757365725f69647c733a313a2232223b),
('hld2d3n7l5b1qlhvv50siucmcjmkj9e7', '127.0.0.1', 1534946972, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533343934363937323b49535f4c4f47494e5f41444d494e7c623a313b6e616d657c733a343a22726f6f74223b656d61696c7c733a31333a22726f6f74406d61696c2e636f6d223b70617373776f72647c733a34303a2237633461386430396361333736326166363165353935323039343364633236343934663839343162223b757365725f69647c733a313a2232223b),
('54cjsi1n41ujrkc9b6u3msotffl14ok9', '127.0.0.1', 1534947477, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533343934373437373b49535f4c4f47494e5f41444d494e7c623a313b6e616d657c733a343a22726f6f74223b656d61696c7c733a31333a22726f6f74406d61696c2e636f6d223b70617373776f72647c733a34303a2237633461386430396361333736326166363165353935323039343364633236343934663839343162223b757365725f69647c733a313a2232223b),
('he75noar4b4afkg9e9nri1as6ftmoi0s', '127.0.0.1', 1534948025, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533343934383032353b49535f4c4f47494e5f41444d494e7c623a313b6e616d657c733a343a22726f6f74223b656d61696c7c733a31333a22726f6f74406d61696c2e636f6d223b70617373776f72647c733a34303a2237633461386430396361333736326166363165353935323039343364633236343934663839343162223b757365725f69647c733a313a2232223b),
('trpui4p2m6bdgo8asfiert81r75c6uhq', '127.0.0.1', 1534949140, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533343934393134303b49535f4c4f47494e5f41444d494e7c623a313b6e616d657c733a343a22726f6f74223b656d61696c7c733a31333a22726f6f74406d61696c2e636f6d223b70617373776f72647c733a34303a2237633461386430396361333736326166363165353935323039343364633236343934663839343162223b757365725f69647c733a313a2232223b),
('gi1ouu3pvg70p9igpuplgsa5ohn1uagl', '127.0.0.1', 1534949492, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533343934393439323b49535f4c4f47494e5f41444d494e7c623a313b6e616d657c733a343a22726f6f74223b656d61696c7c733a31333a22726f6f74406d61696c2e636f6d223b70617373776f72647c733a34303a2237633461386430396361333736326166363165353935323039343364633236343934663839343162223b757365725f69647c733a313a2232223b),
('i2jc9tr5vchf9s8vor9jjs4opegslelv', '127.0.0.1', 1534949816, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533343934393831363b6e616d657c733a343a22726f6f74223b656d61696c7c733a31333a22726f6f74406d61696c2e636f6d223b70617373776f72647c733a34303a2237633461386430396361333736326166363165353935323039343364633236343934663839343162223b757365725f69647c733a313a2232223b49535f4c4f47494e5f41444d494e7c623a313b),
('to2lb7p67ulib45g2id0voj138bee5an', '127.0.0.1', 1534950838, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533343935303833383b6e616d657c733a343a22726f6f74223b656d61696c7c733a31333a22726f6f74406d61696c2e636f6d223b70617373776f72647c733a34303a2237633461386430396361333736326166363165353935323039343364633236343934663839343162223b757365725f69647c733a313a2232223b49535f4c4f47494e5f41444d494e7c623a313b),
('8ltq0ifhq8u34ed8d57tvbcbu4kas5so', '127.0.0.1', 1534951215, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533343935313231353b6e616d657c733a343a22726f6f74223b656d61696c7c733a31333a22726f6f74406d61696c2e636f6d223b70617373776f72647c733a34303a2237633461386430396361333736326166363165353935323039343364633236343934663839343162223b757365725f69647c733a313a2232223b49535f4c4f47494e5f41444d494e7c623a313b),
('mj6h1ju0d399f4mif7prpfi6pp6g10od', '127.0.0.1', 1534952540, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533343935323534303b6e616d657c733a343a22726f6f74223b656d61696c7c733a31333a22726f6f74406d61696c2e636f6d223b70617373776f72647c733a34303a2237633461386430396361333736326166363165353935323039343364633236343934663839343162223b757365725f69647c733a313a2232223b49535f4c4f47494e5f41444d494e7c623a313b),
('6s7ptu532972kod4qgne74pgtf3lqd31', '127.0.0.1', 1534952542, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533343935323534303b6e616d657c733a343a22726f6f74223b656d61696c7c733a31333a22726f6f74406d61696c2e636f6d223b70617373776f72647c733a34303a2237633461386430396361333736326166363165353935323039343364633236343934663839343162223b757365725f69647c733a313a2232223b49535f4c4f47494e5f41444d494e7c623a313b),
('717hnn1q9sab7n7t5ddpugpqii1inomb', '::1', 1535348084, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533353334383038343b),
('6jf63ootb4sp0q67jkhj0g5a47r8bpa7', '127.0.0.1', 1535348828, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533353334383832383b49535f4c4f47494e5f41444d494e7c623a313b6e616d657c733a343a22726f6f74223b656d61696c7c733a31333a22726f6f74406d61696c2e636f6d223b70617373776f72647c733a34303a2237633461386430396361333736326166363165353935323039343364633236343934663839343162223b757365725f69647c733a313a2232223b),
('g73gj2sbl3fml3auh0iupu3ojakqis1t', '127.0.0.1', 1535349297, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533353334393239373b49535f4c4f47494e5f41444d494e7c623a313b6e616d657c733a343a22726f6f74223b656d61696c7c733a31333a22726f6f74406d61696c2e636f6d223b70617373776f72647c733a34303a2237633461386430396361333736326166363165353935323039343364633236343934663839343162223b757365725f69647c733a313a2232223b),
('g81gkd98i1g2l2a5f7so7kq15mgcn8jb', '127.0.0.1', 1535350271, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533353335303237313b49535f4c4f47494e5f41444d494e7c623a313b6e616d657c733a343a22726f6f74223b656d61696c7c733a31333a22726f6f74406d61696c2e636f6d223b70617373776f72647c733a34303a2237633461386430396361333736326166363165353935323039343364633236343934663839343162223b757365725f69647c733a313a2232223b),
('gde6lll914kded0fjgmlnhkqgmt8snks', '127.0.0.1', 1535350627, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533353335303632373b49535f4c4f47494e5f41444d494e7c623a313b6e616d657c733a343a22726f6f74223b656d61696c7c733a31333a22726f6f74406d61696c2e636f6d223b70617373776f72647c733a34303a2237633461386430396361333736326166363165353935323039343364633236343934663839343162223b757365725f69647c733a313a2232223b),
('23giim9t4450lv7bb94fbk17jg79jem6', '127.0.0.1', 1535350627, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533353335303632373b49535f4c4f47494e5f41444d494e7c623a313b6e616d657c733a343a22726f6f74223b656d61696c7c733a31333a22726f6f74406d61696c2e636f6d223b70617373776f72647c733a34303a2237633461386430396361333736326166363165353935323039343364633236343934663839343162223b757365725f69647c733a313a2232223b),
('dm6q8o7iapohdi1p8po804gidtp37fok', '127.0.0.1', 1535363373, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533353336333337333b),
('0p913nm63pbeodscrvn1l4ungsvivemq', '127.0.0.1', 1535363836, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533353336333833363b),
('50vi4502d179s76bd8ierj49e16gp73m', '127.0.0.1', 1535365851, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533353336353835313b),
('89dvs326tloe6oa850905gnjpkjf6flh', '127.0.0.1', 1535369322, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533353336393332323b),
('4d445pkeipsuosdujtdvgo1c8knbjjto', '127.0.0.1', 1535370717, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533353337303731373b49535f4c4f47494e5f41444d494e7c623a313b6e616d657c733a343a22726f6f74223b656d61696c7c733a31333a22726f6f74406d61696c2e636f6d223b70617373776f72647c733a34303a2237633461386430396361333736326166363165353935323039343364633236343934663839343162223b757365725f69647c733a313a2232223b),
('4bk70nvdn7j7n16b9vhjrq1icb2cmrf1', '127.0.0.1', 1535370717, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533353337303731373b49535f4c4f47494e5f41444d494e7c623a313b6e616d657c733a343a22726f6f74223b656d61696c7c733a31333a22726f6f74406d61696c2e636f6d223b70617373776f72647c733a34303a2237633461386430396361333736326166363165353935323039343364633236343934663839343162223b757365725f69647c733a313a2232223b),
('fpl2gi6e5j9ili4u30re18tvglubs4l6', '::1', 1535455751, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533353435353735313b),
('g3iv9jnvg6tm3igl58in1ddihdlc84or', '127.0.0.1', 1535455753, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533353435353735323b6d6573736167657c733a303a22223b5f5f63695f766172737c613a313a7b733a373a226d657373616765223b733a333a226e6577223b7d);

-- --------------------------------------------------------

--
-- Table structure for table `gammu`
--

CREATE TABLE `gammu` (
  `Version` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gammu`
--

INSERT INTO `gammu` (`Version`) VALUES
(17);

-- --------------------------------------------------------

--
-- Table structure for table `inbox`
--

CREATE TABLE `inbox` (
  `UpdatedInDB` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ReceivingDateTime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Text` text NOT NULL,
  `SenderNumber` varchar(20) NOT NULL DEFAULT '',
  `Coding` enum('Default_No_Compression','Unicode_No_Compression','8bit','Default_Compression','Unicode_Compression') NOT NULL DEFAULT 'Default_No_Compression',
  `UDH` text NOT NULL,
  `SMSCNumber` varchar(20) NOT NULL DEFAULT '',
  `Class` int(11) NOT NULL DEFAULT '-1',
  `TextDecoded` text NOT NULL,
  `ID` int(10) UNSIGNED NOT NULL,
  `RecipientID` text NOT NULL,
  `Processed` enum('false','true') NOT NULL DEFAULT 'false',
  `Status` int(11) NOT NULL DEFAULT '-1',
  `IsRead` tinyint(4) DEFAULT '0' COMMENT '0;notread;1read'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `inbox`
--

INSERT INTO `inbox` (`UpdatedInDB`, `ReceivingDateTime`, `Text`, `SenderNumber`, `Coding`, `UDH`, `SMSCNumber`, `Class`, `TextDecoded`, `ID`, `RecipientID`, `Processed`, `Status`, `IsRead`) VALUES
('2018-08-19 12:16:02', '2018-08-19 12:15:57', '004F006B006500200074006500730074002000620061006C00650073', '+628979392113', 'Default_No_Compression', '', '+628964011098', -1, 'Oke test bales', 1, '', 'false', 0, 0),
('2018-08-19 17:49:38', '2018-08-19 12:24:26', '0059006F007700650073002000620065006E', '+628979392113', 'Default_No_Compression', '', '+628964011098', -1, 'Yowes ben', 2, '', 'false', 0, 1),
('2018-08-19 16:43:49', '2018-08-19 15:47:08', '004F006B0065002000750064006100680020006D006100730075006B', '+628979392113', 'Default_No_Compression', '', '+628964011098', -1, 'Oke udah masuk', 3, '', 'false', 0, 1);

--
-- Triggers `inbox`
--
DELIMITER $$
CREATE TRIGGER `inbox_timestamp` BEFORE INSERT ON `inbox` FOR EACH ROW BEGIN
    IF NEW.ReceivingDateTime = '0000-00-00 00:00:00' THEN
        SET NEW.ReceivingDateTime = CURRENT_TIMESTAMP();
    END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `mst_data_user`
--

CREATE TABLE `mst_data_user` (
  `UserDataId` bigint(20) UNSIGNED NOT NULL,
  `UserDataName` varchar(50) DEFAULT NULL,
  `UserMobilePhone` varchar(50) DEFAULT NULL,
  `UserRegionId` int(11) DEFAULT NULL,
  `UserExperience` tinyint(4) DEFAULT NULL COMMENT '1=YES; 2NO',
  `UserCertificate` tinyint(4) DEFAULT NULL COMMENT '1=YES; 2NO',
  `UserCreatedDate` datetime DEFAULT '0000-00-00 00:00:00',
  `UserUpdatedDate` datetime DEFAULT '0000-00-00 00:00:00',
  `UserCreatedById` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_data_user`
--

INSERT INTO `mst_data_user` (`UserDataId`, `UserDataName`, `UserMobilePhone`, `UserRegionId`, `UserExperience`, `UserCertificate`, `UserCreatedDate`, `UserUpdatedDate`, `UserCreatedById`) VALUES
(2, 'DUMMY1', '08979392113', 1, 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(3, 'DUMMY2', '08979392113', 1, 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(4, 'DUMMY3', '08979392113', 1, 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(5, 'DUMMY4', '08979392113', 1, 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `outbox`
--

CREATE TABLE `outbox` (
  `UpdatedInDB` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `InsertIntoDB` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `SendingDateTime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `SendBefore` time NOT NULL DEFAULT '23:59:59',
  `SendAfter` time NOT NULL DEFAULT '00:00:00',
  `Text` text,
  `DestinationNumber` varchar(20) NOT NULL DEFAULT '',
  `Coding` enum('Default_No_Compression','Unicode_No_Compression','8bit','Default_Compression','Unicode_Compression') NOT NULL DEFAULT 'Default_No_Compression',
  `UDH` text,
  `Class` int(11) DEFAULT '-1',
  `TextDecoded` text NOT NULL,
  `ID` int(10) UNSIGNED NOT NULL,
  `MultiPart` enum('false','true') DEFAULT 'false',
  `RelativeValidity` int(11) DEFAULT '-1',
  `SenderID` varchar(255) DEFAULT NULL,
  `SendingTimeOut` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `DeliveryReport` enum('default','yes','no') DEFAULT 'default',
  `CreatorID` text NOT NULL,
  `Retries` int(3) DEFAULT '0',
  `Priority` int(11) DEFAULT '0',
  `Status` enum('SendingOK','SendingOKNoReport','SendingError','DeliveryOK','DeliveryFailed','DeliveryPending','DeliveryUnknown','Error','Reserved') NOT NULL DEFAULT 'Reserved',
  `StatusCode` int(11) NOT NULL DEFAULT '-1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `outbox`
--

INSERT INTO `outbox` (`UpdatedInDB`, `InsertIntoDB`, `SendingDateTime`, `SendBefore`, `SendAfter`, `Text`, `DestinationNumber`, `Coding`, `UDH`, `Class`, `TextDecoded`, `ID`, `MultiPart`, `RelativeValidity`, `SenderID`, `SendingTimeOut`, `DeliveryReport`, `CreatorID`, `Retries`, `Priority`, `Status`, `StatusCode`) VALUES
('2018-08-20 03:01:10', '2018-08-20 03:01:10', '2018-08-20 03:01:10', '23:59:59', '00:00:00', NULL, '+628979392113', 'Default_No_Compression', NULL, -1, '', 14, 'false', -1, NULL, '2018-08-20 03:01:10', 'default', 'root', 0, 0, 'Reserved', -1),
('2018-08-20 17:42:34', '2018-08-20 17:42:34', '2018-08-20 17:42:34', '23:59:59', '00:00:00', NULL, '08979392113', 'Default_No_Compression', NULL, -1, 'COntoh sms broadcast', 15, 'false', -1, NULL, '2018-08-20 17:42:34', 'default', '', 0, 0, 'Reserved', -1),
('2018-08-20 17:42:34', '2018-08-20 17:42:34', '2018-08-20 17:42:34', '23:59:59', '00:00:00', NULL, '08979392113', 'Default_No_Compression', NULL, -1, 'COntoh sms broadcast', 16, 'false', -1, NULL, '2018-08-20 17:42:34', 'default', '', 0, 0, 'Reserved', -1),
('2018-08-20 17:43:20', '2018-08-20 17:43:20', '2018-08-20 17:43:20', '23:59:59', '00:00:00', NULL, '08979392113', 'Default_No_Compression', NULL, -1, 'COntoh sms broadcast', 17, 'false', -1, NULL, '2018-08-20 17:43:20', 'default', '', 0, 0, 'Reserved', -1),
('2018-08-20 17:43:20', '2018-08-20 17:43:20', '2018-08-20 17:43:20', '23:59:59', '00:00:00', NULL, '08979392113', 'Default_No_Compression', NULL, -1, 'COntoh sms broadcast', 18, 'false', -1, NULL, '2018-08-20 17:43:20', 'default', '', 0, 0, 'Reserved', -1),
('2018-08-20 17:43:54', '2018-08-20 17:43:54', '2018-08-20 17:43:54', '23:59:59', '00:00:00', NULL, '08979392113', 'Default_No_Compression', NULL, -1, 'COntoh sms broadcast', 19, 'false', -1, NULL, '2018-08-20 17:43:54', 'default', '', 0, 0, 'Reserved', -1),
('2018-08-20 17:43:54', '2018-08-20 17:43:54', '2018-08-20 17:43:54', '23:59:59', '00:00:00', NULL, '08979392113', 'Default_No_Compression', NULL, -1, 'COntoh sms broadcast', 20, 'false', -1, NULL, '2018-08-20 17:43:54', 'default', '', 0, 0, 'Reserved', -1),
('2018-08-20 17:51:14', '2018-08-20 17:51:14', '2018-08-20 17:51:14', '23:59:59', '00:00:00', NULL, '', 'Default_No_Compression', NULL, -1, 'ted', 21, 'false', -1, NULL, '2018-08-20 17:51:14', 'default', 'root', 0, 0, 'Reserved', -1);

--
-- Triggers `outbox`
--
DELIMITER $$
CREATE TRIGGER `outbox_timestamp` BEFORE INSERT ON `outbox` FOR EACH ROW BEGIN
    IF NEW.InsertIntoDB = '0000-00-00 00:00:00' THEN
        SET NEW.InsertIntoDB = CURRENT_TIMESTAMP();
    END IF;
    IF NEW.SendingDateTime = '0000-00-00 00:00:00' THEN
        SET NEW.SendingDateTime = CURRENT_TIMESTAMP();
    END IF;
    IF NEW.SendingTimeOut = '0000-00-00 00:00:00' THEN
        SET NEW.SendingTimeOut = CURRENT_TIMESTAMP();
    END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `outbox_multipart`
--

CREATE TABLE `outbox_multipart` (
  `Text` text,
  `Coding` enum('Default_No_Compression','Unicode_No_Compression','8bit','Default_Compression','Unicode_Compression') NOT NULL DEFAULT 'Default_No_Compression',
  `UDH` text,
  `Class` int(11) DEFAULT '-1',
  `TextDecoded` text,
  `ID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `SequencePosition` int(11) NOT NULL DEFAULT '1',
  `Status` enum('SendingOK','SendingOKNoReport','SendingError','DeliveryOK','DeliveryFailed','DeliveryPending','DeliveryUnknown','Error','Reserved') NOT NULL DEFAULT 'Reserved',
  `StatusCode` int(11) NOT NULL DEFAULT '-1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `phones`
--

CREATE TABLE `phones` (
  `ID` text NOT NULL,
  `UpdatedInDB` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `InsertIntoDB` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `TimeOut` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Send` enum('yes','no') NOT NULL DEFAULT 'no',
  `Receive` enum('yes','no') NOT NULL DEFAULT 'no',
  `IMEI` varchar(35) NOT NULL,
  `IMSI` varchar(35) NOT NULL,
  `NetCode` varchar(10) DEFAULT 'ERROR',
  `NetName` varchar(35) DEFAULT 'ERROR',
  `Client` text NOT NULL,
  `Battery` int(11) NOT NULL DEFAULT '-1',
  `Signal` int(11) NOT NULL DEFAULT '-1',
  `Sent` int(11) NOT NULL DEFAULT '0',
  `Received` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `phones`
--

INSERT INTO `phones` (`ID`, `UpdatedInDB`, `InsertIntoDB`, `TimeOut`, `Send`, `Receive`, `IMEI`, `IMSI`, `NetCode`, `NetName`, `Client`, `Battery`, `Signal`, `Sent`, `Received`) VALUES
('', '2018-08-19 17:35:30', '2018-08-19 17:35:29', '2018-08-19 17:35:40', 'yes', 'yes', '351047888189814', '510113649870294', '510 11', 'XL Axiata', 'Gammu 1.39.0, Windows Server 2007, MS VC 1900', 0, 78, 0, 0);

--
-- Triggers `phones`
--
DELIMITER $$
CREATE TRIGGER `phones_timestamp` BEFORE INSERT ON `phones` FOR EACH ROW BEGIN
    IF NEW.InsertIntoDB = '0000-00-00 00:00:00' THEN
        SET NEW.InsertIntoDB = CURRENT_TIMESTAMP();
    END IF;
    IF NEW.TimeOut = '0000-00-00 00:00:00' THEN
        SET NEW.TimeOut = CURRENT_TIMESTAMP();
    END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `sentitems`
--

CREATE TABLE `sentitems` (
  `UpdatedInDB` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `InsertIntoDB` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `SendingDateTime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `DeliveryDateTime` timestamp NULL DEFAULT NULL,
  `Text` text NOT NULL,
  `DestinationNumber` varchar(20) NOT NULL DEFAULT '',
  `Coding` enum('Default_No_Compression','Unicode_No_Compression','8bit','Default_Compression','Unicode_Compression') NOT NULL DEFAULT 'Default_No_Compression',
  `UDH` text NOT NULL,
  `SMSCNumber` varchar(20) NOT NULL DEFAULT '',
  `Class` int(11) NOT NULL DEFAULT '-1',
  `TextDecoded` text NOT NULL,
  `ID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `SenderID` varchar(255) NOT NULL,
  `SequencePosition` int(11) NOT NULL DEFAULT '1',
  `Status` enum('SendingOK','SendingOKNoReport','SendingError','DeliveryOK','DeliveryFailed','DeliveryPending','DeliveryUnknown','Error') NOT NULL DEFAULT 'SendingOK',
  `StatusError` int(11) NOT NULL DEFAULT '-1',
  `TPMR` int(11) NOT NULL DEFAULT '-1',
  `RelativeValidity` int(11) NOT NULL DEFAULT '-1',
  `CreatorID` text NOT NULL,
  `StatusCode` int(11) NOT NULL DEFAULT '-1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sentitems`
--

INSERT INTO `sentitems` (`UpdatedInDB`, `InsertIntoDB`, `SendingDateTime`, `DeliveryDateTime`, `Text`, `DestinationNumber`, `Coding`, `UDH`, `SMSCNumber`, `Class`, `TextDecoded`, `ID`, `SenderID`, `SequencePosition`, `Status`, `StatusError`, `TPMR`, `RelativeValidity`, `CreatorID`, `StatusCode`) VALUES
('2018-08-19 12:13:10', '2018-08-19 10:17:15', '2018-08-19 12:13:10', NULL, '00540065007300740020006B006900720069006D00200073006D0073', '08979392113', 'Default_No_Compression', '', '+62818445009', -1, 'Test kirim sms', 1, '', 1, 'SendingOKNoReport', -1, 25, 255, 'didi', -1),
('2018-08-19 12:23:35', '2018-08-19 10:20:38', '2018-08-19 12:23:35', NULL, '00540065007300740020006B006900720069006D00200073006D0073', '08979392113', 'Default_No_Compression', '', '+62818445009', -1, 'Test kirim sms', 2, '', 1, 'SendingOKNoReport', -1, 27, 255, 'didi', -1),
('2018-08-19 14:31:02', '2018-08-19 14:30:54', '2018-08-19 14:31:02', NULL, '', '08979392113', 'Default_No_Compression', '', '+62818445009', -1, '', 3, '', 1, 'SendingOKNoReport', -1, 28, 255, '', -1),
('2018-08-19 15:43:38', '2018-08-19 15:43:14', '2018-08-19 15:43:38', NULL, '1234', '08979392113', 'Default_No_Compression', '', '+62818445009', -1, 'áˆ´', 7, '', 1, 'SendingOKNoReport', -1, 29, 255, '', -1),
('2018-08-19 15:45:41', '2018-08-19 15:45:17', '2018-08-19 15:45:41', NULL, '0074006500730074', '08979392113', 'Default_No_Compression', '', '+62818445009', -1, 'test', 8, '', 1, 'SendingOKNoReport', -1, 30, 255, '', -1),
('2018-08-19 15:46:13', '2018-08-19 15:46:08', '2018-08-19 15:46:13', NULL, '00620061006C0065007300200073006D0073', '+628979392113', 'Default_No_Compression', '', '+62818445009', -1, 'bales sms', 9, '', 1, 'SendingOKNoReport', -1, 31, 255, 'root', -1),
('2018-08-19 15:48:48', '2018-08-19 15:48:30', '2018-08-19 15:48:48', NULL, '007400650073007400200073006D00730020007300650072007600650072002000670061006D006D0075', '085718843609', 'Default_No_Compression', '', '+62818445009', -1, 'test sms server gammu', 10, '', 1, 'SendingOKNoReport', -1, 32, 255, '', -1),
('2018-08-19 16:01:21', '2018-08-19 16:00:57', '2018-08-19 16:01:21', NULL, '006500680020006D0061006E0075007300690061002000670061006D0065007200730020002C00200073006D007300200067007500650020006D006100730075006B0020006B006100670061', '085718843609', 'Default_No_Compression', '', '+62818445009', -1, 'eh manusia gamers , sms gue masuk kaga', 11, '', 1, 'SendingOKNoReport', -1, 33, 255, '', -1),
('2018-08-19 16:26:34', '2018-08-19 16:06:05', '2018-08-19 16:26:34', NULL, '', '', 'Default_No_Compression', '', '', -1, '', 12, '', 1, 'SendingError', -1, -1, 255, '', 38),
('2018-08-19 16:28:05', '2018-08-19 16:07:38', '2018-08-19 16:28:05', NULL, '', '', 'Default_No_Compression', '', '', -1, '', 13, '', 1, 'SendingError', -1, -1, 255, '', 38);

--
-- Triggers `sentitems`
--
DELIMITER $$
CREATE TRIGGER `sentitems_timestamp` BEFORE INSERT ON `sentitems` FOR EACH ROW BEGIN
    IF NEW.InsertIntoDB = '0000-00-00 00:00:00' THEN
        SET NEW.InsertIntoDB = CURRENT_TIMESTAMP();
    END IF;
    IF NEW.SendingDateTime = '0000-00-00 00:00:00' THEN
        SET NEW.SendingDateTime = CURRENT_TIMESTAMP();
    END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_region`
--

CREATE TABLE `tbl_region` (
  `region_id` bigint(20) NOT NULL,
  `region_code` varchar(35) DEFAULT NULL,
  `region_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_region`
--

INSERT INTO `tbl_region` (`region_id`, `region_code`, `region_name`) VALUES
(1, '001', 'DKI JAKARTA'),
(2, '002', 'BANDUNG'),
(3, '003', 'SURABAYA'),
(4, '004', 'MALANG'),
(5, '005', 'DIY YOGYAKARTA'),
(6, '006', 'LOMBOK'),
(7, '007', 'NTB');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sms_group`
--

CREATE TABLE `tbl_sms_group` (
  `group_id` bigint(20) NOT NULL,
  `group_code` varchar(20) DEFAULT NULL,
  `group_name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_sms_group`
--

INSERT INTO `tbl_sms_group` (`group_id`, `group_code`, `group_name`) VALUES
(1, 'GROUP01', 'Jakarta'),
(2, 'GROUP02', 'BANDUNG'),
(3, 'GROUP03', 'FAMILY'),
(4, 'GROUP04', 'SAHABAT'),
(5, 'GROUP05', 'TETANGGA');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sms_log`
--

CREATE TABLE `tbl_sms_log` (
  `log_id` bigint(20) NOT NULL,
  `log_outbox_id` bigint(20) DEFAULT NULL,
  `log_inbox_id` bigint(20) DEFAULT NULL,
  `log_module` varchar(50) DEFAULT NULL,
  `log_description` varchar(50) DEFAULT NULL,
  `log_sms_create_by` int(11) DEFAULT NULL,
  `log_created_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sms_template`
--

CREATE TABLE `tbl_sms_template` (
  `template_id` bigint(20) NOT NULL,
  `template_name` varchar(50) NOT NULL,
  `template_content` text NOT NULL,
  `template_is_active` tinyint(4) NOT NULL DEFAULT '1',
  `template_created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `template_updated_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `template_created_by` int(11) NOT NULL,
  `template_deleted_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_sms_template`
--

INSERT INTO `tbl_sms_template` (`template_id`, `template_name`, `template_content`, `template_is_active`, `template_created_date`, `template_updated_date`, `template_created_by`, `template_deleted_date`) VALUES
(1, 'SMS BROADCAST', 'COntoh sms broadcast', 1, '2018-07-19 19:06:38', '0000-00-00 00:00:00', 2, NULL),
(2, 'TEST TEMPLATE', 'TEST TEMPLATE 2', 1, '2018-07-25 13:41:21', '0000-00-00 00:00:00', 2, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sms_type`
--

CREATE TABLE `tbl_sms_type` (
  `type_id` bigint(20) NOT NULL,
  `type_name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_sms_type`
--

INSERT INTO `tbl_sms_type` (`type_id`, `type_name`) VALUES
(1, 'Group'),
(2, 'Personal'),
(3, 'Broadcast'),
(4, 'Input number');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `user_full_name` varchar(55) NOT NULL,
  `user_name` varchar(45) NOT NULL,
  `user_email` varchar(45) NOT NULL,
  `user_password` varchar(45) NOT NULL,
  `user_login_time` datetime DEFAULT NULL,
  `user_logout_time` datetime DEFAULT NULL,
  `user_is_state` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=logout;1=login',
  `user_is_active` tinyint(4) NOT NULL DEFAULT '1' COMMENT '0=block;1=unblock',
  `user_role_id` int(11) DEFAULT NULL,
  `user_ip_address` varchar(11) DEFAULT NULL,
  `user_photo` varchar(255) DEFAULT NULL,
  `user_created_date` datetime DEFAULT NULL,
  `user_updated_date` datetime DEFAULT NULL,
  `user_created_by_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `user_full_name`, `user_name`, `user_email`, `user_password`, `user_login_time`, `user_logout_time`, `user_is_state`, `user_is_active`, `user_role_id`, `user_ip_address`, `user_photo`, `user_created_date`, `user_updated_date`, `user_created_by_id`) VALUES
(1, 'SUPERADMIN', 'admin', 'admin@admin.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '2018-07-04 17:46:40', '2018-07-01 16:39:55', 1, 1, 1, NULL, NULL, '2018-06-02 05:13:15', NULL, 1),
(2, 'SYSTEM APPLICATION', 'root', 'root@mail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2018-08-27 13:28:58', NULL, 0, 1, 1, NULL, NULL, '2018-07-13 00:00:00', NULL, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `gammu`
--
ALTER TABLE `gammu`
  ADD PRIMARY KEY (`Version`);

--
-- Indexes for table `inbox`
--
ALTER TABLE `inbox`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `mst_data_user`
--
ALTER TABLE `mst_data_user`
  ADD PRIMARY KEY (`UserDataId`);

--
-- Indexes for table `outbox`
--
ALTER TABLE `outbox`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `outbox_date` (`SendingDateTime`,`SendingTimeOut`),
  ADD KEY `outbox_sender` (`SenderID`(250));

--
-- Indexes for table `outbox_multipart`
--
ALTER TABLE `outbox_multipart`
  ADD PRIMARY KEY (`ID`,`SequencePosition`);

--
-- Indexes for table `phones`
--
ALTER TABLE `phones`
  ADD PRIMARY KEY (`IMEI`);

--
-- Indexes for table `sentitems`
--
ALTER TABLE `sentitems`
  ADD PRIMARY KEY (`ID`,`SequencePosition`),
  ADD KEY `sentitems_date` (`DeliveryDateTime`),
  ADD KEY `sentitems_tpmr` (`TPMR`),
  ADD KEY `sentitems_dest` (`DestinationNumber`),
  ADD KEY `sentitems_sender` (`SenderID`(250));

--
-- Indexes for table `tbl_region`
--
ALTER TABLE `tbl_region`
  ADD PRIMARY KEY (`region_id`);

--
-- Indexes for table `tbl_sms_group`
--
ALTER TABLE `tbl_sms_group`
  ADD PRIMARY KEY (`group_id`),
  ADD UNIQUE KEY `group_code` (`group_code`);

--
-- Indexes for table `tbl_sms_log`
--
ALTER TABLE `tbl_sms_log`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `tbl_sms_template`
--
ALTER TABLE `tbl_sms_template`
  ADD PRIMARY KEY (`template_id`);

--
-- Indexes for table `tbl_sms_type`
--
ALTER TABLE `tbl_sms_type`
  ADD PRIMARY KEY (`type_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `inbox`
--
ALTER TABLE `inbox`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `mst_data_user`
--
ALTER TABLE `mst_data_user`
  MODIFY `UserDataId` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `outbox`
--
ALTER TABLE `outbox`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbl_region`
--
ALTER TABLE `tbl_region`
  MODIFY `region_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_sms_group`
--
ALTER TABLE `tbl_sms_group`
  MODIFY `group_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_sms_log`
--
ALTER TABLE `tbl_sms_log`
  MODIFY `log_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_sms_template`
--
ALTER TABLE `tbl_sms_template`
  MODIFY `template_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_sms_type`
--
ALTER TABLE `tbl_sms_type`
  MODIFY `type_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
