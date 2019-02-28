-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 28-02-2019 a las 06:26:15
-- Versión del servidor: 5.7.23
-- Versión de PHP: 7.1.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `crud`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id_producto` int(11) NOT NULL,
  `nombre_producto` varchar(250) NOT NULL,
  `cantidad_producto` double NOT NULL,
  `precio_producto` double NOT NULL,
  `fecha_crear` date NOT NULL,
  `fecha_actualizar` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id_producto`, `nombre_producto`, `cantidad_producto`, `precio_producto`, `fecha_crear`, `fecha_actualizar`) VALUES
(1, 'Arroz', 2, 10, '2019-02-25', '2019-02-27'),
(2, 'Caraota', 1, 200, '2019-02-25', '2019-02-25'),
(3, 'Televisor LCD', 10, 9000, '2019-02-26', '2019-02-28'),
(4, 'Lentejas', 2, 300, '2019-02-26', '2019-02-26'),
(6, 'Pasta de Dientes', 10, 10, '2019-02-27', '2019-02-27'),
(8, 'Pollo', 10, 150, '2019-02-27', '2019-02-27'),
(9, 'Laptop', 10, 20000, '2019-02-28', '2019-02-28'),
(10, 'eliminame', 12, 12, '2019-02-28', '2019-02-28');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id_producto`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
