-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 20, 2022 at 08:49 PM
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
(17, '2022-10-09', 'OL4', 'PC09Q348', 'Lenovo', 'Lenovo Thinkpad T450s', 'Core i5', '5th Generation', 'HDD', '500GB', '8GB', '2.3GHZ', '', '', NULL, NULL, '', '7 Hours', '', NULL);

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
(6, 'Collect', '2022-11-09T14:31', 'OD6', 'Laptop', 'Someone Through Aby Faridat ', 'Marketing', NULL);

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
('OD10', 'with Engineer Ismail', 1, '2022-10-13 11:02:00'),
('OD5', 'with Abu Faridat', 2, '2022-10-13 11:02:00'),
('OHF1', 'On Shelf', 3, '2022-10-09 00:00:00'),
('OHF2', 'with Engineer Ismail', 4, '2022-10-13 11:02:00'),
('OHF3', 'with Engineer Ismail', 5, '2022-10-13 11:02:00'),
('OD1', 'sold', 6, '2022-11-04 18:00:00'),
('OD2', 'On Shelf', 7, '2022-10-09 00:00:00'),
('OD3', 'On Shelf', 8, '2022-10-09 00:00:00'),
('OD4', 'sold', 9, '2022-11-05 14:00:00'),
('OD6', 'with Someone Through Aby Faridat ', 10, '2022-11-09 14:31:00'),
('OD7', 'sold', 11, '2022-10-25 08:30:00'),
('OD8', 'sold', 12, '2022-10-25 14:00:00'),
('OD9', 'sold', 13, '2022-10-16 18:30:00'),
('OL1', 'with Engineer Ismail', 14, '2022-10-13 11:02:00'),
('OL2', 'On Shelf', 15, '2022-10-09 00:00:00'),
('OL3', 'On Shelf', 16, '2022-10-09 00:00:00'),
('OL4', 'On Shelf', 17, '2022-10-09 00:00:00');

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
  `extraInfo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `date`, `productTag`, `buyer`, `location`, `extraInfo`) VALUES
(1, '2022-10-16 18:30:00', 'OD9', 'Mummy Mubaraq - Mrs Nafiu', 'Osogbo', '<p>He brought someone to check the laptops prior to buying. on that day when he brought someone to check the laptops, She gifted me with a dozen of fearless drink&nbsp;</p>'),
(2, '2022-10-25 08:30:00', 'OD7', 'Agbaje Opeyemi', 'Osogbo', '<p>Alfa Idris (Phone Engineer) from mosque was the onw who brought them. They paid 87k. but did not stay to play Virtual Reality game. Alfa Idris will play on their behalf any day he chooses. They forgot a drink which Abdullahi showed me. Took the drink to Alfa Idris. Alfa Idris threw it away claiming they would have added all sort of things to the drink</p>'),
(3, '2022-10-25 14:00:00', 'OD8', 'Ayedun Abdul Azeem and Ayedun Abdul Roheem', 'Osogbo', '<p>Daddy Abdul Azeem, a friend of Abu Abdul Azeez (Sula papa) was the one who bought the laptops for his kids.</p>'),
(4, '2022-11-04 18:00:00', 'OD1', 'Ibrahim Mujeedat', 'Osogbo', '<p>One of our Desktop Publishing students (Ibrahim Lukman) is the one to be using it even though his mum bought it for him. He was given the charger which we have been using to charge one dell that we are using in the training hub. Told him to bring the charger back the following day, we would help him replace it with a new one</p>'),
(5, '2022-11-05 14:00:00', 'OD4', 'Oluwatosin', 'Osogbo', '<p>The guy bought it at 77,500 naira because we don\'t have a charger for him. He\'ll use the remaining 2.500 to get charger from his friend\'s shop. He is a laptop engineer. He did not collect receipt saying it\'s not necessary</p>');

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
(6, 'Collect', 'movement', 'OD6', 'Laptop', 'Someone Through Aby Faridat ', 'Marketing');

-- --------------------------------------------------------

--
-- Table structure for table `touse_daily_count`
--

CREATE TABLE `touse_daily_count` (
  `id` int(11) NOT NULL,
  `model` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
  MODIFY `productId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `movement`
--
ALTER TABLE `movement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `product_status`
--
ALTER TABLE `product_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tousemovement`
--
ALTER TABLE `tousemovement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `touse_daily_count`
--
ALTER TABLE `touse_daily_count`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
