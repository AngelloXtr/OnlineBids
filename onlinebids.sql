-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-01-2018 a las 10:54:02
-- Versión del servidor: 10.1.29-MariaDB
-- Versión de PHP: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `onlinebids`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `billete`
--

CREATE TABLE `billete` (
  `lote` varchar(255) NOT NULL,
  `valor` float(10,0) NOT NULL,
  `fecha` date DEFAULT NULL,
  `lugar_emision` varchar(55) NOT NULL,
  `fecha_emision` date DEFAULT NULL,
  `serie` varchar(55) NOT NULL,
  `conservacion` varchar(3) NOT NULL,
  `precio` float(10,0) NOT NULL,
  `foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `billete`
--

INSERT INTO `billete` (`lote`, `valor`, `fecha`, `lugar_emision`, `fecha_emision`, `serie`, `conservacion`, `precio`, `foto`) VALUES
('2', 4512, '1995-01-02', 'Madrid', '1995-01-02', 'anx', 'MB', 123, 'C:/Users/angel/AppData/Roaming/NetBeans/8.2/config/GF_4.1.1/domain1/config/coins.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `puja`
--

CREATE TABLE `puja` (
  `id_puja` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `lote` int(11) DEFAULT NULL,
  `fecha` date NOT NULL,
  `puja` decimal(10,2) DEFAULT NULL,
  `id_subasta` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `puja`
--

INSERT INTO `puja` (`id_puja`, `username`, `lote`, `fecha`, `puja`, `id_subasta`) VALUES
(12, 'a', 12, '2017-12-01', '21.20', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subasta`
--

CREATE TABLE `subasta` (
  `id_subasta` varchar(255) NOT NULL,
  `lote` varchar(255) NOT NULL,
  `tiempo` date NOT NULL,
  `estado` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `subasta`
--

INSERT INTO `subasta` (`id_subasta`, `lote`, `tiempo`, `estado`) VALUES
('01', '2', '0000-00-00', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `nombre` varchar(24) NOT NULL,
  `apellidos` varchar(24) NOT NULL,
  `email` varchar(55) NOT NULL,
  `username` varchar(24) NOT NULL,
  `pass` varchar(24) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`nombre`, `apellidos`, `email`, `username`, `pass`) VALUES
('a', 'a', 'a', 'a', 'a'),
('qwe', 'qwer', 'a', 'aqwer', 'a'),
('a', 'a', 'a', 'aqwerqwre', 'a'),
('David', 'Gutierrez', 'david@gmail.com', 'David', 'asd');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `billete`
--
ALTER TABLE `billete`
  ADD PRIMARY KEY (`lote`);

--
-- Indices de la tabla `subasta`
--
ALTER TABLE `subasta`
  ADD PRIMARY KEY (`id_subasta`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
