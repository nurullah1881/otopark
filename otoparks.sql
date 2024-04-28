-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 28, 2024 at 10:38 PM
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
-- Database: `otopark`
--

-- --------------------------------------------------------

--
-- Table structure for table `ayarlar`
--

CREATE TABLE `ayarlar` (
  `otoparkAdi` varchar(50) NOT NULL,
  `saatlikUcret` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ayarlar`
--

INSERT INTO `ayarlar` (`otoparkAdi`, `saatlikUcret`) VALUES
('BEKTAŞ OTOPARK', 43);

-- --------------------------------------------------------

--
-- Table structure for table `duyurular`
--

CREATE TABLE `duyurular` (
  `id` int(11) NOT NULL,
  `duyuru` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `duyurular`
--

INSERT INTO `duyurular` (`id`, `duyuru`) VALUES
(4, 'Otoparkımız sayın Recep Tayyip Erdoğan\'ın teşrifleriyle 24.04.2024 tarihinde açılacaktır.'),
(5, 'İyi eğlenceler.');

-- --------------------------------------------------------

--
-- Table structure for table `kartlar`
--

CREATE TABLE `kartlar` (
  `id` int(11) NOT NULL,
  `kart` varchar(20) NOT NULL,
  `skt` varchar(5) NOT NULL,
  `ad` varchar(50) NOT NULL,
  `cvv` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kartlar`
--

INSERT INTO `kartlar` (`id`, `kart`, `skt`, `ad`, `cvv`) VALUES
(12, '1111 1111 1111 1111', '11', 'abbas', '555'),
(13, '4125 6376 5228 1186', '12/Sy', 'MUHAMMET UMUT ALTUN', '174');

-- --------------------------------------------------------

--
-- Table structure for table `kullanicilar`
--

CREATE TABLE `kullanicilar` (
  `id` int(11) NOT NULL,
  `kullanici` varchar(50) NOT NULL,
  `sifre` varchar(50) NOT NULL,
  `tur` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kullanicilar`
--

INSERT INTO `kullanicilar` (`id`, `kullanici`, `sifre`, `tur`) VALUES
(1, 'foaqen', '1234', 'admin'),
(2, 'n1rvana', '5555', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `musteriler`
--

CREATE TABLE `musteriler` (
  `plaka` varchar(13) NOT NULL,
  `parkYeri` varchar(4) NOT NULL,
  `ad` varchar(50) NOT NULL,
  `soyad` varchar(50) NOT NULL,
  `telNo` varchar(20) NOT NULL,
  `tcNo` varchar(12) NOT NULL,
  `giris` date NOT NULL,
  `girisSaat` time NOT NULL,
  `cikis` date NOT NULL,
  `cikisSaat` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `musteriler`
--

INSERT INTO `musteriler` (`plaka`, `parkYeri`, `ad`, `soyad`, `telNo`, `tcNo`, `giris`, `girisSaat`, `cikis`, `cikisSaat`) VALUES
('05TC05', 'A5', 'ASLAN', 'AKBEY', '+90 (555) 555 55 55', '11111111111', '2024-04-30', '08:30:00', '2024-04-30', '12:05:00'),
('16ALE09', 'B5', 'AHMET', 'DEMİR', '+90 (555) 555 55 55', '11111111110', '2024-04-03', '05:30:00', '2024-04-30', '12:05:00'),
('21TEM06', 'A2', 'MAHMUT', 'YILDIRIM', '+90 (555) 555 55 55', '11111111110', '2024-04-19', '08:30:00', '2024-04-30', '12:05:00'),
('34EFE34', 'A1', 'MEHMET', 'KARAHANLI', '+90 (555) 555 55 55', '11111111110', '2024-04-01', '08:30:00', '2024-04-30', '12:05:00'),
('34PLT34', 'B1', 'ALİ', 'CANDAN', '+90 (555) 555 55 55', '11111111110', '2024-04-11', '03:50:00', '2024-04-30', '12:05:00'),
('41ALE734', 'A5', 'SELİM', 'BEKTAŞ', '+90 (555) 555 55 55', '11111111111', '2024-04-29', '10:00:00', '2024-04-30', '08:00:00'),
('61LJ25', 'B9', 'MUHAMMET UMUT', 'ALTUN', '+90 (555) 555 55 55', '38923123124', '2024-04-28', '23:30:00', '2024-04-29', '12:30:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `duyurular`
--
ALTER TABLE `duyurular`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kartlar`
--
ALTER TABLE `kartlar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kullanicilar`
--
ALTER TABLE `kullanicilar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `musteriler`
--
ALTER TABLE `musteriler`
  ADD PRIMARY KEY (`plaka`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `duyurular`
--
ALTER TABLE `duyurular`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `kartlar`
--
ALTER TABLE `kartlar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `kullanicilar`
--
ALTER TABLE `kullanicilar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
