-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 15, 2022 at 02:45 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `plnbatam`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2022-01-05-130904', 'App\\Database\\Migrations\\Gawe', 'default', 'App', 1641388828, 1),
(2, '2022-03-01-015241', 'App\\Database\\Migrations\\Createuser', 'default', 'App', 1646100029, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tb_gawe`
--

CREATE TABLE `tb_gawe` (
  `id_gawe` bigint(5) UNSIGNED NOT NULL,
  `name_gawe` varchar(50) NOT NULL,
  `date_gawe` date NOT NULL,
  `info_gawe` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_gawe`
--

INSERT INTO `tb_gawe` (`id_gawe`, `name_gawe`, `date_gawe`, `info_gawe`) VALUES
(4, 'adafda', '2022-01-13', 'ferwrw');

-- --------------------------------------------------------

--
-- Table structure for table `tb_users`
--

CREATE TABLE `tb_users` (
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `name_user` varchar(50) NOT NULL,
  `email_user` varchar(50) NOT NULL,
  `password_user` varchar(70) NOT NULL,
  `info_user` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_users`
--

INSERT INTO `tb_users` (`id_user`, `name_user`, `email_user`, `password_user`, `info_user`) VALUES
(1, 'admin', 'admin@gmail.com', '$2y$10$J1fB3hzgg8nOn84HLFbAe.o05flCNY5ZDSAO7FH5etSBlO774EwpO', NULL),
(2, 'admin2', 'admin2@gmail.com', '$2y$10$5ZFm1EAjcIVm9VvV9Hm1AOzwuJN6hcBcuinHkJi.5qEZ40yBjf1q6', NULL),
(3, 'admin3', 'admin3@gmail.com', '$2y$10$D.DYpRFl1ZFdsiLOcpoJU./QpxH/yVZepv7Hzegt2Jn9obCpkPUnO', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_gawe`
--
ALTER TABLE `tb_gawe`
  ADD PRIMARY KEY (`id_gawe`);

--
-- Indexes for table `tb_users`
--
ALTER TABLE `tb_users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_gawe`
--
ALTER TABLE `tb_gawe`
  MODIFY `id_gawe` bigint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tb_users`
--
ALTER TABLE `tb_users`
  MODIFY `id_user` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
