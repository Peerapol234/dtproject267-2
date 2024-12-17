-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 13, 2024 at 10:41 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbproject267`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbroom`
--

CREATE TABLE `tbroom` (
  `roomid` int(11) NOT NULL,
  `roomname` varchar(50) NOT NULL,
  `detail` text NOT NULL,
  `roomtypeid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbroom`
--

INSERT INTO `tbroom` (`roomid`, `roomname`, `detail`, `roomtypeid`) VALUES
(1, '203', 'มีโต๊ะเครื่องแป้ง มีเตียงนอน มีตู้เสื้อผ้า', 1),
(2, '204', 'มีโต๊ะเครื่องแป้ง มีเตียงนอน มีตู้เสื้อผ้า ห้องติดระเบียง', 2),
(3, '205', 'มีโต๊ะเครื่องแป้ง มีเตียงนอน มีตู้เสื้อผ้า มีห้องครัว', 3),
(4, '206', 'มีหน้าต่าง 4 ทิศ มีโต๊ะเครื่องแป้ง มีเตียงนอน มีตู้เสื้อผ้า', 1),
(5, '207', 'มีเครื่องดูดฝุ่น ห้องน้ำในตัว มีโต๊ะเครื่องแป้ง มีเตียงนอน มีตู้เสื้อผ้า', 2),
(6, '208', 'มีแอร์ มีห้องน้ำในตัวมีโต๊ะเครื่องแป้ง มีเตียงนอน มีตู้เสื้อผ้า', 3),
(7, '206', 'เตียง', 1),
(8, '204', 'ตู้', 2),
(10, '205', 'เตียง', 2),
(13, '208', 'สวย', 1),
(14, '209', 'สระน้ำ', 3),
(15, '210', 'กว้าง', 2),
(16, '211', 'ว้าว', 1),
(17, '215', 'ใหญ่', 2),
(18, 'df', 'df', 2),
(19, '215', 'ใหญ่', 3),
(20, '246', 'ยาว', 3),
(21, '215', 'ใหญ่', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbroom`
--
ALTER TABLE `tbroom`
  ADD PRIMARY KEY (`roomid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbroom`
--
ALTER TABLE `tbroom`
  MODIFY `roomid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
