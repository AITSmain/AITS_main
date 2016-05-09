-- phpMyAdmin SQL Dump
-- version 4.5.5.1deb1
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Май 09 2016 г., 17:44
-- Версия сервера: 5.6.28-1
-- Версия PHP: 5.6.17-3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `aits`
--

-- --------------------------------------------------------

--
-- Структура таблицы `projects`
--

CREATE TABLE `projects` (
  `project_id` int(11) NOT NULL,
  `project_name_en` varchar(700) NOT NULL,
  `project_name_ua` varchar(700) NOT NULL,
  `project_descr_en` text NOT NULL,
  `project_descr_ua` text NOT NULL,
  `project_img` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `projects`
--

INSERT INTO `projects` (`project_id`, `project_name_en`, `project_name_ua`, `project_descr_en`, `project_descr_ua`, `project_img`) VALUES
(3, 'Library PJSC "Zakarpattyaoblenergo"', 'Електронна бібліотека ПАТ "Закарпаттяобленерго"', 'The project is designed to organize the conservation and use of heterogeneous collections of electronic documents in the company.\r\n\r\nFlexible to set up the system partition and access allows without unnecessary problems manage electronic documents in various formats (text, graphics, etc.), and set access rights in a convenient form for different user groups.', 'Проект розроблений для організації, збереження і використання різнорідних колекцій електронних документів в компанії.\r\n\r\nГнучка в налаштуванні система розділів та доступу дозволяє без зайвих проблем керувати електронними документами різних форматів, та налаштувати права доступу для різних груп користувачів в зручному для них вигляді.', 'files/gallery/1.png,files/gallery/2.png,files/gallery/3.png,files/gallery/4.png,files/gallery/5.png,files/gallery/6.png,');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`project_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `projects`
--
ALTER TABLE `projects`
  MODIFY `project_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
