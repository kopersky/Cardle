-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Maj 15, 2025 at 06:17 PM
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
CREATE DATABASE IF NOT EXISTS `cardle` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `cardle`;

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
  `logo` varchar(20) DEFAULT NULL,
  `zdjecia` varchar(20) DEFAULT NULL,
  `kraj` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cardle`
--

INSERT INTO `cardle` (`id`, `marka`, `model`, `rok_produkcji`, `typ_nadwozia`, `logo`, `zdjecia`, `kraj`) VALUES
(1, 'Toyota', 'Corolla', 2020, 'sedan', 'toyota.jpg', 'corolla.jpg', 'Japonia'),
(2, 'Ford', 'Mustang', 2018, 'coupe', 'ford.jpg', 'mustang.jpg', 'Stany Zjednoczone'),
(3, 'Honda', 'Civic', 2019, 'hatchback', 'honda.jpg', 'civic.jpg', 'Japonia'),
(4, 'BMW', 'X5', 2021, 'SUV', 'bmw.jpg', 'x5.jpg', 'Niemcy'),
(5, 'Audi', 'A4', 2022, 'sedan', 'audi.jpg', 'a4.jpg', 'Niemcy'),
(6, 'Mercedes', 'C-Class', 2020, 'sedan', 'mercedes.jpg', 'c-class.jpg', 'Niemcy'),
(7, 'Volkswagen', 'Golf', 2019, 'hatchback', 'volkswagen.jpg', 'golf.jpg', 'Niemcy'),
(8, 'Lexus', 'RX', 2021, 'SUV', 'lexus.jpg', 'rx.jpg', 'Japonia'),
(9, 'Nissan', 'Altima', 2020, 'sedan', 'nissan.jpg', 'altima.jpg', 'Japonia'),
(10, 'Chevrolet', 'Camaro', 2018, 'coupe', 'chevrolet.jpg', 'camaro.jpg', 'Stany Zjednoczone'),
(11, 'Mazda', 'CX-5', 2019, 'SUV', 'mazda.jpg', 'cx-5.jpg', 'Japonia'),
(12, 'Hyundai', 'Elantra', 2020, 'sedan', 'hyundai.jpg', 'elantra.jpg', 'Korea Południowa'),
(13, 'Kia', 'Sportage', 2021, 'SUV', 'kia.jpg', 'sportage.jpg', 'Korea Południowa'),
(14, 'Subaru', 'Outback', 2019, 'SUV', 'subaru.jpg', 'outback.jpg', 'Japonia'),
(15, 'Volvo', 'XC60', 2020, 'SUV', 'volvo.jpg', 'xc60.jpg', 'Szwecja'),
(16, 'Tesla', 'Model 3', 2021, 'sedan', 'tesla.jpg', 'model_3.jpg', 'Stany Zjednoczone'),
(17, 'Porsche', '911', 2018, 'coupe', 'porsche.jpg', '911.jpg', 'Niemcy'),
(18, 'Jeep', 'Grand Cherokee', 2020, 'SUV', 'jeep.jpg', 'grand_cherokee.jpg', 'Stany Zjednoczone'),
(19, 'BMW', 'M5', 2005, 'sedan', 'bmw.jpg', 'm5.jpg', 'Niemcy'),
(20, 'Jaguar', 'F-Type', 2021, 'coupe', 'jaguar.jpg', 'f-type.jpg', 'Wielka Brytania'),
(21, 'Infiniti', 'Q50', 2020, 'sedan', 'infiniti.jpg', 'q50.jpg', 'Japonia'),
(22, 'Peugot', '208', 2020, 'hatchback', 'peugot.jpg', '208.jpg', 'Francja'),
(23, 'Dodge', 'Challenger', 2018, 'coupe', 'dodge.jpg', 'challenger.jpg', 'Stany Zjednoczone'),
(24, 'Chrysler', '300', 2020, 'sedan', 'chrysler.jpg', '300.jpg', 'Stany Zjednoczone'),
(25, 'Acura', 'RDX', 2021, 'SUV', 'acura.jpg', 'rdx.jpg', 'Japonia'),
(26, 'Genesis', 'G70', 2019, 'sedan', 'genesis.jpg', 'g70.jpg', 'Korea Południowa'),
(27, 'Mini', 'Cooper', 2020, 'hatchback', 'mini.jpg', 'cooper.jpg', 'Wielka Brytania'),
(28, 'Cadillac', 'XT5', 2018, 'SUV', 'cadillac.jpg', 'xt5.jpg', 'Stany Zjednoczone'),
(29, 'GMC', 'Terrain', 2019, 'SUV', 'gmc.jpg', 'terrain.jpg', 'Stany Zjednoczone'),
(30, 'Buick', 'Enclave', 2020, 'SUV', 'buick.jpg', 'enclave.jpg', 'Stany Zjednoczone'),
(31, 'Fiat', '500', 2018, 'hatchback', 'fiat.jpg', '500.jpg', 'Włochy'),
(32, 'Maserati', 'Ghibli', 2021, 'sedan', 'maserati.jpg', 'ghibli.jpg', 'Włochy'),
(33, 'Ferrari', 'Portofino', 2019, 'coupe', 'ferrari.jpg', 'portofino.jpg', 'Włochy'),
(34, 'Lamborghini', 'Urus', 2020, 'SUV', 'lamborghini.jpg', 'urus.jpg', 'Włochy'),
(35, 'Bentley', 'Continental GT', 2018, 'coupe', 'bentley.jpg', 'continental_gt.jpg', 'Wielka Brytania'),
(36, 'Rolls-Royce', 'Cullinan', 2019, 'SUV', 'rolls-royce.jpg', 'cullinan.jpg', 'Wielka Brytania'),
(37, 'Opel', 'Astra', 2022, 'hatchback', 'opel.jpg', 'astra.jpg', 'Niemcy'),
(38, 'McLaren', '720S', 2021, 'coupe', 'mclaren.jpg', '720s.jpg', 'Wielka Brytania'),
(39, 'Bugatti', 'Chiron', 2018, 'coupe', 'bugatti.jpg', 'chiron.jpg', 'Francja'),
(40, 'Pagani', 'Huayra', 2019, 'coupe', 'pagani.jpg', 'huayra.jpg', 'Włochy'),
(41, 'Koenigsegg', 'Regera', 2020, 'coupe', 'koenigsegg.jpg', 'regera.jpg', 'Szwecja'),
(42, 'Lotus', 'Evora', 2021, 'coupe', 'lotus.jpg', 'evora.jpg', 'Wielka Brytania'),
(43, 'Morgan', 'Plus Six', 2019, 'coupe', 'morgan.jpg', 'plus_six.jpg', 'Wielka Brytania');

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
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"cardle\",\"table\":\"cardle\"}]');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'cardle', 'cardle', '{\"sorted_col\":\"`cardle`.`id` DESC\"}', '2025-05-15 15:46:00');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2025-05-15 15:25:43', '{\"Console\\/Mode\":\"collapse\",\"lang\":\"pl\"}');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indeksy dla tabeli `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indeksy dla tabeli `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indeksy dla tabeli `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indeksy dla tabeli `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indeksy dla tabeli `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indeksy dla tabeli `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indeksy dla tabeli `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indeksy dla tabeli `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indeksy dla tabeli `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indeksy dla tabeli `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indeksy dla tabeli `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indeksy dla tabeli `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indeksy dla tabeli `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indeksy dla tabeli `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indeksy dla tabeli `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indeksy dla tabeli `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indeksy dla tabeli `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
