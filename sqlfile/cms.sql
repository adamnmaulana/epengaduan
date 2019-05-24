-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 24, 2019 at 04:11 AM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `updationDate` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `updationDate`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '12-09-2018 02:11:23 PM');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoryName` varchar(255) NOT NULL,
  `categoryDescription` longtext NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(4, 'Pelayanan Jasa', 'Pengelolaan Pelayanan Jasa yang dimiliki Pelabuhan Perikanan Nusantara', '2018-09-15 05:49:33', ''),
(5, 'Fasilitas', 'Fasilitas yang ada pada Pelabuhan Perikanan Nusantara', '2018-09-15 06:20:04', '');

-- --------------------------------------------------------

--
-- Table structure for table `complaintremark`
--

CREATE TABLE IF NOT EXISTS `complaintremark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `complaintNumber` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `remark` mediumtext NOT NULL,
  `remarkDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `complaintremark`
--

INSERT INTO `complaintremark` (`id`, `complaintNumber`, `status`, `remark`, `remarkDate`) VALUES
(1, 2, 'in process', 'Hi this for demo', '2017-04-01 17:29:19'),
(2, 9, 'in process', 'hiiiiiiiiiiiiiiiiiiii', '2017-04-01 18:37:59'),
(3, 3, 'in process', 'test', '2017-05-02 15:57:43'),
(4, 19, 'closed', 'case solved', '2017-06-11 11:18:33'),
(5, 1, 'closed', 'Udah ya', '2018-09-07 05:30:06'),
(6, 20, 'closed', 'masa sih broo', '2018-09-07 05:30:57'),
(7, 21, 'closed', 'Sudah Selesai diproses', '2018-09-10 10:52:57'),
(8, 23, 'in process', 'sedang diselesaikan', '2018-09-16 12:57:55'),
(9, 23, 'closed', 'sudah selesai', '2018-09-16 12:58:39'),
(10, 25, 'in process', 'sdhdsgh', '2018-09-16 13:09:49'),
(11, 25, 'closed', 'kijkmjbhjkh', '2018-09-16 13:11:50'),
(12, 27, 'in process', 'hahahah', '2018-10-09 05:40:51'),
(13, 28, 'closed', 'aasdasd', '2018-10-09 05:53:13');

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE IF NOT EXISTS `state` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stateName` varchar(255) NOT NULL,
  `stateDescription` tinytext NOT NULL,
  `postingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`id`, `stateName`, `stateDescription`, `postingDate`, `updationDate`) VALUES
(10, 'Low', 'Pengaduan Tingkat Rendah', '2018-09-15 07:01:38', '09-10-2018 09:58:30 AM'),
(11, 'Medium', 'Pengaduan Tingkat Sedang', '2018-09-15 07:03:37', '09-10-2018 09:58:13 AM'),
(12, 'High', 'Pengaduan Tingkat Tinggi, SEGERA SELESAIKAN!', '2018-10-09 04:29:22', '');

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE IF NOT EXISTS `subcategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoryid` int(11) NOT NULL,
  `subcategory` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(3, 3, 'Alat Tangkap', '2018-09-12 10:41:53', ''),
(4, 4, 'Bongkar Muat', '2018-09-15 06:21:10', ''),
(6, 4, 'Perbengkelan', '2018-09-15 06:21:38', ''),
(10, 5, 'Alat Tangkap', '2018-09-15 07:02:48', ''),
(11, 4, 'Kebersihan', '2018-09-15 09:16:16', ''),
(12, 5, 'Fishing Ground', '2018-09-15 09:16:58', ''),
(13, 5, 'Aula/Ruang Rapat', '2018-09-15 09:17:14', ''),
(14, 5, 'Kios', '2018-09-15 09:17:20', ''),
(15, 4, 'Wilayah Parkir', '2018-09-16 13:01:27', '');

-- --------------------------------------------------------

--
-- Table structure for table `tblcomplaints`
--

CREATE TABLE IF NOT EXISTS `tblcomplaints` (
  `complaintNumber` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `subcategory` varchar(255) NOT NULL,
  `complaintType` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `noc` varchar(255) NOT NULL,
  `complaintDetails` mediumtext NOT NULL,
  `complaintFile` varchar(255) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(50) DEFAULT NULL,
  `lastUpdationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`complaintNumber`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=30 ;

--
-- Dumping data for table `tblcomplaints`
--

INSERT INTO `tblcomplaints` (`complaintNumber`, `userId`, `category`, `subcategory`, `complaintType`, `state`, `noc`, `complaintDetails`, `complaintFile`, `regDate`, `status`, `lastUpdationDate`) VALUES
(27, 9, 4, 'Kebersihan', '', 'High', 'Kebersihan WC', 'Tolong Segera dibersihkan', '', '2018-10-09 04:48:39', 'in process', '2018-10-09 05:40:51'),
(28, 9, 4, 'Bongkar Muat', '', 'High', 'Bongkar Ikan', 'Bongkar Kuy', 'Unsera.png', '2018-10-09 05:50:06', 'closed', '2018-10-09 05:53:13'),
(29, 9, 5, 'Aula/Ruang Rapat', '', 'Medium', 'Aula Rubuh', 'ya allah aula rubuh', '', '2018-10-09 07:53:40', NULL, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE IF NOT EXISTS `userlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `userip` binary(16) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `logout` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=78 ;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(47, 9, 'pengguna@jasa', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2018-09-26 07:37:24', '26-09-2018 02:53:48 PM', 1),
(48, 9, 'pengguna@jasa', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2018-09-27 02:24:14', '27-09-2018 07:55:16 AM', 1),
(49, 9, 'pengguna@jasa', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2018-09-28 01:28:43', '', 1),
(50, 9, 'pengguna@jasa', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2018-10-04 12:57:48', '04-10-2018 06:27:58 PM', 1),
(51, 9, 'pengguna@jasa', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2018-10-06 16:41:45', '06-10-2018 10:32:48 PM', 1),
(52, 9, 'pengguna@jasa', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2018-10-07 03:48:10', '07-10-2018 09:30:34 AM', 1),
(53, 9, 'pengguna@jasa', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2018-10-08 10:08:42', '08-10-2018 03:57:29 PM', 1),
(54, 9, 'pengguna@jasa', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2018-10-08 15:36:17', '08-10-2018 09:37:26 PM', 1),
(55, 9, 'pengguna@jasa', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2018-10-08 16:18:55', '08-10-2018 10:02:41 PM', 1),
(56, 9, 'pengguna@jasa', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2018-10-08 17:13:40', '08-10-2018 10:46:13 PM', 1),
(57, 9, 'pengguna@jasa', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2018-10-09 03:24:08', '09-10-2018 08:56:31 AM', 1),
(58, 9, 'pengguna@jasa', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2018-10-09 03:35:11', '09-10-2018 09:19:27 AM', 1),
(59, 9, 'pengguna@jasa', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2018-10-09 03:59:17', '09-10-2018 09:40:17 AM', 1),
(60, 9, 'pengguna@jasa', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2018-10-09 04:12:56', '09-10-2018 09:46:29 AM', 1),
(61, 9, 'pengguna@jasa', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2018-10-09 04:36:05', '', 1),
(62, 9, 'pengguna@jasa', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2018-10-09 04:47:46', '09-10-2018 10:18:55 AM', 1),
(63, 9, 'pengguna@jasa', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2018-10-09 05:22:21', '09-10-2018 10:56:49 AM', 1),
(64, 9, 'pengguna@jasa', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2018-10-09 05:42:26', '09-10-2018 11:12:43 AM', 1),
(65, 9, 'pengguna@jasa', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2018-10-09 05:47:19', '09-10-2018 11:20:14 AM', 1),
(66, 9, 'pengguna@jasa', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2018-10-09 06:57:47', '09-10-2018 12:41:30 PM', 1),
(67, 9, 'pengguna@jasa', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2018-10-09 07:11:53', '09-10-2018 12:58:29 PM', 1),
(68, 9, 'pengguna@jasa', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2018-10-09 07:33:00', '09-10-2018 01:20:08 PM', 1),
(69, 9, 'pengguna@jasa', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2018-10-09 07:52:35', '09-10-2018 01:23:44 PM', 1),
(70, 9, 'pengguna@jasa', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2018-10-09 12:41:52', '09-10-2018 06:13:15 PM', 1),
(71, 9, 'pengguna@jasa', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2018-10-09 12:53:42', '09-10-2018 06:23:46 PM', 1),
(72, 9, 'pengguna@jasa', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2018-10-14 06:41:56', '14-10-2018 12:20:16 PM', 1),
(73, 9, 'pengguna@jasa', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2018-10-14 06:58:52', '14-10-2018 12:29:45 PM', 1),
(74, 9, 'pengguna@jasa', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2018-10-14 08:13:20', '14-10-2018 01:44:09 PM', 1),
(75, 9, 'pengguna@jasa', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2018-11-11 06:06:15', '', 1),
(76, 9, 'pengguna@jasa', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2018-11-16 12:56:39', '16-11-2018 06:26:54 PM', 1),
(77, 9, 'pengguna@jasa', '::1\0\0\0\0\0\0\0\0\0\0\0\0\0', '2018-11-16 13:01:21', '16-11-2018 06:47:43 PM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fullName` varchar(255) DEFAULT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `contactNo` bigint(11) DEFAULT NULL,
  `address` tinytext,
  `State` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `pincode` int(6) DEFAULT NULL,
  `userImage` varchar(255) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `status` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullName`, `userEmail`, `password`, `contactNo`, `address`, `State`, `country`, `pincode`, `userImage`, `regDate`, `updationDate`, `status`) VALUES
(7, 'Asri Suryanto', 'cici@ajah', '3d0d80b5b6bc8478b62da19172ea1777', 8090809, NULL, NULL, NULL, NULL, NULL, '2018-09-06 20:18:01', '0000-00-00 00:00:00', 1),
(8, 'Miftahul Rizky', 'miftah@gmail.com', '2a0c22d3d3f2a236d4c79a37333771d0', 813456, NULL, NULL, NULL, NULL, NULL, '2018-09-07 04:49:31', '0000-00-00 00:00:00', 1),
(9, 'Pengguna Jasa', 'pengguna@jasa', 'e10adc3949ba59abbe56e057f20f883e', 813141516, NULL, NULL, NULL, NULL, NULL, '2018-09-10 05:43:11', '0000-00-00 00:00:00', 1),
(10, 'eva yulianti', 'eva@yul', 'e10adc3949ba59abbe56e057f20f883e', 909090909, NULL, NULL, NULL, NULL, NULL, '2018-09-16 13:04:24', '0000-00-00 00:00:00', 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
