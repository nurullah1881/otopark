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
('YENİ OTOPARK', 50);

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
(4, 'Otoparkımız 01.05.2024 tarihinde hizmete açılacaktır.'),
(5, 'Keyifli park deneyimi dileriz.');

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
(12, '4321 8765 1234 5678', '09/28', 'AYŞE YILMAZ', '321'),
(13, '9876 5432 6789 1234', '03/27', '', '789');

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
(1, 'kullanici1', '9876', 'admin'),
(2, 'kullanici2', '12345', 'admin');

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
('06XYZ12', 'C1', 'FATMA', 'KAYA', '+90 (532) 123 45 67', '98765432101', '2024-05-01', '09:15:00', '2024-05-01', '14:20:00'),
('35ABC78', 'B2', 'MURAT', 'ÖZDEMİR', '+90 (532) 987 65 43', '12345678901', '2024-04-05', '06:45:00', '2024-05-01', '13:10:00'),
('07DEF45', 'A3', 'AYLİN', 'ÇELİK', '+90 (532) 456 78 90', '45678912345', '2024-04-20', '07:00:00', '2024-05-01', '11:30:00'),
('34GHJ56', 'A4', 'EMRE', 'YILMAZ', '+90 (532) 321 54 76', '78912345678', '2024-04-02', '10:20:00', '2024-05-01', '15:40:00'),
('16KLM89', 'B3', 'SERKAN', 'AKTAŞ', '+90 (532) 654 32 10', '32165498701', '2024-04-12', '04:15:00', '2024-05-01', '12:00:00'),
('41NOP23', 'A6', 'Zeynep', 'ŞAHİN', '+90 (532) 789 12 34', '65432198701', '2024-04-28', '11:30:00', '2024-05-01', '09:00:00'),
('01QRS67', 'B8', 'CAN', 'ERDOĞAN', '+90 (532) 147 25 36', '14725836901', '2024-0427', '22:00:00', '2024-04-28', '13:45:00');

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
