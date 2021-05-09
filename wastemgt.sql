-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 07, 2021 at 05:26 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wastemgt`
--

-- --------------------------------------------------------

--
-- Table structure for table `binallocation`
--

CREATE TABLE `binallocation` (
  `binTypeID` int(11) DEFAULT NULL,
  `cusID` int(11) DEFAULT NULL,
  `binStatus` varchar(50) DEFAULT NULL,
  `allocationDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `binrtn`
--

CREATE TABLE `binrtn` (
  `binTypeID` int(11) DEFAULT NULL,
  `cusID` int(11) DEFAULT NULL,
  `binStatus` varchar(50) DEFAULT NULL,
  `rtnRequestDate` date DEFAULT NULL,
  `rtnDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `bintrans`
--

CREATE TABLE `bintrans` (
  `binTypeID` int(11) DEFAULT NULL,
  `cusID` int(11) DEFAULT NULL,
  `routeID` int(11) DEFAULT NULL,
  `transDate` datetime DEFAULT NULL,
  `isbinFull` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `bintype`
--

CREATE TABLE `bintype` (
  `binTypeID` int(11) NOT NULL,
  `binType` varchar(255) DEFAULT NULL,
  `volume` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `pro_id` int(11) DEFAULT NULL,
  `size_id` int(11) DEFAULT NULL,
  `color_id` int(11) DEFAULT NULL,
  `ticket_id` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `price` double NOT NULL,
  `totprice` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cart_id`, `order_id`, `pro_id`, `size_id`, `color_id`, `ticket_id`, `quantity`, `price`, `totprice`) VALUES
(10, 1, 2, 1, 7, NULL, 1, 650, 650),
(26, 2, 8, 6, 19, NULL, 99, 475, 47025),
(27, 2, 8, 6, 19, NULL, 14, 475, 6650),
(28, 2, 8, 6, 19, NULL, 78, 475, 37050),
(29, 3, 8, 6, 19, NULL, 44, 475, 20900),
(30, 3, 8, 6, 19, NULL, 11, 475, 5225),
(31, 3, 2, 1, 7, NULL, 22, 650, 14300),
(32, 4, 2, 1, 7, NULL, 0, 650, 0),
(33, 4, 8, 6, 19, NULL, 0, 475, 0),
(34, 5, 3, 1, 4, NULL, 29, 480, 13920),
(35, 6, 8, 6, 19, NULL, 32, 475, 15200),
(36, 6, 3, 1, 4, NULL, 7, 480, 3360),
(37, 6, 2, 1, 7, NULL, 2, 650, 1300),
(38, 6, 8, 6, 19, NULL, 500, 475, 237500),
(39, 6, 8, 6, 19, NULL, 11, 475, 5225),
(40, 6, 2, 1, 7, NULL, 3, 650, 1950),
(41, 6, 8, 6, 19, NULL, 8, 475, 3800),
(42, 6, 8, 6, 19, NULL, 79, 475, 37525),
(43, 6, 8, 6, 19, NULL, 3, 475, 1425),
(44, 7, 2, 1, 0, NULL, 0, 0, 0),
(45, 7, 2, 1, 7, NULL, 1, 650, 650),
(46, 8, 8, 6, 19, NULL, 25, 475, 11875),
(47, 8, 8, 6, 19, NULL, 25, 475, 11875),
(48, 8, 2, 1, 7, NULL, 11, 650, 7150),
(49, 8, 3, 1, 4, NULL, 3, 480, 1440),
(50, 8, 3, 1, 4, NULL, 33, 480, 15840),
(51, 8, 3, 1, 4, NULL, 22, 480, 10560),
(52, 9, 8, 6, 19, NULL, 20, 475, 9500),
(53, 9, 2, 1, 7, NULL, 2, 650, 1300),
(54, 9, 3, 1, 4, NULL, 1, 480, 480),
(55, 9, 8, 6, 19, NULL, 2, 475, 950),
(56, 10, 8, 6, 19, NULL, 2, 475, 950),
(57, 11, 8, 6, 19, NULL, 2, 475, 950),
(58, 12, 3, 1, 4, NULL, 1, 480, 480),
(59, 13, 8, 6, 19, NULL, 3, 475, 1425),
(60, 14, 8, 6, 19, NULL, 44, 475, 20900),
(61, 15, 2, 1, 7, NULL, 2, 650, 1300),
(62, 15, 0, 0, 0, NULL, 0, 0, 0),
(63, 15, 0, 0, 0, NULL, 20, 0, 0),
(64, 15, 0, 0, 0, NULL, 20, 0, 0),
(65, 15, 0, 0, 0, NULL, 20, 0, 0),
(66, 15, 0, 0, 0, NULL, 20, 0, 0),
(67, 15, 0, 0, 0, NULL, 20, 0, 0),
(68, 15, 0, 0, 0, NULL, 0, 0, 0),
(69, 15, 0, 0, 0, NULL, 0, 0, 0),
(70, 15, 0, 0, 0, NULL, 20, 0, 0),
(71, 0, NULL, NULL, NULL, 0, 0, 0, 50),
(72, 15, NULL, NULL, NULL, 2, 99, 15, 0),
(73, 15, NULL, NULL, NULL, 2, 101, 15, 1515),
(74, 15, NULL, NULL, NULL, 2, 29, 15, 435),
(75, 15, NULL, NULL, NULL, 2, 0, 15, 0),
(76, 15, NULL, NULL, NULL, 2, 20, 15, 300),
(77, 15, NULL, NULL, NULL, 2, 22, 15, 330),
(78, 15, NULL, NULL, NULL, 2, 11, 15, 165),
(79, 15, NULL, NULL, NULL, 2, 6, 15, 90),
(80, 15, 8, 6, 19, NULL, 54, 475, 25650),
(81, 15, NULL, NULL, NULL, 2, 1, 15, 15),
(82, 15, NULL, NULL, NULL, 2, 11, 15, 165),
(83, 15, NULL, NULL, NULL, 2, 4, 15, 60),
(84, 15, 3, 1, 4, NULL, 1, 480, 480),
(85, 15, 3, 1, 4, NULL, 1, 480, 480),
(86, 16, NULL, NULL, NULL, 2, 3, 15, 45),
(87, 16, 2, 1, 7, NULL, 20, 650, 13000),
(88, 16, 8, 6, 19, NULL, 3, 475, 1425),
(89, 16, NULL, NULL, NULL, 3, 3, 15, 45),
(90, 17, 2, 1, 7, NULL, 500, 650, 325000),
(91, 17, 8, 6, 19, NULL, 20, 475, 9500),
(92, 18, NULL, NULL, NULL, 2, 20, 15, 300),
(93, 19, NULL, NULL, NULL, 2, 0, 15, 0);

-- --------------------------------------------------------

--
-- Table structure for table `complaint`
--

CREATE TABLE `complaint` (
  `complaintID` int(11) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `complaintDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `complaintcomments`
--

CREATE TABLE `complaintcomments` (
  `commentID` int(11) NOT NULL,
  `complaintID` int(11) DEFAULT NULL,
  `commentDate` datetime DEFAULT NULL,
  `responserID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `complainttypes`
--

CREATE TABLE `complainttypes` (
  `complaintTypeID` int(11) NOT NULL,
  `type` varchar(50) DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `contact_id` int(11) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `msg` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `custaddpoint`
--

CREATE TABLE `custaddpoint` (
  `cusID` int(11) DEFAULT NULL,
  `addPoints` float DEFAULT NULL,
  `addDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `custburntpoint`
--

CREATE TABLE `custburntpoint` (
  `cusID` int(11) DEFAULT NULL,
  `addPoints` float DEFAULT NULL,
  `burntDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `cusID` int(11) NOT NULL,
  `roleID` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `contactNo` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL,
  `latitude` varchar(255) DEFAULT NULL,
  `balancePoints` varchar(255) DEFAULT NULL,
  `cusStatus` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cusID`, `roleID`, `name`, `address`, `contactNo`, `email`, `longitude`, `latitude`, `balancePoints`, `cusStatus`) VALUES
(1, 4, 'Prashani Gunasekara', 'madapatha', '01112223333', 'prashani@gmail.com', '23.78', '67.09', '90', 'active'),
(2, 4, 'Dinusha Gunasekara', 'colombo 10', '01112223333', 'dinu@gmail.com', '70', '90', '56', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `designation`
--

CREATE TABLE `designation` (
  `designationID` int(11) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `garbagecollection`
--

CREATE TABLE `garbagecollection` (
  `garbageCollectionID` int(11) NOT NULL,
  `cusID` int(11) DEFAULT NULL,
  `binTypeID` int(11) DEFAULT NULL,
  `scheduleID` int(11) DEFAULT NULL,
  `weight` float DEFAULT NULL,
  `points` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `garbageloc`
--

CREATE TABLE `garbageloc` (
  `garbageLocID` int(11) NOT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `garbagepoint`
--

CREATE TABLE `garbagepoint` (
  `binTypeID` int(11) DEFAULT NULL,
  `points` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `userID` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`email`, `password`, `userID`) VALUES
('chat@yahoo.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 7),
('kmal@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 8),
('kuma@yahho.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 6),
('naya@gmail.com', '123', 0),
('nishani@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 2),
('prashani@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 1),
('prashdinu@yahoo.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 3),
('rere', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 14),
('suji@gmai.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 9),
('suni@yahoo.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 10),
('tharu@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 4),
('tina@gmail.com', '123', 0),
('wathu@yahoo.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 5);

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `notificationID` int(11) NOT NULL,
  `notificationDate` datetime DEFAULT NULL,
  `senderID` int(11) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `notificationStatus` varchar(30) NOT NULL,
  `receiverID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `order_date` date NOT NULL,
  `cus_id` int(11) NOT NULL,
  `session_id` varchar(200) NOT NULL,
  `order_discount` double NOT NULL,
  `order_status` varchar(20) NOT NULL,
  `payment_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `order_date`, `cus_id`, `session_id`, `order_discount`, `order_status`, `payment_id`) VALUES
(1, '2017-11-29', 0, '', 0, 'Paid', 0),
(2, '2017-12-04', 0, '1512398730_::1', 0, 'Pending', 0),
(3, '2017-12-04', 0, '1512411219_::1', 0, 'Pending', 0),
(4, '2017-12-05', 0, '1512461313_::1', 0, 'Pending', 0),
(5, '2017-12-05', 0, '1512461522_::1', 0, 'Pending', 0),
(6, '2017-12-05', 0, '1512491300_::1', 0, 'Pending', 0),
(7, '2017-12-06', 0, '1512495295_::1', 0, 'Pending', 0),
(8, '2017-12-06', 0, '1512572173_::1', 0, 'Pending', 0),
(9, '2017-12-06', 0, '1512581169_::1', 0, 'Pending', 0),
(10, '2017-12-07', 1, '1512614374_::1', 0, 'Paid', 0),
(11, '2017-12-07', 1, '1512619522_::1', 0, 'Paid', 0),
(12, '2017-12-07', 1, '1512619834_::1', 0, 'Paid', 0),
(13, '2017-12-07', 1, '1512620007_::1', 0, 'Paid', 0),
(14, '2017-12-07', 1, '1512620126_::1', 0, 'Paid', 0),
(15, '2017-12-07', 0, '1512620556_::1', 0, 'Pending', 0),
(16, '2017-12-09', 1, '1512753775_::1', 0, 'Paid', 0),
(17, '2017-12-09', 1, '1512773073_::1', 0, 'Paid', 39),
(18, '2017-12-09', 0, '1512773606_::1', 0, 'Pending', 0),
(19, '2018-03-22', 0, '1521735672_::1', 0, 'Pending', 0);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payment_id` int(11) NOT NULL,
  `pay_amount` double NOT NULL,
  `pay_date_time` datetime NOT NULL,
  `pay_reason` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `pro_id` int(11) NOT NULL,
  `pro_name` varchar(200) NOT NULL,
  `pro_code` varchar(200) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `pro_des` text NOT NULL,
  `pro_status` varchar(20) NOT NULL,
  `pro_price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`pro_id`, `pro_name`, `pro_code`, `cat_id`, `type_id`, `pro_des`, `pro_status`, `pro_price`) VALUES
(1, 'Pen', '#001_002', 2, 4, 'pens in 3 colors', 'Active', 20),
(2, 'Mug', '#004_003', 3, 4, 'Mug for anniversary', 'Active', 650),
(3, 'School Tshirt', '#001_002', 2, 1, 'school t', 'Active', 480),
(4, 'Jug', '#004_003', 3, 4, 'water jug', 'Active', 320),
(5, 'Hat', '005_006', 6, 1, 'Attractive hats for ladies', 'Active', 350),
(6, 'sticker', '006_010', 10, 4, 'car sticker', 'deactive', 200),
(7, 'Flag', '007_010', 10, 4, 'Anniversary flag', 'Active', 250),
(8, 'School black umbrella', '#000_008', 4, 4, 'umbrella black color', 'Active', 475),
(9, 'Mug', '#000_007', 7, 4, 'White mug with alumni logo', 'Active', 450),
(10, 'DVD', '010_010', 10, 4, 'Alumni get together 2016 DVD', 'Active', 300),
(12, 'Water bottle', '#000_002', 2, 4, 'school bottle', 'Active', 375),
(13, 'erasers', '#004_002', 2, 4, 'school logo eraser', 'Active', 30);

-- --------------------------------------------------------

--
-- Table structure for table `product_category`
--

CREATE TABLE `product_category` (
  `cat_id` int(11) NOT NULL,
  `cat_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_category`
--

INSERT INTO `product_category` (`cat_id`, `cat_name`) VALUES
(1, 'T Shirts\r\n'),
(2, 'Stationary'),
(3, 'Mugs\r\n'),
(4, 'Umbrella\r\n'),
(5, 'Caps'),
(6, 'Hats'),
(7, 'Watches\r\n'),
(8, 'Bags'),
(9, 'Other'),
(10, 'Memorial');

-- --------------------------------------------------------

--
-- Table structure for table `product_color`
--

CREATE TABLE `product_color` (
  `color_id` int(11) NOT NULL,
  `color_code` varchar(200) NOT NULL,
  `color_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_color`
--

INSERT INTO `product_color` (`color_id`, `color_code`, `color_name`) VALUES
(1, '#000000', ''),
(2, '', 'Maroon'),
(3, '#1235FF', ''),
(4, '', 'Yellow'),
(5, '', 'White'),
(6, '#2154da', ''),
(7, '#5128f0', ''),
(8, '#3fdc43', ''),
(9, '#ff8000', ''),
(10, '#8080c0', ''),
(11, '#008080', ''),
(12, '', 'purple'),
(13, '#80ff00', ''),
(14, '#00ff00', ''),
(15, '#ff80c0', ''),
(16, '#ff0000', ''),
(17, '#ff8040', ''),
(18, '', 'blue'),
(19, '#ff0080', ''),
(20, '#3737e3', '');

-- --------------------------------------------------------

--
-- Table structure for table `product_size`
--

CREATE TABLE `product_size` (
  `size_id` int(11) NOT NULL,
  `size_code` varchar(20) NOT NULL,
  `standard` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_size`
--

INSERT INTO `product_size` (`size_id`, `size_code`, `standard`) VALUES
(1, '35', ''),
(2, '36', ''),
(3, 'Small', ''),
(4, 'Medium', ''),
(5, 'Large', ''),
(6, '40', ''),
(7, 'N/A', '');

-- --------------------------------------------------------

--
-- Table structure for table `product_type`
--

CREATE TABLE `product_type` (
  `type_id` int(11) NOT NULL,
  `type_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_type`
--

INSERT INTO `product_type` (`type_id`, `type_name`) VALUES
(1, 'Women'),
(2, 'Men'),
(3, 'Kid'),
(4, 'N/A');

-- --------------------------------------------------------

--
-- Table structure for table `pro_images`
--

CREATE TABLE `pro_images` (
  `pi_id` int(11) NOT NULL,
  `pro_image_name` varchar(200) NOT NULL,
  `pro_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pro_images`
--

INSERT INTO `pro_images` (`pi_id`, `pro_image_name`, `pro_id`) VALUES
(1, '1511709197_images (1).jpg', 3),
(2, '1511709197_images.jpg', 3),
(3, '1511709289_13891751.jpg', 4),
(4, '1511709289_mug2-1200.jpg', 4),
(5, '1511709549_0328599_l.jpg', 2),
(6, '1512226629_golf-umbrella-500-uv-pink.jpg', 8),
(7, '1512227259_b8b09f86751806912cfca469ea330a91--you-will-succeed-focus-on-positive-quotes.jpg', 9),
(8, '1521865160_1196221.jpg', 13),
(9, '1521865160_clipart-eraser-500x500.jpeg', 13);

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `roleID` int(10) NOT NULL,
  `roleName` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`roleID`, `roleName`) VALUES
(1, 'admin'),
(2, 'staff'),
(3, 'driver'),
(4, 'customer');

-- --------------------------------------------------------

--
-- Table structure for table `route`
--

CREATE TABLE `route` (
  `routeID` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE `schedule` (
  `scheduleID` int(11) NOT NULL,
  `driverID` int(11) DEFAULT NULL,
  `vehicleID` int(11) DEFAULT NULL,
  `sDate` date DEFAULT NULL,
  `startTime` time DEFAULT NULL,
  `endTime` time DEFAULT NULL,
  `confirmation` varchar(20) DEFAULT NULL,
  `startMeter` float DEFAULT NULL,
  `endMeter` float DEFAULT NULL,
  `route` int(11) DEFAULT NULL,
  `garbageLocID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `staffID` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `contactNo` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `staffStatus` varchar(20) DEFAULT NULL,
  `roleId` int(11) DEFAULT NULL,
  `designationID` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `stock_id` int(11) NOT NULL,
  `pro_id` int(11) NOT NULL,
  `size_id` int(11) NOT NULL,
  `color_id` int(11) NOT NULL,
  `stock_date` date NOT NULL,
  `stock_quantity` int(11) NOT NULL,
  `stock_status` varchar(20) NOT NULL,
  `member_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`stock_id`, `pro_id`, `size_id`, `color_id`, `stock_date`, `stock_quantity`, `stock_status`, `member_id`) VALUES
(1, 2, 7, 7, '2017-10-18', 5, 'Active', 1),
(2, 2, 7, 7, '2017-10-20', 30, 'Active', 1),
(3, 7, 7, 2, '2017-10-20', 12, 'Active', 1),
(4, 8, 7, 17, '2018-04-09', 0, 'active', 0),
(5, 4, 7, 18, '2018-03-13', 30, 'Active', 0),
(6, 8, 7, 19, '2018-04-25', 42, 'Active', 1),
(7, 3, 1, 4, '2017-05-09', 12, 'Active', 1),
(8, 7, 7, 1, '2018-03-21', 150, 'Active', 1),
(9, 9, 7, 14, '2018-03-14', 45, 'Active', 1),
(10, 3, 5, 1, '2018-03-21', 9, 'Active', 1),
(11, 11, 4, 20, '2018-03-19', 11, 'Active', 1);

-- --------------------------------------------------------

--
-- Table structure for table `track`
--

CREATE TABLE `track` (
  `track_id` int(11) NOT NULL,
  `track_in` varchar(20) NOT NULL,
  `track_out` varchar(20) NOT NULL,
  `track_status` varchar(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `ip` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `track`
--

INSERT INTO `track` (`track_id`, `track_in`, `track_out`, `track_status`, `user_id`, `ip`) VALUES
(1, '2017-12-09 03:32:20', '2017-12-09 03:32:31', 'LogOut', 1, '::1'),
(2, '2017-12-09 04:53:01', '', '', 1, '::1'),
(3, '2017-12-09 05:20:43', '', '', 10, '::1'),
(4, '2017-12-09 05:22:25', '', '', 1, '::1'),
(5, '2017-12-09 11:30:48', '', '', 1, '::1'),
(6, '2017-12-09 13:55:18', '', '', 1, '::1'),
(7, '2017-12-09 14:04:26', '', '', 1, '::1'),
(8, '2017-12-09 14:55:53', '', '', 1, '::1'),
(9, '2017-12-09 16:36:53', '', '', 1, '::1'),
(10, '2017-12-09 17:11:38', '', '', 1, '::1'),
(11, '2017-12-09 17:18:21', '', '', 1, '::1'),
(12, '2017-12-09 21:59:45', '', '', 1, '::1'),
(13, '2017-12-09 22:06:30', '', '', 1, '::1'),
(14, '2017-12-09 22:07:05', '', '', 1, '::1'),
(15, '2017-12-09 22:07:49', '', '', 1, '::1'),
(16, '2017-12-09 22:08:07', '', '', 1, '::1'),
(17, '2017-12-09 22:20:46', '', '', 1, '::1'),
(18, '2017-12-10 08:42:04', '', '', 1, '::1'),
(19, '2017-12-10 09:09:30', '', '', 1, '::1'),
(20, '2018-03-22 21:51:18', '', '', 1, '::1'),
(21, '2018-03-22 21:51:29', '', '', 1, '::1'),
(22, '2018-03-23 20:33:21', '', '', 1, '::1'),
(23, '2018-03-23 21:02:58', '', '', 1, '::1'),
(24, '2018-03-23 21:11:01', '', '', 1, '::1'),
(25, '2018-03-24 14:51:05', '', '', 1, '::1'),
(26, '2018-03-25 18:41:36', '', '', 1, '::1'),
(27, '2018-03-25 20:47:55', '', '', 1, '::1');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle`
--

CREATE TABLE `vehicle` (
  `vehicleID` int(11) NOT NULL,
  `vehicleNo` varchar(20) DEFAULT NULL,
  `vehicleType` varchar(20) DEFAULT NULL,
  `capacity` float DEFAULT NULL,
  `odometer` float DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `vehicleavailability`
--

CREATE TABLE `vehicleavailability` (
  `vehicleNo` varchar(50) DEFAULT NULL,
  `isAvailable` varchar(20) DEFAULT NULL,
  `reason` text DEFAULT NULL,
  `addedDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bintype`
--
ALTER TABLE `bintype`
  ADD PRIMARY KEY (`binTypeID`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `complaint`
--
ALTER TABLE `complaint`
  ADD PRIMARY KEY (`complaintID`);

--
-- Indexes for table `complaintcomments`
--
ALTER TABLE `complaintcomments`
  ADD PRIMARY KEY (`commentID`);

--
-- Indexes for table `complainttypes`
--
ALTER TABLE `complainttypes`
  ADD PRIMARY KEY (`complaintTypeID`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cusID`);

--
-- Indexes for table `designation`
--
ALTER TABLE `designation`
  ADD PRIMARY KEY (`designationID`);

--
-- Indexes for table `garbagecollection`
--
ALTER TABLE `garbagecollection`
  ADD PRIMARY KEY (`garbageCollectionID`);

--
-- Indexes for table `garbageloc`
--
ALTER TABLE `garbageloc`
  ADD PRIMARY KEY (`garbageLocID`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`notificationID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`pro_id`);

--
-- Indexes for table `product_category`
--
ALTER TABLE `product_category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `product_color`
--
ALTER TABLE `product_color`
  ADD PRIMARY KEY (`color_id`);

--
-- Indexes for table `product_size`
--
ALTER TABLE `product_size`
  ADD PRIMARY KEY (`size_id`);

--
-- Indexes for table `product_type`
--
ALTER TABLE `product_type`
  ADD PRIMARY KEY (`type_id`);

--
-- Indexes for table `pro_images`
--
ALTER TABLE `pro_images`
  ADD PRIMARY KEY (`pi_id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`roleID`);

--
-- Indexes for table `route`
--
ALTER TABLE `route`
  ADD PRIMARY KEY (`routeID`);

--
-- Indexes for table `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`scheduleID`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`staffID`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`stock_id`);

--
-- Indexes for table `track`
--
ALTER TABLE `track`
  ADD PRIMARY KEY (`track_id`);

--
-- Indexes for table `vehicle`
--
ALTER TABLE `vehicle`
  ADD PRIMARY KEY (`vehicleID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bintype`
--
ALTER TABLE `bintype`
  MODIFY `binTypeID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `complaint`
--
ALTER TABLE `complaint`
  MODIFY `complaintID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `complaintcomments`
--
ALTER TABLE `complaintcomments`
  MODIFY `commentID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `complainttypes`
--
ALTER TABLE `complainttypes`
  MODIFY `complaintTypeID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `cusID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `garbagecollection`
--
ALTER TABLE `garbagecollection`
  MODIFY `garbageCollectionID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `garbageloc`
--
ALTER TABLE `garbageloc`
  MODIFY `garbageLocID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `notificationID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `pro_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `product_category`
--
ALTER TABLE `product_category`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `product_color`
--
ALTER TABLE `product_color`
  MODIFY `color_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `product_size`
--
ALTER TABLE `product_size`
  MODIFY `size_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `product_type`
--
ALTER TABLE `product_type`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pro_images`
--
ALTER TABLE `pro_images`
  MODIFY `pi_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `roleID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `route`
--
ALTER TABLE `route`
  MODIFY `routeID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `schedule`
--
ALTER TABLE `schedule`
  MODIFY `scheduleID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `staffID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stock`
--
ALTER TABLE `stock`
  MODIFY `stock_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `track`
--
ALTER TABLE `track`
  MODIFY `track_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `vehicle`
--
ALTER TABLE `vehicle`
  MODIFY `vehicleID` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
