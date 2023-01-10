-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-12-2022 a las 16:14:08
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `hilotext`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresas`
--

CREATE TABLE `empresas` (
  `documento` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `direccion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `celular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `correo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idServicio` bigint(20) UNSIGNED NOT NULL,
  `contraseña` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `empresas`
--

INSERT INTO `empresas` (`documento`, `nombre`, `direccion`, `celular`, `correo`, `idServicio`, `contraseña`, `descripcion`, `foto`, `created_at`, `updated_at`) VALUES
('6082761882', 'Centro textil s a s', 'carrera 3 N 13 A 49,ibague Tolima', '6082761882', 'centroTextil@gmail.com', 2, '1234', 'Fabricamos y comercializamos prendas de vestir en establecimientos especializados', 'uploads/tPgeA1JwWFjJuXhING4KL9PhkhUPMnULHFnCKF16.jpg', NULL, NULL),
('8090041595', 'Textiles Janeth', 'calle 38 N 4 B 08 ibague tolima', '3174359842', 'textilesJAnet@gmail.com', 3, '1234', 'fabricacion de prendas de vestir y comercialización  al por menor', 'uploads/jt55ayKfRpfUcJRo88uaFNTTGBaWEAC02xqDOZ3u.jpg', NULL, NULL),
('8305113206', 'textiles y compania', 'calle 13 N 2 34,ibague,tolima', '3132834066', 'compani34@gmail.com', 2, '1234', 'hacemos vínculos con empresas en la elaboración de camisas', 'uploads/ghTbVhO0PyrbcNFvfwOh2HA1Sqpi0Z4Rwo1zPXJB.jpg', NULL, NULL),
('8907035093', 'Textiles la tercera Ltda', 'ccarera 3 N 13 30, ibague, tolima', '6082614212', 'Textiles3@gmail.com', 2, '1234', 'Mi empresa esta dispuesta a tener convenios con otras empresas y fabricación de todo tipo de prendas de vestir', 'uploads/yWwoHTLaWedIxBBMkAPKPPvqawqptyDkRyu3RbkU.jpg', NULL, NULL),
('9007730635', 'textiles hanna slim', 'calle 61 C N 19 23, Ibagué Tolima', '3147975182', 'textileshanna@gmail.com', 5, '1234', 'confeccion de prendas de vestir excepto prendas de pie, requerimos personal 2 años de experiencia como minimo', 'uploads/U7Nb29bPCgRw8HJubLIIVegD6dLyBh1cshwLlT9C.jpg', NULL, NULL),
('9009293251', 'Vip Moda Textil s a s', 'Trasversal 1 sur N 44 229 ZN Industrial El papayo,Ibague,Tolima', '6082770161', 'moda23VIp@gmail.com', 2, '1234', 'Confección de prendas de vestir Excepto prenda de piel y hacemos Convenios con empresas', 'uploads/zEv3JXXsp1ERsctKnDTJ9WyiWObDTvFUb3fv6RfQ.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_11_29_115719_create_servicio_emps_table', 1),
(6, '2022_11_29_115952_create_empresas_table', 1),
(7, '2022_11_29_120029_create_rep_legals_table', 1),
(8, '2022_11_29_132752_create_servicio_opes_table', 1),
(9, '2022_11_29_132851_create_operarios_table', 1),
(10, '2022_11_29_132917_create_servicio_tecs_table', 1),
(11, '2022_11_29_133011_create_tecnicos_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `operarios`
--

CREATE TABLE `operarios` (
  `documento` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `celular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `correo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idServicio` bigint(20) UNSIGNED NOT NULL,
  `contraseña` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `operarios`
--

INSERT INTO `operarios` (`documento`, `nombre`, `celular`, `correo`, `idServicio`, `contraseña`, `descripcion`, `foto`, `created_at`, `updated_at`) VALUES
('1005839781', 'María león', '3152005919', 'marialeon@gmail.com', 1, '1234', 'Me especializo en maquina plana busco trabajo  tengo 10 años de experiencia', 'uploads/HDgNrNJKWJ6270hbnaH9AWvgXKQkkjNlsp1Sbhoe.jpg', NULL, NULL),
('1005839783', 'Alejandra Garcia', '3152005919', 'Alendra@gmail.com', 4, '1234', 'Me especializo en maquina dos agujas busco trabajo  en empresa cerca a la Pola tengo 5 años de experiencia', 'uploads/563tnLXYIcoYhugKQGRthFYC6kRP7cTUjtYjAWhV.jpg', NULL, NULL),
('1005839784', 'Sandra milena', '3152005919', 'sandramilena@gmail.com', 3, '1234', 'Soy practicante del Sena busco hacer practicas en una empresa me especializo en collarín quiero conseguir experiencia laborar y tener la oportunidad de aprender mas', 'uploads/o4vDpGY0gp83sxKjqnywKZ7SryRicmJX2nSVScSc.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rep_legals`
--

CREATE TABLE `rep_legals` (
  `documento` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `celular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `correo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idEmpresa` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `rep_legals`
--

INSERT INTO `rep_legals` (`documento`, `nombre`, `celular`, `correo`, `idEmpresa`, `created_at`, `updated_at`) VALUES
('1005839776', 'Jose david caicedo', '3152005919', 'jose34caicedo@gmail.com', '9009293251', NULL, NULL),
('1005839780', 'Kevin Alejandro', '3152005919', 'stiven001garcia@gmail.com', '8090041595', NULL, NULL),
('1005839782', 'jaider stiven', '3152005919', 'stiven001garcia@gmail.com', '9007730635', NULL, NULL),
('1005839784', 'Alejandro Garcia', '3152005919', 'kevin236@gmail.com', '8305113206', NULL, NULL),
('1005839785', 'Sergio Acevedo', '3152005919', 'sergio45@gmail.com', '8090041595', NULL, NULL),
('1005839788', 'Samuel lozano', '3152005919', 'Samuel@gmail.com', '8907035093', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicio_emps`
--

CREATE TABLE `servicio_emps` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombreServicio` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `servicio_emps`
--

INSERT INTO `servicio_emps` (`id`, `nombreServicio`, `created_at`, `updated_at`) VALUES
(1, 'Servicio completo de corte', NULL, NULL),
(2, 'Servicio completo de confeccion', NULL, NULL),
(3, 'Servicio completo de empaque', NULL, NULL),
(4, 'Servicio de confección tela en tejido de plano para camisas \n', NULL, NULL),
(5, 'Servicio de confección tela en tejido de puntos para busos', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicio_opes`
--

CREATE TABLE `servicio_opes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombreServicio` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `servicio_opes`
--

INSERT INTO `servicio_opes` (`id`, `nombreServicio`, `created_at`, `updated_at`) VALUES
(1, 'Operario de maquina plana', NULL, NULL),
(2, 'Operario de fileteadora', NULL, NULL),
(3, 'Operario de collarin', NULL, NULL),
(4, 'Operario dos agujas', NULL, NULL),
(5, 'Operario encintadora', NULL, NULL),
(6, 'Operario abotonadora', NULL, NULL),
(7, 'Operario ojáladora', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicio_tecs`
--

CREATE TABLE `servicio_tecs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombreServicio` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `servicio_tecs`
--

INSERT INTO `servicio_tecs` (`id`, `nombreServicio`, `created_at`, `updated_at`) VALUES
(1, 'Arreglo de maquina plana', NULL, NULL),
(2, 'Mantenimiento general de maquinaria textil', NULL, NULL),
(3, 'Mantenimiento especializado a maquina fileteadora', NULL, NULL),
(4, 'Mantenimiento de maquina encintadora', NULL, NULL),
(5, 'Mantenimiento maquina abotonadora', NULL, NULL),
(6, 'Mantenimiento maquina filetiadora', NULL, NULL),
(7, 'Mantenimiento maquina ojáladora', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tecnicos`
--

CREATE TABLE `tecnicos` (
  `documento` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `celular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `correo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idServicio` bigint(20) UNSIGNED NOT NULL,
  `contraseña` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tecnicos`
--

INSERT INTO `tecnicos` (`documento`, `nombre`, `celular`, `correo`, `idServicio`, `contraseña`, `descripcion`, `foto`, `created_at`, `updated_at`) VALUES
('1005839770', 'Kevin Andrés Pérez', '3152005919', 'kevin@gmail.com', 2, '1234', 'me desempeño en mantenimiento de todo tipo de maquina textil', 'uploads/cMc3zFZ4eSfBQs7FeTixXIwWtzOS3APJqY5cNVYQ.jpg', NULL, NULL),
('1005839771', 'Mario  Guzman', '3152005919', 'marioG@gmail.com', 5, '1234', 'Realizo el mantenimiento de maquina abotonadora y busco quedarme en una sola empresa', 'uploads/kiLYvbDjcNPyrtZIXU1qr0riVNKfp2LZr2vRrgDx.jpg', NULL, NULL),
('1005839772', 'Felipe Zubieta', '3152005919', 'felipe23@gmail.com', 6, '1234', 'Realizo mantenimiento en maquina filetiadora trabajo por prestaciones de servicio', 'uploads/mg5e8e4HsnjJRTomP17kMPhb7J9a8C2Bd7aq7Uqy.jpg', NULL, NULL),
('1005839773', 'Miguel Alfonso Pérez', '3152005919', 'Miguel@gmail.com', 4, '1234', 'Elabora el mantenimiento  en maquinas encintadoras trabajo por horas busco también aprender mas en empresas que quieran capacitarme', 'uploads/AFvWhUqoqy9ST8qKjcYS4E62mOAPNQ5VR0TiF73e.jpg', NULL, NULL),
('1005839774', 'Andres Esneider', '3152005919', 'Esneideran@gmail.com', 7, '1234', 'Busco empresa para hacerles mantenimiento en maquina ojaladora tener sueldo fijo', 'uploads/CtSM38RTRGGnSzS72jZLDMXVUJ01yom7RRgKrtIx.jpg', NULL, NULL),
('1005839776', 'Samuel Garcia', '3152005919', 'SGarcia@gmail.com', 2, '1234', 'Realizo mantenimiento general de todo tipo de maquina plana trabajo por prestaciones de servicios', 'uploads/WK87JWnZn1gb4BxOj1x04eV6luiX5JI8tP69UkQ6.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'John Bernal', 'johnbernalsierra@gmail.com', NULL, 'nicol0602', NULL, NULL, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `empresas`
--
ALTER TABLE `empresas`
  ADD PRIMARY KEY (`documento`),
  ADD KEY `empresas_idservicio_foreign` (`idServicio`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `operarios`
--
ALTER TABLE `operarios`
  ADD PRIMARY KEY (`documento`),
  ADD KEY `operarios_idservicio_foreign` (`idServicio`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `rep_legals`
--
ALTER TABLE `rep_legals`
  ADD PRIMARY KEY (`documento`),
  ADD KEY `rep_legals_idempresa_foreign` (`idEmpresa`);

--
-- Indices de la tabla `servicio_emps`
--
ALTER TABLE `servicio_emps`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `servicio_opes`
--
ALTER TABLE `servicio_opes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `servicio_tecs`
--
ALTER TABLE `servicio_tecs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tecnicos`
--
ALTER TABLE `tecnicos`
  ADD PRIMARY KEY (`documento`),
  ADD KEY `tecnicos_idservicio_foreign` (`idServicio`);

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
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `servicio_emps`
--
ALTER TABLE `servicio_emps`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `servicio_opes`
--
ALTER TABLE `servicio_opes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `servicio_tecs`
--
ALTER TABLE `servicio_tecs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `empresas`
--
ALTER TABLE `empresas`
  ADD CONSTRAINT `empresas_idservicio_foreign` FOREIGN KEY (`idServicio`) REFERENCES `servicio_emps` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `operarios`
--
ALTER TABLE `operarios`
  ADD CONSTRAINT `operarios_idservicio_foreign` FOREIGN KEY (`idServicio`) REFERENCES `servicio_opes` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `rep_legals`
--
ALTER TABLE `rep_legals`
  ADD CONSTRAINT `rep_legals_idempresa_foreign` FOREIGN KEY (`idEmpresa`) REFERENCES `empresas` (`documento`) ON DELETE CASCADE;

--
-- Filtros para la tabla `tecnicos`
--
ALTER TABLE `tecnicos`
  ADD CONSTRAINT `tecnicos_idservicio_foreign` FOREIGN KEY (`idServicio`) REFERENCES `servicio_tecs` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
