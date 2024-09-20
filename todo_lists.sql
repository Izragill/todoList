-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Сен 20 2024 г., 03:52
-- Версия сервера: 8.0.19
-- Версия PHP: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `todo`
--

-- --------------------------------------------------------

--
-- Структура таблицы `todo_lists`
--

CREATE TABLE `todo_lists` (
  `id` bigint UNSIGNED NOT NULL,
  `done` int DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `todo_lists`
--

INSERT INTO `todo_lists` (`id`, `done`, `name`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Задача 1', NULL, NULL),
(2, NULL, 'Задача 2', NULL, NULL),
(3, 1, 'Задача 3', NULL, '2024-09-19 21:51:23'),
(4, NULL, 'Задача 4', NULL, NULL),
(5, 0, 'Задача 5', NULL, '2024-09-19 21:51:25'),
(6, 1, 'Задача 6', NULL, '2024-09-19 21:51:25'),
(7, 1, 'Задача 7', NULL, '2024-09-19 21:51:24'),
(8, 1, 'Задача 8', NULL, '2024-09-19 21:51:24'),
(9, NULL, 'Задача 9', NULL, NULL),
(10, 1, 'Задача 10', NULL, '2024-09-19 21:51:26'),
(11, NULL, 'Задача 11', NULL, NULL),
(12, 1, 'Задача 12', NULL, '2024-09-19 21:51:30'),
(13, 1, 'Задача 13', NULL, '2024-09-19 21:51:30'),
(14, NULL, 'Задача 14', NULL, NULL),
(15, 1, 'Задача 15', NULL, '2024-09-19 21:51:30'),
(16, NULL, 'Задача 16', NULL, NULL),
(17, 1, 'Задача 17', NULL, '2024-09-19 21:51:29'),
(18, 1, 'Задача 18', NULL, '2024-09-19 21:51:29'),
(19, NULL, 'Задача 19', NULL, NULL),
(20, 1, 'Задача 20', NULL, '2024-09-19 21:51:31'),
(21, NULL, 'Задача 21', NULL, NULL),
(22, 1, 'Задача 22', NULL, '2024-09-19 21:51:35'),
(23, NULL, 'Задача 23', NULL, NULL),
(24, 1, 'Задача 24', NULL, '2024-09-19 21:51:35'),
(25, NULL, 'Задача 25', NULL, NULL),
(26, NULL, 'Задача 26', NULL, NULL),
(27, 0, 'Задача 27', NULL, '2024-09-19 21:51:35'),
(28, NULL, 'Задача 28', NULL, NULL),
(29, 1, 'Задача 29', NULL, '2024-09-19 21:51:34'),
(30, NULL, 'Задача 30', NULL, NULL),
(31, NULL, 'Задача 31', NULL, NULL),
(32, NULL, 'Задача 32', NULL, NULL),
(33, NULL, 'Задача 33', NULL, NULL),
(34, 1, 'Задача 34', NULL, '2024-09-19 21:51:38'),
(35, NULL, 'Задача 35', NULL, NULL),
(36, 1, 'Задача 36', NULL, '2024-09-19 21:51:37'),
(37, NULL, 'Задача 37', NULL, NULL),
(38, NULL, 'Задача 38', NULL, NULL),
(39, NULL, 'Задача 39', NULL, NULL),
(40, 1, 'Задача 40', NULL, '2024-09-19 21:51:37'),
(41, NULL, 'Задача 41', NULL, NULL),
(42, 1, 'Задача 42', NULL, '2024-09-19 21:51:44'),
(43, NULL, 'Задача 43', NULL, NULL),
(44, 1, 'Задача 44', NULL, '2024-09-19 21:51:42'),
(45, NULL, 'Задача 45', NULL, NULL),
(46, 0, 'Задача 46', NULL, '2024-09-19 21:51:43'),
(47, NULL, 'Задача 47', NULL, NULL),
(48, 0, 'Задача 48', NULL, '2024-09-19 21:51:44'),
(49, 1, 'Задача 49', NULL, '2024-09-19 21:51:45'),
(50, 1, 'Задача 50', NULL, '2024-09-19 21:51:43');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `todo_lists`
--
ALTER TABLE `todo_lists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `todo_lists`
--
ALTER TABLE `todo_lists`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
