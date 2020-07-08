-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 18, 2020 at 10:12 AM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bayarspp`
--

-- --------------------------------------------------------

--
-- Table structure for table `dtl_pembayaran`
--

CREATE TABLE `dtl_pembayaran` (
  `no_detailPembayaran` int(11) NOT NULL,
  `no_bayar` int(20) DEFAULT NULL,
  `dtl_nominal` int(15) DEFAULT NULL,
  `bulan` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dtl_pembayaran`
--

INSERT INTO `dtl_pembayaran` (`no_detailPembayaran`, `no_bayar`, `dtl_nominal`, `bulan`) VALUES
(1, 2006180001, 200000, 'Januari'),
(2, 2006180001, 200000, 'Februari'),
(3, 2006180001, 200000, 'Maret '),
(4, 2006180002, 200000, 'Januari'),
(5, 2006180002, 200000, 'Februari'),
(6, 2006180002, 200000, 'Maret ');

-- --------------------------------------------------------

--
-- Table structure for table `jurusan`
--

CREATE TABLE `jurusan` (
  `nama` varchar(40) NOT NULL,
  `singkatan` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jurusan`
--

INSERT INTO `jurusan` (`nama`, `singkatan`) VALUES
('Rekayasa Perangkat Lunak', 'RPL'),
('Teknik Audio Video', 'TAV'),
('Teknik Kelistrikan', 'TITL'),
('Teknik Komputer Jaringan', 'TKJ');

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE `pembayaran` (
  `no_bayar` int(20) NOT NULL,
  `nis` varchar(8) DEFAULT NULL,
  `jumlah_bulan` int(3) NOT NULL,
  `tanggal_bayar` date DEFAULT NULL,
  `nominal` int(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pembayaran`
--

INSERT INTO `pembayaran` (`no_bayar`, `nis`, `jumlah_bulan`, `tanggal_bayar`, `nominal`) VALUES
(2006180001, '200026', 3, '2020-06-18', 600000),
(2006180002, '012039', 3, '2020-06-18', 600000);

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `nis` varchar(8) NOT NULL,
  `nama` varchar(35) DEFAULT NULL,
  `tingkat` varchar(3) DEFAULT NULL,
  `jurusan` varchar(50) DEFAULT NULL,
  `kelas` varchar(1) NOT NULL,
  `alamat` text,
  `tempat_lahir` varchar(35) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `jk` enum('L','P') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`nis`, `nama`, `tingkat`, `jurusan`, `kelas`, `alamat`, `tempat_lahir`, `tanggal_lahir`, `jk`) VALUES
('012039', 'Muhammad Fahmi', 'XI', 'TAV', 'C', 'Surakarta', 'Surakarta', '1999-02-12', 'L'),
('200026', 'Riski', 'X', 'RPL', 'A', 'Karanglawas', 'Surakarta', '2000-05-26', 'L');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `username` varchar(30) NOT NULL,
  `password` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `password`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `wali_kelas`
--

CREATE TABLE `wali_kelas` (
  `nip` varchar(11) NOT NULL,
  `nama` varchar(40) NOT NULL,
  `jk` enum('L','P') NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wali_kelas`
--

INSERT INTO `wali_kelas` (`nip`, `nama`, `jk`, `alamat`) VALUES
('1001', 'Test', 'L', 'Test alamat');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dtl_pembayaran`
--
ALTER TABLE `dtl_pembayaran`
  ADD PRIMARY KEY (`no_detailPembayaran`);

--
-- Indexes for table `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`singkatan`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`no_bayar`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`nis`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `wali_kelas`
--
ALTER TABLE `wali_kelas`
  ADD PRIMARY KEY (`nip`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dtl_pembayaran`
--
ALTER TABLE `dtl_pembayaran`
  MODIFY `no_detailPembayaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
