-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 14, 2024 at 09:33 AM
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
-- Database: `bbsdb`
--
CREATE DATABASE IF NOT EXISTS `bbsdb` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `bbsdb`;

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(11) NOT NULL,
  `AdminName` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `AdminuserName` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp(),
  `UserType` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `AdminuserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`, `UserType`) VALUES
(2, 'Admin', 'admin', 8956565656, 'admin@gmail.com', '21232f297a57a5a743894a0e4a801fc3', '2024-08-31 18:30:00', 1),
(3, 'เดชา ขำแก้ว', 'user1', 1234567890, 'decha.k@gmail.com', '24c9e15e52afc47c225b757e7bee1f9d', '2024-09-10 18:30:00', 0),
(7, 'จิตสุภา ปราชเปรื่อง', 'user2', 7894561236, 'meenu@gmail.com', '7e58d63b60197ceb55a1c487989a3720', '2024-09-25 05:57:24', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblboat`
--

CREATE TABLE `tblboat` (
  `ID` int(5) NOT NULL,
  `BoatName` varchar(250) DEFAULT NULL,
  `Image` varchar(250) DEFAULT NULL,
  `Size` varchar(100) DEFAULT NULL,
  `Capacity` varchar(100) DEFAULT NULL,
  `Source` varchar(250) DEFAULT NULL,
  `Destination` varchar(250) DEFAULT NULL,
  `Route` varchar(250) DEFAULT NULL,
  `Price` decimal(10,0) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `AddedBy` int(5) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblboat`
--

INSERT INTO `tblboat` (`ID`, `BoatName`, `Image`, `Size`, `Capacity`, `Source`, `Destination`, `Route`, `Price`, `Description`, `AddedBy`, `CreationDate`) VALUES
(2, 'เรือเมอริเดียน 8', '5584ddf96debf6a952e37cea19d076081734157807webp', 'Small', '10-15', 'ท่าเรือศูนย์การค้าไอคอนสยาม 8', 'ท่าเรือเอเชียทีค 8', 'ท่าเรือศูนย์การค้าไอคอนสยาม-ท่าเรือเอเชียทีค 8', 650, '***พิเศษเฉพาะเดินทาง ถึง ตุลาคม 2568 ***\r\n- ฟรี!!! ซอฟดริ้ง ตลอดการเดินทาง (บริการตนเอง)\r\n\r\nท่าเรือ : ศูนย์การค้าไอคอนสยาม ล่องเวลา : 16.45 - 18.45 น.\r\nเมนูอาหาร : บุฟเฟ่ต์อินเตอร์ + ซีฟู้ด\r\nเมนูพิเศษ : ปลาแซลมอนซาซิมิ กุ้งแม่น้ำเผา หอยชิลีอบเนยกระเทียม\r\nเครื่องดื่ม : ชา น้ำเปล่า กาแฟ\r\nการแสดง : ดนตรีสด', 2, '2024-09-25 06:34:28'),
(3, 'เรือไวท์ออร์คิด', '26bfbf1fb11a6a2b31928abc063dc0181727416632.jpg', 'Large', '20-25', 'เอเชียทีค', 'ท่าเรือ : ศูนย์การค้าไอคอนสยาม', 'เอเชียทีค & ท่าเรือ : ศูนย์การค้าไอคอนสยาม', 699, 'ท่าเรือ : เอเชียทีค & ท่าเรือ : ศูนย์การค้าไอคอนสยาม\r\nล่องเวลา : 17.00 - 18.45 น.\r\nเมนูอาหาร : บุฟเฟ่ต์อินเตอร์ + ซีฟู้ด\r\nเมนูพิเศษ : กุ้งแม่น้ำเผา หอยแมลงภู่เผา\r\nเครื่องดื่ม : ชา น้ำเปล่า กาแฟ\r\nการแสดง : ดนตรีสด', 2, '2024-09-25 06:35:33'),
(4, 'wiki boat', '7ac5bd980dbbc68164693cad0e43fbfd1727416688.jpg', 'Large', '1-15', 'Varanasi', 'Allahabad', 'abc, dcf, ghj, klp', 110, 'Test', 2, '2024-09-25 06:36:33'),
(5, 'เรืออลังกา ครูซ', '983e18b7880ce3f7f39bed9aab911b341727416755.jpg', 'Large', '1-20', 'ท่าเรือ : ศูนย์การค้าไอคอนสยาม', 'ท่าเรือ : ศูนย์การค้าไอคอนสยาม', 'ท่าเรือ : ศูนย์การค้าไอคอนสยาม', 499, 'ท่าเรือ : ศูนย์การค้าไอคอนสยาม ล่องเวลา : 17.00 - 18.45 น.\r\nเมนูอาหาร : บุฟเฟ่ต์อินเตอร์ + ซีฟู้ด\r\nเมนูพิเศษ : กุ้งแม่น้ำออนไอซ์ หอยแมลงภู่นิวซีแลนด์ออนไอซ์\r\nเครื่องดื่ม : ชา น้ำเปล่า กาแฟ\r\nการแสดง : ดนตรีสด\r\nให้บริการเฉพาะ : วันศุกร์ วันเสาร์ วันอาทิตย์', 2, '2024-09-26 04:55:19'),
(6, 'เรือคับ', '660abd2c2a99e6da52e3dd00b6ae07b11727416787.jpg', 'Small', '1-6', 'Assi Ghat', 'Ramanagar', 'gghgth,hgfgh', 200, '<br />\r\n<b>Warning</b>:  Undefined array key \"Description\" in <b>C:xampphtdocs2024bsadminedit-boat.php</b> on line <b>156</b><br />\r\n', 2, '2024-09-26 05:34:22'),
(7, 'เรือyamaha', '7ac5bd980dbbc68164693cad0e43fbfd1727330194.jpg', 'Large', '1-12', 'ท่าเรือ : เทอร์มินอล 21 พระราม 3', 'ท่าเรือ : เทอร์มินอล 21 พระราม 3', 'ท่าเรือ : เทอร์มินอล 21 พระราม 3', 359, '*** พิเศษเฉพาะเดินทางเดือนพฤศจิกายน - ธันวาคม 2567 ***\r\n- ฟรี!!! เบียร์สด ตลอดการเดินทาง (บุฟเฟ่ต์เบียร์ บริการตนเอง)', 2, '2024-09-26 05:35:12'),
(8, 'Bazare rap ', 'd41d8cd98f00b204e9800998ecf8427e1727332206', 'Medium', '3-10', 'ท่าเรือ : เอเชียทีค', 'ท่าเรือ : ศูนย์การค้าไอคอนสยาม', 'ท่าเรือ : เอเชียทีค', 569, '*** พิเศษเฉพาะเดินทางเดือนพฤศจิกายน 2567 ***\r\n- ฟรี!!! เบียร์สด ตลอดการเดินทาง (บุฟเฟ่ต์เบียร์ บริการตนเอง)\r\n', 2, '2024-09-26 06:30:06'),
(9, 'gaga modition', 'd41d8cd98f00b204e9800998ecf8427e1727415693', 'Large', '1-20', 'Assi Ghat', 'Dashashwamedh Ghat', 'Janki Ghat, Shivala Ghat, Harischandra Ghat, Manikarnika Ghat', 200, '<br />\r\n<b>Warning</b>:  Undefined array key \"Description\" in <b>C:xampphtdocs2024bsadminedit-boat.php</b> on line <b>156</b><br />\r\n', 2, '2024-09-27 05:41:33'),
(10, 'เรือคับ', 'd41d8cd98f00b204e9800998ecf8427e1727759143', 'Medium', '1-4', 'Hari Nagar', 'Vaishali', 'gghgth,hgfgh,', 100, '*** พิเศษเฉพาะเดินทางเดือนพฤศจิกายน 2567 ***\r\n- ฟรี!!! เบียร์สด ตลอดการเดินทาง (บุฟเฟ่ต์เบียร์ บริการตนเอง)', 2, '2024-10-01 05:05:43'),
(11, 'เรือคับ', 'd41d8cd98f00b204e9800998ecf8427e1734164219', 'Small', '9-12', 'แม่น้ำเจ้าพระยา', 'Ramnagar 999', 'แม่น้ำเจ้าพระยา--แม่น้ำป่าสัก', 550, 'โปรโมชั้น พิเศษ ต่อท่าน', 2, '2024-12-14 08:16:59');

-- --------------------------------------------------------

--
-- Table structure for table `tblbookings`
--

CREATE TABLE `tblbookings` (
  `ID` int(5) NOT NULL,
  `BoatID` int(10) DEFAULT NULL,
  `BookingNumber` bigint(12) DEFAULT NULL,
  `FullName` varchar(250) DEFAULT NULL,
  `EmailId` varchar(250) DEFAULT NULL,
  `PhoneNumber` bigint(12) DEFAULT NULL,
  `BookingDateFrom` varchar(250) DEFAULT NULL,
  `BookingDateTo` varchar(250) DEFAULT NULL,
  `BookingTime` varchar(100) DEFAULT NULL,
  `NumnerofPeople` int(5) DEFAULT NULL,
  `Notes` mediumtext DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `AdminRemark` varchar(250) DEFAULT NULL,
  `BookingStatus` varchar(250) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblbookings`
--

INSERT INTO `tblbookings` (`ID`, `BoatID`, `BookingNumber`, `FullName`, `EmailId`, `PhoneNumber`, `BookingDateFrom`, `BookingDateTo`, `BookingTime`, `NumnerofPeople`, `Notes`, `postingDate`, `AdminRemark`, `BookingStatus`, `UpdationDate`) VALUES
(1, 4, 2147483647, 'Anuj kumar', 'anujk@gmail.com', 1233211230, '2024-10-15', '2024-10-17', '10:00', 5, 'NA', '2024-10-08 17:14:58', 'NA', 'Accepted', '2024-10-10 17:46:17'),
(2, 2, 2147483647, 'Garima', 'garima123@gmail.com', 1231231230, '2024-11-01', '2024-11-05', '11:30', 4, 'NA', '2024-10-11 14:57:50', NULL, NULL, '2024-10-11 14:57:50'),
(4, 6, 5811679355, 'John ', 'john12@gmail.com', 4566541230, '2024-11-08', '2024-11-09', '10:30', 4, 'NA', '2024-10-14 15:11:02', 'Booking Appoved', 'Accepted', '2024-10-14 15:11:59');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblboat`
--
ALTER TABLE `tblboat`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblbookings`
--
ALTER TABLE `tblbookings`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `bid` (`BoatID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblboat`
--
ALTER TABLE `tblboat`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tblbookings`
--
ALTER TABLE `tblbookings`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tblbookings`
--
ALTER TABLE `tblbookings`
  ADD CONSTRAINT `bid` FOREIGN KEY (`BoatID`) REFERENCES `tblboat` (`ID`);
--
-- Database: `dbproject267`
--
CREATE DATABASE IF NOT EXISTS `dbproject267` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `dbproject267`;

-- --------------------------------------------------------

--
-- Table structure for table `tbbook`
--

CREATE TABLE `tbbook` (
  `bookid` int(11) NOT NULL,
  `bookname` varchar(255) NOT NULL,
  `author` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `booktypeid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbbook`
--

INSERT INTO `tbbook` (`bookid`, `bookname`, `author`, `price`, `stock`, `booktypeid`) VALUES
(1, 'TGAT2 & TGAT3 การคิดอย่างมีเหตุผล', 'ผู้เขียน: ณภัทร รอดเหตุภัย (อ.ขลุ่ย)', 266, 20, 1),
(2, 'แนวข้อสอบ TGAT ภาษาอังกฤษ', 'ผู้เขียน: รศ.ดร.ศุภวัฒน์ พุกเจริญ', 225, 50, 1),
(3, 'จิตวิทยาสายดาร์ก\r\n', 'ผู้เขียน: Dr.Hiro', 213, 50, 2),
(4, 'โฟร์ทวิง FOURTH WING (พิมพ์ครั้งที่ 3)', 'ผู้เขียน: รีเบกกา ยาร์รอส (รีเบ็คก้า ยาร์รอส, Rebecca Yarros)', 506, 15, 2),
(5, 'อ่านชะตาวันสิ้นโลก เล่ม 2 (Mg)', 'ผู้เขียน: sing N song', 446, 16, 3),
(6, 'GACHIAKUTA เล่ม 3 (ฉบับปรับปรุง)(Mg)', 'ผู้เขียน: เค อุรานะ', 158, 30, 3),
(7, 'ประกาศให้โลกรู้ว่าเจ้าสาวของผมเป็นอัศวินหญิงจากต่างโลก ', 'ผู้เขียน: โนริ โกโร่', 135, 40, 3),
(8, 'กลับบ้านไปเถอะครับ! คุณอาคุตสึ \r\n', 'ผู้เขียน: ไทจิ นากาโอกะ', 175, 60, 4),
(9, 'GACHIAKUTA เล่ม 3 (ฉบับปรับปรุง)(Mg)', 'ผู้เขียน: เค อุรานะ', 158, 30, 4),
(18, 'วา', 'วา', 500, 20, 9);

-- --------------------------------------------------------

--
-- Table structure for table `tbbooktype`
--

CREATE TABLE `tbbooktype` (
  `booktypeid` int(11) NOT NULL,
  `booktypename` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbbooktype`
--

INSERT INTO `tbbooktype` (`booktypeid`, `booktypename`) VALUES
(1, 'นิยาย'),
(2, 'การ์ตูน'),
(3, 'ความรัก'),
(4, 'เล่าเรื่อง'),
(5, 'เศร้า'),
(7, 'สารคดี'),
(8, 'นาวา'),
(9, 'นาวา');

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
(1, '901', 'มีโต๊ะ เตียง ที่นอน ตู้เย็น', 1),
(2, '902', 'มีโต๊ะ เตียง ที่นอน ตู้เสื้อผ้า และติดทะเล', 3),
(3, '905', 'ติดน้ำตก วิวดี', 3),
(4, '906', 'วิวทะเลสวย พักได้ 2-3 คน', 2),
(5, '909', 'วิวทะเลสวย พักได้ 2-3 คน', 2),
(6, '910', 'วิวทะเลสวย พักได้ 2-3 คน', 2),
(9, 'Tawan', 'วิวดี สวยงาม', 1),
(11, '999', 'นอนดีผีไม่ดุ555', 2),
(12, '989', 'นอนดีผีไม่ดุ6666', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbroomtype`
--

CREATE TABLE `tbroomtype` (
  `roomtypeid` int(11) NOT NULL,
  `roomtypename` varchar(50) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbroomtype`
--

INSERT INTO `tbroomtype` (`roomtypeid`, `roomtypename`, `price`) VALUES
(1, 'สแตนดาร์ด', 1200),
(2, 'ซูฟีเรีย', 2200),
(3, 'ดีลักซ์', 4000);

-- --------------------------------------------------------

--
-- Table structure for table `tbstudent`
--

CREATE TABLE `tbstudent` (
  `stdid` int(11) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbstudent`
--

INSERT INTO `tbstudent` (`stdid`, `firstname`, `lastname`, `email`, `address`) VALUES
(1, 'สมาน', 'สาเลบอง', '', '8/7 หมู่.25 ต.บ้านสวย อ.บ้านไร่ จ.อยุธยา 13210 '),
(2, 'สมหมาย', 'ทงทวยมี', '', '8 หมู่.25 ต.บ้านกด อ.นน จ.อยุธยา 13210 '),
(3, 'ณง', 'คงคง', '', '7 หมู่.25 ต.ฮงกวง อ.ไร่นาน จ.ชัยนาท 32100'),
(4, 'สมชาย', 'ชายแท้', '', '12 หมู่.55 ต.ดอน อ.ดอนเมือง จ.พญา 13210 '),
(5, 'นานง', 'นานวยอวย', '', '1 หมู่.25 ต.นานา อ.จานา จ.น่าน 32450'),
(10, 'Natdanai', 'Kleepmalai', 'tawan5066@gmail.com', '32 ม.1 ต.สามเรือน อ.บางปะอิน จ.อยุธยา 13210');

-- --------------------------------------------------------

--
-- Table structure for table `tbuser`
--

CREATE TABLE `tbuser` (
  `id` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbuser`
--

INSERT INTO `tbuser` (`id`, `firstname`, `lastname`, `username`, `password`) VALUES
(1, 'Natdanai', 'Kleepmalai', 'Tawan', '202cb962ac59075b964b07152d234b70'),
(2, 'Koon', 'Boommojo', 'Joo', '202cb962ac59075b964b07152d234b70'),
(5, 'Sim', 'Moo', 'Sim9', 'e10adc3949ba59abbe56e057f20f883e'),
(6, 'S9', 'SS', 'S9', 'fa246d0262c3925617b0c72bb20eeb1d'),
(7, 'Non', 'Kleepmali', 'ta', 'e10adc3949ba59abbe56e057f20f883e'),
(8, 'ผักบุ้ง', 'เขียวจัง', 'A3', '68053af2923e00204c3ca7c6a3150cf7');

-- --------------------------------------------------------

--
-- Table structure for table `usertable`
--

CREATE TABLE `usertable` (
  `id` int(10) NOT NULL,
  `fullName` varchar(255) NOT NULL,
  `emailAddress` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `country` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `usertable`
--

INSERT INTO `usertable` (`id`, `fullName`, `emailAddress`, `city`, `country`, `created_at`) VALUES
(3, 'นายณัฐดนัย กลีบมาลัย', 'tawan5066@gmail.com', 'อยุธยา', 'Thai', '2024-12-06 15:57:14'),
(4, 'ตะวัน ดีดี', '45asdasd@gmail.com', 'อยุธยา', 'Thai', '2024-12-06 15:57:34'),
(5, '933', 'นอนดีผีไม่ดุ', '', '2000', '2024-12-06 16:37:47'),
(6, '999', 'นอนดีผีไม่ดุ555', '', '1', '2024-12-06 16:49:47'),
(7, '999', 'นอนดีผีไม่ดุ555', '', '1', '2024-12-06 16:50:08'),
(8, 'ตะวัน ดีดี', '46666sdasd@gmail.com', 'อยุธยา', 'Thai', '2024-12-06 17:04:48');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbbook`
--
ALTER TABLE `tbbook`
  ADD PRIMARY KEY (`bookid`);

--
-- Indexes for table `tbbooktype`
--
ALTER TABLE `tbbooktype`
  ADD PRIMARY KEY (`booktypeid`);

--
-- Indexes for table `tbroom`
--
ALTER TABLE `tbroom`
  ADD PRIMARY KEY (`roomid`);

--
-- Indexes for table `tbroomtype`
--
ALTER TABLE `tbroomtype`
  ADD PRIMARY KEY (`roomtypeid`);

--
-- Indexes for table `tbstudent`
--
ALTER TABLE `tbstudent`
  ADD PRIMARY KEY (`stdid`);

--
-- Indexes for table `tbuser`
--
ALTER TABLE `tbuser`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usertable`
--
ALTER TABLE `usertable`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbbook`
--
ALTER TABLE `tbbook`
  MODIFY `bookid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tbbooktype`
--
ALTER TABLE `tbbooktype`
  MODIFY `booktypeid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbroom`
--
ALTER TABLE `tbroom`
  MODIFY `roomid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbroomtype`
--
ALTER TABLE `tbroomtype`
  MODIFY `roomtypeid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbstudent`
--
ALTER TABLE `tbstudent`
  MODIFY `stdid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbuser`
--
ALTER TABLE `tbuser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `usertable`
--
ALTER TABLE `usertable`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"bbsdb\",\"table\":\"tblboat\"},{\"db\":\"bbsdb\",\"table\":\"tblbookings\"},{\"db\":\"dbproject267\",\"table\":\"usertable\"},{\"db\":\"dbproject267\",\"table\":\"tbuser\"},{\"db\":\"dbproject267\",\"table\":\"tbstudent\"},{\"db\":\"dbproject267\",\"table\":\"tb\"},{\"db\":\"dbproject267\",\"table\":\"tbbook\"},{\"db\":\"dbproject267\",\"table\":\"tbbooktype\"},{\"db\":\"dbproject267\",\"table\":\"tbroom\"},{\"db\":\"dbproject267\",\"table\":\"tbroomtype\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2024-12-14 08:32:59', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
