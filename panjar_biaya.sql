-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 27, 2023 at 08:44 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 5.6.40

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
(2, 1, 'Kelurahan Panji', 100000),
(3, 1, 'Kelurahan Mangkurawang', 100000),
(4, 1, 'Kelurahan Loa Ipuh', 100000),
(5, 1, 'Kelurahan Baru', 100000),
(6, 1, 'Kelurahan Timbau', 100000),
(7, 1, 'Kelurahan Melayu', 100000),
(8, 1, 'Kelurahan Bukit Biru', 100000),
(9, 1, 'Kelurahan Sukarame', 100000),
(10, 1, 'Kelurahan Jahab', 150000),
(11, 1, 'Kelurahan Loa Tebu', 100000),
(12, 1, 'Kelurahan Loa Tebu - Batu Dinding', 175000),
(13, 1, 'Kelurahan Loa Tebu - Bengkinang', 175000),
(14, 1, 'Kelurahan Bangunrejo Bukit Biru', 100000),
(15, 1, 'Kelurahan Maluhu/Spontan', 150000),
(16, 1, 'Desa Rapak Lambur', 175000),
(17, 1, 'Kelurahan Loa Ipuh Darat Km.19', 175000),
(18, 1, 'Desa Spontan', 175000),
(19, 1, 'Desa Datar Wanyi Mangkurawang', 175000),
(20, 1, 'Desa Sebendang Raya', 175000),
(21, 2, 'Desa Loa Lepu', 175),
(22, 2, 'Desa Teluk Dalam', 100000),
(23, 2, 'Desa Perjiwa', 125000),
(24, 2, 'Desa Loa Raya', 175000),
(25, 2, 'Desa Loa Ulung ', 175000),
(26, 2, 'Desa Loa Pari', 175000),
(27, 2, 'Desa Embalut Kam Tran', 250000),
(28, 2, 'Desa Separi Kampung', 300000),
(29, 2, 'Desa Bukit Raya', 200000),
(30, 2, 'Desa Karang Tunggal', 200000),
(31, 2, 'Desa Manunggal Jaya', 200000),
(32, 2, 'Desa Bangun Rejo', 250000),
(33, 2, 'Desa Kerta Buana', 250000),
(34, 2, 'Desa Separi I/Pariaman', 300000),
(35, 2, 'Desa Separi III/Buana Jaya', 300000),
(36, 2, 'Desa Separi IV/Mulawarman', 300000),
(37, 2, 'Separi Besar/Suka Maju', 300000),
(38, 2, 'Separi Embalut Kampung', 250000),
(39, 2, 'Desa Tanjung Batu', 250000),
(40, 3, 'Desa Selerong', 300000),
(41, 3, 'Desa Tanjung Harapan', 300000),
(42, 3, 'Desa Beloro', 300000),
(43, 3, 'Desa Sebulu Ulu', 250000),
(44, 3, 'Desa Sebulu Ilir', 250000),
(45, 3, 'Desa Segihan', 300000),
(46, 3, 'Desa Sumber Sari/Sebulu I', 300000),
(47, 3, 'Desa Manunggal Daya ', 300000),
(48, 3, 'Desa Giri Agung/Separi II', 350000),
(49, 3, 'Desa Senoni', 300000),
(50, 3, 'Desa Sebulu Modern', 200000),
(51, 3, 'Desa Antai', 300000),
(52, 3, 'Desa Sanggulan', 300000),
(53, 3, 'Desa Lekaq Kidau', 400000),
(54, 3, 'Desa Mekar Jaya', 300000),
(55, 4, 'Desa Loa Janan Ulu', 250000),
(56, 4, 'Desa Bakungan', 150000),
(57, 4, 'Desa Loa Duri Ilir ', 200000),
(58, 4, 'Desa Loa Duri Ilir - Dusun Grodek', 250000),
(59, 4, 'Desa Loa Duri Ulu', 200000),
(60, 4, 'Desa Loa Duri Ulu - Dusun Surya (RT.14)', 250000),
(61, 4, 'Desa Loa Duri Ulu - Dusun Merandai (RT.15)', 250000),
(62, 4, 'Desa Loa Duri Ulu - Dusun Kutai Baru (RT.16)', 250000),
(63, 4, 'Desa Loa Duri Ulu - Sungai Pimping (RT.17)', 250000),
(64, 4, 'Desa Purwajaya', 220000),
(65, 4, 'Desa Tani Bakti EX. UPT', 220000),
(66, 4, 'Desa Batuah', 300000),
(67, 4, 'Desa Tani Harapan', 250000),
(68, 5, 'Desa Margahayu (Jonggon A)', 250000),
(69, 5, 'Desa Jonggon Jaya (B)', 300000),
(70, 5, 'Desa Sei. Payan /Sei. Lais', 300000),
(71, 5, 'Desa Jembayan', 150000),
(72, 5, 'Desa Jembayan - Dusun Tanjung Laong (RT.13)', 250000),
(73, 5, 'Desa Jembayan Dalam', 300000),
(74, 5, 'Desa Loa Kulu Kota', 150000),
(75, 5, 'Desa Loa Kulu Kota - Dusun Loa Gagak / Loa Kulu Seberang / Datar Rawa', 200000),
(76, 5, 'Desa Lok Sumber', 150000),
(77, 5, 'Desa Lok Sumber - Dusun Sumber Rezeki', 200000),
(78, 5, 'Desa Sumber Sari', 150000),
(79, 5, 'Desa Ponoragan', 125000),
(80, 5, 'Desa Jonggon C', 400000),
(81, 5, 'Desa Jonggon Kampung', 400000),
(82, 5, 'Desa Rempanga', 125000),
(83, 5, 'Desa Jongkang', 175000),
(84, 5, 'Desa Bangun Sari', 150000),
(85, 5, 'Desa Jembayan Tengah', 300000),
(86, 5, 'Desa Sepakat', 125000),
(87, 5, 'Desa Long Anai', 300000),
(88, 6, 'Desa Sepatin', 1500000),
(89, 6, 'Desa Muara Patuan', 1500000),
(90, 6, 'Desa Tani Baru', 1500000),
(91, 6, 'Desa Kutai Lama', 400000),
(92, 6, 'Desa Sungai Meriam', 400000),
(93, 6, 'Desa Sidomulyo/Anggana I', 400000),
(94, 6, 'Handil Terusan/Anggana II', 450000),
(95, 6, 'Desa Anggana', 400000),
(96, 7, 'Kelurahan Jawa', 400000),
(97, 7, 'Kelurahan Pendingin', 400000),
(98, 7, 'Kelurahan Sanga- Sanga Dalam', 400000),
(99, 7, 'Kelurahan Sari Jaya', 400000),
(100, 7, 'Kelurahan Sanga-Sanga Luar/Muara', 400000),
(101, 8, 'Kelurahan Muara Jawa Ilir', 450000),
(102, 8, 'Kelurahan Muara Jawa Tengah', 450000),
(103, 8, 'Kelurahan Muara Jawa Ulu', 450000),
(104, 8, 'Kelurahan Muara Jawa Pesisir', 450000),
(105, 8, 'Kelurahan Teluk Dalam', 500000),
(106, 8, 'Kelurahan Dondang', 450000),
(107, 8, 'Kelurahan Tama Pole', 500000),
(108, 8, 'Kelurahan Muara kembang', 500000),
(109, 9, 'Kelurahan Salok Api Darat', 550),
(110, 9, 'Kelurahan Salok Api Laut', 550000),
(111, 9, 'Kelurahan Ambarawang Laut', 550000),
(112, 9, 'Kelurahan Ambarawang Darat', 500000),
(113, 9, 'Kelurahan Margo Mulyo', 450000),
(114, 9, 'Kelurahan Sungai Merdeka', 450000),
(115, 9, 'Kelurahan Bukit Merdeka', 450000),
(116, 9, 'Kelurahan Sungai Seluang', 500000),
(117, 9, 'Kelurahan Wono Tirto / Samboja I', 500000),
(118, 9, 'Kelurahan Tanjung Harapan', 500000),
(119, 9, 'Kelurahan Samboja Kuala', 500000),
(120, 9, 'Kelurahan Kampung Lama', 500000),
(121, 9, 'Kelurahan Senipah', 500000),
(122, 9, 'Kelurahan Handil Baru', 450000),
(123, 9, 'Kelurahan Handil Darat', 450000),
(124, 9, 'Kelurahan Muara Sembilang', 450000),
(125, 9, 'Kelurahan Teluk Pemedas', 500000),
(126, 9, 'Kelurahan Argosari', 500000),
(127, 9, 'Kelurahan Karya Merdeka', 500000),
(128, 9, 'Desa Karya Jaya', 500000),
(129, 9, 'Desa Samboja II', 500000),
(130, 9, 'Desa Bukit Raya', 500000),
(131, 9, 'Desa Samboja III ', 400000),
(132, 9, 'Desa Beringin Agung', 500000),
(133, 9, 'Desa Tani Bakti', 500000),
(134, 10, 'Desa Seliki', 450000),
(135, 10, 'Desa Salak Palai', 600000),
(136, 10, 'Desa Muara Badak Ulu', 450000),
(137, 10, 'Desa Muara Badak Ilir', 450000),
(138, 10, 'Desa Tanjung Limau', 450000),
(139, 10, 'Desa Tanah Datar', 350000),
(140, 10, 'Desa Badak Baru', 450000),
(141, 10, 'Desa Badak Mekar', 400000),
(142, 10, 'Desa Suka Damai', 400000),
(143, 10, 'Desa Gas Alam', 450000),
(144, 10, 'Desa Batu-Batu', 400000),
(145, 10, 'Desa Cella/Bosan', 600000),
(146, 10, 'Desa Sungai Bawang', 350000),
(147, 11, 'Desa Sebuntal', 500000),
(148, 11, 'Desa Tanjung Santan Ulu', 600000),
(149, 11, 'Desa Tanjung Santan Ilir', 600000),
(150, 11, 'Desa Tanjung Santan Tengah', 600000),
(151, 11, 'Desa Kersik', 600000),
(152, 11, 'Desa Perangat Baru', 500000),
(153, 11, 'Desa Perangat Selatan', 500000),
(154, 11, 'Desa Makarti', 500000),
(155, 11, 'Desa Bunga Putih', 500000),
(156, 11, 'Desa Semangko', 550000),
(157, 11, 'Desa Sambera Baru', 500000),
(158, 12, 'Desa Muara Kaman Ilir', 450000),
(159, 12, 'Desa Rantau Hampang', 450000),
(160, 12, 'Desa Teratak', 400000),
(161, 12, 'Desa Benua Puhun', 400000),
(162, 12, 'Desa Muara Kaman Ulu', 450000),
(163, 12, 'Desa Sabintulung', 650000),
(164, 12, 'Desa Muara Siran', 800000),
(165, 12, 'Desa Tunjungan', 800000),
(166, 12, 'Desa Sedulang', 800000),
(167, 12, 'Desa Benamang Kiri', 1000000),
(168, 12, 'Desa Benamang Kanan', 1000000),
(169, 12, 'Desa Bukit Jering', 500000),
(170, 12, 'Desa Sido Mukti/Sebulu III', 400000),
(171, 12, 'Desa Panca Jaya/Sebulu IV', 400000),
(172, 12, 'Desa Bunga Jadi/Sebulu V', 450000),
(173, 12, 'Desa Kupang Baru', 1000000),
(174, 12, 'Desa Lebahu Ulaq', 400000),
(175, 12, 'Desa Puan Cepak', 600000),
(176, 12, 'Desa Liang Buaya', 1000000),
(177, 12, 'Desa Ciparu Makmur', 400000),
(178, 13, 'Desa Kedang Ipil', 800000),
(179, 13, 'Desa Benua Baru', 600000),
(180, 13, 'Desa Sedulang', 450000),
(181, 13, 'Desa Loleng', 500000),
(182, 13, 'Desa Kota Bangun Ulu', 500000),
(183, 13, 'Desa Kota Bangun Ilir', 550000),
(184, 13, 'Desa Liang Ilir', 550000),
(185, 13, 'Desa Liang Ulu', 500000),
(186, 13, 'Desa Sangkuliman', 550000),
(187, 13, 'Desa Muhuran', 550000),
(188, 13, 'Desa Pela', 550000),
(189, 13, 'Desa Kota Bangun I', 550000),
(190, 13, 'Desa Kota Bangun II', 550000),
(191, 13, 'Desa Kota bangun III', 550000),
(192, 13, 'Desa Rimba Ayu IV/EX UPT', 550000),
(193, 13, 'Desa Rimba Ayu V', 550000),
(194, 13, 'Desa Rimba Ayu VI', 550000),
(195, 13, 'Desa Sumber Sari', 500000),
(196, 13, 'Desa Sari Nadi', 450000),
(197, 13, 'Desa Suka Bumi', 500000),
(198, 13, 'Desa Kota Bangun Seberang', 550000),
(199, 13, 'Desa Kedang Murung', 550000),
(200, 13, 'Desa Wono Sari', 800000),
(201, 13, 'Desa Sebelimbingan', 600000),
(202, 14, 'Desa Muara Wis', 750000),
(203, 14, 'Desa Sebemban', 800000),
(204, 14, 'Desa Melintang', 1300000),
(205, 14, 'Desa Enggelan', 1500000),
(206, 14, 'Desa Lebak Mantan', 1300000),
(207, 14, 'Desa Lebak Cilong', 1300000),
(208, 14, 'Desa Muara Enggelan', 1500000),
(209, 15, 'Desa Perian', 950000),
(210, 15, 'Desa Muara Leka', 900000),
(211, 15, 'Desa Muara Aloh', 950000),
(212, 15, 'Desa Jantur', 950000),
(213, 15, 'Desa Jantur Baru', 950000),
(214, 15, 'Desa Batuq', 900000),
(215, 15, 'Desa Rebak Rinding', 750000),
(216, 15, 'Desa Muara Muntai Ulu', 750000),
(217, 15, 'Desa Muara Muntai Ilir', 750000),
(218, 15, 'Desa Kayu Batu', 750000),
(219, 15, 'Desa Jantur Selatan', 950000),
(220, 15, 'Desa Tanjung Batu Harapan', 850000),
(221, 15, 'Desa Pulau Harapan', 750000),
(222, 16, 'Desa Lamin Telihan', 1200000),
(223, 16, 'Desa Lamin Palut', 1200000),
(224, 16, 'Desa Teluk Bingkai', 1200000),
(225, 16, 'Desa Kahala', 1000000),
(226, 16, 'Desa Kahala Ilir', 1000000),
(227, 16, 'Desa Tubuhan', 1200000),
(228, 16, 'Desa Semayang', 1200000),
(229, 16, 'Desa Teluk Muda', 1200000),
(230, 16, 'Desa Tuana Tuha', 1200000),
(231, 17, 'Desa Genting Tanah', 1300000),
(232, 17, 'Desa Loa Sako', 1300000),
(233, 17, 'Desa Hambau', 1300000),
(234, 17, 'Desa Kembang Janggut', 1300000),
(235, 17, 'Desa Kelekat', 1300000),
(236, 17, 'Desa Pulau Pinang', 1500000),
(237, 17, 'Desa Long Beleh Haloq', 1500000),
(238, 17, 'Desa Long Beleh Modang', 1500000),
(239, 17, 'Desa Bukit Layang', 1500000),
(240, 17, 'Desa Muai', 1500000),
(241, 17, 'Desa Perdana', 1500000),
(242, 18, 'Seluruh Desa Wilayah Kec. Tabang', 2500000);

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

-- --------------------------------------------------------

--
-- Table structure for table `statistik`
--

CREATE TABLE `statistik` (
  `id` bigint(20) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `statistik`
--

INSERT INTO `statistik` (`id`, `tanggal`) VALUES
(1, '2023-03-27'),
(2, '2023-03-27'),
(3, '2023-03-27'),
(4, '2023-03-27'),
(5, '2023-03-27'),
(6, '2023-03-27'),
(7, '2023-03-27'),
(8, '2023-03-27'),
(9, '2023-03-27'),
(10, '2023-03-27'),
(11, '2023-03-27'),
(12, '2023-03-27'),
(13, '2023-03-27'),
(14, '2023-03-27'),
(15, '2023-03-27'),
(16, '2023-03-27'),
(17, '2023-03-27'),
(18, '2023-03-27'),
(19, '2023-03-27'),
(20, '2023-03-27'),
(21, '2023-03-27'),
(22, '2023-03-27'),
(23, '2023-03-27'),
(24, '2023-03-27'),
(25, '2023-03-27'),
(26, '2023-03-27'),
(27, '2023-03-27'),
(28, '2023-03-27'),
(29, '2023-03-27'),
(30, '2023-03-27');

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
-- Indexes for table `statistik`
--
ALTER TABLE `statistik`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=243;

--
-- AUTO_INCREMENT for table `statistik`
--
ALTER TABLE `statistik`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

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
