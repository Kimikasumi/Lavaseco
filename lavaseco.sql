-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 11, 2020 at 01:35 AM
-- Server version: 10.4.12-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lavaseco`
--

-- --------------------------------------------------------

--
-- Table structure for table `cliente`
--

CREATE TABLE `cliente` (
  `cod_cliente` bigint(20) NOT NULL,
  `nom_cliente` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `direccion` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `telefono` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `cliente`
--

INSERT INTO `cliente` (`cod_cliente`, `nom_cliente`, `direccion`, `telefono`) VALUES
(1034642, 'Javier Gonzales Lopez', 'Cr 19 # 08-32', '5563453'),
(41578934, 'Mariela Rojas Rincon', 'Diagonal 43 B 56-21', '9454645'),
(52106653, 'Claudia Maria Martinez Roncancio', 'Av Cll 100 # 52-18', '4231342');

-- --------------------------------------------------------

--
-- Table structure for table `estado`
--

CREATE TABLE `estado` (
  `cod_estado` int(11) NOT NULL,
  `nom_estado` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `estado`
--

INSERT INTO `estado` (`cod_estado`, `nom_estado`) VALUES
(1, 'Por Entregar'),
(2, 'Entregado');

-- --------------------------------------------------------

--
-- Table structure for table `factura`
--

CREATE TABLE `factura` (
  `cod_factura` bigint(20) NOT NULL,
  `fecha` date DEFAULT NULL,
  `observaciones` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `valor_total` bigint(20) DEFAULT NULL,
  `cod_estado` int(11) DEFAULT NULL,
  `cod_cliente` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `factura`
--

INSERT INTO `factura` (`cod_factura`, `fecha`, `observaciones`, `valor_total`, `cod_estado`, `cod_cliente`) VALUES
(1, '2020-08-20', 'Ropa muy desgastada', 10000, 1, 41578934),
(2, '2020-08-21', 'Faltan botones', 15800, 1, 52106653),
(3, '2020-08-22', 'Ropa muy sucia', 13600, 2, 52106653),
(4, '2020-08-21', 'Ropa muy desgastada', 22000, 2, 52106653),
(5, '2020-08-23', 'Ropa muy sucia', 56000, 2, 41578934),
(9, '2020-09-09', 'Rotas', 50000, 2, 1034642),
(10, '2020-09-07', 'Lavarlos', 5200, 1, 1034642);

-- --------------------------------------------------------

--
-- Table structure for table `factura_prenda`
--

CREATE TABLE `factura_prenda` (
  `cod_factura` bigint(20) NOT NULL,
  `cod_prenda` bigint(20) NOT NULL,
  `cantidad` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `factura_prenda`
--

INSERT INTO `factura_prenda` (`cod_factura`, `cod_prenda`, `cantidad`) VALUES
(1, 1, 1),
(1, 2, 1),
(1, 3, 1),
(1, 25, 13),
(1, 27, 6),
(2, 4, 2),
(3, 2, 3),
(3, 4, 3),
(4, 1, 1),
(5, 1, 2),
(10, 22, 10),
(10, 24, 9);

-- --------------------------------------------------------

--
-- Table structure for table `prenda`
--

CREATE TABLE `prenda` (
  `cod_prenda` bigint(20) NOT NULL,
  `nom_prenda` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `prenda`
--

INSERT INTO `prenda` (`cod_prenda`, `nom_prenda`) VALUES
(1, 'Chaqueta Gamuza'),
(2, 'Jean'),
(3, 'Camiseta'),
(4, 'Vestido'),
(6, 'Medias'),
(18, 'Blusas'),
(21, 'Blusas'),
(22, 'Medias'),
(23, ''),
(24, 'Blusas Azules'),
(25, 'Pantaloncillo'),
(26, 'Gabardina'),
(27, 'Zapatones');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`cod_cliente`);

--
-- Indexes for table `estado`
--
ALTER TABLE `estado`
  ADD PRIMARY KEY (`cod_estado`);

--
-- Indexes for table `factura`
--
ALTER TABLE `factura`
  ADD PRIMARY KEY (`cod_factura`),
  ADD KEY `fk_cliente` (`cod_cliente`),
  ADD KEY `fk_estado` (`cod_estado`);

--
-- Indexes for table `factura_prenda`
--
ALTER TABLE `factura_prenda`
  ADD PRIMARY KEY (`cod_factura`,`cod_prenda`),
  ADD KEY `fk_prenda` (`cod_prenda`);

--
-- Indexes for table `prenda`
--
ALTER TABLE `prenda`
  ADD PRIMARY KEY (`cod_prenda`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cliente`
--
ALTER TABLE `cliente`
  MODIFY `cod_cliente` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52106654;

--
-- AUTO_INCREMENT for table `estado`
--
ALTER TABLE `estado`
  MODIFY `cod_estado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `factura`
--
ALTER TABLE `factura`
  MODIFY `cod_factura` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `prenda`
--
ALTER TABLE `prenda`
  MODIFY `cod_prenda` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `factura`
--
ALTER TABLE `factura`
  ADD CONSTRAINT `fk_cliente` FOREIGN KEY (`cod_cliente`) REFERENCES `cliente` (`cod_cliente`),
  ADD CONSTRAINT `fk_estado` FOREIGN KEY (`cod_estado`) REFERENCES `estado` (`cod_estado`);

--
-- Constraints for table `factura_prenda`
--
ALTER TABLE `factura_prenda`
  ADD CONSTRAINT `fk_factura` FOREIGN KEY (`cod_factura`) REFERENCES `factura` (`cod_factura`),
  ADD CONSTRAINT `fk_prenda` FOREIGN KEY (`cod_prenda`) REFERENCES `prenda` (`cod_prenda`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
