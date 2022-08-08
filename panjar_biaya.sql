-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 08, 2022 at 11:04 AM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 5.6.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `panjar_biaya`
--

-- --------------------------------------------------------

--
-- Table structure for table `kecamatan`
--

CREATE TABLE `kecamatan` (
  `id` int(11) NOT NULL,
  `kecamatan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kecamatan`
--

INSERT INTO `kecamatan` (`id`, `kecamatan`) VALUES
(1, 'Tenggarong'),
(2, 'Tenggarong Seberang'),
(3, 'Sebulu'),
(4, 'Loa Janan'),
(5, 'Loa Kulu'),
(6, 'Anggana'),
(7, 'Sanga Sanga'),
(8, 'Muara Jawa'),
(9, 'Samboja'),
(10, 'Muara Badak'),
(11, 'Marangkayu'),
(12, 'Muara Kaman'),
(13, 'Kota Bangun'),
(14, 'Muara WIS'),
(15, 'Muara Muntai'),
(16, 'Kenohan Kahala'),
(17, 'Kembang Janggut'),
(18, 'Tabang');

-- --------------------------------------------------------

--
-- Table structure for table `perkara`
--

CREATE TABLE `perkara` (
  `id` int(11) NOT NULL,
  `perkara` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `perkara`
--

INSERT INTO `perkara` (`id`, `perkara`) VALUES
(1, 'cerai gugat'),
(2, 'cerai gugat ghaib'),
(3, 'cerai talak'),
(4, 'cerai talak ghaib'),
(5, 'dispensasi nikah'),
(6, 'isbat nikah');

-- --------------------------------------------------------

--
-- Table structure for table `radius`
--

CREATE TABLE `radius` (
  `id` int(11) NOT NULL,
  `kecamatan` int(11) NOT NULL,
  `kelurahan` varchar(255) NOT NULL,
  `biaya` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `radius`
--

INSERT INTO `radius` (`id`, `kecamatan`, `kelurahan`, `biaya`) VALUES
(1, 1, 'Kelurahan Panji', 75000),
(2, 1, 'Kelurahan Mangkurawang', 75000),
(3, 1, 'Kelurahan Loa Ipuh', 75000),
(4, 1, 'Kelurahan Baru', 75000),
(5, 1, 'Kelurahan Timbau', 75000),
(6, 1, 'Kelurahan Melayu', 75000),
(7, 1, 'Kelurahan Bukit Biru', 75000),
(8, 1, 'Kelurahan Jahab', 150000),
(9, 1, 'Kelurahan Loa Tebu', 100000),
(10, 1, 'Kelurahan Loa Tebu - Batu Dinding', 150000),
(11, 1, 'Kelurahan Loa Tebu - Bengkinang', 150000),
(12, 1, 'Kelurahan Bangunrejo Bukit Biru', 150000),
(13, 1, 'Kelurahan Maluhu/Spontan', 100000),
(14, 1, 'Desa Rapak Lambur', 150000),
(15, 1, 'Kelurahan Loa Ipuh Darat Km.19', 150000),
(16, 1, 'Desa Spontan', 100000),
(17, 1, 'Datar Wanyi Mangkurawang', 150000),
(18, 1, 'Desa Sebendang Raya', 150000),
(19, 1, 'Kelurahan Sukarame', 75000),
(20, 2, 'Desa Loa Lepu', 150000),
(21, 2, 'Desa Teluk Dalam', 100000),
(22, 2, 'Desa Perjiwa', 100000),
(23, 2, 'Desa Loa Raya', 100000),
(24, 2, 'Desa Loa Ulung / Loa Pari', 150000),
(25, 2, 'Desa Embalut Kam Tran', 200000),
(26, 2, 'Desa Separi Kampung', 250000),
(27, 2, 'Desa Bukit Raya', 175000),
(28, 2, 'Desa Karang Tunggal', 200000),
(29, 2, 'Desa Manunggal Jaya', 200000),
(30, 2, 'Desa Bangun Rejo', 200000),
(31, 2, 'Desa Karta Buana', 250000),
(32, 2, 'Desa Separi I/Pariaman', 300000),
(33, 2, 'Desa Separi III/Buana Jaya', 300000),
(34, 2, 'Desa Separi IV/Mulawarman', 300000),
(35, 2, 'Separi Besar/Suka Maju', 300000),
(36, 2, 'Separi Embalut Kampung', 250000),
(37, 2, 'Desa Tanjung Batu', 250000),
(38, 3, 'Desa Selerong', 300000),
(39, 3, 'Desa Tanjung Harapan', 300000),
(40, 3, 'Desa Beloro', 300000),
(41, 3, 'Desa Sebulu Ulu', 200000),
(42, 3, 'Desa Sebulu Ilir', 200000),
(43, 3, 'Desa Segihan', 250000),
(44, 3, 'Desa Sumber Sari/Sebulu I/Mekar Jaya', 300000),
(45, 3, 'Desa Manunggal Daya', 300000),
(46, 3, 'Desa Giri Agung/Separi II', 250000),
(47, 3, 'Desa Senoni', 250000),
(48, 3, 'Desa Sebulu Modern', 200000),
(49, 3, 'Desa Antai', 250000),
(50, 3, 'Desa Sanggulan', 250000),
(51, 4, 'Desa Loa Janan Ulu', 200000),
(52, 4, 'Desa Bakungan', 150000),
(53, 4, 'Desa Loa Duri Ilir', 150000),
(54, 4, 'Desa Loa Duri Ulu', 150000),
(55, 4, 'Desa Loa Duri Ulu - Dusun Surya ( RT.14 )', 200000),
(56, 4, 'Desa Loa Duri Ulu - Dusun Merandai ( RT.15 )', 200000),
(57, 4, 'Desa Loa Duri Ulu - Dusun Kutai Baru ( RT.16 )', 200000),
(58, 4, 'Desa Loa Duri Ulu - Sungai Pimping ( RT.17 )', 200000),
(59, 4, 'Desa Purwajaya', 200000),
(60, 4, 'Desa Tani Bakti EX. UPT', 200000),
(61, 4, 'Desa Batuah', 250000),
(62, 4, 'Desa Tani Harapan', 250000),
(63, 5, 'Desa Margahayu (Jonggon A)', 200000),
(64, 5, 'Desa Jonggon Jaya (B)', 300000),
(65, 5, 'Desa Sei. Payan /Sei. Lais', 300000),
(66, 5, 'Desa Jembayan', 100000),
(67, 5, 'Desa Jembayan - Dusun Tanjung Laong (RT.13)', 200000),
(68, 5, 'Desa Jembayan Dalam', 300000),
(69, 5, 'Desa Loa Kulu Kota', 100000),
(70, 5, 'Dusun Loa Gagak', 200000),
(71, 5, 'Desa Lok Sumber/Sumber Sari', 100000),
(72, 5, 'Desa Ponoragan', 100000),
(73, 5, 'Desa Jonggon C', 400000),
(74, 5, 'Desa Jonggon Kampung', 400000),
(75, 5, 'Desa Rempanga', 100000),
(76, 5, 'Desa Jongkang Rempanga', 100000),
(77, 5, 'Desa Bangun Sari', 150000),
(78, 5, 'Desa Jembayan Tengah', 300000),
(79, 5, 'Desa Sepakat', 100000),
(80, 6, 'Desa Sepatin', 850000),
(81, 6, 'Desa Muara Patuan', 850000),
(82, 6, 'Desa Tani Baru', 700000),
(83, 6, 'Desa Kutai Lama', 300000),
(84, 6, 'Desa Sungai Meriam', 300000),
(85, 6, 'Desa Sidomulyo/Anggana I', 300000),
(86, 6, 'Handil Terusan/Anggana II', 450000),
(87, 6, 'Desa Anggana', 300000),
(88, 7, 'Kelurahan Jawa', 300000),
(89, 7, 'Kelurahan Pendingin', 350000),
(90, 7, 'Kelurahan Sanga-Sanga Dalam', 300000),
(91, 7, 'Kelurahan Sari Jaya', 300000),
(92, 7, 'Kelurahan Sanga-Sanga Luar/Muara', 300000),
(93, 8, 'Kelurahan Muara Jawa Ilir', 300000),
(94, 8, 'Kelurahan Muara jawa Tengah', 300000),
(95, 8, 'Kelurahan Muara Jawa Ulu', 300000),
(96, 8, 'Kelurahan Teluk Dalam', 400000),
(97, 8, 'Kelurahan Dondang', 300000),
(98, 8, 'Kelurahan Tama Pole', 400000),
(99, 8, 'Kelurahan Muara kembang', 400000),
(100, 9, 'Kelurahan Salok Api Darat', 300000),
(101, 9, 'Kelurahan Salok Api Laut', 400000),
(102, 9, 'Kelurahan Ambarawang Laut', 300000),
(103, 9, 'Kelurahan Ambarawang Darat', 300000),
(104, 9, 'Kelurahan Margo Mulyo', 300000),
(105, 9, 'Kelurahan Sungai Merdeka + Bukit Merdeka', 300000),
(106, 9, 'Kelurahan Sungai Seluang', 300000),
(107, 9, 'Kelurahan Wono Tirto / Samboja I', 300000),
(108, 9, 'Kelurahan Tanjung Harapan', 300000),
(109, 9, 'Kelurahan Samboja Kuala + Kampung Lama', 300000),
(110, 9, 'Kelurahan Senipah', 300000),
(111, 9, 'Kelurahan Handil Baru', 300000),
(112, 9, 'Kelurahan Muara Sembilang', 400000),
(113, 9, 'Desa Karya Jaya', 400000),
(114, 9, 'Desa Samboja II / Bukit Raya', 400000),
(115, 9, 'Desa Samboja III', 400000),
(116, 9, 'Desa Beringin Agung', 400000),
(117, 9, 'Desa Tani Bakti', 400000),
(118, 9, 'Desa Arga Sari', 400000),
(119, 10, 'Desa Seliki', 450000),
(120, 10, 'Desa Salak Palai', 400000),
(121, 10, 'Desa Muara Badak Ulu', 300000),
(122, 10, 'Desa Muara Badak Ilir', 300000),
(123, 10, 'Desa Tanjung Limau', 300000),
(124, 10, 'Desa Tanah Datar', 250000),
(125, 10, 'Desa Badak Baru', 300000),
(126, 10, 'Desa Suka Damai', 300000),
(127, 10, 'Desa Gas Alam', 300000),
(128, 10, 'Desa Batu-Batu', 300000),
(129, 10, 'Desa Cella/Bosan/Sei Bawang', 450000),
(130, 11, 'Desa Sebuntal', 400000),
(131, 11, 'Desa Tanjung Santan Ulu', 400000),
(132, 11, 'Desa Tanjung Santan Ilir', 450000),
(133, 11, 'Desa Tanjung Santan Tengah', 450000),
(134, 11, 'Desa Kersik', 400000),
(135, 11, 'Desa Perangat Baru', 400000),
(136, 11, 'Desa Perangat Selatan', 400000),
(137, 11, 'Desa Makarti', 400000),
(138, 11, 'Desa Bunga Putih', 450000),
(139, 11, 'Desa Semangko', 420000),
(140, 11, 'Desa Sembera, Bunga Putih', 450000),
(141, 12, 'Desa Muara Kaman Ilir', 400000),
(142, 12, 'Desa Rantau Hampang', 400000),
(143, 12, 'Desa Teratak', 350000),
(144, 12, 'Desa Benua Puhun', 350000),
(145, 12, 'Desa Muara Kaman Ulu', 400000),
(146, 12, 'Desa Sabintulung', 600000),
(147, 12, 'Desa Muara Siran', 500000),
(148, 12, 'Desa Tunjungan', 700000),
(149, 12, 'Desa Sedulang', 650000),
(150, 12, 'Desa Benamang Kiri', 950000),
(151, 12, 'Desa Benamang Kanan', 900000),
(152, 12, 'Desa Bukit Jering', 500000),
(153, 12, 'Desa Sido Mukti/Sebulu III', 300000),
(154, 12, 'Desa Panca Jaya/Sebulu IV', 350000),
(155, 12, 'Desa Bunga Jadi/Sebulu V', 380000),
(156, 12, 'Desa Kupang Baru', 800000),
(157, 12, 'Desa Loa Bahu Ulak', 300000),
(158, 13, 'Desa Kedang Ipil', 500000),
(159, 13, 'Desa Benua Baru', 500000),
(160, 13, 'Desa Sedulang', 350000),
(161, 13, 'Desa Loleng', 400000),
(162, 13, 'Desa Kota Bangun Ulu', 400000),
(163, 13, 'Desa Kota Bangun Ilir', 400000),
(164, 13, 'Desa Liang Ulu/Ilir', 500000),
(165, 13, 'Desa Muhuran', 500000),
(166, 13, 'Desa Pela', 500000),
(167, 13, 'Desa Kota bangun I', 500000),
(168, 13, 'Desa Kota Bangun II', 550000),
(169, 13, 'Desa Kota bangun III', 550000),
(170, 13, 'Desa Rimba Ayu IV/EX UPT', 500000),
(171, 13, 'Desa Rimba Ayu V', 500000),
(172, 13, 'Desa Rimba Ayu VI', 500000),
(173, 13, 'Desa Sumber Sari', 500000),
(174, 13, 'Desa Sari Nadi', 450000),
(175, 13, 'Desa Suka Bumi', 500000),
(176, 13, 'Desa Kota Bangun Seberang', 500000),
(177, 14, 'Desa Muara Wis', 500000),
(178, 14, 'Desa Sehemban', 600000),
(179, 14, 'Desa Melintang', 700000),
(180, 14, 'Desa Enggelan', 700000),
(181, 14, 'Desa Lebak Mantan', 600000),
(182, 14, 'Desa Lebak Cilong', 600000),
(183, 14, 'Desa Muara Enggelan', 600000),
(184, 15, 'Desa Perian', 600000),
(185, 15, 'Desa Muara Leka', 600000),
(186, 15, 'Desa Muara Aloh', 750000),
(187, 15, 'Desa Jantur/Jantur Baru', 800000),
(188, 15, 'Desa Batuq', 600000),
(189, 15, 'Desa Rebak Rinding', 500000),
(190, 15, 'Desa Muara Muntai Ulu', 500000),
(191, 15, 'Desa Muara Muntai Ilir', 500000),
(192, 15, 'Desa Kayu Batu', 500000),
(193, 15, 'Desa Jantur Selatan', 800000),
(194, 15, 'Desa Tanjung Batu Harapan', 800000),
(195, 16, 'Desa Lamin Telihan', 1000000),
(196, 16, 'Desa Lamin Palut', 1000000),
(197, 16, 'Desa Teluk Bingklai', 1000000),
(198, 16, 'Desa Kahala', 1000000),
(199, 16, 'Desa Tubuhan', 1000000),
(200, 16, 'Desa Semayang', 1000000),
(201, 16, 'Desa Teluk Muda', 1000000),
(202, 16, 'Desa Tuana Tuha', 1000000),
(203, 17, 'Desa Genting Tanah', 1000000),
(204, 17, 'Desa Loa Sako', 1000000),
(205, 17, 'Desa Hambau', 1000000),
(206, 17, 'Desa Kembang Janggut', 1100000),
(207, 17, 'Desa Kelekat', 1100000),
(208, 17, 'Desa Pulau Pinang', 1200000),
(209, 17, 'Desa Long Beleh Haloq', 1200000),
(210, 17, 'Desa Long Beleh Modang', 1200000),
(211, 18, 'Seluruh Desa Wilayah Tabang', 2000000),
(357, 5, 'Desa Loa Kulu Kota/Seberang', 200000),
(358, 8, 'Kelurahan Muara Jawa Pesisir', 300000),
(359, 9, 'Kelurahan Teluk Pemedas', 300000),
(360, 9, 'Kelurahan Handil Baru Darat', 300000),
(361, 9, 'Kelurahan Karya Merdeka', 300000),
(362, 10, 'Desa Badak Mekar', 350000),
(363, 12, 'Desa Puan Cepak', 600000),
(364, 12, 'Desa Liang Buaya', 500000),
(365, 13, 'Desa Kedang Murung', 500000),
(366, 13, 'Desa Wono Sari', 800000),
(367, 13, 'Desa Sebelimbingan', 600000),
(368, 15, 'Desa Pulau Harapan', 800000);

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `token` text NOT NULL,
  `nama_pa` varchar(128) NOT NULL,
  `nama_pa_pendek` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`token`, `nama_pa`, `nama_pa_pendek`) VALUES
('8c26761e-c2bc-3630-8d24-ec75d1088dd8', 'Tenggarong', 'PA.Tgr');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kecamatan`
--
ALTER TABLE `kecamatan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `perkara`
--
ALTER TABLE `perkara`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `radius`
--
ALTER TABLE `radius`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kecamatan` (`kecamatan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kecamatan`
--
ALTER TABLE `kecamatan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `perkara`
--
ALTER TABLE `perkara`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `radius`
--
ALTER TABLE `radius`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=369;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `radius`
--
ALTER TABLE `radius`
  ADD CONSTRAINT `radius_ibfk_1` FOREIGN KEY (`kecamatan`) REFERENCES `kecamatan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
