-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 09, 2020 at 10:57 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `avira`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblprodus`
--

CREATE TABLE `tblprodus` (
  `idProdus` int(3) UNSIGNED ZEROFILL NOT NULL,
  `numeProdus` varchar(50) NOT NULL,
  `cantitate_stoc` int(11) DEFAULT NULL,
  `descriere_produs` varchar(550) DEFAULT NULL,
  `Pret` decimal(7,2) DEFAULT NULL,
  `imagine` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblprodus`
--

INSERT INTO `tblprodus` (`idProdus`, `numeProdus`, `cantitate_stoc`, `descriere_produs`, `Pret`, `imagine`) VALUES
(001, 'Avira Prime', 3, 'All-in-one security, privacy & performance', '75.00', 'D:/an3 sem2/HackItAll/proiect/avira_prime.png'),
(002, 'Antivirus PRO', 0, 'Avira Antivirus secures your data, protects your privacy, and keeps your PC malware-free - without draining your system’s resources.', '35.00', 'D:/an3 sem2/HackItAll/proiect/avira_antivirus_pro.png'),
(003, 'Phantom VPN', 3, 'Phantom VPN lets you circumvent internet censorship by routing your traffic through a secure and anonymous tunnel via an Avira server located in a different country.', '50.00', 'D:/an3 sem2/HackItAll/proiect/phantom_vpn.png'),
(004, 'Password Manager', 0, 'Remember only one master password.', '20.00', 'D:/an3 sem2/HackItAll/proiect/password_manager.png'),
(005, 'Optimizer', 4, 'Download free apps that clean and speed you up. For Windows, Mac & Android.', '10.00', 'D:/an3 sem2/HackItAll/proiect/optimizer_pro.png'),
(006, 'System Speedup', 0, 'Discover a PC cleaner that speeds you up and wipes your online traces', '25.00', 'D:/an3 sem2/HackItAll/proiect/system_speedup.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbltranzactii`
--

CREATE TABLE `tbltranzactii` (
  `idTranzactie` int(3) UNSIGNED ZEROFILL NOT NULL,
  `dataComanda` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `codProdus` int(3) UNSIGNED ZEROFILL DEFAULT NULL,
  `metoda` varchar(500) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `rest` decimal(7,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbltranzactii`
--

INSERT INTO `tbltranzactii` (`idTranzactie`, `dataComanda`, `codProdus`, `metoda`, `email`, `rest`) VALUES
(001, '2020-03-08 23:27:19', 005, 'Card; Card Number: 5196081888500645\n CVV: 333', 'null', '0.00'),
(002, '2020-03-09 08:36:16', 002, 'Cash; Change ammount:65$\n Change code: BHrYHPi6gHNymot6RGZj', 'ionut_girla@yahoo.com', '0.00'),
(003, '2020-03-08 23:27:33', 006, 'ALIMENTARE System Speedup', 'Admin', NULL),
(019, '2020-03-09 07:46:23', 001, 'ALIMENTARE Avira Prime', 'Admin', NULL),
(020, '2020-03-09 07:46:48', 001, 'Cash; Change ammount:25$\n Change code: VFUi9I8iZjR2r44HTNmc', 'ionut_girla@yahoo.com', '25.00'),
(021, '2020-03-09 08:18:02', 002, 'ALIMENTARE Antivirus PRO', 'Admin', NULL),
(022, '2020-03-09 08:43:25', 002, 'Cash; Change ammount:-35$\n Change code: hmShQCTcroyJqY4pRW4x', 'ionut_girla@yahoo.com', '0.00'),
(023, '2020-03-09 08:31:35', 002, 'Cash; Change ammount:-35$\n Change code: RHfLzUMF3xpWHnytgMrH', 'ionut_girla@yahoo.com', '30.00'),
(024, '2020-03-09 08:31:47', 002, 'ALIMENTARE Antivirus PRO', 'Admin', NULL),
(025, '2020-03-09 08:33:22', 002, 'Cash; Change ammount:-35$\n Change code: jI16rfR1vtegdhLAthpD', 'ionut_girla@yahoo.com', '30.00'),
(026, '2020-03-09 08:41:28', 002, 'Cash; Change ammount:-25$\n Change code: Xs0ny7j2XchPh1XTcvJz', 'ionut_girla@yahoo.com', '0.00'),
(027, '2020-03-09 08:34:52', 003, 'ALIMENTARE Phantom VPN', 'Admin', NULL),
(028, '2020-03-09 08:38:05', 003, 'Cash; Change ammount:-20$\n Change code: n8vLqXH6CuTzu439FQ8d', 'ionut_girla@yahoo.com', '10.00'),
(029, '2020-03-09 08:41:28', 003, 'Cash; Change ammount:-27$\n Change code: En816Igenza5A3oQd3CI', 'ionut_girla@yahoo.com', '13.00'),
(030, '2020-03-09 08:43:25', 003, 'Cash; Change ammount:50$\n Change code: xSPnD0zvE8tJAAcLJWDj', 'ionut_girla@yahoo.com', '80.00'),
(031, '2020-03-09 08:43:49', 001, 'ALIMENTARE Avira Prime', 'Admin', NULL),
(032, '2020-03-09 08:46:29', 001, 'Cash; Change ammount:25$\n Change code: e4oZHox9DEFaSAXiRTVX', 'ionut_girla@yahoo.com', '25.00'),
(033, '2020-03-09 08:46:46', 001, 'ALIMENTARE Avira Prime', 'Admin', NULL),
(034, '2020-03-09 08:52:08', 003, 'ALIMENTARE Phantom VPN', 'Admin', NULL),
(035, '2020-03-09 08:52:20', 005, 'ALIMENTARE Optimizer', 'Admin', NULL),
(036, '2020-03-09 09:17:37', 001, 'Cash; Change ammount:25$\n Change code: LyklOODe1BF7e2z4Weby', 'ionut_girla@yahoo.com', '0.00'),
(037, '2020-03-09 09:17:37', 003, 'Cash; Change ammount:-25$\n Change code: yg7MyqE9HzRMnszmpq3m', 'ionut_girla@yahoo.com', '0.00'),
(038, '2020-03-09 09:31:37', 003, 'Card; Card Number: 4485360243860248\n CVV: 123', 'null', '0.00'),
(040, '2020-03-09 09:39:35', 001, 'ALIMENTARE Avira Prime', 'Admin', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbluseri`
--

CREATE TABLE `tbluseri` (
  `idUser` int(3) UNSIGNED ZEROFILL NOT NULL,
  `nume_utilizator` varchar(50) DEFAULT NULL,
  `parola` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbluseri`
--

INSERT INTO `tbluseri` (`idUser`, `nume_utilizator`, `parola`) VALUES
(001, 'admin', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblprodus`
--
ALTER TABLE `tblprodus`
  ADD PRIMARY KEY (`idProdus`);

--
-- Indexes for table `tbltranzactii`
--
ALTER TABLE `tbltranzactii`
  ADD PRIMARY KEY (`idTranzactie`);

--
-- Indexes for table `tbluseri`
--
ALTER TABLE `tbluseri`
  ADD PRIMARY KEY (`idUser`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblprodus`
--
ALTER TABLE `tblprodus`
  MODIFY `idProdus` int(3) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbltranzactii`
--
ALTER TABLE `tbltranzactii`
  MODIFY `idTranzactie` int(3) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `tbluseri`
--
ALTER TABLE `tbluseri`
  MODIFY `idUser` int(3) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
