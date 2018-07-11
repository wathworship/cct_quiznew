-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 11, 2018 at 10:04 PM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `testnew_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `church`
--

CREATE TABLE `church` (
  `id_church` int(3) NOT NULL COMMENT 'รหัสคริสตจักร',
  `church_name` varchar(225) NOT NULL COMMENT 'ชื่อคริสตจักร',
  `id_pak` int(3) NOT NULL COMMENT 'รหัสคริสตจักรภาค',
  `church_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'วันที่เพิ่มรายการ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `church`
--

INSERT INTO `church` (`id_church`, `church_name`, `id_pak`, `church_date`) VALUES
(1, 'คริสตจักรจอมทอง', 1, '2018-07-11 14:56:28'),
(2, 'คริสตจักรชัยชนะ', 1, '2018-07-11 15:04:40'),
(3, 'คริสตจักรช่างคำ', 1, '2018-07-11 15:04:58'),
(5, 'คริสตจักรชุมชนเชียงใหม่', 1, '2018-07-11 15:05:14'),
(6, 'คริสตจักรคานาอัน', 2, '2018-07-11 15:06:24'),
(7, 'คริสตจักรธารพระพร(ป่าบงเก่า)', 2, '2018-07-11 15:06:34'),
(8, 'คริสตจักรธาราทิพย์', 2, '2018-07-11 15:06:59'),
(9, 'คริสตจักรไตรสภาวคาม', 2, '2018-07-11 15:09:20'),
(10, 'คริสตจักรเพชรไพฑูรย์', 2, '2018-07-11 15:09:39'),
(11, 'คริสตจักรสายสัมพันธ์ข่วงเปา', 2, '2018-07-11 15:09:51'),
(12, 'คริสตจักรก๊อดป่าบง', 3, '2018-07-11 15:10:16'),
(13, 'คริสตจักรขุนสรวย', 3, '2018-07-11 15:10:32'),
(14, 'คริสตจักรบ้านกลอนใหม่', 3, '2018-07-11 15:10:47'),
(15, 'คริสตจักรบ้านกลาง', 3, '2018-07-11 15:11:43'),
(16, 'คริสตจักรบ้านห้วยราชบุตร', 3, '2018-07-11 15:12:06'),
(17, 'คริสตจักรกรุงเทพ', 4, '2018-07-11 15:12:37'),
(18, 'คริสตจักรกะเหรี่ยงแบ๊บติสท์บ้านโป่ง', 4, '2018-07-11 15:12:49'),
(19, 'คริสตจักรขุนแม่คะตวน', 4, '2018-07-11 15:14:22'),
(20, 'คริสตจักรขุนแม่ลา', 4, '2018-07-11 15:14:33'),
(21, 'คริสตจักรขุนแม่ฮุ', 4, '2018-07-11 15:14:44'),
(22, 'คริสตจักรทับเบิก', 5, '2018-07-11 15:18:03'),
(23, 'คริสตจักรเข็กน้อย', 5, '2018-07-11 15:18:11'),
(24, 'คริสตจักรเขาค้อ', 5, '2018-07-11 15:18:21'),
(25, 'ศาลาธรรมน้ำเพียงดิน', 5, '2018-07-11 15:18:30'),
(26, 'คริสตจักรบ้านน้ำขาว', 5, '2018-07-11 15:18:39'),
(27, 'คริสตจักรชาเลม', 6, '2018-07-11 15:19:37'),
(28, 'คริสตจักรซีนาย', 6, '2018-07-11 15:19:48'),
(29, 'คริสตจักรนอร์เวย์', 6, '2018-07-11 15:19:58'),
(30, 'คริสตจักรนานาชาติ', 6, '2018-07-11 15:20:08'),
(31, 'คริสตจักรดอยเวียง', 6, '2018-07-11 15:20:21');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id_member` int(3) NOT NULL COMMENT 'รหัสข้อมูล',
  `member_code` varchar(7) NOT NULL COMMENT 'รหัสสมาชิก',
  `member_name` varchar(225) NOT NULL COMMENT 'ชื่อ',
  `member_lastname` varchar(225) NOT NULL COMMENT 'นามสกุล',
  `member_tel` varchar(10) DEFAULT NULL COMMENT 'เบอร์โทรศัพท์',
  `id_church` int(3) NOT NULL COMMENT 'ชื่อคริสตจักร',
  `id_user` int(3) NOT NULL COMMENT 'ผู้บันทึกรายการ',
  `member_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'วันที่เพิ่มรายการ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='ข้อมูลสมาชิก';

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id_member`, `member_code`, `member_name`, `member_lastname`, `member_tel`, `id_church`, `id_user`, `member_date`) VALUES
(18, 'MM-0001', 'สุนิกรณ์', 'ถาคำวงค์', '15087000', 1, 1, '2018-07-11 19:44:34'),
(19, 'MM-0002', 'พัธนา', 'ทรายคำ', '150854', 2, 1, '2018-07-11 19:44:58'),
(20, 'MM-0003', 'กาญจนา', 'ระวิมี', '150854', 3, 1, '2018-07-11 19:45:13'),
(21, 'MM-0004', 'ณัชชา', 'ทิพย์สมบัติ', '15087000', 5, 1, '2018-07-11 19:45:33'),
(22, 'MM-0005', 'เสาวนีย์', 'ใจวงค์ศรี', '15087000', 6, 1, '2018-07-11 19:45:49'),
(23, 'MM-0006', 'สุดา', 'ลุงสู้', '15085687', 7, 1, '2018-07-11 19:46:07'),
(24, 'MM-0007', 'ญาณี', 'แซ่่อึง', '15085687', 8, 1, '2018-07-11 19:46:26'),
(25, 'MM-0008', 'ศิวกร', 'ถุงแก้ว', '15085687', 9, 1, '2018-07-11 19:46:46'),
(26, 'MM-0009', 'อารียา', 'คำบัว', '15085687', 10, 1, '2018-07-11 19:47:03'),
(27, 'MM-0010', 'ญาณิศา', 'แซ้โค้ว', '6787868', 11, 1, '2018-07-11 19:47:25'),
(28, 'MM-0011', 'ธนกรณ์', 'ถาวร', '6879', 12, 1, '2018-07-11 19:47:43'),
(29, 'MM-0012', 'สายฝน', 'พิลึก', '6879', 13, 1, '2018-07-11 19:48:35'),
(30, 'MM-0013', 'พรธิดา', 'ตะบิ', '786856', 14, 1, '2018-07-11 19:48:50'),
(31, 'MM-0014', 'เรวัต', 'สีเขียว', '786856', 15, 1, '2018-07-11 19:49:07'),
(32, 'MM-0015', 'สุจิตรา', 'ชาติภูมิตระกุล', '7868564345', 16, 1, '2018-07-11 19:49:24'),
(33, 'MM-0016', 'สกุลรัตน์', 'รุ่งเรืองครคีรี', '2324', 17, 1, '2018-07-11 19:49:39'),
(34, 'MM-0017', 'ปิยพร', 'แจ่มจรัสไพบูลย์', '2324', 18, 1, '2018-07-11 19:49:55'),
(35, 'MM-0018', 'น้ำใส', 'แสงทอง', '2324567', 19, 1, '2018-07-11 19:50:11'),
(36, 'MM-0019', 'เปรมกิตติ', 'ชีพนิรันดร์', '232456776', 20, 1, '2018-07-11 19:50:29'),
(37, 'MM-0020', 'นภัสกรณ์', 'วีระทิพย์', '232456776', 21, 1, '2018-07-11 19:50:43'),
(38, 'MM-0021', 'ชินรัตน์', 'สอนรอด', '2324589', 22, 1, '2018-07-11 19:50:59'),
(39, 'MM-0022', 'ณัฐภัทร', 'ศรีวิชัย', '23342', 23, 1, '2018-07-11 19:51:14'),
(40, 'MM-0023', 'ดุลภาภรณ์', 'อินทญาติ', '23342', 24, 1, '2018-07-11 19:51:33'),
(41, 'MM-0024', 'กมน', 'ลุงหน่อ', '23342', 25, 1, '2018-07-11 19:51:53'),
(42, 'MM-0025', 'พัชรินทร์', 'ตาแก้ว', '23342789', 26, 1, '2018-07-11 19:52:13'),
(43, 'MM-0026', 'นุศรา', 'อินต๊ะวงค์', '23342789', 27, 1, '2018-07-11 19:52:27'),
(44, 'MM-0027', 'เอกสิทธิ์', 'รื่นยศ', '2334278967', 28, 1, '2018-07-11 19:52:41'),
(45, 'MM-0028', 'จักริน', 'สุยะ', '789754', 29, 1, '2018-07-11 19:52:55'),
(46, 'MM-0029', 'กรณินทร์', 'พินิทธะ', '234123', 30, 1, '2018-07-11 19:53:12'),
(47, 'MM-0030', 'ธนวัฒน์', 'หนานซอ', '234123', 31, 1, '2018-07-11 19:53:28'),
(48, 'MM-0031', 'รณชัย', 'บำรุงไทย', '234123', 3, 1, '2018-07-11 19:54:00'),
(49, 'MM-0032', 'นุสรา ', 'โนจา', '', 14, 1, '2018-07-11 19:54:33'),
(50, 'MM-0033', 'มัลลิกา', 'โนจา', '', 16, 1, '2018-07-11 19:54:46'),
(51, 'MM-0034', 'ธิดา', 'งามขำ', '', 18, 1, '2018-07-11 19:54:58'),
(52, 'MM-0035', 'กนกพร', 'เลิศสุขสมสกุล', '', 28, 1, '2018-07-11 19:55:11'),
(53, 'MM-0036', 'เลิศสุขสมสกุล', 'สมหมาย', '', 9, 1, '2018-07-11 19:55:51'),
(54, 'MM-0037', 'วรรณิดา', 'สมหมาย', '', 11, 1, '2018-07-11 19:56:08'),
(55, 'MM-0038', 'ธนพร', 'ศศิปการสกุล', '', 13, 1, '2018-07-11 19:56:25'),
(56, 'MM-0039', 'ฐิติรัตน์', 'สมจิตร์', '', 16, 1, '2018-07-11 19:56:39'),
(57, 'MM-0040', 'บุญรักษา', 'เดชวงศ์ยา ', '', 26, 1, '2018-07-11 19:56:55'),
(58, 'MM-0041', 'ขวัญฤทัย', 'รุ่งอรุณ', '897536', 15, 1, '2018-07-11 19:57:20'),
(59, 'MM-0042', 'อภิญญา', 'ราชคีรี', '897536', 8, 1, '2018-07-11 19:57:38'),
(60, 'MM-0043', 'พลชัย', 'ดอยจรัสรุ่ง', '897536', 7, 1, '2018-07-11 19:57:53'),
(61, 'MM-0044', 'ตนุภัทร', 'สุพรรณ์', '456657', 6, 1, '2018-07-11 19:58:16'),
(62, 'MM-0045', 'สิรวิชญ์', 'ล้อมไพบูลย์', '456657', 17, 1, '2018-07-11 19:58:36');

-- --------------------------------------------------------

--
-- Table structure for table `pak`
--

CREATE TABLE `pak` (
  `id_pak` int(3) NOT NULL COMMENT 'รหัสคริสตจักรภาค',
  `pak_name` varchar(225) NOT NULL COMMENT 'ชื่อคริสตจักรภาค',
  `pak_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'วันที่เพิ่มรายการ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pak`
--

INSERT INTO `pak` (`id_pak`, `pak_name`, `pak_date`) VALUES
(1, '1', '2018-07-11 12:55:10'),
(2, '14', '2018-07-11 12:55:10'),
(3, '18', '2018-07-11 12:55:10'),
(4, '19', '2018-07-11 12:55:10'),
(5, '20', '2018-07-11 12:55:10'),
(6, '6', '2018-07-11 13:11:16');

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `user_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `public_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gravatar_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gravatar_id` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bio` text COLLATE utf8_unicode_ci,
  `timezone` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`user_id`, `name`, `public_email`, `gravatar_email`, `gravatar_id`, `location`, `website`, `bio`, `timezone`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `confirmed_at` int(11) DEFAULT NULL,
  `unconfirmed_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `blocked_at` int(11) DEFAULT NULL,
  `registration_ip` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `flags` int(11) NOT NULL DEFAULT '0',
  `last_login_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `password_hash`, `auth_key`, `confirmed_at`, `unconfirmed_email`, `blocked_at`, `registration_ip`, `created_at`, `updated_at`, `flags`, `last_login_at`) VALUES
(1, 'admin', 'wath@cct.com', '$2y$12$U62j7f4bCPfxDeedRS7zvuohB4W9TElNVOa/Yo3XNS8/UHcioXMk6', 'EYORmEDJchZFNXnSzCdOVKML4EULFnmj', NULL, NULL, NULL, '::1', 1531302128, 1531302128, 0, 1531335958);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `church`
--
ALTER TABLE `church`
  ADD PRIMARY KEY (`id_church`),
  ADD KEY `id_pak` (`id_pak`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id_member`),
  ADD KEY `id_church` (`id_church`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `pak`
--
ALTER TABLE `pak`
  ADD PRIMARY KEY (`id_pak`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_unique_username` (`username`),
  ADD UNIQUE KEY `user_unique_email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `church`
--
ALTER TABLE `church`
  MODIFY `id_church` int(3) NOT NULL AUTO_INCREMENT COMMENT 'รหัสคริสตจักร', AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `id_member` int(3) NOT NULL AUTO_INCREMENT COMMENT 'รหัสข้อมูล', AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `pak`
--
ALTER TABLE `pak`
  MODIFY `id_pak` int(3) NOT NULL AUTO_INCREMENT COMMENT 'รหัสคริสตจักรภาค', AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `church`
--
ALTER TABLE `church`
  ADD CONSTRAINT `church_ibfk_1` FOREIGN KEY (`id_pak`) REFERENCES `pak` (`id_pak`) ON UPDATE CASCADE;

--
-- Constraints for table `profile`
--
ALTER TABLE `profile`
  ADD CONSTRAINT `fk_user_profile` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
