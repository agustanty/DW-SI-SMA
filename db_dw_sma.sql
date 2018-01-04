-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 04, 2018 at 11:58 PM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_dw_sma`
--

-- --------------------------------------------------------

--
-- Table structure for table `dim_tabel_guru`
--

CREATE TABLE `dim_tabel_guru` (
  `id_dim_tabel_guru` int(11) NOT NULL,
  `id_dim_tabel_mapel` int(11) NOT NULL,
  `dim_tabel_guru_nama` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dim_tabel_guru`
--

INSERT INTO `dim_tabel_guru` (`id_dim_tabel_guru`, `id_dim_tabel_mapel`, `dim_tabel_guru_nama`) VALUES
(1, 1, 'Mursaban, SPd'),
(2, 2, 'Sumartono, SPd'),
(3, 3, 'Musakarya, SPd'),
(4, 4, 'La Badi, SPd');

-- --------------------------------------------------------

--
-- Table structure for table `dim_tabel_mapel`
--

CREATE TABLE `dim_tabel_mapel` (
  `id_dim_tabel_mapel` int(11) NOT NULL,
  `dim_tabel_mapel_nama` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dim_tabel_mapel`
--

INSERT INTO `dim_tabel_mapel` (`id_dim_tabel_mapel`, `dim_tabel_mapel_nama`) VALUES
(1, 'Biologi'),
(2, 'Fisika'),
(3, 'Matematika'),
(4, 'Kimia');

-- --------------------------------------------------------

--
-- Table structure for table `dim_tabel_siswa`
--

CREATE TABLE `dim_tabel_siswa` (
  `id_dim_tabel_siswa` int(11) NOT NULL,
  `dim_tabel_siswa_nama` varchar(45) DEFAULT NULL,
  `dim_tabel_siswa_jk` enum('L','P') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dim_tabel_siswa`
--

INSERT INTO `dim_tabel_siswa` (`id_dim_tabel_siswa`, `dim_tabel_siswa_nama`, `dim_tabel_siswa_jk`) VALUES
(1, 'Alba', 'L'),
(2, 'Ahmad', 'L'),
(3, 'Agus', 'L');

-- --------------------------------------------------------

--
-- Table structure for table `dim_tabel_tanggal`
--

CREATE TABLE `dim_tabel_tanggal` (
  `id_dim_tabel_tanggal` int(11) NOT NULL,
  `dim_tabel_tanggal_tanggal` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dim_tabel_tanggal`
--

INSERT INTO `dim_tabel_tanggal` (`id_dim_tabel_tanggal`, `dim_tabel_tanggal_tanggal`) VALUES
(1, '2015-01-01'),
(2, '2016-01-01');

-- --------------------------------------------------------

--
-- Table structure for table `fakta_tabel_sma`
--

CREATE TABLE `fakta_tabel_sma` (
  `id_fakta_tabel_sma` int(11) NOT NULL,
  `id_dim_tabel_mapel` int(11) NOT NULL,
  `id_dim_tabel_siswa` int(11) NOT NULL,
  `id_dim_tabel_tanggal` int(11) NOT NULL,
  `fakta_tabel_sma_nilai` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fakta_tabel_sma`
--

INSERT INTO `fakta_tabel_sma` (`id_fakta_tabel_sma`, `id_dim_tabel_mapel`, `id_dim_tabel_siswa`, `id_dim_tabel_tanggal`, `fakta_tabel_sma_nilai`) VALUES
(1, 1, 1, 1, 76),
(2, 1, 1, 2, 92),
(3, 2, 1, 1, 89),
(4, 2, 1, 2, 75),
(5, 3, 1, 1, 90),
(6, 3, 1, 2, 74),
(7, 4, 1, 1, 79),
(8, 4, 1, 2, 59),
(9, 1, 2, 1, 90),
(10, 2, 2, 1, 79),
(11, 3, 2, 1, 95),
(12, 4, 2, 1, 75),
(13, 1, 2, 2, 100),
(14, 2, 2, 2, 74),
(15, 3, 2, 2, 59),
(16, 4, 2, 2, 77),
(17, 1, 3, 1, 94),
(18, 2, 3, 1, 59),
(19, 3, 3, 1, 77),
(20, 4, 3, 1, 100),
(21, 1, 3, 2, 79),
(22, 2, 3, 2, 90),
(23, 3, 3, 2, 70),
(24, 4, 3, 2, 49);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dim_tabel_guru`
--
ALTER TABLE `dim_tabel_guru`
  ADD PRIMARY KEY (`id_dim_tabel_guru`,`id_dim_tabel_mapel`),
  ADD KEY `fk_dim_tabel_guru_dim_tabel_mapel_idx` (`id_dim_tabel_mapel`);

--
-- Indexes for table `dim_tabel_mapel`
--
ALTER TABLE `dim_tabel_mapel`
  ADD PRIMARY KEY (`id_dim_tabel_mapel`);

--
-- Indexes for table `dim_tabel_siswa`
--
ALTER TABLE `dim_tabel_siswa`
  ADD PRIMARY KEY (`id_dim_tabel_siswa`);

--
-- Indexes for table `dim_tabel_tanggal`
--
ALTER TABLE `dim_tabel_tanggal`
  ADD PRIMARY KEY (`id_dim_tabel_tanggal`);

--
-- Indexes for table `fakta_tabel_sma`
--
ALTER TABLE `fakta_tabel_sma`
  ADD PRIMARY KEY (`id_fakta_tabel_sma`,`id_dim_tabel_mapel`,`id_dim_tabel_siswa`,`id_dim_tabel_tanggal`),
  ADD KEY `fk_fakta_tabel_sma_dim_tabel_mapel1_idx` (`id_dim_tabel_mapel`),
  ADD KEY `fk_fakta_tabel_sma_dim_tabel_siswa1_idx` (`id_dim_tabel_siswa`),
  ADD KEY `fk_fakta_tabel_sma_dim_tabel_tanggal1_idx` (`id_dim_tabel_tanggal`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dim_tabel_guru`
--
ALTER TABLE `dim_tabel_guru`
  MODIFY `id_dim_tabel_guru` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `dim_tabel_mapel`
--
ALTER TABLE `dim_tabel_mapel`
  MODIFY `id_dim_tabel_mapel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `dim_tabel_siswa`
--
ALTER TABLE `dim_tabel_siswa`
  MODIFY `id_dim_tabel_siswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `dim_tabel_tanggal`
--
ALTER TABLE `dim_tabel_tanggal`
  MODIFY `id_dim_tabel_tanggal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `fakta_tabel_sma`
--
ALTER TABLE `fakta_tabel_sma`
  MODIFY `id_fakta_tabel_sma` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `dim_tabel_guru`
--
ALTER TABLE `dim_tabel_guru`
  ADD CONSTRAINT `fk_dim_tabel_guru_dim_tabel_mapel` FOREIGN KEY (`id_dim_tabel_mapel`) REFERENCES `dim_tabel_mapel` (`id_dim_tabel_mapel`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `fakta_tabel_sma`
--
ALTER TABLE `fakta_tabel_sma`
  ADD CONSTRAINT `fk_fakta_tabel_sma_dim_tabel_mapel1` FOREIGN KEY (`id_dim_tabel_mapel`) REFERENCES `dim_tabel_mapel` (`id_dim_tabel_mapel`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_fakta_tabel_sma_dim_tabel_siswa1` FOREIGN KEY (`id_dim_tabel_siswa`) REFERENCES `dim_tabel_siswa` (`id_dim_tabel_siswa`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_fakta_tabel_sma_dim_tabel_tanggal1` FOREIGN KEY (`id_dim_tabel_tanggal`) REFERENCES `dim_tabel_tanggal` (`id_dim_tabel_tanggal`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
