-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 21. Jul 2018 um 18:02
-- Server-Version: 10.1.33-MariaDB
-- PHP-Version: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `cr14_dominic_wieser_bigevents`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `event`
--

CREATE TABLE `event` (
  `id` int(11) NOT NULL,
  `title` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_time` datetime NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `capacity` int(11) DEFAULT NULL,
  `email` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `number` int(11) DEFAULT NULL,
  `address` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Daten für Tabelle `event`
--

INSERT INTO `event` (`id`, `title`, `date_time`, `description`, `image`, `capacity`, `email`, `number`, `address`, `url`, `type`) VALUES
(1, 'Event 1', '2018-07-21 12:50:09', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Autem fugit libero a, possimus quidem placeat, error nemo, accusamus voluptatum ullam voluptatem impedit sed ab vero sequi totam perspiciatis odit doloribus!', 'https://blogmedia.evbstatic.com/wp-content/uploads/wpmulti/sites/8/2018/01/15155312/iStock-667709450.jpg', 3, 'TestUser@example.com', 43888222, 'Testhausen 22', 'http://TESTEVENT.com', 'Party'),
(2, 'Event 2 - Edited', '2018-07-21 12:50:00', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Autem fugit libero a, possimus quidem placeat, error nemo, accusamus voluptatum ullam voluptatem impedit sed ab vero sequi totam perspiciatis odit doloribus!', 'http://www.eventpro.net.au/wp-content/uploads/2009/03/5.jpg', 5, 'TestUser2@example.com', 491115556, 'TestDorf 33', 'http://TESTEVENT2.com', 'Dinner'),
(4, 'Event 4 - via for added', '2018-07-21 17:30:00', 'Spicy jalapeno bacon ipsum dolor amet hamburger beef kevin, tail ham hock chuck biltong frankfurter. Picanha cupim spare ribs chuck venison jerky pork chop, prosciutto ham hock short loin pastrami tri-tip rump pork belly biltong. Jerky corned beef flank picanha boudin turducken sausage pork. Filet mignon beef tongue kielbasa capicola. Jerky tenderloin buffalo tail pig capicola ham hock ham pancetta pork loin tongue. Cupim chicken cow, porchetta pork belly shank ball tip pancetta venison beef corned beef meatball shankle bresaola kielbasa. Buffalo beef hamburger shoulder strip steak ball tip pork pork chop.', 'https://landerapp.com/blog/wp-content/uploads/2018/05/eventsPinboard.jpg', NULL, 'TestUser4@example.com', NULL, 'Testaddress 777', 'http://www.testaddress.com', 'Meeting');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `migration_versions`
--

CREATE TABLE `migration_versions` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Daten für Tabelle `migration_versions`
--

INSERT INTO `migration_versions` (`version`) VALUES
('20180721101740');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `migration_versions`
--
ALTER TABLE `migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `event`
--
ALTER TABLE `event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
