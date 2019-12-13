-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 13, 2019 at 10:53 PM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `food`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cat_id` int(4) NOT NULL,
  `cat_nm` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cat_id`, `cat_nm`) VALUES
(1, 'Chinese'),
(2, 'Continental'),
(3, 'Dessert'),
(4, 'Italian'),
(5, 'Pizza'),
(6, 'Pasta'),
(7, 'Burger'),
(8, 'Sides');

-- --------------------------------------------------------

--
-- Table structure for table `delivary_details`
--

CREATE TABLE `delivary_details` (
  `id` int(11) NOT NULL,
  `name` char(50) NOT NULL,
  `address` text NOT NULL,
  `postal_code` bigint(20) NOT NULL,
  `city` varchar(50) NOT NULL,
  `phone` bigint(20) NOT NULL,
  `f_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `delivary_details`
--

INSERT INTO `delivary_details` (`id`, `name`, `address`, `postal_code`, `city`, `phone`, `f_id`) VALUES
(1, 'Sabrina Hossain', ' 26 Eskaton Garden', 1200, 'Dhaka', 1815425111, 'Sabrina'),
(3, 'trfeds', ' rtfed', 0, 'trved', 0, '1234');

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

CREATE TABLE `food` (
  `b_id` int(4) NOT NULL,
  `b_nm` varchar(60) NOT NULL,
  `b_price` int(5) NOT NULL,
  `b_img` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`b_id`, `b_nm`, `b_price`, `b_img`) VALUES
(6, 'French Fries', 5, 'upload_image/ff.jpg'),
(7, 'Wedges', 6, 'upload_image/w.jpg'),
(8, 'Cheese Chicken Burger', 7, 'upload_image/ccb.jpg'),
(9, 'Chicken Mac Burger', 8, 'upload_image/cmb.jpg'),
(10, 'Falooda', 9, 'upload_image/f.jpg'),
(11, 'Custerd Pudding', 10, 'upload_image/c.jpg'),
(12, 'Vegetable Fried Rice', 11, 'upload_image/fr.jpg'),
(13, 'Fried Chicken', 12, 'upload_image/fc.jpg'),
(14, 'Wonthon', 13, 'upload_image/wt.jpg'),
(15, 'Broken Glass Pudding', 14, 'upload_image/bgp.jpg'),
(16, 'Beef Burger', 15, 'upload_image/bb.jpg'),
(17, 'Chocolate Smoothie', 16, 'upload_image/cs.jpg'),
(18, 'Banana Smoothie', 17, 'upload_image/bs.jpg'),
(19, 'Oreo Shake', 18, 'upload_image/os.jpg'),
(20, 'Nachos', 19, 'upload_image/n.jpg'),
(21, 'Thai Soup', 122, 'upload_image/ts.jpg'),
(22, 'Vegetable Soup', 18, 'upload_image/vs.jpg'),
(23, 'Prawn Fried Rice', 18, 'upload_image/pfr.jpg'),
(24, 'Egg Pudding', 18, 'upload_image/ep.jpg'),
(25, 'Mixed Vegetable Noodles', 18, 'upload_image/mvn.jpg'),
(26, 'Chicken Noodles', 18, 'upload_image/chickenn.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `subcat`
--

CREATE TABLE `subcat` (
  `subcat_id` int(4) NOT NULL,
  `parent_id` int(4) NOT NULL,
  `subcat_nm` varchar(35) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcat`
--

INSERT INTO `subcat` (`subcat_id`, `parent_id`, `subcat_nm`) VALUES
(1, 1, 'Fried Rice'),
(2, 1, 'Fried Chicken'),
(3, 1, 'Wonthon'),
(4, 2, 'Noodles'),
(5, 3, 'Pudding'),
(6, 3, 'Falooda'),
(7, 3, 'Oreo Shake'),
(8, 3, 'Smoothie'),
(9, 4, 'Pizza'),
(10, 2, 'Soup'),
(11, 4, 'Pasta'),
(12, 5, 'Pizza'),
(13, 6, 'Pasta'),
(14, 7, 'Burger'),
(15, 8, 'French Fries'),
(17, 8, 'Nachos'),
(16, 8, 'Wedges');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `u_id` int(4) NOT NULL,
  `u_fnm` varchar(35) NOT NULL,
  `u_unm` varchar(25) NOT NULL,
  `u_pwd` varchar(20) NOT NULL,
  `u_gender` varchar(7) NOT NULL,
  `u_email` varchar(35) NOT NULL,
  `u_contact` varchar(12) NOT NULL,
  `u_city` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`u_id`, `u_fnm`, `u_unm`, `u_pwd`, `u_gender`, `u_email`, `u_contact`, `u_city`) VALUES
(1, 'Sabrina', 'sabs', '1234', 'Female', 'sabs@gmail.com', '01815425111', 'Dhaka'),
(7, 'admin', 'admin', 'admin123', 'Female', 'sabs@gmail.com', '01815425111', 'Dhaka');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `delivary_details`
--
ALTER TABLE `delivary_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`b_id`);

--
-- Indexes for table `subcat`
--
ALTER TABLE `subcat`
  ADD PRIMARY KEY (`subcat_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`u_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `cat_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `delivary_details`
--
ALTER TABLE `delivary_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `food`
--
ALTER TABLE `food`
  MODIFY `b_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `subcat`
--
ALTER TABLE `subcat`
  MODIFY `subcat_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `u_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
