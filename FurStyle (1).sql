-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3307
-- Время создания: Янв 25 2024 г., 09:30
-- Версия сервера: 5.5.62-log
-- Версия PHP: 8.0.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `FurStyle`
--

-- --------------------------------------------------------

--
-- Структура таблицы `Administrator`
--

CREATE TABLE `Administrator` (
  `id` int(11) NOT NULL,
  `login` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `Cart`
--

CREATE TABLE `Cart` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `Mesto1` int(11) NOT NULL,
  `cod` int(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `Cart`
--

INSERT INTO `Cart` (`id`, `client_id`, `product_id`, `Mesto1`, `cod`) VALUES
(56, 5, 21, 1, 68131321),
(57, 10, 21, 1, 88724130),
(59, 11, 21, 2, 85632613);

-- --------------------------------------------------------

--
-- Структура таблицы `Client`
--

CREATE TABLE `Client` (
  `id` int(11) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `password` longtext NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `isAdmin` int(11) NOT NULL,
  `balance` int(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `Client`
--

INSERT INTO `Client` (`id`, `firstName`, `lastName`, `password`, `phone`, `email`, `isAdmin`, `balance`) VALUES
(5, 'Артур', 'Хайруллин', '$2y$10$3e43ImqEkQ.pJ6ImR7LTnu.kGV5.p60J0Tsnq0kkI.SW9.XMb5Or2', '+7 (951) 801-80 25', 'hack1medait@gmail.com', 1, 60001),
(7, 'Артур1', 'Хайруллин1', '$2y$10$wRCP8pRYbcnTszBQyKfSdesqxovR2Ck5IQbfDjyjJ4n0cqehHWplu', '+7 (951) 801-80 26', 'hack11medait@gmail.com', 0, 1),
(8, 'Круизиный', 'Отдых', '$2y$10$.NGTYO2Wiui9QPXG2wJPNOYKVOdq.ZvSa6gN1uE8/0laYq9PSneXO', '+7 (951) 801-80 26', 'hack111medait@gmail.com', 0, 0),
(9, 'Анастасия', 'Титенок', '$2y$10$keSA0yNoJvgaPPY5XvjkkOCRLs821vYfdLHMnnOGunRURnZTI/Nou', '+7 (987) 564-13 15', '123@gmail.com', 0, 0),
(10, 'Анастасия', 'Титенок', '$2y$10$iOBRc8gEasRLvYw8uQO9mOfAc8hOAHL2J0BiWHzgyfpYD2uYEkibG', '+7 (123) 231-23 12', '1234@gmail.com', 0, 0),
(11, 'Сергей', '123', '$2y$10$eh6CzTqXKjxhawPbdh/lSefjanW1ZTJmKaoqV/khUDLY0.1ro1z0W', '+7 (123) 123-12 31', '12345@gmail.com', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `Comments`
--

CREATE TABLE `Comments` (
  `id` int(11) NOT NULL,
  `text` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `Comments`
--

INSERT INTO `Comments` (`id`, `text`) VALUES
(1, '\"Большой выбор инструментов и отличное обслуживание! Я в восторге от моей новой гитары!\"'),
(2, '\"Этот магазин стал для меня находкой! Огромный выбор и профессиональный подход.\"'),
(3, '\"Удивительно, какой выбор струнных инструментов! Этот магазин - настоящая находка для музыкантов.\"'),
(4, '\"Спасибо за помощь в выборе! Мой новый саксофон - просто шедевр!\"'),
(5, '\"Очень доволен покупкой клавишного инструмента. Отличное качество и звучание!\"');

-- --------------------------------------------------------

--
-- Структура таблицы `infoFilm`
--

CREATE TABLE `infoFilm` (
  `id` int(11) NOT NULL,
  `name` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_path` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `infoText` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `infoFilm`
--

INSERT INTO `infoFilm` (`id`, `name`, `image_path`, `infoText`) VALUES
(1, 'Винни Пух', 'image/3.jpg', 'Фильм о вин'),
(2, 'Проверка на', 'image/6.jpg', 'Новый фильм'),
(3, '3 на инфу', 'image/6.jpg', '3 которого ');

-- --------------------------------------------------------

--
-- Структура таблицы `Product`
--

CREATE TABLE `Product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `image_path` longtext NOT NULL,
  `Seans` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `Product`
--

INSERT INTO `Product` (`id`, `name`, `price`, `image_path`, `Seans`) VALUES
(3, 'Винни Пух', 690, 'image/3.jpg', '13:00'),
(21, 'Винни Пух', 123, 'image/2.jpg', '9:30'),
(22, 'Спутник (3D)', 880, 'image/5.jpg', '21:30'),
(24, 'Одна дома', 0, 'image/8.jpg', '15:40'),
(27, '123', 123, 'image/5.jpg', '13:55');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `Administrator`
--
ALTER TABLE `Administrator`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `Cart`
--
ALTER TABLE `Cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_id` (`client_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Индексы таблицы `Client`
--
ALTER TABLE `Client`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `Comments`
--
ALTER TABLE `Comments`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `infoFilm`
--
ALTER TABLE `infoFilm`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `Product`
--
ALTER TABLE `Product`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `Administrator`
--
ALTER TABLE `Administrator`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `Cart`
--
ALTER TABLE `Cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT для таблицы `Client`
--
ALTER TABLE `Client`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `Comments`
--
ALTER TABLE `Comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `infoFilm`
--
ALTER TABLE `infoFilm`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `Product`
--
ALTER TABLE `Product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `Cart`
--
ALTER TABLE `Cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `Client` (`id`),
  ADD CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `Product` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
