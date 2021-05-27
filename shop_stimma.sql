-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Час створення: Трв 27 2021 р., 01:39
-- Версія сервера: 5.7.29
-- Версія PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База даних: `shop_stimma`
--

-- --------------------------------------------------------

--
-- Структура таблиці `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `product_id` int(11) UNSIGNED NOT NULL,
  `products_category_id` int(11) UNSIGNED NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп даних таблиці `category`
--

INSERT INTO `category` (`id`, `product_id`, `products_category_id`, `name`) VALUES
(1, 14, 1, 'Костюми (жін)'),
(2, 17, 1, 'Костюми (жін)'),
(3, 16, 1, 'Костюми (жін)'),
(4, 15, 1, 'Костюми (жін)'),
(5, 19, 1, 'Джинси (жін)'),
(6, 20, 1, 'Джинси (жін)'),
(7, 18, 1, 'Джинси (жін)'),
(8, 21, 1, 'Джинси (жін)'),
(9, 29, 2, 'Джинси (чол)'),
(10, 30, 2, 'Кофта (чол)'),
(11, 12, 1, 'Кофта (жін)'),
(12, 11, 1, 'Кофта (жін)'),
(13, 13, 1, 'Кофта (чол)'),
(14, 28, 2, 'Сорочка (чол)'),
(15, 6, 1, 'Сорочка (жін)'),
(16, 4, 1, 'Сорочка (жін)'),
(17, 5, 1, 'Сорочка (жін)'),
(18, 27, 2, 'Костюм спортивний (чол)'),
(19, 1, 1, 'Сукня'),
(20, 3, 1, 'Сукня'),
(21, 2, 1, 'Сукня'),
(22, 7, 1, 'Футболка (жін)'),
(23, 9, 1, 'Футболка (жін)'),
(24, 8, 1, 'Футболка (жін)'),
(25, 10, 1, 'Футболка (жін)'),
(26, 24, 2, 'Футболка (чол)'),
(27, 22, 2, 'Кофта (чол)'),
(28, 26, 2, 'Шорти (чол)'),
(29, 25, 2, 'Джинси (чол)'),
(30, 23, 2, 'Кофта (чол)');

-- --------------------------------------------------------

--
-- Структура таблиці `orders`
--

CREATE TABLE `orders` (
  `id` int(11) UNSIGNED NOT NULL,
  `product` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `orders`
--

INSERT INTO `orders` (`id`, `product`, `email`, `name`, `phone`, `comment`, `address`) VALUES
(65, '', 'shopping@gmail.com', 'Nastya Gots', '0950143315', NULL, NULL),
(66, '', 'gots.n1@gmail.com', 'Nastya', '111', '+380950143316', '1111'),
(67, '5', 'gots.n1@gmail.com', 'Nastya', ' ывсысывсывс', '+380950143316', 'Львів'),
(68, '18', '1', '1', ' 11', '1', '1'),
(69, '12', 'nastya@gmail.com', 'gots_anastasiya', ' ', '+380950143316', 'Львів'),
(70, '4', 'sdfddffd@gmail.com', 'Ольга', ' ', '+380950143316', 'Львів'),
(71, '1', 'nastya@gmail.com', 'gots_arsen', ' ', '+380950143316', 'Львів'),
(72, '14', 'nastya@gmail.com', 'Анастасія', ' 11111', '11111', '11111'),
(73, '26', '111', 'Анна', ' 1111', '1111', '1111'),
(74, '1', '11', 'gots_anastasiya', ' 1111', '1', 'Львів');

-- --------------------------------------------------------

--
-- Структура таблиці `postmail`
--

CREATE TABLE `postmail` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `postmail`
--

INSERT INTO `postmail` (`id`, `email`) VALUES
(1, '11'),
(2, '11'),
(3, '222'),
(4, '222'),
(5, 'wqsdqws'),
(6, 'wqsdqws'),
(7, 'wqsdqws'),
(8, 'gots.n1@gmail.com'),
(9, 'nastya@gmail.com');

-- --------------------------------------------------------

--
-- Структура таблиці `products`
--

CREATE TABLE `products` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `img` varchar(100) NOT NULL,
  `category` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `img`, `category`) VALUES
(1, 'Сукня блакитна', 1000, '1p.jpg', 1),
(2, 'Сукня в квіточку', 1200, '2p.jpg', 1),
(3, 'Сукня в горошок', 1000, '3p.jpg', 1),
(4, 'Сорочка біла', 700, '4p.jpg', 1),
(5, 'Сорочка чорна', 750, '5p.jpg', 1),
(6, 'Сорочка блакитна', 780, '6p.jpg', 1),
(7, 'Футболка біла', 300, '7p.jpg', 1),
(8, 'Футболка рожева', 350, '8p.jpg', 1),
(9, 'Футболка в полоску', 350, '9p.jpg', 1),
(10, 'Футболка фіолетова', 300, '10p.jpg', 1),
(11, 'Світшот зелений', 530, '11p.jpg', 1),
(12, 'Світшот жовтий', 550, '12p.jpg', 1),
(13, 'Світшот синій', 530, '13p.jpg', 1),
(14, 'Костюм молочний', 1500, '14p.jpg', 1),
(15, 'Костюм фіолетовий', 1700, '15p.jpg', 1),
(16, 'Костюм темно-синій', 1700, '16p.jpg', 1),
(17, 'Костюм світло-зелений', 1550, '17p.jpg', 1),
(18, 'Джинси темні', 999, '18p.jpg', 1),
(19, 'Джинси світлі', 1050, '19p.jpg', 1),
(20, 'Джинси сірі', 899, '20p.jpg', 1),
(21, 'Джинси чорні', 600, '21p.jpg', 1),
(22, 'Худі', 600, '22p.jpg', 2),
(23, 'Кофта', 450, '23p.jpg', 2),
(24, 'Футболка чорна', 300, '24p.jpg', 2),
(25, 'Штани', 650, '25p.jpg', 2),
(26, 'Шорти', 670, '26p.jpg', 2),
(27, 'Спортивний костюм', 1150, '27p.jpg', 2),
(28, 'Сорочка блакитна', 700, '28p.jpg', 2),
(29, 'Джинси чорні', 800, '29p.jpg', 2),
(30, 'Світшот', 450, '30p.jpg', 2);

-- --------------------------------------------------------

--
-- Структура таблиці `products_categories`
--

CREATE TABLE `products_categories` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `products_categories`
--

INSERT INTO `products_categories` (`id`, `name`) VALUES
(1, 'Для неї'),
(2, 'Для нього');

-- --------------------------------------------------------

--
-- Структура таблиці `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) CHARACTER SET utf8mb4 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`) VALUES
(1, 'admin', '12345', 'Nastya Gots'),
(2, 'Настя', 'gots.n1@gmail.com', '8ec316a6bd7240d74c0567a1d9b311e5'),
(3, 'Nastya', 'nastya@gmail.com', '8ec316a6bd7240d74c0567a1d9b311e5'),
(4, 'НастяY', 'aloyewera2020@gmail.com', '8ec316a6bd7240d74c0567a1d9b311e5'),
(5, 'Nastya111', 'sdfddffd@gmail.com', 'b0baee9d279d34fa1dfd71aadb908c3f'),
(6, 'katia', 'katia@gmail.com', 'b59c67bf196a4758191e42f76670ceba'),
(7, 'Настя Гоц', 'nastyagots@gmail.com', 'b7040c192c666b30e2b04135a09cd731');

--
-- Індекси збережених таблиць
--

--
-- Індекси таблиці `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `products_category_id` (`products_category_id`);

--
-- Індекси таблиці `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `postmail`
--
ALTER TABLE `postmail`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category` (`category`) USING BTREE;

--
-- Індекси таблиці `products_categories`
--
ALTER TABLE `products_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Індекси таблиці `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для збережених таблиць
--

--
-- AUTO_INCREMENT для таблиці `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT для таблиці `postmail`
--
ALTER TABLE `postmail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблиці `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT для таблиці `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Обмеження зовнішнього ключа збережених таблиць
--

--
-- Обмеження зовнішнього ключа таблиці `category`
--
ALTER TABLE `category`
  ADD CONSTRAINT `category_ibfk_1` FOREIGN KEY (`products_category_id`) REFERENCES `products_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `category_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Обмеження зовнішнього ключа таблиці `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category`) REFERENCES `products_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
