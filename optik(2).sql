-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 19, 2021 at 08:54 PM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `optik`
--

-- --------------------------------------------------------

--
-- Table structure for table `frame`
--

CREATE TABLE `frame` (
  `kode_frame` varchar(10) NOT NULL,
  `merk_frame` varchar(20) NOT NULL,
  `harga_frame` int(11) NOT NULL,
  `stok_frame` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `frame`
--

INSERT INTO `frame` (`kode_frame`, `merk_frame`, `harga_frame`, `stok_frame`) VALUES
('F0001', 'franc nobell', 400000, 2),
('F0002', 'calvin klein', 500000, 5),
('F0003', 'police', 600000, 9),
('F0004', 'ray bean', 700000, 8),
('F0005', 'oakley', 800000, 15),
('F0006', 'chanel', 900000, 6),
('F0007', 'guess', 1000000, 4),
('F0008', 'armani', 1200000, 5),
('F0009', 'versace', 1100000, 8),
('F0010', 'levi\'s', 1300000, 6),
('F0011', 'franc nobel2', 500000, 10),
('F0012', 'calvin klein2', 700000, 10);

-- --------------------------------------------------------

--
-- Table structure for table `lensa`
--

CREATE TABLE `lensa` (
  `kode_lensa` varchar(10) NOT NULL,
  `jenis_lensa` varchar(20) NOT NULL,
  `ukuran` varchar(10) NOT NULL,
  `harga_lensa` int(11) NOT NULL,
  `stok_lensa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lensa`
--

INSERT INTO `lensa` (`kode_lensa`, `jenis_lensa`, `ukuran`, `harga_lensa`, `stok_lensa`) VALUES
('M001', 'minus', '0.50', 100000, 8),
('M002', 'minus', '0.75', 500000, 10),
('M003', 'minus', '1.00', 300000, 10),
('M004', 'minus', '1.25', 400000, 10),
('P001', 'plus', '0.50', 100000, 10),
('P002', 'plus', '0.75', 200000, 10),
('P003', 'plus', '1.00', 300000, 10),
('P004', 'plus', '1.25', 400000, 10);

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` varchar(10) NOT NULL,
  `nama_pelanggan` varchar(20) NOT NULL,
  `alamat_pelanggan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `nama_pelanggan`, `alamat_pelanggan`) VALUES
('L0001', 'jihan', 'Harapan Raya, Pekanbaru'),
('L0002', 'destavica', 'Asia Afrika, Bandung'),
('L0003', 'aulia', 'Rumbai, Pekanbaru'),
('L0004', 'annisa', 'Harapan Raya, Pekanbaru'),
('L0005', 'anastasya', 'Panam, Pekanbaru');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `kode_transaksi` varchar(10) NOT NULL,
  `kode_frame` varchar(10) NOT NULL,
  `kode_lensal` varchar(10) NOT NULL,
  `kode_lensar` varchar(10) NOT NULL,
  `id_pelanggan` varchar(10) NOT NULL,
  `id_user` varchar(10) NOT NULL,
  `total` int(11) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`kode_transaksi`, `kode_frame`, `kode_lensal`, `kode_lensar`, `id_pelanggan`, `id_user`, `total`, `tanggal`) VALUES
('T0001', 'F0001', 'M001', 'M001', 'L0001', 'P001', 600000, '2021-07-14'),
('T0002', 'F0003', 'M001', 'M002', 'L0001', 'P001', 1200000, '2021-06-01'),
('T0003', 'F0006', 'M002', 'M002', 'L0002', 'A001', 1900000, '2021-06-09'),
('T0004', 'F0010', 'M003', 'M003', 'L0002', 'A001', 1900000, '2021-05-01'),
('T0005', 'F0007', 'M002', 'M001', 'L0003', 'P002', 1600000, '2020-05-01'),
('T0006', 'F0002', 'M001', 'M003', 'L0001', 'A002', 900000, '2021-05-01'),
('T0007', 'F0006', 'M003', 'M003', 'L0002', 'P002', 1500000, '2020-06-07'),
('T0008', 'F0007', 'M002', 'M002', 'L0001', 'A002', 2000000, '2021-07-14'),
('T0009', 'F0004', 'M002', 'M002', 'L0002', 'A002', 1700000, '2021-07-14'),
('T0010', 'F0003', 'M002', 'M004', 'L0002', 'A002', 1500000, '2021-07-14'),
('T0011', 'F0002', 'M002', 'M003', 'L0003', 'A002', 1300000, '2021-07-14'),
('T0012', 'F0002', 'M002', 'M003', 'L0002', 'A001', 1300000, '2021-07-14'),
('T0013', 'F0005', 'P001', 'P002', 'L0005', 'P001', 1100000, '2021-07-16'),
('T0014', 'F0004', 'P002', 'P002', 'L0002', 'A002', 1100000, '2021-07-16'),
('T0015', 'F0012', 'P001', 'P001', 'L0002', 'A002', 900000, '2021-07-16'),
('T0016', 'F0003', 'P003', 'P003', 'L0002', 'A002', 1200000, '2021-07-16'),
('T0017', 'F0005', 'P004', 'P004', 'L0005', 'A004', 1600000, '2021-07-16'),
('T0018', 'F0010', 'M003', 'M003', 'L0002', 'P001', 1900000, '2021-07-16'),
('T0019', 'F0003', 'M001', 'M001', 'L0001', 'A004', 800000, '2021-07-19');

--
-- Triggers `transaksi`
--
DELIMITER $$
CREATE TRIGGER `tr_transaksi` AFTER INSERT ON `transaksi` FOR EACH ROW BEGIN
	UPDATE frame SET stok_frame=stok_frame-1
    WHERE kode_frame=new.kode_frame;
    UPDATE lensa SET stok_lensa=stok_lensa-1
    WHERE kode_lensa=new.kode_lensar;
    UPDATE lensa SET stok_lensa=stok_lensa-1
    WHERE kode_lensa=new.kode_lensal;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` varchar(10) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `level` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `level`) VALUES
('A001', 'annisa', 'annisa71', 'admin'),
('A002', 'aulia', 'aulia71', 'admin'),
('A003', 'grizzella', 'grizella71', 'admin'),
('A004', 'angkasa', 'angkasa71', 'admin'),
('P001', 'jihan', 'jihan71', 'pegawai'),
('P002', 'destavica', 'destavica71', 'pegawai'),
('P003', 'grizzel', 'grizzel71', 'pegawai');

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_transaksi`
-- (See below for the actual view)
--
CREATE TABLE `view_transaksi` (
`kode_transaksi` varchar(10)
,`merk_frame` varchar(20)
,`jenis_lensa_kanan` varchar(20)
,`ukuran_lensa_kanan` varchar(10)
,`jenis_lensa_kiri` varchar(20)
,`ukuran_lensa_kiri` varchar(10)
,`nama_pelanggan` varchar(20)
,`username` varchar(20)
,`total` int(11)
,`tanggal` date
);

-- --------------------------------------------------------

--
-- Structure for view `view_transaksi`
--
DROP TABLE IF EXISTS `view_transaksi`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_transaksi`  AS SELECT `t`.`kode_transaksi` AS `kode_transaksi`, `f`.`merk_frame` AS `merk_frame`, `r`.`jenis_lensa` AS `jenis_lensa_kanan`, `r`.`ukuran` AS `ukuran_lensa_kanan`, `l`.`jenis_lensa` AS `jenis_lensa_kiri`, `l`.`ukuran` AS `ukuran_lensa_kiri`, `p`.`nama_pelanggan` AS `nama_pelanggan`, `u`.`username` AS `username`, `t`.`total` AS `total`, `t`.`tanggal` AS `tanggal` FROM (((((`transaksi` `t` join `frame` `f`) join `pelanggan` `p`) join `user` `u`) join `lensa` `l`) join `lensa` `r`) WHERE `t`.`kode_frame` = `f`.`kode_frame` AND `t`.`id_pelanggan` = `p`.`id_pelanggan` AND `t`.`id_user` = `u`.`id_user` AND `t`.`kode_lensal` = `r`.`kode_lensa` AND `t`.`kode_lensar` = `l`.`kode_lensa` ORDER BY `t`.`kode_transaksi` ASC ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `frame`
--
ALTER TABLE `frame`
  ADD PRIMARY KEY (`kode_frame`);

--
-- Indexes for table `lensa`
--
ALTER TABLE `lensa`
  ADD PRIMARY KEY (`kode_lensa`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`kode_transaksi`),
  ADD KEY `fk_kode_frame` (`kode_frame`),
  ADD KEY `fk_kode_lensal` (`kode_lensal`),
  ADD KEY `fk_kode_lensar` (`kode_lensar`),
  ADD KEY `fk_id_user` (`id_user`),
  ADD KEY `fk_id_pelanggan` (`id_pelanggan`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `fk_id_pelanggan` FOREIGN KEY (`id_pelanggan`) REFERENCES `pelanggan` (`id_pelanggan`),
  ADD CONSTRAINT `fk_id_user` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`),
  ADD CONSTRAINT `fk_kode_frame` FOREIGN KEY (`kode_frame`) REFERENCES `frame` (`kode_frame`),
  ADD CONSTRAINT `fk_kode_lensal` FOREIGN KEY (`kode_lensal`) REFERENCES `lensa` (`kode_lensa`),
  ADD CONSTRAINT `fk_kode_lensar` FOREIGN KEY (`kode_lensar`) REFERENCES `lensa` (`kode_lensa`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
