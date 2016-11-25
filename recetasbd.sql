-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-11-2016 a las 21:11:30
-- Versión del servidor: 10.1.16-MariaDB
-- Versión de PHP: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `recetasbd`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ingredientes`
--

CREATE TABLE `ingredientes` (
  `p_ingrediente` int(11) NOT NULL,
  `a_receta` int(11) NOT NULL,
  `ingrediente` varchar(100) COLLATE latin1_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `ingredientes`
--

INSERT INTO `ingredientes` (`p_ingrediente`, `a_receta`, `ingrediente`) VALUES
(1, 1, '7-8 tomates'),
(2, 1, 'aceite'),
(3, 1, 'sal');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recetas`
--

CREATE TABLE `recetas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(250) COLLATE latin1_spanish_ci NOT NULL,
  `tiempo` varchar(11) COLLATE latin1_spanish_ci NOT NULL,
  `elaboracion` varchar(350) COLLATE latin1_spanish_ci NOT NULL,
  `tipo` varchar(100) COLLATE latin1_spanish_ci NOT NULL,
  `fechaAnotacion` date NOT NULL,
  `dificultad` int(11) NOT NULL,
  `imagen` varchar(100) COLLATE latin1_spanish_ci NOT NULL,
  `video` varchar(100) COLLATE latin1_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `recetas`
--

INSERT INTO `recetas` (`id`, `nombre`, `tiempo`, `elaboracion`, `tipo`, `fechaAnotacion`, `dificultad`, `imagen`, `video`) VALUES
(1, 'Gazpacho', '40 minutos', 'Coge los tomates(siete u ocho), los pelas, echas aceite, sal, pepino (si te gusta) un poco de sal y a tomar.', 'sopas', '2016-11-02', 4, 'generica.gif', 'todavianada'),
(3, 'Potaje', '1:35 horas', 'Como usted quiera', 'Guiso', '2016-11-17', 2, 'generica.gif', '');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ingredientes`
--
ALTER TABLE `ingredientes`
  ADD PRIMARY KEY (`p_ingrediente`),
  ADD KEY `r` (`a_receta`);

--
-- Indices de la tabla `recetas`
--
ALTER TABLE `recetas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fechaVision` (`fechaAnotacion`),
  ADD KEY `fechaVision_2` (`fechaAnotacion`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `ingredientes`
--
ALTER TABLE `ingredientes`
  MODIFY `p_ingrediente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `recetas`
--
ALTER TABLE `recetas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `ingredientes`
--
ALTER TABLE `ingredientes`
  ADD CONSTRAINT `r` FOREIGN KEY (`a_receta`) REFERENCES `recetas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
