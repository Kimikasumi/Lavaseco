-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-07-2019 a las 19:53:27
-- Versión del servidor: 10.1.40-MariaDB
-- Versión de PHP: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `form_factura`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ingreso_data`
--

CREATE TABLE `ingreso_data` (
  `fecha` datetime(6) NOT NULL,
  `numero_factura` int(155) NOT NULL,
  `nombre` varchar(155) COLLATE utf8mb4_spanish_ci NOT NULL,
  `direccion` varchar(155) COLLATE utf8mb4_spanish_ci NOT NULL,
  `cantidad1` int(155) NOT NULL,
  `prenda1` varchar(155) COLLATE utf8mb4_spanish_ci NOT NULL,
  `observaciones1` varchar(155) COLLATE utf8mb4_spanish_ci NOT NULL,
  `valor1` int(155) NOT NULL,
  `cantidad2` int(155) NOT NULL,
  `prenda2` varchar(155) COLLATE utf8mb4_spanish_ci NOT NULL,
  `observaciones2` varchar(155) COLLATE utf8mb4_spanish_ci NOT NULL,
  `valor2` int(155) NOT NULL,
  `cantidad3` int(155) NOT NULL,
  `prenda3` varchar(155) COLLATE utf8mb4_spanish_ci NOT NULL,
  `observaciones3` varchar(155) COLLATE utf8mb4_spanish_ci NOT NULL,
  `valor3` int(155) NOT NULL,
  `cantidad4` int(155) NOT NULL,
  `prenda4` varchar(155) COLLATE utf8mb4_spanish_ci NOT NULL,
  `observaciones4` varchar(155) COLLATE utf8mb4_spanish_ci NOT NULL,
  `valor4` int(155) NOT NULL,
  `cantidad5` int(155) NOT NULL,
  `prenda5` varchar(155) COLLATE utf8mb4_spanish_ci NOT NULL,
  `observaciones5` varchar(155) COLLATE utf8mb4_spanish_ci NOT NULL,
  `valor5` int(155) NOT NULL,
  `fecha_retiro_parcial1` datetime(6) NOT NULL,
  `fecha_retiro_parcial2` datetime(6) NOT NULL,
  `fecha_retiro_parcial3` datetime(6) NOT NULL,
  `fecha_retiro_parcial4` datetime(6) NOT NULL,
  `fecha_retiro_parcial5` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
