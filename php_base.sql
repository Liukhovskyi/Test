-- --------------------------------------------------------
-- Хост:                         127.0.0.1
-- Версия сервера:               5.5.41-log - MySQL Community Server (GPL)
-- ОС Сервера:                   Win32
-- HeidiSQL Версия:              9.1.0.4867
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Дамп структуры базы данных php_base
CREATE DATABASE IF NOT EXISTS `php_base` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `php_base`;


-- Дамп структуры для таблица php_base.news
CREATE TABLE IF NOT EXISTS `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `short_content` text NOT NULL,
  `content` text NOT NULL,
  `author_name` varchar(255) NOT NULL,
  `preview` varchar(255) NOT NULL,
  `type` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы php_base.news: ~10 rows (приблизительно)
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` (`id`, `title`, `date`, `short_content`, `content`, `author_name`, `preview`, `type`) VALUES
	(1, 'Ноутбук Lenovo IdeaPad 330S-15IKB.','2019-01-03 13:05:05', '       Екран 15.6" IPS (1920x1080) Full HD, матовий / Int...'  ,'                                                                                                                                                                Країна-виробник товару	Китай Процесор Докладні...',                                                                                                                                                              'Lenovo',      'img03.jpg',    'NewsPublication'),
	(2, 'Ноутбук Lenovo IdeaPad 320S-13IKB', '2019-01-25 22:12:08', '				Екран 13.3" IPS (1920x1080) Full HD, матовий / Intel Core i5-8250U (1.6 - 3.4 ГГц) / RAM 8 ГБ / SSD 256 ГБ / nVidia GeForce MX150, 2 ГБ / без ОД / Wi-Fi / Bluetooth / веб-камера / DOS / 1.2 кг / сірий', '	            Країна-виробник товару Китай	Процесор Докладніше Чотириядерний Intel Core i5-8250U (1.6 - 3.4 ГГц)	Діагональ екрана Докладніше 13.3" (1920х1080) Full HD	Обсяг оперативної пам''яті Докладніше',                 'TopicAuthor', 'img04.jpg',    'NewsPublication'),
	(3, 'Ноутбук Lenovo V130-14IKB',         '2019-01-25 15:19:23', '				Екран 14" (1920x1080) Full HD, матовий / Intel Core i3-7020U (2.3 ГГц) / RAM 8 ГБ / SSD 256 ГБ / Intel HD Graphics 620 / без ОД / LAN / Wi-Fi / Bluetooth / веб-камера / Windows 10 Pro 64bit / 1.55 кг / сірий', '				Країна-виробник товару Китай	Процесор Докладніше Двоядерний Intel Core i3-7020U (2.3 ГГц)Діагональ екрана Докладніше 14" (1920x1080) Full HD	Обсяг оперативної пам''яті 8 ГБ	Короткі характеристики',            'Lenovo',      'img05.jpg',    'NewsPublication'),
	(4, 'Lorem ipsum dolor sit amet, conse', '2016-05-12 00:00:00', '				Lorem ipsum dolor sit amet, consectetur adipisicing elit. Itaque, ea distinctio unde, tenetur explicabo dolorem ab aut optio, amet nihil fugit praesentium. Quia, numquam ut deserunt nemo, quae dicta dolores!', '				Lorem ipsum dolor sit amet, consectetur adipisicing elit. Itaque, ea distinctio unde, tenetur explicabo dolorem ab aut optio, amet nihil fugit praesentium. Quia, numquam ut deserunt nemo, quae dicta dolores!', 'TopicAuthor', 'images/2.png', 'NewsPublication'),
	(5, 'Lorem ipsum dolor sit amet, conse', '2017-05-12 00:00:00', '				Lorem ipsum dolor sit amet, consectetur adipisicing elit. Itaque, ea distinctio unde, tenetur explicabo dolorem ab aut optio, amet nihil fugit praesentium. Quia, numquam ut deserunt nemo, quae dicta dolores!', '				Lorem ipsum dolor sit amet, consectetur adipisicing elit. Itaque, ea distinctio unde, tenetur explicabo dolorem ab aut optio, amet nihil fugit praesentium. Quia, numquam ut deserunt nemo, quae dicta dolores!', 'TopicAuthor', 'images/2.png', 'NewsPublication'),

/*!40000 ALTER TABLE `news` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
