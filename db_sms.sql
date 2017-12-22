-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 22, 2017 at 05:58 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_sms`
--

-- --------------------------------------------------------

--
-- Table structure for table `sisiwa`
--

CREATE TABLE `sisiwa` (
  `NIS` int(20) NOT NULL,
  `Nama` varchar(50) NOT NULL,
  `Jenis Kelamin` varchar(20) NOT NULL,
  `Tempat Lahir` varchar(50) NOT NULL,
  `Tanggal Lahir` date NOT NULL,
  `Poto` varchar(100) NOT NULL,
  `alamat` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sisiwa`
--

INSERT INTO `sisiwa` (`NIS`, `Nama`, `Jenis Kelamin`, `Tempat Lahir`, `Tanggal Lahir`, `Poto`, `alamat`) VALUES
(1515061007, 'Maulid Fernando', 'laki-laki', 'Pesisir Barat', '2017-12-31', '', 'Jl.Kpaten Abdul haq, Rajbasa');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `sisiwa`
--
ALTER TABLE `sisiwa`
  ADD PRIMARY KEY (`NIS`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
