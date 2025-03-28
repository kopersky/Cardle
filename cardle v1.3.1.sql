-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 28, 2025 at 07:31 PM
-- Wersja serwera: 10.4.32-MariaDB
-- Wersja PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cardle`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `cardle`
--

CREATE TABLE `cardle` (
  `id` int(11) NOT NULL,
  `marka` varchar(50) NOT NULL,
  `model` varchar(50) NOT NULL,
  `rok_produkcji` int(11) NOT NULL,
  `typ_nadwozia` varchar(50) NOT NULL,
  `logo` blob DEFAULT NULL,
  `zdjecia` blob DEFAULT NULL,
  `kraj` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cardle`
--

INSERT INTO `cardle` (`id`, `marka`, `model`, `rok_produkcji`, `typ_nadwozia`, `logo`, `zdjecia`, `kraj`) VALUES
(1, 'Toyota', 'Corolla', 2020, 'sedan', 0x706c616365686f6c646572, 0x706c616365686f6c646572, 'Japonia'),
(2, 'Ford', 'Mustang', 2018, 'coupe', 0x706c616365686f6c646572, 0x706c616365686f6c646572, 'Stany Zjednoczone'),
(3, 'Honda', 'Civic', 2019, 'hatchback', 0x706c616365686f6c646572, 0x706c616365686f6c646572, 'Japonia'),
(4, 'BMW', 'X5', 2021, 'SUV', 0x706c616365686f6c646572, 0x706c616365686f6c646572, 'Niemcy'),
(5, 'Audi', 'A4', 2022, 'sedan', 0x706c616365686f6c646572, 0x706c616365686f6c646572, 'Niemcy'),
(6, 'Mercedes', 'C-Class', 2020, 'sedan', 0x706c616365686f6c646572, 0x706c616365686f6c646572, 'Niemcy'),
(7, 'Volkswagen', 'Golf', 2019, 'hatchback', 0x706c616365686f6c646572, 0x706c616365686f6c646572, 'Niemcy'),
(8, 'Lexus', 'RX', 2021, 'SUV', 0x706c616365686f6c646572, 0x706c616365686f6c646572, 'Japonia'),
(9, 'Nissan', 'Altima', 2020, 'sedan', 0x706c616365686f6c646572, 0x706c616365686f6c646572, 'Japonia'),
(10, 'Chevrolet', 'Camaro', 2018, 'coupe', 0x706c616365686f6c646572, 0x706c616365686f6c646572, 'Stany Zjednoczone'),
(11, 'Mazda', 'CX-5', 2019, 'SUV', 0x706c616365686f6c646572, 0x706c616365686f6c646572, 'Japonia'),
(12, 'Hyundai', 'Elantra', 2020, 'sedan', 0x706c616365686f6c646572, 0x706c616365686f6c646572, 'Korea Południowa'),
(13, 'Kia', 'Sportage', 2021, 'SUV', 0x706c616365686f6c646572, 0x706c616365686f6c646572, 'Korea Południowa'),
(14, 'Subaru', 'Outback', 2019, 'SUV', 0x706c616365686f6c646572, 0x706c616365686f6c646572, 'Japonia'),
(15, 'Volvo', 'XC60', 2020, 'SUV', 0x706c616365686f6c646572, 0x706c616365686f6c646572, 'Szwecja'),
(16, 'Tesla', 'Model 3', 2021, 'sedan', 0x706c616365686f6c646572, 0x706c616365686f6c646572, 'Stany Zjednoczone'),
(17, 'Porsche', '911', 2018, 'coupe', 0x706c616365686f6c646572, 0x706c616365686f6c646572, 'Niemcy'),
(18, 'Jeep', 'Grand Cherokee', 2020, 'SUV', 0x706c616365686f6c646572, 0x706c616365686f6c646572, 'Stany Zjednoczone'),
(19, 'BMW', 'M5', 2005, 'sedan', 0x706c616365686f6c646572, 0x706c616365686f6c646572, 'Niemcy'),
(20, 'Jaguar', 'F-Type', 2021, 'coupe', 0x706c616365686f6c646572, 0x706c616365686f6c646572, 'Wielka Brytania'),
(21, 'Infiniti', 'Q50', 2020, 'sedan', 0x706c616365686f6c646572, 0x706c616365686f6c646572, 'Japonia'),
(22, 'Peugot', '208', 2020, 'hatchback', 0x706c616365686f6c646572, 0x706c616365686f6c646572, 'Francja'),
(23, 'Dodge', 'Challenger', 2018, 'coupe', 0x706c616365686f6c646572, 0x706c616365686f6c646572, 'Stany Zjednoczone'),
(24, 'Chrysler', '300', 2020, 'sedan', 0x706c616365686f6c646572, 0x706c616365686f6c646572, 'Stany Zjednoczone'),
(25, 'Acura', 'RDX', 2021, 'SUV', 0x706c616365686f6c646572, 0x706c616365686f6c646572, 'Japonia'),
(26, 'Genesis', 'G70', 2019, 'sedan', 0x706c616365686f6c646572, 0x706c616365686f6c646572, 'Korea Południowa'),
(27, 'Mini', 'Cooper', 2020, 'hatchback', 0x706c616365686f6c646572, 0x706c616365686f6c646572, 'Wielka Brytania'),
(28, 'Cadillac', 'XT5', 2018, 'SUV', 0x706c616365686f6c646572, 0x706c616365686f6c646572, 'Stany Zjednoczone'),
(29, 'GMC', 'Terrain', 2019, 'SUV', 0x706c616365686f6c646572, 0x706c616365686f6c646572, 'Stany Zjednoczone'),
(30, 'Buick', 'Enclave', 2020, 'SUV', 0x706c616365686f6c646572, 0x706c616365686f6c646572, 'Stany Zjednoczone'),
(31, 'Fiat', '500', 2018, 'hatchback', 0x706c616365686f6c646572, 0x706c616365686f6c646572, 'Włochy'),
(32, 'Maserati', 'Ghibli', 2021, 'sedan', 0x706c616365686f6c646572, 0x706c616365686f6c646572, 'Włochy'),
(33, 'Ferrari', 'Portofino', 2019, 'coupe', 0x706c616365686f6c646572, 0x706c616365686f6c646572, 'Włochy'),
(34, 'Lamborghini', 'Urus', 2020, 'SUV', 0x706c616365686f6c646572, 0x706c616365686f6c646572, 'Włochy'),
(35, 'Bentley', 'Continental GT', 2018, 'coupe', 0x706c616365686f6c646572, 0x706c616365686f6c646572, 'Wielka Brytania'),
(36, 'Rolls-Royce', 'Cullinan', 2019, 'SUV', 0x706c616365686f6c646572, 0x706c616365686f6c646572, 'Wielka Brytania'),
(37, 'Opel', 'Astra', 2022, 'hatchback', 0x706c616365686f6c646572, 0x706c616365686f6c646572, 'Niemcy'),
(38, 'McLaren', '720S', 2021, 'coupe', 0x706c616365686f6c646572, 0x706c616365686f6c646572, 'Wielka Brytania'),
(39, 'Bugatti', 'Chiron', 2018, 'coupe', 0x706c616365686f6c646572, 0x706c616365686f6c646572, 'Francja'),
(40, 'Pagani', 'Huayra', 2019, 'coupe', 0x706c616365686f6c646572, 0x706c616365686f6c646572, 'Włochy'),
(41, 'Koenigsegg', 'Regera', 2020, 'coupe', 0x706c616365686f6c646572, 0x706c616365686f6c646572, 'Szwecja'),
(42, 'Lotus', 'Evora', 2021, 'coupe', 0x706c616365686f6c646572, 0x706c616365686f6c646572, 'Wielka Brytania'),
(43, 'Morgan', 'Plus Six', 2019, 'coupe', 0x706c616365686f6c646572, 0x706c616365686f6c646572, 'Wielka Brytania');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `cardle`
--
ALTER TABLE `cardle`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cardle`
--
ALTER TABLE `cardle`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
