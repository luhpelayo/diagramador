-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-01-2023 a las 17:31:33
-- Versión del servidor: 10.1.40-MariaDB
-- Versión de PHP: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `softpelayo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actividads`
--

CREATE TABLE `actividads` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `fecha_ini` date NOT NULL,
  `fecha_fin` date NOT NULL,
  `presupuesto` decimal(8,2) NOT NULL,
  `indicador` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `plan_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actividad_user`
--

CREATE TABLE `actividad_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aeraacademicas`
--

CREATE TABLE `aeraacademicas` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `aeraacademicas`
--

INSERT INTO `aeraacademicas` (`id`, `name`, `slug`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Juan Jose', 'juan-jose', 'xzv', '2019-03-25 15:12:56', '2019-03-25 15:12:56');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `archivos`
--

CREATE TABLE `archivos` (
  `id` int(10) UNSIGNED NOT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_size` int(11) NOT NULL,
  `tramite_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `areaacademicas`
--

CREATE TABLE `areaacademicas` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `areas`
--

CREATE TABLE `areas` (
  `id` int(10) UNSIGNED NOT NULL,
  `descripcion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `areas`
--

INSERT INTO `areas` (`id`, `descripcion`) VALUES
(1, 'Recepcion'),
(2, 'jiovanita'),
(3, 'manuelcito'),
(4, 'erikita'),
(5, 'gabriel'),
(6, 'fabricio');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bolsa_de_trabajos`
--

CREATE TABLE `bolsa_de_trabajos` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `anho_de_graduacion` int(120) NOT NULL,
  `genero` varchar(120) NOT NULL,
  `anhos_de_experiencia` int(50) NOT NULL,
  `paquetes_informaticos` varchar(120) NOT NULL,
  `ingles` varchar(120) NOT NULL,
  `maestrias` varchar(120) NOT NULL,
  `postgrado` varchar(120) NOT NULL,
  `email` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefono` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `curriculum` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `event_date` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `bolsa_de_trabajos`
--

INSERT INTO `bolsa_de_trabajos` (`id`, `nombre`, `anho_de_graduacion`, `genero`, `anhos_de_experiencia`, `paquetes_informaticos`, `ingles`, `maestrias`, `postgrado`, `email`, `telefono`, `curriculum`, `event_date`, `created_at`, `updated_at`) VALUES
(10, 'lu', 2018, 'Masculino', 4, 'Intermedio', 'Intermedio', 'No', 'Si', 'taishowpelayo@gmail.com', '256577767', '1607742847_Nuevo Documento de Microsoft Word.docx', '2020-12-11 00:00:00', '2020-12-12 03:14:07', '2020-12-12 03:14:07'),
(11, 'lufff', 2012, 'Femenino', 5, 'Intermedio', 'Intermedio', 'No', 'Si', 'mateuspelayo@gmail.com', '7777777777777', '1607892617_Nuevo Documento de Microsoft Word.docx', '2020-12-13 00:00:00', '2020-12-13 20:50:19', '2020-12-13 20:50:19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cronogramas`
--

CREATE TABLE `cronogramas` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url_img` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url_document` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cronog_date` datetime NOT NULL,
  `lugar` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cronogramas`
--

INSERT INTO `cronogramas` (`id`, `title`, `url_img`, `url_document`, `cronog_date`, `lugar`, `user_id`, `created_at`, `updated_at`) VALUES
(12, 'PROGRAMACIÓN ACADÉMICA', '1560971833_calendario.jpg', '1560971833_Maestro de Oferta 1-2019 ultimas aulas Y CUPOS E INSCRITOS.xls', '2019-06-19 00:00:00', 'Maestro de Oferta:', 1, '2019-06-19 19:17:13', '2019-06-19 19:17:13');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `derivacions`
--

CREATE TABLE `derivacions` (
  `id` int(10) UNSIGNED NOT NULL,
  `area_id` int(10) UNSIGNED NOT NULL,
  `tramite_id` int(10) UNSIGNED NOT NULL,
  `observacion` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `derivacions`
--

INSERT INTO `derivacions` (`id`, `area_id`, `tramite_id`, `observacion`, `created_at`, `updated_at`) VALUES
(1, 2, 12, 'te invito a unirte', '2022-02-15 17:54:08', '2022-02-15 17:54:08'),
(2, 2, 20, 'SIM', '2022-02-17 04:11:57', '2022-02-17 04:11:57'),
(3, 2, 20, 'HACELO', '2022-02-17 04:13:48', '2022-02-17 04:13:48'),
(4, 2, 21, 'hacelo porfa', '2022-02-17 04:21:58', '2022-02-17 04:21:58'),
(5, 2, 12, 'Te invito a participar de este diagrama', '2022-02-17 18:58:59', '2022-02-17 18:58:59'),
(6, 2, 23, 'hacerlo', '2022-02-18 00:47:22', '2022-02-18 00:47:22');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `despachos`
--

CREATE TABLE `despachos` (
  `tramite_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `despachos`
--

INSERT INTO `despachos` (`tramite_id`, `created_at`, `updated_at`) VALUES
(10, '2022-02-15 04:31:12', '2022-02-15 04:31:12'),
(14, '2022-02-15 16:43:00', '2022-02-15 16:43:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estados`
--

CREATE TABLE `estados` (
  `id` int(10) UNSIGNED NOT NULL,
  `estado` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `estados`
--

INSERT INTO `estados` (`id`, `estado`) VALUES
(1, 'Nivel4'),
(2, 'Derivado'),
(3, 'Nivel1'),
(4, 'Terminado'),
(5, 'No Terminado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eventos`
--

CREATE TABLE `eventos` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url_img` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url_document` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `event_date` datetime NOT NULL,
  `lugar` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `org` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `eventos`
--

INSERT INTO `eventos` (`id`, `title`, `url_img`, `url_document`, `content`, `event_date`, `lugar`, `org`, `user_id`, `created_at`, `updated_at`) VALUES
(9, 'PROGRAMACIÓN ACADÉMICA', '1560360932_mesa.jpg', '1560360931_mesa.pptx', 'MEsa', '2019-06-12 00:00:00', 'Carrera: Ingenieria Financiera', 'Programación Académica', 1, '2019-06-12 17:35:32', '2019-06-12 17:35:32');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `galleries`
--

CREATE TABLE `galleries` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('PUBLISHED','DRAFT') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `galleries`
--

INSERT INTO `galleries` (`id`, `title`, `slug`, `content`, `status`, `created_at`, `updated_at`) VALUES
(1, 'DEFENSA FINAL DE TRABAJO DE GRADO', 'defensa-final-de-trabajo-de-grado', '2014', 'PUBLISHED', '2019-06-07 15:05:50', '2019-06-11 14:23:21'),
(2, 'ACTO DE GRADUACIÓN', 'acto-de-graduacion', '2014', 'PUBLISHED', '2019-06-07 15:09:34', '2019-06-07 15:10:22'),
(3, 'PROGRAMAS DE VINCULACIÓN Y EXTENSIÓN', 'programas-de-vinculacion-y-extension', '2018', 'PUBLISHED', '2019-06-07 15:10:26', '2019-06-11 14:21:42'),
(4, 'PROGRAMAS DE INVESTIGACIÓN', 'programas-de-investigacion', '2019', 'PUBLISHED', '2019-06-11 14:26:05', '2019-06-11 14:26:36'),
(5, 'EVENTOS DE LA CARRERA', 'eventos-de-la-carrera', 'Aniversario de la carrera 2018', 'PUBLISHED', '2019-06-07 15:11:43', '2019-06-11 14:25:36');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `metas`
--

CREATE TABLE `metas` (
  `id` int(10) UNSIGNED NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `plan_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2015_01_20_084450_create_roles_table', 1),
(4, '2015_01_20_084525_create_role_user_table', 1),
(5, '2015_01_24_080208_create_permissions_table', 1),
(6, '2015_01_24_080433_create_permission_role_table', 1),
(7, '2015_12_04_003040_add_special_role_column', 1),
(8, '2017_10_17_170735_create_permission_user_table', 1),
(9, '2018_08_13_100001_create_processes_table', 1),
(10, '2018_08_13_100002_create_requirements_table', 1),
(11, '2018_08_13_100003_create_process_requirement_table', 1),
(12, '2018_08_13_185219_create_solicitantes_table', 1),
(13, '2018_08_17_140038_create_areas_table', 1),
(14, '2018_08_17_140545_create_estados_table', 1),
(15, '2018_08_17_142658_create_tramites_table', 1),
(16, '2018_10_10_113145_create_archivos_table', 1),
(17, '2018_12_11_110610_create_eventos_table', 1),
(18, '2018_12_11_110701_create_noticias_table', 1),
(19, '2018_12_11_153504_create_slide_images_table', 1),
(20, '2019_01_30_161335_create_normas_table', 1),
(21, '2019_01_30_164634_create_procedimientos_table', 1),
(22, '2019_02_12_174037_create_galleries_table', 1),
(23, '2019_02_12_174058_create_photos_table', 1),
(24, '2019_02_15_190243_create_contacts_table', 1),
(25, '2019_02_22_160901_create_derivacions_table', 1),
(26, '2019_03_06_174055_create_despachos_table', 1),
(27, '2019_03_06_174204_create_receptions_table', 1),
(28, '2019_03_22_111214_create_aera_academicas_table', 1),
(29, '2019_03_22_111412_create_planificacions_table', 1),
(30, '2019_03_22_111505_create_objetivos_table', 1),
(31, '2019_03_22_111840_create_meta_estrategicas_table', 1),
(32, '2019_03_22_111919_create_actividads_table', 1),
(33, '2019_03_22_112746_create_actividad_user_table', 1),
(34, '2019_03_22_111214_create_areaAcademicas_table', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `normas`
--

CREATE TABLE `normas` (
  `id` int(10) UNSIGNED NOT NULL,
  `tipo_norma` enum('EXTERNO','INTERNA') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INTERNA',
  `nombre` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url_document` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `normas`
--

INSERT INTO `normas` (`id`, `tipo_norma`, `nombre`, `url_document`, `created_at`, `updated_at`) VALUES
(17, 'EXTERNO', 'ESTATUTO ORGÁNICO', '1550583893_1520100 ICU_102_2011 ESTATUTO ORGÁNICO.pdf', '2019-02-20 05:44:53', '2019-02-20 05:44:53'),
(19, 'INTERNA', 'REGLAMENTO INTERNO PERSONAL ADMINISTRATIVO-VIGENTE', '1550584428_3010000 R.ICU.20-89 REGL.INTERNO PERSONAL ADM-VIGENTE.pdf', '2019-02-20 05:53:48', '2019-06-11 14:52:34'),
(20, 'EXTERNO', 'REGLAMENTO DE INCENTIVO PECUNIARIO', '1550586058_3010503 R.ICU.041-2007 REGL.INCENTIVO PECUNIARIO.pdf', '2019-02-20 06:20:58', '2019-06-11 14:53:36'),
(21, 'EXTERNO', 'REGLAMENTO GENERAL DEL     PROFESOR UNIVERSITARIO     Y REGLAMENTO DEL ESCALAFÓN     DOCENTE DE LA U.A.G.R.M.', '1550587876_3030000_RR-06_1992 REG. GRAL.PROF. UNIV..pdf', '2019-02-20 06:51:17', '2019-06-11 14:43:26'),
(22, 'INTERNA', 'REGLAMENTO PARA ASIGNAR GRUPO MATERIA DOCENTES', '1550587922_3030103 R.R.004-2012 REG.ASIGNAR GRUPO MATERIA DOCENTES.pdf', '2019-02-20 06:52:02', '2019-06-11 14:54:35');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `noticias`
--

CREATE TABLE `noticias` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url_img` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url_document` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `precontent` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `auth` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `noticias`
--

INSERT INTO `noticias` (`id`, `title`, `url_img`, `url_document`, `precontent`, `content`, `auth`, `user_id`, `created_at`, `updated_at`) VALUES
(12, 'ACREDITACIÓN: Compromiso de Todos', '1559832873_capa.png', NULL, '<br><p>Dejémonos de charla, pongamos en ACCIÓN, debemos tomar la investigación como una cultura de calidad.<br></p>', '<p>DESARROLLAR INVESTIGACIÓN, ES SÍMBOLO DE CALIDAD</p><br><p>Concebir la enseñanza como investigación y al docente como investigador de su práctica profesional es una herramienta de innovación en la formación de los profesionales éxito, lo que permitirá mejorar la calidad y la pertinencia de los profesionales.</p><br><p>Dejémonos de charla, pongamos en ACCIÓN, debemos tomar la investigación como una cultura de calidad.</p><br>', 'SU AMIGO RUDDY SANGUINO   DIRECTOR ING. FINANCIERA   UAGRM', 1, '2019-06-06 14:54:33', '2019-06-26 14:20:16'),
(13, 'Programa de Ingles', '1559832950_ingles.jpg', NULL, '<p>Esta en marcha el programa de INGLES para los estudiantes.</p><br><p>Próximamente se estan abriendo nuevos grupos para el nivel básico.</p>', '<p>Esta en marcha el programa de INGLES para los estudiantes.</p><br><p>Próximamente se estan abriendo nuevos grupos para el nivel básico.</p><br><p>*Este programa es sin costo para los estudiantes*</p><br><p>Nos preocupa el *FUTURO?* de los jóvenes universitarios.</p><br><p>*COMPITES O MUERES???* esa es la filosofía de ACCIÓN, que está en marcha.</p>', 'SU AMIGO RUDDY SANGUINO   DIRECTOR ING. FINANCIERA   UAGRM', 1, '2019-06-06 14:55:50', '2019-06-26 14:19:19'),
(14, 'III ENCUENTRO DE TITULADOS EN INGENIERÍA FINANCIERA', '1559833400_dnvnvdnvmvmmn.jpg', NULL, '<p style=\"margin-top: 6px; margin-bottom: 6px; font-family: Helvetica, Arial, sans-serif; color: rgb(28, 30, 33);\">Este lunes 10 de junio en el 17vo ANIVERSARIO DE LA CARRERA los esperamos a todos para compartir experiencias y hablar de temas actuales de FINANZAS, sala 1 del modulo 265.</p><p style=\"margin-top: 6px; margin-bottom: 6px; font-family: Helvetica, Arial, sans-serif; color: rgb(28, 30, 33);\">No te pierdas este evento, ven y apoya a tu carrera rumbo a la ACREDITACIÓN.</p>', '<p style=\"margin-bottom: 6px; font-family: Helvetica, Arial, sans-serif; color: rgb(28, 30, 33);\">QUEDAN CORDIALMENTE INVITADOS A SER PARTE DEL 3er ENCUENTRO DE INGENIEROS FINANCIEROS</p><p style=\"margin-top: 6px; margin-bottom: 6px; font-family: Helvetica, Arial, sans-serif; color: rgb(28, 30, 33);\">Este lunes 10 de junio en el 17vo ANIVERSARIO DE LA CARRERA los esperamos a todos para compartir experiencias y hablar de temas actuales de FINANZAS, sala 1 del modulo 265.</p><p style=\"margin-top: 6px; margin-bottom: 6px; font-family: Helvetica, Arial, sans-serif; color: rgb(28, 30, 33);\">No te pierdas este evento, ven y apoya a tu carrera rumbo a la ACREDITACIÓN.</p><p class=\"text_exposed_show\" style=\"display: inline; font-family: Helvetica, Arial, sans-serif; color: rgb(28, 30, 33);\"></p><p style=\"margin-bottom: 6px; font-family: inherit;\">Nota: No tiene costo es parte de las actividades rumbo a la ACREDITACIÓN</p><p></p>', 'SU AMIGO RUDDY SANGUINO   DIRECTOR ING. FINANCIERA   UAGRM', 1, '2019-06-06 15:03:20', '2019-06-26 14:19:37');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `objetivos`
--

CREATE TABLE `objetivos` (
  `id` int(10) UNSIGNED NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `type` enum('estrategico','especifico') COLLATE utf8mb4_unicode_ci NOT NULL,
  `plan_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `module` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `permissions`
--

INSERT INTO `permissions` (`id`, `module`, `name`, `slug`, `description`, `created_at`, `updated_at`) VALUES
(5, 'roles', 'Navegar roles', 'roles.index', 'Lista y navega todos los roles del sistem', '2019-01-29 07:21:51', '2019-01-29 07:21:51'),
(6, 'roles', 'Creación de roles', 'roles.create', 'Podría crear nuevos roles en el sistema', '2019-01-29 07:24:04', '2019-01-29 07:24:04'),
(7, 'roles', 'Edición de roles', 'roles.edit', 'Podría editar cualquier dato de un rol del sistema', '2019-01-29 07:24:52', '2019-01-29 07:24:52'),
(8, 'roles', 'Eliminar roles', 'roles.destroy', 'Podría eliminar cualquier rol del sistema', '2019-01-29 07:25:26', '2019-01-29 07:25:26'),
(12, 'users', 'Navegar usuarios', 'users.index', 'Lista y navega todos los usuarios del sistema', '2019-01-29 12:45:56', '2019-01-29 12:45:56'),
(13, 'users', 'Edición de usuarios', 'users.edit', 'Podría editar cualquier dato de un usuario del sistema', '2019-01-29 12:46:40', '2019-01-29 12:46:40'),
(14, 'users', 'Eliminar usuario', 'users.destroy', 'Podría eliminar cualquier usuario del sistema', '2019-01-29 12:47:21', '2019-01-29 12:47:21'),
(15, 'tramite', 'Creación de tramites', 'tramite.create', 'Podría recepcionar nuevos tramites en el sistema', '2019-03-12 02:56:12', '2019-03-12 02:56:12'),
(16, 'tramite', 'Edición de tramites', 'tramite.edit', 'Podría editar cualquier dato de un tramite recepcionado', '2019-03-12 02:58:06', '2019-03-12 02:58:06'),
(17, 'tramite', 'Eliminar tramite', 'tramite.destroy', 'Podría eliminar tramite recepcionado', '2019-03-12 03:00:04', '2019-03-12 03:00:04'),
(18, 'tramite', 'Navegar tramites', 'tramite.index', 'Lista y navega todos los tramites', '2019-03-12 03:01:25', '2019-03-12 03:01:25'),
(19, 'sliders', 'Navegar sliders', 'sliders.index', 'Lista y navega todos los sliders', '2019-03-12 19:41:39', '2019-03-12 19:41:39'),
(20, 'sliders', 'Creación de sliders', 'sliders.create', 'Podría crear nuevos sliders en el sistema', '2019-03-12 19:43:17', '2019-03-12 19:43:17'),
(21, 'sliders', 'Edición de sliders', 'sliders.edit', 'Podría editar cualquier dato de un sliders del sistema', '2019-03-12 19:45:47', '2019-03-12 19:45:47'),
(22, 'sliders', 'Eliminar sliders', 'sliders.destroy', 'Podría eliminar sliders', '2019-03-12 19:48:44', '2019-03-12 19:48:44'),
(23, 'area', 'Navegar áreas', 'area.index', 'Lista y navega todas las areas', '2019-03-12 22:33:20', '2019-03-12 22:33:20'),
(24, 'area', 'Edición de áreas', 'area.edit', 'Podría editar cualquier dato de una area', '2019-03-12 22:35:09', '2019-03-12 22:35:09'),
(25, 'area', 'Creación de areas', 'area.create', 'Podría crear nuevos areas en el sistema', '2019-03-12 22:36:14', '2019-03-12 22:36:14'),
(26, 'area', 'Eliminar sliders', 'area.destroy', 'Podría eliminar áreas', '2019-03-12 22:37:11', '2019-03-12 22:37:11'),
(27, 'requirements', 'Navegar requisitos', 'requirements.index', 'Lista y navega todas las requisitos', '2019-03-13 02:33:20', '2019-03-13 02:33:20'),
(28, 'requirements', 'Edición de requisitos', 'requirements.edit', 'Podría editar cualquier dato de un requisito', '2019-03-13 02:35:09', '2019-03-13 02:35:09'),
(29, 'requirements', 'Creación de requisitos', 'requirements.create', 'Podría crear nuevos requisitos en el sistema', '2019-03-13 02:36:14', '2019-03-13 02:36:14'),
(30, 'requirements', 'Eliminar requisitos', 'requirements.destroy', 'Podría eliminar requisitos', '2019-03-13 02:37:11', '2019-03-13 02:37:11'),
(31, 'processes', 'Navegar procesos', 'processes.index', 'Lista y navega todas los procesos', '2019-03-13 02:33:20', '2019-03-13 02:33:20'),
(32, 'processes', 'Edición de procesos', 'processes.edit', 'Podría editar cualquier dato de un procesos', '2019-03-13 02:35:09', '2019-03-13 02:35:09'),
(33, 'processes', 'Creación de procesos', 'processes.create', 'Podría crear nuevos procesos en el sistema', '2019-03-13 02:36:14', '2019-03-13 02:36:14'),
(34, 'processes', 'Eliminar procesos', 'processes.destroy', 'Podría eliminar procesos', '2019-03-13 02:37:11', '2019-03-13 02:37:11'),
(35, 'tramite', 'cierre de estados', 'tramite.cierredeestados', 'finalizar estado', '2019-08-21 04:00:00', '2019-08-22 04:00:00'),
(36, 'tramite', 'store', 'tramite.store', 'derivar', '2019-08-28 04:00:00', '2019-09-02 15:05:37');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permission_role`
--

CREATE TABLE `permission_role` (
  `id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `permission_role`
--

INSERT INTO `permission_role` (`id`, `permission_id`, `role_id`, `created_at`, `updated_at`) VALUES
(11, 12, 11, '2019-01-29 13:12:40', '2019-01-29 13:12:40'),
(12, 13, 11, '2019-01-29 13:12:40', '2019-01-29 13:12:40'),
(13, 5, 11, '2019-01-30 05:22:29', '2019-01-30 05:22:29'),
(14, 8, 11, '2019-01-30 05:22:30', '2019-01-30 05:22:30'),
(29, 18, 12, '2019-03-13 00:19:02', '2019-03-13 00:19:02'),
(30, 15, 13, '2019-08-08 14:50:19', '2019-08-08 14:50:19'),
(31, 16, 13, '2019-08-08 14:50:19', '2019-08-08 14:50:19'),
(32, 17, 13, '2019-08-08 14:50:19', '2019-08-08 14:50:19'),
(33, 18, 13, '2019-08-08 14:50:19', '2019-08-08 14:50:19'),
(36, 18, 2, '2019-08-29 15:14:19', '2019-08-29 15:14:19'),
(41, 12, 1, '2019-08-29 18:12:32', '2019-08-29 18:12:32'),
(42, 13, 1, '2019-08-29 18:12:32', '2019-08-29 18:12:32'),
(43, 14, 1, '2019-08-29 18:12:32', '2019-08-29 18:12:32'),
(44, 5, 1, '2019-08-29 18:12:32', '2019-08-29 18:12:32'),
(45, 6, 1, '2019-08-29 18:12:32', '2019-08-29 18:12:32'),
(46, 7, 1, '2019-08-29 18:12:32', '2019-08-29 18:12:32'),
(47, 8, 1, '2019-08-29 18:12:33', '2019-08-29 18:12:33'),
(48, 23, 1, '2019-08-29 18:12:33', '2019-08-29 18:12:33'),
(49, 24, 1, '2019-08-29 18:12:33', '2019-08-29 18:12:33'),
(50, 25, 1, '2019-08-29 18:12:33', '2019-08-29 18:12:33'),
(51, 26, 1, '2019-08-29 18:12:33', '2019-08-29 18:12:33'),
(52, 31, 1, '2019-08-29 18:12:33', '2019-08-29 18:12:33'),
(53, 32, 1, '2019-08-29 18:12:33', '2019-08-29 18:12:33'),
(54, 33, 1, '2019-08-29 18:12:33', '2019-08-29 18:12:33'),
(55, 34, 1, '2019-08-29 18:12:33', '2019-08-29 18:12:33'),
(56, 15, 1, '2019-08-29 18:12:33', '2019-08-29 18:12:33'),
(57, 16, 1, '2019-08-29 18:12:33', '2019-08-29 18:12:33'),
(58, 18, 1, '2019-08-29 18:12:33', '2019-08-29 18:12:33'),
(59, 27, 1, '2019-08-29 18:12:33', '2019-08-29 18:12:33'),
(60, 28, 1, '2019-08-29 18:12:33', '2019-08-29 18:12:33'),
(61, 29, 1, '2019-08-29 18:12:33', '2019-08-29 18:12:33'),
(62, 30, 1, '2019-08-29 18:12:33', '2019-08-29 18:12:33'),
(63, 19, 1, '2019-08-29 18:12:33', '2019-08-29 18:12:33'),
(64, 20, 1, '2019-08-29 18:12:34', '2019-08-29 18:12:34'),
(65, 21, 1, '2019-08-29 18:12:34', '2019-08-29 18:12:34'),
(66, 22, 1, '2019-08-29 18:12:34', '2019-08-29 18:12:34'),
(67, 16, 2, '2022-02-14 18:35:19', '2022-02-14 18:35:19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permission_user`
--

CREATE TABLE `permission_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `photos`
--

CREATE TABLE `photos` (
  `id` int(10) UNSIGNED NOT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_size` int(11) NOT NULL,
  `gallery_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `photos`
--

INSERT INTO `photos` (`id`, `file_name`, `title`, `path`, `file_size`, `gallery_id`, `created_at`, `updated_at`) VALUES
(20, 'DSC_0409.JPG', 'DSC_0409', '/photo/img/DSC_0409.JPG', 147602, 1, '2019-06-07 15:06:49', '2019-06-07 15:06:49'),
(21, 'DSC_0414.JPG', 'DSC_0414', '/photo/img/DSC_0414.JPG', 158925, 1, '2019-06-07 15:06:50', '2019-06-07 15:06:50'),
(22, 'DSC_0417.JPG', 'DSC_0417', '/photo/img/DSC_0417.JPG', 135961, 1, '2019-06-07 15:06:50', '2019-06-07 15:06:50'),
(23, 'DSC_0436.JPG', 'DSC_0436', '/photo/img/DSC_0436.JPG', 293937, 1, '2019-06-07 15:06:51', '2019-06-07 15:06:51'),
(24, 'DSC_0437.JPG', 'DSC_0437', '/photo/img/DSC_0437.JPG', 219256, 1, '2019-06-07 15:06:51', '2019-06-07 15:06:51'),
(25, 'DSC_0438.JPG', 'DSC_0438', '/photo/img/DSC_0438.JPG', 184360, 1, '2019-06-07 15:06:51', '2019-06-07 15:06:51'),
(26, 'DSC_1597.JPG', 'DSC_1597', '/photo/img/DSC_1597.JPG', 106851, 1, '2019-06-07 15:06:52', '2019-06-07 15:06:52'),
(27, 'DSC_1601.JPG', 'DSC_1601', '/photo/img/DSC_1601.JPG', 113596, 1, '2019-06-07 15:06:52', '2019-06-07 15:06:52'),
(28, 'DSC_1604.JPG', 'DSC_1604', '/photo/img/DSC_1604.JPG', 124413, 1, '2019-06-07 15:06:53', '2019-06-07 15:06:53'),
(29, 'DSC_1606.JPG', 'DSC_1606', '/photo/img/DSC_1606.JPG', 161451, 1, '2019-06-07 15:06:53', '2019-06-07 15:06:53'),
(30, 'DSC_1105.JPG', 'DSC_1105', '/photo/img/DSC_1105.JPG', 197486, 2, '2019-06-07 15:10:15', '2019-06-07 15:10:15'),
(31, 'DSC_1106.JPG', 'DSC_1106', '/photo/img/DSC_1106.JPG', 245060, 2, '2019-06-07 15:10:16', '2019-06-07 15:10:16'),
(32, 'DSC_1119.JPG', 'DSC_1119', '/photo/img/DSC_1119.JPG', 242552, 2, '2019-06-07 15:10:16', '2019-06-07 15:10:16'),
(33, 'DSC_1122.JPG', 'DSC_1122', '/photo/img/DSC_1122.JPG', 266400, 2, '2019-06-07 15:10:17', '2019-06-07 15:10:17'),
(34, 'DSC_1125.JPG', 'DSC_1125', '/photo/img/DSC_1125.JPG', 251241, 2, '2019-06-07 15:10:17', '2019-06-07 15:10:17'),
(35, 'DSC_1138.JPG', 'DSC_1138', '/photo/img/DSC_1138.JPG', 260578, 2, '2019-06-07 15:10:17', '2019-06-07 15:10:17'),
(36, 'DSC_1143.JPG', 'DSC_1143', '/photo/img/DSC_1143.JPG', 250170, 2, '2019-06-07 15:10:18', '2019-06-07 15:10:18'),
(37, 'DSC_1151.JPG', 'DSC_1151', '/photo/img/DSC_1151.JPG', 209796, 2, '2019-06-07 15:10:18', '2019-06-07 15:10:18'),
(38, 'DSC_1154.JPG', 'DSC_1154', '/photo/img/DSC_1154.JPG', 278277, 2, '2019-06-07 15:10:19', '2019-06-07 15:10:19'),
(39, 'DSC_1160123.jpg', 'DSC_1160123', '/photo/img/DSC_1160123.jpg', 273003, 2, '2019-06-07 15:10:19', '2019-06-07 15:10:19'),
(40, '20180516_124414.jpg', '20180516_124414', '/photo/img/20180516_124414.jpg', 306891, 3, '2019-06-07 15:11:31', '2019-06-07 15:11:31'),
(41, '20180516_123953.jpg', '20180516_123953', '/photo/img/20180516_123953.jpg', 444288, 3, '2019-06-07 15:11:32', '2019-06-07 15:11:32'),
(42, '20180516_124622.jpg', '20180516_124622', '/photo/img/20180516_124622.jpg', 333183, 3, '2019-06-07 15:11:32', '2019-06-07 15:11:32'),
(43, '20180516_125156.jpg', '20180516_125156', '/photo/img/20180516_125156.jpg', 321593, 3, '2019-06-07 15:11:33', '2019-06-07 15:11:33'),
(44, '20180516_125427.jpg', '20180516_125427', '/photo/img/20180516_125427.jpg', 301558, 3, '2019-06-07 15:11:33', '2019-06-07 15:11:33'),
(45, '20180516_125429.jpg', '20180516_125429', '/photo/img/20180516_125429.jpg', 361243, 3, '2019-06-07 15:11:33', '2019-06-07 15:11:33'),
(46, '20180516_130145.jpg', '20180516_130145', '/photo/img/20180516_130145.jpg', 326625, 3, '2019-06-07 15:11:34', '2019-06-07 15:11:34'),
(47, '20180516_130315.jpg', '20180516_130315', '/photo/img/20180516_130315.jpg', 312639, 3, '2019-06-07 15:11:34', '2019-06-07 15:11:34'),
(48, '20180516_130354.jpg', '20180516_130354', '/photo/img/20180516_130354.jpg', 321930, 3, '2019-06-07 15:11:35', '2019-06-07 15:11:35'),
(49, '20180516_130450.jpg', '20180516_130450', '/photo/img/20180516_130450.jpg', 340975, 3, '2019-06-07 15:11:35', '2019-06-07 15:11:35'),
(50, '20180516_130635.jpg', '20180516_130635', '/photo/img/20180516_130635.jpg', 298896, 3, '2019-06-07 15:11:36', '2019-06-07 15:11:36'),
(51, '20180516_130756.jpg', '20180516_130756', '/photo/img/20180516_130756.jpg', 304331, 3, '2019-06-07 15:11:36', '2019-06-07 15:11:36'),
(52, '20180516_131116.jpg', '20180516_131116', '/photo/img/20180516_131116.jpg', 406769, 3, '2019-06-07 15:11:37', '2019-06-07 15:11:37'),
(53, '20180516_131304.jpg', '20180516_131304', '/photo/img/20180516_131304.jpg', 400808, 3, '2019-06-07 15:11:37', '2019-06-07 15:11:37'),
(54, '20180516_131417.jpg', '20180516_131417', '/photo/img/20180516_131417.jpg', 276210, 3, '2019-06-07 15:11:38', '2019-06-07 15:11:38'),
(55, '20180516_131627.jpg', '20180516_131627', '/photo/img/20180516_131627.jpg', 427958, 3, '2019-06-07 15:11:38', '2019-06-07 15:11:38'),
(56, 'DSC_0179.JPG', 'DSC_0179', '/photo/img/DSC_0179.JPG', 243213, 5, '2019-06-07 15:12:23', '2019-06-07 15:12:23'),
(57, 'DSC_0175.JPG', 'DSC_0175', '/photo/img/DSC_0175.JPG', 330953, 5, '2019-06-07 15:12:23', '2019-06-07 15:12:23'),
(58, 'DSC_0181.JPG', 'DSC_0181', '/photo/img/DSC_0181.JPG', 210220, 5, '2019-06-07 15:12:24', '2019-06-07 15:12:24'),
(59, 'DSC_0183.JPG', 'DSC_0183', '/photo/img/DSC_0183.JPG', 211712, 5, '2019-06-07 15:12:24', '2019-06-07 15:12:24'),
(60, 'DSC_0188.JPG', 'DSC_0188', '/photo/img/DSC_0188.JPG', 330508, 5, '2019-06-07 15:12:25', '2019-06-07 15:12:25'),
(61, 'DSC_0192.JPG', 'DSC_0192', '/photo/img/DSC_0192.JPG', 205984, 5, '2019-06-07 15:12:25', '2019-06-07 15:12:25'),
(62, 'DSC_0194.JPG', 'DSC_0194', '/photo/img/DSC_0194.JPG', 341882, 5, '2019-06-07 15:12:26', '2019-06-07 15:12:26'),
(63, 'DSC_0197.JPG', 'DSC_0197', '/photo/img/DSC_0197.JPG', 191104, 5, '2019-06-07 15:12:26', '2019-06-07 15:12:26'),
(64, 'DSC_0199.JPG', 'DSC_0199', '/photo/img/DSC_0199.JPG', 239999, 5, '2019-06-07 15:12:26', '2019-06-07 15:12:26'),
(65, 'DSC_0224.JPG', 'DSC_0224', '/photo/img/DSC_0224.JPG', 210310, 5, '2019-06-07 15:12:27', '2019-06-07 15:12:27'),
(66, 'DSC_0226.JPG', 'DSC_0226', '/photo/img/DSC_0226.JPG', 194939, 5, '2019-06-07 15:12:27', '2019-06-07 15:12:27'),
(67, 'DSC_0247.JPG', 'DSC_0247', '/photo/img/DSC_0247.JPG', 176056, 5, '2019-06-07 15:12:28', '2019-06-07 15:12:28'),
(68, 'DSC_0252.JPG', 'DSC_0252', '/photo/img/DSC_0252.JPG', 200131, 5, '2019-06-07 15:12:28', '2019-06-07 15:12:28'),
(69, 'DSC_0253.JPG', 'DSC_0253', '/photo/img/DSC_0253.JPG', 191857, 5, '2019-06-07 15:12:29', '2019-06-07 15:12:29'),
(70, 'DSC00491 - copia.JPG', 'DSC00491 - copia', '/photo/img/DSC00491 - copia.JPG', 225754, 4, '2019-06-11 15:14:25', '2019-06-11 15:14:25'),
(71, 'DSC00494 - copia.JPG', 'DSC00494 - copia', '/photo/img/DSC00494 - copia.JPG', 214312, 4, '2019-06-11 15:14:26', '2019-06-11 15:14:26'),
(72, 'DSC00495 - copia.JPG', 'DSC00495 - copia', '/photo/img/DSC00495 - copia.JPG', 180701, 4, '2019-06-11 15:14:26', '2019-06-11 15:14:26'),
(73, 'DSC00492111.jpg', 'DSC00492111', '/photo/img/DSC00492111.jpg', 272456, 4, '2019-06-11 15:14:27', '2019-06-11 15:14:27'),
(74, 'DSCN0273.JPG', 'DSCN0273', '/photo/img/DSCN0273.JPG', 234474, 4, '2019-06-11 15:14:27', '2019-06-11 15:14:27'),
(75, 'DSCN0275.JPG', 'DSCN0275', '/photo/img/DSCN0275.JPG', 221157, 4, '2019-06-11 15:14:28', '2019-06-11 15:14:28'),
(76, 'DSCN0277.JPG', 'DSCN0277', '/photo/img/DSCN0277.JPG', 194280, 4, '2019-06-11 15:14:28', '2019-06-11 15:14:28'),
(77, 'DSCN0278.JPG', 'DSCN0278', '/photo/img/DSCN0278.JPG', 164752, 4, '2019-06-11 15:14:29', '2019-06-11 15:14:29'),
(78, 'DSCN0279.JPG', 'DSCN0279', '/photo/img/DSCN0279.JPG', 213161, 4, '2019-06-11 15:14:29', '2019-06-11 15:14:29'),
(79, 'DSCN0282.JPG', 'DSCN0282', '/photo/img/DSCN0282.JPG', 261634, 4, '2019-06-11 15:14:30', '2019-06-11 15:14:30'),
(80, 'DSCN0284.JPG', 'DSCN0284', '/photo/img/DSCN0284.JPG', 281481, 4, '2019-06-11 15:14:30', '2019-06-11 15:14:30'),
(81, 'DSCN0285.JPG', 'DSCN0285', '/photo/img/DSCN0285.JPG', 303601, 4, '2019-06-11 15:14:31', '2019-06-11 15:14:31'),
(82, 'DSCN0287.JPG', 'DSCN0287', '/photo/img/DSCN0287.JPG', 320696, 4, '2019-06-11 15:14:31', '2019-06-11 15:14:31'),
(83, 'DSCN0290.JPG', 'DSCN0290', '/photo/img/DSCN0290.JPG', 203536, 4, '2019-06-11 15:14:31', '2019-06-11 15:14:31');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `planificacions`
--

CREATE TABLE `planificacions` (
  `id` int(10) UNSIGNED NOT NULL,
  `anio` int(11) NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `area_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `procedimientos`
--

CREATE TABLE `procedimientos` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(240) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url_img` varchar(240) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url_document` varchar(240) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `procedimientos`
--

INSERT INTO `procedimientos` (`id`, `nombre`, `url_img`, `url_document`, `content`, `created_at`, `updated_at`) VALUES
(1, 'AUXILIATURAS DE CÁTEDRA - ESTUDIANTES', '1560974994_AUXILIATURAS DE CATEDRA.JPG', '1560974994_REQUISITOS PARA AUXILIATURAS DE CATEDRA - ESTUDIANTES.docx', '<br>\r\n\r\n<p class=\"MsoListParagraphCxSpFirst\" style=\"margin: 0cm 0cm 10pt 54pt; text-indent: -36pt; line-height: 115%; text-align: justify;\"><!--[if !supportLists]--><strong></strong><strong><span lang=\"ES\" style=\"font-size:12.0pt;\r\nline-height:115%;font-family:\" times=\"\" new=\"\" roman\",serif;mso-fareast-font-family:=\"\" \"times=\"\" roman\"\"=\"\">I.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";=\"\" font-weight:=\"\" normal;\"=\"\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span></strong><!--[endif]--><strong><span lang=\"ES\" style=\"font-size:12.0pt;line-height:115%;font-family:\" times=\"\" new=\"\" roman\",serif;=\"\" mso-bidi-font-family:\"times=\"\" roman\";mso-bidi-theme-font:minor-bidi\"=\"\">&nbsp;REQUISITOS. -</span></strong><span lang=\"ES\" style=\"font-size:12.0pt;line-height:115%;font-family:\" times=\"\" new=\"\" roman\",serif;=\"\" mso-bidi-font-family:\"times=\"\" roman\";mso-bidi-theme-font:minor-bidi\"=\"\"><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoListParagraphCxSpLast\" style=\"margin-left: 9pt; text-align: justify;\"><strong></strong><strong><span lang=\"ES\">&nbsp;</span></strong><span lang=\"ES\">Los requisitos\r\nexigidos para la extensión del formulario.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin: 0cm 0cm 0.0001pt 54pt; text-indent: -18pt; line-height: normal; text-align: justify;\"><!--[if !supportLists]--><strong></strong><strong><span lang=\"ES\">1.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";=\"\" font-weight:=\"\" normal;\"=\"\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></strong><!--[endif]--><span lang=\"ES\">Ser estudiante de origen y activo, con por lo menos una materia\r\ninscrita, en una de las carreras de la F.C.E.A.F. - U.A.G.R.M.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin: 0cm 0cm 0.0001pt 54pt; text-indent: -18pt; line-height: normal; text-align: justify;\"><!--[if !supportLists]--><strong></strong><strong><span lang=\"ES\">2.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";=\"\" font-weight:=\"\" normal;\"=\"\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></strong><!--[endif]--><span lang=\"ES\">No haber atentado contra la autonomía universitaria o haber sido\r\nsancionado por conducta irregular (certificado de Secretaria General de la\r\nUAGRM). <o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin: 0cm 0cm 0.0001pt 54pt; text-indent: -18pt; line-height: normal; text-align: justify;\"><!--[if !supportLists]--><strong></strong><strong><span lang=\"ES\">3.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";=\"\" font-weight:=\"\" normal;\"=\"\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></strong><!--[endif]--><span lang=\"ES\">No tener una <strong>permanencia mayor a\r\n8 años</strong> como estudiante, en función al periodo académico de ingreso a la\r\nuniversidad.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin: 0cm 0cm 0.0001pt 54pt; text-indent: -18pt; line-height: normal; text-align: justify;\"><!--[if !supportLists]--><strong></strong><strong><span lang=\"ES\">4.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";=\"\" font-weight:=\"\" normal;\"=\"\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></strong><!--[endif]--><span lang=\"ES\">No haber <strong>reprobado alguna\r\nasignatura más de 3 veces en el periodo regular (semestral o anual).<o:p></o:p></strong></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin: 0cm 0cm 0.0001pt 54pt; text-indent: -18pt; line-height: normal; text-align: justify;\"><!--[if !supportLists]--><strong></strong><strong><span lang=\"ES\">5.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";=\"\" font-weight:=\"\" normal;\"=\"\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></strong><!--[endif]--><span lang=\"ES\">El estudiante que haya vencido el plan de estudios de su carrera y que\r\ntenga en mora la materia de titulación podrá postularse, hasta dos periodos\r\nacadémicos en el sistema semestral.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin: 0cm 0cm 0.0001pt 54pt; text-indent: -18pt; line-height: normal; text-align: justify;\"><!--[if !supportLists]--><strong></strong><strong><span lang=\"ES\">6.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";=\"\" font-weight:=\"\" normal;\"=\"\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></strong><!--[endif]--><strong><span lang=\"ES\">No gozar de otros beneficios\r\nremunerados por la U.A.G.R.M. <o:p></o:p></span></strong></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin: 0cm 0cm 0.0001pt 54pt; text-indent: -18pt; line-height: normal; text-align: justify;\"><!--[if !supportLists]--><strong></strong><strong><span lang=\"ES\">7.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";=\"\" font-weight:=\"\" normal;\"=\"\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></strong><!--[endif]--><span lang=\"ES\">Tener el Formulario de evaluación de méritos, actualizado a la fecha.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin: 0cm 0cm 0.0001pt 54pt; text-indent: -18pt; line-height: normal; text-align: justify;\"><!--[if !supportLists]--><strong></strong><strong><span lang=\"ES\">8.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";=\"\" font-weight:=\"\" normal;\"=\"\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></strong><!--[endif]--><span lang=\"ES\">Tener una antigüedad de cuatro semestres, de acuerdo a la carrera\r\ncursada.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin: 0cm 0cm 0.0001pt 54pt; text-indent: -18pt; line-height: normal; text-align: justify;\"><!--[if !supportLists]--><strong></strong><strong><span lang=\"ES\">9.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";=\"\" font-weight:=\"\" normal;\"=\"\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></strong><!--[endif]--><span lang=\"ES\">Haber aprobado con un promedio de 51 puntos la materia objetivo de la\r\nauxiliatura, en el periodo académico regular (semestral).<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin: 0cm 0cm 0.0001pt 54pt; text-indent: -18pt; line-height: normal; text-align: justify;\"><!--[if !supportLists]--><strong></strong><strong><span lang=\"ES\">10.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";=\"\" font-weight:=\"\" normal;\"=\"\">&nbsp;&nbsp; </span></span></strong><!--[endif]--><span lang=\"ES\">Tener un P.P.A. mayor o igual a 60.&nbsp;\r\n<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin: 0cm 0cm 0.0001pt 54pt; text-indent: -18pt; line-height: normal; text-align: justify;\"><!--[if !supportLists]--><strong></strong><strong><span lang=\"ES\">11.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";=\"\" font-weight:=\"\" normal;\"=\"\">&nbsp;&nbsp; </span></span></strong><!--[endif]--><span lang=\"ES\">Tener aprobado el 100% de las asignaturas del periodo académico\r\n(semestral o anual), al que corresponde la materia que postula y tener\r\naprobadas todas las materias de niveles inferiores. <o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin: 0cm 0cm 0.0001pt 54pt; text-indent: -18pt; line-height: normal; text-align: justify;\"><!--[if !supportLists]--><strong></strong><strong><span lang=\"ES\">12.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";=\"\" font-weight:=\"\" normal;\"=\"\">&nbsp;&nbsp; </span></span></strong><!--[endif]--><strong><span lang=\"ES\">No haber reprobado más de una\r\n</span></strong><span lang=\"ES\">vez la asignatura a la que postula en el periodo\r\nacadémico regular y no en curso de verano o mesa examinadora.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoListParagraphCxSpFirst\" style=\"margin: 0cm 0cm 10pt 9pt; text-indent: -9pt; line-height: 115%; text-align: justify;\"><!--[if !supportLists]--><strong></strong><strong><span lang=\"ES\" style=\"font-size:12.0pt;mso-bidi-font-size:11.0pt;line-height:115%;\r\nfont-family:\" tw=\"\" cen=\"\" mt=\"\" condensed\",sans-serif;mso-fareast-font-family:\"tw=\"\" condensed\";=\"\" mso-bidi-font-family:\"tw=\"\" condensed\"\"=\"\">II.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";=\"\" font-weight:=\"\" normal;\"=\"\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></strong><!--[endif]--><strong><span lang=\"ES\" style=\"font-size:12.0pt;\r\nmso-bidi-font-size:11.0pt;line-height:115%;font-family:\" times=\"\" new=\"\" roman\",serif;=\"\" mso-bidi-font-family:\"times=\"\" roman\";mso-bidi-theme-font:minor-bidi\"=\"\">&nbsp;DOCUMENTOS A PRESENTAR:</span></strong><span lang=\"ES\" style=\"font-size:12.0pt;mso-bidi-font-size:11.0pt;line-height:115%;\r\nfont-family:\" times=\"\" new=\"\" roman\",serif;mso-bidi-font-family:\"times=\"\" roman\";=\"\" mso-bidi-theme-font:minor-bidi\"=\"\"> <o:p></o:p></span></p>\r\n\r\n<span lang=\"ES\" style=\"font-size:12.0pt;mso-bidi-font-size:\r\n11.0pt;line-height:107%;font-family:\" times=\"\" new=\"\" roman\",serif;mso-bidi-font-family:=\"\" \"times=\"\" roman\";mso-bidi-theme-font:minor-bidi\"=\"\"><o:p>&nbsp;</o:p></span>\r\n\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left: 9pt; text-align: justify;\"><strong></strong><span lang=\"ES\" style=\"font-size:12.0pt;line-height:\r\n107%;font-family:\" times=\"\" new=\"\" roman\",serif;mso-bidi-font-family:\"times=\"\" roman\";=\"\" mso-bidi-theme-font:minor-bidi\"=\"\">El postulante presentará a la Dirección de\r\nCarrera la solicitud indicando la <strong>asignatura\r\nque postula, </strong>adjuntado los siguientes documentos</span><span lang=\"ES\">:&nbsp;<o:p></o:p></span></p>\r\n\r\n<p style=\"text-align: left;\"><strong style=\"text-indent: -18pt;\"><span lang=\"ES\" style=\"font-size:12.0pt;\r\nline-height:115%;font-family:\" times=\"\" new=\"\" roman\",serif;mso-fareast-font-family:=\"\" \"times=\"\" roman\"\"=\"\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; a)<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";=\"\" font-weight:=\"\" normal;\"=\"\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span></strong><span lang=\"ES\" style=\"text-indent: -18pt; font-size: 12pt; line-height: 115%; font-family: \" times=\"\" new=\"\" roman\",=\"\" serif;\"=\"\">Carta de solicitud indicando la materia a la\r\nque postula.</span></p><p><strong style=\"text-indent: -18pt;\"><p style=\"text-align: left;\"><strong style=\"text-indent: -18pt;\"><span lang=\"ES\" style=\"font-size:12.0pt;\r\nline-height:115%;font-family:\" times=\"\" new=\"\" roman\",serif;mso-fareast-font-family:=\"\" \"times=\"\" roman\"\"=\"\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; b)<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";=\"\" font-weight:=\"\" normal;\"=\"\">&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span></strong><span lang=\"ES\" style=\"text-indent: -18pt; font-weight: 400; font-size: 12pt; line-height: 115%; font-family: \" times=\"\" new=\"\" roman\",=\"\" serif;\"=\"\">Formulario de Evaluación de Méritos para alumno\r\nregular en el CPD Facultativo&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; (Pabellón 257)</span></p></strong><strong style=\"text-indent: -18pt;\"><p style=\"text-align: left;\"><strong style=\"text-indent: -18pt;\"><span lang=\"ES\" style=\"font-size:12.0pt;\r\nline-height:115%;font-family:\" times=\"\" new=\"\" roman\",serif;mso-fareast-font-family:=\"\" \"times=\"\" roman\"\"=\"\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; c)<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";=\"\" font-weight:=\"\" normal;\"=\"\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span></strong><span lang=\"ES\" style=\"text-indent: -18pt; font-weight: 400; font-size: 12pt; line-height: 115%; font-family: \" times=\"\" new=\"\" roman\",=\"\" serif;\"=\"\">Fotocopia de cedula de identidad.</span></p></strong><strong style=\"text-indent: -18pt;\"><p style=\"text-align: left;\"><strong style=\"text-indent: -18pt;\"><span lang=\"ES\" style=\"font-size:12.0pt;\r\nline-height:115%;font-family:\" times=\"\" new=\"\" roman\",serif;mso-fareast-font-family:=\"\" \"times=\"\" roman\"\"=\"\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; d)<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";=\"\" font-weight:=\"\" normal;\"=\"\">&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span></strong><span lang=\"ES\" style=\"text-indent: -18pt; font-weight: 400; font-size: 12pt; line-height: 115%; font-family: \" times=\"\" new=\"\" roman\",=\"\" serif;\"=\"\">Histórico Académico emitido por el CPD\r\nfacultativo.</span></p></strong><strong style=\"text-indent: -18pt;\"><p style=\"text-align: left;\"><strong style=\"text-indent: -18pt;\"><span lang=\"ES\" style=\"font-size:12.0pt;\r\nline-height:115%;font-family:\" times=\"\" new=\"\" roman\",serif;mso-fareast-font-family:=\"\" \"times=\"\" roman\"\"=\"\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; e)<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";=\"\" font-weight:=\"\" normal;\"=\"\">&nbsp; &nbsp;</span></span></strong><span lang=\"ES\" style=\"text-indent: -18pt; font-weight: 400; font-size: 12pt; line-height: 115%; font-family: \" times=\"\" new=\"\" roman\",=\"\" serif;\"=\"\">Certificado de no haber atentado contra la\r\nautonomía universitaria o haber sido sancionad por conducta irregular\r\n(certificado de Secretaria Gral. U.A.G.R.M).</span></p></strong><strong style=\"text-indent: -18pt;\"><p style=\"text-align: left;\"><strong style=\"text-indent: -18pt;\"><span lang=\"ES\" style=\"font-size:12.0pt;\r\nline-height:115%;font-family:\" times=\"\" new=\"\" roman\",serif;mso-fareast-font-family:=\"\" \"times=\"\" roman\"\"=\"\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;f)<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";=\"\" font-weight:=\"\" normal;\"=\"\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span></strong><span lang=\"ES\" style=\"text-indent: -18pt; font-weight: 400; font-size: 12pt; line-height: 115%; font-family: \" times=\"\" new=\"\" roman\",=\"\" serif;\"=\"\">CERTIFICADO NEGATIVO LABORAL EMITIDO POR\r\nRecursos Humanos de la U.A.G.R.M.</span></p></strong><strong style=\"text-indent: -18pt;\"><p style=\"text-align: left;\"><strong style=\"text-indent: -18pt;\"><span lang=\"ES\" style=\"font-size:12.0pt;\r\nline-height:115%;font-family:\" times=\"\" new=\"\" roman\",serif;mso-fareast-font-family:=\"\" \"times=\"\" roman\"\"=\"\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;g)<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";=\"\" font-weight:=\"\" normal;\"=\"\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span></strong><span lang=\"ES\" style=\"text-indent: -18pt; font-weight: 400; font-size: 12pt; line-height: 115%; font-family: \" times=\"\" new=\"\" roman\",=\"\" serif;\"=\"\">Certificado de cumplimiento de Informe de\r\nActividades emitido por el Dpto. de Recursos Humanos de la U.A.G.R.M. (solo\r\npara Auxiliares de Cátedra programados en la gestión pasada).</span></p></strong><strong style=\"text-indent: -18pt;\"><p style=\"text-align: left;\"><strong style=\"text-indent: -18pt;\"><span lang=\"ES\" style=\"font-size:12.0pt;\r\nline-height:115%;font-family:\" times=\"\" new=\"\" roman\",serif;mso-fareast-font-family:=\"\" \"times=\"\" roman\"\"=\"\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;h)<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";=\"\" font-weight:=\"\" normal;\"=\"\">&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span></strong><span lang=\"ES\" style=\"text-indent: -18pt; font-weight: 400; font-size: 12pt; line-height: 115%; font-family: \" times=\"\" new=\"\" roman\",=\"\" serif;\"=\"\">Currículo vitae.</span></p></strong><strong style=\"text-indent: -18pt;\"><p style=\"text-align: left;\"><strong style=\"text-indent: -18pt;\"><span lang=\"ES\" style=\"font-size:12.0pt;\r\nline-height:115%;font-family:\" times=\"\" new=\"\" roman\",serif;mso-fareast-font-family:=\"\" \"times=\"\" roman\"\"=\"\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;i)<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";=\"\" font-weight:=\"\" normal;\"=\"\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span></strong><span lang=\"ES\" style=\"text-indent: -18pt; font-weight: 400; font-size: 12pt; line-height: 115%; font-family: \" times=\"\" new=\"\" roman\",=\"\" serif;\"=\"\">Dos fotos 4x4.</span></p></strong><strong></strong></p><!--[if !supportLists]-->\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p class=\"MsoListParagraphCxSpLast\" align=\"center\" style=\"margin-bottom: 10pt; line-height: 115%; text-align: center;\"><br></p>', '2019-06-19 20:09:54', '2019-06-19 20:17:47'),
(2, 'CAMBIO DE CARRERAS - PARALELAS Y EXENCIÓN DE CARRERAS INTERNAS FACULTATIVAS E INTERFACULTATIVAS', '1560975399_CAMBIO DE CARRERA EN LA MISMA FACULTAD.JPG', '1560975579_REQUISITOS PARA CAMBIO DE CARRERAS - PARALELAS Y EXCENCION DE CARRERAS INTERNAS FACULTATIVAS E INTERFACUTAD.docx', '<p class=\"MsoNormal\"><strong><span lang=\"ES\" style=\"font-size:14.0pt;line-height:107%;font-family:\" calibri=\"\" light\",sans-serif;=\"\" mso-ascii-theme-font:major-latin;mso-hansi-theme-font:major-latin;mso-bidi-theme-font:=\"\" major-latin\"=\"\">PRESENTAR LOS SIGUIENTES DOCUMENTOS</span></strong><strong><span lang=\"ES\" style=\"font-size:18.0pt;line-height:107%;font-family:\r\n\" calibri=\"\" light\",sans-serif;mso-ascii-theme-font:major-latin;mso-hansi-theme-font:=\"\" major-latin;mso-bidi-theme-font:major-latin\"=\"\">:<o:p></o:p></span></strong></p>\r\n\r\n<p class=\"MsoListParagraphCxSpFirst\" style=\"margin-top:0cm;margin-right:0cm;\r\nmargin-bottom:6.0pt;margin-left:46.2pt;mso-add-space:auto;text-align:justify;\r\ntext-indent:-18.0pt;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><strong><span lang=\"ES\" style=\"font-size:12.0pt;\r\nline-height:107%;font-family:\" arial\",sans-serif;mso-fareast-font-family:arial\"=\"\">1.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-weight: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;&nbsp;&nbsp;\r\n</span></span></strong><!--[endif]--><span lang=\"ES\" style=\"font-size:12.0pt;\r\nline-height:107%;font-family:\" arial\",sans-serif\"=\"\">Histórico Académico\r\n(original)&nbsp; <strong><o:p></o:p></strong></span></p>\r\n\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-top:0cm;margin-right:0cm;\r\nmargin-bottom:6.0pt;margin-left:46.2pt;mso-add-space:auto;text-align:justify;\r\ntext-indent:-18.0pt;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><strong><span lang=\"ES\" style=\"font-size:12.0pt;\r\nline-height:107%;font-family:\" arial\",sans-serif;mso-fareast-font-family:arial\"=\"\">2.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-weight: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;&nbsp;&nbsp;\r\n</span></span></strong><!--[endif]--><span lang=\"ES\" style=\"font-size:12.0pt;\r\nline-height:107%;font-family:\" arial\",sans-serif\"=\"\">Avance Académico (original).<strong><o:p></o:p></strong></span></p>\r\n\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-top:0cm;margin-right:0cm;\r\nmargin-bottom:6.0pt;margin-left:46.2pt;mso-add-space:auto;text-align:justify;\r\ntext-indent:-18.0pt;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><strong><span lang=\"ES\" style=\"font-size:12.0pt;\r\nline-height:107%;font-family:\" arial\",sans-serif;mso-fareast-font-family:arial\"=\"\">3.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-weight: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;&nbsp;&nbsp;\r\n</span></span></strong><!--[endif]--><span lang=\"ES\" style=\"font-size:12.0pt;\r\nline-height:107%;font-family:\" arial\",sans-serif\"=\"\">Fotocopia de Carnet de\r\nIdentidad. <strong><o:p></o:p></strong></span></p>\r\n\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-top:0cm;margin-right:0cm;\r\nmargin-bottom:6.0pt;margin-left:46.2pt;mso-add-space:auto;text-align:justify;\r\ntext-indent:-18.0pt;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><strong><span lang=\"ES\" style=\"font-size:12.0pt;\r\nline-height:107%;font-family:\" arial\",sans-serif;mso-fareast-font-family:arial\"=\"\">4.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-weight: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;&nbsp;&nbsp;\r\n</span></span></strong><!--[endif]--><span lang=\"ES\" style=\"font-size:12.0pt;\r\nline-height:107%;font-family:\" arial\",sans-serif\"=\"\">Formulario de Solicitud de\r\nCambio de Carrera -Dpto. Adm. y Registros. <strong><o:p></o:p></strong></span></p>\r\n\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-top:0cm;margin-right:0cm;\r\nmargin-bottom:6.0pt;margin-left:46.2pt;mso-add-space:auto;text-align:justify;\r\ntext-indent:-18.0pt;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><strong><span lang=\"ES\" style=\"font-family:\" arial\",sans-serif;=\"\" mso-fareast-font-family:arial\"=\"\">5.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-weight: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;&nbsp;&nbsp; </span></span></strong><!--[endif]--><span lang=\"ES\" style=\"font-size:12.0pt;line-height:107%;font-family:\" arial\",sans-serif\"=\"\">Si\r\nes aceptado el <strong>Cambio de Carrera a la que\r\npostula</strong> – las convalidaciones serán automáticas si son Carreras dentro de\r\nla misma Facultad</span><span lang=\"ES\" style=\"font-family:\" arial\",sans-serif\"=\"\">.<strong><o:p></o:p></strong></span></p>\r\n\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-top:0cm;margin-right:0cm;\r\nmargin-bottom:6.0pt;margin-left:46.2pt;mso-add-space:auto;text-align:justify;\r\ntext-indent:-18.0pt;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><strong><span lang=\"ES\" style=\"font-family:\" arial\",sans-serif;=\"\" mso-fareast-font-family:arial\"=\"\">6.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-weight: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;&nbsp;&nbsp; </span></span></strong><!--[endif]--><span lang=\"ES\" style=\"font-family:\" arial\",sans-serif\"=\"\">Si el <strong>Cambio de Carrera es Inter-Facultad de la “UAGRM</strong>”. Si son\r\nconvalidables son automáticas y otras (se verificará si corresponde\r\nconvalidación manual). <strong><o:p></o:p></strong></span></p>\r\n\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-top:0cm;margin-right:0cm;\r\nmargin-bottom:6.0pt;margin-left:46.2pt;mso-add-space:auto;text-align:justify;\r\ntext-indent:-18.0pt;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><strong><span lang=\"ES\" style=\"font-family:\" arial\",sans-serif;=\"\" mso-fareast-font-family:arial\"=\"\">7.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-weight: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;&nbsp;&nbsp; </span></span></strong><!--[endif]--><span lang=\"ES\" style=\"font-family:\" arial\",sans-serif\"=\"\">Si fuere <strong>por Exención</strong> será el mismo procedimiento, referente a su\r\nconvalidación, si viene de otra Universidad deberá también presentar sus\r\nprogramas analíticos en original sellado y firmado por su Director de Carrera.<strong><o:p></o:p></strong></span></p>\r\n\r\n<p class=\"MsoListParagraphCxSpLast\" style=\"margin-top:0cm;margin-right:0cm;\r\nmargin-bottom:6.0pt;margin-left:46.2pt;mso-add-space:auto;text-align:justify;\r\ntext-indent:-18.0pt;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><strong><span lang=\"ES\" style=\"font-family:\" arial\",sans-serif;=\"\" mso-fareast-font-family:arial\"=\"\">8.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-weight: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;&nbsp;&nbsp; </span></span></strong><!--[endif]--><span lang=\"ES\" style=\"font-family:\" arial\",sans-serif\"=\"\">En caso de <strong>Traspasos de Carrera de otras Universidades</strong>, seguirán los mismos\r\npasos presentando sus documentos en original, luego de la aceptación de la\r\nsolicitud por los conductos regulares, presentara en impreso sus programas\r\nanalíticos sellado y firmado por su Director de Carrera y Decano.&nbsp;<strong><o:p></o:p></strong></span></p>', '2019-06-19 20:16:39', '2019-06-19 20:21:53'),
(3, 'CASOS ESPECIAL', '1560975879_CASO ESPECIAL.JPG', '1560975878_REQUISITOS PARA CASOS ESPECIALES PARA NIVELACION DE MATERIAS GESTION 2019.docx', '<p class=\"MsoNormal\" style=\"text-align:justify\"><span lang=\"ES\" style=\"font-size:\r\n14.0pt;line-height:107%;font-family:&quot;Arial&quot;,sans-serif\">PRESENTAR LOS\r\nSIGUIENTES REQUISITOS PARA SOLICITAR CASOS ESPECIALES, Y HACERLO DENTRO DE\r\nFECHA ESTABLECIDA: <o:p></o:p></span></p>\r\n\r\n<p class=\"MsoListParagraphCxSpFirst\" style=\"text-align:justify;text-indent:-18.0pt;\r\nmso-list:l0 level1 lfo1\"><strong style=\"text-indent: -18pt;\"><span lang=\"ES\" style=\"font-size:12.0pt;line-height:107%;font-family:\r\n&quot;Arial&quot;,sans-serif;mso-fareast-font-family:Arial\">&nbsp; &nbsp; 1.</span></strong><span lang=\"ES\" style=\"text-indent: -18pt; font-size: 12pt; line-height: 107%; font-family: Arial, sans-serif;\">Carta\r\nde solicitud de casos especiales dirigida al Director de Carrera Lic. Ruddy\r\nSanguino Suarez, especificando las materias solicitadas.</span><br><strong style=\"text-indent: -18pt;\"><span lang=\"ES\" style=\"font-size:12.0pt;line-height:107%;font-family:\r\n&quot;Arial&quot;,sans-serif;mso-fareast-font-family:Arial\">2.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-weight: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp; </span></span></strong><span lang=\"ES\" style=\"text-indent: -18pt; font-size: 12pt; line-height: 107%; font-family: Arial, sans-serif;\">Boleta\r\nde inscripción de materias.</span><br><strong style=\"text-indent: -18pt;\"><span lang=\"ES\" style=\"font-size:12.0pt;line-height:107%;font-family:\r\n&quot;Arial&quot;,sans-serif;mso-fareast-font-family:Arial\">3.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-weight: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp; </span></span></strong><span lang=\"ES\" style=\"text-indent: -18pt; font-size: 12pt; line-height: 107%; font-family: Arial, sans-serif;\">Avance\r\nacadémico.&nbsp;</span><br><strong style=\"text-indent: -18pt;\"><span lang=\"ES\" style=\"font-size:12.0pt;line-height:107%;font-family:\r\n&quot;Arial&quot;,sans-serif;mso-fareast-font-family:Arial\">4.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-weight: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp; </span></span></strong><span lang=\"ES\" style=\"text-indent: -18pt; font-size: 12pt; line-height: 107%; font-family: Arial, sans-serif;\">Histórico\r\nacadémico.</span><br><strong style=\"text-indent: -18pt;\"><span lang=\"ES\" style=\"font-size:12.0pt;line-height:107%;font-family:\r\n&quot;Arial&quot;,sans-serif;mso-fareast-font-family:Arial\">5.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-weight: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp; </span></span></strong><span lang=\"ES\" style=\"text-indent: -18pt; font-size: 12pt; line-height: 107%; font-family: Arial, sans-serif;\">Malla\r\ncurricular de la Carrera.</span><br><strong style=\"text-indent: -18pt;\"><span lang=\"ES\" style=\"font-size:12.0pt;line-height:107%;font-family:\r\n&quot;Arial&quot;,sans-serif;mso-fareast-font-family:Arial\">6.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-weight: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp; </span></span></strong><span lang=\"ES\" style=\"text-indent: -18pt; font-size: 12pt; line-height: 107%; font-family: Arial, sans-serif;\">Fotocopia\r\nde cedula de identidad.</span><br><strong style=\"text-indent: -18pt;\"><span lang=\"ES\" style=\"font-size:12.0pt;line-height:107%;font-family:\r\n&quot;Arial&quot;,sans-serif;mso-fareast-font-family:Arial\">7.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-weight: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp; </span></span></strong><span lang=\"ES\" style=\"text-indent: -18pt; font-size: 12pt; line-height: 107%; font-family: Arial, sans-serif;\">Boleta\r\nde pago de adición de 10 bs.&nbsp;&nbsp;</span><br><!--[if !supportLists]--></p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p class=\"MsoNormal\" style=\"text-align:justify\"><span lang=\"ES\" style=\"font-size:\r\n12.0pt;line-height:107%;font-family:&quot;Arial&quot;,sans-serif\">Nota. - presentar todos\r\nlos requisitos en un folder amarillo, previo análisis minucioso de su malla\r\ncurricular, si corresponde casos especiales o si es inscripción normal, debe\r\nguiarse por su plan de estudios respetando su pre-requisito de cada materia\r\ncomo base para la siguiente, sin saltos de nivel, huecos, ni puentes, (salvo\r\nque sea su última materia por cierre de kardex), se tomara en cuenta capacidad\r\nde aprobación de materias y PPA.&nbsp; &nbsp;<o:p></o:p></span></p>', '2019-06-19 20:24:39', '2019-06-19 20:24:39'),
(4, 'CIERRE DE CARDEX', '1560975976_CIERRE DE CARDEX.jpg', '1560975976_REQUISITOS PARA CIERRE DE CARDEX DE ULTIMAS MATERIAS.docx', '<p class=\"MsoNormal\"><strong><span lang=\"ES\" style=\"font-size:14.0pt;line-height:107%;font-family:&quot;Calibri Light&quot;,sans-serif;\r\nmso-ascii-theme-font:major-latin;mso-hansi-theme-font:major-latin;mso-bidi-theme-font:\r\nmajor-latin\">PRESENTAR LOS SIGUIENTES DOCUMENTOS</span></strong><strong><span lang=\"ES\" style=\"font-size:18.0pt;line-height:107%;font-family:\r\n&quot;Calibri Light&quot;,sans-serif;mso-ascii-theme-font:major-latin;mso-hansi-theme-font:\r\nmajor-latin;mso-bidi-theme-font:major-latin\">:<o:p></o:p></span></strong></p><p class=\"MsoListParagraphCxSpFirst\" style=\"margin-top:0cm;margin-right:0cm;\r\nmargin-bottom:6.0pt;margin-left:46.2pt;mso-add-space:auto;text-align:justify;\r\ntext-indent:-18.0pt;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><span lang=\"ES\" style=\"font-size:12.0pt;line-height:107%;font-family:&quot;Arial&quot;,sans-serif;\r\nmso-fareast-font-family:Arial\">1.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp; </span></span><!--[endif]--><span lang=\"ES\" style=\"font-size:12.0pt;line-height:107%;font-family:&quot;Arial&quot;,sans-serif\">Carta\r\nde Solicitud de Cierre de kardex dirigida al Jefe de Dpto. Adm. y Reg.<o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-top:0cm;margin-right:0cm;\r\nmargin-bottom:6.0pt;margin-left:46.2pt;mso-add-space:auto;text-align:justify;\r\ntext-indent:-18.0pt;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><strong><span lang=\"ES\" style=\"font-size:12.0pt;\r\nline-height:107%;font-family:&quot;Arial&quot;,sans-serif;mso-fareast-font-family:Arial\">2.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-weight: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;\r\n</span></span></strong><!--[endif]--><span lang=\"ES\" style=\"font-size:12.0pt;\r\nline-height:107%;font-family:&quot;Arial&quot;,sans-serif\">Histórico Académico. &nbsp;&nbsp;<strong><o:p></o:p></strong></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-top:0cm;margin-right:0cm;\r\nmargin-bottom:6.0pt;margin-left:46.2pt;mso-add-space:auto;text-align:justify;\r\ntext-indent:-18.0pt;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><strong><span lang=\"ES\" style=\"font-size:12.0pt;\r\nline-height:107%;font-family:&quot;Arial&quot;,sans-serif;mso-fareast-font-family:Arial\">3.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-weight: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;\r\n</span></span></strong><!--[endif]--><span lang=\"ES\" style=\"font-size:12.0pt;\r\nline-height:107%;font-family:&quot;Arial&quot;,sans-serif\">Avance Académico. <strong><o:p></o:p></strong></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-top:0cm;margin-right:0cm;\r\nmargin-bottom:6.0pt;margin-left:46.2pt;mso-add-space:auto;text-align:justify;\r\ntext-indent:-18.0pt;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><strong><span lang=\"ES\" style=\"font-size:12.0pt;\r\nline-height:107%;font-family:&quot;Arial&quot;,sans-serif;mso-fareast-font-family:Arial\">4.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-weight: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;\r\n</span></span></strong><!--[endif]--><span lang=\"ES\" style=\"font-size:12.0pt;\r\nline-height:107%;font-family:&quot;Arial&quot;,sans-serif\">Fotocopia de Carnet de\r\nIdentidad. <strong><o:p></o:p></strong></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-top:0cm;margin-right:0cm;\r\nmargin-bottom:6.0pt;margin-left:46.2pt;mso-add-space:auto;text-align:justify;\r\ntext-indent:-18.0pt;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><strong><span lang=\"ES\" style=\"font-size:12.0pt;\r\nline-height:107%;font-family:&quot;Arial&quot;,sans-serif;mso-fareast-font-family:Arial\">5.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-weight: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;\r\n</span></span></strong><!--[endif]--><span lang=\"ES\" style=\"font-size:12.0pt;\r\nline-height:107%;font-family:&quot;Arial&quot;,sans-serif\">Boleta de Inscripción normal\r\nde materias. <strong><o:p></o:p></strong></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-top:0cm;margin-right:0cm;\r\nmargin-bottom:6.0pt;margin-left:46.2pt;mso-add-space:auto;text-align:justify;\r\ntext-indent:-18.0pt;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><strong><span lang=\"ES\" style=\"font-size:12.0pt;\r\nline-height:107%;font-family:&quot;Arial&quot;,sans-serif;mso-fareast-font-family:Arial\">6.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-weight: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;\r\n</span></span></strong><!--[endif]--><span lang=\"ES\" style=\"font-size:12.0pt;\r\nline-height:107%;font-family:&quot;Arial&quot;,sans-serif\">Detallar en la carta las\r\nmaterias inscritas y las materias por inscribir.<strong><o:p></o:p></strong></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-top:0cm;margin-right:0cm;\r\nmargin-bottom:6.0pt;margin-left:46.2pt;mso-add-space:auto;text-align:justify;\r\ntext-indent:-18.0pt;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><strong><span lang=\"ES\" style=\"font-size:12.0pt;\r\nline-height:107%;font-family:&quot;Arial&quot;,sans-serif;mso-fareast-font-family:Arial\">7.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-weight: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;\r\n</span></span></strong><!--[endif]--><span lang=\"ES\" style=\"font-size:12.0pt;\r\nline-height:107%;font-family:&quot;Arial&quot;,sans-serif\">Como tope máximo hasta 8\r\nmaterias incluida la Modalidad de Graduación, sin cruce de horario de más de\r\ndos asignaturas.<strong><o:p></o:p></strong></span></p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p class=\"MsoListParagraphCxSpLast\" style=\"margin-top:0cm;margin-right:0cm;\r\nmargin-bottom:6.0pt;margin-left:46.2pt;mso-add-space:auto;text-align:justify;\r\ntext-indent:-18.0pt;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><strong><span lang=\"ES\" style=\"font-size:12.0pt;\r\nline-height:107%;font-family:&quot;Arial&quot;,sans-serif;mso-fareast-font-family:Arial\">8.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-weight: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;\r\n</span></span></strong><!--[endif]--><span lang=\"ES\" style=\"font-size:12.0pt;\r\nline-height:107%;font-family:&quot;Arial&quot;,sans-serif\">Con firma de Vº Bº de la\r\nCarrera, luego presentaran en el Campus en las oficinas de Admisiones y\r\nRegistros<strong>.&nbsp;<o:p></o:p></strong></span></p>', '2019-06-19 20:26:16', '2019-06-19 20:26:16'),
(5, 'MESA EXTRAORDINARIA EN CONDICION DE EGRESO', '1560976049_MESA EXTRAORDINARIA EN CONDICION DE EGRESO.JPG', '1560976049_REQUISITOS PARA PROGRAMCACION DE DE MESA EXTRAORDINARIA EN CONDICION DE EGRESO GESTION 2019- ESTUDIANTES.docx', '<p class=\"MsoListParagraphCxSpFirst\" style=\"text-align:justify;text-indent:-18.0pt;\r\nmso-list:l0 level1 lfo1\"><span lang=\"ES\" style=\"text-indent: -18pt; font-size: 12pt; line-height: 107%; font-family: Arial, sans-serif;\">&nbsp; &nbsp;1.&nbsp;</span><span lang=\"ES\" style=\"text-indent: -18pt; font-size: 12pt; line-height: 107%; font-family: Arial, sans-serif;\">Carta de solicitud dirigida al\r\nDirector de Carrera, especificando la asignatura (s) solicitados para el examen\r\nde mesa.</span><br><span lang=\"ES\" style=\"text-indent: -18pt; font-size: 12pt; line-height: 107%; font-family: Arial, sans-serif;\">2.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;\r\n</span></span><span lang=\"ES\" style=\"text-indent: -18pt; font-size: 12pt; line-height: 107%; font-family: Arial, sans-serif;\">&nbsp;Fotocopia simple de CI.</span><br><span lang=\"ES\" style=\"text-indent: -18pt; font-size: 12pt; line-height: 107%; font-family: Arial, sans-serif;\">3.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;\r\n</span></span><span lang=\"ES\" style=\"text-indent: -18pt; font-size: 12pt; line-height: 107%; font-family: Arial, sans-serif;\">&nbsp;Boleta de inscripción en caso de cursos verano</span><br><span lang=\"ES\" style=\"text-indent: -18pt; font-size: 12pt; line-height: 107%; font-family: Arial, sans-serif;\">4.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;\r\n</span></span><span lang=\"ES\" style=\"text-indent: -18pt; font-size: 12pt; line-height: 107%; font-family: Arial, sans-serif;\">Avance Académico</span><br><span lang=\"ES\" style=\"text-indent: -18pt; font-size: 12pt; line-height: 107%; font-family: Arial, sans-serif;\">5.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;\r\n</span></span><span lang=\"ES\" style=\"text-indent: -18pt; font-size: 12pt; line-height: 107%; font-family: Arial, sans-serif;\">No incluye la asignatura de\r\nTrabajo Final de Grado.</span><br><span lang=\"ES\" style=\"text-indent: -18pt; font-size: 12pt; line-height: 107%; font-family: Arial, sans-serif;\">6.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;\r\n</span></span><span lang=\"ES\" style=\"text-indent: -18pt; font-size: 12pt; line-height: 107%; font-family: Arial, sans-serif;\">Presentar en folders amarillo</span><br><!--[if !supportLists]--></p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p class=\"MsoNormal\" style=\"margin-left:18.0pt;text-align:justify\"><span lang=\"ES\" style=\"font-size:12.0pt;line-height:107%;font-family:&quot;Arial&quot;,sans-serif\">Nota.\r\n- <span style=\"color:black;mso-themecolor:text1\">todos aquellos estudiantes que\r\ntengan materias <strong>MAYOR </strong>a dos (2) asignaturas\r\n<strong>no pueden acceder</strong> a este examen me\r\nmesa extraordinaria en condición de egreso, solo aquellos sean sus últimas una\r\n(1) o dos (2) máximo.<o:p></o:p></span></span></p>', '2019-06-19 20:27:29', '2019-06-19 20:27:29');
INSERT INTO `procedimientos` (`id`, `nombre`, `url_img`, `url_document`, `content`, `created_at`, `updated_at`) VALUES
(6, 'CARTAS DE PASANTÍA', '1560976218_pasantias.JPG', '1560976218_REQUISITOS PARA SOLICTAR CARTAS DE PASANTÍAS GESTION 2019.docx', '<p class=\"MsoListParagraphCxSpFirst\" style=\"text-align:justify;text-indent:-18.0pt;\r\nmso-list:l1 level1 lfo2\"><!--[if !supportLists]--><span lang=\"ES\" style=\"font-size:\r\n12.0pt;line-height:107%;font-family:&quot;Arial&quot;,sans-serif;mso-fareast-font-family:\r\nArial\">&nbsp; &nbsp; 1.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span lang=\"ES\" style=\"font-size:12.0pt;\r\nline-height:107%;font-family:&quot;Arial&quot;,sans-serif\">Avance Académico.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"text-align:justify;text-indent:-18.0pt;\r\nmso-list:l1 level1 lfo2\"><!--[if !supportLists]--><span lang=\"ES\" style=\"font-size:\r\n12.0pt;line-height:107%;font-family:&quot;Arial&quot;,sans-serif;mso-fareast-font-family:\r\nArial\">&nbsp; &nbsp; 2.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span lang=\"ES\" style=\"font-size:12.0pt;\r\nline-height:107%;font-family:&quot;Arial&quot;,sans-serif\">Boleta de inscripción (en caso\r\nde tener materias inscritas, incluida la modalidad). <o:p></o:p></span></p>\r\n\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"text-align:justify;text-indent:-18.0pt;\r\nmso-list:l1 level1 lfo2\"><!--[if !supportLists]--><span lang=\"ES\" style=\"font-size:\r\n12.0pt;line-height:107%;font-family:&quot;Arial&quot;,sans-serif;mso-fareast-font-family:\r\nArial\">&nbsp; &nbsp; 3.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span lang=\"ES\" style=\"font-size:12.0pt;\r\nline-height:107%;font-family:&quot;Arial&quot;,sans-serif\">Fotocopia de Carnet de\r\nIdentidad.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoListParagraphCxSpLast\" style=\"text-align:justify;text-indent:-18.0pt;\r\nmso-list:l1 level1 lfo2\"><!--[if !supportLists]--><span lang=\"ES\" style=\"font-size:\r\n12.0pt;line-height:107%;font-family:&quot;Arial&quot;,sans-serif;mso-fareast-font-family:\r\nArial\">&nbsp; &nbsp; 4.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span lang=\"ES\" style=\"font-size:12.0pt;\r\nline-height:107%;font-family:&quot;Arial&quot;,sans-serif\">Indicando lo solicitado, con\r\nsus datos.&nbsp; <o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt\"><strong><span lang=\"ES\" style=\"font-size:12.0pt;\r\nline-height:107%;font-family:&quot;Arial&quot;,sans-serif\">Requisitos a presentar los\r\npasantes en la Entidad<o:p></o:p></span></strong></p>\r\n\r\n<p class=\"MsoListParagraphCxSpFirst\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;\r\nmso-add-space:auto;text-indent:-18.0pt;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><strong><span lang=\"ES\" style=\"font-size:12.0pt;\r\nline-height:107%;font-family:&quot;Arial&quot;,sans-serif;mso-fareast-font-family:Arial\">&nbsp; &nbsp; &nbsp;a)<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-weight: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;\r\n</span></span></strong><!--[endif]--><strong><span lang=\"ES\" style=\"font-size:12.0pt;line-height:107%;font-family:&quot;Arial&quot;,sans-serif\">-</span></strong><span lang=\"ES\" style=\"font-size:12.0pt;line-height:107%;font-family:&quot;Arial&quot;,sans-serif\">Carnet\r\nde Identidad <o:p></o:p></span></p>\r\n\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-bottom:0cm;margin-bottom:\r\n.0001pt;mso-add-space:auto;text-indent:-18.0pt;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><strong><span lang=\"ES\" style=\"font-size:12.0pt;\r\nline-height:107%;font-family:&quot;Arial&quot;,sans-serif;mso-fareast-font-family:Arial\">&nbsp; &nbsp; &nbsp;b)<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-weight: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;\r\n</span></span></strong><!--[endif]--><strong><span lang=\"ES\" style=\"font-size:12.0pt;line-height:107%;font-family:&quot;Arial&quot;,sans-serif\">-</span></strong><span lang=\"ES\" style=\"font-size:12.0pt;line-height:107%;font-family:&quot;Arial&quot;,sans-serif\">Hoja\r\nde vida<strong><o:p></o:p></strong></span></p>\r\n\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-bottom:0cm;margin-bottom:\r\n.0001pt;mso-add-space:auto;text-indent:-18.0pt;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><strong><span lang=\"ES\" style=\"font-size:12.0pt;\r\nline-height:107%;font-family:&quot;Arial&quot;,sans-serif;mso-fareast-font-family:Arial\">&nbsp; &nbsp; &nbsp;c)<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-weight: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;\r\n</span></span></strong><!--[endif]--><strong><span lang=\"ES\" style=\"font-size:12.0pt;line-height:107%;font-family:&quot;Arial&quot;,sans-serif\">-</span></strong><span lang=\"ES\" style=\"font-size:12.0pt;line-height:107%;font-family:&quot;Arial&quot;,sans-serif\">Malla\r\nCurricular<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-bottom:0cm;margin-bottom:\r\n.0001pt;mso-add-space:auto;text-indent:-18.0pt;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><strong><span lang=\"ES\" style=\"font-size:12.0pt;\r\nline-height:107%;font-family:&quot;Arial&quot;,sans-serif;mso-fareast-font-family:Arial\">&nbsp; &nbsp; &nbsp;d)<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-weight: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;\r\n</span></span></strong><!--[endif]--><strong><span lang=\"ES\" style=\"font-size:12.0pt;line-height:107%;font-family:&quot;Arial&quot;,sans-serif\">-</span></strong><span lang=\"ES\" style=\"font-size:12.0pt;line-height:107%;font-family:&quot;Arial&quot;,sans-serif\">Carta\r\nde pasantía<o:p></o:p></span></p>\r\n\r\n<span lang=\"ES\" style=\"font-size:12.0pt;line-height:107%;\r\nfont-family:&quot;Arial&quot;,sans-serif\"><o:p>&nbsp;</o:p></span>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt\"><strong><span lang=\"ES\" style=\"font-size:12.0pt;\r\nline-height:107%;font-family:&quot;Arial&quot;,sans-serif\">&nbsp;Deben de cumplir 340 horas de trabajo <o:p></o:p></span></strong></p>\r\n\r\n<span lang=\"ES\" style=\"font-size:\r\n12.0pt;line-height:107%;font-family:&quot;Arial&quot;,sans-serif\"><o:p>&nbsp;</o:p></span>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align:justify\"><strong><span lang=\"ES\" style=\"font-size:12.0pt;line-height:107%;font-family:\r\n&quot;Arial&quot;,sans-serif\">Nota. -</span></strong><span lang=\"ES\" style=\"font-size:12.0pt;\r\nline-height:107%;font-family:&quot;Arial&quot;,sans-serif\"> Previo a finalizar la\r\npasantía deberán recabar en la Carrera un formulario de Evaluación de Pasantías\r\npara su calificación por el Tutor Empresarial, luego el mismo será presentado a\r\nJefatura de Ingeniería Financiera, para la emisión del certificado de\r\nconclusión de la pasantía.&nbsp;&nbsp;<o:p></o:p></span></p>', '2019-06-19 20:30:18', '2019-06-19 20:30:18'),
(7, 'CERTIFICADOS DE EGRESO - TITULADOS - CONCLUSIÓN DE MATERIAS - ALUMNO REGULAR', '1560976334_TITULACION.jpg', '1560976334_REQUISITOS PARA SOLICTAR CERTIFICADOS DE EGRESO- CONCLUSION DE MATERIAS - ALUMNO REGULAR  GESTION 2019.docx', '<p class=\"MsoListParagraphCxSpFirst\" style=\"margin-left:46.2pt;mso-add-space:\r\nauto;text-align:justify;text-indent:-18.0pt;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><strong><span lang=\"ES\" style=\"font-size:12.0pt;\r\nline-height:107%;font-family:&quot;Arial&quot;,sans-serif;mso-fareast-font-family:Arial\">1.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-weight: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;\r\n</span></span></strong><!--[endif]--><span lang=\"ES\" style=\"font-size:12.0pt;\r\nline-height:107%;font-family:&quot;Arial&quot;,sans-serif\">Avance Académico.<strong><o:p></o:p></strong></span></p>\r\n\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left:46.2pt;mso-add-space:\r\nauto;text-align:justify;text-indent:-18.0pt;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><strong><span lang=\"ES\" style=\"font-size:12.0pt;\r\nline-height:107%;font-family:&quot;Arial&quot;,sans-serif;mso-fareast-font-family:Arial\">2.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-weight: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;\r\n</span></span></strong><!--[endif]--><span lang=\"ES\" style=\"font-size:12.0pt;\r\nline-height:107%;font-family:&quot;Arial&quot;,sans-serif\">Boleta de inscripción y/o\r\n(inscripción de modalidad).<strong><o:p></o:p></strong></span></p>\r\n\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left:46.2pt;mso-add-space:\r\nauto;text-align:justify;text-indent:-18.0pt;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><strong><span lang=\"ES\" style=\"font-size:12.0pt;\r\nline-height:107%;font-family:&quot;Arial&quot;,sans-serif;mso-fareast-font-family:Arial\">3.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-weight: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;\r\n</span></span></strong><!--[endif]--><span lang=\"ES\" style=\"font-size:12.0pt;\r\nline-height:107%;font-family:&quot;Arial&quot;,sans-serif\">Fotocopia de Carnet de\r\nIdentidad. &nbsp;<strong><o:p></o:p></strong></span></p>\r\n\r\n<p class=\"MsoListParagraphCxSpLast\" style=\"margin-left:46.2pt;mso-add-space:auto;\r\ntext-align:justify;text-indent:-18.0pt;mso-list:l0 level1 lfo1\"><!--[if !supportLists]--><strong><span lang=\"ES\" style=\"font-size:12.0pt;\r\nline-height:107%;font-family:&quot;Arial&quot;,sans-serif;mso-fareast-font-family:Arial\">4.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-weight: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;\r\n</span></span></strong><!--[endif]--><span lang=\"ES\" style=\"font-size:12.0pt;\r\nline-height:107%;font-family:&quot;Arial&quot;,sans-serif\">Indicando lo solicitado. (si\r\nel caso fuere por trabajo adj. certificado de trabajo).<strong><o:p></o:p></strong></span></p>', '2019-06-19 20:32:14', '2019-06-19 20:32:14'),
(8, 'CERTIFICADOS DE RECOMENDACIÓN - NACIONAL E INTERNACIÓN', '1560976440_recomendacion.JPG', '1560976440_REQUISITOS PARA SOLICTAR CERTIFICADOS DE RECOMENDACION - NACIONAL E INTERNACION   GESTION 2019.docx', '<p class=\"MsoListParagraphCxSpFirst\" style=\"text-align:justify;text-indent:-18.0pt;\r\nmso-list:l0 level1 lfo1\"><!--[if !supportLists]--><strong><span lang=\"ES\" style=\"font-size:14.0pt;line-height:107%;font-family:\r\n&quot;Arial&quot;,sans-serif;mso-fareast-font-family:Arial\">&nbsp; &nbsp;1.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-weight: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp; </span></span></strong><!--[endif]--><span lang=\"ES\" style=\"font-size:12.0pt;line-height:107%;font-family:&quot;Arial&quot;,sans-serif\">Histórico\r\nAcadémico original.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"text-align:justify;text-indent:-18.0pt;\r\nmso-list:l0 level1 lfo1\"><!--[if !supportLists]--><strong><span lang=\"ES\" style=\"font-size:14.0pt;line-height:107%;font-family:\r\n&quot;Arial&quot;,sans-serif;mso-fareast-font-family:Arial\">&nbsp; &nbsp;2.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-weight: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp; </span></span></strong><!--[endif]--><span lang=\"ES\" style=\"font-size:12.0pt;line-height:107%;font-family:&quot;Arial&quot;,sans-serif\">Avance\r\nAcadémico, (si es titulado original)<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"text-align:justify;text-indent:-18.0pt;\r\nmso-list:l0 level1 lfo1\"><!--[if !supportLists]--><strong><span lang=\"ES\" style=\"font-size:14.0pt;line-height:107%;font-family:\r\n&quot;Arial&quot;,sans-serif;mso-fareast-font-family:Arial\">&nbsp; &nbsp;3.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-weight: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp; </span></span></strong><!--[endif]--><span lang=\"ES\" style=\"font-size:12.0pt;line-height:107%;font-family:&quot;Arial&quot;,sans-serif\">Certificado\r\nde Notas original por Dpto. Adm. y Registros (para Postgrados, Maestrías,\r\nVisas, Trabajo, recomendaciones).<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoListParagraphCxSpLast\" style=\"text-align:justify;text-indent:-18.0pt;\r\nmso-list:l0 level1 lfo1\"><!--[if !supportLists]--><strong><span lang=\"ES\" style=\"font-size:14.0pt;line-height:107%;font-family:\r\n&quot;Arial&quot;,sans-serif;mso-fareast-font-family:Arial\">&nbsp; &nbsp;4.<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-weight: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;</span></span></strong><span lang=\"ES\" style=\"font-size:12.0pt;line-height:107%;font-family:&quot;Arial&quot;,sans-serif\">Adjuntar\r\nFormularios de Postulación impresa de la Institución y/o Empresa a la que se\r\npretende postularse.&nbsp;<o:p></o:p></span></p>', '2019-06-19 20:34:00', '2019-06-19 20:34:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `processes`
--

CREATE TABLE `processes` (
  `id` int(10) UNSIGNED NOT NULL,
  `descripcion` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tiempo` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `processes`
--

INSERT INTO `processes` (`id`, `descripcion`, `tiempo`, `created_at`, `updated_at`) VALUES
(1, 'mantenimiento', 0, '2019-02-23 11:37:58', '2021-01-13 13:36:21'),
(2, 'cableado', 0, '2019-02-26 23:08:50', '2021-01-13 13:36:13'),
(3, 'retiro', 0, '2019-07-30 17:17:07', '2021-01-13 13:36:04'),
(4, 'Intalacion', 0, '2021-01-05 01:06:05', '2021-01-05 01:06:05'),
(5, 'soporte', 0, '2021-01-05 01:06:26', '2021-01-05 01:06:26');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `process_requirement`
--

CREATE TABLE `process_requirement` (
  `id` int(10) UNSIGNED NOT NULL,
  `process_id` int(10) UNSIGNED NOT NULL,
  `requirement_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `process_requirement`
--

INSERT INTO `process_requirement` (`id`, `process_id`, `requirement_id`) VALUES
(2, 1, 3),
(5, 4, 3),
(6, 5, 3),
(7, 6, 3),
(8, 3, 3),
(9, 2, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `receptions`
--

CREATE TABLE `receptions` (
  `tramite_id` int(10) UNSIGNED NOT NULL,
  `solicitante_id` int(10) UNSIGNED NOT NULL,
  `process_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `receptions`
--

INSERT INTO `receptions` (`tramite_id`, `solicitante_id`, `process_id`, `created_at`, `updated_at`) VALUES
(12, 9, 4, '2022-02-15 04:47:24', '2022-02-15 04:47:24'),
(13, 7, 4, '2022-02-15 04:47:42', '2022-02-15 04:47:42'),
(15, 8, 4, '2022-02-16 19:14:14', '2022-02-16 19:14:14'),
(16, 7, 4, '2022-02-17 03:41:49', '2022-02-17 03:41:49'),
(18, 8, 4, '2022-02-17 03:45:14', '2022-02-17 03:45:14'),
(19, 8, 4, '2022-02-17 03:45:41', '2022-02-17 03:45:41'),
(20, 8, 4, '2022-02-17 03:46:19', '2022-02-17 03:46:19'),
(21, 8, 4, '2022-02-17 04:19:00', '2022-02-17 04:19:00'),
(22, 8, 4, '2022-02-17 20:49:41', '2022-02-17 20:49:41'),
(23, 8, 4, '2022-02-18 00:45:43', '2022-02-18 00:45:43'),
(24, 9, 4, '2023-01-08 16:23:07', '2023-01-08 16:23:07');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `requirements`
--

CREATE TABLE `requirements` (
  `id` int(10) UNSIGNED NOT NULL,
  `descripcion` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `requirements`
--

INSERT INTO `requirements` (`id`, `descripcion`, `created_at`, `updated_at`) VALUES
(1, 'Oja de vida', '2019-02-23 11:36:54', '2019-02-23 11:37:40'),
(2, 'Fotocopia de pago bancario', '2019-02-23 11:37:01', '2019-02-23 11:37:01'),
(3, 'Formulario Unico', '2019-02-23 11:37:23', '2019-02-23 11:37:23'),
(4, 'Carta Fisica', '2019-07-30 17:15:32', '2019-07-30 17:15:32');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `special` enum('all-access','no-access') COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `name`, `slug`, `description`, `created_at`, `updated_at`, `special`) VALUES
(1, 'admin', 'admin', 'administrador de web', '2019-01-26 20:00:00', '2019-08-30 17:31:54', 'all-access'),
(2, 'Editor', 'editor', 'Gestor del Proyecto', '2019-01-26 20:00:00', '2022-02-14 18:38:52', NULL),
(13, 'Analista.', 'analista', 'Recepcion', '2019-08-08 14:50:18', '2022-02-14 18:38:42', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `role_user`
--

CREATE TABLE `role_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `role_user`
--

INSERT INTO `role_user` (`id`, `role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2019-01-26 20:00:00', '2019-01-26 20:00:00'),
(11, 1, 8, '2019-07-08 15:32:02', '2019-07-08 15:32:02'),
(12, 2, 9, '2019-07-10 14:20:48', '2019-07-10 14:20:48'),
(14, 13, 10, '2019-08-08 14:50:34', '2019-08-08 14:50:34'),
(17, 2, 3, '2019-08-26 18:31:29', '2019-08-26 18:31:29'),
(18, 2, 2, '2021-01-05 00:06:29', '2021-01-05 00:06:29'),
(19, 2, 4, '2021-01-11 22:14:38', '2021-01-11 22:14:38'),
(20, 2, 5, '2021-01-11 22:14:48', '2021-01-11 22:14:48'),
(21, 2, 6, '2021-01-11 22:14:53', '2021-01-11 22:14:53');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `slide_images`
--

CREATE TABLE `slide_images` (
  `id` int(10) UNSIGNED NOT NULL,
  `url` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `slide_images`
--

INSERT INTO `slide_images` (`id`, `url`, `created_at`, `updated_at`) VALUES
(13, '1550505834_2.PNG', '2019-02-19 08:03:54', '2019-02-19 08:03:54'),
(14, '1550505843_3.png', '2019-02-19 08:04:03', '2019-02-19 08:04:03'),
(15, '1550505850_4.png', '2019-02-19 08:04:10', '2019-02-19 08:04:10'),
(16, '1550505861_5.png', '2019-02-19 08:04:21', '2019-02-19 08:04:21'),
(18, '1550505879_6.png', '2019-02-19 08:04:39', '2019-02-19 08:04:39'),
(20, '1550506235_1.jpg', '2019-02-19 08:10:35', '2019-02-19 08:10:35');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitantes`
--

CREATE TABLE `solicitantes` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellido` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ci` int(11) NOT NULL,
  `telefono` int(11) NOT NULL,
  `direccion` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lat` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lon` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `solicitantes`
--

INSERT INTO `solicitantes` (`id`, `nombre`, `apellido`, `ci`, `telefono`, `direccion`, `lat`, `lon`, `email`, `created_at`, `updated_at`) VALUES
(7, 'Luana', 'Tapia', 8788901, 77888980, 'urb. El Recreo', '-17.882214', '-63.091649', 'luana123@gmail.com', '2021-01-04 22:33:31', '2021-01-11 21:40:00'),
(8, 'jiovanitaa', 'Rojass', 8184778, 77888980, 'Urb. El Recreo Calle 2', '-17.882214', '-63.091649', 'jiouagrm@gmail.com', '2021-01-04 23:16:51', '2021-01-11 15:46:12'),
(9, 'Luismar', 'Pelayo', 8184198, 61368450, 'Urb. El Recreo calle 2', '-17.882214', '-63.091649\r\n', 'luhpe@gmail.com', '2021-01-04 23:17:13', '2021-01-05 00:45:16');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tramites`
--

CREATE TABLE `tramites` (
  `id` int(10) UNSIGNED NOT NULL,
  `tipo` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nromodelo` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombreproyecto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mySavedModel` text COLLATE utf8mb4_unicode_ci,
  `user_id` int(10) UNSIGNED NOT NULL,
  `estado_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tramites`
--

INSERT INTO `tramites` (`id`, `tipo`, `nromodelo`, `nombreproyecto`, `mySavedModel`, `user_id`, `estado_id`, `created_at`, `updated_at`) VALUES
(13, 'Nivel4', 'Publico', 'Primer', '{ \"class\": \"GraphLinksModel\",   \"nodeDataArray\": [ {\"name\":\"Producto\\n\",\"leftArray\":[{\"portId\":\"left0\",\"portColor\":\"#d6effc\"}],\"rightArray\":[],\"topArray\":[],\"bottomArray\":[],\"key\":-1,\"loc\":\"14 -362.59375\"}, {\"name\":\"Compra\",\"leftArray\":[{\"portId\":\"left0\",\"portColor\":\"#d6effc\"}],\"rightArray\":[],\"topArray\":[],\"bottomArray\":[],\"key\":-2,\"loc\":\"158 -276.59375\"}, {\"name\":\"cliente\",\"leftArray\":[{\"portId\":\"left0\",\"portColor\":\"#66d6d1\"}],\"rightArray\":[],\"topArray\":[],\"bottomArray\":[],\"key\":-3,\"loc\":\"-144 -247.59375\"}, {\"name\":\"user\",\"leftArray\":[{\"portId\":\"left0\",\"portColor\":\"#6cafdb\"}],\"rightArray\":[],\"topArray\":[],\"bottomArray\":[],\"key\":-4,\"loc\":\"14 -466.59375\"} ],   \"linkDataArray\": [ {\"from\":-1,\"to\":-2,\"points\":[64,-362.59375,74,-362.59375,76,-362.59375,76,-276.59375,90,-276.59375,100,-276.59375]}, {\"from\":-3,\"to\":-1,\"points\":[-94,-247.59375,-84,-247.59375,-53,-247.59375,-53,-362.59375,-54,-362.59375,-44,-362.59375]}, {\"from\":-4,\"to\":-1,\"points\":[10,-446.59375,10,-436.59375,10,-398.59375,10,-398.59375,10,-392.59375,10,-382.59375]} ]}', 1, 1, '2022-02-15 04:47:42', '2022-02-17 03:16:35'),
(14, 'Nivel1', 'Publico', 'Modelo de iniciando', NULL, 1, 3, '2022-02-15 16:43:00', '2022-02-15 16:43:00'),
(21, 'Derivado', 'Publico', 'para mañana', '{ \"class\": \"GraphLinksModel\",   \"copiesArrays\": true,   \"copiesArrayObjects\": true,   \"linkFromPortIdProperty\": \"fromPort\",   \"linkToPortIdProperty\": \"toPort\",   \"nodeDataArray\": [ {\"key\":2,\"name\":\"cliente\",\"loc\":\"320 152\",\"leftArray\":[{\"portColor\":\"#6cafdb\",\"portId\":\"left0\"},{\"portColor\":\"#66d6d1\",\"portId\":\"left1\"},{\"portColor\":\"#fae3d7\",\"portId\":\"left2\"}],\"topArray\":[{\"portColor\":\"#d6effc\",\"portId\":\"top0\"}],\"bottomArray\":[{\"portColor\":\"#eaeef8\",\"portId\":\"bottom0\"},{\"portColor\":\"#eaeef8\",\"portId\":\"bottom1\"},{\"portColor\":\"#6cafdb\",\"portId\":\"bottom2\"}],\"rightArray\":[]}, {\"key\":3,\"name\":\"compra\",\"loc\":\"384 319\",\"leftArray\":[{\"portColor\":\"#66d6d1\",\"portId\":\"left0\"},{\"portColor\":\"#fadfe5\",\"portId\":\"left1\"},{\"portColor\":\"#6cafdb\",\"portId\":\"left2\"}],\"topArray\":[{\"portColor\":\"#66d6d1\",\"portId\":\"top0\"}],\"bottomArray\":[{\"portColor\":\"#6cafdb\",\"portId\":\"bottom0\"}],\"rightArray\":[]}, {\"key\":4,\"name\":\"producto\",\"loc\":\"138 351\",\"leftArray\":[{\"portColor\":\"#fae3d7\",\"portId\":\"left0\"}],\"topArray\":[{\"portColor\":\"#6cafdb\",\"portId\":\"top0\"}],\"bottomArray\":[{\"portColor\":\"#6cafdb\",\"portId\":\"bottom0\"}],\"rightArray\":[{\"portColor\":\"#6cafdb\",\"portId\":\"right0\"},{\"portColor\":\"#66d6d1\",\"portId\":\"right1\"}]} ],   \"linkDataArray\": [ {\"from\":4,\"to\":2,\"fromPort\":\"top0\",\"toPort\":\"bottom0\",\"points\":[138,323,138,313,138,269.5,310,269.5,310,194,310,180]}, {\"from\":3,\"to\":2,\"fromPort\":\"top0\",\"toPort\":\"bottom1\",\"points\":[384,291,384,277,384,239.5,320,239.5,320,198,320,180]} ]}', 1, 2, '2022-02-17 04:18:59', '2022-02-17 04:21:58'),
(22, 'Nivel4', 'Publico', 'hoy defende', '    { \"class\": \"GraphLinksModel\",   \"nodeDataArray\": [ {\"name\":\"USER\",\"leftArray\":[{\"portId\":\"left0\",\"portColor\":\"#eaeef8\"}],\"rightArray\":[],\"topArray\":[],\"bottomArray\":[],\"key\":-1,\"loc\":\"-42 -117.59375\"}, {\"name\":\"cliente\",\"leftArray\":[{\"portId\":\"left0\",\"portColor\":\"#fadfe5\"}],\"rightArray\":[],\"topArray\":[],\"bottomArray\":[{\"portId\":\"bottom0\",\"portColor\":\"#6cafdb\"},{\"portId\":\"bottom1\",\"portColor\":\"#fae3d7\"}],\"key\":-2,\"loc\":\"-127 16.40625\"}, {\"name\":\"roles\",\"leftArray\":[{\"portId\":\"left0\",\"portColor\":\"#fadfe5\"}],\"rightArray\":[],\"topArray\":[],\"bottomArray\":[{\"portId\":\"bottom0\",\"portColor\":\"#6cafdb\"},{\"portId\":\"bottom1\",\"portColor\":\"#fae3d7\"}],\"key\":-3,\"loc\":\"125 16.40625\"}, {\"name\":\"compra\",\"leftArray\":[{\"portId\":\"left0\",\"portColor\":\"#fadfe5\"}],\"rightArray\":[],\"topArray\":[],\"bottomArray\":[{\"portId\":\"bottom0\",\"portColor\":\"#6cafdb\"},{\"portId\":\"bottom1\",\"portColor\":\"#fae3d7\"}],\"key\":-4,\"loc\":\"-224 123.40625\"} ],   \"linkDataArray\": [ {\"from\":-1,\"to\":-2,\"points\":[-46,-97.59375,-46,-87.59375,-46,-34.59375,-131,-34.59375,-131,-13.59375,-131,-3.59375]}, {\"from\":-3,\"to\":-1,\"points\":[17,20.40625,7,20.40625,7,-34.59375,68,-34.59375,68,-117.59375,58,-117.59375]}, {\"from\":-2,\"to\":-4,\"points\":[-131,44.40625,-131,54.40625,-131,89.90625,-228,89.90625,-228,93.40625,-228,103.40625]} ]}  \r\n', 1, 1, '2022-02-17 20:49:41', '2022-02-17 20:49:41'),
(23, 'Derivado', 'Publico', 'examen verano', '{ \"class\": \"GraphLinksModel\",   \"nodeDataArray\": [ {\"name\":\"USER\",\"leftArray\":[{\"portId\":\"left0\",\"portColor\":\"#eaeef8\"}],\"rightArray\":[],\"topArray\":[],\"bottomArray\":[],\"key\":-1,\"loc\":\"-59 -117.59375\"}, {\"name\":\"abc\",\"leftArray\":[{\"portId\":\"left0\",\"portColor\":\"#fadfe5\"}],\"rightArray\":[],\"topArray\":[],\"bottomArray\":[{\"portId\":\"bottom0\",\"portColor\":\"#6cafdb\"},{\"portId\":\"bottom1\",\"portColor\":\"#fae3d7\"},{\"portId\":\"bottom2\",\"portColor\":\"#ebe3fc\"}],\"key\":-2,\"loc\":\"-127 16.40625\"}, {\"name\":\"roles\",\"leftArray\":[{\"portId\":\"left0\",\"portColor\":\"#fadfe5\"}],\"rightArray\":[],\"topArray\":[],\"bottomArray\":[{\"portId\":\"bottom0\",\"portColor\":\"#6cafdb\"},{\"portId\":\"bottom1\",\"portColor\":\"#fae3d7\"}],\"key\":-3,\"loc\":\"125 16.40625\"}, {\"name\":\"compra\",\"leftArray\":[{\"portId\":\"left0\",\"portColor\":\"#fadfe5\"}],\"rightArray\":[],\"topArray\":[],\"bottomArray\":[{\"portId\":\"bottom0\",\"portColor\":\"#6cafdb\"},{\"portId\":\"bottom1\",\"portColor\":\"#fae3d7\"}],\"key\":-4,\"loc\":\"-224 123.40625\"}, {\"name\":\"User\",\"leftArray\":[],\"rightArray\":[],\"topArray\":[],\"bottomArray\":[],\"key\":-5,\"loc\":\"-46 195.40625\"} ],   \"linkDataArray\": [ {\"from\":-1,\"to\":-2,\"points\":[-63,-97.59375,-63,-87.59375,-63,-34.59375,-131,-34.59375,-131,-13.59375,-131,-3.59375]}, {\"from\":-3,\"to\":-1,\"points\":[17,20.40625,7,20.40625,7,-34.59375,51,-34.59375,51,-117.59375,41,-117.59375]}, {\"from\":-2,\"to\":-4,\"points\":[-131,44.40625,-131,54.40625,-131,89.90625,-228,89.90625,-228,93.40625,-228,103.40625]} ]}', 1, 2, '2022-02-18 00:45:42', '2022-02-18 00:47:22'),
(24, 'Nivel4', 'Publico', 'Primer t', '{ \"class\": \"GraphLinksModel\",   \"nodeDataArray\": [ {\"name\":\"USER\",\"leftArray\":[{\"portId\":\"left0\",\"portColor\":\"#eaeef8\"}],\"rightArray\":[],\"topArray\":[],\"bottomArray\":[],\"key\":-1,\"loc\":\"-42 -117.59375\"}, {\"name\":\"cliente\",\"leftArray\":[{\"portId\":\"left0\",\"portColor\":\"#fadfe5\"}],\"rightArray\":[],\"topArray\":[],\"bottomArray\":[{\"portId\":\"bottom0\",\"portColor\":\"#6cafdb\"},{\"portId\":\"bottom1\",\"portColor\":\"#fae3d7\"}],\"key\":-2,\"loc\":\"-223 29.40625\"}, {\"name\":\"roles\",\"leftArray\":[{\"portId\":\"left0\",\"portColor\":\"#fadfe5\"}],\"rightArray\":[],\"topArray\":[],\"bottomArray\":[{\"portId\":\"bottom0\",\"portColor\":\"#6cafdb\"},{\"portId\":\"bottom1\",\"portColor\":\"#fae3d7\"}],\"key\":-3,\"loc\":\"125 16.40625\"}, {\"name\":\"compra\",\"leftArray\":[{\"portId\":\"left0\",\"portColor\":\"#fadfe5\"}],\"rightArray\":[],\"topArray\":[],\"bottomArray\":[{\"portId\":\"bottom0\",\"portColor\":\"#6cafdb\"},{\"portId\":\"bottom1\",\"portColor\":\"#fae3d7\"}],\"key\":-4,\"loc\":\"33 131.40625\"} ],   \"linkDataArray\": [ {\"from\":-1,\"to\":-2,\"points\":[-150,-117.59375,-160,-117.59375,-160,-28.09375,-113,-28.09375,-113,33.40625,-123,33.40625]}, {\"from\":-3,\"to\":-1,\"points\":[17,20.40625,7,20.40625,7,-34.59375,68,-34.59375,68,-117.59375,58,-117.59375]}, {\"from\":-2,\"to\":-4,\"points\":[-123,33.40625,-113,33.40625,-83,33.40625,-83,135.40625,-85,135.40625,-75,135.40625]} ]}', 1, 1, '2023-01-08 16:23:06', '2023-01-08 16:24:21');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `area_id` int(11) DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `area_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Pelayo Lizarro', 'pelayo123@hotmail.com', '$2y$10$L1K3qsKZjtAs38.IuSWjC.DlfogViQSTNHf/n28CQomCMbRyuydZW', 1, '1Tqwf0m7hngjMPqONk6jZGfj0VrnlXhlE13XLMpLpUOZ7JFxhtsyC4OeuCYn', '2019-01-27 04:52:59', '2019-01-31 14:30:35'),
(2, 'Jiovanita Rojas', 'jiovanita123@gmail.com', '$2y$10$xuMwweSp8W2xv7zoqpr0CuJJFB4iYZTQfm3VpPbNXq0Cgy1H00eLW', 2, 'ryE40KBZMQHRVNCfpbH4jNmS0O9j51G5eDRhZr8bgqgr8Zr8FhWIE4jiMAaR', '2019-01-29 11:56:13', '2019-08-08 15:14:57'),
(3, 'Manuelcito Janco', 'manuelcito123@hotmail.com', '$2y$10$Ka14thHIvxlxuDLM3DiwJO/oPtXyvJvqumeIdglSzdXja4KqK8PQC', 3, 'Y174g84KKN0t2OvHqXH6k0nUD9JgYahT4Ypry4QHBpSgcLLDecmkJI3MSKgF', '2019-01-29 12:31:25', '2019-01-29 12:31:25'),
(4, 'Erikita Garcia', 'erikita123@hotmail.com', '$2y$10$Ka14thHIvxlxuDLM3DiwJO/oPtXyvJvqumeIdglSzdXja4KqK8PQC', 4, '5gsa2qU2NpMHpmgWlZUkUU1abXc4KP51aCgJyaZ1ixenJhtVydyvZAmX5c2e', '2019-01-29 12:31:25', '2019-01-29 12:31:25'),
(5, 'Gabriel Pereira', 'gabriel123@hotmail.com', '$2y$10$Ka14thHIvxlxuDLM3DiwJO/oPtXyvJvqumeIdglSzdXja4KqK8PQC', 5, 'UbBinAsqdrnOUE8TBQx586736jZynjnsDYMKrSlmso9BS2GyYNYt7MOZtMb4', '2019-01-29 12:31:25', '2019-01-29 12:31:25'),
(6, 'Fabricio Oya', 'fabricio123@hotmail.com', '$2y$10$Ka14thHIvxlxuDLM3DiwJO/oPtXyvJvqumeIdglSzdXja4KqK8PQC', 6, '0YO7HugdfspHKBC8m66f6muo2cXFiyWrwpzDAJbaAT9T2MTvDzAD2dkTN8sC', '2019-01-29 12:31:25', '2019-01-29 12:31:25');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `actividads`
--
ALTER TABLE `actividads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `actividads_plan_id_foreign` (`plan_id`);

--
-- Indices de la tabla `actividad_user`
--
ALTER TABLE `actividad_user`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `aeraacademicas`
--
ALTER TABLE `aeraacademicas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `archivos`
--
ALTER TABLE `archivos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `archivos_tramite_id_foreign` (`tramite_id`);

--
-- Indices de la tabla `areaacademicas`
--
ALTER TABLE `areaacademicas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `areas`
--
ALTER TABLE `areas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `bolsa_de_trabajos`
--
ALTER TABLE `bolsa_de_trabajos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cronogramas`
--
ALTER TABLE `cronogramas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cronogramas_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `derivacions`
--
ALTER TABLE `derivacions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `derivacions_area_id_foreign` (`area_id`),
  ADD KEY `derivacions_tramite_id_foreign` (`tramite_id`);

--
-- Indices de la tabla `despachos`
--
ALTER TABLE `despachos`
  ADD PRIMARY KEY (`tramite_id`);

--
-- Indices de la tabla `estados`
--
ALTER TABLE `estados`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `eventos`
--
ALTER TABLE `eventos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `eventos_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `metas`
--
ALTER TABLE `metas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `meta_estrategicas_plan_id_foreign` (`plan_id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `normas`
--
ALTER TABLE `normas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `noticias`
--
ALTER TABLE `noticias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `noticias_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `objetivos`
--
ALTER TABLE `objetivos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `objetivos_plan_id_foreign` (`plan_id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_slug_unique` (`slug`);

--
-- Indices de la tabla `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indices de la tabla `permission_user`
--
ALTER TABLE `permission_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permission_user_permission_id_index` (`permission_id`),
  ADD KEY `permission_user_user_id_index` (`user_id`);

--
-- Indices de la tabla `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `photos_gallery_id_foreign` (`gallery_id`);

--
-- Indices de la tabla `planificacions`
--
ALTER TABLE `planificacions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `planificacions_area_id_foreign` (`area_id`),
  ADD KEY `planificacions_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `procedimientos`
--
ALTER TABLE `procedimientos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `processes`
--
ALTER TABLE `processes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `process_requirement`
--
ALTER TABLE `process_requirement`
  ADD PRIMARY KEY (`id`),
  ADD KEY `process_requirement_process_id_foreign` (`process_id`),
  ADD KEY `process_requirement_requirement_id_foreign` (`requirement_id`);

--
-- Indices de la tabla `receptions`
--
ALTER TABLE `receptions`
  ADD PRIMARY KEY (`tramite_id`),
  ADD KEY `receptions_solicitante_id_foreign` (`solicitante_id`),
  ADD KEY `receptions_process_id_foreign` (`process_id`);

--
-- Indices de la tabla `requirements`
--
ALTER TABLE `requirements`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `requirements_descripcion_unique` (`descripcion`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`),
  ADD UNIQUE KEY `roles_slug_unique` (`slug`);

--
-- Indices de la tabla `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_user_role_id_index` (`role_id`),
  ADD KEY `role_user_user_id_index` (`user_id`);

--
-- Indices de la tabla `slide_images`
--
ALTER TABLE `slide_images`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `solicitantes`
--
ALTER TABLE `solicitantes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `solicitantes_email_unique` (`email`);

--
-- Indices de la tabla `tramites`
--
ALTER TABLE `tramites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tramites_user_id_foreign` (`user_id`),
  ADD KEY `tramites_estado_id_foreign` (`estado_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `actividads`
--
ALTER TABLE `actividads`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `actividad_user`
--
ALTER TABLE `actividad_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `aeraacademicas`
--
ALTER TABLE `aeraacademicas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `archivos`
--
ALTER TABLE `archivos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `areaacademicas`
--
ALTER TABLE `areaacademicas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `areas`
--
ALTER TABLE `areas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `bolsa_de_trabajos`
--
ALTER TABLE `bolsa_de_trabajos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cronogramas`
--
ALTER TABLE `cronogramas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `derivacions`
--
ALTER TABLE `derivacions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `despachos`
--
ALTER TABLE `despachos`
  MODIFY `tramite_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `estados`
--
ALTER TABLE `estados`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `eventos`
--
ALTER TABLE `eventos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `metas`
--
ALTER TABLE `metas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de la tabla `normas`
--
ALTER TABLE `normas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `noticias`
--
ALTER TABLE `noticias`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `objetivos`
--
ALTER TABLE `objetivos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de la tabla `permission_role`
--
ALTER TABLE `permission_role`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT de la tabla `permission_user`
--
ALTER TABLE `permission_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `photos`
--
ALTER TABLE `photos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT de la tabla `planificacions`
--
ALTER TABLE `planificacions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `procedimientos`
--
ALTER TABLE `procedimientos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `processes`
--
ALTER TABLE `processes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `process_requirement`
--
ALTER TABLE `process_requirement`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `receptions`
--
ALTER TABLE `receptions`
  MODIFY `tramite_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `requirements`
--
ALTER TABLE `requirements`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `slide_images`
--
ALTER TABLE `slide_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `solicitantes`
--
ALTER TABLE `solicitantes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `tramites`
--
ALTER TABLE `tramites`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
