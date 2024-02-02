-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-11-2020 a las 22:29:46
-- Versión del servidor: 10.1.38-MariaDB
-- Versión de PHP: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `instagramf`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comments`
--

CREATE TABLE `comments` (
  `id` int(255) NOT NULL,
  `user_id` int(255) NOT NULL,
  `image_id` int(255) NOT NULL,
  `content` text NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `image_id`, `content`, `created_at`, `updated_at`) VALUES
(3, 2, 4, 'buena foto ', '2020-06-23 15:39:52', '2020-06-23 15:39:52'),
(6, 4, 5, 'que hermoso carro', '2020-07-25 11:59:24', '2020-07-25 11:59:24');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `images`
--

CREATE TABLE `images` (
  `id` int(255) NOT NULL,
  `user_id` int(255) NOT NULL,
  `image_path` varchar(255) NOT NULL,
  `description` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `images`
--

INSERT INTO `images` (`id`, `user_id`, `image_path`, `description`, `created_at`, `updated_at`) VALUES
(2, 1, '1599337281images (3).jpg', 'infancia es infancia, siempre se disfrutó', '2020-06-23 15:36:25', '2020-09-05 15:21:21'),
(3, 1, '1599337360descarga (1).jpg', 'imagen de relleno no soy un otaku marica', '2020-06-23 15:36:25', '2020-09-05 15:22:40'),
(4, 3, '1599336147IMG_20180607_085042.jpg', 'la buseta de mi esposo, de su antiguo trabajo', '2020-06-23 15:36:26', '2020-09-05 15:02:27'),
(5, 4, '1599329767Lamborghini_Veneno_1  prueba de fotoshop.jpg', 'mi primera imagen subida y buen carro', '2020-07-01 01:55:41', '2020-09-05 13:16:07'),
(6, 4, '1599335808images.jpg', 'carro de lujo', '2020-07-01 01:56:36', '2020-09-05 14:56:48'),
(8, 4, '1599335899images (1).jpg', 'un carrazo que por ahora no se podra', '2020-07-01 21:18:59', '2020-09-05 14:58:19'),
(9, 5, '1599336607descarga (2).jpg', 'me encantan las motos', '2020-07-25 12:24:20', '2020-09-05 15:10:07'),
(11, 6, '1596326778logo.png', NULL, '2020-08-01 19:06:18', '2020-08-01 19:06:18'),
(12, 6, '1599338117images (2).jpg', 'ya me imagibno en una casa de estas :)', '2020-09-05 15:35:17', '2020-09-05 15:35:17');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `likes`
--

CREATE TABLE `likes` (
  `id` int(255) NOT NULL,
  `user_id` int(255) NOT NULL,
  `image_id` int(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `likes`
--

INSERT INTO `likes` (`id`, `user_id`, `image_id`, `created_at`, `updated_at`) VALUES
(1, 1, 4, '2020-06-23 15:43:10', '2020-06-23 15:43:10'),
(2, 2, 4, '2020-06-23 15:43:10', '2020-06-23 15:43:10'),
(4, 3, 2, '2020-06-23 15:43:10', '2020-06-23 15:43:10'),
(8, 4, 5, '2020-07-25 11:56:03', '2020-07-25 11:56:03'),
(10, 4, 8, '2020-07-25 11:58:41', '2020-07-25 11:58:41'),
(12, 6, 11, '2020-09-05 15:35:57', '2020-09-05 15:35:57'),
(13, 6, 9, '2020-09-05 15:36:00', '2020-09-05 15:36:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(255) NOT NULL,
  `role` varchar(20) NOT NULL DEFAULT 'user',
  `name` varchar(100) NOT NULL,
  `surname` varchar(200) NOT NULL,
  `nick` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `remember_token` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `role`, `name`, `surname`, `nick`, `email`, `password`, `image`, `created_at`, `updated_at`, `remember_token`) VALUES
(1, 'user', 'Fran', 'charris Camargo', 'mr.proelite', 'fran@gmail.com', '$2y$10$pMQpni54OmSCwsO5L7ENPu1H/J942BjmUeEvogfYtFg2fuvFk1oYS', '1599337199otro arbol de prueba.jpg', '2020-06-23 15:28:14', '2020-09-05 15:19:59', NULL),
(2, 'user', 'santi', 'charris Camargo', 'mr.santi', 'santi@gmail.com', '$2y$10$.oPWwJEXCfuurV/PzNKwVe/gEdRDvCBM7v45X5R4d8UGoxneDBTLO', '1599336337descarga.jpg', '2020-06-23 15:30:55', '2020-09-05 15:05:37', NULL),
(3, 'user', 'mirian', 'Camargo', 'mami', 'mirian@gmail.com', '$2y$10$8SKmP4rGjI4zp7wQ3GGrW.giwzk5mBDjKS5pSs94w6I/hmphylhWO', '1599336081IMG_20171224_232146.jpg', '2020-06-23 15:30:55', '2020-09-05 15:01:21', NULL),
(4, 'user', 'Admin fran', 'cc admin', 'adminF', 'admin@gmail.com', '$2y$10$406kE1laMtPBJO7ESnLFyu2c1CdJOw.FUvinwnbrqY5IvHbNu13Nu', '1599329694arbol prueba de fotshop.jpg', '2020-06-25 22:38:50', '2020-09-05 13:14:54', '4H3O11UuJOUpDY45yiUWwkGq2hdO8Pwh8znrevMDZFOoQJU74P62oX0eOMI3'),
(5, 'user', 'Francisco Rafael', 'Charris Camargo', 'Francisco', 'francisco@gmail.com', '$2y$10$1xCUzy04.hMuq3fJh5mOuuZxMtkWJU8woSDVj7.NMSD3T1kVD.B/C', '1599336561IMG_20171231_221740342_HDR.jpg', '2020-06-26 00:16:03', '2020-09-05 15:09:21', NULL),
(6, 'user', 'pepe f', 'pepe s', 'pepefmfs', 'pepe@gmail.com', '$2y$10$HoBriKnxB.3IeUEKUePsbeQTXN/u8jNBU9j1dUOra8N5GK.hNZCRO', '1599337965bienvenidos-a-puntomeme.jpg', '2020-08-01 19:01:42', '2020-09-05 15:32:45', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `image_id` (`image_id`);

--
-- Indices de la tabla `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indices de la tabla `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `image_id` (`image_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `images`
--
ALTER TABLE `images`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`image_id`) REFERENCES `images` (`id`);

--
-- Filtros para la tabla `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `images_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `likes`
--
ALTER TABLE `likes`
  ADD CONSTRAINT `likes_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `likes_ibfk_2` FOREIGN KEY (`image_id`) REFERENCES `images` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
