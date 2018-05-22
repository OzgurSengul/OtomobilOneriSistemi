-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1:3306
-- Üretim Zamanı: 22 May 2018, 09:08:26
-- Sunucu sürümü: 5.7.19
-- PHP Sürümü: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `araba`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `marka`
--

DROP TABLE IF EXISTS `marka`;
CREATE TABLE IF NOT EXISTS `marka` (
  `marka_id` int(11) NOT NULL AUTO_INCREMENT,
  `marka_ad` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`marka_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `marka`
--

INSERT INTO `marka` (`marka_id`, `marka_ad`) VALUES
(1, 'Audi'),
(2, 'BMW'),
(3, 'Ford'),
(4, 'Honda'),
(5, 'Hyundai'),
(6, 'Mercedes-Benz'),
(7, 'Opel'),
(8, 'Renault'),
(9, 'Seat'),
(10, 'Skoda'),
(11, 'Volkswagen'),
(12, 'Volvo');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `model`
--

DROP TABLE IF EXISTS `model`;
CREATE TABLE IF NOT EXISTS `model` (
  `model_id` int(11) NOT NULL AUTO_INCREMENT,
  `marka_id` int(11) NOT NULL,
  `model_ad` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`model_id`),
  KEY `marka_id` (`marka_id`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `model`
--

INSERT INTO `model` (`model_id`, `marka_id`, `model_ad`) VALUES
(16, 1, 'A1'),
(17, 1, 'A3'),
(18, 1, 'A4'),
(19, 1, 'A5'),
(20, 1, 'A6'),
(21, 1, 'A7'),
(22, 1, 'A8'),
(23, 2, '118i'),
(24, 2, '116d'),
(25, 2, '318i'),
(26, 2, '330i'),
(27, 2, '320d'),
(28, 2, '418i'),
(29, 2, '420d'),
(30, 2, '520i'),
(31, 2, '520d'),
(32, 2, '630i'),
(33, 2, '730i'),
(34, 2, '725d'),
(35, 3, 'Fiesta'),
(36, 3, 'Focus'),
(37, 3, 'Mondeo'),
(39, 4, 'Jazz'),
(40, 4, 'Civic Hatchback'),
(41, 4, 'Civic Sedan'),
(42, 5, 'i10'),
(43, 5, 'i20'),
(44, 5, 'i30'),
(45, 5, 'Accent'),
(46, 5, 'Elantra'),
(47, 6, 'A 180'),
(48, 6, 'CLA 200'),
(49, 6, 'C 180'),
(50, 6, 'E 180'),
(51, 6, 'S 400'),
(52, 7, 'Astra Hatchback'),
(53, 7, 'Astra Sedan'),
(54, 7, 'Corsa'),
(55, 7, 'İnsignia'),
(56, 7, ''),
(57, 8, 'Clio'),
(58, 8, 'Megane Hatchback'),
(59, 8, 'Megane Sedan'),
(60, 8, 'Talisman'),
(61, 8, 'Symbol'),
(62, 9, 'Ibiza'),
(63, 9, 'Leon'),
(64, 9, 'Toledo'),
(65, 10, 'Fabia'),
(66, 10, 'Rapid'),
(67, 10, 'Octavia'),
(68, 10, 'SuperB'),
(69, 11, 'Polo'),
(70, 11, 'Golf'),
(71, 11, 'Passat'),
(72, 11, 'Arteon'),
(73, 12, 'V40'),
(74, 12, 'S60'),
(75, 12, 'S90');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ozellik`
--

DROP TABLE IF EXISTS `ozellik`;
CREATE TABLE IF NOT EXISTS `ozellik` (
  `ozellik_id` int(11) NOT NULL AUTO_INCREMENT,
  `fiyat` float NOT NULL,
  `model_id` int(11) NOT NULL,
  `motor_hacmi` int(11) NOT NULL,
  `kasa_tipi` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `yakit` float NOT NULL,
  PRIMARY KEY (`ozellik_id`),
  KEY `model_id` (`model_id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `ozellik`
--

INSERT INTO `ozellik` (`ozellik_id`, `fiyat`, `model_id`, `motor_hacmi`, `kasa_tipi`, `yakit`) VALUES
(1, 170145, 16, 1600, 'Hatchback', 3.7),
(2, 202327, 17, 1600, 'Sedan', 4),
(3, 447373, 18, 2000, 'Sedan', 6.7),
(4, 445926, 19, 2000, 'Sedan', 5.9),
(5, 747081, 20, 3000, 'Sedan', 6.3),
(6, 1266420, 22, 3000, 'Sedan', 5.6),
(7, 157000, 23, 1500, 'Hatchback', 5.1),
(8, 169000, 24, 1500, 'Hatchback', 3.9),
(9, 217700, 25, 1500, 'Sedan', 5),
(10, 270900, 26, 2000, 'Sedan', 5.5),
(11, 253600, 27, 2000, 'Sedan', 4),
(12, 235100, 28, 1500, 'Sedan', 5.3),
(13, 357900, 29, 2000, 'Sedan', 5.1),
(14, 315800, 30, 1600, 'Sedan', 6.5),
(15, 421300, 31, 2000, 'Sedan', 4.7),
(16, 535800, 32, 2000, 'Sedan', 7),
(17, 782700, 33, 2000, 'Sedan', 5.7),
(18, 817600, 34, 2000, 'Sedan', 4.4),
(19, 84000, 35, 1100, 'Hatchback', 4.4),
(20, 93000, 36, 1600, 'Hatchback', 6),
(21, 161000, 37, 1500, 'Sedan', 6.3),
(22, 87650, 39, 1300, 'Hatchback', 4.7),
(23, 121650, 40, 1500, 'Hatchback', 6.1),
(24, 100750, 41, 1600, 'Sedan', 7),
(25, 63600, 42, 1000, 'Hatchback', 4.7),
(26, 71400, 43, 1200, 'Hatchback', 5.1),
(27, 100200, 44, 1400, 'Hatchback', 5.6),
(28, 83400, 45, 1400, 'Sedan', 5.9),
(29, 85500, 46, 1600, 'Sedan', 6.6),
(30, 169400, 47, 1600, 'Hatchback', 5.7),
(31, 198100, 48, 1600, 'Sedan', 5.7),
(32, 230600, 49, 1600, 'Sedan', 5.7),
(33, 358200, 50, 1600, 'Sedan', 6.1),
(34, 1113700, 51, 3000, 'Sedan', 5.9),
(35, 120400, 52, 1400, 'Hatchback', 5.5),
(36, 84500, 53, 1600, 'Sedan', 6.5),
(37, 86900, 54, 1400, 'Hatchback', 5.4),
(38, 171500, 55, 1500, 'Sedan', 6.1),
(39, 114250, 58, 1500, 'Hatchback', 4),
(40, 122250, 59, 1500, 'Sedan', 4),
(41, 184750, 60, 1600, 'Sedan', 3.9),
(42, 88400, 61, 1500, 'Sedan', 3.9),
(43, 86850, 57, 1200, 'Hatchback', 5.4),
(44, 85000, 62, 1000, 'Hatchback', 4.7),
(45, 103000, 63, 1200, 'Hatchback', 4.9),
(46, 95000, 64, 1400, 'Sedan', 4.9),
(47, 67900, 65, 1000, 'Hatchback', 4.8),
(48, 104400, 66, 1000, 'Sedan', 4.6),
(49, 93400, 67, 1200, 'Sedan', 4.9),
(50, 117400, 68, 1400, 'Sedan', 5.3),
(51, 76300, 69, 1000, 'Hatchback', 4.8),
(52, 109700, 70, 1000, 'Hatchback', 4.8),
(53, 128900, 71, 1400, 'Sedan', 5.3),
(54, 273700, 72, 1500, 'Sedan', 5.8),
(55, 152425, 73, 1500, 'Hatchback', 5.5),
(56, 182660, 74, 1500, 'Sedan', 5.8),
(57, 443860, 75, 2000, 'Sedan', 4.4);

--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `model`
--
ALTER TABLE `model`
  ADD CONSTRAINT `model_ibfk_1` FOREIGN KEY (`marka_id`) REFERENCES `marka` (`marka_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Tablo kısıtlamaları `ozellik`
--
ALTER TABLE `ozellik`
  ADD CONSTRAINT `ozellik_ibfk_1` FOREIGN KEY (`model_id`) REFERENCES `model` (`model_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
