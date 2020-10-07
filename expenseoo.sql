-- phpMyAdmin SQL Dump
-- version 4.5.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 12, 2018 at 07:32 AM
-- Server version: 5.7.11
-- PHP Version: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `expenseoo`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `delete_ent` (IN `did` INT)  NO SQL
DELETE from ent WHERE id=did$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `delete_f` (IN `did` INT)  NO SQL
DELETE from food WHERE id=did$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `delete_m` (IN `did` INT)  NO SQL
DELETE from medic WHERE id=did$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `delete_misc` (IN `did` INT)  NO SQL
DELETE from misc WHERE id=did$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insertent` (IN `e` VARCHAR(255), IN `c` VARCHAR(255), IN `a` INT, IN `d` DATE)  NO SQL
insert into ent (email,category,cost,date) values (e,c,a,d)$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insertf` (IN `e` VARCHAR(255), IN `c` VARCHAR(255), IN `a` INT, IN `d` DATE)  NO SQL
insert into food (email,category,cost,date) values (e,c,a,d)$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insertm` (IN `e` VARCHAR(255), IN `c` VARCHAR(255), IN `a` INT, IN `d` DATE)  NO SQL
insert into medic (email,category,cost,date) values (e,c,a,d)$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insertmisc` (IN `e` VARCHAR(255), IN `c` VARCHAR(255), IN `a` INT, IN `d` DATE)  NO SQL
insert into misc (email,category,cost,date) values (e,c,a,d)$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `login` (IN `e` VARCHAR(255), IN `p` VARCHAR(255))  NO SQL
select * from users where email=e and password=p$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `signup` (IN `n` VARCHAR(255), IN `ph` BIGINT, IN `e` VARCHAR(255), IN `s` INT, IN `p` VARCHAR(255), IN `pic` VARCHAR(255), IN `g` VARCHAR(30))  NO SQL
INSERT INTO users VALUES (n,ph,e,s,p,pic,g)$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `updateent` (IN `cat` VARCHAR(255), IN `c` INT, IN `d` DATE, IN `uid` INT)  NO SQL
UPDATE ent SET category=cat,cost=c,date=d WHERE id=uid$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `updatef` (IN `cat` VARCHAR(255), IN `c` INT, IN `d` DATE, IN `uid` INT)  NO SQL
UPDATE food SET category=cat,cost=c,date=d WHERE id=uid$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `updatem` (IN `cat` VARCHAR(255), IN `c` INT, IN `d` DATE, IN `uid` INT)  NO SQL
UPDATE medic SET category=cat,cost=c,date=d WHERE id=uid$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `updatemisc` (IN `cat` VARCHAR(255), IN `c` INT, IN `d` DATE, IN `uid` INT)  NO SQL
UPDATE misc SET category=cat,cost=c,date=d WHERE id=uid$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `users_name` (IN `e` VARCHAR(255))  NO SQL
select * from users where email=e$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `user_ent` (IN `e` VARCHAR(255))  NO SQL
select * from ent where email=e$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `user_food` (IN `e` VARCHAR(255))  NO SQL
select * from food where email=e$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `user_m` (IN `e` VARCHAR(255))  NO SQL
select * from medic where email=e$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `user_misc` (IN `e` VARCHAR(255))  NO SQL
select * from misc where email=e$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `ent`
--

CREATE TABLE `ent` (
  `id` int(11) NOT NULL,
  `email` varchar(225) NOT NULL,
  `category` varchar(255) NOT NULL,
  `cost` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ent`
--

INSERT INTO `ent` (`id`, `email`, `category`, `cost`, `date`) VALUES
(2, 'ex@ex.com', 'internet', 600, '2018-11-02'),
(3, 'far@far.com', 'movie', 170, '2018-11-01'),
(4, 'far@far.com', 'movie', 2000, '2018-11-01'),
(6, 'example@gmail.com', 'movie', 200, '2018-11-02'),
(7, 'ex@ex.com', 'snacks', 200, '2018-09-01'),
(8, 'ex@ex.com', 'interntet', 900, '2018-11-21'),
(9, 'ex@ex.com', 'fuel', 100, '2014-09-08'),
(10, 'ex@ex.com', 'tv', 1000, '2014-09-08');

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

CREATE TABLE `food` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `cost` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`id`, `email`, `category`, `cost`, `date`) VALUES
(1, 'ex@ex.com', 'snacks', 501, '2018-11-01'),
(3, 'khan@gmail.com', 'movie', 200, '2018-11-01'),
(4, 'khan@gmail.com', 'breakfast', 200, '2018-11-01'),
(5, 'far@far.com', 'grocery', 200, '2018-11-01'),
(6, 'far@far.com', 'lunch', 450, '2018-11-02'),
(7, 'far@far.com', 'lunch', 200, '2018-11-01'),
(8, 'example@gmail.com', 'grocery', 500, '2018-11-03'),
(9, 'example@gmail.com', 'lunch', 100, '2018-11-01'),
(10, 'example@gmail.com', 'breakfast', 250, '2018-11-02'),
(11, 'ex@ex.com', 'grocery', 100, '2020-10-18'),
(14, 'suhabi@gmail.com', 'snacks', 30, '2018-09-12'),
(15, 'suhabi@gmail.com', 'grocery', 100, '2018-10-18'),
(16, 'ex@ex.com', 'breakfast', 200, '2018-09-12'),
(17, 'ex@ex.com', 'snacks', 25, '2018-09-12'),
(18, 'ex@ex.com', 'grocery', 1000, '2018-01-19');

-- --------------------------------------------------------

--
-- Table structure for table `medic`
--

CREATE TABLE `medic` (
  `id` int(11) NOT NULL,
  `email` varchar(225) NOT NULL,
  `category` varchar(255) NOT NULL,
  `cost` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medic`
--

INSERT INTO `medic` (`id`, `email`, `category`, `cost`, `date`) VALUES
(3, 'far@far.com', 'medicine', 3000, '2018-11-01'),
(4, 'far@far.com', 'hospital', 20000, '2018-11-01'),
(6, 'ex@ex.com', 'medicine', 200, '2018-09-13'),
(7, 'ex@ex.com', 'hospital', 1000, '2014-09-08');

-- --------------------------------------------------------

--
-- Table structure for table `misc`
--

CREATE TABLE `misc` (
  `id` int(11) NOT NULL,
  `email` varchar(225) NOT NULL,
  `category` varchar(255) NOT NULL,
  `cost` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `misc`
--

INSERT INTO `misc` (`id`, `email`, `category`, `cost`, `date`) VALUES
(1, 'ex@ex.com', 'rent', 20000, '2017-01-01'),
(3, 'far@far.com', 'rent', 17000, '2018-11-01'),
(4, 'far@far.com', 'electricity', 1000, '2018-11-01'),
(5, 'ex@ex.com', 'rent', 999, '2018-09-18'),
(6, 'ex@ex.com', 'maintainance', 5000, '2018-12-01');

-- --------------------------------------------------------

--
-- Table structure for table `total`
--

CREATE TABLE `total` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `dp` varchar(500) NOT NULL,
  `ph_no` bigint(11) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `salary` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `username`, `password`, `dp`, `ph_no`, `gender`, `salary`) VALUES
(1, 'syed@g.com\r\n', 'syed', 'gibran112', '', 8904797628, 'male', 2000),
(2, 'ex@ex.com', 'ex', '123', '5bdbdf894379c7.16192552.jpg', 55132, 'female', 35135),
(3, 'khan@gmail.com', 'Khan', '123', '', 86521, 'male', 34651),
(4, 'far@far.com', 'far', '123', '5bdc5088712aa6.78812366.jpg', 654564682, 'male', 65435),
(5, 'example@gmail.com', 'example', '123', '5bdd1e90a1f908.64797068.jpg', 8553353482, 'male', 50000),
(10, 'suhabi@gmail.com', 'syed suhaibuddin ahmed', '1234', '', 1234, 'male', 100),
(11, 'khan@ex.com', 'khan', '123', '5c029870004b06.14261708.jpg', 355643135, 'male', 50000),
(12, 'khan@ex.com', 'khan', '123', '5c0298e5e87466.46804153.jpg', 8562335232, 'male', 50000),
(13, 'khan@ex.com', 'khan', '123', '5c0299904c8224.90901902.jpg', 5498612235, 'male', 500000),
(14, 'khan@ex.com', 'khan', '123', '5c0299bc1add05.29869322.jpg', 2131413, 'male', 41341431),
(15, 'khan@ex.com', 'hghg', '123', '5c029ae3e03382.11820117.jpg', 65484222, 'male', 54),
(16, 'khan@ex.com', 'dgdg', '123', '5c029b2ba6fd98.16558237.', 142343, 'male', 324234),
(17, 'khan@ex.com', 'dgdg', '123', '5c029b53f17358.32059215.', 142343, 'male', 324234),
(18, 'check@ex.com', 'check', '123', '5c029da9268a00.55857485.jpg', 142343, 'male', 324234),
(19, 'check@ck.com', 'vfsdv', '123', '5c03e6b3ea17e3.36420542.jpg', 2134256, 'male', 2343545);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ent`
--
ALTER TABLE `ent`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medic`
--
ALTER TABLE `medic`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `misc`
--
ALTER TABLE `misc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `total`
--
ALTER TABLE `total`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ent`
--
ALTER TABLE `ent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `food`
--
ALTER TABLE `food`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `medic`
--
ALTER TABLE `medic`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `misc`
--
ALTER TABLE `misc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
