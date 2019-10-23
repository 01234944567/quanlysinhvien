-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 21, 2019 at 03:06 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `qlsv_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_sinhvien`
--

CREATE TABLE `tb_sinhvien` (
  `sv_id` int(11) NOT NULL,
  `sv_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sv_sex` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sv_birthday` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tb_sinhvien`
--

INSERT INTO `tb_sinhvien` (`sv_id`, `sv_name`, `sv_sex`, `sv_birthday`) VALUES
(1, 'Nguyễn Văn Cường', 'Nam', '20-11-201'),
(2, 'Đặng Hoàng Chương', 'Nam', '10-12-2014'),
(3, 'Nguyễn Phú Cường', 'Nam', '30-01-1990'),
(4, 'Nguyễn Thị Thập', 'Nữ', '20-11-2011');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_sinhvien`
--
ALTER TABLE `tb_sinhvien`
  ADD PRIMARY KEY (`sv_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_sinhvien`
--
ALTER TABLE `tb_sinhvien`
  MODIFY `sv_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
