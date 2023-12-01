-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 01, 2023 at 12:38 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_elektro`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cek_status`
--

CREATE TABLE `tbl_cek_status` (
  `id_status` int(10) NOT NULL,
  `id_pelanggan` int(10) NOT NULL,
  `id_perangkat` int(10) NOT NULL,
  `keterangan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_nota`
--

CREATE TABLE `tbl_nota` (
  `id_nota` int(10) NOT NULL,
  `id_pelanggan` int(10) NOT NULL,
  `id_perangkat` int(10) NOT NULL,
  `id_sparepart` int(10) NOT NULL,
  `id_teknisi` int(10) NOT NULL,
  `id_harga` int(10) NOT NULL,
  `bayar` varchar(100) NOT NULL,
  `kembali` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pelanggan`
--

CREATE TABLE `tbl_pelanggan` (
  `id_pelanggan` int(10) NOT NULL,
  `nm_pelanggan` varchar(50) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `telepon` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_pelanggan`
--

INSERT INTO `tbl_pelanggan` (`id_pelanggan`, `nm_pelanggan`, `alamat`, `telepon`) VALUES
(1, 'utuh', 'jln.handil', '98129729122'),
(2, 'jumri', 'jln.bakti', '09712638123');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_perangkat`
--

CREATE TABLE `tbl_perangkat` (
  `id_perangkat` int(10) NOT NULL,
  `nm_perangkat` varchar(50) NOT NULL,
  `tipe` varchar(20) NOT NULL,
  `keluhan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_perangkat`
--

INSERT INTO `tbl_perangkat` (`id_perangkat`, `nm_perangkat`, `tipe`, `keluhan`) VALUES
(1, 'xiaomi ', 'a7', 'mati total'),
(2, 'samsung', 'note 3 s', 'tidak bisa di cas'),
(3, 'oppo', 'a74', 'tombol rusak');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sparepart`
--

CREATE TABLE `tbl_sparepart` (
  `id_sparepart` int(10) NOT NULL,
  `nm_sparepart` varchar(30) NOT NULL,
  `hrg_sparepart` int(20) NOT NULL,
  `stok` int(10) NOT NULL,
  `id_supplier` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_supplier`
--

CREATE TABLE `tbl_supplier` (
  `id_supplier` int(10) NOT NULL,
  `nm_supplier` varchar(50) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `telepon` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_supplier`
--

INSERT INTO `tbl_supplier` (`id_supplier`, `nm_supplier`, `alamat`, `telepon`) VALUES
(1, 'agus', 'jln.pahlawan', '08772114123'),
(2, 'yuli', 'jln.mekarsari', '08654722318791');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_teknisi`
--

CREATE TABLE `tbl_teknisi` (
  `id_teknisi` int(10) NOT NULL,
  `nm_teknisi` varchar(50) NOT NULL,
  `telepon` varchar(50) NOT NULL,
  `biaya_perbaikan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_total_hgr`
--

CREATE TABLE `tbl_total_hgr` (
  `id_harga` int(10) NOT NULL,
  `id_teknisi` int(10) NOT NULL,
  `id_sparepart` int(10) NOT NULL,
  `total_harga` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id_user` int(10) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `level` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `username`, `password`, `level`) VALUES
(1, 'admin', 'admin', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_cek_status`
--
ALTER TABLE `tbl_cek_status`
  ADD PRIMARY KEY (`id_status`);

--
-- Indexes for table `tbl_nota`
--
ALTER TABLE `tbl_nota`
  ADD PRIMARY KEY (`id_nota`);

--
-- Indexes for table `tbl_pelanggan`
--
ALTER TABLE `tbl_pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indexes for table `tbl_perangkat`
--
ALTER TABLE `tbl_perangkat`
  ADD PRIMARY KEY (`id_perangkat`);

--
-- Indexes for table `tbl_sparepart`
--
ALTER TABLE `tbl_sparepart`
  ADD PRIMARY KEY (`id_sparepart`);

--
-- Indexes for table `tbl_supplier`
--
ALTER TABLE `tbl_supplier`
  ADD PRIMARY KEY (`id_supplier`);

--
-- Indexes for table `tbl_teknisi`
--
ALTER TABLE `tbl_teknisi`
  ADD PRIMARY KEY (`id_teknisi`);

--
-- Indexes for table `tbl_total_hgr`
--
ALTER TABLE `tbl_total_hgr`
  ADD PRIMARY KEY (`id_harga`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_cek_status`
--
ALTER TABLE `tbl_cek_status`
  MODIFY `id_status` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_nota`
--
ALTER TABLE `tbl_nota`
  MODIFY `id_nota` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_pelanggan`
--
ALTER TABLE `tbl_pelanggan`
  MODIFY `id_pelanggan` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_perangkat`
--
ALTER TABLE `tbl_perangkat`
  MODIFY `id_perangkat` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_sparepart`
--
ALTER TABLE `tbl_sparepart`
  MODIFY `id_sparepart` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_supplier`
--
ALTER TABLE `tbl_supplier`
  MODIFY `id_supplier` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_teknisi`
--
ALTER TABLE `tbl_teknisi`
  MODIFY `id_teknisi` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_total_hgr`
--
ALTER TABLE `tbl_total_hgr`
  MODIFY `id_harga` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id_user` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
