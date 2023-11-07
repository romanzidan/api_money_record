-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 07, 2023 at 03:48 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `money_record`
--

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `id_history` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `total` varchar(255) NOT NULL,
  `details` text NOT NULL,
  `created_at` varchar(255) NOT NULL,
  `updated_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`id_history`, `id_user`, `type`, `date`, `total`, `details`, `created_at`, `updated_at`) VALUES
(1, 1, 'Pengeluaran', '2023-11-03', '9500.0', '[{\"name\":\"Mie Soto\",\"price\":\"4500\"},{\"name\":\"Kopi Hitam\",\"price\":\"5000\"}]', '2023-11-03T17:25:48.559765', '2023-11-03T17:25:48.559994'),
(3, 3, 'Pengeluaran', '2023-11-04', '22500.0', '[{\"name\":\"Diamond\",\"price\":\"15000\"},{\"name\":\"Waktu\",\"price\":\"2000\"},{\"name\":\"Ikan\",\"price\":\"5500\"}]', '2023-11-03T17:33:45.510963', '2023-11-05T14:53:14.522256'),
(4, 3, 'Pemasukan', '2023-11-03', '14500.0', '[{\"name\":\"Kouta\",\"price\":\"14500\"}]', '2023-11-03T17:37:23.564824', '2023-11-05T15:09:19.302014'),
(5, 3, 'Pengeluaran', '2023-11-02', '27500.0', '[{\"name\":\"Aqua\",\"price\":\"4500\"},{\"name\":\"Minum\",\"price\":\"23000\"}]', '2023-11-03T17:41:11.661005', '2023-11-05T15:06:50.563157');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `name`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'admin@gmail.com', '21232f297a57a5a743894a0e4a801fc3', '2023-12-12 12:15:55', '2023-12-12 12:15:55'),
(2, 'anjay', 'anjay@gmail.com', '21232f297a57a5a743894a0e4a801fc3', '2023-10-30T14:23:49.270793', '2023-10-30T14:23:49.271318'),
(3, 'Roman Zidan', 'roman@gmail.com', '21232f297a57a5a743894a0e4a801fc3', '2023-10-30T14:25:16.577779', '2023-10-30T14:25:16.578004');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id_history`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `id_history` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
