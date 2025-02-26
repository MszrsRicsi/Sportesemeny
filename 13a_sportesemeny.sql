-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2025. Feb 26. 11:30
-- Kiszolgáló verziója: 10.4.28-MariaDB
-- PHP verzió: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `13a_sportesemeny`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `events`
--

CREATE TABLE `events` (
  `id` char(36) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `sportID` char(36) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `date` datetime NOT NULL,
  `location` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `events`
--

INSERT INTO `events` (`id`, `sportID`, `date`, `location`) VALUES
('dae62aa5-b007-49f9-af06-0f847cad29e7', '6412d766-c7a0-4ed7-896a-8fbbb7abc4d6', '2025-02-20 00:00:00', 'Baja');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `eventteams`
--

CREATE TABLE `eventteams` (
  `eventID` char(36) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `teamID` char(36) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `eventteams`
--

INSERT INTO `eventteams` (`eventID`, `teamID`) VALUES
('dae62aa5-b007-49f9-af06-0f847cad29e7', '8342297e-5acc-44ae-9c2b-8a6f30bd8b5c'),
('dae62aa5-b007-49f9-af06-0f847cad29e7', 'b3e20c47-ef6a-4898-8685-36cc85fb5c90');

-- --------------------------------------------------------

--
-- A nézet helyettes szerkezete `event_details`
-- (Lásd alább az aktuális nézetet)
--
CREATE TABLE `event_details` (
`id` char(36)
,`date` datetime
,`location` varchar(100)
,`name` varchar(50)
);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `sports`
--

CREATE TABLE `sports` (
  `id` char(36) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `sports`
--

INSERT INTO `sports` (`id`, `name`) VALUES
('6412d766-c7a0-4ed7-896a-8fbbb7abc4d6', 'Alexis'),
('d7a096aa-3a87-44eb-97bc-f9cf83a445f7', 'Arvy'),
('8f763c02-c040-4416-a233-6840aeffbb1b', 'Barr'),
('2b3891c2-43db-40a8-882f-5e7ee00c8db9', 'Beaufort'),
('0b63f4de-36a1-443e-a979-f8f4d97d474e', 'Colman'),
('387e5e7b-9f14-4d90-94a9-a1ed49e1e25e', 'Dario'),
('08695263-ceb8-4d39-903c-ef92377b5671', 'Delmore'),
('a2b3d00c-14aa-4c47-9a55-5b01a5d27a1e', 'Derrick'),
('c77656fe-cecc-4b2a-a01d-a3f4e9b5285a', 'Dukey'),
('0127b029-adaf-46b5-9bc6-9e976a4ae096', 'Ed'),
('cf61cdef-d0e1-438e-bac3-063c6c31510c', 'Ellary'),
('94b22068-ced1-4e38-9590-b28799030e13', 'Errol'),
('b50544fd-d4b1-4196-8643-c0790948a343', 'Etan'),
('8cd03758-ad29-4436-9add-e21f68aec046', 'Fraser'),
('f7d36d63-5f94-45cb-8e87-530a565baff0', 'Gaile'),
('00cc927f-f9a6-443c-b6f1-205fbebdfe98', 'Gianni'),
('8b079974-759a-4e99-9fe8-d886e9773fe5', 'Haley'),
('0a63c8d7-8c8c-44c9-b8aa-2ec971b1ab58', 'Harlin'),
('d896172b-ad9f-4541-98c9-186f6ba4a808', 'Horatio'),
('2682f1d9-60c9-4329-8b28-5bcb0ecae3fa', 'Jimmie'),
('d941490d-2c26-4f21-b116-c489eb221aa5', 'Johan'),
('b5dd9159-849d-4afb-8221-0a47e88b8e6f', 'Kipp'),
('1fc3bee2-0e8b-4aa9-bddd-4bd4119c4614', 'Lanny'),
('0afddfef-9b4e-4b17-90db-824efcc917f3', 'Lyman'),
('cbbf0ea7-d3f4-4cb8-9581-fc8248d11b05', 'Malchy'),
('7dce2952-47bd-47b6-9b41-210a7404e2db', 'Merell'),
('edf2ebdb-ded7-4a2a-ace6-c14008f892de', 'Micah'),
('235cec9d-efe3-4999-a9cf-2cad5cab9575', 'Morgen'),
('964e4b34-71bf-4455-9f58-ba8848399acc', 'Niall'),
('4b9fcffc-8b59-4064-8c90-0f890941aa87', 'Nickolai'),
('175daef7-e697-4c3e-83bf-c6899b42b0e2', 'Nobe'),
('9dd2a18e-2c0d-46b3-901e-c7e92ac04c1b', 'Noble'),
('2891f293-0817-42e0-922d-d5ab7b17967c', 'Norrie'),
('ed72910c-48c2-4a57-bd34-9ecd15ee696e', 'Otis'),
('19533d45-8f4f-4542-bc14-12eae4307a11', 'Pat'),
('0c2b9ced-d3a9-4e44-a2d1-4864a799725e', 'Patric'),
('9e63d17d-9444-4ea9-b204-e7a2e56c6c25', 'Patsy'),
('580dcf2f-b82e-4b17-86b2-1035e0c1b38d', 'Putnem'),
('60c49e48-6be1-4ceb-91b1-adbad710e45f', 'Randolph'),
('7407a8bd-5e98-45ba-830d-266fd3cd179d', 'Reginauld'),
('7464b52f-384e-46d4-972b-ec27ee750add', 'Reinhard'),
('13b59933-ef7e-420f-b975-0ed74afc34ee', 'Roddie'),
('bc92dc88-df8b-4597-a0d1-2c50746120fc', 'Saleem'),
('140ca655-c989-4e73-86c1-bbb932a9449f', 'Sayres'),
('be06e93e-2316-4390-8dd7-2dfe06ef66e6', 'Shell'),
('1b64e1f7-f6ed-420a-8ab5-82376c817c32', 'Stanly'),
('a893c674-5875-4b3a-9a48-15df5872a5cf', 'Sully'),
('ecd37d88-1ea7-4517-9df2-b6b25fb6c20f', 'Tan'),
('9b68dbdc-5567-4d69-b046-f93a21ae4b64', 'Toby'),
('2202f81a-aa2a-44cc-91f9-79cc3566ba7c', 'Vasilis'),
('9bc2baaf-babb-4f78-9058-8a9dd7e89dec', 'Vaughan'),
('3c4a961d-6ea8-45ef-9784-890a7bf9b0a3', 'Zachery');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `teams`
--

CREATE TABLE `teams` (
  `id` char(36) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `sportID` char(36) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `teams`
--

INSERT INTO `teams` (`id`, `name`, `sportID`) VALUES
('8342297e-5acc-44ae-9c2b-8a6f30bd8b5c', 'Jani csapata', '6412d766-c7a0-4ed7-896a-8fbbb7abc4d6'),
('b3e20c47-ef6a-4898-8685-36cc85fb5c90', 'Jani csapata2', '6412d766-c7a0-4ed7-896a-8fbbb7abc4d6');

-- --------------------------------------------------------

--
-- A nézet helyettes szerkezete `teams_participation`
-- (Lásd alább az aktuális nézetet)
--
CREATE TABLE `teams_participation` (
`eventID` char(36)
,`name` varchar(50)
);

-- --------------------------------------------------------

--
-- Nézet szerkezete `event_details`
--
DROP TABLE IF EXISTS `event_details`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `event_details`  AS SELECT `events`.`id` AS `id`, `events`.`date` AS `date`, `events`.`location` AS `location`, `sports`.`name` AS `name` FROM (`events` join `sports`) WHERE `events`.`sportID` = `sports`.`id` GROUP BY `events`.`id` ;

-- --------------------------------------------------------

--
-- Nézet szerkezete `teams_participation`
--
DROP TABLE IF EXISTS `teams_participation`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `teams_participation`  AS SELECT `events`.`id` AS `eventID`, `teams`.`name` AS `name` FROM ((`teams` join `events`) join `eventteams`) WHERE `teams`.`id` = `eventteams`.`teamID` AND `eventteams`.`eventID` = `events`.`id` ;

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sportID` (`sportID`);

--
-- A tábla indexei `eventteams`
--
ALTER TABLE `eventteams`
  ADD PRIMARY KEY (`eventID`,`teamID`),
  ADD KEY `teamID` (`teamID`);

--
-- A tábla indexei `sports`
--
ALTER TABLE `sports`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- A tábla indexei `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `sportID` (`sportID`);

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `events`
--
ALTER TABLE `events`
  ADD CONSTRAINT `events_ibfk_1` FOREIGN KEY (`sportID`) REFERENCES `sports` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Megkötések a táblához `eventteams`
--
ALTER TABLE `eventteams`
  ADD CONSTRAINT `eventteams_ibfk_1` FOREIGN KEY (`eventID`) REFERENCES `events` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `eventteams_ibfk_2` FOREIGN KEY (`teamID`) REFERENCES `teams` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Megkötések a táblához `teams`
--
ALTER TABLE `teams`
  ADD CONSTRAINT `teams_ibfk_1` FOREIGN KEY (`sportID`) REFERENCES `sports` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
