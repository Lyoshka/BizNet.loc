-- --------------------------------------------------------
-- Хост:                         127.0.0.1
-- Версия сервера:               5.5.48 - MySQL Community Server (GPL)
-- Операционная система:         Win32
-- HeidiSQL Версия:              9.3.0.5062
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Дамп структуры базы данных biznet
CREATE DATABASE IF NOT EXISTS `biznet` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `biznet`;

-- Дамп структуры для таблица biznet.activations
CREATE TABLE IF NOT EXISTS `activations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы biznet.activations: ~2 rows (приблизительно)
/*!40000 ALTER TABLE `activations` DISABLE KEYS */;
INSERT INTO `activations` (`id`, `user_id`, `code`, `completed`, `completed_at`, `created_at`, `updated_at`) VALUES
	(1, 1, 'evnJ3NwogBWPwza5wnyqNaoYxJK1XHmR', 1, '2016-04-17 21:26:28', '2016-04-17 21:26:28', '2016-04-17 21:26:28'),
	(2, 2, 'sEZ8drwr7gcgwutej6lLf0JjyG8m0syy', 1, '2016-04-18 20:10:50', '2016-04-18 20:10:05', '2016-04-18 20:10:50');
/*!40000 ALTER TABLE `activations` ENABLE KEYS */;

-- Дамп структуры для таблица biznet.administrators
CREATE TABLE IF NOT EXISTS `administrators` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(190) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `administrators_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы biznet.administrators: ~1 rows (приблизительно)
/*!40000 ALTER TABLE `administrators` DISABLE KEYS */;
INSERT INTO `administrators` (`id`, `username`, `password`, `name`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'admin', '$2y$10$NxV0NkCYVADdnPppuVvSpOGMUdpr9h/OZzFpOGENsAF.FeyD6je/S', 'SleepingOwl Administrator', NULL, '2016-04-18 20:19:10', '2016-04-18 20:19:10');
/*!40000 ALTER TABLE `administrators` ENABLE KEYS */;

-- Дамп структуры для таблица biznet.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы biznet.migrations: ~4 rows (приблизительно)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`migration`, `batch`) VALUES
	('2014_07_02_230147_migration_cartalyst_sentinel', 1),
	('2014_10_12_104748_create_administrators_table', 2),
	('2016_04_18_203914_create_permits_table', 3),
	('2016_04_18_204424_create_pivot_permit_role', 3);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Дамп структуры для таблица biznet.permits
CREATE TABLE IF NOT EXISTS `permits` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы biznet.permits: ~5 rows (приблизительно)
/*!40000 ALTER TABLE `permits` DISABLE KEYS */;
INSERT INTO `permits` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
	(1, 'Создать', '.create', '2016-04-18 21:30:17', '2016-04-18 21:30:17'),
	(2, 'Редактировать', '.edit', '2016-04-18 21:30:57', '2016-04-18 21:30:57'),
	(3, 'Удалить', '.delete', '2016-04-18 21:31:10', '2016-04-18 21:31:10'),
	(4, 'Админ.Просмотр пользователей', 'admin.users', '2016-04-18 21:32:46', '2016-04-18 21:32:46'),
	(5, 'Админ.Удаление роли', 'admin.roles.delete', '2016-04-18 21:33:23', '2016-04-18 21:33:23');
/*!40000 ALTER TABLE `permits` ENABLE KEYS */;

-- Дамп структуры для таблица biznet.permit_role
CREATE TABLE IF NOT EXISTS `permit_role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `permit_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы biznet.permit_role: ~5 rows (приблизительно)
/*!40000 ALTER TABLE `permit_role` DISABLE KEYS */;
INSERT INTO `permit_role` (`id`, `permit_id`, `role_id`, `created_at`, `updated_at`) VALUES
	(1, 2, 2, NULL, NULL),
	(2, 1, 2, NULL, NULL),
	(3, 2, 4, NULL, NULL),
	(4, 1, 4, NULL, NULL),
	(5, 3, 4, NULL, NULL);
/*!40000 ALTER TABLE `permit_role` ENABLE KEYS */;

-- Дамп структуры для таблица biznet.persistences
CREATE TABLE IF NOT EXISTS `persistences` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `persistences_code_unique` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы biznet.persistences: ~5 rows (приблизительно)
/*!40000 ALTER TABLE `persistences` DISABLE KEYS */;
INSERT INTO `persistences` (`id`, `user_id`, `code`, `created_at`, `updated_at`) VALUES
	(1, 2, 'MEIrJtLsgemMkOdh8FoBfKspDlvAEVYM', '2016-04-18 20:10:54', '2016-04-18 20:10:54'),
	(2, 1, '2Em3ozQh9wiP33OzC5FSgZpDlWi45Xtn', '2016-04-18 20:38:06', '2016-04-18 20:38:06'),
	(5, 1, 'By422KGptZPdqJel1jm219JyOi1H6DEj', '2016-04-18 22:41:46', '2016-04-18 22:41:46'),
	(6, 1, 'gNyMZBdPSY2ZzU7wD5Vp1MineIH3khAV', '2016-04-19 20:14:05', '2016-04-19 20:14:05'),
	(7, 1, 'tMzgoKRqii94r7N0lsNNjo1zGLVBx1wI', '2016-04-20 22:02:13', '2016-04-20 22:02:13');
/*!40000 ALTER TABLE `persistences` ENABLE KEYS */;

-- Дамп структуры для таблица biznet.reminders
CREATE TABLE IF NOT EXISTS `reminders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы biznet.reminders: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `reminders` DISABLE KEYS */;
/*!40000 ALTER TABLE `reminders` ENABLE KEYS */;

-- Дамп структуры для таблица biznet.roles
CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы biznet.roles: ~4 rows (приблизительно)
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` (`id`, `slug`, `name`, `permissions`, `created_at`, `updated_at`) VALUES
	(1, 'admin', 'Администратор', '{"admin":true}', '2016-04-17 21:26:28', '2016-04-17 21:26:28'),
	(2, 'user', 'Пользователь', '{".edit":true,".create":true}', '2016-04-17 21:26:28', '2016-04-19 20:29:51'),
	(3, 'banned', 'Забанен', NULL, '2016-04-17 21:26:28', '2016-04-17 21:26:28'),
	(4, 'moderator', 'Модератор', '{".edit":true,".create":true,".delete":true}', '2016-04-19 20:31:02', '2016-04-19 20:31:02');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;

-- Дамп структуры для таблица biznet.role_users
CREATE TABLE IF NOT EXISTS `role_users` (
  `user_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы biznet.role_users: ~3 rows (приблизительно)
/*!40000 ALTER TABLE `role_users` DISABLE KEYS */;
INSERT INTO `role_users` (`user_id`, `role_id`, `created_at`, `updated_at`) VALUES
	(1, 1, NULL, NULL),
	(2, 1, NULL, NULL),
	(2, 2, NULL, NULL);
/*!40000 ALTER TABLE `role_users` ENABLE KEYS */;

-- Дамп структуры для таблица biznet.throttle
CREATE TABLE IF NOT EXISTS `throttle` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `throttle_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы biznet.throttle: ~21 rows (приблизительно)
/*!40000 ALTER TABLE `throttle` DISABLE KEYS */;
INSERT INTO `throttle` (`id`, `user_id`, `type`, `ip`, `created_at`, `updated_at`) VALUES
	(1, NULL, 'global', NULL, '2016-04-18 21:52:08', '2016-04-18 21:52:08'),
	(2, NULL, 'ip', '127.0.0.1', '2016-04-18 21:52:08', '2016-04-18 21:52:08'),
	(3, 2, 'user', NULL, '2016-04-18 21:52:08', '2016-04-18 21:52:08'),
	(4, NULL, 'global', NULL, '2016-04-18 21:52:18', '2016-04-18 21:52:18'),
	(5, NULL, 'ip', '127.0.0.1', '2016-04-18 21:52:18', '2016-04-18 21:52:18'),
	(6, 2, 'user', NULL, '2016-04-18 21:52:18', '2016-04-18 21:52:18'),
	(7, NULL, 'global', NULL, '2016-04-18 22:06:24', '2016-04-18 22:06:24'),
	(8, NULL, 'ip', '127.0.0.1', '2016-04-18 22:06:24', '2016-04-18 22:06:24'),
	(9, 1, 'user', NULL, '2016-04-18 22:06:24', '2016-04-18 22:06:24'),
	(10, NULL, 'global', NULL, '2016-04-18 22:07:38', '2016-04-18 22:07:38'),
	(11, NULL, 'ip', '127.0.0.1', '2016-04-18 22:07:38', '2016-04-18 22:07:38'),
	(12, 1, 'user', NULL, '2016-04-18 22:07:38', '2016-04-18 22:07:38'),
	(13, NULL, 'global', NULL, '2016-04-18 22:13:23', '2016-04-18 22:13:23'),
	(14, NULL, 'ip', '127.0.0.1', '2016-04-18 22:13:23', '2016-04-18 22:13:23'),
	(15, 2, 'user', NULL, '2016-04-18 22:13:23', '2016-04-18 22:13:23'),
	(16, NULL, 'global', NULL, '2016-04-18 22:41:05', '2016-04-18 22:41:05'),
	(17, NULL, 'ip', '127.0.0.1', '2016-04-18 22:41:05', '2016-04-18 22:41:05'),
	(18, 1, 'user', NULL, '2016-04-18 22:41:05', '2016-04-18 22:41:05'),
	(19, NULL, 'global', NULL, '2016-04-19 20:13:43', '2016-04-19 20:13:43'),
	(20, NULL, 'ip', '127.0.0.1', '2016-04-19 20:13:43', '2016-04-19 20:13:43'),
	(21, 1, 'user', NULL, '2016-04-19 20:13:43', '2016-04-19 20:13:43');
/*!40000 ALTER TABLE `throttle` ENABLE KEYS */;

-- Дамп структуры для таблица biznet.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8_unicode_ci,
  `last_login` timestamp NULL DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы biznet.users: ~2 rows (приблизительно)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `email`, `password`, `permissions`, `last_login`, `first_name`, `last_name`, `created_at`, `updated_at`) VALUES
	(1, 'admin@admin.com', '$2y$10$NLiGyCvHfQj7039yvLVQMOyZF9jXVrMizaTwyb3WqrPYQecbjR4kS', NULL, '2016-04-20 22:02:13', 'Администратор', '', '2016-04-17 21:26:27', '2016-04-20 22:02:13'),
	(2, 'alex@mail.ru', '$2y$10$InFjda/KyjPnKL9agtxwW.QRqYrZNcfsNAc6BCwq/HX3rH/gbl2cm', NULL, '2016-04-18 20:24:35', 'Алексей', '', '2016-04-18 20:10:05', '2016-04-19 20:24:35');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
