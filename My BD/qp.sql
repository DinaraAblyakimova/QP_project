-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Дек 08 2024 г., 16:48
-- Версия сервера: 10.4.32-MariaDB
-- Версия PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `qp`
--

-- --------------------------------------------------------

--
-- Структура таблицы `alembic_version`
--

CREATE TABLE `alembic_version` (
  `version_num` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `alembic_version`
--

INSERT INTO `alembic_version` (`version_num`) VALUES
('11e32c80429b');

-- --------------------------------------------------------

--
-- Структура таблицы `favorite_users`
--

CREATE TABLE `favorite_users` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `favorite_user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `publications`
--

CREATE TABLE `publications` (
  `id` int(11) NOT NULL,
  `description` text DEFAULT NULL,
  `author_id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `image_urls` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `publications`
--

INSERT INTO `publications` (`id`, `description`, `author_id`, `created_at`, `image_urls`) VALUES
(26, 'Мотокросс', 13, '2024-12-02 19:08:47', '/uploads/publications/d31792300eba46f2aef7e98e3c46b8f1_i_3.webp,/uploads/publications/4db70039b31e4120ab8e4e4b5fa0ed7e_i_4.webp,/uploads/publications/3429ad2e5dbb499aad70aaa9c25b6400_i_5.webp'),
(27, 'Мотокросс', 13, '2024-12-03 08:17:15', '/uploads/publications/59c2e2d6f96b41bc81505ed00c8e24ec_i_3.webp,/uploads/publications/681e565ec29d40238c9b41f6e4b53e85_i_5.webp,/uploads/publications/e7c114c11cdd4afda2ca69c8b0e1c751_i_4.webp'),
(28, 'asfdsfsadf', 13, '2024-12-03 09:13:20', '/uploads/publications/b7edfaa0fb8f49178cc22a7a9bffcf63_i_5.webp,/uploads/publications/5c556519ede647a09aa8b9226b2c79f7_i_4.webp,/uploads/publications/737d72a3b2a543b1912f28d2958479b1_i_3.webp'),
(29, '', 13, '2024-12-03 09:16:43', '/uploads/publications/746f7a522b8f4ccab6d66b81af9d78f0_i_3.webp,/uploads/publications/6fccb66d5fca4e1d8b58cd8da8eaa94c_i_4.webp,/uploads/publications/74f718c7ffbf4ad59d1a6f82bb72709b_i_5.webp'),
(30, 'Мотокросс', 13, '2024-12-03 09:20:18', '/uploads/publications/535db161066b48f9a5f7e69f02f5797b_i_3.webp,/uploads/publications/b1542ed8c7f74738b3163ff01bd11326_i_4.webp,/uploads/publications/d9f0f7cf90824a16a520d9f5c731e461_i_5.webp'),
(31, 'sasdfasdfas', 13, '2024-12-03 21:14:42', '/uploads/publications/c5e3f6b8c1c440628f1032a56aff428d_i.webp,/uploads/publications/6fbb3558e875458ab3ac5bbcbcc3b50d_i_2.webp,/uploads/publications/e293c7c5965849d595418ab4d4779c65_i_4.webp');

-- --------------------------------------------------------

--
-- Структура таблицы `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price_per_hour` float NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `services`
--

INSERT INTO `services` (`id`, `name`, `price_per_hour`, `user_id`) VALUES
(1, 'Фотография', 5000, 13),
(2, 'Фотография', 5000, 14),
(3, 'Видеосъёмка свадебных мероприятий', 10000, 13);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(150) NOT NULL,
  `name` varchar(150) NOT NULL,
  `surname` varchar(150) DEFAULT NULL,
  `city` varchar(150) DEFAULT NULL,
  `photo_url` varchar(150) DEFAULT NULL,
  `password_hash` varchar(256) NOT NULL,
  `username` varchar(150) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `check_buisnes` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `email`, `name`, `surname`, `city`, `photo_url`, `password_hash`, `username`, `birth_date`, `check_buisnes`) VALUES
(13, 'dmalygin228@gmail.com', 'Дмитрий', 'Малыгин', 'Симферополь', '/uploads/avatars/i_3.webp', 'scrypt:32768:8:1$TacwUTXRlqiAt59k$eef65e259e8f291ce1bdb2a2309a387ee26d90dd884a3fcf81b3a455059c6947ccce7f9c98df5c10b823d3cc18c49b84f77bb07b1df70b63271eb448dbd80e9a', 'foxlive', '2024-11-01', 1),
(14, 'malygin.d.i.2.18@gmail.com', 'Дмитрий', '', '', NULL, 'scrypt:32768:8:1$IwJCgLSKukXp0vef$18b0a4b78033c615dea711d5cf193cda9c50890448d3259176586082d6b166ff5fdbe470059a41c9c332e97a5fb910996baa2238ab1909ea3afcbbc7e4df0906', '', '0000-00-00', 1);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `alembic_version`
--
ALTER TABLE `alembic_version`
  ADD PRIMARY KEY (`version_num`);

--
-- Индексы таблицы `favorite_users`
--
ALTER TABLE `favorite_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `favorite_user_id` (`favorite_user_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `publications`
--
ALTER TABLE `publications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `author_id` (`author_id`);

--
-- Индексы таблицы `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `favorite_users`
--
ALTER TABLE `favorite_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT для таблицы `publications`
--
ALTER TABLE `publications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT для таблицы `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `favorite_users`
--
ALTER TABLE `favorite_users`
  ADD CONSTRAINT `favorite_users_ibfk_1` FOREIGN KEY (`favorite_user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `favorite_users_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ограничения внешнего ключа таблицы `publications`
--
ALTER TABLE `publications`
  ADD CONSTRAINT `publications_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`);

--
-- Ограничения внешнего ключа таблицы `services`
--
ALTER TABLE `services`
  ADD CONSTRAINT `services_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
