-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-07-2024 a las 21:37:13
-- Versión del servidor: 10.1.19-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `base1`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_07_04_212526_create_permission_tables', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('3ODLslLzgwqmAAPYhSFC5duLAIfQRrDn7Y3Aq8dw', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:127.0) Gecko/20100101 Firefox/127.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZVo0SkV1VDdBanY4bEp5bFlOMnNDeU5nSHpFdjk4T2ZmMThYVkxjNSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3QvbGFyYXZlbGNydWQvcHVibGljL2NhcnJlcmEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1720205368),
('CVKuO4CeZCh5FM0UPVxWzhaoBa5NDngDu7lyskfl', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:127.0) Gecko/20100101 Firefox/127.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQUZuRDRDUTMxcmV4bTVNOU5LOFVUbzQ4U1pyT1hsODlsU0J3bmh4MyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3QvbGFyYXZlbGNydWQvcHVibGljL3VzdWFyaW8iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1720126356),
('OeiRqIdvfaBi84Lcz4NeHUknIxIJXi5r4VJRBnlX', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:127.0) Gecko/20100101 Firefox/127.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUnNzWnJibkxqNG03d3NTR09Sc3paUnFVamZ5NWZmMkhwVGNNQ0dDRSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3QvbGFyYXZlbGNydWQvcHVibGljL3VzdWFyaW8iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1720217806);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_carreras`
--

CREATE TABLE `tbl_carreras` (
  `id` int(11) NOT NULL,
  `nombre_car` varchar(120) NOT NULL,
  `duracion_car` varchar(255) DEFAULT NULL,
  `codigo_car` varchar(255) NOT NULL,
  `modalidad` varchar(255) NOT NULL,
  `estado_car` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tbl_carreras`
--

INSERT INTO `tbl_carreras` (`id`, `nombre_car`, `duracion_car`, `codigo_car`, `modalidad`, `estado_car`, `created_at`, `updated_at`) VALUES
(1, 'EnfermerÃ­a', '2 aÃ±o', 'A2024', 'sin datos', 1, NULL, '2024-07-05 22:47:24'),
(2, 'Ingenieria de Sistema', '5 aÃ±os', 'IS2024', 'Presencial', 1, NULL, '2024-07-02 01:09:34'),
(3, 'Contabilidad', '5 aÃ±os', 'CONT2024', 'Presencial', 1, NULL, '2024-07-02 01:10:01'),
(4, 'Administracion de Empresa', '5 aÃ±os', 'EA2024', 'Presencial', 1, NULL, '2024-07-02 01:10:27'),
(5, 'Ingenieria Industrial', '5 aÃ±os', 'AI2024', 'Presencial', 1, NULL, '2024-07-02 01:10:50'),
(6, 'Ingenieria Informatica', '5 aÃ±os', 'INF2024', 'presencial', 1, NULL, '2024-07-04 02:40:48'),
(7, 'Marketing', '5 aÃ±os', 'M2024', 'presencial', 1, NULL, '2024-07-04 02:41:13'),
(8, ' Psicologia', NULL, 'PS2024', '', 1, NULL, NULL),
(9, 'Turismo ', NULL, '', '', 1, NULL, '2024-07-04 02:37:23'),
(10, 'Enfermeria', NULL, '', '', 1, NULL, '2024-07-04 02:37:28'),
(11, 'Artes y humanidades', NULL, '', '', 1, NULL, NULL),
(12, 'Medicina', NULL, '', '', 1, NULL, NULL),
(13, 'Artes y DiseÃ±o', NULL, '', '', 1, NULL, NULL),
(14, 'prueba', NULL, '', '', 0, NULL, '2024-07-04 02:25:59'),
(15, 'Prueba1', NULL, '', '', 0, NULL, '2024-07-04 02:25:53'),
(16, '', NULL, '', '', 0, NULL, '2024-07-04 02:24:15'),
(17, '', NULL, '', '', 0, NULL, '2024-07-04 02:24:23'),
(18, 'dos', NULL, '', '', 0, NULL, '2024-07-04 02:24:56'),
(19, 'INGENIO', NULL, '', '', 0, NULL, '2024-07-04 02:25:01'),
(20, 'prueba', NULL, '', '', 0, '2024-06-13 23:09:30', '2024-07-04 02:25:06'),
(21, 'nuevo', NULL, 'acs2024', 'virtual', 0, '2024-07-02 01:52:56', '2024-07-04 02:24:09'),
(22, 'nuevo2', '5 aÃ±os', 'AD2024', 'virtual', 0, '2024-07-02 02:05:34', '2024-07-05 22:49:28'),
(23, 'medicina 2', '8 aÃ±os', 'MD2024', 'presencial', 1, '2024-07-05 22:49:01', '2024-07-05 22:49:01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_contactos`
--

CREATE TABLE `tbl_contactos` (
  `id` int(11) NOT NULL,
  `nombre_cont` varchar(120) NOT NULL,
  `apellido_cont` varchar(120) NOT NULL,
  `cod_car_1` int(11) NOT NULL,
  `cod_car_2` int(11) DEFAULT NULL,
  `telefono_1` int(20) NOT NULL,
  `telefono_2` int(20) DEFAULT NULL,
  `propietario_cont` int(11) NOT NULL,
  `cod_origen_dato` int(11) NOT NULL,
  `cod_estado_cont` int(11) DEFAULT NULL,
  `descripcion_cont` varchar(256) DEFAULT NULL,
  `estado_cont` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_contactos`
--

INSERT INTO `tbl_contactos` (`id`, `nombre_cont`, `apellido_cont`, `cod_car_1`, `cod_car_2`, `telefono_1`, `telefono_2`, `propietario_cont`, `cod_origen_dato`, `cod_estado_cont`, `descripcion_cont`, `estado_cont`, `created_at`, `updated_at`) VALUES
(2, 'JUAN PABLO', 'TAPEOSI CHAMO', 3, NULL, 75311928, NULL, 4, 1, 2, 'nuevo', 1, '0000-00-00 00:00:00', '2024-07-06 02:16:43'),
(76, 'Ana Maria', 'Garcia', 4, 1, 70948152, 0, 3, 2, 2, '6', 1, '0000-00-00 00:00:00', '2024-07-03 23:52:34'),
(79, 'Brayan Paina', 'SN', 4, 1, 75637021, NULL, 3, 4, 1, '6', 1, '0000-00-00 00:00:00', '2024-07-03 23:52:48'),
(80, 'crespo', 'SN', 4, 1, 78042441, NULL, 9, 6, 1, '6', 1, '0000-00-00 00:00:00', '2024-07-03 23:53:15'),
(82, '???', 'SN', 4, NULL, 71520700, NULL, 3, 1, NULL, '6', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(83, 'Georgina G. Escalante', 'SN', 4, NULL, 75674944, NULL, 4, 1, NULL, '6', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(85, 'Luis Fernando Villalba', 'SN', 4, NULL, 78092449, NULL, 3, 1, NULL, '6', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(86, 'Darianita Lutino Becerra', 'SN', 4, NULL, 60837933, NULL, 4, 1, NULL, '6', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(88, 'Jose Soliz', 'SN', 4, NULL, 69682708, NULL, 3, 1, NULL, '6', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(89, 'Royber L?pez Lopez', 'SN', 4, NULL, 71899752, NULL, 4, 1, NULL, '6', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(91, 'Carlos Balderrama', 'SN', 4, NULL, 65672110, NULL, 3, 1, NULL, '6', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(92, 'Carlos Mario', 'SN', 4, NULL, 78508240, NULL, 4, 1, 1, '6', 1, '0000-00-00 00:00:00', '2024-07-04 00:12:15'),
(94, 'Jenny Reyes Lea?o', 'SN', 4, NULL, 77041373, NULL, 3, 1, NULL, '6', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(95, 'Diana Paola Calizaya', 'SN', 4, NULL, 77612618, NULL, 4, 1, NULL, '6', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(97, 'Jose Carlos Romero Mendez', 'SN', 4, NULL, 70205122, NULL, 3, 1, NULL, '6', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(98, 'Luis Alberto Salazar P', 'SN', 4, NULL, 76349336, NULL, 4, 1, NULL, '6', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(100, 'Brandon Mejia', 'SN', 4, NULL, 72283741, NULL, 3, 1, NULL, '6', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(101, 'Rolando Lira Cerezo', 'SN', 4, NULL, 76038921, NULL, 4, 1, NULL, '6', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(103, 'Cristhian Guzman Barba', 'SN', 4, NULL, 73111831, NULL, 3, 1, NULL, '6', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(104, 'Misael Gregorio', 'SN', 4, 0, 74157394, 0, 4, 1, NULL, '6', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(106, 'Carlitos Cuellar', 'SN', 4, NULL, 68926817, NULL, 3, 1, NULL, '6', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(107, 'Beatriz Llaveta', 'SN', 4, NULL, 76851125, NULL, 4, 1, NULL, '6', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(109, 'Erwin Arauz Vaca', 'SN', 4, NULL, 74525070, NULL, 3, 1, NULL, '6', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(110, 'Juan Carlos Zambrana Rocha', 'SN', 4, NULL, 74922440, NULL, 4, 1, NULL, '6', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(112, 'V????j?? M????? F????????', 'SN', 4, NULL, 67782595, NULL, 3, 1, NULL, '6', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(113, 'Tamara Cardozo', 'SN', 4, NULL, 78510675, NULL, 4, 1, NULL, '6', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(115, 'Jimmy Peredo Zambrana', 'SN', 4, NULL, 79961004, NULL, 3, 1, NULL, '6', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(116, 'Keiko Rivero Mole', 'SN', 4, NULL, 77697863, NULL, 4, 1, NULL, '6', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(118, 'C?spedes Mdc', 'SN', 4, NULL, 60918963, NULL, 3, 1, NULL, '6', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(119, 'Wilfredo Vasco', 'SN', 4, NULL, 71263638, NULL, 4, 1, NULL, '6', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(121, 'Jhonatan Campos', 'SN', 4, NULL, 73961769, NULL, 3, 1, NULL, '6', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(122, 'Bus Geo Yor', 'SN', 4, NULL, 67294894, NULL, 4, 1, NULL, '6', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(124, '?shly ?ruz ?h', 'SN', 4, NULL, 77651841, NULL, 3, 1, NULL, '6', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(125, 'Yameline Quisbert Zambrana', 'SN', 4, NULL, 77837172, NULL, 4, 1, NULL, '6', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(167, 'vanina', 'HS', 13, 5, 695454545, 69208750, 4, 1, NULL, 'nuevo', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(168, 'vanina', 'HS', 11, 2, 669545475, 69208750, 4, 2, NULL, 'nuevo', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(169, 'angel', 'rios', 3, 7, 69208750, 69555154, 3, 2, NULL, 'Nuevo', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(174, 'juan pablo hs', 'tapeosi', 2, 2, 456, 46476, 8, 2, NULL, 'nuevo', 1, '2024-06-25 01:12:50', '2024-06-25 01:12:50'),
(178, 'juan123', 'rips', 3, 7, 123123, 123123, 11, 1, NULL, 'nuevo', 1, '2024-06-26 23:36:38', '2024-06-26 23:42:42'),
(179, 'juan 555', 'rios 55', 4, 1, 565565, 564654, 3, 1, NULL, 'nuevo', 1, '2024-06-26 23:46:17', '2024-06-26 23:48:16'),
(180, 'JUAN PABLO', 'HS', 2, 1, 69208750, 8888, 5, 2, 2, 'NUEVO', 1, '2024-07-04 00:05:18', '2024-07-04 00:05:40'),
(181, 'Vanina', 'davalos', 3, NULL, 69536557, 123456789, 5, 1, 2, 'Nuevo', 0, '2024-07-04 23:21:05', '2024-07-04 23:21:18');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_estado_contactos`
--

CREATE TABLE `tbl_estado_contactos` (
  `id` int(11) NOT NULL,
  `nombre_est` varchar(120) NOT NULL,
  `estado_est` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tbl_estado_contactos`
--

INSERT INTO `tbl_estado_contactos` (`id`, `nombre_est`, `estado_est`, `created_at`, `updated_at`) VALUES
(1, 'no interesado', 1, '2024-07-03 19:23:09', NULL),
(2, 'en contacto', 1, '2024-07-03 19:23:09', NULL),
(3, 'interesado 1', 1, '2024-07-03 19:23:09', '2024-06-14 22:59:59');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_origen_datos`
--

CREATE TABLE `tbl_origen_datos` (
  `id` int(11) NOT NULL,
  `nombre_orig` varchar(120) NOT NULL,
  `estado_orig` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tbl_origen_datos`
--

INSERT INTO `tbl_origen_datos` (`id`, `nombre_orig`, `estado_orig`, `created_at`, `updated_at`) VALUES
(1, 'digital', 1, '0000-00-00 00:00:00', '2024-06-15 00:23:48'),
(2, 'invitacion', 1, '0000-00-00 00:00:00', NULL),
(3, 'Formulario en Linea', 1, '0000-00-00 00:00:00', NULL),
(4, 'periodico', 1, '0000-00-00 00:00:00', NULL),
(5, 'prueba', 0, '0000-00-00 00:00:00', '2024-07-04 02:31:57'),
(6, 'prueba', 0, '0000-00-00 00:00:00', '2024-07-04 02:31:54');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_propietarios`
--

CREATE TABLE `tbl_propietarios` (
  `id` int(11) NOT NULL,
  `nombre_prop` varchar(120) NOT NULL,
  `apellido_prop` varchar(120) NOT NULL,
  `estado_prop` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tbl_propietarios`
--

INSERT INTO `tbl_propietarios` (`id`, `nombre_prop`, `apellido_prop`, `estado_prop`, `created_at`, `updated_at`) VALUES
(3, 'Angela', 'Cespedes', 1, '2024-06-26 18:26:43', NULL),
(4, 'maria', 'rios', 1, '2024-06-26 18:26:43', '2024-06-27 00:08:21'),
(5, 'stephania', 'ruiz', 1, '2024-06-26 18:26:43', '2024-06-27 00:08:47'),
(6, 'Angel', 'Vasquez', 1, '2024-06-26 18:26:43', NULL),
(7, 'Prueba', 'SIN DATOS', 0, '2024-06-26 18:26:43', '2024-07-04 02:26:22'),
(8, 'Prueba', '', 0, '2024-06-26 18:26:43', '2024-07-04 02:26:43'),
(9, 'Prueba', '', 0, '2024-06-26 18:26:43', '2024-07-04 02:29:46'),
(10, 'Prueba', '', 0, '2024-06-26 18:26:43', '2024-07-04 02:26:38'),
(11, 'Prueba', '', 0, '2024-06-26 18:26:43', '2024-07-04 02:26:27'),
(12, 'Prueba', '', 0, '2024-06-26 18:26:43', '2024-07-04 02:26:17'),
(13, 'Prueba', '', 0, '2024-06-26 18:26:43', '2024-07-04 02:31:10'),
(14, 'juna', 'rios', 0, '2024-06-26 18:26:43', '2024-07-04 02:31:02'),
(15, 'Prueba', '', 0, '2024-06-26 18:26:43', '2024-07-04 02:30:56'),
(17, 'Prueba11', 'rios', 0, '2024-06-26 18:26:43', '2024-07-04 02:31:06'),
(19, 'Prueba11', 'padilla', 0, '2024-06-26 18:26:43', '2024-07-04 02:30:51');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indices de la tabla `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indices de la tabla `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indices de la tabla `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indices de la tabla `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indices de la tabla `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indices de la tabla `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indices de la tabla `tbl_carreras`
--
ALTER TABLE `tbl_carreras`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tbl_contactos`
--
ALTER TABLE `tbl_contactos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cod_car_1` (`cod_car_1`),
  ADD KEY `cod_origen_dato` (`cod_origen_dato`),
  ADD KEY `propietario_cont` (`propietario_cont`),
  ADD KEY `cod_estado_cont` (`cod_estado_cont`);

--
-- Indices de la tabla `tbl_estado_contactos`
--
ALTER TABLE `tbl_estado_contactos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tbl_origen_datos`
--
ALTER TABLE `tbl_origen_datos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tbl_propietarios`
--
ALTER TABLE `tbl_propietarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_carreras`
--
ALTER TABLE `tbl_carreras`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `tbl_contactos`
--
ALTER TABLE `tbl_contactos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=182;

--
-- AUTO_INCREMENT de la tabla `tbl_estado_contactos`
--
ALTER TABLE `tbl_estado_contactos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tbl_origen_datos`
--
ALTER TABLE `tbl_origen_datos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `tbl_propietarios`
--
ALTER TABLE `tbl_propietarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `tbl_contactos`
--
ALTER TABLE `tbl_contactos`
  ADD CONSTRAINT `tbl_contactos_ibfk_1` FOREIGN KEY (`cod_car_1`) REFERENCES `tbl_carreras` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_contactos_ibfk_2` FOREIGN KEY (`propietario_cont`) REFERENCES `tbl_propietarios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_contactos_ibfk_3` FOREIGN KEY (`cod_origen_dato`) REFERENCES `tbl_origen_datos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_contactos_ibfk_4` FOREIGN KEY (`cod_estado_cont`) REFERENCES `tbl_estado_contactos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
