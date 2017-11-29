-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Gegenereerd op: 29 nov 2017 om 14:48
-- Serverversie: 5.6.35
-- PHP-versie: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `omeka`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `migration`
--

CREATE TABLE `migration` (
  `version` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `migration`
--

INSERT INTO `migration` (`version`) VALUES
('20141121120000'),
('20141211120000'),
('20141215120000'),
('20141219184319'),
('20150106210053'),
('20150109190101'),
('20150128173812'),
('20150128180520'),
('20150201194316'),
('20150202160745'),
('20150203202532'),
('20150209192910'),
('20150218155814'),
('20150220155729'),
('20150226221743'),
('20150303192341'),
('20150319035524'),
('20150320194821'),
('20150429170214'),
('20150501203942'),
('20150511211047'),
('20150521181011'),
('20150528125005'),
('20150529160444'),
('20150616132549'),
('20150626193328'),
('20150627145220'),
('20150628141620'),
('20150629192701'),
('20150629221359'),
('20150630005147'),
('20150728172701'),
('20150806150941'),
('20150821171431'),
('20150908193746'),
('20150909145117'),
('20150916121137'),
('20150922174604'),
('20150922174954'),
('20150929152439'),
('20151009191632'),
('20151013170923'),
('20151015195314'),
('20151103174927'),
('20151117184904'),
('20151118190929'),
('20151119201134'),
('20151120223604'),
('20151123190010'),
('20151130154937'),
('20151217193223'),
('20160106160716'),
('20160113212944'),
('20160322204925'),
('20160526234310'),
('20160721194438'),
('20160803203901'),
('20160824192300'),
('20160825154935'),
('20160830145709'),
('20160920141904'),
('20160930163058'),
('20161019121324'),
('20161019194214'),
('20161019205745'),
('20161020191900'),
('20161020193610'),
('20170601084322'),
('20170804091733');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `omeka_collections`
--

CREATE TABLE `omeka_collections` (
  `id` int(10) UNSIGNED NOT NULL,
  `public` tinyint(4) NOT NULL,
  `featured` tinyint(4) NOT NULL,
  `added` timestamp NOT NULL DEFAULT '1999-12-31 23:00:00',
  `modified` timestamp NOT NULL DEFAULT '1999-12-31 23:00:00',
  `owner_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `omeka_collections`
--

INSERT INTO `omeka_collections` (`id`, `public`, `featured`, `added`, `modified`, `owner_id`) VALUES
(1, 1, 1, '2017-10-05 10:25:18', '2017-11-10 11:52:40', 1),
(2, 1, 0, '2017-10-13 12:43:52', '2017-11-10 11:52:30', 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `omeka_csv_import_imported_items`
--

CREATE TABLE `omeka_csv_import_imported_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `item_id` int(10) UNSIGNED NOT NULL,
  `import_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `omeka_csv_import_imported_items`
--

INSERT INTO `omeka_csv_import_imported_items` (`id`, `item_id`, `import_id`) VALUES
(1, 11, 5),
(2, 12, 5),
(3, 13, 5),
(4, 24, 8),
(5, 25, 8),
(6, 26, 8),
(7, 27, 9),
(8, 28, 9),
(9, 29, 9),
(10, 31, 10),
(11, 32, 10),
(12, 33, 10),
(13, 34, 11),
(14, 35, 11),
(15, 36, 11);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `omeka_csv_import_imports`
--

CREATE TABLE `omeka_csv_import_imports` (
  `id` int(10) UNSIGNED NOT NULL,
  `item_type_id` int(10) UNSIGNED DEFAULT NULL,
  `collection_id` int(10) UNSIGNED DEFAULT NULL,
  `owner_id` int(10) UNSIGNED NOT NULL,
  `delimiter` varchar(1) COLLATE utf8_unicode_ci NOT NULL,
  `original_filename` text COLLATE utf8_unicode_ci NOT NULL,
  `file_path` text COLLATE utf8_unicode_ci NOT NULL,
  `file_position` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `skipped_row_count` int(10) UNSIGNED NOT NULL,
  `skipped_item_count` int(10) UNSIGNED NOT NULL,
  `is_public` tinyint(1) DEFAULT '0',
  `is_featured` tinyint(1) DEFAULT '0',
  `serialized_column_maps` text COLLATE utf8_unicode_ci NOT NULL,
  `added` timestamp NOT NULL DEFAULT '1999-12-31 23:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `omeka_csv_import_imports`
--

INSERT INTO `omeka_csv_import_imports` (`id`, `item_type_id`, `collection_id`, `owner_id`, `delimiter`, `original_filename`, `file_path`, `file_position`, `status`, `skipped_row_count`, `skipped_item_count`, `is_public`, `is_featured`, `serialized_column_maps`, `added`) VALUES
(1, 6, 1, 1, ',', 'test.csv', '/var/folders/71/kj4jx9qx1czbc9c6t_4g6zqh0000gn/T/a70a3be0f0a1b391233a8f600812429c', 0, 'queued', 0, 0, 0, 0, 'O:23:\"CsvImport_ColumnMap_Set\":1:{s:30:\"\0CsvImport_ColumnMap_Set\0_maps\";a:5:{i:0;O:27:\"CsvImport_ColumnMap_Element\":5:{s:36:\"\0CsvImport_ColumnMap_Element\0_isHtml\";b:0;s:39:\"\0CsvImport_ColumnMap_Element\0_elementId\";s:2:\"50\";s:46:\"\0CsvImport_ColumnMap_Element\0_elementDelimiter\";s:0:\"\";s:14:\"\0*\0_columnName\";s:5:\"title\";s:8:\"\0*\0_type\";s:7:\"Element\";}i:1;O:27:\"CsvImport_ColumnMap_Element\":5:{s:36:\"\0CsvImport_ColumnMap_Element\0_isHtml\";b:0;s:39:\"\0CsvImport_ColumnMap_Element\0_elementId\";s:2:\"39\";s:46:\"\0CsvImport_ColumnMap_Element\0_elementDelimiter\";s:0:\"\";s:14:\"\0*\0_columnName\";s:7:\"creator\";s:8:\"\0*\0_type\";s:7:\"Element\";}i:2;O:27:\"CsvImport_ColumnMap_Element\":5:{s:36:\"\0CsvImport_ColumnMap_Element\0_isHtml\";b:0;s:39:\"\0CsvImport_ColumnMap_Element\0_elementId\";s:2:\"41\";s:46:\"\0CsvImport_ColumnMap_Element\0_elementDelimiter\";s:0:\"\";s:14:\"\0*\0_columnName\";s:11:\"description\";s:8:\"\0*\0_type\";s:7:\"Element\";}i:3;O:23:\"CsvImport_ColumnMap_Tag\":3:{s:38:\"\0CsvImport_ColumnMap_Tag\0_tagDelimiter\";s:1:\",\";s:14:\"\0*\0_columnName\";s:4:\"tags\";s:8:\"\0*\0_type\";s:3:\"Tag\";}i:4;O:24:\"CsvImport_ColumnMap_File\":3:{s:40:\"\0CsvImport_ColumnMap_File\0_fileDelimiter\";s:1:\",\";s:14:\"\0*\0_columnName\";s:4:\"file\";s:8:\"\0*\0_type\";s:4:\"File\";}}}', '2017-10-13 07:52:52'),
(2, NULL, NULL, 1, ',', 'test.csv', '/var/folders/71/kj4jx9qx1czbc9c6t_4g6zqh0000gn/T/41c411943c0cd5593a24e1610677a891', 0, 'queued', 0, 0, 0, 0, 'O:23:\"CsvImport_ColumnMap_Set\":1:{s:30:\"\0CsvImport_ColumnMap_Set\0_maps\";a:5:{i:0;O:27:\"CsvImport_ColumnMap_Element\":5:{s:36:\"\0CsvImport_ColumnMap_Element\0_isHtml\";b:0;s:39:\"\0CsvImport_ColumnMap_Element\0_elementId\";s:2:\"50\";s:46:\"\0CsvImport_ColumnMap_Element\0_elementDelimiter\";s:0:\"\";s:14:\"\0*\0_columnName\";s:5:\"title\";s:8:\"\0*\0_type\";s:7:\"Element\";}i:1;O:27:\"CsvImport_ColumnMap_Element\":5:{s:36:\"\0CsvImport_ColumnMap_Element\0_isHtml\";b:0;s:39:\"\0CsvImport_ColumnMap_Element\0_elementId\";s:2:\"39\";s:46:\"\0CsvImport_ColumnMap_Element\0_elementDelimiter\";s:0:\"\";s:14:\"\0*\0_columnName\";s:7:\"creator\";s:8:\"\0*\0_type\";s:7:\"Element\";}i:2;O:27:\"CsvImport_ColumnMap_Element\":5:{s:36:\"\0CsvImport_ColumnMap_Element\0_isHtml\";b:0;s:39:\"\0CsvImport_ColumnMap_Element\0_elementId\";s:2:\"41\";s:46:\"\0CsvImport_ColumnMap_Element\0_elementDelimiter\";s:0:\"\";s:14:\"\0*\0_columnName\";s:11:\"description\";s:8:\"\0*\0_type\";s:7:\"Element\";}i:3;O:23:\"CsvImport_ColumnMap_Tag\":3:{s:38:\"\0CsvImport_ColumnMap_Tag\0_tagDelimiter\";s:1:\",\";s:14:\"\0*\0_columnName\";s:4:\"tags\";s:8:\"\0*\0_type\";s:3:\"Tag\";}i:4;O:24:\"CsvImport_ColumnMap_File\":3:{s:40:\"\0CsvImport_ColumnMap_File\0_fileDelimiter\";s:1:\",\";s:14:\"\0*\0_columnName\";s:4:\"file\";s:8:\"\0*\0_type\";s:4:\"File\";}}}', '2017-10-13 08:01:59'),
(3, NULL, NULL, 1, ',', 'test.csv', '/var/folders/71/kj4jx9qx1czbc9c6t_4g6zqh0000gn/T/98db259be9dabbce3693cad1c80b0b26', 0, 'queued', 0, 0, 0, 0, 'O:23:\"CsvImport_ColumnMap_Set\":1:{s:30:\"\0CsvImport_ColumnMap_Set\0_maps\";a:5:{i:0;O:27:\"CsvImport_ColumnMap_Element\":5:{s:36:\"\0CsvImport_ColumnMap_Element\0_isHtml\";b:0;s:39:\"\0CsvImport_ColumnMap_Element\0_elementId\";s:2:\"50\";s:46:\"\0CsvImport_ColumnMap_Element\0_elementDelimiter\";s:0:\"\";s:14:\"\0*\0_columnName\";s:5:\"title\";s:8:\"\0*\0_type\";s:7:\"Element\";}i:1;O:27:\"CsvImport_ColumnMap_Element\":5:{s:36:\"\0CsvImport_ColumnMap_Element\0_isHtml\";b:0;s:39:\"\0CsvImport_ColumnMap_Element\0_elementId\";s:2:\"39\";s:46:\"\0CsvImport_ColumnMap_Element\0_elementDelimiter\";s:0:\"\";s:14:\"\0*\0_columnName\";s:7:\"creator\";s:8:\"\0*\0_type\";s:7:\"Element\";}i:2;O:27:\"CsvImport_ColumnMap_Element\":5:{s:36:\"\0CsvImport_ColumnMap_Element\0_isHtml\";b:0;s:39:\"\0CsvImport_ColumnMap_Element\0_elementId\";s:2:\"41\";s:46:\"\0CsvImport_ColumnMap_Element\0_elementDelimiter\";s:0:\"\";s:14:\"\0*\0_columnName\";s:11:\"description\";s:8:\"\0*\0_type\";s:7:\"Element\";}i:3;O:23:\"CsvImport_ColumnMap_Tag\":3:{s:38:\"\0CsvImport_ColumnMap_Tag\0_tagDelimiter\";s:1:\",\";s:14:\"\0*\0_columnName\";s:4:\"tags\";s:8:\"\0*\0_type\";s:3:\"Tag\";}i:4;O:24:\"CsvImport_ColumnMap_File\":3:{s:40:\"\0CsvImport_ColumnMap_File\0_fileDelimiter\";s:1:\",\";s:14:\"\0*\0_columnName\";s:4:\"file\";s:8:\"\0*\0_type\";s:4:\"File\";}}}', '2017-10-13 08:04:55'),
(4, NULL, NULL, 1, ',', 'test_automap_columns_to_elements.csv', '/var/folders/71/kj4jx9qx1czbc9c6t_4g6zqh0000gn/T/fbb7da216124fe0986cbf276bae77480', 0, 'queued', 0, 0, 0, 0, 'O:23:\"CsvImport_ColumnMap_Set\":1:{s:30:\"\0CsvImport_ColumnMap_Set\0_maps\";a:5:{i:0;O:27:\"CsvImport_ColumnMap_Element\":5:{s:36:\"\0CsvImport_ColumnMap_Element\0_isHtml\";b:0;s:39:\"\0CsvImport_ColumnMap_Element\0_elementId\";s:2:\"50\";s:46:\"\0CsvImport_ColumnMap_Element\0_elementDelimiter\";s:0:\"\";s:14:\"\0*\0_columnName\";s:17:\"Dublin Core:Title\";s:8:\"\0*\0_type\";s:7:\"Element\";}i:1;O:27:\"CsvImport_ColumnMap_Element\":5:{s:36:\"\0CsvImport_ColumnMap_Element\0_isHtml\";b:0;s:39:\"\0CsvImport_ColumnMap_Element\0_elementId\";s:2:\"39\";s:46:\"\0CsvImport_ColumnMap_Element\0_elementDelimiter\";s:0:\"\";s:14:\"\0*\0_columnName\";s:19:\"Dublin Core:Creator\";s:8:\"\0*\0_type\";s:7:\"Element\";}i:2;O:27:\"CsvImport_ColumnMap_Element\":5:{s:36:\"\0CsvImport_ColumnMap_Element\0_isHtml\";b:0;s:39:\"\0CsvImport_ColumnMap_Element\0_elementId\";s:2:\"41\";s:46:\"\0CsvImport_ColumnMap_Element\0_elementDelimiter\";s:0:\"\";s:14:\"\0*\0_columnName\";s:23:\"Dublin Core:Description\";s:8:\"\0*\0_type\";s:7:\"Element\";}i:3;O:23:\"CsvImport_ColumnMap_Tag\":3:{s:38:\"\0CsvImport_ColumnMap_Tag\0_tagDelimiter\";s:1:\",\";s:14:\"\0*\0_columnName\";s:4:\"tags\";s:8:\"\0*\0_type\";s:3:\"Tag\";}i:4;O:24:\"CsvImport_ColumnMap_File\":3:{s:40:\"\0CsvImport_ColumnMap_File\0_fileDelimiter\";s:1:\",\";s:14:\"\0*\0_columnName\";s:22:\"Item Type Metadata:URL\";s:8:\"\0*\0_type\";s:4:\"File\";}}}', '2017-10-13 08:27:15'),
(5, NULL, NULL, 1, ',', 'test_automap_columns_to_elements.csv', '/var/folders/71/kj4jx9qx1czbc9c6t_4g6zqh0000gn/T/b6941969f0f565a87ed1eebf7c951326', 699, 'completed', 0, 0, 0, 0, 'O:23:\"CsvImport_ColumnMap_Set\":1:{s:30:\"\0CsvImport_ColumnMap_Set\0_maps\";a:5:{i:0;O:27:\"CsvImport_ColumnMap_Element\":5:{s:36:\"\0CsvImport_ColumnMap_Element\0_isHtml\";b:0;s:39:\"\0CsvImport_ColumnMap_Element\0_elementId\";s:2:\"50\";s:46:\"\0CsvImport_ColumnMap_Element\0_elementDelimiter\";s:0:\"\";s:14:\"\0*\0_columnName\";s:17:\"Dublin Core:Title\";s:8:\"\0*\0_type\";s:7:\"Element\";}i:1;O:27:\"CsvImport_ColumnMap_Element\":5:{s:36:\"\0CsvImport_ColumnMap_Element\0_isHtml\";b:0;s:39:\"\0CsvImport_ColumnMap_Element\0_elementId\";s:2:\"39\";s:46:\"\0CsvImport_ColumnMap_Element\0_elementDelimiter\";s:0:\"\";s:14:\"\0*\0_columnName\";s:19:\"Dublin Core:Creator\";s:8:\"\0*\0_type\";s:7:\"Element\";}i:2;O:27:\"CsvImport_ColumnMap_Element\":5:{s:36:\"\0CsvImport_ColumnMap_Element\0_isHtml\";b:0;s:39:\"\0CsvImport_ColumnMap_Element\0_elementId\";s:2:\"41\";s:46:\"\0CsvImport_ColumnMap_Element\0_elementDelimiter\";s:0:\"\";s:14:\"\0*\0_columnName\";s:23:\"Dublin Core:Description\";s:8:\"\0*\0_type\";s:7:\"Element\";}i:3;O:23:\"CsvImport_ColumnMap_Tag\":3:{s:38:\"\0CsvImport_ColumnMap_Tag\0_tagDelimiter\";s:1:\",\";s:14:\"\0*\0_columnName\";s:4:\"tags\";s:8:\"\0*\0_type\";s:3:\"Tag\";}i:4;O:24:\"CsvImport_ColumnMap_File\":3:{s:40:\"\0CsvImport_ColumnMap_File\0_fileDelimiter\";s:1:\",\";s:14:\"\0*\0_columnName\";s:22:\"Item Type Metadata:URL\";s:8:\"\0*\0_type\";s:4:\"File\";}}}', '2017-10-13 08:30:51'),
(6, 6, NULL, 1, ';', 'test.csv', '/var/folders/71/kj4jx9qx1czbc9c6t_4g6zqh0000gn/T/fbfb7f7a05ea14762f34d5e779210304', 811, 'completed', 0, 1, 1, 0, 'O:23:\"CsvImport_ColumnMap_Set\":1:{s:30:\"\0CsvImport_ColumnMap_Set\0_maps\";a:19:{i:0;O:27:\"CsvImport_ColumnMap_Element\":5:{s:36:\"\0CsvImport_ColumnMap_Element\0_isHtml\";b:0;s:39:\"\0CsvImport_ColumnMap_Element\0_elementId\";s:2:\"50\";s:46:\"\0CsvImport_ColumnMap_Element\0_elementDelimiter\";s:0:\"\";s:14:\"\0*\0_columnName\";s:10:\"Titel_lang\";s:8:\"\0*\0_type\";s:7:\"Element\";}i:1;O:27:\"CsvImport_ColumnMap_Element\":5:{s:36:\"\0CsvImport_ColumnMap_Element\0_isHtml\";b:0;s:39:\"\0CsvImport_ColumnMap_Element\0_elementId\";s:2:\"50\";s:46:\"\0CsvImport_ColumnMap_Element\0_elementDelimiter\";s:0:\"\";s:14:\"\0*\0_columnName\";s:10:\"Titel_kort\";s:8:\"\0*\0_type\";s:7:\"Element\";}i:2;O:24:\"CsvImport_ColumnMap_File\":3:{s:40:\"\0CsvImport_ColumnMap_File\0_fileDelimiter\";s:1:\",\";s:14:\"\0*\0_columnName\";s:13:\"File_voorkant\";s:8:\"\0*\0_type\";s:4:\"File\";}i:3;O:24:\"CsvImport_ColumnMap_File\":3:{s:40:\"\0CsvImport_ColumnMap_File\0_fileDelimiter\";s:1:\",\";s:14:\"\0*\0_columnName\";s:15:\"File_achterkant\";s:8:\"\0*\0_type\";s:4:\"File\";}i:4;O:27:\"CsvImport_ColumnMap_Element\":5:{s:36:\"\0CsvImport_ColumnMap_Element\0_isHtml\";b:0;s:39:\"\0CsvImport_ColumnMap_Element\0_elementId\";s:2:\"49\";s:46:\"\0CsvImport_ColumnMap_Element\0_elementDelimiter\";s:0:\"\";s:14:\"\0*\0_columnName\";s:7:\"Subject\";s:8:\"\0*\0_type\";s:7:\"Element\";}i:5;O:27:\"CsvImport_ColumnMap_Element\":5:{s:36:\"\0CsvImport_ColumnMap_Element\0_isHtml\";b:0;s:39:\"\0CsvImport_ColumnMap_Element\0_elementId\";s:2:\"41\";s:46:\"\0CsvImport_ColumnMap_Element\0_elementDelimiter\";s:0:\"\";s:14:\"\0*\0_columnName\";s:11:\"Description\";s:8:\"\0*\0_type\";s:7:\"Element\";}i:6;O:27:\"CsvImport_ColumnMap_Element\":5:{s:36:\"\0CsvImport_ColumnMap_Element\0_isHtml\";b:0;s:39:\"\0CsvImport_ColumnMap_Element\0_elementId\";s:2:\"42\";s:46:\"\0CsvImport_ColumnMap_Element\0_elementDelimiter\";s:0:\"\";s:14:\"\0*\0_columnName\";s:4:\"Type\";s:8:\"\0*\0_type\";s:7:\"Element\";}i:7;O:27:\"CsvImport_ColumnMap_Element\":5:{s:36:\"\0CsvImport_ColumnMap_Element\0_isHtml\";b:0;s:39:\"\0CsvImport_ColumnMap_Element\0_elementId\";s:2:\"42\";s:46:\"\0CsvImport_ColumnMap_Element\0_elementDelimiter\";s:0:\"\";s:14:\"\0*\0_columnName\";s:5:\"Type2\";s:8:\"\0*\0_type\";s:7:\"Element\";}i:8;O:27:\"CsvImport_ColumnMap_Element\":5:{s:36:\"\0CsvImport_ColumnMap_Element\0_isHtml\";b:0;s:39:\"\0CsvImport_ColumnMap_Element\0_elementId\";s:2:\"42\";s:46:\"\0CsvImport_ColumnMap_Element\0_elementDelimiter\";s:0:\"\";s:14:\"\0*\0_columnName\";s:5:\"Type3\";s:8:\"\0*\0_type\";s:7:\"Element\";}i:9;O:27:\"CsvImport_ColumnMap_Element\":5:{s:36:\"\0CsvImport_ColumnMap_Element\0_isHtml\";b:0;s:39:\"\0CsvImport_ColumnMap_Element\0_elementId\";s:2:\"38\";s:46:\"\0CsvImport_ColumnMap_Element\0_elementDelimiter\";s:0:\"\";s:14:\"\0*\0_columnName\";s:7:\"Locatie\";s:8:\"\0*\0_type\";s:7:\"Element\";}i:10;O:27:\"CsvImport_ColumnMap_Element\":5:{s:36:\"\0CsvImport_ColumnMap_Element\0_isHtml\";b:0;s:39:\"\0CsvImport_ColumnMap_Element\0_elementId\";s:2:\"45\";s:46:\"\0CsvImport_ColumnMap_Element\0_elementDelimiter\";s:0:\"\";s:14:\"\0*\0_columnName\";s:8:\"Uitgever\";s:8:\"\0*\0_type\";s:7:\"Element\";}i:11;O:27:\"CsvImport_ColumnMap_Element\":5:{s:36:\"\0CsvImport_ColumnMap_Element\0_isHtml\";b:0;s:39:\"\0CsvImport_ColumnMap_Element\0_elementId\";s:2:\"38\";s:46:\"\0CsvImport_ColumnMap_Element\0_elementDelimiter\";s:0:\"\";s:14:\"\0*\0_columnName\";s:16:\"Locatie_Uitgever\";s:8:\"\0*\0_type\";s:7:\"Element\";}i:12;O:27:\"CsvImport_ColumnMap_Element\":5:{s:36:\"\0CsvImport_ColumnMap_Element\0_isHtml\";b:0;s:39:\"\0CsvImport_ColumnMap_Element\0_elementId\";s:2:\"40\";s:46:\"\0CsvImport_ColumnMap_Element\0_elementDelimiter\";s:0:\"\";s:14:\"\0*\0_columnName\";s:5:\"Datum\";s:8:\"\0*\0_type\";s:7:\"Element\";}i:13;O:27:\"CsvImport_ColumnMap_Element\":5:{s:36:\"\0CsvImport_ColumnMap_Element\0_isHtml\";b:0;s:39:\"\0CsvImport_ColumnMap_Element\0_elementId\";s:2:\"10\";s:46:\"\0CsvImport_ColumnMap_Element\0_elementDelimiter\";s:0:\"\";s:14:\"\0*\0_columnName\";s:10:\"Afmetingen\";s:8:\"\0*\0_type\";s:7:\"Element\";}i:14;O:27:\"CsvImport_ColumnMap_Element\":5:{s:36:\"\0CsvImport_ColumnMap_Element\0_isHtml\";b:0;s:39:\"\0CsvImport_ColumnMap_Element\0_elementId\";s:2:\"44\";s:46:\"\0CsvImport_ColumnMap_Element\0_elementDelimiter\";s:0:\"\";s:14:\"\0*\0_columnName\";s:4:\"Taal\";s:8:\"\0*\0_type\";s:7:\"Element\";}i:15;O:27:\"CsvImport_ColumnMap_Element\":5:{s:36:\"\0CsvImport_ColumnMap_Element\0_isHtml\";b:0;s:39:\"\0CsvImport_ColumnMap_Element\0_elementId\";s:2:\"47\";s:46:\"\0CsvImport_ColumnMap_Element\0_elementDelimiter\";s:0:\"\";s:14:\"\0*\0_columnName\";s:7:\"Rechten\";s:8:\"\0*\0_type\";s:7:\"Element\";}i:16;O:24:\"CsvImport_ColumnMap_File\":3:{s:40:\"\0CsvImport_ColumnMap_File\0_fileDelimiter\";s:1:\",\";s:14:\"\0*\0_columnName\";s:4:\"Tag1\";s:8:\"\0*\0_type\";s:4:\"File\";}i:17;O:24:\"CsvImport_ColumnMap_File\":3:{s:40:\"\0CsvImport_ColumnMap_File\0_fileDelimiter\";s:1:\",\";s:14:\"\0*\0_columnName\";s:4:\"Tag2\";s:8:\"\0*\0_type\";s:4:\"File\";}i:18;O:24:\"CsvImport_ColumnMap_File\":3:{s:40:\"\0CsvImport_ColumnMap_File\0_fileDelimiter\";s:1:\",\";s:14:\"\0*\0_columnName\";s:4:\"Tag3\";s:8:\"\0*\0_type\";s:4:\"File\";}}}', '2017-10-13 10:12:43'),
(7, 6, NULL, 1, ',', 'test.csv', '/var/folders/71/kj4jx9qx1czbc9c6t_4g6zqh0000gn/T/22d187a7580c6b9a808ef8d70041b0c5', 645, 'completed', 0, 3, 1, 0, 'O:23:\"CsvImport_ColumnMap_Set\":1:{s:30:\"\0CsvImport_ColumnMap_Set\0_maps\";a:5:{i:0;O:27:\"CsvImport_ColumnMap_Element\":5:{s:36:\"\0CsvImport_ColumnMap_Element\0_isHtml\";b:0;s:39:\"\0CsvImport_ColumnMap_Element\0_elementId\";s:2:\"50\";s:46:\"\0CsvImport_ColumnMap_Element\0_elementDelimiter\";s:0:\"\";s:14:\"\0*\0_columnName\";s:5:\"title\";s:8:\"\0*\0_type\";s:7:\"Element\";}i:1;O:27:\"CsvImport_ColumnMap_Element\":5:{s:36:\"\0CsvImport_ColumnMap_Element\0_isHtml\";b:0;s:39:\"\0CsvImport_ColumnMap_Element\0_elementId\";s:2:\"50\";s:46:\"\0CsvImport_ColumnMap_Element\0_elementDelimiter\";s:0:\"\";s:14:\"\0*\0_columnName\";s:7:\"creator\";s:8:\"\0*\0_type\";s:7:\"Element\";}i:2;O:27:\"CsvImport_ColumnMap_Element\":5:{s:36:\"\0CsvImport_ColumnMap_Element\0_isHtml\";b:0;s:39:\"\0CsvImport_ColumnMap_Element\0_elementId\";s:2:\"41\";s:46:\"\0CsvImport_ColumnMap_Element\0_elementDelimiter\";s:0:\"\";s:14:\"\0*\0_columnName\";s:11:\"description\";s:8:\"\0*\0_type\";s:7:\"Element\";}i:3;O:24:\"CsvImport_ColumnMap_File\":3:{s:40:\"\0CsvImport_ColumnMap_File\0_fileDelimiter\";s:1:\",\";s:14:\"\0*\0_columnName\";s:4:\"tags\";s:8:\"\0*\0_type\";s:4:\"File\";}i:4;O:23:\"CsvImport_ColumnMap_Tag\":3:{s:38:\"\0CsvImport_ColumnMap_Tag\0_tagDelimiter\";s:1:\",\";s:14:\"\0*\0_columnName\";s:4:\"file\";s:8:\"\0*\0_type\";s:3:\"Tag\";}}}', '2017-10-13 10:15:43'),
(8, 6, NULL, 1, ',', 'test.csv', '/var/folders/71/kj4jx9qx1czbc9c6t_4g6zqh0000gn/T/edb108603ec14d31a3c876be0825f014', 645, 'completed', 0, 0, 0, 0, 'O:23:\"CsvImport_ColumnMap_Set\":1:{s:30:\"\0CsvImport_ColumnMap_Set\0_maps\";a:5:{i:0;O:27:\"CsvImport_ColumnMap_Element\":5:{s:36:\"\0CsvImport_ColumnMap_Element\0_isHtml\";b:0;s:39:\"\0CsvImport_ColumnMap_Element\0_elementId\";s:2:\"50\";s:46:\"\0CsvImport_ColumnMap_Element\0_elementDelimiter\";s:0:\"\";s:14:\"\0*\0_columnName\";s:5:\"title\";s:8:\"\0*\0_type\";s:7:\"Element\";}i:1;O:27:\"CsvImport_ColumnMap_Element\":5:{s:36:\"\0CsvImport_ColumnMap_Element\0_isHtml\";b:0;s:39:\"\0CsvImport_ColumnMap_Element\0_elementId\";s:2:\"39\";s:46:\"\0CsvImport_ColumnMap_Element\0_elementDelimiter\";s:0:\"\";s:14:\"\0*\0_columnName\";s:7:\"creator\";s:8:\"\0*\0_type\";s:7:\"Element\";}i:2;O:27:\"CsvImport_ColumnMap_Element\":5:{s:36:\"\0CsvImport_ColumnMap_Element\0_isHtml\";b:0;s:39:\"\0CsvImport_ColumnMap_Element\0_elementId\";s:2:\"41\";s:46:\"\0CsvImport_ColumnMap_Element\0_elementDelimiter\";s:0:\"\";s:14:\"\0*\0_columnName\";s:11:\"description\";s:8:\"\0*\0_type\";s:7:\"Element\";}i:3;O:23:\"CsvImport_ColumnMap_Tag\":3:{s:38:\"\0CsvImport_ColumnMap_Tag\0_tagDelimiter\";s:1:\",\";s:14:\"\0*\0_columnName\";s:4:\"tags\";s:8:\"\0*\0_type\";s:3:\"Tag\";}i:4;O:24:\"CsvImport_ColumnMap_File\":3:{s:40:\"\0CsvImport_ColumnMap_File\0_fileDelimiter\";s:1:\",\";s:14:\"\0*\0_columnName\";s:4:\"file\";s:8:\"\0*\0_type\";s:4:\"File\";}}}', '2017-10-13 10:16:47'),
(9, 6, NULL, 1, ',', 'test.csv', '/var/folders/71/kj4jx9qx1czbc9c6t_4g6zqh0000gn/T/c770678d834ca40c57ca1910cbc2aa0f', 645, 'completed', 0, 0, 1, 0, 'O:23:\"CsvImport_ColumnMap_Set\":1:{s:30:\"\0CsvImport_ColumnMap_Set\0_maps\";a:5:{i:0;O:27:\"CsvImport_ColumnMap_Element\":5:{s:36:\"\0CsvImport_ColumnMap_Element\0_isHtml\";b:0;s:39:\"\0CsvImport_ColumnMap_Element\0_elementId\";s:2:\"50\";s:46:\"\0CsvImport_ColumnMap_Element\0_elementDelimiter\";s:0:\"\";s:14:\"\0*\0_columnName\";s:5:\"title\";s:8:\"\0*\0_type\";s:7:\"Element\";}i:1;O:27:\"CsvImport_ColumnMap_Element\":5:{s:36:\"\0CsvImport_ColumnMap_Element\0_isHtml\";b:0;s:39:\"\0CsvImport_ColumnMap_Element\0_elementId\";s:2:\"50\";s:46:\"\0CsvImport_ColumnMap_Element\0_elementDelimiter\";s:0:\"\";s:14:\"\0*\0_columnName\";s:7:\"creator\";s:8:\"\0*\0_type\";s:7:\"Element\";}i:2;O:27:\"CsvImport_ColumnMap_Element\":5:{s:36:\"\0CsvImport_ColumnMap_Element\0_isHtml\";b:0;s:39:\"\0CsvImport_ColumnMap_Element\0_elementId\";s:2:\"41\";s:46:\"\0CsvImport_ColumnMap_Element\0_elementDelimiter\";s:0:\"\";s:14:\"\0*\0_columnName\";s:11:\"description\";s:8:\"\0*\0_type\";s:7:\"Element\";}i:3;O:23:\"CsvImport_ColumnMap_Tag\":3:{s:38:\"\0CsvImport_ColumnMap_Tag\0_tagDelimiter\";s:1:\",\";s:14:\"\0*\0_columnName\";s:4:\"tags\";s:8:\"\0*\0_type\";s:3:\"Tag\";}i:4;O:24:\"CsvImport_ColumnMap_File\":3:{s:40:\"\0CsvImport_ColumnMap_File\0_fileDelimiter\";s:1:\",\";s:14:\"\0*\0_columnName\";s:4:\"file\";s:8:\"\0*\0_type\";s:4:\"File\";}}}', '2017-10-13 10:17:30'),
(10, 6, 1, 1, ',', 'test_automap_columns_to_elements.csv', '/var/folders/71/kj4jx9qx1czbc9c6t_4g6zqh0000gn/T/8ecb18b4e88125585fb4e6511e8386e0', 699, 'completed', 0, 0, 1, 0, 'O:23:\"CsvImport_ColumnMap_Set\":1:{s:30:\"\0CsvImport_ColumnMap_Set\0_maps\";a:5:{i:0;O:27:\"CsvImport_ColumnMap_Element\":5:{s:36:\"\0CsvImport_ColumnMap_Element\0_isHtml\";b:0;s:39:\"\0CsvImport_ColumnMap_Element\0_elementId\";s:2:\"50\";s:46:\"\0CsvImport_ColumnMap_Element\0_elementDelimiter\";s:0:\"\";s:14:\"\0*\0_columnName\";s:17:\"Dublin Core:Title\";s:8:\"\0*\0_type\";s:7:\"Element\";}i:1;O:27:\"CsvImport_ColumnMap_Element\":5:{s:36:\"\0CsvImport_ColumnMap_Element\0_isHtml\";b:0;s:39:\"\0CsvImport_ColumnMap_Element\0_elementId\";s:2:\"39\";s:46:\"\0CsvImport_ColumnMap_Element\0_elementDelimiter\";s:0:\"\";s:14:\"\0*\0_columnName\";s:19:\"Dublin Core:Creator\";s:8:\"\0*\0_type\";s:7:\"Element\";}i:2;O:27:\"CsvImport_ColumnMap_Element\":5:{s:36:\"\0CsvImport_ColumnMap_Element\0_isHtml\";b:0;s:39:\"\0CsvImport_ColumnMap_Element\0_elementId\";s:2:\"41\";s:46:\"\0CsvImport_ColumnMap_Element\0_elementDelimiter\";s:0:\"\";s:14:\"\0*\0_columnName\";s:23:\"Dublin Core:Description\";s:8:\"\0*\0_type\";s:7:\"Element\";}i:3;O:23:\"CsvImport_ColumnMap_Tag\":3:{s:38:\"\0CsvImport_ColumnMap_Tag\0_tagDelimiter\";s:1:\",\";s:14:\"\0*\0_columnName\";s:4:\"tags\";s:8:\"\0*\0_type\";s:3:\"Tag\";}i:4;O:24:\"CsvImport_ColumnMap_File\":3:{s:40:\"\0CsvImport_ColumnMap_File\0_fileDelimiter\";s:1:\",\";s:14:\"\0*\0_columnName\";s:22:\"Item Type Metadata:URL\";s:8:\"\0*\0_type\";s:4:\"File\";}}}', '2017-10-13 12:12:45'),
(11, 6, 2, 1, ',', 'test_automap_columns_to_elements.csv', '/var/folders/71/kj4jx9qx1czbc9c6t_4g6zqh0000gn/T/7eac3e6caf2a2b1a68f6ec719947c60f', 699, 'completed', 0, 0, 0, 0, 'O:23:\"CsvImport_ColumnMap_Set\":1:{s:30:\"\0CsvImport_ColumnMap_Set\0_maps\";a:5:{i:0;O:27:\"CsvImport_ColumnMap_Element\":5:{s:36:\"\0CsvImport_ColumnMap_Element\0_isHtml\";b:0;s:39:\"\0CsvImport_ColumnMap_Element\0_elementId\";s:2:\"50\";s:46:\"\0CsvImport_ColumnMap_Element\0_elementDelimiter\";s:0:\"\";s:14:\"\0*\0_columnName\";s:17:\"Dublin Core:Title\";s:8:\"\0*\0_type\";s:7:\"Element\";}i:1;O:27:\"CsvImport_ColumnMap_Element\":5:{s:36:\"\0CsvImport_ColumnMap_Element\0_isHtml\";b:0;s:39:\"\0CsvImport_ColumnMap_Element\0_elementId\";s:2:\"39\";s:46:\"\0CsvImport_ColumnMap_Element\0_elementDelimiter\";s:0:\"\";s:14:\"\0*\0_columnName\";s:19:\"Dublin Core:Creator\";s:8:\"\0*\0_type\";s:7:\"Element\";}i:2;O:27:\"CsvImport_ColumnMap_Element\":5:{s:36:\"\0CsvImport_ColumnMap_Element\0_isHtml\";b:0;s:39:\"\0CsvImport_ColumnMap_Element\0_elementId\";s:2:\"41\";s:46:\"\0CsvImport_ColumnMap_Element\0_elementDelimiter\";s:0:\"\";s:14:\"\0*\0_columnName\";s:23:\"Dublin Core:Description\";s:8:\"\0*\0_type\";s:7:\"Element\";}i:3;O:23:\"CsvImport_ColumnMap_Tag\":3:{s:38:\"\0CsvImport_ColumnMap_Tag\0_tagDelimiter\";s:1:\",\";s:14:\"\0*\0_columnName\";s:4:\"tags\";s:8:\"\0*\0_type\";s:3:\"Tag\";}i:4;O:24:\"CsvImport_ColumnMap_File\":3:{s:40:\"\0CsvImport_ColumnMap_File\0_fileDelimiter\";s:1:\",\";s:14:\"\0*\0_columnName\";s:22:\"Item Type Metadata:URL\";s:8:\"\0*\0_type\";s:4:\"File\";}}}', '2017-10-13 12:54:50'),
(12, NULL, NULL, 1, ',', 'testje.csv', '/var/folders/71/kj4jx9qx1czbc9c6t_4g6zqh0000gn/T/8b1cbbfee674202111344083d680f1db', 193, 'completed_undo', 0, 1, 0, 0, 'O:23:\"CsvImport_ColumnMap_Set\":1:{s:30:\"\0CsvImport_ColumnMap_Set\0_maps\";a:5:{i:0;O:27:\"CsvImport_ColumnMap_Element\":5:{s:36:\"\0CsvImport_ColumnMap_Element\0_isHtml\";b:0;s:39:\"\0CsvImport_ColumnMap_Element\0_elementId\";s:2:\"50\";s:46:\"\0CsvImport_ColumnMap_Element\0_elementDelimiter\";s:0:\"\";s:14:\"\0*\0_columnName\";s:5:\"title\";s:8:\"\0*\0_type\";s:7:\"Element\";}i:1;O:27:\"CsvImport_ColumnMap_Element\":5:{s:36:\"\0CsvImport_ColumnMap_Element\0_isHtml\";b:0;s:39:\"\0CsvImport_ColumnMap_Element\0_elementId\";s:2:\"39\";s:46:\"\0CsvImport_ColumnMap_Element\0_elementDelimiter\";s:0:\"\";s:14:\"\0*\0_columnName\";s:7:\"creator\";s:8:\"\0*\0_type\";s:7:\"Element\";}i:2;O:27:\"CsvImport_ColumnMap_Element\":5:{s:36:\"\0CsvImport_ColumnMap_Element\0_isHtml\";b:0;s:39:\"\0CsvImport_ColumnMap_Element\0_elementId\";s:2:\"41\";s:46:\"\0CsvImport_ColumnMap_Element\0_elementDelimiter\";s:0:\"\";s:14:\"\0*\0_columnName\";s:11:\"description\";s:8:\"\0*\0_type\";s:7:\"Element\";}i:3;O:23:\"CsvImport_ColumnMap_Tag\":3:{s:38:\"\0CsvImport_ColumnMap_Tag\0_tagDelimiter\";s:1:\",\";s:14:\"\0*\0_columnName\";s:4:\"tags\";s:8:\"\0*\0_type\";s:3:\"Tag\";}i:4;O:24:\"CsvImport_ColumnMap_File\":3:{s:40:\"\0CsvImport_ColumnMap_File\0_fileDelimiter\";s:1:\",\";s:14:\"\0*\0_columnName\";s:4:\"file\";s:8:\"\0*\0_type\";s:4:\"File\";}}}', '2017-11-27 13:15:53'),
(13, NULL, 2, 1, ',', 'testje.csv', '/var/folders/71/kj4jx9qx1czbc9c6t_4g6zqh0000gn/T/2a70177a3261d89e5bc64ad97ba0088a', 297, 'completed_undo', 0, 1, 0, 0, 'O:23:\"CsvImport_ColumnMap_Set\":1:{s:30:\"\0CsvImport_ColumnMap_Set\0_maps\";a:5:{i:0;O:27:\"CsvImport_ColumnMap_Element\":5:{s:36:\"\0CsvImport_ColumnMap_Element\0_isHtml\";b:0;s:39:\"\0CsvImport_ColumnMap_Element\0_elementId\";s:2:\"50\";s:46:\"\0CsvImport_ColumnMap_Element\0_elementDelimiter\";s:0:\"\";s:14:\"\0*\0_columnName\";s:5:\"title\";s:8:\"\0*\0_type\";s:7:\"Element\";}i:1;O:27:\"CsvImport_ColumnMap_Element\":5:{s:36:\"\0CsvImport_ColumnMap_Element\0_isHtml\";b:0;s:39:\"\0CsvImport_ColumnMap_Element\0_elementId\";s:2:\"39\";s:46:\"\0CsvImport_ColumnMap_Element\0_elementDelimiter\";s:0:\"\";s:14:\"\0*\0_columnName\";s:7:\"creator\";s:8:\"\0*\0_type\";s:7:\"Element\";}i:2;O:27:\"CsvImport_ColumnMap_Element\":5:{s:36:\"\0CsvImport_ColumnMap_Element\0_isHtml\";b:0;s:39:\"\0CsvImport_ColumnMap_Element\0_elementId\";s:2:\"41\";s:46:\"\0CsvImport_ColumnMap_Element\0_elementDelimiter\";s:0:\"\";s:14:\"\0*\0_columnName\";s:11:\"description\";s:8:\"\0*\0_type\";s:7:\"Element\";}i:3;O:23:\"CsvImport_ColumnMap_Tag\":3:{s:38:\"\0CsvImport_ColumnMap_Tag\0_tagDelimiter\";s:1:\",\";s:14:\"\0*\0_columnName\";s:4:\"tags\";s:8:\"\0*\0_type\";s:3:\"Tag\";}i:4;O:24:\"CsvImport_ColumnMap_File\":3:{s:40:\"\0CsvImport_ColumnMap_File\0_fileDelimiter\";s:1:\",\";s:14:\"\0*\0_columnName\";s:4:\"file\";s:8:\"\0*\0_type\";s:4:\"File\";}}}', '2017-11-27 15:16:51'),
(14, NULL, NULL, 1, ',', 'testje.csv', '/var/folders/71/kj4jx9qx1czbc9c6t_4g6zqh0000gn/T/b658b795a99db9f652af62f4c222f8eb', 279, 'completed_undo', 0, 1, 0, 0, 'O:23:\"CsvImport_ColumnMap_Set\":1:{s:30:\"\0CsvImport_ColumnMap_Set\0_maps\";a:5:{i:0;O:27:\"CsvImport_ColumnMap_Element\":5:{s:36:\"\0CsvImport_ColumnMap_Element\0_isHtml\";b:0;s:39:\"\0CsvImport_ColumnMap_Element\0_elementId\";s:2:\"50\";s:46:\"\0CsvImport_ColumnMap_Element\0_elementDelimiter\";s:0:\"\";s:14:\"\0*\0_columnName\";s:5:\"title\";s:8:\"\0*\0_type\";s:7:\"Element\";}i:1;O:27:\"CsvImport_ColumnMap_Element\":5:{s:36:\"\0CsvImport_ColumnMap_Element\0_isHtml\";b:0;s:39:\"\0CsvImport_ColumnMap_Element\0_elementId\";s:2:\"39\";s:46:\"\0CsvImport_ColumnMap_Element\0_elementDelimiter\";s:0:\"\";s:14:\"\0*\0_columnName\";s:7:\"creator\";s:8:\"\0*\0_type\";s:7:\"Element\";}i:2;O:27:\"CsvImport_ColumnMap_Element\":5:{s:36:\"\0CsvImport_ColumnMap_Element\0_isHtml\";b:0;s:39:\"\0CsvImport_ColumnMap_Element\0_elementId\";s:2:\"41\";s:46:\"\0CsvImport_ColumnMap_Element\0_elementDelimiter\";s:0:\"\";s:14:\"\0*\0_columnName\";s:11:\"description\";s:8:\"\0*\0_type\";s:7:\"Element\";}i:3;O:23:\"CsvImport_ColumnMap_Tag\":3:{s:38:\"\0CsvImport_ColumnMap_Tag\0_tagDelimiter\";s:1:\",\";s:14:\"\0*\0_columnName\";s:4:\"tags\";s:8:\"\0*\0_type\";s:3:\"Tag\";}i:4;O:24:\"CsvImport_ColumnMap_File\":3:{s:40:\"\0CsvImport_ColumnMap_File\0_fileDelimiter\";s:1:\",\";s:14:\"\0*\0_columnName\";s:4:\"file\";s:8:\"\0*\0_type\";s:4:\"File\";}}}', '2017-11-27 15:21:02'),
(15, NULL, NULL, 1, ',', 'testje.csv', '/var/folders/71/kj4jx9qx1czbc9c6t_4g6zqh0000gn/T/73208c8c34c03d7d5100b4263abf2508', 281, 'completed_undo', 0, 1, 0, 0, 'O:23:\"CsvImport_ColumnMap_Set\":1:{s:30:\"\0CsvImport_ColumnMap_Set\0_maps\";a:5:{i:0;O:27:\"CsvImport_ColumnMap_Element\":5:{s:36:\"\0CsvImport_ColumnMap_Element\0_isHtml\";b:0;s:39:\"\0CsvImport_ColumnMap_Element\0_elementId\";s:2:\"50\";s:46:\"\0CsvImport_ColumnMap_Element\0_elementDelimiter\";s:0:\"\";s:14:\"\0*\0_columnName\";s:5:\"title\";s:8:\"\0*\0_type\";s:7:\"Element\";}i:1;O:27:\"CsvImport_ColumnMap_Element\":5:{s:36:\"\0CsvImport_ColumnMap_Element\0_isHtml\";b:0;s:39:\"\0CsvImport_ColumnMap_Element\0_elementId\";s:2:\"39\";s:46:\"\0CsvImport_ColumnMap_Element\0_elementDelimiter\";s:0:\"\";s:14:\"\0*\0_columnName\";s:7:\"creator\";s:8:\"\0*\0_type\";s:7:\"Element\";}i:2;O:27:\"CsvImport_ColumnMap_Element\":5:{s:36:\"\0CsvImport_ColumnMap_Element\0_isHtml\";b:0;s:39:\"\0CsvImport_ColumnMap_Element\0_elementId\";s:2:\"41\";s:46:\"\0CsvImport_ColumnMap_Element\0_elementDelimiter\";s:0:\"\";s:14:\"\0*\0_columnName\";s:11:\"description\";s:8:\"\0*\0_type\";s:7:\"Element\";}i:3;O:23:\"CsvImport_ColumnMap_Tag\":3:{s:38:\"\0CsvImport_ColumnMap_Tag\0_tagDelimiter\";s:1:\",\";s:14:\"\0*\0_columnName\";s:4:\"tags\";s:8:\"\0*\0_type\";s:3:\"Tag\";}i:4;O:24:\"CsvImport_ColumnMap_File\":3:{s:40:\"\0CsvImport_ColumnMap_File\0_fileDelimiter\";s:1:\",\";s:14:\"\0*\0_columnName\";s:5:\"file;\";s:8:\"\0*\0_type\";s:4:\"File\";}}}', '2017-11-27 15:28:42'),
(16, NULL, NULL, 1, ',', 'test.csv', '/var/folders/71/kj4jx9qx1czbc9c6t_4g6zqh0000gn/T/c1ebefcc9a070e1683c6c6a48da40fc6', 645, 'completed_undo', 0, 0, 0, 0, 'O:23:\"CsvImport_ColumnMap_Set\":1:{s:30:\"\0CsvImport_ColumnMap_Set\0_maps\";a:5:{i:0;O:27:\"CsvImport_ColumnMap_Element\":5:{s:36:\"\0CsvImport_ColumnMap_Element\0_isHtml\";b:0;s:39:\"\0CsvImport_ColumnMap_Element\0_elementId\";s:2:\"50\";s:46:\"\0CsvImport_ColumnMap_Element\0_elementDelimiter\";s:0:\"\";s:14:\"\0*\0_columnName\";s:5:\"title\";s:8:\"\0*\0_type\";s:7:\"Element\";}i:1;O:27:\"CsvImport_ColumnMap_Element\":5:{s:36:\"\0CsvImport_ColumnMap_Element\0_isHtml\";b:0;s:39:\"\0CsvImport_ColumnMap_Element\0_elementId\";s:2:\"39\";s:46:\"\0CsvImport_ColumnMap_Element\0_elementDelimiter\";s:0:\"\";s:14:\"\0*\0_columnName\";s:7:\"creator\";s:8:\"\0*\0_type\";s:7:\"Element\";}i:2;O:27:\"CsvImport_ColumnMap_Element\":5:{s:36:\"\0CsvImport_ColumnMap_Element\0_isHtml\";b:0;s:39:\"\0CsvImport_ColumnMap_Element\0_elementId\";s:2:\"41\";s:46:\"\0CsvImport_ColumnMap_Element\0_elementDelimiter\";s:0:\"\";s:14:\"\0*\0_columnName\";s:11:\"description\";s:8:\"\0*\0_type\";s:7:\"Element\";}i:3;O:23:\"CsvImport_ColumnMap_Tag\":3:{s:38:\"\0CsvImport_ColumnMap_Tag\0_tagDelimiter\";s:1:\",\";s:14:\"\0*\0_columnName\";s:4:\"tags\";s:8:\"\0*\0_type\";s:3:\"Tag\";}i:4;O:24:\"CsvImport_ColumnMap_File\":3:{s:40:\"\0CsvImport_ColumnMap_File\0_fileDelimiter\";s:1:\",\";s:14:\"\0*\0_columnName\";s:4:\"file\";s:8:\"\0*\0_type\";s:4:\"File\";}}}', '2017-11-27 15:32:16'),
(17, NULL, NULL, 1, ',', 'test.csv', '/var/folders/71/kj4jx9qx1czbc9c6t_4g6zqh0000gn/T/b243c5638dd194149b96ecf657db2427', 625, 'completed_undo', 0, 0, 0, 0, 'O:23:\"CsvImport_ColumnMap_Set\":1:{s:30:\"\0CsvImport_ColumnMap_Set\0_maps\";a:5:{i:0;O:27:\"CsvImport_ColumnMap_Element\":5:{s:36:\"\0CsvImport_ColumnMap_Element\0_isHtml\";b:0;s:39:\"\0CsvImport_ColumnMap_Element\0_elementId\";s:2:\"50\";s:46:\"\0CsvImport_ColumnMap_Element\0_elementDelimiter\";s:0:\"\";s:14:\"\0*\0_columnName\";s:5:\"title\";s:8:\"\0*\0_type\";s:7:\"Element\";}i:1;O:27:\"CsvImport_ColumnMap_Element\":5:{s:36:\"\0CsvImport_ColumnMap_Element\0_isHtml\";b:0;s:39:\"\0CsvImport_ColumnMap_Element\0_elementId\";s:2:\"39\";s:46:\"\0CsvImport_ColumnMap_Element\0_elementDelimiter\";s:0:\"\";s:14:\"\0*\0_columnName\";s:7:\"creator\";s:8:\"\0*\0_type\";s:7:\"Element\";}i:2;O:27:\"CsvImport_ColumnMap_Element\":5:{s:36:\"\0CsvImport_ColumnMap_Element\0_isHtml\";b:0;s:39:\"\0CsvImport_ColumnMap_Element\0_elementId\";s:2:\"41\";s:46:\"\0CsvImport_ColumnMap_Element\0_elementDelimiter\";s:0:\"\";s:14:\"\0*\0_columnName\";s:11:\"description\";s:8:\"\0*\0_type\";s:7:\"Element\";}i:3;O:23:\"CsvImport_ColumnMap_Tag\":3:{s:38:\"\0CsvImport_ColumnMap_Tag\0_tagDelimiter\";s:1:\",\";s:14:\"\0*\0_columnName\";s:4:\"tags\";s:8:\"\0*\0_type\";s:3:\"Tag\";}i:4;O:24:\"CsvImport_ColumnMap_File\":3:{s:40:\"\0CsvImport_ColumnMap_File\0_fileDelimiter\";s:1:\",\";s:14:\"\0*\0_columnName\";s:4:\"file\";s:8:\"\0*\0_type\";s:4:\"File\";}}}', '2017-11-27 15:38:58'),
(18, NULL, NULL, 1, ',', 'test.csv', '/var/folders/71/kj4jx9qx1czbc9c6t_4g6zqh0000gn/T/f28fd9f66f4a13a3e4b7c6a351063b7b', 758, 'completed_undo', 0, 1, 0, 0, 'O:23:\"CsvImport_ColumnMap_Set\":1:{s:30:\"\0CsvImport_ColumnMap_Set\0_maps\";a:5:{i:0;O:27:\"CsvImport_ColumnMap_Element\":5:{s:36:\"\0CsvImport_ColumnMap_Element\0_isHtml\";b:0;s:39:\"\0CsvImport_ColumnMap_Element\0_elementId\";s:2:\"50\";s:46:\"\0CsvImport_ColumnMap_Element\0_elementDelimiter\";s:0:\"\";s:14:\"\0*\0_columnName\";s:5:\"title\";s:8:\"\0*\0_type\";s:7:\"Element\";}i:1;O:27:\"CsvImport_ColumnMap_Element\":5:{s:36:\"\0CsvImport_ColumnMap_Element\0_isHtml\";b:0;s:39:\"\0CsvImport_ColumnMap_Element\0_elementId\";s:2:\"39\";s:46:\"\0CsvImport_ColumnMap_Element\0_elementDelimiter\";s:0:\"\";s:14:\"\0*\0_columnName\";s:7:\"creator\";s:8:\"\0*\0_type\";s:7:\"Element\";}i:2;O:27:\"CsvImport_ColumnMap_Element\":5:{s:36:\"\0CsvImport_ColumnMap_Element\0_isHtml\";b:0;s:39:\"\0CsvImport_ColumnMap_Element\0_elementId\";s:2:\"41\";s:46:\"\0CsvImport_ColumnMap_Element\0_elementDelimiter\";s:0:\"\";s:14:\"\0*\0_columnName\";s:11:\"description\";s:8:\"\0*\0_type\";s:7:\"Element\";}i:3;O:23:\"CsvImport_ColumnMap_Tag\":3:{s:38:\"\0CsvImport_ColumnMap_Tag\0_tagDelimiter\";s:1:\",\";s:14:\"\0*\0_columnName\";s:4:\"tags\";s:8:\"\0*\0_type\";s:3:\"Tag\";}i:4;O:24:\"CsvImport_ColumnMap_File\":3:{s:40:\"\0CsvImport_ColumnMap_File\0_fileDelimiter\";s:1:\",\";s:14:\"\0*\0_columnName\";s:4:\"file\";s:8:\"\0*\0_type\";s:4:\"File\";}}}', '2017-11-27 15:40:22');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `omeka_elements`
--

CREATE TABLE `omeka_elements` (
  `id` int(10) UNSIGNED NOT NULL,
  `element_set_id` int(10) UNSIGNED NOT NULL,
  `order` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `comment` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `omeka_elements`
--

INSERT INTO `omeka_elements` (`id`, `element_set_id`, `order`, `name`, `description`, `comment`) VALUES
(1, 3, NULL, 'Text', 'Any textual data included in the document', NULL),
(2, 3, NULL, 'Interviewer', 'The person(s) performing the interview', NULL),
(3, 3, NULL, 'Interviewee', 'The person(s) being interviewed', NULL),
(4, 3, NULL, 'Location', 'The location of the interview', NULL),
(5, 3, NULL, 'Transcription', 'Any written text transcribed from a sound', NULL),
(6, 3, NULL, 'Local URL', 'The URL of the local directory containing all assets of the website', NULL),
(7, 3, NULL, 'Original Format', 'The type of object, such as painting, sculpture, paper, photo, and additional data', NULL),
(10, 3, NULL, 'Physical Dimensions', 'The actual physical size of the original image', NULL),
(11, 3, NULL, 'Duration', 'Length of time involved (seconds, minutes, hours, days, class periods, etc.)', NULL),
(12, 3, NULL, 'Compression', 'Type/rate of compression for moving image file (i.e. MPEG-4)', NULL),
(13, 3, NULL, 'Producer', 'Name (or names) of the person who produced the video', NULL),
(14, 3, NULL, 'Director', 'Name (or names) of the person who produced the video', NULL),
(15, 3, NULL, 'Bit Rate/Frequency', 'Rate at which bits are transferred (i.e. 96 kbit/s would be FM quality audio)', NULL),
(16, 3, NULL, 'Time Summary', 'A summary of an interview given for different time stamps throughout the interview', NULL),
(17, 3, NULL, 'Email Body', 'The main body of the email, including all replied and forwarded text and headers', NULL),
(18, 3, NULL, 'Subject Line', 'The content of the subject line of the email', NULL),
(19, 3, NULL, 'From', 'The name and email address of the person sending the email', NULL),
(20, 3, NULL, 'To', 'The name(s) and email address(es) of the person to whom the email was sent', NULL),
(21, 3, NULL, 'CC', 'The name(s) and email address(es) of the person to whom the email was carbon copied', NULL),
(22, 3, NULL, 'BCC', 'The name(s) and email address(es) of the person to whom the email was blind carbon copied', NULL),
(23, 3, NULL, 'Number of Attachments', 'The number of attachments to the email', NULL),
(24, 3, NULL, 'Standards', '', NULL),
(25, 3, NULL, 'Objectives', '', NULL),
(26, 3, NULL, 'Materials', '', NULL),
(27, 3, NULL, 'Lesson Plan Text', '', NULL),
(28, 3, NULL, 'URL', '', NULL),
(29, 3, NULL, 'Event Type', '', NULL),
(30, 3, NULL, 'Participants', 'Names of individuals or groups participating in the event', NULL),
(31, 3, NULL, 'Birth Date', '', NULL),
(32, 3, NULL, 'Birthplace', '', NULL),
(33, 3, NULL, 'Death Date', '', NULL),
(34, 3, NULL, 'Occupation', '', NULL),
(35, 3, NULL, 'Biographical Text', '', NULL),
(36, 3, NULL, 'Bibliography', '', NULL),
(37, 1, 99, 'Contributor', 'An entity responsible for making contributions to the resource', NULL),
(38, 1, 6, 'Coverage-Spatial', 'De locatie van de bron, waar de bron gecreëerd is.', NULL),
(39, 1, 98, 'Creator', 'An entity primarily responsible for making the resource', NULL),
(40, 1, 9, 'Date', 'Datum van de creatie van de bron', NULL),
(41, 1, 5, 'Description', 'Een beschrijving van de bron', NULL),
(43, 1, 1, 'Identifier', 'Een unieke id voor de bron', NULL),
(44, 1, 11, 'Language', 'De taal van de bron', NULL),
(45, 1, 7, 'Publisher', 'De uitgever/ Lettergieterij van de bron', NULL),
(46, 1, 101, 'Relation', 'A related resource', NULL),
(47, 1, 12, 'Rights', 'Informatie over de rechten van de bron', NULL),
(48, 1, 100, 'Source', 'A related resource from which the described resource is derived', NULL),
(49, 1, 4, 'Subject', 'Het onderwerp van de bron', NULL),
(50, 1, 2, 'Title', 'Lange titel van de bron', NULL),
(51, 1, 10, 'Type', 'Het soort bron. (Pas op, is niet gelijk aan item type!)', NULL),
(137, 1, 8, 'Coverage-Spatial-Publisher', 'De locatie van de uitgever/lettergieterij die de bron uitgegeven heeft.', NULL),
(138, 1, 3, 'AlternativeTitle', 'Verkorte titel van de bron', NULL);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `omeka_element_sets`
--

CREATE TABLE `omeka_element_sets` (
  `id` int(10) UNSIGNED NOT NULL,
  `record_type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `omeka_element_sets`
--

INSERT INTO `omeka_element_sets` (`id`, `record_type`, `name`, `description`) VALUES
(1, NULL, 'Dublin Core', 'The Dublin Core metadata element set is common to all Omeka records, including items, files, and collections. For more information see, http://dublincore.org/documents/dces/.'),
(3, 'Item', 'Item Type Metadata', 'The item type metadata element set, consisting of all item type elements bundled with Omeka and all item type elements created by an administrator.');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `omeka_element_texts`
--

CREATE TABLE `omeka_element_texts` (
  `id` int(10) UNSIGNED NOT NULL,
  `record_id` int(10) UNSIGNED NOT NULL,
  `record_type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `element_id` int(10) UNSIGNED NOT NULL,
  `html` tinyint(4) NOT NULL,
  `text` mediumtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `omeka_element_texts`
--

INSERT INTO `omeka_element_texts` (`id`, `record_id`, `record_type`, `element_id`, `html`, `text`) VALUES
(2, 1, 'Collection', 50, 0, 'Nieuwjaarspancartes'),
(3, 1, 'Collection', 41, 0, 'De nieuwjaarspancartes omvatten ca. 120 kleurige kartonnen panelen uit de periode van de Belle Epoque (begin 20e eeuw). Deze pancartes werden ter gelegenheid van Nieuwjaar door handelaars uitgedeeld aan klanten, en zorgden voor naamsbekendheid voor de producent. We kunnen ze beschouwen als voorlopers van de hedendaagse wandkalenders. Op de pancartes zien we romantische taferelen, zoals dromerige jonge vrouwen, guitige kinderen, bloemen en fruit.\r\n\r\nDe meeste nieuwjaarspancartes uit deze collectie zijn lithografieën, de tekst is meestal gezet met loden letters. De formaten variëren tussen 30x20cm en 60x40cm. Ondanks hun leeftijd hebben de pancartes nog steeds zeer mooie en rijke kleuren. Het merendeel van de collectie is geschonken door de familie De Pourquoy, gewezen kruideniers uit Gent.'),
(88, 31, 'Item', 50, 0, 'Walden'),
(89, 31, 'Item', 39, 0, 'Henry David Thoreau'),
(90, 31, 'Item', 41, 0, 'A man seeks simplicity.'),
(91, 32, 'Item', 50, 0, 'The Count of Monte Cristo'),
(92, 32, 'Item', 39, 0, 'Alexandre Dumas'),
(93, 32, 'Item', 41, 0, 'A man seeks revenge.'),
(94, 33, 'Item', 50, 0, 'Narrative of the Life of Frederick Douglass'),
(95, 33, 'Item', 39, 0, 'Frederick Douglass'),
(96, 33, 'Item', 41, 0, 'A man seeks freedom.'),
(97, 2, 'Collection', 50, 0, 'Testcollectie'),
(98, 2, 'Collection', 41, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras quis velit vitae eros volutpat eleifend vel eget urna. Morbi feugiat eleifend elementum. Aenean egestas, risus ut dictum feugiat, purus nisl lobortis velit, eu interdum odio libero id lacus. Curabitur at leo at risus egestas euismod vulputate nec urna. Proin non lobortis diam. Pellentesque eget tincidunt odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod tellus vel lectus elementum, non suscipit sem fringilla. Morbi euismod velit vitae libero suscipit, ut vehicula tortor sagittis. Phasellus a risus in tellus egestas imperdiet non vel tortor. Nullam vel massa sed sem tincidunt porta hendrerit non velit. Sed nulla tortor, vestibulum eget condimentum non, tempor sit amet sapien. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Etiam eu luctus eros. Mauris est massa, facilisis a eleifend vitae, cursus ut dui. Integer hendrerit et neque eu venenatis.'),
(99, 34, 'Item', 50, 0, 'Walden'),
(100, 34, 'Item', 39, 0, 'Henry David Thoreau'),
(101, 34, 'Item', 41, 0, 'A man seeks simplicity.'),
(102, 35, 'Item', 50, 0, 'The Count of Monte Cristo'),
(103, 35, 'Item', 39, 0, 'Alexandre Dumas'),
(104, 35, 'Item', 41, 0, 'A man seeks revenge.'),
(105, 36, 'Item', 50, 0, 'Narrative of the Life of Frederick Douglass'),
(106, 36, 'Item', 39, 0, 'Frederick Douglass'),
(107, 36, 'Item', 41, 0, 'A man seeks freedom.'),
(108, 37, 'Item', 43, 0, 'ANNE_000000'),
(109, 37, 'Item', 50, 0, 'Annelien Haeghebaert, Om een lang verhaal kort te maken.'),
(110, 37, 'Item', 138, 0, 'Annelien.'),
(111, 37, 'Item', 49, 0, 'Annelien Haeghebaert'),
(112, 37, 'Item', 41, 0, 'Een studente grafische en digitale media'),
(113, 37, 'Item', 38, 0, 'Lichtervelde'),
(114, 37, 'Item', 45, 0, 'Arteveldehogeschool'),
(115, 37, 'Item', 137, 0, 'Gent'),
(116, 37, 'Item', 40, 0, '15-08-1994'),
(117, 37, 'Item', 51, 0, 'Meisje'),
(118, 37, 'Item', 44, 0, 'Nederlands'),
(119, 37, 'Item', 44, 0, 'Engels'),
(120, 37, 'Item', 47, 0, 'All rights reserved'),
(121, 37, 'Item', 39, 0, 'Christa Levecque'),
(122, 37, 'Item', 39, 0, 'Luc Haeghebaert'),
(123, 37, 'Item', 37, 0, 'Sander Haeghebaert'),
(124, 37, 'Item', 10, 0, '180cm'),
(125, 38, 'Item', 50, 0, 'TITLE'),
(126, 38, 'Item', 138, 0, 'ALT'),
(127, 38, 'Item', 49, 0, 'sdf'),
(128, 38, 'Item', 41, 0, 'sdfsdfsdfsdfksjdhfkqjds fjdqsfkjqsdf kqsd fkdkjdkjcdknsdnnckjsd fkhdsfjkhdskfh dsqjfhkdsjqhflsqkjdhf lhfd ljdh hhkjf lsdqjf multiple lines'),
(129, 38, 'Item', 38, 0, 'sdfsdgsqdgqds'),
(130, 38, 'Item', 45, 0, 'gdqsgsdqg'),
(131, 38, 'Item', 137, 0, 'gdqdsgqdsgsdqg'),
(132, 38, 'Item', 40, 0, 'sdqgqsdgdqg'),
(133, 38, 'Item', 51, 0, 'dsqgdqsgg'),
(134, 38, 'Item', 44, 0, 'dqgsqdgdsg'),
(135, 38, 'Item', 47, 0, 'sqdgdscxfdg'),
(136, 38, 'Item', 39, 0, 'sdgqrtefgefdqg'),
(137, 38, 'Item', 37, 0, 'erdfretfd'),
(138, 38, 'Item', 48, 0, 'dgfeterfdfvgtrezd'),
(139, 38, 'Item', 46, 0, 'efrgt ezzdfrr dreez'),
(140, 38, 'Item', 7, 0, 'sdgdfsgsfdg'),
(141, 38, 'Item', 10, 0, 'fdsgsfdgferd'),
(142, 40, 'Item', 43, 0, 'id'),
(143, 40, 'Item', 50, 0, 'titel'),
(144, 40, 'Item', 138, 0, 'alttitel'),
(145, 40, 'Item', 49, 0, 'lorem ipsum'),
(146, 40, 'Item', 41, 0, 'lorem ipsum'),
(147, 40, 'Item', 38, 0, 'lorem ipsum'),
(148, 40, 'Item', 45, 0, 'lorem ipsum'),
(149, 40, 'Item', 40, 0, 'lorem ipsum'),
(150, 40, 'Item', 44, 0, 'lorem ipsum'),
(151, 40, 'Item', 44, 0, 'lorem ipsum'),
(152, 40, 'Item', 39, 0, 'lorem ipsum'),
(153, 40, 'Item', 46, 0, 'lorem ipsum'),
(154, 41, 'Item', 43, 0, 'id'),
(155, 41, 'Item', 50, 0, 'titel'),
(156, 41, 'Item', 138, 0, 'alt'),
(157, 2, 'Collection', 43, 0, '4'),
(158, 1, 'Collection', 43, 0, '3'),
(159, 44, 'Item', 43, 0, '333'),
(160, 44, 'Item', 50, 0, 'Bachelorproef PDF'),
(161, 44, 'Item', 138, 0, 'BAP'),
(162, 44, 'Item', 41, 0, 'Blaadje in te vullen door externe promotor en onderzoeksmedewerker'),
(163, 44, 'Item', 38, 0, 'Gent');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `omeka_exhibits`
--

CREATE TABLE `omeka_exhibits` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `credits` text COLLATE utf8_unicode_ci,
  `featured` tinyint(1) DEFAULT '0',
  `public` tinyint(1) DEFAULT '0',
  `theme` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `theme_options` text COLLATE utf8_unicode_ci,
  `slug` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `added` timestamp NOT NULL DEFAULT '1999-12-31 23:00:00',
  `modified` timestamp NOT NULL DEFAULT '1999-12-31 23:00:00',
  `owner_id` int(10) UNSIGNED DEFAULT NULL,
  `use_summary_page` tinyint(1) DEFAULT '1',
  `cover_image_file_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `omeka_exhibit_block_attachments`
--

CREATE TABLE `omeka_exhibit_block_attachments` (
  `id` int(10) UNSIGNED NOT NULL,
  `block_id` int(10) UNSIGNED NOT NULL,
  `item_id` int(10) UNSIGNED NOT NULL,
  `file_id` int(10) UNSIGNED DEFAULT NULL,
  `caption` text COLLATE utf8_unicode_ci,
  `order` smallint(5) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `omeka_exhibit_pages`
--

CREATE TABLE `omeka_exhibit_pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `exhibit_id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `order` smallint(5) UNSIGNED DEFAULT NULL,
  `added` timestamp NOT NULL DEFAULT '1999-12-31 23:00:00',
  `modified` timestamp NOT NULL DEFAULT '1999-12-31 23:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `omeka_exhibit_page_blocks`
--

CREATE TABLE `omeka_exhibit_page_blocks` (
  `id` int(10) UNSIGNED NOT NULL,
  `page_id` int(10) UNSIGNED NOT NULL,
  `layout` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `options` text COLLATE utf8_unicode_ci,
  `text` mediumtext COLLATE utf8_unicode_ci,
  `order` smallint(5) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `omeka_files`
--

CREATE TABLE `omeka_files` (
  `id` int(10) UNSIGNED NOT NULL,
  `item_id` int(10) UNSIGNED NOT NULL,
  `order` int(10) UNSIGNED DEFAULT NULL,
  `size` bigint(20) UNSIGNED NOT NULL,
  `has_derivative_image` tinyint(1) NOT NULL,
  `authentication` char(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mime_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type_os` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `filename` text COLLATE utf8_unicode_ci NOT NULL,
  `original_filename` text COLLATE utf8_unicode_ci NOT NULL,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `added` timestamp NOT NULL DEFAULT '1999-12-31 23:00:00',
  `stored` tinyint(1) NOT NULL DEFAULT '0',
  `metadata` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `omeka_files`
--

INSERT INTO `omeka_files` (`id`, `item_id`, `order`, `size`, `has_derivative_image`, `authentication`, `mime_type`, `type_os`, `filename`, `original_filename`, `modified`, `added`, `stored`, `metadata`) VALUES
(29, 31, NULL, 501567, 1, 'ca5af246c460faf2c04da9c8e02a7735', 'image/jpeg', 'JPEG image data, JFIF standard 1.01, resolution (DPI), density 300x300, segment length 16, Exif Standard: [TIFF image data, big-endian, direntries=6, xresolution=86, yresolution=94, resolutionunit=2, software=GIMP 2.6.8], comment: \"Copyright HAG ?2008\", b', '4c7ef6cc8286e27af9b10d381c32d3a3.jpg', 'http://upload.wikimedia.org/wikipedia/commons/2/25/Walden_Thoreau.jpg', '2017-10-13 12:12:47', '2017-10-13 12:12:46', 1, '{\"mime_type\":\"image\\/jpeg\",\"video\":{\"dataformat\":\"jpg\",\"lossless\":false,\"bits_per_sample\":24,\"pixel_aspect_ratio\":1,\"resolution_x\":1360,\"resolution_y\":2292,\"compression_ratio\":0.053635727851349963846150359358944115228950977325439453125},\"jpg\":{\"exif\":{\"FILE\":{\"FileName\":\"4c7ef6cc8286e27af9b10d381c32d3a3.jpg\",\"FileDateTime\":1507896766,\"FileSize\":501567,\"FileType\":2,\"MimeType\":\"image\\/jpeg\",\"SectionsFound\":\"ANY_TAG, IFD0, COMMENT, EXIF\"},\"COMPUTED\":{\"html\":\"width=\\\"1360\\\" height=\\\"2292\\\"\",\"Height\":2292,\"Width\":1360,\"IsColor\":1,\"ByteOrderMotorola\":1},\"IFD0\":{\"XResolution\":300,\"YResolution\":300,\"ResolutionUnit\":2,\"Software\":\"GIMP 2.6.8\",\"YCbCrPositioning\":1},\"COMMENT\":[\"Copyright HAG ?2008\"],\"EXIF\":{\"ExifVersion\":220,\"ComponentsConfiguration\":\"\\u0001\\u0002\\u0003\\u0000\",\"FlashPixVersion\":100,\"ColorSpace\":1}}}}'),
(30, 31, NULL, 184462, 1, 'c3e22dd19617a847d9b90c96eef6c9fa', 'image/jpeg', 'JPEG image data, JFIF standard 1.02, resolution (DPI), density 508x508, segment length 16, Exif Standard: [TIFF image data, little-endian, direntries=7, orientation=upper-left, xresolution=98, yresolution=106, resolutionunit=2, software=Adobe Photoshop CS', '4b35910927a4fed35011a1723c64205d.jpg', 'http://upload.wikimedia.org/wikipedia/commons/b/ba/Henry_David_Thoreau.jpg', '2017-10-13 12:12:48', '2017-10-13 12:12:47', 1, '{\"mime_type\":\"image\\/jpeg\",\"video\":{\"dataformat\":\"jpg\",\"lossless\":false,\"bits_per_sample\":24,\"pixel_aspect_ratio\":1,\"resolution_x\":623,\"resolution_y\":768,\"compression_ratio\":0.128509842607454960461410564676043577492237091064453125},\"comments\":{\"IPTCApplication\":{\"ApplicationRecordVersion\":[\"~v\"]}},\"comments_html\":{\"IPTCApplication\":{\"ApplicationRecordVersion\":[\"~v\"]}},\"iptc\":{\"comments\":{\"IPTCApplication\":{\"ApplicationRecordVersion\":[\"~v\"]}},\"encoding\":\"ISO-8859-1\"},\"jpg\":{\"exif\":{\"FILE\":{\"FileName\":\"4b35910927a4fed35011a1723c64205d.jpg\",\"FileDateTime\":1507896767,\"FileSize\":184462,\"FileType\":2,\"MimeType\":\"image\\/jpeg\",\"SectionsFound\":\"ANY_TAG, IFD0, THUMBNAIL, EXIF\"},\"COMPUTED\":{\"html\":\"width=\\\"623\\\" height=\\\"768\\\"\",\"Height\":768,\"Width\":623,\"IsColor\":1,\"ByteOrderMotorola\":0,\"UserComment\":null,\"Thumbnail.FileType\":2,\"Thumbnail.MimeType\":\"image\\/jpeg\"},\"IFD0\":{\"Orientation\":1,\"XResolution\":508,\"YResolution\":508,\"ResolutionUnit\":2,\"Software\":\"Adobe Photoshop CS4 Windows\",\"DateTime\":\"2010:01:17 21:09:15\",\"Exif_IFD_Pointer\":164},\"THUMBNAIL\":{\"Compression\":6,\"XResolution\":72,\"YResolution\":72,\"ResolutionUnit\":2,\"JPEGInterchangeFormat\":570,\"JPEGInterchangeFormatLength\":7223},\"EXIF\":{\"UserComment\":null,\"ColorSpace\":65535,\"ExifImageWidth\":623,\"ExifImageLength\":768}}}}'),
(31, 32, NULL, 45718, 1, '1138182a222251e0779b5094e8d4fa76', 'image/jpeg', 'JPEG image data, JFIF standard 1.01, resolution (DPI), density 96x96, segment length 16, baseline, precision 8, 420x483, frames 3', '4db0b03f59d7670367f083cdf3ddae50.JPG', 'http://upload.wikimedia.org/wikipedia/commons/c/c3/Edmond_Dantès.JPG', '2017-10-13 12:50:32', '2017-10-13 12:12:48', 1, '{\"mime_type\":\"image\\/jpeg\",\"video\":{\"dataformat\":\"jpg\",\"lossless\":false,\"bits_per_sample\":24,\"pixel_aspect_ratio\":1,\"resolution_x\":420,\"resolution_y\":483,\"compression_ratio\":0.0751224161162049319795386281839455477893352508544921875}}'),
(32, 33, NULL, 182821, 1, '5a7652221938ecc4eb62177fcde97c50', 'image/jpeg', 'JPEG image data, JFIF standard 1.01, resolution (DPI), density 96x96, segment length 16, Exif Standard: [TIFF image data, little-endian, direntries=2, software=Picasa 3.0], baseline, precision 8, 1526x2290, frames 3', 'f4b14766aaafa78d6b975546d4b1f5f9.jpg', 'http://upload.wikimedia.org/wikipedia/commons/f/f5/Sketchofdouglass.jpg', '2017-10-13 12:12:49', '2017-10-13 12:12:48', 1, '{\"mime_type\":\"image\\/jpeg\",\"video\":{\"dataformat\":\"jpg\",\"lossless\":false,\"bits_per_sample\":24,\"pixel_aspect_ratio\":1,\"resolution_x\":1526,\"resolution_y\":2290,\"compression_ratio\":0.0174387282255556753940428649229943403042852878570556640625},\"jpg\":{\"exif\":{\"FILE\":{\"FileName\":\"f4b14766aaafa78d6b975546d4b1f5f9.jpg\",\"FileDateTime\":1507896768,\"FileSize\":182821,\"FileType\":2,\"MimeType\":\"image\\/jpeg\",\"SectionsFound\":\"ANY_TAG, IFD0, EXIF, INTEROP\"},\"COMPUTED\":{\"html\":\"width=\\\"1526\\\" height=\\\"2290\\\"\",\"Height\":2290,\"Width\":1526,\"IsColor\":1,\"ByteOrderMotorola\":0},\"IFD0\":{\"Software\":\"Picasa 3.0\",\"Exif_IFD_Pointer\":50},\"EXIF\":{\"ExifImageWidth\":1904,\"ExifImageLength\":3152,\"ExifVersion\":210,\"InteroperabilityOffset\":150,\"ImageUniqueID\":\"07564db992b52ac4d445fea948a899e3\"},\"INTEROP\":{\"InterOperabilityIndex\":\"    \",\"InterOperabilityVersion\":\"0100\"}}}}'),
(33, 34, NULL, 501567, 1, 'ca5af246c460faf2c04da9c8e02a7735', 'image/jpeg', 'JPEG image data, JFIF standard 1.01, resolution (DPI), density 300x300, segment length 16, Exif Standard: [TIFF image data, big-endian, direntries=6, xresolution=86, yresolution=94, resolutionunit=2, software=GIMP 2.6.8], comment: \"Copyright HAG ?2008\", b', 'a4acdc7da66b87b59dd744fd492fe9ac.jpg', 'http://upload.wikimedia.org/wikipedia/commons/2/25/Walden_Thoreau.jpg', '2017-10-13 12:54:52', '2017-10-13 12:54:50', 1, '{\"mime_type\":\"image\\/jpeg\",\"video\":{\"dataformat\":\"jpg\",\"lossless\":false,\"bits_per_sample\":24,\"pixel_aspect_ratio\":1,\"resolution_x\":1360,\"resolution_y\":2292,\"compression_ratio\":0.053635727851349963846150359358944115228950977325439453125},\"jpg\":{\"exif\":{\"FILE\":{\"FileName\":\"a4acdc7da66b87b59dd744fd492fe9ac.jpg\",\"FileDateTime\":1507899290,\"FileSize\":501567,\"FileType\":2,\"MimeType\":\"image\\/jpeg\",\"SectionsFound\":\"ANY_TAG, IFD0, COMMENT, EXIF\"},\"COMPUTED\":{\"html\":\"width=\\\"1360\\\" height=\\\"2292\\\"\",\"Height\":2292,\"Width\":1360,\"IsColor\":1,\"ByteOrderMotorola\":1},\"IFD0\":{\"XResolution\":300,\"YResolution\":300,\"ResolutionUnit\":2,\"Software\":\"GIMP 2.6.8\",\"YCbCrPositioning\":1},\"COMMENT\":[\"Copyright HAG ?2008\"],\"EXIF\":{\"ExifVersion\":220,\"ComponentsConfiguration\":\"\\u0001\\u0002\\u0003\\u0000\",\"FlashPixVersion\":100,\"ColorSpace\":1}}}}'),
(34, 34, NULL, 184462, 1, 'c3e22dd19617a847d9b90c96eef6c9fa', 'image/jpeg', 'JPEG image data, JFIF standard 1.02, resolution (DPI), density 508x508, segment length 16, Exif Standard: [TIFF image data, little-endian, direntries=7, orientation=upper-left, xresolution=98, yresolution=106, resolutionunit=2, software=Adobe Photoshop CS', '3940357ce18765190d4a801d3f9ee959.jpg', 'http://upload.wikimedia.org/wikipedia/commons/b/ba/Henry_David_Thoreau.jpg', '2017-10-13 12:54:52', '2017-10-13 12:54:52', 1, '{\"mime_type\":\"image\\/jpeg\",\"video\":{\"dataformat\":\"jpg\",\"lossless\":false,\"bits_per_sample\":24,\"pixel_aspect_ratio\":1,\"resolution_x\":623,\"resolution_y\":768,\"compression_ratio\":0.128509842607454960461410564676043577492237091064453125},\"comments\":{\"IPTCApplication\":{\"ApplicationRecordVersion\":[\"~v\"]}},\"comments_html\":{\"IPTCApplication\":{\"ApplicationRecordVersion\":[\"~v\"]}},\"iptc\":{\"comments\":{\"IPTCApplication\":{\"ApplicationRecordVersion\":[\"~v\"]}},\"encoding\":\"ISO-8859-1\"},\"jpg\":{\"exif\":{\"FILE\":{\"FileName\":\"3940357ce18765190d4a801d3f9ee959.jpg\",\"FileDateTime\":1507899292,\"FileSize\":184462,\"FileType\":2,\"MimeType\":\"image\\/jpeg\",\"SectionsFound\":\"ANY_TAG, IFD0, THUMBNAIL, EXIF\"},\"COMPUTED\":{\"html\":\"width=\\\"623\\\" height=\\\"768\\\"\",\"Height\":768,\"Width\":623,\"IsColor\":1,\"ByteOrderMotorola\":0,\"UserComment\":null,\"Thumbnail.FileType\":2,\"Thumbnail.MimeType\":\"image\\/jpeg\"},\"IFD0\":{\"Orientation\":1,\"XResolution\":508,\"YResolution\":508,\"ResolutionUnit\":2,\"Software\":\"Adobe Photoshop CS4 Windows\",\"DateTime\":\"2010:01:17 21:09:15\",\"Exif_IFD_Pointer\":164},\"THUMBNAIL\":{\"Compression\":6,\"XResolution\":72,\"YResolution\":72,\"ResolutionUnit\":2,\"JPEGInterchangeFormat\":570,\"JPEGInterchangeFormatLength\":7223},\"EXIF\":{\"UserComment\":null,\"ColorSpace\":65535,\"ExifImageWidth\":623,\"ExifImageLength\":768}}}}'),
(35, 35, NULL, 45718, 1, '1138182a222251e0779b5094e8d4fa76', 'image/jpeg', 'JPEG image data, JFIF standard 1.01, resolution (DPI), density 96x96, segment length 16, baseline, precision 8, 420x483, frames 3', 'a2d3bbc74ddaaa68c4e3cfa1749344df.JPG', 'http://upload.wikimedia.org/wikipedia/commons/c/c3/Edmond_Dantès.JPG', '2017-10-13 12:54:53', '2017-10-13 12:54:53', 1, '{\"mime_type\":\"image\\/jpeg\",\"video\":{\"dataformat\":\"jpg\",\"lossless\":false,\"bits_per_sample\":24,\"pixel_aspect_ratio\":1,\"resolution_x\":420,\"resolution_y\":483,\"compression_ratio\":0.0751224161162049319795386281839455477893352508544921875}}'),
(36, 36, NULL, 182821, 1, '5a7652221938ecc4eb62177fcde97c50', 'image/jpeg', 'JPEG image data, JFIF standard 1.01, resolution (DPI), density 96x96, segment length 16, Exif Standard: [TIFF image data, little-endian, direntries=2, software=Picasa 3.0], baseline, precision 8, 1526x2290, frames 3', 'e2610d8374f4f0458edcd7a8330bc0f2.jpg', 'http://upload.wikimedia.org/wikipedia/commons/f/f5/Sketchofdouglass.jpg', '2017-10-13 12:56:26', '2017-10-13 12:54:53', 1, '{\"mime_type\":\"image\\/jpeg\",\"video\":{\"dataformat\":\"jpg\",\"lossless\":false,\"bits_per_sample\":24,\"pixel_aspect_ratio\":1,\"resolution_x\":1526,\"resolution_y\":2290,\"compression_ratio\":0.0174387282255556753940428649229943403042852878570556640625},\"jpg\":{\"exif\":{\"FILE\":{\"FileName\":\"e2610d8374f4f0458edcd7a8330bc0f2.jpg\",\"FileDateTime\":1507899293,\"FileSize\":182821,\"FileType\":2,\"MimeType\":\"image\\/jpeg\",\"SectionsFound\":\"ANY_TAG, IFD0, EXIF, INTEROP\"},\"COMPUTED\":{\"html\":\"width=\\\"1526\\\" height=\\\"2290\\\"\",\"Height\":2290,\"Width\":1526,\"IsColor\":1,\"ByteOrderMotorola\":0},\"IFD0\":{\"Software\":\"Picasa 3.0\",\"Exif_IFD_Pointer\":50},\"EXIF\":{\"ExifImageWidth\":1904,\"ExifImageLength\":3152,\"ExifVersion\":210,\"InteroperabilityOffset\":150,\"ImageUniqueID\":\"07564db992b52ac4d445fea948a899e3\"},\"INTEROP\":{\"InterOperabilityIndex\":\"    \",\"InterOperabilityVersion\":\"0100\"}}}}'),
(37, 37, NULL, 5043813, 1, 'a599ce83f45acecd602940dc92b2395a', 'image/jpeg', 'JPEG image data, JFIF standard 1.01, aspect ratio, density 300x300, segment length 16, Exif Standard: [TIFF image data, big-endian, direntries=9, manufacturer=NIKON CORPORATION, model=NIKON D5100, orientation=upper-left, xresolution=152, yresolution=160, ', '77227f2caa27e2c361da850760065cf4.JPG', '1.JPG', '2017-10-20 08:49:23', '2017-10-19 09:46:54', 1, '{\"mime_type\":\"image\\/jpeg\",\"video\":{\"dataformat\":\"jpg\",\"lossless\":false,\"bits_per_sample\":24,\"pixel_aspect_ratio\":1,\"resolution_x\":3264,\"resolution_y\":4928,\"compression_ratio\":0.10452420492344664804118536949317785911262035369873046875},\"comments\":{\"IPTCEnvelope\":{\"CodedCharacterSet\":[\"\\u001b%G\"]},\"IPTCApplication\":{\"ApplicationRecordVersion\":[\"\\u0002\"],\"DigitalCreationTime\":[\"093224\"],\"DigitalCreationDate\":[\"20171010\"],\"DateCreated\":[\"20171010\"],\"TimeCreated\":[\"093224\"]}},\"comments_html\":{\"IPTCEnvelope\":{\"CodedCharacterSet\":[\"\\u001b%G\"]},\"IPTCApplication\":{\"ApplicationRecordVersion\":[\"\\u0002\"],\"DigitalCreationTime\":[\"093224\"],\"DigitalCreationDate\":[\"20171010\"],\"DateCreated\":[\"20171010\"],\"TimeCreated\":[\"093224\"]}},\"iptc\":{\"comments\":{\"IPTCEnvelope\":{\"CodedCharacterSet\":[\"\\u001b%G\"]},\"IPTCApplication\":{\"ApplicationRecordVersion\":[\"\\u0000\\u0002\"],\"DigitalCreationTime\":[\"093224\"],\"DigitalCreationDate\":[\"20171010\"],\"DateCreated\":[\"20171010\"],\"TimeCreated\":[\"093224\"]}},\"encoding\":\"ISO-8859-1\"},\"jpg\":{\"exif\":{\"FILE\":{\"FileName\":\"77227f2caa27e2c361da850760065cf4.JPG\",\"FileDateTime\":1508406413,\"FileSize\":5043813,\"FileType\":2,\"MimeType\":\"image\\/jpeg\",\"SectionsFound\":\"ANY_TAG, IFD0, EXIF\"},\"COMPUTED\":{\"html\":\"width=\\\"3264\\\" height=\\\"4928\\\"\",\"Height\":4928,\"Width\":3264,\"IsColor\":1,\"ByteOrderMotorola\":1,\"ApertureFNumber\":\"f\\/10.0\",\"UserComment\":\" \",\"UserCommentEncoding\":\"ASCII\"},\"IFD0\":{\"Make\":\"NIKON CORPORATION\",\"Model\":\"NIKON D5100\",\"Orientation\":1,\"XResolution\":300,\"YResolution\":300,\"ResolutionUnit\":2,\"Software\":\"Ver.1.01 \",\"DateTime\":\"2017:10:10 09:32:24\",\"Exif_IFD_Pointer\":198},\"EXIF\":{\"ExposureTime\":0.0166666666666666664353702032030923874117434024810791015625,\"FNumber\":10,\"ExposureProgram\":0,\"ISOSpeedRatings\":320,\"UndefinedTag:0x8830\":2,\"ExifVersion\":230,\"DateTimeOriginal\":\"2017:10:10 09:32:24\",\"DateTimeDigitized\":\"2017:10:10 09:32:24\",\"ComponentsConfiguration\":\"\\u0001\\u0002\\u0003\\u0000\",\"CompressedBitsPerPixel\":4,\"ExposureBiasValue\":0,\"MaxApertureValue\":3.600000000000000088817841970012523233890533447265625,\"MeteringMode\":5,\"LightSource\":0,\"Flash\":16,\"FocalLength\":18,\"UserComment\":\"ASCII\\u0000\\u0000\\u0000 \\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\",\"SubSecTime\":60,\"SubSecTimeOriginal\":60,\"SubSecTimeDigitized\":60,\"FlashPixVersion\":100,\"ColorSpace\":1,\"ExifImageWidth\":3264,\"ExifImageLength\":4928,\"SensingMethod\":2,\"FileSource\":\"\\u0003\",\"SceneType\":\"\\u0001\",\"CustomRendered\":0,\"ExposureMode\":0,\"WhiteBalance\":0,\"DigitalZoomRatio\":1,\"FocalLengthIn35mmFilm\":27,\"SceneCaptureType\":0,\"GainControl\":0,\"Contrast\":0,\"Saturation\":0,\"Sharpness\":0,\"SubjectDistanceRange\":0}}}}'),
(38, 38, NULL, 1172567, 1, 'a466794771887b6bb2ec4354efaeef4a', 'image/jpeg', 'JPEG image data, Exif standard: [TIFF image data, big-endian, direntries=16, height=3264, bps=0, PhotometricIntepretation=RGB, manufacturer=NIKON CORPORATION, model=NIKON D5100, orientation=upper-left, width=4928], baseline, precision 8, 4928x3264, frames', 'e636a204468a4e395557e8d8df651135.JPG', '3.JPG', '2017-10-27 13:10:18', '2017-10-27 13:09:15', 1, '{\"mime_type\":\"image\\/jpeg\",\"video\":{\"dataformat\":\"jpg\",\"lossless\":false,\"bits_per_sample\":24,\"pixel_aspect_ratio\":1,\"resolution_x\":4928,\"resolution_y\":3264,\"compression_ratio\":0.024299400749883286187991160431920434348285198211669921875},\"comments\":{\"IPTCApplication\":{\"ApplicationRecordVersion\":[\"\"],\"DateCreated\":[\"20171010\"],\"TimeCreated\":[\"094420+0000\"]}},\"comments_html\":{\"IPTCApplication\":{\"ApplicationRecordVersion\":[\"\"],\"DateCreated\":[\"20171010\"],\"TimeCreated\":[\"094420+0000\"]}},\"iptc\":{\"comments\":{\"IPTCApplication\":{\"ApplicationRecordVersion\":[\"\\u0000\\u0000\"],\"DateCreated\":[\"20171010\"],\"TimeCreated\":[\"094420+0000\"]}},\"encoding\":\"ISO-8859-1\"},\"jpg\":{\"exif\":{\"FILE\":{\"FileName\":\"e636a204468a4e395557e8d8df651135.JPG\",\"FileDateTime\":1509109755,\"FileSize\":1172567,\"FileType\":2,\"MimeType\":\"image\\/jpeg\",\"SectionsFound\":\"ANY_TAG, IFD0, THUMBNAIL, EXIF, GPS, INTEROP\"},\"COMPUTED\":{\"html\":\"width=\\\"4928\\\" height=\\\"3264\\\"\",\"Height\":3264,\"Width\":4928,\"IsColor\":1,\"ByteOrderMotorola\":1,\"ApertureFNumber\":\"f\\/8.0\",\"UserComment\":\" \",\"UserCommentEncoding\":\"ASCII\",\"Thumbnail.FileType\":2,\"Thumbnail.MimeType\":\"image\\/jpeg\"},\"IFD0\":{\"ImageWidth\":4928,\"ImageLength\":3264,\"BitsPerSample\":[8,8,8],\"PhotometricInterpretation\":2,\"Make\":\"NIKON CORPORATION\",\"Model\":\"NIKON D5100\",\"Orientation\":1,\"SamplesPerPixel\":3,\"XResolution\":300,\"YResolution\":300,\"ResolutionUnit\":2,\"Software\":\"Adobe Photoshop CC 2017 (Macintosh)\",\"DateTime\":\"2017:10:11 12:39:12\",\"YCbCrPositioning\":2,\"Exif_IFD_Pointer\":316,\"GPS_IFD_Pointer\":1024},\"THUMBNAIL\":{\"Compression\":6,\"XResolution\":72,\"YResolution\":72,\"ResolutionUnit\":2,\"JPEGInterchangeFormat\":1138,\"JPEGInterchangeFormatLength\":7480},\"EXIF\":{\"ExposureTime\":0.06666666666666666574148081281236954964697360992431640625,\"FNumber\":8,\"ExposureProgram\":0,\"ISOSpeedRatings\":720,\"UndefinedTag:0x8830\":2,\"ExifVersion\":230,\"DateTimeOriginal\":\"2017:10:10 09:44:20\",\"DateTimeDigitized\":\"2017:10:10 09:44:20\",\"ComponentsConfiguration\":\"\\u0001\\u0002\\u0003\\u0000\",\"CompressedBitsPerPixel\":4,\"ShutterSpeedValue\":3.9068909999999998916564436512999236583709716796875,\"ApertureValue\":6,\"ExposureBiasValue\":0,\"MaxApertureValue\":4.20000000000000017763568394002504646778106689453125,\"MeteringMode\":5,\"LightSource\":0,\"Flash\":16,\"FocalLength\":26,\"UserComment\":\"ASCII\\u0000\\u0000\\u0000 \\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\\u0000\",\"SubSecTime\":30,\"SubSecTimeOriginal\":30,\"SubSecTimeDigitized\":30,\"FlashPixVersion\":100,\"ColorSpace\":1,\"ExifImageWidth\":4928,\"ExifImageLength\":3264,\"InteroperabilityOffset\":992,\"SensingMethod\":2,\"FileSource\":\"\\u0003\",\"SceneType\":\"\\u0001\",\"CFAPattern\":\"\\u0000\\u0002\\u0000\\u0002\\u0000\\u0001\\u0001\\u0002\",\"CustomRendered\":0,\"ExposureMode\":0,\"WhiteBalance\":0,\"DigitalZoomRatio\":1,\"FocalLengthIn35mmFilm\":39,\"SceneCaptureType\":0,\"GainControl\":1,\"Contrast\":0,\"Saturation\":0,\"Sharpness\":0,\"SubjectDistanceRange\":0},\"GPS\":{\"GPSVersion\":\"\\u0002\\u0003\\u0000\\u0000\",\"computed\":{\"version\":\"v2.3.0.0\"}},\"INTEROP\":{\"InterOperabilityIndex\":\"R98\",\"InterOperabilityVersion\":\"0100\"}}}}'),
(39, 40, NULL, 8575105, 1, '8ed99386f1600eace45410d9cb034293', 'image/png', 'PNG image data, 1738 x 2965, 8-bit/color RGBA, non-interlaced', '2b42c04202096f72d1c1a70d3246823d.png', 'MAR_Reclamepancarte0001_0001_AC.png', '2017-11-08 13:42:52', '2017-11-08 13:12:19', 1, '{\"mime_type\":\"image\\/png\",\"video\":{\"dataformat\":\"png\",\"lossless\":false,\"resolution_x\":1738,\"resolution_y\":2965,\"bits_per_sample\":32,\"compression_ratio\":0.416011164001963862357769130539963953197002410888671875},\"comments\":{\"Software\":[\"Adobe ImageReady\"],\"XML:com.adobe.xmp\":[\"<?xpacket begin=\\\"\\ufeff\\\" id=\\\"W5M0MpCehiHzreSzNTczkc9d\\\"?> <x:xmpmeta xmlns:x=\\\"adobe:ns:meta\\/\\\" x:xmptk=\\\"Adobe XMP Core 5.6-c111 79.158325, 2015\\/09\\/10-01:10:20        \\\"> <rdf:RDF xmlns:rdf=\\\"http:\\/\\/www.w3.org\\/1999\\/02\\/22-rdf-syntax-ns#\\\"> <rdf:Description rdf:about=\\\"\\\" xmlns:xmpMM=\\\"http:\\/\\/ns.adobe.com\\/xap\\/1.0\\/mm\\/\\\" xmlns:stRef=\\\"http:\\/\\/ns.adobe.com\\/xap\\/1.0\\/sType\\/ResourceRef#\\\" xmlns:xmp=\\\"http:\\/\\/ns.adobe.com\\/xap\\/1.0\\/\\\" xmlns:dc=\\\"http:\\/\\/purl.org\\/dc\\/elements\\/1.1\\/\\\" xmpMM:OriginalDocumentID=\\\"4E64C9422D9B5761369A0A4F04EF1AE1\\\" xmpMM:DocumentID=\\\"xmp.did:C7AEC8E4955411E5B154A7A786D40A7B\\\" xmpMM:InstanceID=\\\"xmp.iid:C7AEC8E3955411E5B154A7A786D40A7B\\\" xmp:CreatorTool=\\\"Adobe Photoshop CC 2015 (Macintosh)\\\"> <xmpMM:DerivedFrom stRef:instanceID=\\\"xmp.iid:8bd34d75-8b4e-4f2c-bf7a-06fee37478f5\\\" stRef:documentID=\\\"xmp.did:2d0c5752-ae7f-4bd3-9420-f88416c78e78\\\"\\/> <dc:creator> <rdf:Seq> <rdf:li>unknown<\\/rdf:li> <\\/rdf:Seq> <\\/dc:creator> <\\/rdf:Description> <\\/rdf:RDF> <\\/x:xmpmeta> <?xpacket end=\\\"r\\\"?>\"]},\"comments_html\":{\"Software\":[\"Adobe ImageReady\"],\"XML:com.adobe.xmp\":[\"&lt;?xpacket begin=&quot;&#65279;&quot; id=&quot;W5M0MpCehiHzreSzNTczkc9d&quot;?&gt; &lt;x:xmpmeta xmlns:x=&quot;adobe:ns:meta\\/&quot; x:xmptk=&quot;Adobe XMP Core 5.6-c111 79.158325, 2015\\/09\\/10-01:10:20        &quot;&gt; &lt;rdf:RDF xmlns:rdf=&quot;http:\\/\\/www.w3.org\\/1999\\/02\\/22-rdf-syntax-ns#&quot;&gt; &lt;rdf:Description rdf:about=&quot;&quot; xmlns:xmpMM=&quot;http:\\/\\/ns.adobe.com\\/xap\\/1.0\\/mm\\/&quot; xmlns:stRef=&quot;http:\\/\\/ns.adobe.com\\/xap\\/1.0\\/sType\\/ResourceRef#&quot; xmlns:xmp=&quot;http:\\/\\/ns.adobe.com\\/xap\\/1.0\\/&quot; xmlns:dc=&quot;http:\\/\\/purl.org\\/dc\\/elements\\/1.1\\/&quot; xmpMM:OriginalDocumentID=&quot;4E64C9422D9B5761369A0A4F04EF1AE1&quot; xmpMM:DocumentID=&quot;xmp.did:C7AEC8E4955411E5B154A7A786D40A7B&quot; xmpMM:InstanceID=&quot;xmp.iid:C7AEC8E3955411E5B154A7A786D40A7B&quot; xmp:CreatorTool=&quot;Adobe Photoshop CC 2015 (Macintosh)&quot;&gt; &lt;xmpMM:DerivedFrom stRef:instanceID=&quot;xmp.iid:8bd34d75-8b4e-4f2c-bf7a-06fee37478f5&quot; stRef:documentID=&quot;xmp.did:2d0c5752-ae7f-4bd3-9420-f88416c78e78&quot;\\/&gt; &lt;dc:creator&gt; &lt;rdf:Seq&gt; &lt;rdf:li&gt;unknown&lt;\\/rdf:li&gt; &lt;\\/rdf:Seq&gt; &lt;\\/dc:creator&gt; &lt;\\/rdf:Description&gt; &lt;\\/rdf:RDF&gt; &lt;\\/x:xmpmeta&gt; &lt;?xpacket end=&quot;r&quot;?&gt;\"]}}'),
(40, 41, NULL, 8629165, 1, '470282902859e705982e1c08367f7d10', 'image/png', 'PNG image data, 1938 x 3222, 8-bit/color RGBA, non-interlaced', 'b3e47261502b2fe75d6437cd362acd30.png', 'MAR_Reclamepancarte0002_0001_AC.png', '2017-11-08 13:46:39', '2017-11-08 13:42:15', 1, '{\"mime_type\":\"image\\/png\",\"video\":{\"dataformat\":\"png\",\"lossless\":false,\"resolution_x\":1938,\"resolution_y\":3222,\"bits_per_sample\":32,\"compression_ratio\":0.34548522028955985785358961948077194392681121826171875},\"comments\":{\"Software\":[\"Adobe ImageReady\"],\"XML:com.adobe.xmp\":[\"<?xpacket begin=\\\"\\ufeff\\\" id=\\\"W5M0MpCehiHzreSzNTczkc9d\\\"?> <x:xmpmeta xmlns:x=\\\"adobe:ns:meta\\/\\\" x:xmptk=\\\"Adobe XMP Core 5.6-c111 79.158325, 2015\\/09\\/10-01:10:20        \\\"> <rdf:RDF xmlns:rdf=\\\"http:\\/\\/www.w3.org\\/1999\\/02\\/22-rdf-syntax-ns#\\\"> <rdf:Description rdf:about=\\\"\\\" xmlns:xmpMM=\\\"http:\\/\\/ns.adobe.com\\/xap\\/1.0\\/mm\\/\\\" xmlns:stRef=\\\"http:\\/\\/ns.adobe.com\\/xap\\/1.0\\/sType\\/ResourceRef#\\\" xmlns:xmp=\\\"http:\\/\\/ns.adobe.com\\/xap\\/1.0\\/\\\" xmlns:dc=\\\"http:\\/\\/purl.org\\/dc\\/elements\\/1.1\\/\\\" xmpMM:OriginalDocumentID=\\\"2B26B4884085AB835BC4824A622602BD\\\" xmpMM:DocumentID=\\\"xmp.did:244F9AD5955411E5B154A7A786D40A7B\\\" xmpMM:InstanceID=\\\"xmp.iid:244F9AD4955411E5B154A7A786D40A7B\\\" xmp:CreatorTool=\\\"Adobe Photoshop CC 2015 (Macintosh)\\\"> <xmpMM:DerivedFrom stRef:instanceID=\\\"xmp.iid:f16e4653-2a3a-48bf-b0ae-91b0d5ce745b\\\" stRef:documentID=\\\"xmp.did:c0962efe-185a-4aa2-9267-8bb1cf6652a4\\\"\\/> <dc:creator> <rdf:Seq> <rdf:li>unknown<\\/rdf:li> <\\/rdf:Seq> <\\/dc:creator> <\\/rdf:Description> <\\/rdf:RDF> <\\/x:xmpmeta> <?xpacket end=\\\"r\\\"?>\"]},\"comments_html\":{\"Software\":[\"Adobe ImageReady\"],\"XML:com.adobe.xmp\":[\"&lt;?xpacket begin=&quot;&#65279;&quot; id=&quot;W5M0MpCehiHzreSzNTczkc9d&quot;?&gt; &lt;x:xmpmeta xmlns:x=&quot;adobe:ns:meta\\/&quot; x:xmptk=&quot;Adobe XMP Core 5.6-c111 79.158325, 2015\\/09\\/10-01:10:20        &quot;&gt; &lt;rdf:RDF xmlns:rdf=&quot;http:\\/\\/www.w3.org\\/1999\\/02\\/22-rdf-syntax-ns#&quot;&gt; &lt;rdf:Description rdf:about=&quot;&quot; xmlns:xmpMM=&quot;http:\\/\\/ns.adobe.com\\/xap\\/1.0\\/mm\\/&quot; xmlns:stRef=&quot;http:\\/\\/ns.adobe.com\\/xap\\/1.0\\/sType\\/ResourceRef#&quot; xmlns:xmp=&quot;http:\\/\\/ns.adobe.com\\/xap\\/1.0\\/&quot; xmlns:dc=&quot;http:\\/\\/purl.org\\/dc\\/elements\\/1.1\\/&quot; xmpMM:OriginalDocumentID=&quot;2B26B4884085AB835BC4824A622602BD&quot; xmpMM:DocumentID=&quot;xmp.did:244F9AD5955411E5B154A7A786D40A7B&quot; xmpMM:InstanceID=&quot;xmp.iid:244F9AD4955411E5B154A7A786D40A7B&quot; xmp:CreatorTool=&quot;Adobe Photoshop CC 2015 (Macintosh)&quot;&gt; &lt;xmpMM:DerivedFrom stRef:instanceID=&quot;xmp.iid:f16e4653-2a3a-48bf-b0ae-91b0d5ce745b&quot; stRef:documentID=&quot;xmp.did:c0962efe-185a-4aa2-9267-8bb1cf6652a4&quot;\\/&gt; &lt;dc:creator&gt; &lt;rdf:Seq&gt; &lt;rdf:li&gt;unknown&lt;\\/rdf:li&gt; &lt;\\/rdf:Seq&gt; &lt;\\/dc:creator&gt; &lt;\\/rdf:Description&gt; &lt;\\/rdf:RDF&gt; &lt;\\/x:xmpmeta&gt; &lt;?xpacket end=&quot;r&quot;?&gt;\"]}}'),
(42, 43, NULL, 13140535, 1, '39598b0ebf940d96d395057010353691', 'image/png', 'PNG image data, 2044 x 3091, 8-bit/color RGBA, non-interlaced', 'ea090fb9d91256de47b9d93f0a2bb464.png', 'MAR_Reclamepancarte0003_0001_AC.png', '2017-11-08 13:45:49', '2017-11-08 13:45:36', 1, '{\"mime_type\":\"image\\/png\",\"video\":{\"dataformat\":\"png\",\"lossless\":false,\"resolution_x\":2044,\"resolution_y\":3091,\"bits_per_sample\":32,\"compression_ratio\":0.51996386042174080888145226708729751408100128173828125},\"comments\":{\"Software\":[\"Adobe ImageReady\"],\"XML:com.adobe.xmp\":[\"<?xpacket begin=\\\"\\ufeff\\\" id=\\\"W5M0MpCehiHzreSzNTczkc9d\\\"?> <x:xmpmeta xmlns:x=\\\"adobe:ns:meta\\/\\\" x:xmptk=\\\"Adobe XMP Core 5.6-c111 79.158325, 2015\\/09\\/10-01:10:20        \\\"> <rdf:RDF xmlns:rdf=\\\"http:\\/\\/www.w3.org\\/1999\\/02\\/22-rdf-syntax-ns#\\\"> <rdf:Description rdf:about=\\\"\\\" xmlns:xmpMM=\\\"http:\\/\\/ns.adobe.com\\/xap\\/1.0\\/mm\\/\\\" xmlns:stRef=\\\"http:\\/\\/ns.adobe.com\\/xap\\/1.0\\/sType\\/ResourceRef#\\\" xmlns:xmp=\\\"http:\\/\\/ns.adobe.com\\/xap\\/1.0\\/\\\" xmlns:dc=\\\"http:\\/\\/purl.org\\/dc\\/elements\\/1.1\\/\\\" xmpMM:OriginalDocumentID=\\\"29B347BDC5FFBB0BB9864E9A28BB7830\\\" xmpMM:DocumentID=\\\"xmp.did:244F9AD9955411E5B154A7A786D40A7B\\\" xmpMM:InstanceID=\\\"xmp.iid:244F9AD8955411E5B154A7A786D40A7B\\\" xmp:CreatorTool=\\\"Adobe Photoshop CC 2015 (Macintosh)\\\"> <xmpMM:DerivedFrom stRef:instanceID=\\\"xmp.iid:03ef499c-545f-4ee9-a535-1c34ebe44ba1\\\" stRef:documentID=\\\"xmp.did:2d51908b-6eec-4079-a7e9-f6165a5c3f19\\\"\\/> <dc:creator> <rdf:Seq> <rdf:li>unknown<\\/rdf:li> <\\/rdf:Seq> <\\/dc:creator> <\\/rdf:Description> <\\/rdf:RDF> <\\/x:xmpmeta> <?xpacket end=\\\"r\\\"?>\"]},\"comments_html\":{\"Software\":[\"Adobe ImageReady\"],\"XML:com.adobe.xmp\":[\"&lt;?xpacket begin=&quot;&#65279;&quot; id=&quot;W5M0MpCehiHzreSzNTczkc9d&quot;?&gt; &lt;x:xmpmeta xmlns:x=&quot;adobe:ns:meta\\/&quot; x:xmptk=&quot;Adobe XMP Core 5.6-c111 79.158325, 2015\\/09\\/10-01:10:20        &quot;&gt; &lt;rdf:RDF xmlns:rdf=&quot;http:\\/\\/www.w3.org\\/1999\\/02\\/22-rdf-syntax-ns#&quot;&gt; &lt;rdf:Description rdf:about=&quot;&quot; xmlns:xmpMM=&quot;http:\\/\\/ns.adobe.com\\/xap\\/1.0\\/mm\\/&quot; xmlns:stRef=&quot;http:\\/\\/ns.adobe.com\\/xap\\/1.0\\/sType\\/ResourceRef#&quot; xmlns:xmp=&quot;http:\\/\\/ns.adobe.com\\/xap\\/1.0\\/&quot; xmlns:dc=&quot;http:\\/\\/purl.org\\/dc\\/elements\\/1.1\\/&quot; xmpMM:OriginalDocumentID=&quot;29B347BDC5FFBB0BB9864E9A28BB7830&quot; xmpMM:DocumentID=&quot;xmp.did:244F9AD9955411E5B154A7A786D40A7B&quot; xmpMM:InstanceID=&quot;xmp.iid:244F9AD8955411E5B154A7A786D40A7B&quot; xmp:CreatorTool=&quot;Adobe Photoshop CC 2015 (Macintosh)&quot;&gt; &lt;xmpMM:DerivedFrom stRef:instanceID=&quot;xmp.iid:03ef499c-545f-4ee9-a535-1c34ebe44ba1&quot; stRef:documentID=&quot;xmp.did:2d51908b-6eec-4079-a7e9-f6165a5c3f19&quot;\\/&gt; &lt;dc:creator&gt; &lt;rdf:Seq&gt; &lt;rdf:li&gt;unknown&lt;\\/rdf:li&gt; &lt;\\/rdf:Seq&gt; &lt;\\/dc:creator&gt; &lt;\\/rdf:Description&gt; &lt;\\/rdf:RDF&gt; &lt;\\/x:xmpmeta&gt; &lt;?xpacket end=&quot;r&quot;?&gt;\"]}}'),
(43, 44, 2, 123552, 0, '519aed23b1f751c92069f8ceb0ba2ff6', 'application/pdf', 'PDF document, version 1.6', '6f678e075c1a947639791a6bb30c1248.pdf', 'BAPMMP-03_intereactive.pdf', '2017-11-27 08:52:16', '2017-11-27 07:43:10', 1, '{\"mime_type\":\"application\\/pdf\"}');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `omeka_items`
--

CREATE TABLE `omeka_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `item_type_id` int(10) UNSIGNED DEFAULT NULL,
  `collection_id` int(10) UNSIGNED DEFAULT NULL,
  `featured` tinyint(4) NOT NULL,
  `public` tinyint(4) NOT NULL,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `added` timestamp NOT NULL DEFAULT '1999-12-31 23:00:00',
  `owner_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `omeka_items`
--

INSERT INTO `omeka_items` (`id`, `item_type_id`, `collection_id`, `featured`, `public`, `modified`, `added`, `owner_id`) VALUES
(31, 6, 1, 0, 1, '2017-10-13 12:12:45', '2017-10-13 12:12:45', 1),
(32, 6, 1, 1, 1, '2017-10-13 12:50:32', '2017-10-13 12:12:48', 1),
(33, 6, 1, 0, 1, '2017-10-13 12:12:48', '2017-10-13 12:12:48', 1),
(34, 6, 2, 0, 0, '2017-10-13 12:54:50', '2017-10-13 12:54:50', 1),
(35, 6, 2, 0, 0, '2017-10-13 12:54:52', '2017-10-13 12:54:52', 1),
(36, 6, 2, 0, 1, '2017-10-13 12:56:26', '2017-10-13 12:54:53', 1),
(37, 6, 1, 0, 1, '2017-10-20 08:49:23', '2017-10-19 09:46:54', 1),
(38, 6, 2, 0, 1, '2017-10-27 13:10:18', '2017-10-27 13:08:00', 1),
(40, 6, 2, 0, 1, '2017-11-08 13:42:52', '2017-11-08 13:12:19', 1),
(41, NULL, 2, 0, 1, '2017-11-08 13:46:39', '2017-11-08 13:42:15', 1),
(43, NULL, 2, 0, 1, '2017-11-08 13:45:49', '2017-11-08 13:45:36', 1),
(44, 1, 2, 0, 1, '2017-11-27 08:52:16', '2017-11-27 07:43:10', 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `omeka_item_order_item_orders`
--

CREATE TABLE `omeka_item_order_item_orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `collection_id` int(10) UNSIGNED NOT NULL,
  `item_id` int(10) UNSIGNED NOT NULL,
  `order` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `omeka_item_order_item_orders`
--

INSERT INTO `omeka_item_order_item_orders` (`id`, `collection_id`, `item_id`, `order`) VALUES
(1, 2, 43, 1),
(2, 2, 41, 2),
(3, 2, 40, 3),
(4, 2, 38, 4),
(5, 2, 36, 5),
(6, 2, 35, 6),
(7, 2, 34, 7);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `omeka_item_types`
--

CREATE TABLE `omeka_item_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `omeka_item_types`
--

INSERT INTO `omeka_item_types` (`id`, `name`, `description`) VALUES
(1, 'Text', 'A resource consisting primarily of words for reading. Examples include books, letters, dissertations, poems, newspapers, articles, archives of mailing lists. Note that facsimiles or images of texts are still of the genre Text.'),
(3, 'Moving Image', 'A series of visual representations imparting an impression of motion when shown in succession. Examples include animations, movies, television programs, videos, zoetropes, or visual output from a simulation.'),
(4, 'Oral History', 'A resource containing historical information obtained in interviews with persons having firsthand knowledge.'),
(5, 'Sound', 'A resource primarily intended to be heard. Examples include a music playback file format, an audio compact disc, and recorded speech or sounds.'),
(6, 'Still Image', 'A static visual representation. Examples include paintings, drawings, graphic designs, plans and maps. Recommended best practice is to assign the type Text to images of textual materials.'),
(7, 'Website', 'A resource comprising of a web page or web pages and all related assets ( such as images, sound and video files, etc. ).'),
(8, 'Event', 'A non-persistent, time-based occurrence. Metadata for an event provides descriptive information that is the basis for discovery of the purpose, location, duration, and responsible agents associated with an event. Examples include an exhibition, webcast, conference, workshop, open day, performance, battle, trial, wedding, tea party, conflagration.'),
(9, 'Email', 'A resource containing textual messages and binary attachments sent electronically from one person to another or one person to many people.'),
(10, 'Lesson Plan', 'A resource that gives a detailed description of a course of instruction.'),
(11, 'Hyperlink', 'A link, or reference, to another resource on the Internet.'),
(12, 'Person', 'An individual.'),
(13, 'Interactive Resource', 'A resource requiring interaction from the user to be understood, executed, or experienced. Examples include forms on Web pages, applets, multimedia learning objects, chat services, or virtual reality environments.'),
(14, 'Dataset', 'Data encoded in a defined structure. Examples include lists, tables, and databases. A dataset may be useful for direct machine processing.'),
(15, 'Physical Object', 'An inanimate, three-dimensional object or substance. Note that digital representations of, or surrogates for, these objects should use Moving Image, Still Image, Text or one of the other types.'),
(16, 'Service', 'A system that provides one or more functions. Examples include a photocopying service, a banking service, an authentication service, interlibrary loans, a Z39.50 or Web server.'),
(17, 'Software', 'A computer program in source or compiled form. Examples include a C source file, MS-Windows .exe executable, or Perl script.');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `omeka_item_types_elements`
--

CREATE TABLE `omeka_item_types_elements` (
  `id` int(10) UNSIGNED NOT NULL,
  `item_type_id` int(10) UNSIGNED NOT NULL,
  `element_id` int(10) UNSIGNED NOT NULL,
  `order` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `omeka_item_types_elements`
--

INSERT INTO `omeka_item_types_elements` (`id`, `item_type_id`, `element_id`, `order`) VALUES
(1, 1, 7, NULL),
(2, 1, 1, NULL),
(3, 6, 7, NULL),
(6, 6, 10, NULL),
(7, 3, 7, NULL),
(8, 3, 11, NULL),
(9, 3, 12, NULL),
(10, 3, 13, NULL),
(11, 3, 14, NULL),
(12, 3, 5, NULL),
(13, 5, 7, NULL),
(14, 5, 11, NULL),
(15, 5, 15, NULL),
(16, 5, 5, NULL),
(17, 4, 7, NULL),
(18, 4, 11, NULL),
(19, 4, 15, NULL),
(20, 4, 5, NULL),
(21, 4, 2, NULL),
(22, 4, 3, NULL),
(23, 4, 4, NULL),
(24, 4, 16, NULL),
(25, 9, 17, NULL),
(26, 9, 18, NULL),
(27, 9, 20, NULL),
(28, 9, 19, NULL),
(29, 9, 21, NULL),
(30, 9, 22, NULL),
(31, 9, 23, NULL),
(32, 10, 24, NULL),
(33, 10, 25, NULL),
(34, 10, 26, NULL),
(35, 10, 11, NULL),
(36, 10, 27, NULL),
(37, 7, 6, NULL),
(38, 11, 28, NULL),
(39, 8, 29, NULL),
(40, 8, 30, NULL),
(41, 8, 11, NULL),
(42, 12, 31, NULL),
(43, 12, 32, NULL),
(44, 12, 33, NULL),
(45, 12, 34, NULL),
(46, 12, 35, NULL),
(47, 12, 36, NULL);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `omeka_keys`
--

CREATE TABLE `omeka_keys` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `label` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `key` char(40) COLLATE utf8_unicode_ci NOT NULL,
  `ip` varbinary(16) DEFAULT NULL,
  `accessed` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `omeka_options`
--

CREATE TABLE `omeka_options` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `omeka_options`
--

INSERT INTO `omeka_options` (`id`, `name`, `value`) VALUES
(1, 'omeka_version', '2.5.1'),
(14, 'admin_theme', 'default'),
(20, 'display_system_info', '1'),
(27, 'api_enable', ''),
(28, 'api_per_page', '50'),
(33, 'theme_berlin_options', 'a:11:{s:4:\"logo\";N;s:12:\"header_image\";N;s:21:\"display_featured_item\";s:1:\"1\";s:27:\"display_featured_collection\";s:1:\"1\";s:24:\"display_featured_exhibit\";s:1:\"1\";s:21:\"homepage_recent_items\";N;s:13:\"homepage_text\";N;s:11:\"footer_text\";N;s:24:\"display_footer_copyright\";s:1:\"0\";s:19:\"use_advanced_search\";s:1:\"0\";s:17:\"theme_config_csrf\";N;}'),
(35, 'theme_artevelde_options', 'a:11:{s:4:\"logo\";N;s:12:\"header_image\";N;s:21:\"display_featured_item\";s:1:\"1\";s:27:\"display_featured_collection\";s:1:\"1\";s:24:\"display_featured_exhibit\";s:1:\"1\";s:21:\"homepage_recent_items\";N;s:13:\"homepage_text\";N;s:11:\"footer_text\";N;s:24:\"display_footer_copyright\";s:1:\"0\";s:19:\"use_advanced_search\";s:1:\"0\";s:17:\"theme_config_csrf\";N;}'),
(45, 'exhibit_builder_sort_browse', 'added'),
(63, 'site_title', 'Beeldbank'),
(64, 'description', ''),
(65, 'administrator_email', 'annelien.haeghebaert@student.arteveldehs.be'),
(66, 'copyright', ''),
(67, 'author', ''),
(68, 'tag_delimiter', ','),
(69, 'path_to_convert', '/Applications/MAMP/Library/bin/'),
(76, 'csv_import_memory_limit', ''),
(77, 'csv_import_php_path', ''),
(110, 'simple_pages_filter_page_content', '0'),
(127, 'simple_contact_form_reply_from_email', 'annelien.haeghebaert@student.arteveldehs.be'),
(128, 'simple_contact_form_forward_to_email', 'annelien.haeghebaert@student.arteveldehs.be'),
(129, 'simple_contact_form_admin_notification_email_subject', 'Een bezoeker van Beeldbank Mediatheek Mariakerke wil contact maken.'),
(130, 'simple_contact_form_admin_notification_email_message_header', 'Een bezoeker ban Beeldbank Mediatheek Mariakerke meldt het volgende:'),
(131, 'simple_contact_form_user_notification_email_subject', 'Bericht Mediatheek Mariakerke'),
(132, 'simple_contact_form_user_notification_email_message_header', 'Bedankt, wij hebben uw bericht goed ontvangen. \r\nEén van onze medewerkers zal spoedig contact met u opnemen.'),
(133, 'simple_contact_form_contact_page_title', 'Contact'),
(134, 'simple_contact_form_contact_page_instructions', '<p>Vragen of opmerkingen over de beeldbank? Contacteer ons!</p>'),
(135, 'simple_contact_form_thankyou_page_title', 'Bedankt voor je bericht!'),
(136, 'simple_contact_form_thankyou_page_message', '<p>Wij zullen zo spoedig mogelijk reageren op de vraag of opmerking.</p>'),
(137, 'simple_contact_form_add_to_main_navigation', '1'),
(139, 'theme_centerrow_options', 'a:13:{s:4:\"logo\";N;s:12:\"header_image\";N;s:21:\"display_featured_item\";s:1:\"1\";s:27:\"display_featured_collection\";s:1:\"1\";s:24:\"display_featured_exhibit\";s:1:\"1\";s:13:\"homepage_text\";N;s:11:\"footer_text\";N;s:24:\"display_footer_copyright\";s:1:\"0\";s:19:\"use_advanced_search\";s:1:\"0\";s:13:\"body_bg_color\";s:7:\"#FFFFFF\";s:12:\"border_color\";s:7:\"#DEDEDE\";s:10:\"link_color\";s:7:\"#C72E2E\";s:17:\"theme_config_csrf\";N;}'),
(144, 'theme_avantgarde_options', 'a:12:{s:4:\"logo\";N;s:12:\"header_image\";N;s:20:\"header_image_heading\";N;s:17:\"header_image_text\";N;s:21:\"display_featured_item\";s:1:\"1\";s:27:\"display_featured_collection\";s:1:\"1\";s:24:\"display_featured_exhibit\";s:1:\"1\";s:21:\"homepage_recent_items\";N;s:13:\"homepage_text\";N;s:11:\"footer_text\";N;s:19:\"use_advanced_search\";s:1:\"0\";s:17:\"theme_config_csrf\";N;}'),
(245, 'use_square_thumbnail', '0'),
(246, 'fullsize_constraint', '100'),
(247, 'thumbnail_constraint', '200'),
(248, 'square_thumbnail_constraint', '200'),
(249, 'per_page_admin', '10'),
(250, 'per_page_public', '40'),
(251, 'show_empty_elements', '0'),
(252, 'show_element_set_headings', '1'),
(271, 'install_plugin', 'Save Changes'),
(272, 'csrf_token', '7a54b0ef0cfea9cd15b2f9ad1e9be741'),
(293, 'search_record_types', 'a:6:{s:4:\"Item\";s:4:\"Item\";s:4:\"File\";s:4:\"File\";s:10:\"Collection\";s:10:\"Collection\";s:7:\"Exhibit\";s:7:\"Exhibit\";s:11:\"ExhibitPage\";s:1:\"0\";s:15:\"SimplePagesPage\";s:1:\"0\";}'),
(306, 'pdf_embed_settings', '{\"height\":500,\"pdf_embed_type\":\"object\"}'),
(324, 'social_bookmarking_add_to_omeka_items', '1'),
(325, 'social_bookmarking_add_to_omeka_collections', '1'),
(326, 'social_bookmarking_services', 'a:202:{s:11:\"100zakladok\";i:0;s:10:\"addressbar\";i:0;s:5:\"adfty\";i:0;s:6:\"adifni\";i:0;s:5:\"advqr\";i:0;s:3:\"aim\";i:0;s:14:\"amazonwishlist\";i:0;s:6:\"amenme\";i:0;s:7:\"aolmail\";i:0;s:7:\"apsense\";i:0;s:5:\"atavi\";i:0;s:5:\"baidu\";i:0;s:9:\"balatarin\";i:0;s:7:\"beat100\";i:0;s:5:\"bitly\";i:0;s:8:\"bizsugar\";i:0;s:5:\"bland\";i:0;s:7:\"blogger\";i:0;s:8:\"blogkeen\";i:0;s:9:\"blogmarks\";i:0;s:8:\"bobrdobr\";i:0;s:8:\"bonzobox\";i:0;s:11:\"bookmarkycz\";i:0;s:12:\"bookmerkende\";i:0;s:3:\"box\";i:0;s:6:\"buffer\";i:0;s:6:\"camyoo\";i:0;s:5:\"care2\";i:0;s:9:\"citeulike\";i:0;s:10:\"cleanprint\";i:0;s:9:\"cleansave\";i:0;s:5:\"cloob\";i:0;s:6:\"cosmiq\";i:0;s:8:\"cssbased\";i:0;s:8:\"diary_ru\";i:0;s:4:\"digg\";i:0;s:7:\"diggita\";i:0;s:5:\"diigo\";i:0;s:16:\"domaintoolswhois\";i:0;s:6:\"douban\";i:0;s:8:\"draugiem\";i:0;s:6:\"edcast\";i:0;s:5:\"email\";i:0;s:8:\"evernote\";i:0;s:9:\"exchangle\";i:0;s:12:\"fabulously40\";i:0;s:8:\"facebook\";i:1;s:13:\"facebook_like\";i:0;s:8:\"facenama\";i:0;s:11:\"fashiolista\";i:0;s:7:\"favable\";i:0;s:5:\"faves\";i:0;s:9:\"favorites\";i:0;s:9:\"favoritus\";i:0;s:14:\"financialjuice\";i:0;s:9:\"flipboard\";i:0;s:5:\"folkd\";i:0;s:10:\"foursquare\";i:0;s:2:\"gg\";i:0;s:5:\"gmail\";i:0;s:6:\"google\";i:0;s:16:\"google_classroom\";i:0;s:14:\"google_plusone\";i:0;s:20:\"google_plusone_share\";i:0;s:15:\"googletranslate\";i:0;s:4:\"govn\";i:0;s:10:\"hackernews\";i:0;s:6:\"hatena\";i:0;s:9:\"hedgehogs\";i:0;s:10:\"historious\";i:0;s:9:\"hootsuite\";i:0;s:7:\"hotmail\";i:0;s:5:\"houzz\";i:0;s:7:\"indexor\";i:0;s:12:\"informazione\";i:0;s:10:\"instapaper\";i:0;s:15:\"internetarchive\";i:0;s:6:\"iorbix\";i:0;s:5:\"jappy\";i:0;s:6:\"kaixin\";i:0;s:5:\"kakao\";i:0;s:9:\"kakaotalk\";i:0;s:7:\"ketnooi\";i:0;s:8:\"kindleit\";i:0;s:5:\"kledy\";i:0;s:5:\"lidar\";i:0;s:6:\"lineme\";i:0;s:4:\"link\";i:0;s:8:\"linkedin\";i:1;s:6:\"linkuj\";i:0;s:11:\"livejournal\";i:0;s:6:\"mailto\";i:0;s:8:\"margarin\";i:0;s:6:\"markme\";i:0;s:6:\"meinvz\";i:0;s:7:\"memonic\";i:0;s:6:\"memori\";i:0;s:8:\"mendeley\";i:0;s:7:\"meneame\";i:0;s:9:\"messenger\";i:0;s:4:\"mixi\";i:0;s:8:\"moemesto\";i:0;s:12:\"mrcnetworkit\";i:0;s:8:\"mymailru\";i:0;s:7:\"myspace\";i:0;s:9:\"myvidster\";i:0;s:3:\"n4g\";i:0;s:10:\"naszaklasa\";i:0;s:8:\"netvibes\";i:0;s:7:\"netvouz\";i:0;s:10:\"newsmeback\";i:0;s:8:\"newsvine\";i:0;s:5:\"nujij\";i:0;s:13:\"nurses_lounge\";i:0;s:16:\"odnoklassniki_ru\";i:0;s:9:\"oknotizie\";i:0;s:7:\"onenote\";i:0;s:11:\"openthedoor\";i:0;s:5:\"oyyla\";i:0;s:8:\"pafnetde\";i:0;s:8:\"pdfmyurl\";i:0;s:8:\"pinboard\";i:0;s:9:\"pinterest\";i:0;s:15:\"pinterest_share\";i:1;s:5:\"plurk\";i:0;s:6:\"pocket\";i:0;s:8:\"posteezy\";i:0;s:5:\"print\";i:0;s:13:\"printfriendly\";i:0;s:5:\"pusha\";i:0;s:5:\"qrsrc\";i:0;s:9:\"quantcast\";i:0;s:5:\"qzone\";i:0;s:6:\"reddit\";i:0;s:6:\"rediff\";i:0;s:6:\"renren\";i:0;s:12:\"researchgate\";i:0;s:9:\"retellity\";i:0;s:11:\"safelinking\";i:0;s:7:\"scoopit\";i:0;s:6:\"sharer\";i:0;s:9:\"sinaweibo\";i:0;s:5:\"skype\";i:0;s:7:\"skyrock\";i:0;s:5:\"slack\";i:0;s:5:\"smiru\";i:0;s:3:\"sms\";i:0;s:8:\"sodahead\";i:0;s:8:\"spinsnap\";i:0;s:8:\"startaid\";i:0;s:8:\"startlap\";i:0;s:7:\"studivz\";i:0;s:8:\"stuffpit\";i:0;s:11:\"stumbleupon\";i:0;s:9:\"stumpedia\";i:0;s:11:\"stylishhome\";i:0;s:6:\"supbro\";i:0;s:11:\"surfingbird\";i:0;s:5:\"svejo\";i:0;s:8:\"symbaloo\";i:0;s:7:\"taringa\";i:0;s:8:\"technerd\";i:0;s:8:\"telegram\";i:0;s:9:\"tencentqq\";i:0;s:12:\"tencentweibo\";i:0;s:8:\"thefancy\";i:0;s:17:\"thefreedictionary\";i:0;s:8:\"thisnext\";i:0;s:6:\"trello\";i:0;s:6:\"tuenti\";i:0;s:6:\"tumblr\";i:0;s:7:\"twitter\";i:1;s:7:\"typepad\";i:0;s:13:\"urlaubswerkde\";i:0;s:6:\"viadeo\";i:0;s:5:\"viber\";i:0;s:4:\"virb\";i:0;s:14:\"visitezmonsite\";i:0;s:2:\"vk\";i:0;s:12:\"vkrugudruzei\";i:0;s:9:\"voxopolis\";i:0;s:10:\"vybralisme\";i:0;s:11:\"w3validator\";i:0;s:6:\"wanelo\";i:0;s:6:\"wechat\";i:0;s:9:\"weheartit\";i:0;s:8:\"whatsapp\";i:0;s:9:\"wishmindr\";i:0;s:9:\"wordpress\";i:0;s:5:\"wykop\";i:0;s:4:\"xing\";i:0;s:9:\"yahoomail\";i:0;s:6:\"yammer\";i:0;s:6:\"yookos\";i:0;s:7:\"yoolink\";i:0;s:10:\"yorumcuyum\";i:0;s:6:\"youmob\";i:0;s:6:\"yummly\";i:0;s:5:\"yuuby\";i:0;s:11:\"zakladoknet\";i:0;s:6:\"ziczac\";i:0;s:6:\"zingme\";i:0;}'),
(392, 'theme_starter_options', 'a:5:{s:21:\"display_featured_item\";s:1:\"0\";s:27:\"display_featured_collection\";s:1:\"1\";s:24:\"display_featured_exhibit\";s:1:\"0\";s:21:\"homepage_recent_items\";s:1:\"2\";s:14:\"homepage_about\";s:728:\"<span><span><strong></strong></span></span>\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque urna leo, gravida eget vulputate in, feugiat eu nisi. Nullam dapibus a risus et molestie. Vestibulum auctor nisl id tellus interdum, id lacinia ligula congue. Sed vulputate mi quis aliquam cursus. Donec pellentesque fermentum lectus, id vestibulum orci eleifend ut. Cras eros orci, lobortis quis urna nec, pretium tincidunt erat. In hendrerit, velit vel sagittis lobortis, ante eros sollicitudin tellus, consectetur faucibus eros diam ut ligula. Aliquam non efficitur dolor. Donec bibendum vitae quam ac pellentesque. Praesent libero ligula, vehicula non ipsum nec, vehicula ultrices lectus. Sed quis orci tellus</p>\";}'),
(393, 'helpers_order_element_set_name', 'Dublin Core'),
(394, 'helpers_order_element_name', 'Date'),
(395, 'helpers_order_by_collection', '1'),
(418, 'public_theme', 'STARTER'),
(420, 'html5_media_settings', 'a:4:{s:5:\"video\";a:3:{s:7:\"options\";a:3:{s:5:\"width\";i:480;s:6:\"height\";i:270;s:10:\"responsive\";b:0;}s:5:\"types\";a:7:{i:0;s:9:\"video/flv\";i:1;s:11:\"video/x-flv\";i:2;s:9:\"video/mp4\";i:3;s:9:\"video/m4v\";i:4;s:10:\"video/webm\";i:5;s:9:\"video/wmv\";i:6;s:15:\"video/quicktime\";}s:10:\"extensions\";a:5:{i:0;s:3:\"mp4\";i:1;s:3:\"m4v\";i:2;s:3:\"flv\";i:3;s:4:\"webm\";i:4;s:3:\"wmv\";}}s:5:\"audio\";a:3:{s:7:\"options\";a:2:{s:5:\"width\";i:400;s:10:\"responsive\";b:0;}s:5:\"types\";a:7:{i:0;s:10:\"audio/mpeg\";i:1;s:9:\"audio/mp3\";i:2;s:9:\"audio/wav\";i:3;s:11:\"audio/x-wav\";i:4;s:9:\"audio/m4a\";i:5;s:9:\"audio/wma\";i:6;s:9:\"audio/mp4\";}s:10:\"extensions\";a:4:{i:0;s:3:\"mp3\";i:1;s:3:\"m4a\";i:2;s:3:\"wav\";i:3;s:3:\"wma\";}}s:4:\"text\";a:2:{s:5:\"types\";a:1:{i:0;s:8:\"text/vtt\";}s:10:\"extensions\";a:2:{i:0;s:3:\"srt\";i:1;s:3:\"vtt\";}}s:6:\"common\";a:1:{s:7:\"options\";a:4:{s:8:\"autoplay\";b:0;s:8:\"controls\";b:1;s:4:\"loop\";b:0;s:7:\"preload\";s:8:\"metadata\";}}}'),
(437, 'disable_default_file_validation', '1'),
(438, 'file_extension_whitelist', 'aac,aif,aiff,asf,asx,avi,bmp,c,cc,class,css,divx,doc,docx,exe,gif,gz,gzip,h,ico,j2k,jp2,jpe,jpeg,jpg,m4a,m4v,mdb,mid,midi,mov,mp2,mp3,mp4,mpa,mpe,mpeg,mpg,mpp,odb,odc,odf,odg,odp,ods,odt,ogg,opus,pdf,png,pot,pps,ppt,pptx,qt,ra,ram,rtf,rtx,swf,tar,tif,tiff,txt,wav,wax,webm,wma,wmv,wmx,wri,xla,xls,xlsx,xlt,xlw,zip'),
(439, 'file_mime_type_whitelist', 'application/msword,application/ogg,application/pdf,application/rtf,application/vnd.ms-access,application/vnd.ms-excel,application/vnd.ms-powerpoint,application/vnd.ms-project,application/vnd.ms-write,application/vnd.oasis.opendocument.chart,application/vnd.oasis.opendocument.database,application/vnd.oasis.opendocument.formula,application/vnd.oasis.opendocument.graphics,application/vnd.oasis.opendocument.presentation,application/vnd.oasis.opendocument.spreadsheet,application/vnd.oasis.opendocument.text,application/x-ms-wmp,application/x-ogg,application/x-gzip,application/x-msdownload,application/x-shockwave-flash,application/x-tar,application/zip,audio/aac,audio/aiff,audio/mid,audio/midi,audio/mp3,audio/mp4,audio/mpeg,audio/mpeg3,audio/ogg,audio/wav,audio/wma,audio/x-aac,audio/x-aiff,audio/x-m4a,audio/x-midi,audio/x-mp3,audio/x-mp4,audio/x-mpeg,audio/x-mpeg3,audio/x-mpegaudio,audio/x-ms-wax,audio/x-realaudio,audio/x-wav,audio/x-wma,image/bmp,image/gif,image/icon,image/jpeg,image/pjpeg,image/png,image/tiff,image/x-icon,image/x-ms-bmp,text/css,text/plain,text/richtext,text/rtf,video/asf,video/avi,video/divx,video/mp4,video/mpeg,video/msvideo,video/ogg,video/quicktime,video/webm,video/x-m4v,video/x-ms-wmv,video/x-msvideo'),
(440, 'recaptcha_public_key', ''),
(441, 'recaptcha_private_key', ''),
(442, 'html_purifier_is_enabled', '1'),
(443, 'html_purifier_allowed_html_elements', 'p,br,strong,em,span,div,ul,ol,li,a,h1,h2,h3,h4,h5,h6,address,pre,table,tr,td,blockquote,thead,tfoot,tbody,th,dl,dt,dd,q,small,strike,sup,sub,b,i,big,small,tt'),
(444, 'html_purifier_allowed_html_attributes', '*.style,*.class,a.href,a.title,a.target'),
(447, 'public_navigation_main', '[{\"uid\":\"\\/index\",\"can_delete\":true,\"type\":\"Omeka_Navigation_Page_Uri\",\"label\":\"Home\",\"fragment\":null,\"id\":null,\"class\":null,\"title\":null,\"target\":null,\"accesskey\":null,\"rel\":[],\"rev\":[],\"customHtmlAttribs\":[],\"order\":1,\"resource\":null,\"privilege\":null,\"active\":false,\"visible\":true,\"pages\":[],\"uri\":\"\\/index\"},{\"uid\":\"\\/items\\/browse\",\"can_delete\":false,\"label\":\"Browse Items\",\"fragment\":null,\"id\":null,\"class\":null,\"title\":null,\"target\":null,\"accesskey\":null,\"rel\":[],\"rev\":[],\"customHtmlAttribs\":[],\"order\":2,\"resource\":null,\"privilege\":null,\"active\":false,\"visible\":false,\"type\":\"Omeka_Navigation_Page_Uri\",\"pages\":[],\"uri\":\"\\/items\\/browse\"},{\"uid\":\"\\/collections\\/browse\",\"can_delete\":false,\"label\":\"Collecties\",\"fragment\":null,\"id\":null,\"class\":null,\"title\":null,\"target\":null,\"accesskey\":null,\"rel\":[],\"rev\":[],\"customHtmlAttribs\":[],\"order\":3,\"resource\":null,\"privilege\":null,\"active\":false,\"visible\":true,\"type\":\"Omeka_Navigation_Page_Uri\",\"pages\":[],\"uri\":\"\\/collections\\/browse\"},{\"uid\":\"\\/contact\",\"can_delete\":false,\"label\":\"Contact\",\"fragment\":null,\"id\":null,\"class\":null,\"title\":null,\"target\":null,\"accesskey\":null,\"rel\":[],\"rev\":[],\"customHtmlAttribs\":[],\"order\":4,\"resource\":null,\"privilege\":null,\"active\":false,\"visible\":true,\"type\":\"Omeka_Navigation_Page_Uri\",\"pages\":[],\"uri\":\"\\/contact\"}]'),
(448, 'homepage_uri', '/index'),
(469, 'csv_import_column_delimiter', ','),
(470, 'csv_import_element_delimiter', ''),
(471, 'csv_import_tag_delimiter', ','),
(472, 'csv_import_file_delimiter', ','),
(473, 'omeka_update', 'a:2:{s:14:\"latest_version\";s:6:\"2.5.1\n\";s:12:\"last_updated\";i:1511958488;}');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `omeka_plugins`
--

CREATE TABLE `omeka_plugins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `active` tinyint(4) NOT NULL,
  `version` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `omeka_plugins`
--

INSERT INTO `omeka_plugins` (`id`, `name`, `active`, `version`) VALUES
(1, 'ExhibitBuilder', 0, '3.3.3'),
(2, 'Coins', 0, '2.0.3'),
(3, 'CsvImport', 1, '2.0.4'),
(4, 'SimplePages', 0, '3.0.8'),
(5, 'SimpleContactForm', 1, '0.5'),
(6, 'SocialBookmarking', 1, '2.0.2'),
(8, 'PdfEmbed', 1, '1.0'),
(13, 'ShortcodeCarousel', 1, '1.0.1'),
(16, 'Helpers', 1, '2.11'),
(17, 'ItemOrder', 1, '2.0.2'),
(18, 'Html5Media', 0, '2.6');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `omeka_processes`
--

CREATE TABLE `omeka_processes` (
  `id` int(10) UNSIGNED NOT NULL,
  `class` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `pid` int(10) UNSIGNED DEFAULT NULL,
  `status` enum('starting','in progress','completed','paused','error','stopped') COLLATE utf8_unicode_ci NOT NULL,
  `args` text COLLATE utf8_unicode_ci NOT NULL,
  `started` timestamp NOT NULL DEFAULT '1999-12-31 23:00:00',
  `stopped` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `omeka_processes`
--

INSERT INTO `omeka_processes` (`id`, `class`, `user_id`, `pid`, `status`, `args`, `started`, `stopped`) VALUES
(1, 'Omeka_Job_Process_Wrapper', 1, NULL, 'starting', 'a:1:{s:3:\"job\";s:102:\"{\"className\":\"Job_SearchTextIndex\",\"options\":[],\"createdAt\":\"2017-10-05T12:21:11+02:00\",\"createdBy\":1}\";}', '2017-10-05 10:21:11', NULL),
(2, 'Omeka_Job_Process_Wrapper', 1, NULL, 'starting', 'a:1:{s:3:\"job\";s:343:\"{\"className\":\"FlickrImport_ImportJob\",\"options\":{\"url\":\"https:\\/\\/www.flickr.com\\/photos\\/158980308@N06\\/albums\\/72157687938099363\",\"type\":\"photoset\",\"collection\":\"-1\",\"selecting\":false,\"selected\":[],\"public\":\"1\",\"userRole\":\"Creator\",\"email\":\"annelien.haeghebaert@student.arteveldehs.be\"},\"createdAt\":\"2017-10-13T09:28:17+02:00\",\"createdBy\":1}\";}', '2017-10-13 07:28:18', NULL),
(3, 'Omeka_Job_Process_Wrapper', 1, NULL, 'starting', 'a:1:{s:3:\"job\";s:359:\"{\"className\":\"FlickrImport_ImportJob\",\"options\":{\"url\":\"https:\\/\\/www.flickr.com\\/photos\\/158980308@N06\\/albums\\/72157687938099363\",\"type\":\"photoset\",\"collection\":\"1\",\"selecting\":true,\"selected\":{\"37668006351\":\"on\"},\"public\":\"1\",\"userRole\":\"Creator\",\"email\":\"annelien.haeghebaert@student.arteveldehs.be\"},\"createdAt\":\"2017-10-13T09:36:27+02:00\",\"createdBy\":1}\";}', '2017-10-13 07:36:28', NULL),
(4, 'Omeka_Job_Process_Wrapper', 1, NULL, 'starting', 'a:1:{s:3:\"job\";s:359:\"{\"className\":\"FlickrImport_ImportJob\",\"options\":{\"url\":\"https:\\/\\/www.flickr.com\\/photos\\/158980308@N06\\/albums\\/72157687938099363\",\"type\":\"photoset\",\"collection\":\"1\",\"selecting\":true,\"selected\":{\"37668006351\":\"on\"},\"public\":\"0\",\"userRole\":\"Creator\",\"email\":\"annelien.haeghebaert@student.arteveldehs.be\"},\"createdAt\":\"2017-10-13T09:50:07+02:00\",\"createdBy\":1}\";}', '2017-10-13 07:50:07', NULL),
(5, 'Omeka_Job_Process_Wrapper', 1, NULL, 'starting', 'a:1:{s:3:\"job\";s:168:\"{\"className\":\"CsvImport_ImportTask\",\"options\":{\"importId\":1,\"memoryLimit\":null,\"batchSize\":null,\"method\":\"start\"},\"createdAt\":\"2017-10-13T09:52:52+02:00\",\"createdBy\":1}\";}', '2017-10-13 07:52:52', NULL);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `omeka_records_tags`
--

CREATE TABLE `omeka_records_tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `record_id` int(10) UNSIGNED NOT NULL,
  `record_type` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tag_id` int(10) UNSIGNED NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `omeka_records_tags`
--

INSERT INTO `omeka_records_tags` (`id`, `record_id`, `record_type`, `tag_id`, `time`) VALUES
(35, 31, 'Item', 2, '2017-10-13 12:12:45'),
(36, 31, 'Item', 3, '2017-10-13 12:12:45'),
(37, 31, 'Item', 4, '2017-10-13 12:12:45'),
(38, 32, 'Item', 2, '2017-10-13 12:12:48'),
(39, 32, 'Item', 3, '2017-10-13 12:12:48'),
(40, 32, 'Item', 5, '2017-10-13 12:12:48'),
(41, 33, 'Item', 2, '2017-10-13 12:12:48'),
(42, 33, 'Item', 3, '2017-10-13 12:12:48'),
(43, 33, 'Item', 6, '2017-10-13 12:12:48'),
(44, 34, 'Item', 2, '2017-10-13 12:54:50'),
(45, 34, 'Item', 3, '2017-10-13 12:54:50'),
(46, 34, 'Item', 4, '2017-10-13 12:54:50'),
(47, 35, 'Item', 2, '2017-10-13 12:54:52'),
(48, 35, 'Item', 3, '2017-10-13 12:54:52'),
(49, 35, 'Item', 5, '2017-10-13 12:54:52'),
(50, 36, 'Item', 2, '2017-10-13 12:54:53'),
(51, 36, 'Item', 3, '2017-10-13 12:54:53'),
(52, 36, 'Item', 6, '2017-10-13 12:54:53'),
(54, 37, 'Item', 15, '2017-10-19 09:46:58'),
(56, 37, 'Item', 17, '2017-10-19 09:46:58'),
(57, 38, 'Item', 18, '2017-10-27 13:09:46'),
(58, 38, 'Item', 5, '2017-10-27 13:09:46'),
(59, 38, 'Item', 15, '2017-10-27 13:09:46'),
(60, 41, 'Item', 19, '2017-11-08 13:42:35');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `omeka_schema_migrations`
--

CREATE TABLE `omeka_schema_migrations` (
  `version` varchar(16) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `omeka_schema_migrations`
--

INSERT INTO `omeka_schema_migrations` (`version`) VALUES
('20100401000000'),
('20100810120000'),
('20110113000000'),
('20110124000001'),
('20110301103900'),
('20110328192100'),
('20110426181300'),
('20110601112200'),
('20110627223000'),
('20110824110000'),
('20120112100000'),
('20120220000000'),
('20120221000000'),
('20120224000000'),
('20120224000001'),
('20120402000000'),
('20120516000000'),
('20120612112000'),
('20120623095000'),
('20120710000000'),
('20120723000000'),
('20120808000000'),
('20120808000001'),
('20120813000000'),
('20120914000000'),
('20121007000000'),
('20121015000000'),
('20121015000001'),
('20121018000001'),
('20121110000000'),
('20121218000000'),
('20130422000000'),
('20130426000000'),
('20130429000000'),
('20130701000000'),
('20130809000000'),
('20140304131700'),
('20150211000000'),
('20150310141100'),
('20150814155100'),
('20151118214800'),
('20151209103299'),
('20151209103300'),
('20161209171900'),
('20170331084000'),
('20170405125800');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `omeka_search_texts`
--

CREATE TABLE `omeka_search_texts` (
  `id` int(10) UNSIGNED NOT NULL,
  `record_type` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `record_id` int(10) UNSIGNED NOT NULL,
  `public` tinyint(1) NOT NULL,
  `title` mediumtext COLLATE utf8_unicode_ci,
  `text` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `omeka_search_texts`
--

INSERT INTO `omeka_search_texts` (`id`, `record_type`, `record_id`, `public`, `title`, `text`) VALUES
(2, 'Collection', 1, 1, 'Nieuwjaarspancartes', 'Nieuwjaarspancartes De nieuwjaarspancartes omvatten ca. 120 kleurige kartonnen panelen uit de periode van de Belle Epoque (begin 20e eeuw). Deze pancartes werden ter gelegenheid van Nieuwjaar door handelaars uitgedeeld aan klanten, en zorgden voor naamsbekendheid voor de producent. We kunnen ze beschouwen als voorlopers van de hedendaagse wandkalenders. Op de pancartes zien we romantische taferelen, zoals dromerige jonge vrouwen, guitige kinderen, bloemen en fruit.\r\n\r\nDe meeste nieuwjaarspancartes uit deze collectie zijn lithografieën, de tekst is meestal gezet met loden letters. De formaten variëren tussen 30x20cm en 60x40cm. Ondanks hun leeftijd hebben de pancartes nog steeds zeer mooie en rijke kleuren. Het merendeel van de collectie is geschonken door de familie De Pourquoy, gewezen kruideniers uit Gent. 3 '),
(35, 'Item', 37, 1, 'Annelien Haeghebaert, Om een lang verhaal kort te maken.', 'Annelien Haeghebaert i me myself ANNE_000000 Annelien Haeghebaert, Om een lang verhaal kort te maken. Annelien. Annelien Haeghebaert Een studente grafische en digitale media Lichtervelde Arteveldehogeschool Gent 15-08-1994 Meisje Nederlands Engels All rights reserved Christa Levecque Luc Haeghebaert Sander Haeghebaert 180cm '),
(5, 'SimplePagesPage', 2, 1, 'Klassen', 'Klassen Dit is een klaspagina '),
(26, 'Item', 31, 1, 'Walden', 'book classic New England Walden Henry David Thoreau A man seeks simplicity. '),
(27, 'Item', 32, 1, 'The Count of Monte Cristo', 'book classic France The Count of Monte Cristo Alexandre Dumas A man seeks revenge. '),
(28, 'Item', 33, 1, 'Narrative of the Life of Frederick Douglass', 'book classic Maryland Narrative of the Life of Frederick Douglass Frederick Douglass A man seeks freedom. '),
(29, 'Collection', 2, 1, 'Testcollectie', 'Testcollectie Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras quis velit vitae eros volutpat eleifend vel eget urna. Morbi feugiat eleifend elementum. Aenean egestas, risus ut dictum feugiat, purus nisl lobortis velit, eu interdum odio libero id lacus. Curabitur at leo at risus egestas euismod vulputate nec urna. Proin non lobortis diam. Pellentesque eget tincidunt odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod tellus vel lectus elementum, non suscipit sem fringilla. Morbi euismod velit vitae libero suscipit, ut vehicula tortor sagittis. Phasellus a risus in tellus egestas imperdiet non vel tortor. Nullam vel massa sed sem tincidunt porta hendrerit non velit. Sed nulla tortor, vestibulum eget condimentum non, tempor sit amet sapien. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Etiam eu luctus eros. Mauris est massa, facilisis a eleifend vitae, cursus ut dui. Integer hendrerit et neque eu venenatis. 4 '),
(30, 'Item', 34, 0, 'Walden', 'book classic New England Walden Henry David Thoreau A man seeks simplicity. '),
(31, 'Item', 35, 0, 'The Count of Monte Cristo', 'book classic France The Count of Monte Cristo Alexandre Dumas A man seeks revenge. '),
(32, 'Item', 36, 1, 'Narrative of the Life of Frederick Douglass', 'book classic Maryland Narrative of the Life of Frederick Douglass Frederick Douglass A man seeks freedom. '),
(37, 'Item', 38, 1, 'TITLE', 'Annelien Haeghebaert France liggend TITLE ALT sdf sdfsdfsdfsdfksjdhfkqjds fjdqsfkjqsdf kqsd fkdkjdkjcdknsdnnckjsd fkhdsfjkhdskfh dsqjfhkdsjqhflsqkjdhf lhfd ljdh hhkjf lsdqjf multiple lines sdfsdgsqdgqds gdqsgsdqg gdqdsgqdsgsdqg sdqgqsdgdqg dsqgdqsgg dqgsqdgdsg sqdgdscxfdg sdgqrtefgefdqg erdfretfd dgfeterfdfvgtrezd efrgt ezzdfrr dreez sdgdfsgsfdg fdsgsfdgferd '),
(38, 'Item', 40, 1, 'titel', 'id titel alttitel lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum '),
(39, 'Item', 41, 1, 'titel', 'Reclamepancarte id titel alt '),
(40, 'Item', 44, 1, 'Bachelorproef PDF', '333 Bachelorproef PDF BAP Blaadje in te vullen door externe promotor en onderzoeksmedewerker Gent ');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `omeka_sessions`
--

CREATE TABLE `omeka_sessions` (
  `id` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `modified` bigint(20) DEFAULT NULL,
  `lifetime` int(11) DEFAULT NULL,
  `data` blob
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `omeka_sessions`
--

INSERT INTO `omeka_sessions` (`id`, `modified`, `lifetime`, `data`) VALUES
('0296c0f6cf3b7d8b31b5b35a7dff813a', 1511791710, 1209600, 0x44656661756c747c613a313a7b733a383a227265646972656374223b733a383a222f706c7567696e73223b7d5a656e645f417574687c613a313a7b733a373a2273746f72616765223b693a313b7d4f6d656b6153657373696f6e43737266546f6b656e7c613a313a7b733a353a22746f6b656e223b733a33323a226633303966353035356530343663386637313438626339636135316233636362223b7d5f5f5a467c613a333a7b733a34313a225a656e645f466f726d5f456c656d656e745f486173685f73616c745f73657474696e67735f63737266223b613a323a7b733a343a22454e4e48223b693a313b733a333a22454e54223b693a313531313739333732323b7d733a34313a225a656e645f466f726d5f456c656d656e745f486173685f73616c745f73656375726974795f63737266223b613a323a7b733a343a22454e4e48223b693a313b733a333a22454e54223b693a313531313739333736373b7d733a34333a225a656e645f466f726d5f456c656d656e745f486173685f73616c745f6e617669676174696f6e5f63737266223b613a323a7b733a343a22454e4e48223b693a313b733a333a22454e54223b693a313531313739353331303b7d7d5a656e645f466f726d5f456c656d656e745f486173685f73616c745f73657474696e67735f637372667c613a313a7b733a343a2268617368223b733a33323a223739643039633161336233306232343039363932346364666461393138363766223b7d5a656e645f466f726d5f456c656d656e745f486173685f73616c745f73656375726974795f637372667c613a313a7b733a343a2268617368223b733a33323a223836366664346430383262633933366139383932373462323038633761613835223b7d5a656e645f466f726d5f456c656d656e745f486173685f73616c745f6e617669676174696f6e5f637372667c613a313a7b733a343a2268617368223b733a33323a226263313833636261336561356464386366363830333763346363323137373866223b7d),
('0c99f952ee5170239b15bd307cc9ae9a', 1511431937, 1209600, 0x44656661756c747c613a313a7b733a383a227265646972656374223b733a313a222f223b7d5a656e645f417574687c613a313a7b733a373a2273746f72616765223b693a313b7d4f6d656b6153657373696f6e43737266546f6b656e7c613a313a7b733a353a22746f6b656e223b733a33323a223030313261313963383865343461306134323235636336353433326130343765223b7d),
('337f47fa857a736a30eed075bef8f536', 1511959448, 1209600, ''),
('39d5575cd0ca7ae7a67b840d9944c771', 1511960060, 1209600, ''),
('42b05f90ba01aecd2d639ac2e8293286', 1511166524, 1209600, ''),
('48ba8524d35e39775c3eb9e31e8ae0b2', 1511963320, 1209600, 0x44656661756c747c613a313a7b733a383a227265646972656374223b733a313a222f223b7d5a656e645f417574687c613a313a7b733a373a2273746f72616765223b693a313b7d5f5f5a467c613a313a7b733a33373a225a656e645f466f726d5f456c656d656e745f486173685f73616c745f757365725f63737266223b613a323a7b733a343a22454e4e48223b693a313b733a333a22454e54223b693a313531313936353837383b7d7d5a656e645f466f726d5f456c656d656e745f486173685f73616c745f757365725f637372667c613a313a7b733a343a2268617368223b733a33323a223435663633666235353137393339306565623635386338383831343735323661223b7d4f6d656b6153657373696f6e43737266546f6b656e7c613a313a7b733a353a22746f6b656e223b733a33323a223438616337613961393461313062303937363338313536373737353830373661223b7d),
('60c7d93cb02a0f56c77435821a094462', 1511183708, 1209600, ''),
('674c31a200930ab62362cd3f747cf977', 1511769955, 1209600, 0x44656661756c747c613a313a7b733a383a227265646972656374223b733a313a222f223b7d5a656e645f417574687c613a313a7b733a373a2273746f72616765223b693a313b7d5f5f5a467c613a313a7b733a33373a225a656e645f466f726d5f456c656d656e745f486173685f73616c745f757365725f63737266223b613a323a7b733a343a22454e4e48223b693a313b733a333a22454e54223b693a313531313737333534363b7d7d5a656e645f466f726d5f456c656d656e745f486173685f73616c745f757365725f637372667c613a313a7b733a343a2268617368223b733a33323a223337353766316361303237363431616564323931316162333263636466643366223b7d4f6d656b6153657373696f6e43737266546f6b656e7c613a313a7b733a353a22746f6b656e223b733a33323a226136396434303738393865323538363731313862373534656437363361333361223b7d),
('889482e65014fd678673e8c289f2b9fb', 1511959342, 1209600, ''),
('93b8194d523ab9e00dc8dbeebe7614fb', 1511797941, 1209600, 0x44656661756c747c613a313a7b733a383a227265646972656374223b733a313a222f223b7d5a656e645f417574687c613a313a7b733a373a2273746f72616765223b693a313b7d4f6d656b6153657373696f6e43737266546f6b656e7c613a313a7b733a353a22746f6b656e223b733a33323a223166306530626364333462623165326330343936336366663630636134643665223b7d5f5f5a467c613a323a7b733a33373a225a656e645f466f726d5f456c656d656e745f486173685f73616c745f757365725f63737266223b613a323a7b733a343a22454e4e48223b693a313b733a333a22454e54223b693a313531313739393336303b7d733a34313a225a656e645f466f726d5f456c656d656e745f486173685f73616c745f73657474696e67735f63737266223b613a323a7b733a343a22454e4e48223b693a313b733a333a22454e54223b693a313531313739393434323b7d7d5a656e645f466f726d5f456c656d656e745f486173685f73616c745f757365725f637372667c613a313a7b733a343a2268617368223b733a33323a223431333739353861336266353361643063353264623231613031613561373466223b7d5a656e645f466f726d5f456c656d656e745f486173685f73616c745f73657474696e67735f637372667c613a313a7b733a343a2268617368223b733a33323a223562323139613261306536313533646337616364373261386435656538303761223b7d),
('96bbce934238b95314e61781cc62504c', 1511428568, 1209600, 0x44656661756c747c613a313a7b733a383a227265646972656374223b733a313a222f223b7d5a656e645f417574687c613a313a7b733a373a2273746f72616765223b693a313b7d),
('a72f296e9b7086f18c850839f6178594', 1511352227, 1209600, 0x44656661756c747c613a313a7b733a383a227265646972656374223b733a313a222f223b7d5a656e645f417574687c613a313a7b733a373a2273746f72616765223b693a313b7d4f6d656b6153657373696f6e43737266546f6b656e7c613a313a7b733a353a22746f6b656e223b733a33323a223230353434393537313736373730343730366263333739663036663763306465223b7d),
('a83480ee681581066daaf6e93471d545', 1511791721, 1209600, ''),
('cb3e34817113934dbfeb1ac6f77b8e4f', 1511770137, 1209600, ''),
('e0cc6a4ba8478960f75eabeafd8a3c57', 1511166831, 1209600, ''),
('ff02a6560bae917a1074c45f5a66f61d', 1511430517, 1209600, '');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `omeka_simple_pages_pages`
--

CREATE TABLE `omeka_simple_pages_pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `modified_by_user_id` int(10) UNSIGNED NOT NULL,
  `created_by_user_id` int(10) UNSIGNED NOT NULL,
  `is_published` tinyint(1) NOT NULL,
  `title` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `slug` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `text` mediumtext COLLATE utf8_unicode_ci,
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `inserted` timestamp NOT NULL DEFAULT '1999-12-31 23:00:00',
  `order` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL,
  `template` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `use_tiny_mce` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `omeka_simple_pages_pages`
--

INSERT INTO `omeka_simple_pages_pages` (`id`, `modified_by_user_id`, `created_by_user_id`, `is_published`, `title`, `slug`, `text`, `updated`, `inserted`, `order`, `parent_id`, `template`, `use_tiny_mce`) VALUES
(2, 1, 1, 1, 'Klassen', 'klassen', 'Dit is een klaspagina', '2017-10-25 13:25:03', '2017-10-06 14:29:04', 0, 0, '', 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `omeka_tags`
--

CREATE TABLE `omeka_tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `omeka_tags`
--

INSERT INTO `omeka_tags` (`id`, `name`) VALUES
(15, 'Annelien Haeghebaert'),
(2, 'book'),
(3, 'classic'),
(5, 'France'),
(18, 'liggend'),
(6, 'Maryland'),
(17, 'myself'),
(4, 'New England'),
(19, 'Reclamepancarte'),
(20, 'test'),
(21, 'testtag');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `omeka_users`
--

CREATE TABLE `omeka_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `email` text COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `salt` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` tinyint(4) NOT NULL,
  `role` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'default'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `omeka_users`
--

INSERT INTO `omeka_users` (`id`, `username`, `name`, `email`, `password`, `salt`, `active`, `role`) VALUES
(1, 'annelien', 'Annelien', 'annelien.haeghebaert@student.arteveldehs.be', '4ee13ae6e11ce88fbe5c39d5ce77d2b9ca419748', '19d1cc030c30dcca', 1, 'super');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `omeka_users_activations`
--

CREATE TABLE `omeka_users_activations` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `url` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `added` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Indexen voor tabel `omeka_collections`
--
ALTER TABLE `omeka_collections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `public` (`public`),
  ADD KEY `featured` (`featured`),
  ADD KEY `owner_id` (`owner_id`);

--
-- Indexen voor tabel `omeka_csv_import_imported_items`
--
ALTER TABLE `omeka_csv_import_imported_items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `item_id` (`item_id`),
  ADD KEY `import_id` (`import_id`);

--
-- Indexen voor tabel `omeka_csv_import_imports`
--
ALTER TABLE `omeka_csv_import_imports`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `omeka_elements`
--
ALTER TABLE `omeka_elements`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name_element_set_id` (`element_set_id`,`name`),
  ADD UNIQUE KEY `order_element_set_id` (`element_set_id`,`order`),
  ADD KEY `element_set_id` (`element_set_id`);

--
-- Indexen voor tabel `omeka_element_sets`
--
ALTER TABLE `omeka_element_sets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `record_type` (`record_type`);

--
-- Indexen voor tabel `omeka_element_texts`
--
ALTER TABLE `omeka_element_texts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `record_type_record_id` (`record_type`,`record_id`),
  ADD KEY `element_id` (`element_id`),
  ADD KEY `text` (`text`(20));

--
-- Indexen voor tabel `omeka_exhibits`
--
ALTER TABLE `omeka_exhibits`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `public` (`public`);

--
-- Indexen voor tabel `omeka_exhibit_block_attachments`
--
ALTER TABLE `omeka_exhibit_block_attachments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `block_id_order` (`block_id`,`order`);

--
-- Indexen voor tabel `omeka_exhibit_pages`
--
ALTER TABLE `omeka_exhibit_pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `exhibit_id_parent_id_slug` (`exhibit_id`,`parent_id`,`slug`),
  ADD KEY `exhibit_id_order` (`exhibit_id`,`order`);

--
-- Indexen voor tabel `omeka_exhibit_page_blocks`
--
ALTER TABLE `omeka_exhibit_page_blocks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `page_id_order` (`page_id`,`order`);

--
-- Indexen voor tabel `omeka_files`
--
ALTER TABLE `omeka_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_id` (`item_id`);

--
-- Indexen voor tabel `omeka_items`
--
ALTER TABLE `omeka_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_type_id` (`item_type_id`),
  ADD KEY `collection_id` (`collection_id`),
  ADD KEY `public` (`public`),
  ADD KEY `featured` (`featured`),
  ADD KEY `owner_id` (`owner_id`);

--
-- Indexen voor tabel `omeka_item_order_item_orders`
--
ALTER TABLE `omeka_item_order_item_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_id_order` (`item_id`,`order`);

--
-- Indexen voor tabel `omeka_item_types`
--
ALTER TABLE `omeka_item_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexen voor tabel `omeka_item_types_elements`
--
ALTER TABLE `omeka_item_types_elements`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `item_type_id_element_id` (`item_type_id`,`element_id`),
  ADD KEY `item_type_id` (`item_type_id`),
  ADD KEY `element_id` (`element_id`);

--
-- Indexen voor tabel `omeka_keys`
--
ALTER TABLE `omeka_keys`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `key` (`key`);

--
-- Indexen voor tabel `omeka_options`
--
ALTER TABLE `omeka_options`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexen voor tabel `omeka_plugins`
--
ALTER TABLE `omeka_plugins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `active_idx` (`active`);

--
-- Indexen voor tabel `omeka_processes`
--
ALTER TABLE `omeka_processes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `pid` (`pid`),
  ADD KEY `started` (`started`),
  ADD KEY `stopped` (`stopped`);

--
-- Indexen voor tabel `omeka_records_tags`
--
ALTER TABLE `omeka_records_tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tag` (`record_type`,`record_id`,`tag_id`),
  ADD KEY `tag_id` (`tag_id`);

--
-- Indexen voor tabel `omeka_schema_migrations`
--
ALTER TABLE `omeka_schema_migrations`
  ADD UNIQUE KEY `unique_schema_migrations` (`version`);

--
-- Indexen voor tabel `omeka_search_texts`
--
ALTER TABLE `omeka_search_texts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `record_name` (`record_type`,`record_id`);
ALTER TABLE `omeka_search_texts` ADD FULLTEXT KEY `text` (`text`);

--
-- Indexen voor tabel `omeka_sessions`
--
ALTER TABLE `omeka_sessions`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `omeka_simple_pages_pages`
--
ALTER TABLE `omeka_simple_pages_pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `is_published` (`is_published`),
  ADD KEY `inserted` (`inserted`),
  ADD KEY `updated` (`updated`),
  ADD KEY `created_by_user_id` (`created_by_user_id`),
  ADD KEY `modified_by_user_id` (`modified_by_user_id`),
  ADD KEY `order` (`order`),
  ADD KEY `parent_id` (`parent_id`);

--
-- Indexen voor tabel `omeka_tags`
--
ALTER TABLE `omeka_tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexen voor tabel `omeka_users`
--
ALTER TABLE `omeka_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `active_idx` (`active`);

--
-- Indexen voor tabel `omeka_users_activations`
--
ALTER TABLE `omeka_users_activations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `omeka_collections`
--
ALTER TABLE `omeka_collections`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT voor een tabel `omeka_csv_import_imported_items`
--
ALTER TABLE `omeka_csv_import_imported_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT voor een tabel `omeka_csv_import_imports`
--
ALTER TABLE `omeka_csv_import_imports`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT voor een tabel `omeka_elements`
--
ALTER TABLE `omeka_elements`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;
--
-- AUTO_INCREMENT voor een tabel `omeka_element_sets`
--
ALTER TABLE `omeka_element_sets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT voor een tabel `omeka_element_texts`
--
ALTER TABLE `omeka_element_texts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=164;
--
-- AUTO_INCREMENT voor een tabel `omeka_exhibits`
--
ALTER TABLE `omeka_exhibits`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `omeka_exhibit_block_attachments`
--
ALTER TABLE `omeka_exhibit_block_attachments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `omeka_exhibit_pages`
--
ALTER TABLE `omeka_exhibit_pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `omeka_exhibit_page_blocks`
--
ALTER TABLE `omeka_exhibit_page_blocks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `omeka_files`
--
ALTER TABLE `omeka_files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT voor een tabel `omeka_items`
--
ALTER TABLE `omeka_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT voor een tabel `omeka_item_order_item_orders`
--
ALTER TABLE `omeka_item_order_item_orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT voor een tabel `omeka_item_types`
--
ALTER TABLE `omeka_item_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT voor een tabel `omeka_item_types_elements`
--
ALTER TABLE `omeka_item_types_elements`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
--
-- AUTO_INCREMENT voor een tabel `omeka_keys`
--
ALTER TABLE `omeka_keys`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `omeka_options`
--
ALTER TABLE `omeka_options`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=474;
--
-- AUTO_INCREMENT voor een tabel `omeka_plugins`
--
ALTER TABLE `omeka_plugins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT voor een tabel `omeka_processes`
--
ALTER TABLE `omeka_processes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT voor een tabel `omeka_records_tags`
--
ALTER TABLE `omeka_records_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
--
-- AUTO_INCREMENT voor een tabel `omeka_search_texts`
--
ALTER TABLE `omeka_search_texts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;
--
-- AUTO_INCREMENT voor een tabel `omeka_simple_pages_pages`
--
ALTER TABLE `omeka_simple_pages_pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT voor een tabel `omeka_tags`
--
ALTER TABLE `omeka_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT voor een tabel `omeka_users`
--
ALTER TABLE `omeka_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT voor een tabel `omeka_users_activations`
--
ALTER TABLE `omeka_users_activations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;