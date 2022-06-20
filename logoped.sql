-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июн 20 2022 г., 15:58
-- Версия сервера: 8.0.24
-- Версия PHP: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `logoped`
--

-- --------------------------------------------------------

--
-- Структура таблицы `admin_menu`
--

CREATE TABLE `admin_menu` (
  `id` int UNSIGNED NOT NULL,
  `parent_id` int NOT NULL DEFAULT '0',
  `order` int NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permission` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `admin_menu`
--

INSERT INTO `admin_menu` (`id`, `parent_id`, `order`, `title`, `icon`, `uri`, `permission`, `created_at`, `updated_at`) VALUES
(1, 0, 1, 'Dashboard', 'fa-bar-chart', '/', NULL, NULL, NULL),
(2, 0, 2, 'Admin', 'fa-tasks', '', NULL, NULL, NULL),
(3, 2, 3, 'Users', 'fa-users', 'auth/users', NULL, NULL, NULL),
(4, 2, 4, 'Roles', 'fa-user', 'auth/roles', NULL, NULL, NULL),
(5, 2, 5, 'Permission', 'fa-ban', 'auth/permissions', NULL, NULL, NULL),
(6, 2, 6, 'Menu', 'fa-bars', 'auth/menu', NULL, NULL, NULL),
(7, 2, 7, 'Operation log', 'fa-history', 'auth/logs', NULL, NULL, NULL),
(8, 0, 8, 'Exercises', 'fa-internet-explorer', 'exercises', NULL, '2022-06-20 11:58:23', '2022-06-20 11:58:35'),
(9, 0, 11, 'Feedback', 'fa-facebook', 'feedback', NULL, '2022-06-20 12:28:15', '2022-06-20 12:45:30'),
(10, 0, 9, 'Tweesters', 'fa-retweet', 'tweesters', NULL, '2022-06-20 12:33:36', '2022-06-20 12:33:44'),
(11, 0, 10, 'Videos', 'fa-video-camera', 'videos', NULL, '2022-06-20 12:45:22', '2022-06-20 12:45:30');

-- --------------------------------------------------------

--
-- Структура таблицы `admin_operation_log`
--

CREATE TABLE `admin_operation_log` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `admin_operation_log`
--

INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-06-19 18:06:39', '2022-06-19 18:06:39'),
(2, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-19 18:06:50', '2022-06-19 18:06:50'),
(3, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-06-20 11:55:06', '2022-06-20 11:55:06'),
(4, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-06-20 11:56:07', '2022-06-20 11:56:07'),
(5, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-06-20 11:57:13', '2022-06-20 11:57:13'),
(6, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-20 11:57:16', '2022-06-20 11:57:16'),
(7, 1, 'admin/auth/setting', 'PUT', '127.0.0.1', '{\"name\":\"Administrator\",\"password\":\"$2y$10$rVykO6i3OGhzg4fLDgcGYeXTa59\\/hWc8WIbWhSBebEVBbjS0fmKbO\",\"password_confirmation\":\"$2y$10$rVykO6i3OGhzg4fLDgcGYeXTa59\\/hWc8WIbWhSBebEVBbjS0fmKbO\",\"_token\":\"LVMp01yRCjFF34igMZ2NdiYI8cTzPJPLytvRExHY\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/logoped.loc\\/admin\"}', '2022-06-20 11:57:34', '2022-06-20 11:57:34'),
(8, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2022-06-20 11:57:35', '2022-06-20 11:57:35'),
(9, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2022-06-20 11:57:37', '2022-06-20 11:57:37'),
(10, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-20 11:57:40', '2022-06-20 11:57:40'),
(11, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Exercises\",\"icon\":\"fa-internet-explorer\",\"uri\":\"exercises\",\"roles\":[null],\"permission\":null,\"_token\":\"LVMp01yRCjFF34igMZ2NdiYI8cTzPJPLytvRExHY\"}', '2022-06-20 11:58:23', '2022-06-20 11:58:23'),
(12, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2022-06-20 11:58:23', '2022-06-20 11:58:23'),
(13, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2022-06-20 11:58:26', '2022-06-20 11:58:26'),
(14, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"LVMp01yRCjFF34igMZ2NdiYI8cTzPJPLytvRExHY\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]},{\\\"id\\\":8}]\"}', '2022-06-20 11:58:35', '2022-06-20 11:58:35'),
(15, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-20 11:58:36', '2022-06-20 11:58:36'),
(16, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2022-06-20 11:58:37', '2022-06-20 11:58:37'),
(17, 1, 'admin/exercises', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-20 11:58:39', '2022-06-20 11:58:39'),
(18, 1, 'admin/exercises/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-20 11:58:42', '2022-06-20 11:58:42'),
(19, 1, 'admin/exercises', 'POST', '127.0.0.1', '{\"title\":\"BEGEMOT\",\"description\":\"\\u2013 agzy m\\u00fcmkin boldugy\\u00e7a gi\\u0148, bu \\u00fdagda\\u00fdda 5 sekunt sakla\\u0148.\",\"status\":\"on\",\"_token\":\"LVMp01yRCjFF34igMZ2NdiYI8cTzPJPLytvRExHY\",\"_previous_\":\"http:\\/\\/logoped.loc\\/admin\\/exercises\"}', '2022-06-20 12:00:42', '2022-06-20 12:00:42'),
(20, 1, 'admin/exercises', 'GET', '127.0.0.1', '[]', '2022-06-20 12:00:43', '2022-06-20 12:00:43'),
(21, 1, 'admin/exercises', 'GET', '127.0.0.1', '[]', '2022-06-20 12:01:51', '2022-06-20 12:01:51'),
(22, 1, 'admin/exercises/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-20 12:02:00', '2022-06-20 12:02:00'),
(23, 1, 'admin/exercises', 'POST', '127.0.0.1', '{\"title\":\"DARAK\",\"description\":\"\\u00fdylgyry\\u0148, dili\\u0148izi darak \\u00fdaly di\\u015fleri\\u0148izi di\\u015flap one- yza,yagny sa\\u00e7ynyzy darayan yaly.\",\"status\":\"on\",\"_token\":\"LVMp01yRCjFF34igMZ2NdiYI8cTzPJPLytvRExHY\",\"_previous_\":\"http:\\/\\/logoped.loc\\/admin\\/exercises\"}', '2022-06-20 12:02:22', '2022-06-20 12:02:22'),
(24, 1, 'admin/exercises', 'GET', '127.0.0.1', '[]', '2022-06-20 12:02:22', '2022-06-20 12:02:22'),
(25, 1, 'admin/exercises/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-20 12:02:24', '2022-06-20 12:02:24'),
(26, 1, 'admin/exercises', 'POST', '127.0.0.1', '{\"title\":\"SAGAT\",\"description\":\"- agzy\\u0148yzy gi\\u0148den a\\u00e7yp sagat diline g\\u00f6r\\u00e4 dili\\u0148izi dodaklary\\u0148 \\u00fcstinden a\\u00fdlamaly\",\"status\":\"on\",\"_token\":\"LVMp01yRCjFF34igMZ2NdiYI8cTzPJPLytvRExHY\",\"_previous_\":\"http:\\/\\/logoped.loc\\/admin\\/exercises\"}', '2022-06-20 12:02:47', '2022-06-20 12:02:47'),
(27, 1, 'admin/exercises', 'GET', '127.0.0.1', '[]', '2022-06-20 12:02:47', '2022-06-20 12:02:47'),
(28, 1, 'admin/exercises/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-20 12:02:53', '2022-06-20 12:02:53'),
(29, 1, 'admin/exercises', 'POST', '127.0.0.1', '{\"title\":\"S\\u00dc\\u00ddJI HE\\u00ddGENEK\",\"description\":\"- \\u00fdylgyry\\u0148, agzy\\u0148yzy a\\u00e7y\\u0148, \\u00fdokarky dodagy\\u0148yzy dili\\u0148iz bilen \\u00fdala\\u0148, iki tarapa hem de\\u0148 hereketde dowam etmeli.\",\"status\":\"on\",\"_token\":\"LVMp01yRCjFF34igMZ2NdiYI8cTzPJPLytvRExHY\",\"_previous_\":\"http:\\/\\/logoped.loc\\/admin\\/exercises\"}', '2022-06-20 12:03:13', '2022-06-20 12:03:13'),
(30, 1, 'admin/exercises', 'GET', '127.0.0.1', '[]', '2022-06-20 12:03:14', '2022-06-20 12:03:14'),
(31, 1, 'admin/exercises/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-20 12:03:19', '2022-06-20 12:03:19'),
(32, 1, 'admin/exercises', 'POST', '127.0.0.1', '{\"title\":\"PIL\",\"description\":\"gi\\u0148 dili \\u00fdapy\\u0148, dyn\\u00e7 aly\\u0148, a\\u015faky dodakda \\u00fdaty\\u0148. dili\\u0148 titremezligi \\u00fc\\u00e7in Agzy\\u0148y gi\\u0148den a\\u00e7.\",\"status\":\"on\",\"_token\":\"LVMp01yRCjFF34igMZ2NdiYI8cTzPJPLytvRExHY\",\"_previous_\":\"http:\\/\\/logoped.loc\\/admin\\/exercises\"}', '2022-06-20 12:03:54', '2022-06-20 12:03:54'),
(33, 1, 'admin/exercises', 'GET', '127.0.0.1', '[]', '2022-06-20 12:03:54', '2022-06-20 12:03:54'),
(34, 1, 'admin/exercises/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-20 12:04:01', '2022-06-20 12:04:01'),
(35, 1, 'admin/exercises', 'POST', '127.0.0.1', '{\"title\":\"AT\",\"description\":\"AT - \\u00fdylgyry\\u0148, agzy\\u0148yzy gi\\u0148den a\\u00e7y\\u0148, \\u00f6z\\u00fc\\u0148izi gaty we g\\u00fc\\u00fd\\u00e7li basy\\u0148. Di\\u0148e dili\\u0148iz bilen \\\"b\\u00f6km\\u00e4ge\\\" synany\\u015fy\\u0148.\",\"status\":\"on\",\"_token\":\"LVMp01yRCjFF34igMZ2NdiYI8cTzPJPLytvRExHY\",\"_previous_\":\"http:\\/\\/logoped.loc\\/admin\\/exercises\"}', '2022-06-20 12:04:46', '2022-06-20 12:04:46'),
(36, 1, 'admin/exercises', 'GET', '127.0.0.1', '[]', '2022-06-20 12:04:47', '2022-06-20 12:04:47'),
(37, 1, 'admin/exercises/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-20 12:04:56', '2022-06-20 12:04:56'),
(38, 1, 'admin/exercises', 'POST', '127.0.0.1', '{\"title\":\"\\u00ddYLAN\",\"description\":\"- \\u00fdylgyry\\u0148, agzy\\u0148yzy a\\u00e7y\\u0148, dili\\u0148izi agzy\\u0148yzdan \\u00e7ykary\\u0148, so\\u0148ra gizl\\u00e4\\u0148.\",\"status\":\"on\",\"_token\":\"LVMp01yRCjFF34igMZ2NdiYI8cTzPJPLytvRExHY\",\"_previous_\":\"http:\\/\\/logoped.loc\\/admin\\/exercises\"}', '2022-06-20 12:05:36', '2022-06-20 12:05:36'),
(39, 1, 'admin/exercises', 'GET', '127.0.0.1', '[]', '2022-06-20 12:05:36', '2022-06-20 12:05:36'),
(40, 1, 'admin/exercises/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-20 12:05:46', '2022-06-20 12:05:46'),
(41, 1, 'admin/exercises', 'POST', '127.0.0.1', '{\"title\":\"DI\\u015eI \\u00ddUWMAK\",\"description\":\"- agzy\\u0148yz \\u00fdapyk, edil di\\u015f \\u00fduwmagy\\u0148 simul\\u00fdasi\\u00fdasyny \\u00fderine \\u00fdetiri\\u0148.\",\"status\":\"on\",\"_token\":\"LVMp01yRCjFF34igMZ2NdiYI8cTzPJPLytvRExHY\",\"_previous_\":\"http:\\/\\/logoped.loc\\/admin\\/exercises\"}', '2022-06-20 12:06:30', '2022-06-20 12:06:30'),
(42, 1, 'admin/exercises', 'GET', '127.0.0.1', '[]', '2022-06-20 12:06:30', '2022-06-20 12:06:30'),
(43, 1, 'admin/exercises/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-20 12:07:10', '2022-06-20 12:07:10'),
(44, 1, 'admin/exercises', 'POST', '127.0.0.1', '{\"title\":\"K\\u00c4SE\",\"description\":\"\\u00fdylgyry\\u0148, agzy\\u0148yzy a\\u00e7y\\u0148, dili\\u0148izi \\u00fdapy\\u0148 we burnu\\u0148yza getiri\\u0148.K\\u00e4se g\\u00f6rn\\u00fc\\u015fini g\\u00f6rkezm\\u00e4ge synany\\u015fy\\u0148\",\"status\":\"on\",\"_token\":\"LVMp01yRCjFF34igMZ2NdiYI8cTzPJPLytvRExHY\",\"_previous_\":\"http:\\/\\/logoped.loc\\/admin\\/exercises\"}', '2022-06-20 12:07:41', '2022-06-20 12:07:41'),
(45, 1, 'admin/exercises', 'GET', '127.0.0.1', '[]', '2022-06-20 12:07:42', '2022-06-20 12:07:42'),
(46, 1, 'admin/exercises/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-20 12:08:44', '2022-06-20 12:08:44'),
(47, 1, 'admin/exercises', 'POST', '127.0.0.1', '{\"title\":\"INDYUK\",\"description\":\"- \\u00fdylgyry\\u0148, agzy\\u0148yzy a\\u00e7y\\u0148, dili\\u0148izi \\u00fdokarky dodaklara \\u00fdokaryk galdyry\\u0148 we \\\"bla bla bla\\\" di\\u00fdi\\u0148.\",\"status\":\"on\",\"_token\":\"LVMp01yRCjFF34igMZ2NdiYI8cTzPJPLytvRExHY\",\"_previous_\":\"http:\\/\\/logoped.loc\\/admin\\/exercises\"}', '2022-06-20 12:09:17', '2022-06-20 12:09:17'),
(48, 1, 'admin/exercises', 'GET', '127.0.0.1', '[]', '2022-06-20 12:09:17', '2022-06-20 12:09:17'),
(49, 1, 'admin/exercises/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-20 12:09:34', '2022-06-20 12:09:34'),
(50, 1, 'admin/exercises', 'POST', '127.0.0.1', '{\"title\":\"KA\\u00c7HELYA\",\"description\":\"- \\u00fdylgyr, agzy\\u0148y gi\\u0148 a\\u00e7. \'\' birinji\'\' dili\\u0148 ujuny a\\u015faky di\\u015fleri\\u0148 yanyna d\\u00fc\\u015f\\u00fcri\\u0148, \\\"ikinji\\\" \\u2013 dili\\u0148 ujuny \\u00fdokarky di\\u015fleri\\u0148 yanyna galdyry\\u0148.\",\"status\":\"on\",\"_token\":\"LVMp01yRCjFF34igMZ2NdiYI8cTzPJPLytvRExHY\",\"_previous_\":\"http:\\/\\/logoped.loc\\/admin\\/exercises\"}', '2022-06-20 12:10:04', '2022-06-20 12:10:04'),
(51, 1, 'admin/exercises', 'GET', '127.0.0.1', '[]', '2022-06-20 12:10:04', '2022-06-20 12:10:04'),
(52, 1, 'admin/exercises/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-20 12:10:24', '2022-06-20 12:10:24'),
(53, 1, 'admin/exercises', 'POST', '127.0.0.1', '{\"title\":\"\\u00c7YWYN\",\"description\":\"- \\u00fdylgyry\\u0148, agzy\\u0148yzy gi\\u0148den a\\u00e7y\\u0148, dili\\u0148izi \\u00fdokaryk galdyry\\u0148 we dili\\u0148 a \\u015fo durkunda sakla\\u0148.\",\"status\":\"on\",\"_token\":\"LVMp01yRCjFF34igMZ2NdiYI8cTzPJPLytvRExHY\",\"_previous_\":\"http:\\/\\/logoped.loc\\/admin\\/exercises\"}', '2022-06-20 12:10:50', '2022-06-20 12:10:50'),
(54, 1, 'admin/exercises', 'GET', '127.0.0.1', '[]', '2022-06-20 12:10:50', '2022-06-20 12:10:50'),
(55, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-20 12:27:39', '2022-06-20 12:27:39'),
(56, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-20 12:27:47', '2022-06-20 12:27:47'),
(57, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Feedback\",\"icon\":\"fa-facebook\",\"uri\":\"feedback\",\"roles\":[null],\"permission\":null,\"_token\":\"LVMp01yRCjFF34igMZ2NdiYI8cTzPJPLytvRExHY\"}', '2022-06-20 12:28:15', '2022-06-20 12:28:15'),
(58, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2022-06-20 12:28:15', '2022-06-20 12:28:15'),
(59, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"LVMp01yRCjFF34igMZ2NdiYI8cTzPJPLytvRExHY\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]},{\\\"id\\\":8},{\\\"id\\\":9}]\"}', '2022-06-20 12:28:20', '2022-06-20 12:28:20'),
(60, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-20 12:28:22', '2022-06-20 12:28:22'),
(61, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2022-06-20 12:28:23', '2022-06-20 12:28:23'),
(62, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2022-06-20 12:29:14', '2022-06-20 12:29:14'),
(63, 1, 'admin/feedback', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-20 12:29:16', '2022-06-20 12:29:16'),
(64, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-20 12:33:11', '2022-06-20 12:33:11'),
(65, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Tweesters\",\"icon\":\"fa-retweet\",\"uri\":\"tweesters\",\"roles\":[null],\"permission\":null,\"_token\":\"LVMp01yRCjFF34igMZ2NdiYI8cTzPJPLytvRExHY\"}', '2022-06-20 12:33:36', '2022-06-20 12:33:36'),
(66, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2022-06-20 12:33:36', '2022-06-20 12:33:36'),
(67, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"LVMp01yRCjFF34igMZ2NdiYI8cTzPJPLytvRExHY\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]},{\\\"id\\\":8},{\\\"id\\\":10},{\\\"id\\\":9}]\"}', '2022-06-20 12:33:44', '2022-06-20 12:33:44'),
(68, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-20 12:33:45', '2022-06-20 12:33:45'),
(69, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2022-06-20 12:33:47', '2022-06-20 12:33:47'),
(70, 1, 'admin/tweesters', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-20 12:34:00', '2022-06-20 12:34:00'),
(71, 1, 'admin/tweesters/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-20 12:34:02', '2022-06-20 12:34:02'),
(72, 1, 'admin/tweesters', 'POST', '127.0.0.1', '{\"title\":\"UNIQUE NEW YORK\",\"description\":\"\\u201cI like New York, unique New York, I like unique New York.\\u201d\\u201cI like New York, unique New York, I like unique New York.\\u201d\",\"status\":\"on\",\"_token\":\"LVMp01yRCjFF34igMZ2NdiYI8cTzPJPLytvRExHY\",\"_previous_\":\"http:\\/\\/logoped.loc\\/admin\\/tweesters\"}', '2022-06-20 12:35:17', '2022-06-20 12:35:17'),
(73, 1, 'admin/tweesters', 'GET', '127.0.0.1', '[]', '2022-06-20 12:35:17', '2022-06-20 12:35:17'),
(74, 1, 'admin/tweesters', 'GET', '127.0.0.1', '[]', '2022-06-20 12:35:34', '2022-06-20 12:35:34'),
(75, 1, 'admin/tweesters/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-20 12:35:40', '2022-06-20 12:35:40'),
(76, 1, 'admin/tweesters', 'POST', '127.0.0.1', '{\"title\":\"TOAST FOR SAINTS\",\"description\":\"\\u201cSend toast to ten tense stout saints\\u2019 ten tall tents.\\u201d\",\"status\":\"on\",\"_token\":\"LVMp01yRCjFF34igMZ2NdiYI8cTzPJPLytvRExHY\",\"_previous_\":\"http:\\/\\/logoped.loc\\/admin\\/tweesters\"}', '2022-06-20 12:35:58', '2022-06-20 12:35:58'),
(77, 1, 'admin/tweesters', 'GET', '127.0.0.1', '[]', '2022-06-20 12:35:58', '2022-06-20 12:35:58'),
(78, 1, 'admin/tweesters/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-20 12:36:03', '2022-06-20 12:36:03'),
(79, 1, 'admin/tweesters', 'POST', '127.0.0.1', '{\"title\":\"WARRIORS AT THE BREWERY\",\"description\":\"\\u201cRory the warrior and Roger the worrier were reared wrongly in a rural brewery.\\u201d\",\"status\":\"on\",\"_token\":\"LVMp01yRCjFF34igMZ2NdiYI8cTzPJPLytvRExHY\",\"_previous_\":\"http:\\/\\/logoped.loc\\/admin\\/tweesters\"}', '2022-06-20 12:36:18', '2022-06-20 12:36:18'),
(80, 1, 'admin/tweesters', 'GET', '127.0.0.1', '[]', '2022-06-20 12:36:19', '2022-06-20 12:36:19'),
(81, 1, 'admin/tweesters/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-20 12:36:21', '2022-06-20 12:36:21'),
(82, 1, 'admin/tweesters', 'POST', '127.0.0.1', '{\"title\":\"SCISSORS AND THISTLES\",\"description\":\"\\u201cScissors sizzle, thistles sizzle.\\u201d\",\"status\":\"on\",\"_token\":\"LVMp01yRCjFF34igMZ2NdiYI8cTzPJPLytvRExHY\",\"_previous_\":\"http:\\/\\/logoped.loc\\/admin\\/tweesters\"}', '2022-06-20 12:36:40', '2022-06-20 12:36:40'),
(83, 1, 'admin/tweesters', 'GET', '127.0.0.1', '[]', '2022-06-20 12:36:41', '2022-06-20 12:36:41'),
(84, 1, 'admin/tweesters/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-20 12:36:43', '2022-06-20 12:36:43'),
(85, 1, 'admin/tweesters', 'POST', '127.0.0.1', '{\"title\":\"SICK HICKS\",\"description\":\"\\u201cSix sick hicks nick six slick bricks with picks and sticks.\\u201d\",\"status\":\"on\",\"_token\":\"LVMp01yRCjFF34igMZ2NdiYI8cTzPJPLytvRExHY\",\"_previous_\":\"http:\\/\\/logoped.loc\\/admin\\/tweesters\"}', '2022-06-20 12:37:07', '2022-06-20 12:37:07'),
(86, 1, 'admin/tweesters', 'GET', '127.0.0.1', '[]', '2022-06-20 12:37:08', '2022-06-20 12:37:08'),
(87, 1, 'admin/tweesters/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-20 12:37:12', '2022-06-20 12:37:12'),
(88, 1, 'admin/tweesters', 'POST', '127.0.0.1', '{\"title\":\"WISH OF WISHES\",\"description\":\"\\u201cI wish to wish the wish you wish to wish, but if you wish the wish the witch wishes, I won\\u2019t wish the wish you wish to wish.\\u201d\",\"status\":\"on\",\"_token\":\"LVMp01yRCjFF34igMZ2NdiYI8cTzPJPLytvRExHY\",\"_previous_\":\"http:\\/\\/logoped.loc\\/admin\\/tweesters\"}', '2022-06-20 12:37:32', '2022-06-20 12:37:32'),
(89, 1, 'admin/tweesters', 'GET', '127.0.0.1', '[]', '2022-06-20 12:37:32', '2022-06-20 12:37:32'),
(90, 1, 'admin/tweesters/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-20 12:37:39', '2022-06-20 12:37:39'),
(91, 1, 'admin/tweesters', 'POST', '127.0.0.1', '{\"title\":\"SEASHELLS BY THE SEASHORE\",\"description\":\"\\u201cShe sells seashells by the seashore.\\u201d\",\"status\":\"on\",\"_token\":\"LVMp01yRCjFF34igMZ2NdiYI8cTzPJPLytvRExHY\",\"_previous_\":\"http:\\/\\/logoped.loc\\/admin\\/tweesters\"}', '2022-06-20 12:37:57', '2022-06-20 12:37:57'),
(92, 1, 'admin/tweesters', 'GET', '127.0.0.1', '[]', '2022-06-20 12:37:58', '2022-06-20 12:37:58'),
(93, 1, 'admin/tweesters/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-20 12:38:04', '2022-06-20 12:38:04'),
(94, 1, 'admin/tweesters', 'POST', '127.0.0.1', '{\"title\":\"SEASHELLS BY THE SEASHORE\",\"description\":\"\\u201cShe sells seashells by the seashore.\\u201d\",\"status\":\"on\",\"_token\":\"LVMp01yRCjFF34igMZ2NdiYI8cTzPJPLytvRExHY\",\"_previous_\":\"http:\\/\\/logoped.loc\\/admin\\/tweesters\"}', '2022-06-20 12:38:21', '2022-06-20 12:38:21'),
(95, 1, 'admin/tweesters', 'GET', '127.0.0.1', '[]', '2022-06-20 12:38:21', '2022-06-20 12:38:21'),
(96, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-20 12:42:05', '2022-06-20 12:42:05'),
(97, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-20 12:44:58', '2022-06-20 12:44:58'),
(98, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Videos\",\"icon\":\"fa-video-camera\",\"uri\":\"videos\",\"roles\":[null],\"permission\":null,\"_token\":\"LVMp01yRCjFF34igMZ2NdiYI8cTzPJPLytvRExHY\"}', '2022-06-20 12:45:22', '2022-06-20 12:45:22'),
(99, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2022-06-20 12:45:22', '2022-06-20 12:45:22'),
(100, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"LVMp01yRCjFF34igMZ2NdiYI8cTzPJPLytvRExHY\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]},{\\\"id\\\":8},{\\\"id\\\":10},{\\\"id\\\":11},{\\\"id\\\":9}]\"}', '2022-06-20 12:45:29', '2022-06-20 12:45:29'),
(101, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-20 12:45:30', '2022-06-20 12:45:30'),
(102, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2022-06-20 12:45:31', '2022-06-20 12:45:31'),
(103, 1, 'admin/videos', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-20 12:45:34', '2022-06-20 12:45:34'),
(104, 1, 'admin/videos/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-20 12:45:36', '2022-06-20 12:45:36'),
(105, 1, 'admin/videos/create', 'GET', '127.0.0.1', '[]', '2022-06-20 12:46:13', '2022-06-20 12:46:13'),
(106, 1, 'admin/videos', 'POST', '127.0.0.1', '{\"title\":\"KIRPI\",\"status\":\"on\",\"_token\":\"LVMp01yRCjFF34igMZ2NdiYI8cTzPJPLytvRExHY\"}', '2022-06-20 12:46:40', '2022-06-20 12:46:40'),
(107, 1, 'admin/videos', 'GET', '127.0.0.1', '[]', '2022-06-20 12:46:40', '2022-06-20 12:46:40'),
(108, 1, 'admin/videos', 'GET', '127.0.0.1', '[]', '2022-06-20 12:47:02', '2022-06-20 12:47:02'),
(109, 1, 'admin/videos', 'GET', '127.0.0.1', '[]', '2022-06-20 12:48:26', '2022-06-20 12:48:26'),
(110, 1, 'admin/videos/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-20 12:49:27', '2022-06-20 12:49:27'),
(111, 1, 'admin/videos', 'POST', '127.0.0.1', '{\"title\":\"S\\u00dc\\u00ddJI HE\\u00ddGENEK\",\"status\":\"on\",\"_token\":\"LVMp01yRCjFF34igMZ2NdiYI8cTzPJPLytvRExHY\",\"_previous_\":\"http:\\/\\/logoped.loc\\/admin\\/videos\"}', '2022-06-20 12:49:38', '2022-06-20 12:49:38'),
(112, 1, 'admin/videos', 'GET', '127.0.0.1', '[]', '2022-06-20 12:49:39', '2022-06-20 12:49:39'),
(113, 1, 'admin/videos/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-20 12:53:05', '2022-06-20 12:53:05'),
(114, 1, 'admin/videos', 'POST', '127.0.0.1', '{\"title\":\"GAHARLY PI\\u015eIK\",\"status\":\"on\",\"_token\":\"LVMp01yRCjFF34igMZ2NdiYI8cTzPJPLytvRExHY\",\"_previous_\":\"http:\\/\\/logoped.loc\\/admin\\/videos\"}', '2022-06-20 12:53:38', '2022-06-20 12:53:38'),
(115, 1, 'admin/videos', 'GET', '127.0.0.1', '[]', '2022-06-20 12:53:38', '2022-06-20 12:53:38'),
(116, 1, 'admin/videos/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-20 12:53:53', '2022-06-20 12:53:53'),
(117, 1, 'admin/videos', 'POST', '127.0.0.1', '{\"title\":\"S\\u00dc\\u00ddJI BAL\",\"status\":\"on\",\"_token\":\"LVMp01yRCjFF34igMZ2NdiYI8cTzPJPLytvRExHY\",\"_previous_\":\"http:\\/\\/logoped.loc\\/admin\\/videos\"}', '2022-06-20 12:54:02', '2022-06-20 12:54:02'),
(118, 1, 'admin/videos', 'GET', '127.0.0.1', '[]', '2022-06-20 12:54:02', '2022-06-20 12:54:02'),
(119, 1, 'admin/videos/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-20 12:54:07', '2022-06-20 12:54:07'),
(120, 1, 'admin/videos', 'POST', '127.0.0.1', '{\"title\":\"MA\\u015eYNJYK\",\"status\":\"on\",\"_token\":\"LVMp01yRCjFF34igMZ2NdiYI8cTzPJPLytvRExHY\",\"_previous_\":\"http:\\/\\/logoped.loc\\/admin\\/videos\"}', '2022-06-20 12:54:21', '2022-06-20 12:54:21'),
(121, 1, 'admin/videos', 'GET', '127.0.0.1', '[]', '2022-06-20 12:54:22', '2022-06-20 12:54:22'),
(122, 1, 'admin/videos/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-20 12:54:28', '2022-06-20 12:54:28'),
(123, 1, 'admin/videos', 'POST', '127.0.0.1', '{\"title\":\"K\\u00d6MELEK\",\"status\":\"on\",\"_token\":\"LVMp01yRCjFF34igMZ2NdiYI8cTzPJPLytvRExHY\",\"_previous_\":\"http:\\/\\/logoped.loc\\/admin\\/videos\"}', '2022-06-20 12:54:42', '2022-06-20 12:54:42'),
(124, 1, 'admin/videos', 'GET', '127.0.0.1', '[]', '2022-06-20 12:54:42', '2022-06-20 12:54:42'),
(125, 1, 'admin/videos', 'GET', '127.0.0.1', '[]', '2022-06-20 12:54:44', '2022-06-20 12:54:44'),
(126, 1, 'admin/videos/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-20 12:54:52', '2022-06-20 12:54:52'),
(127, 1, 'admin/videos', 'POST', '127.0.0.1', '{\"title\":\"K\\u00c4SEJIK\",\"status\":\"on\",\"_token\":\"LVMp01yRCjFF34igMZ2NdiYI8cTzPJPLytvRExHY\",\"_previous_\":\"http:\\/\\/logoped.loc\\/admin\\/videos\"}', '2022-06-20 12:55:06', '2022-06-20 12:55:06'),
(128, 1, 'admin/videos', 'GET', '127.0.0.1', '[]', '2022-06-20 12:55:07', '2022-06-20 12:55:07'),
(129, 1, 'admin/videos/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-20 12:55:12', '2022-06-20 12:55:12'),
(130, 1, 'admin/videos', 'POST', '127.0.0.1', '{\"title\":\"SAGATJYK\",\"status\":\"on\",\"_token\":\"LVMp01yRCjFF34igMZ2NdiYI8cTzPJPLytvRExHY\",\"_previous_\":\"http:\\/\\/logoped.loc\\/admin\\/videos\"}', '2022-06-20 12:55:21', '2022-06-20 12:55:21'),
(131, 1, 'admin/videos', 'GET', '127.0.0.1', '[]', '2022-06-20 12:55:22', '2022-06-20 12:55:22'),
(132, 1, 'admin/videos/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-20 12:55:29', '2022-06-20 12:55:29'),
(133, 1, 'admin/videos', 'POST', '127.0.0.1', '{\"title\":\"AKKORDEON\",\"status\":\"on\",\"_token\":\"LVMp01yRCjFF34igMZ2NdiYI8cTzPJPLytvRExHY\",\"_previous_\":\"http:\\/\\/logoped.loc\\/admin\\/videos\"}', '2022-06-20 12:55:38', '2022-06-20 12:55:38'),
(134, 1, 'admin/videos', 'GET', '127.0.0.1', '[]', '2022-06-20 12:55:39', '2022-06-20 12:55:39'),
(135, 1, 'admin/videos/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-20 12:55:42', '2022-06-20 12:55:42'),
(136, 1, 'admin/videos', 'POST', '127.0.0.1', '{\"title\":\"PI\\u015eIK\",\"status\":\"on\",\"_token\":\"LVMp01yRCjFF34igMZ2NdiYI8cTzPJPLytvRExHY\",\"_previous_\":\"http:\\/\\/logoped.loc\\/admin\\/videos\"}', '2022-06-20 12:56:08', '2022-06-20 12:56:08'),
(137, 1, 'admin/videos', 'GET', '127.0.0.1', '[]', '2022-06-20 12:56:08', '2022-06-20 12:56:08');

-- --------------------------------------------------------

--
-- Структура таблицы `admin_permissions`
--

CREATE TABLE `admin_permissions` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_path` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `admin_permissions`
--

INSERT INTO `admin_permissions` (`id`, `name`, `slug`, `http_method`, `http_path`, `created_at`, `updated_at`) VALUES
(1, 'All permission', '*', '', '*', NULL, NULL),
(2, 'Dashboard', 'dashboard', 'GET', '/', NULL, NULL),
(3, 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', NULL, NULL),
(4, 'User setting', 'auth.setting', 'GET,PUT', '/auth/setting', NULL, NULL),
(5, 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `admin_roles`
--

INSERT INTO `admin_roles` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'administrator', '2022-06-19 17:33:58', '2022-06-19 17:33:58');

-- --------------------------------------------------------

--
-- Структура таблицы `admin_role_menu`
--

CREATE TABLE `admin_role_menu` (
  `role_id` int NOT NULL,
  `menu_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `admin_role_menu`
--

INSERT INTO `admin_role_menu` (`role_id`, `menu_id`, `created_at`, `updated_at`) VALUES
(1, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `admin_role_permissions`
--

CREATE TABLE `admin_role_permissions` (
  `role_id` int NOT NULL,
  `permission_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `admin_role_permissions`
--

INSERT INTO `admin_role_permissions` (`role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `admin_role_users`
--

CREATE TABLE `admin_role_users` (
  `role_id` int NOT NULL,
  `user_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `admin_role_users`
--

INSERT INTO `admin_role_users` (`role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int UNSIGNED NOT NULL,
  `username` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `password`, `name`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$2y$10$rVykO6i3OGhzg4fLDgcGYeXTa59/hWc8WIbWhSBebEVBbjS0fmKbO', 'Administrator', 'images/Без названия.png', NULL, '2022-06-19 17:33:57', '2022-06-20 11:57:34');

-- --------------------------------------------------------

--
-- Структура таблицы `admin_user_permissions`
--

CREATE TABLE `admin_user_permissions` (
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `exercises`
--

CREATE TABLE `exercises` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `exercises`
--

INSERT INTO `exercises` (`id`, `title`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'BEGEMOT', '– agzy mümkin boldugyça giň, bu ýagdaýda 5 sekunt saklaň.', 'images/1.png', 1, '2022-06-20 12:00:42', '2022-06-20 12:00:42'),
(2, 'DARAK', 'ýylgyryň, diliňizi darak ýaly dişleriňizi dişlap one- yza,yagny saçynyzy darayan yaly.', 'images/2.png', 1, '2022-06-20 12:02:22', '2022-06-20 12:02:22'),
(3, 'SAGAT', '- agzyňyzy giňden açyp sagat diline görä diliňizi dodaklaryň üstinden aýlamaly', 'images/3.png', 1, '2022-06-20 12:02:47', '2022-06-20 12:02:47'),
(4, 'SÜÝJI HEÝGENEK', '- ýylgyryň, agzyňyzy açyň, ýokarky dodagyňyzy diliňiz bilen ýalaň, iki tarapa hem deň hereketde dowam etmeli.', 'images/4.png', 1, '2022-06-20 12:03:13', '2022-06-20 12:03:13'),
(5, 'PIL', 'giň dili ýapyň, dynç alyň, aşaky dodakda ýatyň. diliň titremezligi üçin Agzyňy giňden aç.', 'images/5.png', 1, '2022-06-20 12:03:54', '2022-06-20 12:03:54'),
(6, 'AT', 'AT - ýylgyryň, agzyňyzy giňden açyň, özüňizi gaty we güýçli basyň. Diňe diliňiz bilen \"bökmäge\" synanyşyň.', 'images/6.png', 1, '2022-06-20 12:04:46', '2022-06-20 12:04:46'),
(7, 'ÝYLAN', '- ýylgyryň, agzyňyzy açyň, diliňizi agzyňyzdan çykaryň, soňra gizläň.', 'images/7.png', 1, '2022-06-20 12:05:36', '2022-06-20 12:05:36'),
(8, 'DIŞI ÝUWMAK', '- agzyňyz ýapyk, edil diş ýuwmagyň simulýasiýasyny ýerine ýetiriň.', 'images/8.png', 1, '2022-06-20 12:06:30', '2022-06-20 12:06:30'),
(9, 'KÄSE', 'ýylgyryň, agzyňyzy açyň, diliňizi ýapyň we burnuňyza getiriň.Käse görnüşini görkezmäge synanyşyň', 'images/9.png', 1, '2022-06-20 12:07:42', '2022-06-20 12:07:42'),
(10, 'INDYUK', '- ýylgyryň, agzyňyzy açyň, diliňizi ýokarky dodaklara ýokaryk galdyryň we \"bla bla bla\" diýiň.', 'images/10.png', 1, '2022-06-20 12:09:17', '2022-06-20 12:09:17'),
(11, 'KAÇHELYA', '- ýylgyr, agzyňy giň aç. \'\' birinji\'\' diliň ujuny aşaky dişleriň yanyna düşüriň, \"ikinji\" – diliň ujuny ýokarky dişleriň yanyna galdyryň.', 'images/11.png', 1, '2022-06-20 12:10:04', '2022-06-20 12:10:04'),
(12, 'ÇYWYN', '- ýylgyryň, agzyňyzy giňden açyň, diliňizi ýokaryk galdyryň we diliň a şo durkunda saklaň.', 'images/12.png', 1, '2022-06-20 12:10:50', '2022-06-20 12:10:50');

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `feedback`
--

CREATE TABLE `feedback` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `email`, `message`, `created_at`, `updated_at`) VALUES
(1, 'Test name', 'test@gmail.com', 'Test message', '2022-06-20 12:28:47', '2022-06-20 12:28:47');

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_04_173148_create_admin_tables', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2022_06_20_114449_create_exercises_table', 2),
(7, '2022_06_20_151934_create_feedback_table', 3),
(8, '2022_06_20_153140_create_tweesters_table', 4),
(9, '2022_06_20_154307_create_videos_table', 5);

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `tweesters`
--

CREATE TABLE `tweesters` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `tweesters`
--

INSERT INTO `tweesters` (`id`, `title`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'UNIQUE NEW YORK', '“I like New York, unique New York, I like unique New York.”“I like New York, unique New York, I like unique New York.”', 'images/1.jpg', 1, '2022-06-20 12:35:17', '2022-06-20 12:35:17'),
(2, 'TOAST FOR SAINTS', '“Send toast to ten tense stout saints’ ten tall tents.”', 'images/2.jpg', 1, '2022-06-20 12:35:58', '2022-06-20 12:35:58'),
(3, 'WARRIORS AT THE BREWERY', '“Rory the warrior and Roger the worrier were reared wrongly in a rural brewery.”', 'images/3.jpg', 1, '2022-06-20 12:36:18', '2022-06-20 12:36:18'),
(4, 'SCISSORS AND THISTLES', '“Scissors sizzle, thistles sizzle.”', 'images/4.jpg', 1, '2022-06-20 12:36:40', '2022-06-20 12:36:40'),
(5, 'SICK HICKS', '“Six sick hicks nick six slick bricks with picks and sticks.”', 'images/5.jpg', 1, '2022-06-20 12:37:07', '2022-06-20 12:37:07'),
(6, 'WISH OF WISHES', '“I wish to wish the wish you wish to wish, but if you wish the wish the witch wishes, I won’t wish the wish you wish to wish.”', 'images/6.jpg', 1, '2022-06-20 12:37:32', '2022-06-20 12:37:32'),
(7, 'SEASHELLS BY THE SEASHORE', '“She sells seashells by the seashore.”', 'images/7.jpg', 1, '2022-06-20 12:37:57', '2022-06-20 12:37:57'),
(8, 'SEASHELLS BY THE SEASHORE', '“She sells seashells by the seashore.”', 'images/8.jpg', 1, '2022-06-20 12:38:21', '2022-06-20 12:38:21');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `videos`
--

CREATE TABLE `videos` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `videos`
--

INSERT INTO `videos` (`id`, `title`, `video`, `status`, `created_at`, `updated_at`) VALUES
(1, 'KIRPI', 'files/1.mp4', 1, '2022-06-20 12:46:40', '2022-06-20 12:46:40'),
(2, 'SÜÝJI HEÝGENEK', 'files/2.mp4', 1, '2022-06-20 12:49:39', '2022-06-20 12:49:39'),
(3, 'GAHARLY PIŞIK', 'files/3.mp4', 1, '2022-06-20 12:53:38', '2022-06-20 12:53:38'),
(4, 'SÜÝJI BAL', 'files/4.mp4', 1, '2022-06-20 12:54:02', '2022-06-20 12:54:02'),
(5, 'MAŞYNJYK', 'files/5.mp4', 1, '2022-06-20 12:54:22', '2022-06-20 12:54:22'),
(6, 'KÖMELEK', 'files/6.mp4', 1, '2022-06-20 12:54:42', '2022-06-20 12:54:42'),
(7, 'KÄSEJIK', 'files/7.mp4', 1, '2022-06-20 12:55:06', '2022-06-20 12:55:06'),
(8, 'SAGATJYK', 'files/8.mp4', 1, '2022-06-20 12:55:21', '2022-06-20 12:55:21'),
(9, 'AKKORDEON', 'files/9.mp4', 1, '2022-06-20 12:55:38', '2022-06-20 12:55:38'),
(10, 'PIŞIK', 'files/10.mp4', 1, '2022-06-20 12:56:08', '2022-06-20 12:56:08');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `admin_menu`
--
ALTER TABLE `admin_menu`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_operation_log_user_id_index` (`user_id`);

--
-- Индексы таблицы `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_permissions_name_unique` (`name`),
  ADD UNIQUE KEY `admin_permissions_slug_unique` (`slug`);

--
-- Индексы таблицы `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_roles_name_unique` (`name`),
  ADD UNIQUE KEY `admin_roles_slug_unique` (`slug`);

--
-- Индексы таблицы `admin_role_menu`
--
ALTER TABLE `admin_role_menu`
  ADD KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`);

--
-- Индексы таблицы `admin_role_permissions`
--
ALTER TABLE `admin_role_permissions`
  ADD KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`);

--
-- Индексы таблицы `admin_role_users`
--
ALTER TABLE `admin_role_users`
  ADD KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`);

--
-- Индексы таблицы `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_users_username_unique` (`username`);

--
-- Индексы таблицы `admin_user_permissions`
--
ALTER TABLE `admin_user_permissions`
  ADD KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`);

--
-- Индексы таблицы `exercises`
--
ALTER TABLE `exercises`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Индексы таблицы `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Индексы таблицы `tweesters`
--
ALTER TABLE `tweesters`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Индексы таблицы `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `admin_menu`
--
ALTER TABLE `admin_menu`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;

--
-- AUTO_INCREMENT для таблицы `admin_permissions`
--
ALTER TABLE `admin_permissions`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `exercises`
--
ALTER TABLE `exercises`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `tweesters`
--
ALTER TABLE `tweesters`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `videos`
--
ALTER TABLE `videos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
