-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 24 Cze 2022, 12:37
-- Wersja serwera: 10.1.32-MariaDB
-- Wersja PHP: 5.6.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `projekt`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pojazdy`
--

CREATE TABLE `pojazdy` (
  `PojazdId` int(11) NOT NULL,
  `Marka` varchar(40) COLLATE utf8_polish_ci NOT NULL,
  `Vin` varchar(40) COLLATE utf8_polish_ci NOT NULL,
  `NrRej` varchar(40) COLLATE utf8_polish_ci NOT NULL,
  `Przeglad` tinyint(1) NOT NULL DEFAULT '0',
  `Login` varchar(20) COLLATE utf8_polish_ci NOT NULL,
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `pojazdy`
--

INSERT INTO `pojazdy` (`PojazdId`, `Marka`, `Vin`, `NrRej`, `Przeglad`, `Login`, `time`) VALUES
(1, 'Audi', '444', '213', 1, 'Mechanik', '2022-06-24 12:19:21'),
(2, 'Volvo', '1234', '213', 0, 'admin12', '2022-06-24 12:24:49'),
(3, 'BMW', '444', '11', 0, 'admin12', '2022-06-24 12:24:55');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `role`
--

CREATE TABLE `role` (
  `IdUzytkownika` int(11) NOT NULL,
  `Rola` varchar(20) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `role`
--

INSERT INTO `role` (`IdUzytkownika`, `Rola`) VALUES
(1, 'admin'),
(2, 'mechanik');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `uzytkownicy`
--

CREATE TABLE `uzytkownicy` (
  `IdUzytkownika` int(11) NOT NULL,
  `Login` varchar(20) COLLATE utf8_polish_ci NOT NULL,
  `Haslo` varchar(32) COLLATE utf8_polish_ci NOT NULL,
  `Email` varchar(20) COLLATE utf8_polish_ci NOT NULL,
  `NrTelefonu` int(11) NOT NULL,
  `Zamieszkanie` varchar(30) COLLATE utf8_polish_ci NOT NULL,
  `DataUrodzenia` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `uzytkownicy`
--

INSERT INTO `uzytkownicy` (`IdUzytkownika`, `Login`, `Haslo`, `Email`, `NrTelefonu`, `Zamieszkanie`, `DataUrodzenia`) VALUES
(1, 'admin12', '827ccb0eea8a706c4c34a16891f84e7b', 'admin@mail.com', 123456789, 'Test', '2022-06-25'),
(2, 'Mechanik', '81dc9bdb52d04dc20036dbd8313ed055', 'admin@mail.com', 123456789, 'Test', '2022-06-17');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `pojazdy`
--
ALTER TABLE `pojazdy`
  ADD PRIMARY KEY (`PojazdId`);

--
-- Indeksy dla tabeli `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`IdUzytkownika`);

--
-- Indeksy dla tabeli `uzytkownicy`
--
ALTER TABLE `uzytkownicy`
  ADD PRIMARY KEY (`IdUzytkownika`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `pojazdy`
--
ALTER TABLE `pojazdy`
  MODIFY `PojazdId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT dla tabeli `role`
--
ALTER TABLE `role`
  MODIFY `IdUzytkownika` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT dla tabeli `uzytkownicy`
--
ALTER TABLE `uzytkownicy`
  MODIFY `IdUzytkownika` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
