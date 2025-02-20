-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 25, 2025 at 08:26 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_kepegawaian`
--

-- --------------------------------------------------------

--
-- Table structure for table `absensi`
--

CREATE TABLE `absensi` (
  `id_absensi` int(11) NOT NULL,
  `id_karyawan` int(11) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `absensi`
--

INSERT INTO `absensi` (`id_absensi`, `id_karyawan`, `tanggal`, `status`) VALUES
(1, 1, '2025-01-22', 'Hadir'),
(21, 3, '2025-01-01', 'Sakit'),
(22, 4, '2025-01-01', 'Izin'),
(23, 5, '2025-01-01', 'Hadir'),
(24, 6, '2025-01-01', 'Hadir'),
(25, 7, '2025-01-01', 'Sakit'),
(26, 8, '2025-01-01', 'Hadir'),
(27, 9, '2025-01-01', 'Izin'),
(28, 10, '2025-01-01', 'Hadir');

-- --------------------------------------------------------

--
-- Table structure for table `karyawan`
--

CREATE TABLE `karyawan` (
  `id_karyawan` int(11) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `jabatan` varchar(50) DEFAULT NULL,
  `gaji` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `karyawan`
--

INSERT INTO `karyawan` (`id_karyawan`, `nama`, `jabatan`, `gaji`) VALUES
(1, 'Jeki Abdullah', 'HRD', 200),
(3, 'Ali', 'Manager', 15000000),
(4, 'Budi', 'Supervisor', 12000000),
(5, 'Citra', 'Staff', 8000000),
(6, 'Dina', 'Staff', 8500000),
(7, 'Eka', 'HRD', 9000000),
(8, 'Fajar', 'IT Support', 10000000),
(9, 'Gita', 'Marketing', 11000000),
(10, 'Hadi', 'Finance', 9500000),
(11, 'Indah', 'Sales', 7000000),
(12, 'Joko', 'Admin', 7500000),
(13, 'Marni', 'Sales', 4500000);

-- --------------------------------------------------------

--
-- Table structure for table `proyek`
--

CREATE TABLE `proyek` (
  `id_proyek` int(11) NOT NULL,
  `nama_proyek` varchar(100) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `durasi` int(11) DEFAULT NULL,
  `id_karyawan` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `proyek`
--

INSERT INTO `proyek` (`id_proyek`, `nama_proyek`, `deskripsi`, `durasi`, `id_karyawan`) VALUES
(1, 'Bangun Jembatan', 'Jembatan Banjarmasin Utara', 30, 1),
(3, 'Proyek A', 'Pembangunan aplikasi internal', 30, 1),
(4, 'Proyek B', 'Digital marketing campaign', 45, 7),
(5, 'Proyek C', 'Pengembangan sistem IT', 60, 6),
(6, 'Proyek D', 'Audit keuangan tahunan', 20, 8),
(7, 'Proyek E', 'Pelatihan karyawan baru', 10, 5),
(8, 'Proyek F', 'Promosi produk baru', 15, 7),
(9, 'Proyek G', 'Optimasi jaringan kantor', 25, 6),
(10, 'Proyek H', 'Rekrutmen massal', 35, 5),
(11, 'Proyek I', 'Penyusunan laporan tahunan', 50, 8),
(12, 'Proyek J', 'Strategi pemasaran regional', 40, 7);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `absensi`
--
ALTER TABLE `absensi`
  ADD PRIMARY KEY (`id_absensi`),
  ADD KEY `id_karyawan` (`id_karyawan`);

--
-- Indexes for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`id_karyawan`);

--
-- Indexes for table `proyek`
--
ALTER TABLE `proyek`
  ADD PRIMARY KEY (`id_proyek`),
  ADD KEY `id_karyawan` (`id_karyawan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `absensi`
--
ALTER TABLE `absensi`
  MODIFY `id_absensi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `karyawan`
--
ALTER TABLE `karyawan`
  MODIFY `id_karyawan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `proyek`
--
ALTER TABLE `proyek`
  MODIFY `id_proyek` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `absensi`
--
ALTER TABLE `absensi`
  ADD CONSTRAINT `absensi_ibfk_1` FOREIGN KEY (`id_karyawan`) REFERENCES `karyawan` (`id_karyawan`);

--
-- Constraints for table `proyek`
--
ALTER TABLE `proyek`
  ADD CONSTRAINT `proyek_ibfk_1` FOREIGN KEY (`id_karyawan`) REFERENCES `karyawan` (`id_karyawan`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
