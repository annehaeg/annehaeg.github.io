-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Gegenereerd op: 18 dec 2017 om 15:01
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

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `omeka_csv_import_imported_items`
--

CREATE TABLE `omeka_csv_import_imported_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `item_id` int(10) UNSIGNED NOT NULL,
  `import_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
(37, 1, 1, 'Identifier', 'Een unieke id voor de bron', NULL),
(38, 1, 2, 'Title', 'Lange titel van de bron', NULL),
(39, 1, 3, 'AlternativeTitle', 'Verkorte titel van de bron', NULL),
(40, 1, 4, 'Subject', 'Het onderwerp van de bron', NULL),
(41, 1, 5, 'Description', 'Samenvatting van de bron', NULL),
(42, 1, 6, 'Creator', 'De auteur', NULL),
(43, 1, 7, 'Contributor', 'Co-auteur(s), illustrator, ontwerper, vertaler, redacteur, voorwoord ... ', NULL),
(44, 1, 8, 'Publisher', 'De uitgever/ Lettergieterij van de bron', NULL),
(45, 1, 9, 'Coverage-Spatial-Publisher', 'De locatie van de uitgever/lettergieterij die de bron uitgegeven heeft.', NULL),
(46, 1, 10, 'Date', 'Datum van de creatie van de bron', NULL),
(47, 1, 11, 'Periode', 'De periode waarin de bron ontstaan in. ', NULL),
(48, 1, 12, 'Coverage-Spatial', 'De locatie van de bron, waar de bron gecreëerd is.', NULL),
(49, 1, 13, 'Stijl', 'De stijl waarin de bron gemaakt is. ( Bijvoorbeeld Art deco)', NULL),
(50, 1, 14, 'Genre', 'Genre van het drukwerk. Komt overeen met collectie waarin de bron zich bevindt. ', NULL),
(51, 1, 15, 'Documentsoort', 'Bijvoorbeeld \"enveloppe\"', NULL),
(52, 1, 16, 'Toepassing', 'Bijvoorbeeld bidprent, devotieprent, spijskaart, adreskaart, publiciteitskaars, kalender ... ', NULL),
(53, 1, 17, 'Druktechniek', 'De gebruikte druktechniek', NULL),
(54, 1, 18, 'Veredeling-Druk ', 'De gebruikte veredeling', NULL),
(55, 1, 19, 'Veredeling-Inkt', 'De gebruikte veredeling van de inkt', NULL),
(56, 1, 20, 'Kleur', 'Zal in de meeste gevallen kleur of zwart-wit zijn', NULL),
(57, 1, 21, 'Format-Medium', 'Materiaal waaruit de bron vervaardigd is', NULL),
(58, 1, 22, 'Watermerk', 'Watermerk dat zich op de bron bevindt', NULL),
(59, 1, 23, 'Vorm', 'Bijvoorbeeld met uitvouw, montage/collage, losbladig, folder... ', NULL),
(60, 1, 24, 'Keerzijde-druk', 'Gedrukte gegevens die zich op de keerzijde van de bron bevinden', NULL),
(61, 1, 25, 'Keerzijde-schrift', 'Handgeschreven notitie op de keerzijde van de bron', NULL),
(62, 1, 26, 'Keerzijde-stempel', 'Stempel op de keerzijde van de bron', NULL),
(63, 1, 27, 'Catalogusnummer-Uitgever', 'Catalogusnummer van de uitgever van de bron', NULL),
(64, 1, 28, 'Varia', 'Varia', NULL),
(65, 1, 29, 'Classificaties', 'Classificaties van de bron, waaronder typografische info.', NULL),
(66, 1, 30, 'Language', 'De taal van de bron', NULL),
(67, 1, 31, 'Rights', 'Informatie over de rechten van de bron', NULL),
(68, 1, 32, 'Type', 'Komt overeen met ItemType (still image, video, text ...)', NULL),
(69, 1, 33, 'Onderdelen', 'Verschillende onderdelen van de bron.', NULL),
(70, 1, 34, 'Schade', 'De schade die de bron heeft.', NULL),
(71, 1, 35, 'Format-Extent', 'Afmetingen van de bron. Komt overeen met PhysicalDimension', NULL),
(72, 1, 36, 'Bewaarplaats', 'Waar de bron te vinden is.', NULL),
(73, 1, 37, 'Fonds', 'Fonds', NULL),
(74, 1, 38, 'Provenance', 'Door wie de bron geschonken is.', NULL),
(75, 1, 39, 'Geschiedenis', 'Vroegere ID of vroegere bewaarplaats van de bron', NULL);

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

--
-- Gegevens worden geëxporteerd voor tabel `omeka_exhibits`
--

INSERT INTO `omeka_exhibits` (`id`, `title`, `description`, `credits`, `featured`, `public`, `theme`, `theme_options`, `slug`, `added`, `modified`, `owner_id`, `use_summary_page`, `cover_image_file_id`) VALUES
(1, 'Mediatheek XL', '', '', 0, 1, '', NULL, 'mediatheek-xl', '2017-12-18 11:09:46', '2017-12-18 12:33:36', 1, 1, NULL);

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
(420, 'html5_media_settings', 'a:4:{s:5:\"video\";a:3:{s:7:\"options\";a:3:{s:5:\"width\";i:480;s:6:\"height\";i:270;s:10:\"responsive\";b:0;}s:5:\"types\";a:7:{i:0;s:9:\"video/flv\";i:1;s:11:\"video/x-flv\";i:2;s:9:\"video/mp4\";i:3;s:9:\"video/m4v\";i:4;s:10:\"video/webm\";i:5;s:9:\"video/wmv\";i:6;s:15:\"video/quicktime\";}s:10:\"extensions\";a:5:{i:0;s:3:\"mp4\";i:1;s:3:\"m4v\";i:2;s:3:\"flv\";i:3;s:4:\"webm\";i:4;s:3:\"wmv\";}}s:5:\"audio\";a:3:{s:7:\"options\";a:2:{s:5:\"width\";i:400;s:10:\"responsive\";b:0;}s:5:\"types\";a:7:{i:0;s:10:\"audio/mpeg\";i:1;s:9:\"audio/mp3\";i:2;s:9:\"audio/wav\";i:3;s:11:\"audio/x-wav\";i:4;s:9:\"audio/m4a\";i:5;s:9:\"audio/wma\";i:6;s:9:\"audio/mp4\";}s:10:\"extensions\";a:4:{i:0;s:3:\"mp3\";i:1;s:3:\"m4a\";i:2;s:3:\"wav\";i:3;s:3:\"wma\";}}s:4:\"text\";a:2:{s:5:\"types\";a:1:{i:0;s:8:\"text/vtt\";}s:10:\"extensions\";a:2:{i:0;s:3:\"srt\";i:1;s:3:\"vtt\";}}s:6:\"common\";a:1:{s:7:\"options\";a:4:{s:8:\"autoplay\";b:0;s:8:\"controls\";b:1;s:4:\"loop\";b:0;s:7:\"preload\";s:8:\"metadata\";}}}'),
(437, 'disable_default_file_validation', '1'),
(438, 'file_extension_whitelist', 'aac,aif,aiff,asf,asx,avi,bmp,c,cc,class,css,divx,doc,docx,exe,gif,gz,gzip,h,ico,j2k,jp2,jpe,jpeg,jpg,m4a,m4v,mdb,mid,midi,mov,mp2,mp3,mp4,mpa,mpe,mpeg,mpg,mpp,odb,odc,odf,odg,odp,ods,odt,ogg,opus,pdf,png,pot,pps,ppt,pptx,qt,ra,ram,rtf,rtx,swf,tar,tif,tiff,txt,wav,wax,webm,wma,wmv,wmx,wri,xla,xls,xlsx,xlt,xlw,zip'),
(439, 'file_mime_type_whitelist', 'application/msword,application/ogg,application/pdf,application/rtf,application/vnd.ms-access,application/vnd.ms-excel,application/vnd.ms-powerpoint,application/vnd.ms-project,application/vnd.ms-write,application/vnd.oasis.opendocument.chart,application/vnd.oasis.opendocument.database,application/vnd.oasis.opendocument.formula,application/vnd.oasis.opendocument.graphics,application/vnd.oasis.opendocument.presentation,application/vnd.oasis.opendocument.spreadsheet,application/vnd.oasis.opendocument.text,application/x-ms-wmp,application/x-ogg,application/x-gzip,application/x-msdownload,application/x-shockwave-flash,application/x-tar,application/zip,audio/aac,audio/aiff,audio/mid,audio/midi,audio/mp3,audio/mp4,audio/mpeg,audio/mpeg3,audio/ogg,audio/wav,audio/wma,audio/x-aac,audio/x-aiff,audio/x-m4a,audio/x-midi,audio/x-mp3,audio/x-mp4,audio/x-mpeg,audio/x-mpeg3,audio/x-mpegaudio,audio/x-ms-wax,audio/x-realaudio,audio/x-wav,audio/x-wma,image/bmp,image/gif,image/icon,image/jpeg,image/pjpeg,image/png,image/tiff,image/x-icon,image/x-ms-bmp,text/css,text/plain,text/richtext,text/rtf,video/asf,video/avi,video/divx,video/mp4,video/mpeg,video/msvideo,video/ogg,video/quicktime,video/webm,video/x-m4v,video/x-ms-wmv,video/x-msvideo'),
(440, 'recaptcha_public_key', ''),
(441, 'recaptcha_private_key', ''),
(442, 'html_purifier_is_enabled', '1'),
(443, 'html_purifier_allowed_html_elements', 'p,br,strong,em,span,div,ul,ol,li,a,h1,h2,h3,h4,h5,h6,address,pre,table,tr,td,blockquote,thead,tfoot,tbody,th,dl,dt,dd,q,small,strike,sup,sub,b,i,big,small,tt'),
(444, 'html_purifier_allowed_html_attributes', '*.style,*.class,a.href,a.title,a.target'),
(474, 'omeka_update', 'a:2:{s:14:\"latest_version\";s:6:\"2.5.1\n\";s:12:\"last_updated\";i:1513585703;}'),
(493, 'public_navigation_main', '[{\"uid\":\"\\/index\",\"can_delete\":true,\"type\":\"Omeka_Navigation_Page_Uri\",\"label\":\"Home\",\"fragment\":null,\"id\":null,\"class\":null,\"title\":null,\"target\":null,\"accesskey\":null,\"rel\":[],\"rev\":[],\"customHtmlAttribs\":[],\"order\":1,\"resource\":null,\"privilege\":null,\"active\":false,\"visible\":true,\"pages\":[],\"uri\":\"\\/index\"},{\"uid\":\"\\/items\\/browse\",\"can_delete\":false,\"type\":\"Omeka_Navigation_Page_Uri\",\"label\":\"Browse Items\",\"fragment\":null,\"id\":null,\"class\":null,\"title\":null,\"target\":null,\"accesskey\":null,\"rel\":[],\"rev\":[],\"customHtmlAttribs\":[],\"order\":2,\"resource\":null,\"privilege\":null,\"active\":false,\"visible\":false,\"pages\":[],\"uri\":\"\\/items\\/browse\"},{\"uid\":\"\\/collections\\/browse\",\"can_delete\":false,\"type\":\"Omeka_Navigation_Page_Uri\",\"label\":\"Collecties\",\"fragment\":null,\"id\":null,\"class\":null,\"title\":null,\"target\":null,\"accesskey\":null,\"rel\":[],\"rev\":[],\"customHtmlAttribs\":[],\"order\":3,\"resource\":null,\"privilege\":null,\"active\":false,\"visible\":true,\"pages\":[],\"uri\":\"\\/collections\\/browse\"},{\"uid\":\"\\/exhibits\",\"can_delete\":false,\"type\":\"Omeka_Navigation_Page_Uri\",\"label\":\"Browse Exhibits\",\"fragment\":null,\"id\":null,\"class\":null,\"title\":null,\"target\":null,\"accesskey\":null,\"rel\":[],\"rev\":[],\"customHtmlAttribs\":[],\"order\":4,\"resource\":null,\"privilege\":null,\"active\":false,\"visible\":false,\"pages\":[],\"uri\":\"\\/exhibits\"},{\"uid\":\"\\/exhibits\\/show\\/mediatheek-xl\",\"can_delete\":true,\"label\":\"Mediatheek XL\",\"fragment\":null,\"id\":null,\"class\":null,\"title\":null,\"target\":null,\"accesskey\":null,\"rel\":[],\"rev\":[],\"customHtmlAttribs\":[],\"order\":5,\"resource\":null,\"privilege\":null,\"active\":false,\"visible\":true,\"type\":\"Omeka_Navigation_Page_Uri\",\"pages\":[],\"uri\":\"\\/exhibits\\/show\\/mediatheek-xl\"},{\"uid\":\"\\/contact\",\"can_delete\":false,\"type\":\"Omeka_Navigation_Page_Uri\",\"label\":\"Contact\",\"fragment\":null,\"id\":null,\"class\":null,\"title\":null,\"target\":null,\"accesskey\":null,\"rel\":[],\"rev\":[],\"customHtmlAttribs\":[],\"order\":6,\"resource\":null,\"privilege\":null,\"active\":false,\"visible\":true,\"pages\":[],\"uri\":\"\\/contact\"}]'),
(494, 'homepage_uri', '/index'),
(495, 'csv_import_column_delimiter', ','),
(496, 'csv_import_element_delimiter', ''),
(497, 'csv_import_tag_delimiter', ','),
(498, 'csv_import_file_delimiter', ','),
(499, 'public_theme', 'Artevelde');

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
(1, 'ExhibitBuilder', 1, '3.3.3'),
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

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `omeka_schema_migrations`
--

CREATE TABLE `omeka_schema_migrations` (
  `version` varchar(16) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
('248511ded31b21f8a9d0120fbc829b6a', 1513604491, 1209600, 0x44656661756c747c613a313a7b733a383a227265646972656374223b733a313a222f223b7d5a656e645f417574687c613a313a7b733a373a2273746f72616765223b693a313b7d4f6d656b6153657373696f6e43737266546f6b656e7c613a313a7b733a353a22746f6b656e223b733a33323a223330313631643561333164386464633863653364646465623961323236643630223b7d5f5f5a467c613a313a7b733a33373a225a656e645f466f726d5f456c656d656e745f486173685f73616c745f757365725f63737266223b613a323a7b733a343a22454e4e48223b693a313b733a333a22454e54223b693a313531333630373930303b7d7d5a656e645f466f726d5f456c656d656e745f486173685f73616c745f757365725f637372667c613a313a7b733a343a2268617368223b733a33323a226136666534373438663733356336626638363830643366386263316531316463223b7d),
('38da2dbd9bd408cda224290d234bea49', 1513594718, 1209600, ''),
('b7a939b5cc4bdaf79d439ab7c98390be', 1513592785, 1209600, ''),
('ec3a002c8e48d5621e0330373e3e73b7', 1513604507, 1209600, 0x44656661756c747c613a313a7b733a383a227265646972656374223b733a313a222f223b7d5a656e645f417574687c613a313a7b733a373a2273746f72616765223b693a313b7d4f6d656b6153657373696f6e43737266546f6b656e7c613a313a7b733a353a22746f6b656e223b733a33323a223336373062363561376537346432343136656630343033376635333734663534223b7d5f5f5a467c613a313a7b733a33373a225a656e645f466f726d5f456c656d656e745f486173685f73616c745f757365725f63737266223b613a323a7b733a343a22454e4e48223b693a313b733a333a22454e54223b693a313531333630383032333b7d7d5a656e645f466f726d5f456c656d656e745f486173685f73616c745f757365725f637372667c613a313a7b733a343a2268617368223b733a33323a226232663939346264363030383565666565393233306534326164363434656434223b7d);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT voor een tabel `omeka_csv_import_imports`
--
ALTER TABLE `omeka_csv_import_imports`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT voor een tabel `omeka_elements`
--
ALTER TABLE `omeka_elements`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=171;
--
-- AUTO_INCREMENT voor een tabel `omeka_element_sets`
--
ALTER TABLE `omeka_element_sets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT voor een tabel `omeka_element_texts`
--
ALTER TABLE `omeka_element_texts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=179;
--
-- AUTO_INCREMENT voor een tabel `omeka_exhibits`
--
ALTER TABLE `omeka_exhibits`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT voor een tabel `omeka_exhibit_block_attachments`
--
ALTER TABLE `omeka_exhibit_block_attachments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT voor een tabel `omeka_exhibit_pages`
--
ALTER TABLE `omeka_exhibit_pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT voor een tabel `omeka_exhibit_page_blocks`
--
ALTER TABLE `omeka_exhibit_page_blocks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT voor een tabel `omeka_files`
--
ALTER TABLE `omeka_files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT voor een tabel `omeka_items`
--
ALTER TABLE `omeka_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=500;
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;
--
-- AUTO_INCREMENT voor een tabel `omeka_search_texts`
--
ALTER TABLE `omeka_search_texts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
--
-- AUTO_INCREMENT voor een tabel `omeka_simple_pages_pages`
--
ALTER TABLE `omeka_simple_pages_pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT voor een tabel `omeka_tags`
--
ALTER TABLE `omeka_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
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