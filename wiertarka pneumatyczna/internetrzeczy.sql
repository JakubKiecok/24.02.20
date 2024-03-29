-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 20, 2024 at 08:47 AM
-- Wersja serwera: 10.4.28-MariaDB
-- Wersja PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `internetrzeczy`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `arkusz`
--

CREATE TABLE `arkusz` (
  `ID` int(2) DEFAULT NULL,
  `CenaCzujnika` varchar(6) DEFAULT NULL,
  `Nazwa` varchar(17) DEFAULT NULL,
  `Kategoria` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `arkusz`
--

INSERT INTO `arkusz` (`ID`, `CenaCzujnika`, `Nazwa`, `Kategoria`) VALUES
(1, '1000', 'Temperatury TS18S', 1),
(2, '10,12', 'Temperatury TS19S', 1),
(3, '10,458', 'Termopara 4895', 1),
(4, '56,5', 'Zestaw supla 1', 2),
(5, '568', 'Zestaw supla 2', 2),
(6, '33,33', 'Zestaw supla 3', 2),
(7, '50', 'Rezystor T', 3),
(8, '556', 'Termistor R', 3),
(9, '5000', 'Oscyloskop', 3),
(10, '225', 'Płytka stykowa', 4);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
