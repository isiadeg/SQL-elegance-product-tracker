-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 23, 2022 at 12:03 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `elegance`
--

-- --------------------------------------------------------

--
-- Table structure for table `daily_count`
--

CREATE TABLE `daily_count` (
  `id` int(11) NOT NULL,
  `date` datetime DEFAULT NULL,
  `model` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `daily_count`
--

INSERT INTO `daily_count` (`id`, `date`, `model`, `quantity`) VALUES
(1, '2022-11-21 19:16:00', 'Lenovo Thinkpad T450s', 2),
(2, '2022-11-21 19:16:00', 'HP EliteBook Folio 9470m', 1),
(3, '2022-11-21 19:16:00', 'Dell Latitude 3340', 3),
(4, '2022-11-21 19:16:00', 'Macbook 2012', 1),
(5, '2022-11-21 19:16:00', 'Training Hp Probook', 1),
(6, '2022-11-21 19:16:00', 'Training Dell Latitude 3330', 1),
(7, '2022-11-21 19:16:00', 'Training Lenovos', 3),
(8, '2022-11-21 19:16:00', 'Faulty My Office Lenovo', 1),
(9, '2022-11-21 19:16:00', 'Abu Abdul Muqit Small Hp', 1),
(10, '2022-11-21 19:16:00', 'Former Abu Now Training Faulty Hp', 1),
(11, '2022-11-21 19:16:00', 'Training Hp Folio', 1),
(12, '2022-12-03 18:08:00', 'Macbook 2012', 1),
(13, '2022-12-03 18:08:00', 'Training Hp Probook', 1),
(14, '2022-12-03 18:08:00', 'Training Dell Latitude 3330', 1),
(15, '2022-12-03 18:08:00', 'Training Lenovos', 3),
(16, '2022-12-03 18:08:00', 'Faulty My Office Lenovo', 1),
(17, '2022-12-03 18:08:00', 'Abu Abdul Muqit Small Hp', 1),
(18, '2022-12-03 18:08:00', 'Former Abu Now Training Faulty Hp', 1),
(19, '2022-12-03 18:08:00', 'Training Hp Folio', 1),
(20, '2022-12-03 18:08:00', 'Lenovo Thinkpad T450s', 1),
(21, '2022-12-03 18:08:00', 'Dell Latitude 3340', 2),
(22, '2022-12-03 18:08:00', 'HP EliteBook Folio 9470m', 1),
(23, '2022-12-03 18:08:00', 'Hp Revolve 810 G3', 1);

-- --------------------------------------------------------

--
-- Table structure for table `dispute`
--

CREATE TABLE `dispute` (
  `dispute_id` int(11) NOT NULL,
  `status-before` varchar(255) NOT NULL,
  `status-changed-to` varchar(255) NOT NULL,
  `status-changed-by` varchar(255) DEFAULT NULL,
  `extra-info` varchar(255) DEFAULT NULL,
  `date-returned` varchar(255) DEFAULT NULL,
  `date-change-entered` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dispute`
--

INSERT INTO `dispute` (`dispute_id`, `status-before`, `status-changed-to`, `status-changed-by`, `extra-info`, `date-returned`, `date-change-entered`) VALUES
(1, '', '', '', '', '', ''),
(2, '\".$arr->statusBefore?$arr->statusBefore:null.\"', '\". $arr->statusChangedTo.\"', '\".$arr->statusChangedBy?$arr->statusChangedBy:null.\"', '\".$arr->extraInfo?$arr->extraInfo:null.\"', '\".$arr->dateReturned?$arr->dateReturned:null.\"', '\".$arr->dateChangeEntered?$arr->dateReturned:null.\"'),
(3, ':before', ':changed', ':changedby', ':extrainfo', ':dateR', ':dateCR'),
(4, 'with Engineer Ismail', 'sold', 'ismail', ':extrainfo', ':dateR', ':dateCR'),
(5, 'with Engineer Ismail', 'sold', 'ismail', NULL, '', '2022-11-18T03:37:52.978Z'),
(6, 'with Engineer Ismail', 'returned', 'ismail', NULL, '', '2022-11-18T04:16:44.955Z'),
(7, 'with Engineer Ismail', 'returned', 'ismail', NULL, '', '2022-11-18T23:37:59.995Z'),
(8, 'with Engineer Ismail', 'returned', 'ismail', NULL, '11/24/2022', '2022-11-18T23:38:14.449Z');

-- --------------------------------------------------------

--
-- Table structure for table `faulty`
--

CREATE TABLE `faulty` (
  `id` int(11) NOT NULL,
  `productTag` varchar(255) DEFAULT NULL,
  `faultLevel` varchar(255) NOT NULL,
  `faultDescription` text NOT NULL,
  `date` datetime DEFAULT NULL,
  `withEngineer` varchar(255) NOT NULL,
  `repaired` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `laptop`
--

CREATE TABLE `laptop` (
  `productId` int(11) NOT NULL,
  `dateBrought` date DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL,
  `serialNumber` varchar(255) DEFAULT NULL,
  `brand` varchar(255) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `intelCore` varchar(255) DEFAULT NULL,
  `intelGeneration` varchar(255) DEFAULT NULL,
  `storageType` varchar(255) DEFAULT NULL,
  `storageCapacity` varchar(255) DEFAULT NULL,
  `rAMProcessor` varchar(255) DEFAULT NULL,
  `speed` varchar(255) DEFAULT NULL,
  `touchScreen` varchar(255) DEFAULT NULL,
  `keypadLight` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `imageUrl` varchar(255) DEFAULT NULL,
  `revolvable` varchar(255) DEFAULT NULL,
  `averageBattery` varchar(255) DEFAULT NULL,
  `batteryBackup` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `laptop`
--

INSERT INTO `laptop` (`productId`, `dateBrought`, `tag`, `serialNumber`, `brand`, `model`, `intelCore`, `intelGeneration`, `storageType`, `storageCapacity`, `rAMProcessor`, `speed`, `touchScreen`, `keypadLight`, `price`, `imageUrl`, `revolvable`, `averageBattery`, `batteryBackup`, `description`) VALUES
(1, '2022-10-09', 'OD10', 'DJL6F32', 'Dell', 'Dell Latitude 3340', 'Core i3', '4th Generation', 'HDD', '500GB', '4GB', '1.7GHZ', '', '', NULL, NULL, '', '6 Hours', '', NULL),
(2, '2022-10-09', 'OD5', '3RHXF32', 'Dell', 'Dell Latitude 3340', 'Core i3', '4th Generation', 'HDD', '500GB', '4GB', '1.7GHZ', '', '', NULL, NULL, '', '6 Hours', '', NULL),
(3, '2022-10-09', 'OHF1', 'CNU3239H8Z', 'Hp', 'HP EliteBook Folio 9470m', 'Core i5', '3rd Generation', 'HDD', '500GB', '8GB', '1.7GHZ', '', '1', NULL, NULL, '', '3 hours', '', NULL),
(4, '2022-10-09', 'OHF2', 'CNU322B556', 'Hp', 'HP EliteBook Folio 9470m', 'Core i5', '3rd Generation', 'HDD', '500GB', '8GB', '1.7GHZ', '', '1', NULL, NULL, '', '', '', NULL),
(5, '2022-10-09', 'OHF3', 'CNU3239HGX', 'Hp', 'HP EliteBook Folio 9470m', 'Core i5', '3rd Generation', 'HDD', '500GB', '8GB', '1.7GHZ', '', '1', NULL, NULL, '', '', '', NULL),
(6, '2022-10-09', 'OD1', '4QHXF32', 'Dell', 'Dell Latitude 3340', 'Core i3', '4th Generation', 'HDD', '500GB', '4GB', '1.7GHZ', '', '', NULL, NULL, '', '6 Hours', '', NULL),
(7, '2022-10-09', 'OD2', 'H5MY832', 'Dell', 'Dell Latitude 3340', 'Core i3', '4th Generation', 'HDD', '500GB', '4GB', '1.7GHZ', '', '', NULL, NULL, '', '6 Hours', '', NULL),
(8, '2022-10-09', 'OD3', '15N6F32', 'Dell', 'Dell Latitude 3340', 'Core i3', '4th Generation', 'HDD', '500GB', '4GB', '1.7GHZ', '', '', NULL, NULL, '', '7 Hours', '', NULL),
(9, '2022-10-09', 'OD4', '4VK6F32', 'Dell', 'Dell Latitude 3340', 'Core i3', '4th Generation', 'HDD', '500GB', '4GB', '1.7GHZ', '', '', NULL, NULL, '', '6 Hours', '', NULL),
(10, '2022-10-09', 'OD6', 'FBKFF32', 'Dell', 'Dell Latitude 3340', 'Core i3', '4th Generation', 'HDD', '500GB', '4GB', '1.7GHZ', '', '', NULL, NULL, '', '6 Hours', '', NULL),
(11, '2022-10-09', 'OD7', '15MY832', 'Dell', 'Dell Latitude 3340', 'Core i3', '4th Generation', 'HDD', '500GB', '4GB', '1.7GHZ', '', '', NULL, NULL, '', '5.8 Hours', '', NULL),
(12, '2022-10-09', 'OD8', '6LM6F32', 'Dell', 'Dell Latitude 3340', 'Core i3', '4th Generation', 'HDD', '500GB', '4GB', '1.7GHZ', '', '', NULL, NULL, '', '6 Hours', '', NULL),
(13, '2022-10-09', 'OD9', '3MS6K52', 'Dell', 'Dell Latitude 3340', 'Core i3', '4th Generation', 'HDD', '500GB', '4GB', '1.7GHZ', '', '', NULL, NULL, '', '6 Hours', '', NULL),
(14, '2022-10-09', 'OL1', 'PC088FFH', 'Lenovo', 'Lenovo Thinkpad T450s', 'Core i5', '5th Generation', 'HDD', '500GB', '8GB', '2.3GHZ', '', '', NULL, NULL, '', '2 Hours', '', NULL),
(15, '2022-10-09', 'OL2', 'PC080CLA', 'Lenovo', 'Lenovo Thinkpad T450s', 'Core i5', '5th Generation', 'HDD', '500GB', '8GB', '2.3GHZ', '', '', NULL, NULL, '', '3 Hours', '', NULL),
(16, '2022-10-09', 'OL3', 'PC050K3P', 'Lenovo', 'Lenovo Thinkpad T450s', 'Core i5', '5th Generation', 'HDD', '500GB', '20GB', '2.3GHZ', '', '', NULL, NULL, '', '1.8 Hours', '', NULL),
(17, '2022-10-09', 'OL4', 'PC09Q348', 'Lenovo', 'Lenovo Thinkpad T450s', 'Core i5', '5th Generation', 'HDD', '500GB', '8GB', '2.3GHZ', '', '', NULL, NULL, '', '7 Hours', '', NULL),
(18, '2022-09-03', 'SR1', '8CG7184269', 'Hp', 'HP EliteBook Revolve 810 G3', 'Core i5', '5th Generation', 'SSD', '256GB', '8GB', '2.2GHZ', '1', '1', NULL, NULL, '1', '4.5hrs', '', NULL),
(23, '2022-09-03', 'SR2', '8CG62522MS', 'Hp', 'HP EliteBook Revolve 810 G3', 'Core i5', '5th Generation', 'SSD', '256GB', '8GB', '2.2GHZ', '1', '1', NULL, NULL, '1', '6 hrs', '', NULL),
(24, '2022-09-03', 'SR6', '8CG6201KTM', 'Hp', 'HP EliteBook Revolve 810 G3', 'Core i5', '5th Generation', 'SSD', '256GB', '8GB', '2.2GHZ', '1', '1', NULL, NULL, '1', '6 hrs', '', NULL),
(25, '2022-09-03', 'SR3', '8CG624276Y', 'Hp', 'HP EliteBook Revolve 810 G3', 'Core i5', '5th Generation', 'SSD', '256GB', '8GB', '2.2GHZ', '1', '1', NULL, NULL, '1', '', '', NULL),
(26, '2022-09-03', 'SR4', '8CG6250MMF', 'Hp', 'HP EliteBook Revolve 810 G3', 'Core i5', '5th Generation', 'SSD', '256GB', '8GB', '2.2GHZ', '1', '1', NULL, NULL, '1', '4 hrs', '', NULL),
(27, '2022-09-03', 'SR5', '8CG71841R5', 'Hp', 'HP EliteBook Revolve 810 G3', 'Core i5', '5th Generation', 'SSD', '256GB', '8GB', '2.2GHZ', '1', '1', NULL, NULL, '1', '4 hrs', '', NULL),
(28, '2022-09-03', 'SR7', '8CG6251MFM', 'Hp', 'HP EliteBook Revolve 810 G3', 'Core i5', '5th Generation', 'SSD', '256GB', '8GB', '2.2GHZ', '1', '1', NULL, NULL, '1', '4.5 hrs', '', NULL),
(29, '2022-09-03', 'SR8', '8CG7200VMV', 'Hp', 'HP EliteBook Revolve 810 G3', 'Core i5', '5th Generation', 'SSD', '256GB', '8GB', '2.2GHZ', '1', '1', NULL, NULL, '1', '6 hrs', '', NULL),
(30, '2022-09-03', 'SR9', '8CG620247K', 'Hp', 'HP EliteBook Revolve 810 G3', 'Core i5', '5th Generation', 'SSD', '256GB', '8GB', '2.2GHZ', '1', '1', NULL, NULL, '1', '5 hrs', '', NULL),
(31, '0001-01-01', 'AbuFaridat_Acer1', '', 'Acer', '', '', '', '', '', '', '', '', '1', NULL, NULL, '', '', '', NULL),
(32, '0001-01-01', 'AbuFaridat_RCA1', '', 'RCA', '', '', '', '', '', '', '', '', '1', NULL, NULL, '', '', '', NULL),
(33, '0001-01-01', 'AbuFaridat_RAM1', '', 'Laptop RAM', '', '', '', '', '', '', '', '', '1', NULL, NULL, '', '', '', NULL),
(34, '0001-01-01', 'AbuFaridat_RAM2', '', 'Laptop RAM', '', '', '', '', '', '', '', '', '1', NULL, NULL, '', '', '', NULL),
(35, '0001-01-01', 'AbuFaridat_RAM3', '', 'Laptop RAM', '', '', '', '', '', '', '', '', '1', NULL, NULL, '', '', '', NULL),
(37, '2022-05-13', 'MayPro6', '5CG62900ZX', 'Hp', 'HP ProBook 640 G2', 'Core i5', '6th Generation', 'HDD', '500GB', '8GB', '2.30GHz', '', '1', NULL, NULL, '', '', '', NULL),
(38, '2022-01-01', 'HpBigMouthChargerWithoutPlug1312', '', 'Hp Big Mouth Charger', 'Hp Big Mouth Charger Without Plug', '', '', '', '', '', '', '', '1', NULL, NULL, '', '', '', NULL),
(39, '2022-01-01', 'DellChargerWithoutPlug', '', 'Dell Charger', 'Dell Charger Without Plug', '', '', '', '', '', '', '', '1', NULL, NULL, '', '', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `movement`
--

CREATE TABLE `movement` (
  `id` int(11) NOT NULL,
  `movementType` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `productTag` varchar(255) NOT NULL,
  `productType` varchar(255) NOT NULL,
  `personName` varchar(255) NOT NULL,
  `purpose` varchar(255) NOT NULL,
  `extraInfo` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `movement`
--

INSERT INTO `movement` (`id`, `movementType`, `date`, `productTag`, `productType`, `personName`, `purpose`, `extraInfo`) VALUES
(1, 'Collect', '2022-10-13T11:02', 'OD10', 'Laptop', 'Engineer Ismail', 'Marketing', '%3Cp%3EHe%20collected%20four%20laptops%20and%20one%20charger%20without%20plug%20that%20day.%20this%20one%2C%20two%20revolves%20and%20one%20lenovo%3C%2Fp%3E'),
(2, 'Collect', '2022-10-13T11:02', 'OD5', 'Laptop', 'Abu Faridat', 'Marketing', '%3Cp%3EIt%20was%20Abdullahi%20who%20took%20it%20to%20him%20that%20day.%20he%20had%20previously%20collected%20it%2C%20then%20returned%20it%20through%20Abdullahi%20before%20again%20collecting%20it%20this%20day.%20As%20at%20this%20time%2C%20that\'s%20the%20only%20October%209%20products%20with%20him.%20As%20at%20this%20time%20also%2C%20we%20still%20don\'t%20know%20the%20whereabouts%20of%20a%20hp%20revolve%3C%2Fp%3E'),
(3, 'Collect', '2022-10-13T11:02', 'OHF2', 'Laptop', 'Engineer Ismail', 'Repair', '%3Cp%3EHe%20also%20collected%201%20other%20folio%2C%201%20dell%2C%20and%201%20lenovo%20plus%20a%20charger%20without%20plug%20this%20same%20date%3C%2Fp%3E'),
(4, 'Collect', '2022-10-13T11:02', 'OHF3', 'Laptop', 'Engineer Ismail', 'Marketing', '%3Cp%3EHe%20also%20collected%201%20other%20folio%2C%201%20dell%2C%20and%201%20lenovo%20plus%20a%20charger%20without%20plug%20this%20same%20date%3C%2Fp%3E'),
(5, 'Collect', '2022-10-13T11:02', 'OL1', 'Laptop', 'Engineer Ismail', 'Marketing', '%3Cp%3EThe%20total%20number%20of%20laptop%20he%20collected%20this%20day%20is%204.%202%20folio%2C%201%20lenovo%2C%20and%201%20dell%3C%2Fp%3E'),
(6, 'Collect', '2022-11-09T14:31', 'OD6', 'Laptop', 'Someone Through Aby Faridat ', 'Marketing', NULL),
(74, 'Returned', '2022-11-11T12:16', 'OD6', 'Laptop', 'Abu Faridat', 'Marketing', '%3Cp%3EIt%20was%20Abu%20Faridat%20who%20returned%20it.%20When%20the%20laptop%20was%20to%20be%20collected%2C%20Abu%20faridat%20introduced%20the%20person%20and%20with%20consent%20of%20abu%20fauziyat%20asked%20me%20to%20carry%20two%20laptops%20to%20him%20beside%20the%20bridge%20when%20he%20called%20me%20on%20the%20phone.%20he%20called%20and%20i%20took%20this%20dell%20to%20him%20and%20then%20later%20came%20back%20for%20the%20second%20laptop%20which%20is%20an%20acer%20laptop%20that%20Abu%20faridat%20brought%20to%20the%20office.%20now%20on%20this%20day%2C%20Abu%20Faridat%20Returned%20the%20dell%20laptop%20through%20abdullahi%2C%20he%20asked%20him%20to%20come%20to%20oduwoye%20before%20jumuat%20and%20gave%20him%20this%20laptop%20and%20the%20acer%20laptop.%20Abdullahi%20later%20took%20the%20acer%20laptop%20back%20home%20in%20the%20evening%20after%20i%20provided%20him%20with%20laptop%20wrapper%3C%2Fp%3E'),
(76, 'Collect', '2022-09-07T12:00', 'SR4', 'Laptop', 'Engineer Ismail', 'Marketing', ''),
(77, 'Collect', '2022-10-04T12:00', 'SR7', 'Laptop', 'Engineer Ismail', 'Repair', '%3Cp%3EThe%20screen%20of%20this%20laptop%20started%20shaking%20and%20so%20was%20taken%20to%20him%20for%20marketing%20and%20repair%3C%2Fp%3E'),
(78, 'Collect', '2022-09-26T12:00', 'SR3', 'Laptop', 'Engineer Ismail', 'Repair', '%3Cp%3EThis%20laptop%20was%20the%20one%20not%20switching%20at%20all%20or%20switch%20off%20immediately%20after%20switching%20on%3C%2Fp%3E'),
(79, 'Collect', '2022-09-07T12:00', 'SR1', 'Laptop', 'Abu Faridat', 'Marketing', '%3Cp%3EMy%20boss%20later%20told%20me%20the%20laptop%20has%20been%20sold%20when%20with%20him%3C%2Fp%3E'),
(80, 'Collect', '2022-09-07T12:00', 'SR5', 'Laptop', 'Abu Faridat', 'Marketing', '%3Cp%3EThis%20laptop%20was%20later%20nowhere%20to%20be%20found%20as%20it%20was%20collected%20by%20Abu%20Faridat%20but%20Abu%20Faridat%20claimed%20it%20was%20not%20with%20him%20and%20that%20he%20had%20returned%20it%3C%2Fp%3E'),
(81, 'Collect', '2022-10-01T12:00', 'SR2', 'Laptop', 'Doyin', 'Marketing', '%3Cp%3EIt%20was%20my%20boss%20that%20collected%20the%20laptop%20but%20told%20me%20to%20put%20doyin%20as%20the%20collector%3C%2Fp%3E'),
(82, 'Collect', '2022-11-09T14:31', 'AbuFaridat_Acer1', 'Laptop', 'Someone Through Aby Faridat ', 'Marketing', '%3Cp%3EThe%20person%20also%20collected%20OD6%2C%20A%20Dell%20Latitude%20laptop%20this%20day%20along%20with%20this%20abu%20faridat%20acer.%20I%20took%20them%20to%20him%20by%20the%20bridge%20when%20he%20called%20although%20he%20had%20earlier%20on%20visited%20the%20office%20to%20make%20the%20arrangement.%20He%20was%20introduced%20by%20Abu%20Faridat.%20My%20boss%20was%20also%20present%20at%20the%20time%3C%2Fp%3E'),
(84, 'Returned', '2022-11-11T12:16', 'AbuFaridat_Acer1', 'Laptop', 'Abu Faridat', 'Marketing', '%3Cp%3EAbu%20faridat%20was%20the%20one%20who%20returned%20this%20laptop%20to%20the%20office%20on%20this%20friday%20through%20Abdullahi.%20He%20called%20Abdullahi%20to%20come%20to%20Oduwoye%20before%20Jum\'uat%20and%20gave%20him%20two%20laptops%20-%20OD6%20and%20this%20Acer.%20He%20asked%20us%20to%20wrap%20this%20Acer%20and%20that%20Abdullahi%20to%20bring%20it%20back%20home%20in%20the%20evening%20which%20we%20did%3C%2Fp%3E'),
(85, 'Collect', '2022-11-11T17:46', 'AbuFaridat_Acer1', 'Laptop', 'Abu Faridat', 'Marketing', '%3Cp%3EAbu%20faridat%20asked%20Abdullahi%20to%20bring%20this%20Acer%20home%20when%20he%20is%20returning%20back%20home%20in%20the%20evening%20which%20he%20did.%20He%2C%20Abdullahi%20had%20earlier%20brought%20it%20together%20with%20OD6%20to%20the%20office%20on%20the%20instruction%20of%20Abu%20Faridat.%20We%20wrapped%20this%20Acer%20and%20Abdullahi%20returned%20it%20home.%3C%2Fp%3E'),
(90, 'Returned', '2022-11-12T08:46', 'AbuFaridat_Acer1', 'Laptop', 'Abu Faridat', 'Marketing', '%3Cp%3EAbu%20faridat%20asked%20Abdullahi%20to%20bring%20this%20Acer%20to%20the%20office%20along%20with%20OD5%2C%20%26nbsp%3Bother%20laptops%20and%20Phones%20and%20Tablets.%20He%20asked%20us%20to%20wrap%20all%20of%20them%20including%20this%20Acer%20which%20I%20did.%20He%20later%20asked%20Abdullahi%20to%20take%20this%20Acer%20along%20with%20Others%20in%20the%20afternoon%20of%20this%20day%20to%20somewhere%20he%20described%20to%20him%3C%2Fp%3E'),
(91, 'Collect', '2022-11-12T14:46', 'AbuFaridat_Acer1', 'Laptop', 'Abu Faridat', 'Marketing', '%3Cp%3EAbu%20Faridat%20asked%20Abdullahi%20to%20take%20this%20Acer%20along%20with%20Others%20to%20a%20place%20he%20described%20to%20him.%20Abdullahi%20had%20earlier%20on%20brought%20this%20Acer%2C%20OD5%20and%20some%20Abu%20Faridat\'s%20laptops%20and%20phones%20to%20the%20office%20on%20his%20instruction.%20He%20also%20asked%20us%20to%20wrap%20all%20of%20them%20which%20we%20did.%3C%2Fp%3E'),
(92, 'Brought', '2022-10-01T12:00', 'AbuFaridat_Acer1', 'Laptop', 'Abu Faridat', 'Marketing', ''),
(93, 'Collect', '2022-11-24T18:00', 'AbuFaridat_RCA1', 'Laptop', 'Abu Faridat', 'Marketing', '%3Cp%3EHe%20asked%20Abdullahi%20to%20bring%20the%20RCA%20home%20when%20he\'s%20returning%20in%20the%20evening%20along%20with%20his%20bag.%20Abu%20Faridat%20had%20earlier%20in%20the%20week%20packed%20the%20RCA%20inside%20his%20bag%20to%20take%20home%20but%20left%20the%20bag%20along%20with%20the%20RCA%20in%20the%20office%20that%20day.%20the%20RCA%20is%20a%20very%20small%20phone-like%20laptop.%20Abu%20Faridat%20had%20complained%20earlier%20in%20the%20week%20that%20the%20RCA%20is%20not%20switching%20on.%20This%20day%20that%20Abdullahi%20takes%20the%20RCA%20home.%20Malik%2C%20Abdullahi\'s%20brother%20came%20to%20the%20office%20but%20was%20taken%20home%20by%20Abu%20Faridat%20himself%20in%20the%20afternoon%20due%20to%20his%20sickness%3C%2Fp%3E'),
(94, 'Collect', '2022-11-28T10:19', 'FMCWP1', 'Charger', 'Abu Fauziyat', 'don\'t know', '%3Cp%3EFat%20Mouth%20Charger%20Without%20Plug.%20I%20took%20it%20from%20the%20stock%20of%20charger%20that\'s%20not%20labelled%20hp%20that%20was%20brought%20together%20when%20abu%20faridat%20brought%20some%20hp%20chargers%3C%2Fp%3E'),
(95, 'Collect', '2022-10-13T11:02', 'FM_Hp_CWP1', 'Charger', 'Engineer Ismail', 'Marketing', '%3Cp%3EFat%20Mouth%20Hp%20Charger%20Without%20Plug.%3C%2Fp%3E'),
(96, 'Brought', '2022-10-01T11:02', 'AbuFaridat_RCA1', 'Laptop', 'Abu Faridat', 'Marketing', ''),
(98, 'Brought', '2022-10-01T11:02', 'AbuFaridat_RAM1', 'RAM', 'Abu Faridat', 'Marketing', ''),
(100, 'Brought', '2022-10-01T11:02', 'AbuFaridat_RAM2', 'RAM', 'Abu Faridat', 'Marketing', ''),
(102, 'Brought', '2022-10-01T11:02', 'AbuFaridat_RAM3', 'RAM', 'Abu Faridat', 'Marketing', ''),
(103, 'Collect', '2022-12-03T15:08', 'OHF1', 'Laptop', 'Sarris / Sarrex', 'Marketing', '%3Cp%3EIt%20was%20on%20a%20saturday%20and%20the%20person%20who%20came%20seems%20to%20be%20in%20the%20same%20whatsapp%20group%20as%20engineer%20Ismail%20because%20he%20needed%20something%20and%20called%20engineer%20Ismail%20who%20directed%20him%20to%20post%20in%20group%20or%20contact%20Arewa.%20He%20came%20in%20a%20Jeep%3C%2Fp%3E'),
(104, 'Collect', '2022-12-03T15:08', 'OD3', 'Laptop', 'Sarris / Sarrex', 'Marketing', '%3Cp%3EIt%20was%20on%20a%20saturday%20and%20the%20person%20who%20came%20seems%20to%20be%20in%20the%20same%20whatsapp%20group%20as%20engineer%20Ismail%20because%20he%20needed%20something%20and%20called%20engineer%20Ismail%20who%20directed%20him%20to%20post%20in%20group%20or%20contact%20Arewa.%20He%20came%20in%20a%20Jeep%3C%2Fp%3E'),
(105, 'Collect', '2022-12-03T15:08', 'OL4', 'Laptop', 'Sarris / Sarrex', 'Marketing', '%3Cp%3EIt%20was%20on%20a%20saturday%20and%20the%20person%20who%20came%20seems%20to%20be%20in%20the%20same%20whatsapp%20group%20as%20engineer%20Ismail%20because%20he%20needed%20something%20and%20called%20engineer%20Ismail%20who%20directed%20him%20to%20post%20in%20group%20or%20contact%20Arewa.%20He%20came%20in%20a%20Jeep%3C%2Fp%3E'),
(106, 'Collect', '2022-12-03T15:08', 'HPCNoP', 'Charger', 'Sarris / Sarrex', 'Marketing', '%3Cp%3EThis%20is%20a%20big%20mouth%20Hp%20Charger%20without%20Plug%3C%2Fp%3E'),
(107, 'Collect', '2022-12-03T15:08', 'LenovoCandP', 'Charger', 'Sarris / Sarrex', 'Marketing', '%3Cp%3EThis%20is%20a%20lenovo%20charger%20with%20plug%3C%2Fp%3E'),
(108, 'Returned', '2022-12-03T13:09', 'SR7', 'Laptop', 'Engineer Ismail', 'Marketing', '%3Cp%3EIt%20was%20on%20a%20saturday.%20I%20also%20collected%20a%20folio%20that%20has%20been%20with%20him%20this%20day.%20I%20took%20a%20folio%20on%20shelf%20to%20him%20this%20day%20to%20repair%20it%20but%20it%20turns%20out%20it%20wasn\'t%20faulty%20anymore%2C%20so%2C%20I%20took%20one%20folio%20to%20him%20but%20did%20not%20leave%20it%20there%2C%20came%20back%20with%20it%2C%20then%20collected%201%20folio%2C%20this%20revolve%20and%20a%20hp%20big%20mouth%20charger%20that%20Abu%20had%20previously%20left%20with%20him.%20The%20other%20hp%20charger%20he%20collected%20from%20me%20has%20been%20destroyed%20by%20power%20surge%20from%20generator%20power%20as%20he%20told%20me.%20I%20also%20told%20Abu%20about%20the%20spoilt%20charger.%3C%2Fp%3E'),
(110, 'Returned', '2022-12-03T13:09', 'FMCWP1', 'Charger', 'Engineer Ismail', 'Marketing', '%3Cp%3EThis%20was%20the%20hp%20charger%20collected%20by%20Abu%2C%20No%20plug.%20A%20hp%20big%20mouth%20charger%20that%20Abu%20had%20previously%20left%20with%20him.%20The%20other%20hp%20charger%20he%20collected%20from%20me%20has%20been%20destroyed%20by%20power%20surge%20from%20generator%20power%20as%20he%20told%20me.%20I%20also%20told%20Abu%20about%20the%20spoilt%20charger.%3C%2Fp%3E'),
(111, 'Returned', '2022-12-03T13:09', 'OHF2', 'Laptop', 'Engineer Ismail', 'Marketing', ''),
(114, 'Collect', '2022-12-16T01:06', '90990', 'Laptop', 'k;;', 'Marketing', '%3Cp%3Ethi%20i%20for%20teting%3C%2Fp%3E'),
(115, 'Brought', '2022-12-12T08:01', 'AbuFaridat Blue Hp with Mouse Issue', 'Laptop', 'Abu Faridat', 'To install essential apps on it', '%3Cp%3EI%20am%20recording%20this%20blue%20one%20because%20it%20stayed%20for%20like%20three%20days%20on%20the%20shelf%2C%20There%20are%20some%20other%20laptops%20which%20Abu%20Faridat%20used%20to%20bring%20to%20the%20office%20but%20they%20are%20brought%20to%20be%20cleaned%20or%20to%20install%20essential%20apps%20on%20them%20or%20as%20a%20temporary%20place%20to%20put%20the%20laptop%20before%20being%20taken%20to%20the%20engineer%20or%20home.%20These%20laptops%20are%20usually%20taken%20home%20the%20very%20day%20it%20was%20brought%20or%20the%20next%20day.%20So%2C%20it%20might%20not%20enter%20the%20record%26nbsp%3B%3C%2Fp%3E'),
(116, 'Returned', '2022-12-10T17:00', 'OD10', 'Laptop', 'Engineer Ismail', 'Marketing', '%3Cp%3EI%20went%20to%20collect%20it%20from%20him%20this%20day%2C%20I%20took%20a%20folio%20on%20shelf%20to%20him%20to%20repair%20as%20the%20folio%20is%20making%20noise%20with%20fan%20and%20may%20not%20switch%20on%20sometimes.%20Abu%20Fauziyat%20asked%20me%20to%20collect%20the%20folio%20with%20him%20that%20he%20was%20repairing%20but%20he%20said%20it%20remains%20final%20testing.%20Therefore%2C%20Abu%20Fauziyat%20asked%20me%20to%20collect%20lenovo%20with%20him%20instead%20so%20I%20collected%201%20dell%2C%201%20lenovo%20from%20him%20and%20I%20dropped%20a%20folio%20for%20repair%20which%20makes%20it%20two%20folios%20with%20him%26nbsp%3B%3C%2Fp%3E'),
(117, 'Returned', '2022-12-10T17:00', 'OL1', 'Laptop', 'Engineer Ismail', 'Marketing', '%3Cp%3EI%20went%20to%20collect%20it%20from%20him%20this%20day%2C%20I%20took%20a%20folio%20on%20shelf%20to%20him%20to%20repair%20as%20the%20folio%20is%20making%20noise%20with%20fan%20and%20may%20not%20switch%20on%20sometimes.%20Abu%20Fauziyat%20asked%20me%20to%20collect%20the%20folio%20with%20him%20that%20he%20was%20repairing%20but%20he%20said%20it%20remains%20final%20testing.%20Therefore%2C%20Abu%20Fauziyat%20asked%20me%20to%20collect%20lenovo%20with%20him%20instead%20so%20I%20collected%201%20dell%2C%201%20lenovo%20from%20him%20and%20I%20dropped%20a%20folio%20for%20repair%20which%20makes%20it%20two%20folios%20with%20him%26nbsp%3B%3C%2Fp%3E'),
(118, 'Collect', '2022-12-14T18:16', 'AbuFaridat Blue Hp with Mouse Issue', 'Laptop', 'Abu Faridat', 'Marketing', '%3Cp%3EAbdullahi%20took%20it%20home%20for%20Abu%20Faridat%20when%20he%20was%20going%20home%3C%2Fp%3E'),
(119, 'Collect', '2022-12-10T17:00', 'OHF2', 'Laptop', 'Engineer Ismail', 'Repair', '%3Cp%3EI%20took%20it%20to%20him%20the%20day%20I%20collected%201%20dell%20and%201%20lenovo%20from%20him.%20This%20ohf2%20folio%20had%20fault%2C%20so%20I%20took%20it%20to%20him%20for%20repair%2C%20The%20laptop\'s%20fan%20makes%20loud%20noise%20when%20booting%20but%20not%20every%20time.%20Sometimes%2C%20it%20refuses%20to%20switch%20on.%26nbsp%3B%3C%2Fp%3E'),
(124, 'Returned', '2022-12-13T10:36', 'SR7', 'Laptop', 'Popoola Ibrahim Adekunle', 'Not Satisfied With The Product', '%3Cp%3EThis%20product%2C%20SR7%20delivered%20to%20Poopola%20Ibrahim%20on%2012th%20December%2C%202022%20was%20returned%20by%20the%20buyer%20citing%20many%20complaint.%20The%20only%20valid%20complain%20was%20the%20crack%20on%20the%20laptop%20casing%20at%20the%20back.%20He%20complaint%20the%20battery%20life%20was%20not%20anything%20near%203%20hours%20not%20to%20talk%20of%20the%206%20hours%20we%20claimed.%20The%20battery%20claim%20was%20confirmed%20to%20be%20false%20as%20I%20retested%20the%20battery%20life%20that%20same%20day%20and%20I%20calculated%20it%20to%20be%20still%20approx.%20the%206%20hours.%20He%20also%20mentioned%20that%20the%20laptop%20has%20been%20%E2%80%9COver%20Refurbished%E2%80%9D.%20My%20boss%20tried%20convincing%20him%20to%20choose%20other%20laptops%20like%20the%20ohf3%20folio%20we%20had%20recently%20brought%20from%20the%20engineer%20or%20the%20hp%20probook%20I%20went%20to%20collect%20from%20the%20engineer%20that%20day%2C%20but%20he%20was%20not%20convinced%20and%20chose%20to%20get%20refund.%3C%2Fp%3E'),
(125, 'Returned', '2022-12-12T08:40', 'OHF3', 'Laptop', 'Engineer Ismail', 'Repair', '%3Cp%3EThe%20day%20I%20went%20to%20check%20if%20sr7%20camera%20can%20work%20before%20sending%20it%20to%20Ibadan%20is%20the%20day%20I%20collected%20this%20laptop.%20Previously%2C%20Engineer%20had%20said%20it%20only%20remained%20for%20him%20to%20test%20it%20to%20ascertain%20it\'s%20working%20correctly%20before%20handing%20it%20over.%20so%20this%20day%2C%20he%20returned%20it%20to%20us%3C%2Fp%3E'),
(133, 'Brought', '2022-12-13T11:00', 'MayPro6', 'Laptop', 'Engineer Ismail', 'Repair', ''),
(138, 'Collect', '2022-12-13T08:40', 'HpBigMouthChargerWithoutPlug1312', 'Charger', 'Engineer Ismail', 'Marketing', '%3Cp%3EI%20took%20it%20to%20him%20the%20day%20I%20took%20sr7%20to%20him%20for%20camera%20repair%20before%20sending%20THE%20SR7%20to%20Ibadan.%20It%20was%20on%20the%20Instruction%20of%20my%20boss%3C%2Fp%3E'),
(139, 'Collect', '2022-12-19T13:19', 'DellChargerWithoutPlug', 'Charger', 'Abu Faridat', 'Marketing', '%3Cp%3EActually%20It%20was%20Hp%20Big%20Mouth%20Charger%20without%20Plug%20that%20I%20gave%20him%20NOT%20DellChargerWithoutPlug.%20He%20told%20me%20to%20give%20it%20in%20exchange%20for%20the%20charger%20he%20would%20have%20collected%20later%20when%20he\'s%20about%20to%20sell%20our%20dell%20laptop%20that%20is%20with%20him.%20So%20now%2C%20when%20he\'s%20selling%20the%20dell%20Laptop%20with%20him%2C%20we%20won\'t%20provide%20charger%20for%20the%20dell%20since%20he%20had%20collected%20it%20NOW%20in%20form%20of%20HP%20CHRGER%20WITHOUT%20PLUG.%3C%2Fp%3E'),
(140, 'Collect', '2022-12-24T11:39', 'AbuFaridat_RAM1', 'RAM', 'Abu Faridat', 'Marketing', '%3Cp%3EI%20gave%20him%20back%20the%20RAM%20he%20kept%20with%20me%3C%2Fp%3E'),
(141, 'Collect', '2022-12-24T11:39', 'AbuFaridat_RAM2', 'RAM', 'Abu Faridat', 'Marketing', '%3Cp%3EI%20gave%20him%20back%20the%20RAM%20he%20kept%20with%20me%3C%2Fp%3E'),
(142, 'Collect', '2022-12-24T11:39', 'AbuFaridat_RAM3', 'RAM', 'Abu Faridat', 'Marketing', '%3Cp%3EI%20gave%20him%20back%20the%20RAM%20he%20kept%20with%20me%3C%2Fp%3E');

-- --------------------------------------------------------

--
-- Table structure for table `product_status`
--

CREATE TABLE `product_status` (
  `tag` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `id` int(11) NOT NULL,
  `date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_status`
--

INSERT INTO `product_status` (`tag`, `status`, `id`, `date`) VALUES
('OD10', 'On Shelf', 1, '2022-12-10 17:00:00'),
('OD5', 'with Abu Faridat', 2, '2022-10-13 11:02:00'),
('OHF1', 'with Sarris / Sarrex', 3, '2022-12-03 15:08:00'),
('OHF2', 'with Engineer Ismail', 4, '2022-12-10 17:00:00'),
('OHF3', 'On Shelf', 5, '2022-12-12 08:40:00'),
('OD1', 'sold', 6, '2022-11-04 18:00:00'),
('OD2', 'On Shelf', 7, '2022-10-09 00:00:00'),
('OD3', 'with Sarris / Sarrex', 8, '2022-12-03 15:08:00'),
('OD4', 'sold', 9, '2022-11-05 14:00:00'),
('OD6', 'sold', 10, '2022-12-10 13:36:00'),
('OD7', 'sold', 11, '2022-10-25 08:30:00'),
('OD8', 'sold', 12, '2022-10-25 14:00:00'),
('OD9', 'sold', 13, '2022-10-16 18:30:00'),
('OL1', 'On Shelf', 14, '2022-12-10 17:00:00'),
('OL2', 'On Shelf', 15, '2022-10-09 00:00:00'),
('OL3', 'sold', 16, '2022-11-21 14:19:00'),
('OL4', 'with Sarris / Sarrex', 17, '2022-12-03 15:08:00'),
('SR1', 'with Abu Faridat', 18, '2022-09-07 12:00:00'),
('SR2', 'with Doyin', 23, '2022-10-01 12:00:00'),
('SR6', 'sold', 24, '2022-09-29 12:00:00'),
('SR3', 'with Engineer Ismail', 25, '2022-09-26 12:00:00'),
('SR4', 'with Engineer Ismail', 26, '2022-09-07 12:00:00'),
('SR5', 'with Abu Faridat', 27, '2022-09-07 12:00:00'),
('SR7', 'sold', 28, '2022-12-24 08:36:00'),
('SR8', 'sold', 29, '2022-10-01 12:00:00'),
('SR9', 'sold', 30, '2022-09-09 12:00:00'),
('AbuFaridat_Acer1', 'with Abu Faridat', 31, '2022-11-12 14:46:00'),
('AbuFaridat_RCA1', 'with Abu Faridat', 32, '2022-11-24 18:00:00'),
('AbuFaridat_RAM1', 'with Abu Faridat', 33, '2022-12-24 11:39:00'),
('AbuFaridat_RAM2', 'with Abu Faridat', 34, '2022-12-24 11:39:00'),
('AbuFaridat_RAM3', 'with Abu Faridat', 35, '2022-12-24 11:39:00'),
('FMCWP1', 'On Shelf', 36, '2022-12-03 13:09:00'),
('FM_Hp_CWP1', 'with Engineer Ismail', 37, '2022-10-13 11:02:00'),
('HPCNoP', 'with Sarris / Sarrex', 38, '2022-12-03 15:08:00'),
('LenovoCandP', 'with Sarris / Sarrex', 39, '2022-12-03 15:08:00'),
('90990', 'with k;;', 40, '2022-12-16 01:06:00'),
('AbuFaridat Blue Hp with Mouse Issue', 'with Abu Faridat', 41, '2022-12-14 18:16:00'),
('MayPro6', 'sold', 43, '2022-12-15 13:36:00'),
('HpBigMouthChargerWithoutPlug1312', 'with Engineer Ismail', 44, '2022-12-13 08:40:00'),
('DellChargerWithoutPlug', 'with Abu Faridat', 45, '2022-12-19 13:19:00');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `productTag` varchar(255) NOT NULL,
  `buyer` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `extraInfo` text NOT NULL,
  `Returned` varchar(255) DEFAULT NULL,
  `Date_Returned` date DEFAULT NULL,
  `Unsuccessful_Sale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `date`, `productTag`, `buyer`, `location`, `extraInfo`, `Returned`, `Date_Returned`, `Unsuccessful_Sale`) VALUES
(1, '2022-10-16 18:30:00', 'OD9', 'Mummy Mubaraq - Mrs Nafiu', 'Osogbo', '<p>He brought someone to check the laptops prior to buying. on that day when he brought someone to check the laptops, She gifted me with a dozen of fearless drink&nbsp;</p>', NULL, NULL, NULL),
(2, '2022-10-25 08:30:00', 'OD7', 'Agbaje Opeyemi', 'Osogbo', '<p>Alfa Idris (Phone Engineer) from mosque was the onw who brought them. They paid 87k. but did not stay to play Virtual Reality game. Alfa Idris will play on their behalf any day he chooses. They forgot a drink which Abdullahi showed me. Took the drink to Alfa Idris. Alfa Idris threw it away claiming they would have added all sort of things to the drink</p>', NULL, NULL, NULL),
(3, '2022-10-25 14:00:00', 'OD8', 'Ayedun Abdul Azeem and Ayedun Abdul Roheem', 'Osogbo', '<p>Daddy Abdul Azeem, a friend of Abu Abdul Azeez (Sula papa) was the one who bought the laptops for his kids.</p>', NULL, NULL, NULL),
(4, '2022-11-04 18:00:00', 'OD1', 'Ibrahim Mujeedat', 'Osogbo', '<p>One of our Desktop Publishing students (Ibrahim Lukman) is the one to be using it even though his mum bought it for him. He was given the charger which we have been using to charge one dell that we are using in the training hub. Told him to bring the charger back the following day, we would help him replace it with a new one</p>', NULL, NULL, NULL),
(5, '2022-11-05 14:00:00', 'OD4', 'Oluwatosin', 'Osogbo', '<p>The guy bought it at 77,500 naira because we don\'t have a charger for him. He\'ll use the remaining 2.500 to get charger from his friend\'s shop. He is a laptop engineer. He did not collect receipt saying it\'s not necessary</p>', NULL, NULL, NULL),
(6, '2022-11-21 14:19:00', '', '', '', '', NULL, NULL, NULL),
(7, '2022-11-21 14:19:00', 'OL3', 'Festus Clement Oluwasegun', 'Akede , Osogbo', '<p>He played vr game as bonus and he commended the game adding it was difficult for him since he\'s not too much into games apart from football games</p>', NULL, NULL, NULL),
(8, '2022-10-01 12:00:00', 'SR8', 'Gbenga', 'Osogbo', '<p>The person who bought the laptop seems to be the son of a restaurant owner in Osogbo. he came with his girlfriend the day he bought the system. he also came with one amazing travelling bag that day. He did not take the laptop with him that day. It was until a saturday when her girlfriend and some kids came to play virtual reality that his girlfriend later took the laptop to him. He later returned the laptop asking us to help install the normal MS office apps as I was unable to install it before giving them the laptop. I later realized that the ms office package was already installed together with the windows 11 that engineer ismail put on it when the laptop was with him. There was no shortcuts to the packages and that was why we thought the applications were not there. &nbsp;</p>', NULL, NULL, NULL),
(9, '2022-09-09 12:00:00', 'SR9', 'someone through Ola Smoth', 'Osogbo', '<p>This laptop was sold through Ola Smooth. He did not sell it with the charger and the charger remained in the office. Abdullahi helped him to carry the laptop along when he was going back to his shop to sell it after collecting it here at our office. He collected 2, sold 1 and Abdullahi brought back the unsold one.</p>', NULL, NULL, NULL),
(10, '2022-09-29 12:00:00', 'SR6', 'Ohanunam Victoria', 'Owerri', '<p>I packed it but it was my boss who sent the laptop</p>', NULL, NULL, NULL),
(11, '2022-12-10 13:36:00', 'OD6', 'Adeolu Peace', 'Osogbo', '<p>Peace Dad bought the system for peace. Even though they paid half at the moment, we gave them a full receipt as directed by my boss</p>', NULL, NULL, NULL),
(12, '2022-12-12 10:00:00', 'SR7', 'Popoola Ibrahim Adekunle', 'Ibadan', '<p>This sr7 laptop has a small scratch at the back and the camera stopped working, I took it to engineer ismail and he concluded it\'s a driver issue. Once the windows OS on it is reinstalled, the camera will go back to normal, After that, I took it to the bus stop to send to Ibadan. The product was later returned the following day by the customer. He was just not satisfied with it because of the scratch</p>', 'Yes', '2022-12-13', 'Yes'),
(13, '2022-12-15 13:36:00', 'MayPro6', 'Adeayo OluwaPelumi', 'Osogbo', '<p>They are two tall and giant guys. Never used macbook before. They played vr game before they left. They did transfer to the boss</p>', NULL, NULL, NULL),
(14, '2022-12-24 08:36:00', 'SR7', 'Hammed Ajala and Mrs. Ajala', 'Osogbo', '<p>I wrote two receipts. First wrote one for hammed but then my boss asked to write one for mrs ajala. I went to send it to Oshodi at the park. This sr7 laptop was covered with laptop skin and it\'s a laptop with bluetooth</p>', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tousemovement`
--

CREATE TABLE `tousemovement` (
  `id` int(11) NOT NULL,
  `movementType` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `productTag` varchar(255) DEFAULT NULL,
  `productType` varchar(255) DEFAULT NULL,
  `personName` varchar(255) DEFAULT NULL,
  `purpose` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tousemovement`
--

INSERT INTO `tousemovement` (`id`, `movementType`, `type`, `productTag`, `productType`, `personName`, `purpose`) VALUES
(1, 'Collect', 'movement', 'OD10', 'Laptop', 'Engineer Ismail', 'Marketing'),
(2, 'Collect', 'movement', 'OD5', 'Laptop', 'Abu Faridat', 'Marketing'),
(3, 'Collect', 'movement', 'OHF2', 'Laptop', 'Engineer Ismail', 'Repair'),
(4, 'Collect', 'movement', 'OHF3', 'Laptop', 'Engineer Ismail', 'Marketing'),
(5, 'Collect', 'movement', 'OL1', 'Laptop', 'Engineer Ismail', 'Marketing'),
(6, 'Collect', 'movement', 'OD6', 'Laptop', 'Someone Through Aby Faridat ', 'Marketing'),
(14, '', 'movement', 'OD6', 'Laptop', 'Som', 'Marketing'),
(17, '', 'movement', 'OD6', 'Laptop', 'Someone Through Aby Faridat', 'Marketing'),
(18, '', 'movement', 'OD6', 'Laptop', 'Someone Through Aby Faridat', 'Marketing'),
(19, '', 'movement', 'OD6', 'Laptop', 'Someone Through Aby Faridat ', 'Marketing'),
(20, '', 'movement', 'OD6', 'Laptop', 'Someone Through Aby Faridat ', 'Marketing'),
(21, '', 'movement', 'OD6', 'Laptop', 'Someone Through Aby Faridat ', 'Marketing'),
(22, '', 'movement', 'OD6', 'Laptop', 'Someone Through Aby Faridat ', 'Marketing'),
(23, '', 'movement', 'OD6', 'Laptop', 'Someone Through Aby Faridat ', 'Marketing'),
(24, '', 'movement', 'OD6', 'Laptop', 'Someone Through Aby Faridat ', 'Marketing'),
(25, '', 'movement', 'OD6', 'Laptop', 'Someone Through Aby Faridat ', 'Marketing'),
(31, 'Collect', 'movement', 'OD6', 'Laptop', 'Someone Through Aby Faridat ', 'Marketing'),
(32, 'Returned', 'movement', 'OD6', 'Laptop', 'Somet ', 'Marketing'),
(36, 'Returned', 'movement', 'OD6', 'Laptop', 'Some', 'Marketing'),
(37, 'Returned', 'movement', 'OD6', 'Laptop', 'Abu Uwaiz', 'Marketing'),
(38, 'Returned', 'movement', 'OD6', 'Laptop', 'Abu Uwaiz', 'Marketing'),
(39, 'Returned', 'movement', 'OD6', 'Laptop', 'Abu Uwaiz', 'Marketing'),
(40, 'Returned', 'movement', 'OD6', 'Laptop', 'Abu Uwaiz', 'Marketing'),
(41, 'Returned', 'movement', 'OD6', 'Laptop', 'Abu Uwaiz', 'Marketing'),
(42, 'Returned', 'movement', 'OD6', 'Laptop', 'Abu Uwaiz', 'Marketing'),
(43, 'Returned', 'movement', 'OD6', 'Laptop', 'Abu Uwaiz', 'Marketing'),
(44, 'Returned', 'movement', 'OD6', 'Laptop', 'Abu Uwaiz', 'Marketing'),
(46, 'Returned', 'movement', 'OD6', 'Laptop', 'Abu Uwaiz', 'Marketing'),
(49, 'Returned', 'movement', 'OD6', 'Laptop', 'Abu Uwaiz', 'Marketing'),
(50, 'Returned', 'movement', 'OD6', 'Laptop', 'Abu Uwaiz', 'Marketing'),
(51, 'Returned', 'movement', 'OD6', 'Laptop', 'Abu Faridat', 'Marketing'),
(59, 'Returned', 'movement', 'OD6', 'Laptop', 'Abu Faridat', 'Marketing'),
(61, 'Returned', 'movement', 'OD6', 'Laptop', 'Abu Faridat', 'Marketing'),
(62, 'Returned', 'movement', 'OD6', 'Laptop', 'Abu Faridat', 'Marketing'),
(63, 'Returned', 'movement', 'OD6', 'Laptop', 'Abu Faridat', 'Marketing'),
(64, 'Returned', 'movement', 'OD6', 'Laptop', 'Abu Faridat', 'Marketing'),
(65, 'Returned', 'movement', 'OD6', 'Laptop', 'Abu Faridat', 'Marketing'),
(69, 'Returned', 'movement', 'OD6', 'Laptop', 'Abu Faridat', ''),
(74, 'Returned', 'movement', 'OD6', 'Laptop', 'Abu Faridat', 'Marketing'),
(76, 'Collect', 'movement', 'SR4', 'Laptop', 'Engineer Ismail', 'Marketing'),
(77, 'Collect', 'movement', 'SR7', 'Laptop', 'Engineer Ismail', 'Repair'),
(78, 'Collect', 'movement', 'SR3', 'Laptop', 'Engineer Ismail', 'Repair'),
(79, 'Collect', 'movement', 'SR1', 'Laptop', 'Abu Faridat', 'Marketing'),
(80, 'Collect', 'movement', 'SR5', 'Laptop', 'Abu Faridat', 'Marketing'),
(81, 'Collect', 'movement', 'SR2', 'Laptop', 'Doyin', 'Marketing'),
(82, 'Collect', 'movement', 'AbuFaridat_Acer1', 'Laptop', 'Someone Through Aby Faridat ', 'Marketing'),
(84, 'Returned', 'movement', 'AbuFaridat_Acer1', 'Laptop', 'Abu Faridat', 'Marketing'),
(85, 'Collect', 'movement', 'AbuFaridat_Acer1', 'Laptop', 'Abu Faridat', 'Marketing'),
(86, 'Returned', 'movement', 'AbuFaridat_Acer1', 'Laptop', 'Abu Faridat', 'Marketing'),
(87, 'Collect', 'movement', 'AbuFaridat_Acer1', 'Laptop', 'Abu Faridat', 'Marketing'),
(90, 'Returned', 'movement', 'AbuFaridat_Acer1', 'Laptop', 'Abu Faridat', 'Marketing'),
(91, 'Collect', 'movement', 'AbuFaridat_Acer1', 'Laptop', 'Abu Faridat', 'Marketing'),
(92, 'Brought', 'movement', 'AbuFaridat_Acer1', 'Laptop', 'Abu Faridat', 'Marketing'),
(93, 'Collect', 'movement', 'AbuFaridat_RCA1', 'Laptop', 'Abu Faridat', 'Marketing'),
(94, 'Collect', 'movement', 'FMCWP1', 'Charger', 'Abu Fauziyat', 'don\'t know'),
(95, 'Collect', 'movement', 'FM_Hp_CWP1', 'Charger', 'Engineer Ismail', 'Marketing'),
(96, 'Brought', 'movement', 'AbuFaridat_RCA1', 'Laptop', 'Abu Faridat', 'Marketing'),
(98, 'Brought', 'movement', 'AbuFaridat_RAM1', 'Laptop', 'Abu Faridat', 'Marketing'),
(100, 'Brought', 'movement', 'AbuFaridat_RAM2', 'Laptop', 'Abu Faridat', 'Marketing'),
(102, 'Brought', 'movement', 'AbuFaridat_RAM3', 'RAM', 'Abu Faridat', 'Marketing'),
(103, 'Collect', 'movement', 'OHF1', 'Laptop', 'Sarris / Sarrex', 'Marketing'),
(104, 'Collect', 'movement', 'OD3', 'Laptop', 'Sarris / Sarrex', 'Marketing'),
(105, 'Collect', 'movement', 'OL4', 'Laptop', 'Sarris / Sarrex', 'Marketing'),
(106, 'Collect', 'movement', 'HPCNoP', 'Charger', 'Sarris / Sarrex', 'Marketing'),
(107, 'Collect', 'movement', 'LenovoCandP', 'Charger', 'Sarris / Sarrex', 'Marketing'),
(108, 'Returned', 'movement', 'SR7', 'Laptop', 'Engineer Ismail', 'Marketing'),
(110, 'Returned', 'movement', 'FMCWP1', 'Charger', 'Engineer Ismail', 'Marketing'),
(111, 'Returned', 'movement', 'OHF2', 'Laptop', 'Engineer Ismail', 'Marketing'),
(114, 'Collect', 'movement', '90990', 'Laptop', 'k;;', 'Marketing'),
(115, 'Brought', 'movement', 'AbuFaridat Blue Hp with Mouse Issue', 'Laptop', 'Abu Faridat', 'To install essential apps on it'),
(116, 'Returned', 'movement', 'OD10', 'Laptop', 'Engineer Ismail', 'Marketing'),
(117, 'Returned', 'movement', 'OL1', 'Laptop', 'Engineer Ismail', 'Marketing'),
(118, 'Collect', 'movement', 'AbuFaridat Blue Hp with Mouse Issue', 'Laptop', 'Abu Faridat', 'Marketing'),
(119, 'Collect', 'movement', 'OHF2', 'Laptop', 'Engineer Ismail', 'Repair'),
(124, 'Returned', 'movement', 'SR7', 'Laptop', 'Popoola Ibrahim Adekunle', 'Not Satisfied With The Product'),
(125, 'Returned', 'movement', 'OHF3', 'Laptop', 'Engineer Ismail', 'Repair'),
(133, 'Brought', 'movement', 'MayPro6', 'Laptop', 'Engineer Ismail', 'Repair'),
(138, 'Collect', 'movement', 'HpBigMouthChargerWithoutPlug1312', 'Charger', 'Engineer Ismail', 'Marketing'),
(139, 'Collect', 'movement', 'DellChargerWithoutPlug', 'Charger', 'Abu Faridat', 'Marketing'),
(140, 'Collect', 'movement', 'AbuFaridat_RAM1', 'RAM', 'Abu Faridat', 'Marketing'),
(141, 'Collect', 'movement', 'AbuFaridat_RAM2', 'RAM', 'Abu Faridat', 'Marketing'),
(142, 'Collect', 'movement', 'AbuFaridat_RAM3', 'RAM', 'Abu Faridat', 'Marketing');

-- --------------------------------------------------------

--
-- Table structure for table `touse_daily_count`
--

CREATE TABLE `touse_daily_count` (
  `id` int(11) NOT NULL,
  `model` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `touse_daily_count`
--

INSERT INTO `touse_daily_count` (`id`, `model`) VALUES
(1, 'Lenovo Thinkpad T450s'),
(2, 'HP EliteBook Folio 9470m'),
(3, 'Dell Latitude 3340'),
(4, 'Macbook 2012'),
(5, 'Training Hp Probook'),
(6, 'Training Dell Latitude 3330'),
(7, 'Training Lenovos'),
(8, 'Faulty My Office Lenovo'),
(9, 'Abu Abdul Muqit Small Hp'),
(10, 'Former Abu Now Training Faulty Hp'),
(11, 'Training Hp Folio'),
(12, 'Macbook 2012'),
(13, 'Training Hp Probook'),
(14, 'Training Dell Latitude 3330'),
(15, 'Training Lenovos'),
(16, 'Faulty My Office Lenovo'),
(17, 'Abu Abdul Muqit Small Hp'),
(18, 'Former Abu Now Training Faulty Hp'),
(19, 'Training Hp Folio'),
(20, 'Lenovo Thinkpad T450s'),
(21, 'Dell Latitude 3340'),
(22, 'HP EliteBook Folio 9470m'),
(23, 'Hp Revolve 810 G3');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `daily_count`
--
ALTER TABLE `daily_count`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dispute`
--
ALTER TABLE `dispute`
  ADD PRIMARY KEY (`dispute_id`);

--
-- Indexes for table `faulty`
--
ALTER TABLE `faulty`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `laptop`
--
ALTER TABLE `laptop`
  ADD PRIMARY KEY (`productId`);

--
-- Indexes for table `movement`
--
ALTER TABLE `movement`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_status`
--
ALTER TABLE `product_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tousemovement`
--
ALTER TABLE `tousemovement`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `touse_daily_count`
--
ALTER TABLE `touse_daily_count`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `daily_count`
--
ALTER TABLE `daily_count`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `dispute`
--
ALTER TABLE `dispute`
  MODIFY `dispute_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `faulty`
--
ALTER TABLE `faulty`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `laptop`
--
ALTER TABLE `laptop`
  MODIFY `productId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `movement`
--
ALTER TABLE `movement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;

--
-- AUTO_INCREMENT for table `product_status`
--
ALTER TABLE `product_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tousemovement`
--
ALTER TABLE `tousemovement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;

--
-- AUTO_INCREMENT for table `touse_daily_count`
--
ALTER TABLE `touse_daily_count`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
