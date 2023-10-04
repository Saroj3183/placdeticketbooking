-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 02, 2021 at 05:33 PM
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
-- Database: `trip`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `admin_pass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `admin_name`, `admin_pass`) VALUES
(1, 'rizvana', 'rizvana');

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `bid` int(11) NOT NULL,
  `pname` varchar(255) NOT NULL,
  `cname` varchar(255) NOT NULL,
  `adult` int(255) NOT NULL,
  `child` int(255) NOT NULL,
  `todate` date NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `total` varchar(255) NOT NULL,
  `currentdate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`bid`, `pname`, `cname`, `adult`, `child`, `todate`, `name`, `email`, `phone`, `total`, `currentdate`) VALUES
(230, 'Lakhota Lake', 'jamnagar   ', 2, 2, '2021-05-02', 'rizvana', 'rizvana@gmail.com', '1234567890', '40', '2021-05-02 08:27:50');

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `cid` int(11) NOT NULL,
  `cname` varchar(255) NOT NULL,
  `city_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`cid`, `cname`, `city_image`) VALUES
(1, 'jamnagar   ', 'Lakhota.jpg'),
(2, 'rajkot ', 'FunWorld.jpeg'),
(9, 'narmada', 'i5.jpg'),
(10, 'kutch', 'Rann-Utsav.jpg'),
(11, 'ahemdabad', 'p1.jpg'),
(14, 'DWARKA', 'shivrajpur.jpg'),
(15, 'JUNAGADH', 'Sasangir.jpg'),
(16, 'Surat', 'Sardar-Vallabhbhai-Patel-National-Museum.jpg'),
(17, 'VADODARA', 'aatapi-wonderland.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `contact_table`
--

CREATE TABLE `contact_table` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `service` varchar(25) NOT NULL,
  `message` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact_table`
--

INSERT INTO `contact_table` (`id`, `name`, `email`, `service`, `message`) VALUES
(16, 'rizvana', 'rizvana@gmail.com', 'Gujrat city', 'we need more city'),
(17, 'rizvana', 'rizvana@gmail.com', 'Gujrat places', 'adsfsdfdsfd'),
(18, 'rizvana', 'saniya1@gmail.com', 'Gujrat city', 'wddasd'),
(19, 'rizvana', 'saniya1@gmail.com', 'Parks', 'tgjbhjknk\r\n'),
(20, 'rizvana', 'saniya1@gmail.com', 'Gujrat places', 'aa'),
(21, 'rizvanachharecha', 'riz1@gmail.com', 'Gujrat places', 'sdcdscdsc'),
(22, 'rizvana', 'rizvana@gmail.com', 'Gujrat city', 'more city you may add pelase');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `fristname` varchar(40) NOT NULL,
  `lastname` varchar(40) NOT NULL,
  `email` varchar(100) NOT NULL,
  `Radio1` varchar(50) NOT NULL,
  `Radio2` varchar(50) NOT NULL,
  `Radio3` varchar(50) NOT NULL,
  `message` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `fristname`, `lastname`, `email`, `Radio1`, `Radio2`, `Radio3`, `message`) VALUES
(1, 'Chharecha', 'Rizvana', 'rizvana@gmail.com', 'on', '', 'on', 'Write msg here..'),
(2, 'Chharecha', 'Rizvana', 'rizvana@gmail.com', 'on', '', 'on', 'Write msg here..'),
(3, 'Chharecha', 'Rizvana', 'rizvana@gmail.com', 'on', 'on', 'on', 'Write msg here..'),
(4, 'Chharecha', 'Rizvana', 'rizvana@gmail.com', 'on', 'on', 'on', 'hiiiiiiiiiiii\r\n'),
(5, 'Chharecha', 'Rizvana', 'riz123@gmail.com', 'no', 'NO', 'Dificult', 'scdszdcds'),
(9, 'rizvana', 'chh', '', 'Yes', 'Yes, all of it', 'Very Easy', 'Write msg here..'),
(10, 'rizvana', 'chharecha', 'chharecharizvana@gmail.com', 'Yes', 'Yes some of it', 'Easy', 'Write msg here..'),
(11, 'rizvana', 'chharecha', 'chharecharizvana@gmail.com', 'Yes', 'Yes some of it', 'Easy', 'Write msg here..'),
(12, 'Chharecha', 'Rizvana', 'riz123@gmail.com', 'No', 'Yes, all of it', 'Easy', 'Write msgaqsad here..'),
(17, 'Chharecha', 'Rizvana', 'rizu@gmail.com', 'Yes', 'Yes, all of it', 'Very Easy', 'Write msg here..'),
(18, 'rizvana', 'chharecha', 'rizvanachharecha@gmail.com', 'Yes', 'Yes some of it', 'Easy', 'hiii');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `gid` int(11) NOT NULL,
  `gname` varchar(255) NOT NULL,
  `gimage` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`gid`, `gname`, `gimage`) VALUES
(5, 'Staue Of Unity', 'i5.jpg'),
(6, 'Runn Utsav', 'Rann-Utsav.jpg'),
(7, 'Sarthana Park', 'z2.jpg'),
(8, 'Maniar Park', 'p1.jpg'),
(9, 'Aatapi Wonderland', 'aatapi-wonderland.jpg'),
(10, 'Shivrajpur Beach', 'Dwarka.jpg'),
(12, 'xyz', '25.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `home`
--

CREATE TABLE `home` (
  `hid` int(11) NOT NULL,
  `hcity_name` varchar(255) NOT NULL,
  `hplace_name` varchar(255) NOT NULL,
  `himage` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `home`
--

INSERT INTO `home` (`hid`, `hcity_name`, `hplace_name`, `himage`) VALUES
(10, 'JAMNAGAR', 'Lakhota Lake', 'Lakhota.jpg'),
(11, 'RAJKOT', 'Funworld', 'FunWorld.jpeg'),
(12, 'SURAT', 'Sarthana Park', 'z2.jpg'),
(13, 'NARMADA', 'Staue Of Unity', 'i5.jpg'),
(14, 'KUTCH', 'Runn Utsav', 'Rann-Utsav.jpg'),
(15, 'AHEMDABAD', 'Maniar  Park', 'p1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `place`
--

CREATE TABLE `place` (
  `pid` int(11) NOT NULL,
  `pname` varchar(255) NOT NULL,
  `cid` int(25) NOT NULL,
  `address` varchar(255) NOT NULL,
  `time1` varchar(255) NOT NULL,
  `open` varchar(255) NOT NULL,
  `close` varchar(255) NOT NULL,
  `adult` int(255) NOT NULL,
  `child` varchar(255) NOT NULL,
  `pimage` varchar(255) NOT NULL,
  `ptype` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `place`
--

INSERT INTO `place` (`pid`, `pname`, `cid`, `address`, `time1`, `open`, `close`, `adult`, `child`, `pimage`, `ptype`) VALUES
(15, 'Khijadiya Bird sanctuary', 1, 'jamnagar-rajkot highway road ', ' 6:00 am TO 6:00 pm', 'All days of the week', 'no close day', 40, '0', 'Khijadiya.jpg', 'bird'),
(16, 'Lakhota Lake', 1, 'Government Colony,jamnagar', '4:00 am TO 9:00 pm', 'All days', 'No close days', 10, '10 ', 'Lakhota.jpg', 'lake'),
(17, 'Ranjit Sagar Dam', 1, 'Green city, ranjit sagar rd jamnagar.', '10:00 am TO 8:00 pm', 'Tuseday to Sunday', 'Monday', 10, '10 ', 'ranjitsagar.jpg', 'dam'),
(18, 'Lakhota Museum', 1, 'Government Colony,jamnagar', ' 1:00 pm TO 9:00 pm', 'sunday, mon,tuse, thurse,fri,sat', 'Wednesday', 25, '25', 'museum2.jpg', 'musume'),
(19, 'Auto World Vintage car museme', 11, 'Dastan Estate Sardar Patel ring road  ', ' 8:00 am TO 9:00 pm', 'tuseday to Sunday', 'Monday', 50, '50 ', 'Khijadiya.jpg', 'musume'),
(20, 'Kankriya Lake', 11, 'maninagar', '4:00 am TO 10:00 pm', 'Tuseday to Sunday', 'Monday', 25, '10', 'Kankaria Lake.jpg', 'lake'),
(29, 'Funworld', 2, 'Ground Race Course,sadar,Rajkot,Gujarat', '3:00 am TO 9:00 pm', 'Every days', 'Not any day', 20, '15', 'FunWorld.jpeg', 'other'),
(30, 'Pradhyuman Zoological Park', 2, 'Near Marketing Yard, Lalpari Lake, rajkot', '9:00 am TO 6:00 pm', 'mon,wed,thurs,fri,sat,sun', 'No close day', 10, '5', '35.jpg', 'park'),
(32, 'Watson Museum ', 2, 'Jawahar Rd,oop BSNL office rajkot ', '10:00 am TO 5:00 pm ', 'mon ,tue,thurs,sat,sund ', 'Wednesday & Saturday ', 20, ' 0', 'rjkt.jpeg', 'musume'),
(33, 'Eldorado Park', 2, 'Rajkot-jamnagar Highway,Taraghdi,Rajkot.', '10:00 am TO 5:00 pm', 'all days', 'no close day', 500, '0', 'p1.jpg', 'park'),
(35, 'Statue of Unity', 9, 'Kevadia,Narmada District', '8:00 am TO 6:00 pm', 'Tuesday To Sunday', 'Monday', 120, '60', 's.jpg', 'other'),
(37, 'Jungle Safari Park', 9, 'Located just 2 km away from the Statue of unity.', '8:00am to 4:00pm', 'Tuesday To Sunday', 'Monday', 200, '125', 'junglesafari.jpg', 'park'),
(38, 'White Run of Kutch', 10, 'Thar Desert, Kutch District,Gujrat', '12:00 am to 12:00 pm', '24 Hours', 'No Closed', 100, '50', 'run.jpg', 'other'),
(39, 'Vijay Vilas Palace', 10, 'Vijay Vilas Palace Road,District Kutch,Mandvi Rural-Gujrat 370465', '9:00 am TO 1:00 pm & 3pm TO 6pm<', 'MONDAY to SUNDAY', 'Thrusday', 20, '10', 'vijya.jpg', 'other'),
(40, 'Kalo Dungar', 10, 'Khavda,Kutch District', '6:00 am TO 6:00 pm', 'All days of week', 'Not any day', 100, '100', 'kalodungar.jpg', 'other'),
(42, 'Ktuch Museum', 10, 'Opposite Hamirsar lake,Ghanshyam nagar ktuch', '10:00 am TO 1:00 pm & 2:30pm TO 5:30pm', 'Monday to Sunday', 'Wednesday', 5, '0', 'museum.jpg', 'musume'),
(43, 'Science City', 11, 'Off S.G Highway Ahemdabad ,Gujrat', '10:00 am TO 7:30 pm', 'All days of week', 'Not any day', 20, '10', 'scincecity.jpg', 'other'),
(44, 'Nal Sarovar Bird Sanctury', 11, 'Vadla Village:Nalsarovar Tasannand- 382150', '6:00 am TO 5:30 pm', 'Monday to Sunday', 'No closed', 40, '50', 'Screenshot_2021-02-23-13-21-36-07.jpg', 'bird'),
(45, 'Sudama Setu', 14, 'Sudama setu is located near Dwarikadhesh remple,over Gomti river,Dwarka', '8:00 am TO 4:00 pm', 'All days', 'No Closed', 10, '10', 'sudamasetu.jpg', 'other'),
(46, 'SUNSET POINT', 14, 'Situated close to the Bhadkeshwar Temple', '24 HOURS', 'All Days', 'No closed', 20, '10', 'sunpoint.jpg.jpg', 'other'),
(47, 'Light House', 14, 'Located at western coast of the Arabian sea close to the Bhadkeshwar Temple.', '4:00 am TO 6:00 pm', 'All days of week', 'Not any day', 20, '10', 'lighthouse.jpg', 'other'),
(48, 'Shivrajpur Beach', 14, 'Shivrajpur beach Dwarka near Rukmani Temple', '6:00am TO 8:00pm', 'All days', 'No closed', 200, '50', 'shivrajpur_beach.png', 'beach'),
(49, 'Gir National Park', 15, '78km from Junagadh', '6:00 am TO 5:00 pm', '16th October to 15th June', 'Wednesday', 75, '0', '7.jpeg', 'park'),
(50, 'Sakkerbag Zoo', 15, 'Junagadh Rajkot Highway Gujarat', '8:00 am TO 5:00 pm', 'Sunday to tuseday & thursday to Saturday', 'Wednesday', 20, '10', 'z2.jpg', 'zoo'),
(51, 'Ashoka Edicts', 15, 'Girnar Hills junagadh.', '8:00 am TO 6:00 pm', 'Every day', 'friday', 5, '0', 'ahok.jpg', 'other'),
(52, 'Uperkot Fort', 15, 'Mullwada,junagadh, Gujarat 362001', '8:00 am TO 6:00 pm', 'Every day', 'No close day', 20, '0', 'uperkot-banner.jpg', 'other'),
(53, 'Sardar Patel Museum', 16, 'Shahibaug area, Surat', '9:30 am TO 5:30 pm', 'Tue, Wed, Thu, Fri, Sat, Sun', 'Monday', 20, '10', 'Sardar-Vallabhbhai-Patel-National-Museum.jpg', 'musume'),
(54, 'Sarthana Nature Park', 16, 'City Light Rd, behind science centre, Athwa, Surat, Gujarat 395007', '9:00 am TO 5:00 pm', 'all day', 'no close day', 20, '0', 'z24.jpg', 'park'),
(55, 'Amazia Water Park', 16, 'Canal Road Parvat Patiya, Shubhash Nagar, Surat', '10:00 am TO 6:30 pm', ' Every day', 'No close day', 800, '800', '1.jpg', 'park'),
(57, 'kamati baug museum', 17, 'University Rd, Dak Bunglaw, Sayajiganj, Vadodara, Gujarat 390018', '10:30 AM - 5:00 PM', 'Monday to Friday', 'Sunday & Saturday', 10, '0', 'barodaMuseum (1).jpg', 'musume'),
(58, 'Aatapi Wonderland', 17, 'Nimeta Road, Ajwa Compound, Rayan Talavadi, Vadodara, Gujarat 390019', '10:00 am TO 5:00 pm', 'mon,tuse,wed,thurs,fri,sat,sun', 'not any day', 1350, '1000', 'aatapi-wonderland.jpg', 'other'),
(59, 'Laxmi vilas Palace', 17, 'J N Marg, Moti Baug, Vadodara, Gujarat 390001', '9:30 am TO 5:00 pm', 'tuseday to sunday', 'Monday & Public holidays', 200, '200', 'laxmi-vilas-palace.jpg', 'other'),
(60, 'Champaner Pavagadh Archaeological Park', 17, 'Champaner, Gujarat 389360', '5:00 am TO 6:00 pm', 'All Days', 'No close Day', 30, '0', 'Citadel-sat-kaman-banner(1).jpg', 'park');

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE `signup` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `uimage` varchar(255) NOT NULL,
  `dob` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `dob1` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`id`, `name`, `email`, `contact`, `pass`, `uimage`, `dob`, `address`, `city`, `country`, `dob1`) VALUES
(29, 'rizvana', 'rizvana@gmail.com', '1234567899', '$2y$10$dKadtQt.QFgXoh79s4isvu/A5UEzmhlA7ry0qk24Z8eONNHKULFW2', 'userimages/google2.0.0.jpg', '', '																		near																								', 'jamnagar', 'india', '2003-02-01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`bid`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `contact_table`
--
ALTER TABLE `contact_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`gid`);

--
-- Indexes for table `home`
--
ALTER TABLE `home`
  ADD PRIMARY KEY (`hid`);

--
-- Indexes for table `place`
--
ALTER TABLE `place`
  ADD PRIMARY KEY (`pid`,`cid`);

--
-- Indexes for table `signup`
--
ALTER TABLE `signup`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `bid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=231;

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `contact_table`
--
ALTER TABLE `contact_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `gid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `home`
--
ALTER TABLE `home`
  MODIFY `hid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `place`
--
ALTER TABLE `place`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `signup`
--
ALTER TABLE `signup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
