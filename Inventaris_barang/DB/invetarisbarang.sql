-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 30, 2023 at 02:09 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `invetarisbarang`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `idbarang` int(11) NOT NULL,
  `idsatuan` int(11) NOT NULL,
  `idsup` int(11) NOT NULL,
  `namabarang` varchar(25) NOT NULL,
  `total` int(11) NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`idbarang`, `idsatuan`, `idsup`, `namabarang`, `total`, `harga`) VALUES
(15, 12, 13, 'Pensil', 31, 1000);

-- --------------------------------------------------------

--
-- Table structure for table `bar_keluar`
--

CREATE TABLE `bar_keluar` (
  `idkeluar` int(11) NOT NULL,
  `idbarang` int(11) NOT NULL,
  `idsatuan` int(11) NOT NULL,
  `tgl` timestamp NOT NULL DEFAULT current_timestamp(),
  `stock` int(11) NOT NULL,
  `ket` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bar_keluar`
--

INSERT INTO `bar_keluar` (`idkeluar`, `idbarang`, `idsatuan`, `tgl`, `stock`, `ket`) VALUES
(3, 15, 12, '2023-11-30 12:40:35', 4, 'Laku');

-- --------------------------------------------------------

--
-- Table structure for table `bar_masuk`
--

CREATE TABLE `bar_masuk` (
  `idmasuk` int(11) NOT NULL,
  `idbarang` int(11) NOT NULL,
  `idsup` int(11) NOT NULL,
  `idsatuan` int(11) NOT NULL,
  `tgl` timestamp NOT NULL DEFAULT current_timestamp(),
  `stock` int(11) NOT NULL,
  `ket` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bar_masuk`
--

INSERT INTO `bar_masuk` (`idmasuk`, `idbarang`, `idsup`, `idsatuan`, `tgl`, `stock`, `ket`) VALUES
(39, 15, 13, 12, '2023-11-30 12:49:39', 2, 'Penerima Jono');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `iduser` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`iduser`, `email`, `password`) VALUES
(1, 'admin@gmail.com', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `satuan`
--

CREATE TABLE `satuan` (
  `idsatuan` int(11) NOT NULL,
  `namasatuan` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `satuan`
--

INSERT INTO `satuan` (`idsatuan`, `namasatuan`) VALUES
(12, 'Biji');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `idsup` int(11) NOT NULL,
  `namasup` varchar(50) NOT NULL,
  `asalsup` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`idsup`, `namasup`, `asalsup`) VALUES
(13, 'Alim', 'Bantul');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`idbarang`);

--
-- Indexes for table `bar_keluar`
--
ALTER TABLE `bar_keluar`
  ADD PRIMARY KEY (`idkeluar`);

--
-- Indexes for table `bar_masuk`
--
ALTER TABLE `bar_masuk`
  ADD PRIMARY KEY (`idmasuk`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`iduser`);

--
-- Indexes for table `satuan`
--
ALTER TABLE `satuan`
  ADD PRIMARY KEY (`idsatuan`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`idsup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `idbarang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `bar_keluar`
--
ALTER TABLE `bar_keluar`
  MODIFY `idkeluar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `bar_masuk`
--
ALTER TABLE `bar_masuk`
  MODIFY `idmasuk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `iduser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `satuan`
--
ALTER TABLE `satuan`
  MODIFY `idsatuan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `idsup` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
