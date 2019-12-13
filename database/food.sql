

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Table structure for table `book`
--

CREATE TABLE IF NOT EXISTS `food` (
  `b_id` int(4) NOT NULL AUTO_INCREMENT,
   `b_nm` varchar(60) NOT NULL,
  `b_price` int(5) NOT NULL,
  `b_img` longtext NOT NULL,
  PRIMARY KEY (`b_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=51 ;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`b_id`, `b_nm`, `b_price`, `b_img`) VALUES
(1, 'Mexican Pizza',0,'upload_image/mp.jpg'),
(2, ' Pizza Margareeta',1,'upload_image/pm.jpg'),
(3, 'Italian Pasta',2,'upload_image/ip.jpg'),
(4, 'Oven Baked Pasta',3,'upload_image/obp.jpg'),
(5, 'Red Pasta',4,'upload_image/rp.jpg'),
(6, 'French Fries',5,'upload_image/ff.jpg'),
(7, 'Wedges',6,'upload_image/w.jpg'),
(8, 'Cheese Chicken Burger',7,'upload_image/ccb.jpg'),
(9, 'Chicken Mac Burger',8,'upload_image/cmb.jpg'),
(10, 'Falooda',9,'upload_image/f.jpg'),
(11, 'Custerd Pudding',10,'upload_image/c.jpg'),
(12 ,'Vegetable Fried Rice',11,'upload_image/fr.jpg'),
(13, 'Fried Chicken',12,'upload_image/fc.jpg'),
(14, 'Wonthon',13,'upload_image/wt.jpg'),
(15, 'Broken Glass Pudding',14,'upload_image/bgp.jpg'),
(16, 'Beef Burger',15,'upload_image/bb.jpg'),
(17, 'Chocolate Smoothie',16,'upload_image/cs.jpg'),
(18, 'Banana Smoothie',17,'upload_image/bs.jpg'),
(19, 'Oreo Shake',18,'upload_image/os.jpg'),
(20, 'Nachos',19,'upload_image/n.jpg'),
(21, 'Thai Soup',122,'upload_image/ts.jpg'),
(22, 'Vegetable Soup',18,'upload_image/vs.jpg'),
(23, 'Prawn Fried Rice',18,'upload_image/pfr.jpg'),
(24, 'Egg Pudding',18,'upload_image/ep.jpg'),
(25, 'Mixed Vegetable Noodles',18,'upload_image/mvn.jpg'),
(26, 'Chicken Noodles',18,'upload_image/chickenn.jpg'),
(27, 'Waffle',18,'upload_image/waffle.jpg');
-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `cat_id` int(4) NOT NULL AUTO_INCREMENT,
  `cat_nm` varchar(30) NOT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

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


--
-- Table structure for table `delivary_details`
--

CREATE TABLE IF NOT EXISTS `delivary_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` char(50) NOT NULL,
  `address` text NOT NULL,
  `postal_code` bigint(20) NOT NULL,
  `city` varchar(50) NOT NULL,
  `phone` bigint(20) NOT NULL,
  `f_id` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `shipping_details`
--

INSERT INTO `delivary_details` (`id`, `name`, `address`, `postal_code`, `city`, `phone`, `f_id`) VALUES
(1, 'Sabrina Hossain', ' 26 Eskaton Garden', 1200, 'Dhaka', 01815425111, 'Sabrina');


-- --------------------------------------------------------

--
CREATE TABLE IF NOT EXISTS `subcat` (
  `subcat_id` int(4) NOT NULL AUTO_INCREMENT,
  `parent_id` int(4) NOT NULL,
  `subcat_nm` varchar(35) NOT NULL,
  PRIMARY KEY (`subcat_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=36 ;

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
--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `u_id` int(4) NOT NULL AUTO_INCREMENT,
  `u_fnm` varchar(35) NOT NULL,
  `u_unm` varchar(25) NOT NULL,
  `u_pwd` varchar(20) NOT NULL,
  `u_gender` varchar(7) NOT NULL,
  `u_email` varchar(35) NOT NULL,
  `u_contact` varchar(12) NOT NULL,
  `u_city` varchar(20) NOT NULL,
  PRIMARY KEY (`u_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`u_id`, `u_fnm`, `u_unm`, `u_pwd`, `u_gender`, `u_email`, `u_contact`, `u_city`) VALUES
(1, 'Sabrina', 'sabs', '1234', 'Female', 'sabs@gmail.com', '01815425111', 'Dhaka');


