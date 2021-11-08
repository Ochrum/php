-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 08 Lis 2021, 14:19
-- Wersja serwera: 10.1.38-MariaDB
-- Wersja PHP: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `purpurowy_kutacz`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `plan_lekcji`
--

CREATE TABLE `plan_lekcji` (
  `Lp.` int(50) NOT NULL,
  `int_d` int(11) NOT NULL,
  `int_nr` int(11) NOT NULL,
  `nazwa` varchar(20) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `plan_lekcji`
--

INSERT INTO `plan_lekcji` (`Lp.`, `int_d`, `int_nr`, `nazwa`) VALUES
(1, 1, 3, 'j_angielskie'),
(2, 1, 4, 'Matma'),
(3, 1, 5, 'matma'),
(4, 1, 6, 'programowanie'),
(5, 1, 7, 'programowanie'),
(6, 1, 8, 'programowanie'),
(7, 1, 9, 'programowanie'),
(10, 2, 1, 'bazy'),
(11, 2, 2, 'niemiecki'),
(12, 2, 3, 'wf'),
(13, 2, 4, 'wf'),
(14, 2, 5, 'polski'),
(15, 2, 6, 'polski'),
(16, 2, 7, 'komodo'),
(17, 2, 8, 'komodo'),
(18, 3, 2, 'wychowawcza'),
(19, 3, 3, 'infa'),
(20, 3, 4, 'bazy'),
(21, 3, 5, 'historia'),
(22, 3, 6, 'kwach'),
(23, 3, 7, 'kwach'),
(24, 3, 8, 'kwach'),
(25, 4, 1, 'Matma'),
(26, 4, 2, 'angielski'),
(27, 4, 3, 'religia'),
(28, 4, 4, 'kleopatra'),
(29, 4, 5, 'angielski'),
(30, 4, 6, 'wf'),
(31, 5, 1, 'bazy'),
(32, 5, 2, 'bazy'),
(33, 5, 3, 'komodo'),
(34, 5, 4, 'komodo'),
(35, 5, 5, 'historia'),
(36, 5, 6, 'programowanie'),
(37, 5, 7, 'programowanie'),
(38, 5, 8, 'programowanie'),
(39, 5, 9, 'programowanie');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `plan_lekcji`
--
ALTER TABLE `plan_lekcji`
  ADD PRIMARY KEY (`Lp.`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `plan_lekcji`
--
ALTER TABLE `plan_lekcji`
  MODIFY `Lp.` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
