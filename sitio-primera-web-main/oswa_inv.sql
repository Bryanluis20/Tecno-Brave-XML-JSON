-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-12-2022 a las 00:26:59
-- Versión del servidor: 10.4.25-MariaDB
-- Versión de PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `oswa_inv`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE `categories` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(8, 'Componentes'),
(9, 'Computación '),
(7, 'Tecnologia');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `media`
--

CREATE TABLE `media` (
  `id` int(11) UNSIGNED NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `file_type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `media`
--

INSERT INTO `media` (`id`, `file_name`, `file_type`) VALUES
(5, 'Audífonos inalámbricos Sony 1000X.jpg', 'image/jpeg'),
(6, 'co sólido SSD interno Kingston.jpg', 'image/jpeg'),
(7, 'Impresora a color multifunción Epson EcoTank L3210.png', 'image/png'),
(8, 'Laptop Asus E510MA.jpg', 'image/jpeg'),
(9, 'Laptop Asus Vivobook X515j.jpg', 'image/jpeg'),
(10, 'Laptop Huawei Matebook 14.jpg', 'image/jpeg'),
(11, 'Memoria RAM color azul 8GB.jpg', 'image/jpeg'),
(12, 'Ratón Silencioso Inalámbrico.png', 'image/png'),
(13, 'Teclado gamer Redragon.jpg', 'image/jpeg'),
(14, 'Teclado gamer YeYian Serie 2000.jpg', 'image/jpeg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `quantity` varchar(50) DEFAULT NULL,
  `buy_price` decimal(25,2) DEFAULT NULL,
  `sale_price` decimal(25,2) NOT NULL,
  `categorie_id` int(11) UNSIGNED NOT NULL,
  `media_id` int(11) DEFAULT 0,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `name`, `quantity`, `buy_price`, `sale_price`, `categorie_id`, `media_id`, `date`) VALUES
(8, 'Laptop Huawei Matebook 14. La pantalla 2K de 14 pulgadas HUAWEI FullView de HUAWEI MateBook14 , los biseles ultradelgados en los cuatro lados crean una fascinante relación pantalla-cuerpo del 90%2, mientras que la gama de colores 100% sRGB y el brillo', '100', '10999.00', '11000.00', 7, 10, '2022-12-03 23:41:20'),
(9, 'Laptop Asus E510MA.                                        La pantalla peacock blue 15.6&quot;, Intel Celeron N4020  8GB de RAM 128GB SSD 0GB Optane, Intel UHD Graphics 600 1366x768px Windows 10 Home, intel Celeron N4020 8GB de RAM 128GB SSD 0GB Optane, I', '100', '10999.00', '11000.00', 7, 8, '2022-12-03 23:44:36'),
(10, 'Laptop Asus Vivobook X515j.                       pantalla NanoEdge cuenta con amplios ángulos de visión de 178° y un recubrimiento antirreflejos mate para una experiencia verdaderamente atractiva. En el interior, funciona con un procesador Intel® Core™ i', '100', '15999.00', '16000.00', 7, 9, '2022-12-03 23:46:08'),
(11, 'Teclado gamer Redragon.               Este dispositivo tiene teclas antighosting, color rosa, teclado mecánico, 48 teclas, contiene dos cambios de teclas, alimentación de tipo C ', '100', '1153.00', '1200.00', 7, 13, '2022-12-03 23:47:13'),
(12, 'Teclado gamer YeYian Serie 2000.     Este dispositivo tiene teclas antighosting, color negro, teclado mecánico, 48 teclas, contiene dos cambios de teclas, alimentación de tipo C ', '100', '758.00', '760.00', 7, 14, '2022-12-03 23:48:40'),
(13, 'Ratón Silencioso Inalámbrico. Batería: batería garantía de litio recargable, capacidad de la batería: 500 mAh. Resolución fotoeléctrica: interruptor de tres velocidades 800-1200-1600 (ppp) Número de llaves: 4 (llaves) Receptor: conector USB inalámbrico en', '99', '150.00', '150.00', 7, 12, '2022-12-03 23:49:43'),
(14, 'Memoria RAM color azul 8GB. Esta memoria de formato SODIMM y tiene capacidad de 128 GB', '49', '550.00', '550.00', 8, 11, '2022-12-03 23:51:16'),
(15, 'Dissco sólido SSD interno Kingston. Estes disco solido  alcanza velocidades de lectura/escritura de hasta 500MB/seg y 450MB/seg. Por ende, es 10 veces más rápido que un disco duro tradicional.', '150', '700.00', '800.00', 8, 6, '2022-12-03 23:52:21'),
(16, 'Impresora a color multifunción Epson EcoTank L3210. Imprime, escanea y hace copias., tecnología de impresión: inyección de tinta., Tiene entrada USB.', '120', '1550.00', '1700.00', 9, 7, '2022-12-03 23:53:39'),
(17, 'Audífonos inalámbricos Sony 1000X. El diseño over-ear genera una comodidad insuperable gracias a sus suaves almohadillas, fuente de alimentación tipo C.', '297', '1250.00', '1399.00', 9, 5, '2022-12-03 23:55:13');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sales`
--

CREATE TABLE `sales` (
  `id` int(11) UNSIGNED NOT NULL,
  `product_id` int(11) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `price` decimal(25,2) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `sales`
--

INSERT INTO `sales` (`id`, `product_id`, `qty`, `price`, `date`) VALUES
(5, 17, 3, '4197.00', '2022-12-03'),
(6, 14, 1, '550.00', '2022-12-03'),
(7, 13, 1, '150.00', '2022-12-03');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(60) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_level` int(11) NOT NULL,
  `image` varchar(255) DEFAULT 'no_image.jpg',
  `status` int(1) NOT NULL,
  `last_login` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `user_level`, `image`, `status`, `last_login`) VALUES
(1, 'Admin Users', 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 1, 'uo73p5q31.jpg', 1, '2022-12-04 00:04:28'),
(2, 'Special User', 'special', 'ba36b97a41e7faf742ab09bf88405ac04f99599a', 2, 'no_image.jpg', 1, '2022-12-04 00:03:59'),
(3, 'Default User', 'user', '12dea96fec20593566ab75692c9949596833adc9', 3, 'no_image.jpg', 1, '2022-12-04 00:03:30');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_groups`
--

CREATE TABLE `user_groups` (
  `id` int(11) NOT NULL,
  `group_name` varchar(150) NOT NULL,
  `group_level` int(11) NOT NULL,
  `group_status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `user_groups`
--

INSERT INTO `user_groups` (`id`, `group_name`, `group_level`, `group_status`) VALUES
(1, 'Admin', 1, 1),
(2, 'Special', 2, 1),
(3, 'User', 3, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `categorie_id` (`categorie_id`),
  ADD KEY `media_id` (`media_id`);

--
-- Indices de la tabla `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `user_level` (`user_level`);

--
-- Indices de la tabla `user_groups`
--
ALTER TABLE `user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `group_level` (`group_level`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `media`
--
ALTER TABLE `media`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `user_groups`
--
ALTER TABLE `user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `FK_products` FOREIGN KEY (`categorie_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `SK` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `FK_user` FOREIGN KEY (`user_level`) REFERENCES `user_groups` (`group_level`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
