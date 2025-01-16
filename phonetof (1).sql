-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 16, 2025 at 08:26 AM
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
-- Database: `phonetof`
--

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id` int(11) NOT NULL,
  `kode_produk` varchar(60) NOT NULL,
  `nama_produk` varchar(60) NOT NULL,
  `gambar_produk` varchar(300) NOT NULL,
  `kategori_produk` int(11) NOT NULL,
  `supplier` int(11) NOT NULL,
  `harga_jual` int(11) NOT NULL,
  `harga_beli` int(11) NOT NULL,
  `stok_produk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id`, `kode_produk`, `nama_produk`, `gambar_produk`, `kategori_produk`, `supplier`, `harga_jual`, `harga_beli`, `stok_produk`) VALUES
(1, '1', 'Samsung', 'C:\\Users\\asus7\\Downloads\\ADB\\SAMSUNG.jpg', 1, 1, 10000000, 9000000, 10),
(2, '2', 'samsung A55', 'D:\\Febri lutfiyanah\\samsung a55.avif', 1, 1, 7000000, 6000000, 10),
(3, '3', 'samsung a23', 'D:\\Febri lutfiyanah\\samsung a23.jpg', 1, 1, 3500000, 2000000, 10),
(4, '4', 'iphone 13', 'D:\\Febri lutfiyanah\\iphone_13_pink_1_1.jpg', 1, 1, 10000000, 9000000, 5),
(5, '5', 'iphone 14', 'D:\\Febri lutfiyanah\\iphone_14_blue_3.webp', 1, 1, 15000000, 13000000, 6);

-- --------------------------------------------------------

--
-- Table structure for table `produk_kategori`
--

CREATE TABLE `produk_kategori` (
  `id` int(11) NOT NULL,
  `nama` varchar(60) NOT NULL,
  `deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `produk_kategori`
--

INSERT INTO `produk_kategori` (`id`, `nama`, `deskripsi`) VALUES
(1, 'Handphone', 'RAM 3GB ROM 128GB');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `id` int(11) NOT NULL,
  `nama` varchar(60) NOT NULL,
  `nomer_telepon` varchar(13) NOT NULL,
  `alamat` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`id`, `nama`, `nomer_telepon`, `alamat`) VALUES
(1, 'TOF', '6287722233344', 'Tegal');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `kasir_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id`, `tanggal`, `kasir_id`) VALUES
(3, '2025-01-13', 112),
(4, '2025-01-13', 112),
(5, '2025-01-13', 112),
(6, '2025-01-13', 112),
(7, '2025-01-13', 112),
(8, '2025-01-13', 112),
(9, '2025-01-16', 112);

-- --------------------------------------------------------

--
-- Table structure for table `transaksi_detail`
--

CREATE TABLE `transaksi_detail` (
  `id` int(11) NOT NULL,
  `id_transaksi` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `tanggal_transaksi` date NOT NULL,
  `harga` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaksi_detail`
--

INSERT INTO `transaksi_detail` (`id`, `id_transaksi`, `id_produk`, `qty`, `tanggal_transaksi`, `harga`) VALUES
(1, 3, 1, 1, '2025-01-13', 10000000),
(2, 4, 1, 1, '2025-01-13', 10000000),
(3, 5, 1, 1, '2025-01-13', 10000000),
(4, 6, 1, 1, '2025-01-13', 10000000),
(5, 7, 1, 1, '2025-01-13', 10000000),
(6, 8, 1, 1, '2025-01-13', 10000000),
(7, 8, 2, 1, '2025-01-13', 7000000),
(8, 9, 2, 1, '2025-01-16', 7000000),
(9, 9, 3, 1, '2025-01-16', 3500000),
(10, 9, 4, 1, '2025-01-16', 10000000);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(10) NOT NULL,
  `level` enum('owner','admin','kasir') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `fullname`, `username`, `password`, `level`) VALUES
(123, 'Kholila Ristiana', 'kholila', 'kholila12', 'owner'),
(124, 'Febri lutfiyanah', 'Febri', 'febri12', 'kasir'),
(134, 'Annas tasya', 'Annas', 'Annas112', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `produk_kategori`
--
ALTER TABLE `produk_kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nama` (`nama`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaksi_detail`
--
ALTER TABLE `transaksi_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `produk_kategori`
--
ALTER TABLE `produk_kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `transaksi_detail`
--
ALTER TABLE `transaksi_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
