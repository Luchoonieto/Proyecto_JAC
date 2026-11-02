-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-11-2026 a las 18:49:09
-- Versión del servidor: 10.4.6-MariaDB
-- Versión de PHP: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `Tienda_JAC`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `album`
--

CREATE TABLE `album` (
  `ID_album` int(11) NOT NULL,
  `ID_producto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `artista`
--

CREATE TABLE `artista` (
  `ID_artista` int(11) NOT NULL,
  `Nom_artista` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `Apelli_artista` varchar(200) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `artista_album`
--

CREATE TABLE `artista_album` (
  `ID_artista` int(11) NOT NULL,
  `ID_album` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `artista_cancion`
--

CREATE TABLE `artista_cancion` (
  `ID_artista` int(11) NOT NULL,
  `ID_cancion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `artista_generoA`
--

CREATE TABLE `artista_generoA` (
  `ID_artista` int(11) NOT NULL,
  `ID_generoA` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cancion`
--

CREATE TABLE `cancion` (
  `ID_cancion` int(11) NOT NULL,
  `Duracion_cancion` time NOT NULL,
  `ID_producto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cancion_album`
--

CREATE TABLE `cancion_album` (
  `ID_cancion` int(11) NOT NULL,
  `ID_album` int(11) NOT NULL,
  `Orden_cancion` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `ID_cliente` int(11) NOT NULL,
  `Nom_cliente` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `Apelli_cliente` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `Telef_cliente` varchar(200) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Correo_cliente` varchar(200) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `conexion`
--

CREATE TABLE `conexion` (
  `ID_conexion` int(11) NOT NULL,
  `Tipo_conexion` varchar(250) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `desarrollador`
--

CREATE TABLE `desarrollador` (
  `ID_desarrollador` int(11) NOT NULL,
  `Nom_desarrollador` varchar(250) COLLATE utf8_spanish_ci NOT NULL,
  `Apelli_desarrollador` varchar(250) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detallepedido`
--

CREATE TABLE `detallepedido` (
  `ID_detalleP` int(11) NOT NULL,
  `ID_pedido` int(11) NOT NULL,
  `ID_producto` int(11) NOT NULL,
  `Cantidad_detalleP` int(11) NOT NULL,
  `PrecioUni_detalleP` decimal(12,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `generoA`
--

CREATE TABLE `generoA` (
  `ID_generoA` int(11) NOT NULL,
  `Nom_generoA` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `Descrip_generoA` varchar(150) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `generoJ`
--

CREATE TABLE `generoJ` (
  `ID_generoJ` int(11) NOT NULL,
  `Nom_generoJ` varchar(250) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `juego`
--

CREATE TABLE `juego` (
  `ID_juego` int(11) NOT NULL,
  `ID_producto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `juego_conexion`
--

CREATE TABLE `juego_conexion` (
  `ID_juego` int(11) NOT NULL,
  `ID_conexion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `juego_desarrollador`
--

CREATE TABLE `juego_desarrollador` (
  `ID_juego` int(11) NOT NULL,
  `ID_desarrollador` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `juego_generoJ`
--

CREATE TABLE `juego_generoJ` (
  `ID_juego` int(11) NOT NULL,
  `ID_generoJ` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `juego_modojuego`
--

CREATE TABLE `juego_modojuego` (
  `ID_juego` int(11) NOT NULL,
  `ID_modojuego` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `juego_plataforma`
--

CREATE TABLE `juego_plataforma` (
  `ID_juego` int(11) NOT NULL,
  `ID_plataforma` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modojuego`
--

CREATE TABLE `modojuego` (
  `ID_modojuego` int(11) NOT NULL,
  `Tipo_modojuego` varchar(250) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pago`
--

CREATE TABLE `pago` (
  `ID_pago` int(11) NOT NULL,
  `Tipo_pago` varchar(200) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido`
--

CREATE TABLE `pedido` (
  `ID_pedido` int(11) NOT NULL,
  `ID_pago` int(11) NOT NULL,
  `ID_cliente` int(11) NOT NULL,
  `Fecha_pedido` datetime NOT NULL,
  `PrecioT_pedido` decimal(20,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `plataforma`
--

CREATE TABLE `plataforma` (
  `ID_plataforma` int(11) NOT NULL,
  `Tipo_plataforma` varchar(250) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Producto`
--

CREATE TABLE `Producto` (
  `ID_producto` int(11) NOT NULL,
  `Tipo_producto` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `Nom_pedido` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `Precio_producto` decimal(10,2) NOT NULL,
  `Lanza_producto` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`ID_album`),
  ADD UNIQUE KEY `ID_album` (`ID_album`),
  ADD KEY `ID_producto` (`ID_producto`);

--
-- Indices de la tabla `artista`
--
ALTER TABLE `artista`
  ADD PRIMARY KEY (`ID_artista`);

--
-- Indices de la tabla `artista_album`
--
ALTER TABLE `artista_album`
  ADD PRIMARY KEY (`ID_artista`,`ID_album`),
  ADD KEY `ID_album` (`ID_album`);

--
-- Indices de la tabla `artista_cancion`
--
ALTER TABLE `artista_cancion`
  ADD PRIMARY KEY (`ID_artista`,`ID_cancion`),
  ADD KEY `ID_cancion` (`ID_cancion`);

--
-- Indices de la tabla `artista_generoA`
--
ALTER TABLE `artista_generoA`
  ADD PRIMARY KEY (`ID_artista`,`ID_generoA`),
  ADD KEY `ID_generoA` (`ID_generoA`);

--
-- Indices de la tabla `cancion`
--
ALTER TABLE `cancion`
  ADD PRIMARY KEY (`ID_cancion`),
  ADD UNIQUE KEY `ID_producto` (`ID_producto`);

--
-- Indices de la tabla `cancion_album`
--
ALTER TABLE `cancion_album`
  ADD PRIMARY KEY (`ID_cancion`,`ID_album`),
  ADD KEY `ID_album` (`ID_album`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`ID_cliente`);

--
-- Indices de la tabla `conexion`
--
ALTER TABLE `conexion`
  ADD PRIMARY KEY (`ID_conexion`);

--
-- Indices de la tabla `desarrollador`
--
ALTER TABLE `desarrollador`
  ADD PRIMARY KEY (`ID_desarrollador`);

--
-- Indices de la tabla `detallepedido`
--
ALTER TABLE `detallepedido`
  ADD PRIMARY KEY (`ID_detalleP`),
  ADD KEY `ID_pedido` (`ID_pedido`),
  ADD KEY `ID_producto` (`ID_producto`);

--
-- Indices de la tabla `generoA`
--
ALTER TABLE `generoA`
  ADD PRIMARY KEY (`ID_generoA`);

--
-- Indices de la tabla `generoJ`
--
ALTER TABLE `generoJ`
  ADD PRIMARY KEY (`ID_generoJ`);

--
-- Indices de la tabla `juego`
--
ALTER TABLE `juego`
  ADD PRIMARY KEY (`ID_juego`),
  ADD UNIQUE KEY `ID_juego` (`ID_juego`),
  ADD KEY `ID_producto` (`ID_producto`);

--
-- Indices de la tabla `juego_conexion`
--
ALTER TABLE `juego_conexion`
  ADD PRIMARY KEY (`ID_juego`,`ID_conexion`),
  ADD KEY `ID_conexion` (`ID_conexion`);

--
-- Indices de la tabla `juego_desarrollador`
--
ALTER TABLE `juego_desarrollador`
  ADD PRIMARY KEY (`ID_juego`,`ID_desarrollador`),
  ADD KEY `ID_desarrollador` (`ID_desarrollador`);

--
-- Indices de la tabla `juego_generoJ`
--
ALTER TABLE `juego_generoJ`
  ADD PRIMARY KEY (`ID_juego`,`ID_generoJ`),
  ADD KEY `ID_generoJ` (`ID_generoJ`);

--
-- Indices de la tabla `juego_modojuego`
--
ALTER TABLE `juego_modojuego`
  ADD PRIMARY KEY (`ID_juego`,`ID_modojuego`),
  ADD KEY `ID_modojuego` (`ID_modojuego`);

--
-- Indices de la tabla `juego_plataforma`
--
ALTER TABLE `juego_plataforma`
  ADD PRIMARY KEY (`ID_juego`,`ID_plataforma`),
  ADD KEY `ID_plataforma` (`ID_plataforma`);

--
-- Indices de la tabla `modojuego`
--
ALTER TABLE `modojuego`
  ADD PRIMARY KEY (`ID_modojuego`);

--
-- Indices de la tabla `pago`
--
ALTER TABLE `pago`
  ADD PRIMARY KEY (`ID_pago`);

--
-- Indices de la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`ID_pedido`),
  ADD KEY `ID_pago` (`ID_pago`),
  ADD KEY `ID_cliente` (`ID_cliente`);

--
-- Indices de la tabla `plataforma`
--
ALTER TABLE `plataforma`
  ADD PRIMARY KEY (`ID_plataforma`);

--
-- Indices de la tabla `Producto`
--
ALTER TABLE `Producto`
  ADD PRIMARY KEY (`ID_producto`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `album`
--
ALTER TABLE `album`
  MODIFY `ID_album` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `artista`
--
ALTER TABLE `artista`
  MODIFY `ID_artista` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cancion`
--
ALTER TABLE `cancion`
  MODIFY `ID_cancion` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `ID_cliente` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `conexion`
--
ALTER TABLE `conexion`
  MODIFY `ID_conexion` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `desarrollador`
--
ALTER TABLE `desarrollador`
  MODIFY `ID_desarrollador` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `detallepedido`
--
ALTER TABLE `detallepedido`
  MODIFY `ID_detalleP` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `generoA`
--
ALTER TABLE `generoA`
  MODIFY `ID_generoA` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `generoJ`
--
ALTER TABLE `generoJ`
  MODIFY `ID_generoJ` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `juego`
--
ALTER TABLE `juego`
  MODIFY `ID_juego` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `modojuego`
--
ALTER TABLE `modojuego`
  MODIFY `ID_modojuego` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pago`
--
ALTER TABLE `pago`
  MODIFY `ID_pago` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pedido`
--
ALTER TABLE `pedido`
  MODIFY `ID_pedido` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `plataforma`
--
ALTER TABLE `plataforma`
  MODIFY `ID_plataforma` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `Producto`
--
ALTER TABLE `Producto`
  MODIFY `ID_producto` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `album`
--
ALTER TABLE `album`
  ADD CONSTRAINT `album_ibfk_1` FOREIGN KEY (`ID_producto`) REFERENCES `Producto` (`ID_producto`);

--
-- Filtros para la tabla `artista_album`
--
ALTER TABLE `artista_album`
  ADD CONSTRAINT `artista_album_ibfk_1` FOREIGN KEY (`ID_artista`) REFERENCES `artista` (`ID_artista`),
  ADD CONSTRAINT `artista_album_ibfk_2` FOREIGN KEY (`ID_album`) REFERENCES `album` (`ID_album`);

--
-- Filtros para la tabla `artista_cancion`
--
ALTER TABLE `artista_cancion`
  ADD CONSTRAINT `artista_cancion_ibfk_1` FOREIGN KEY (`ID_artista`) REFERENCES `artista` (`ID_artista`),
  ADD CONSTRAINT `artista_cancion_ibfk_2` FOREIGN KEY (`ID_cancion`) REFERENCES `cancion` (`ID_cancion`);

--
-- Filtros para la tabla `artista_generoA`
--
ALTER TABLE `artista_generoA`
  ADD CONSTRAINT `artista_generoA_ibfk_1` FOREIGN KEY (`ID_artista`) REFERENCES `artista` (`ID_artista`),
  ADD CONSTRAINT `artista_generoA_ibfk_2` FOREIGN KEY (`ID_generoA`) REFERENCES `generoA` (`ID_generoA`);

--
-- Filtros para la tabla `cancion`
--
ALTER TABLE `cancion`
  ADD CONSTRAINT `cancion_ibfk_1` FOREIGN KEY (`ID_producto`) REFERENCES `Producto` (`ID_producto`);

--
-- Filtros para la tabla `cancion_album`
--
ALTER TABLE `cancion_album`
  ADD CONSTRAINT `cancion_album_ibfk_1` FOREIGN KEY (`ID_cancion`) REFERENCES `cancion` (`ID_cancion`),
  ADD CONSTRAINT `cancion_album_ibfk_2` FOREIGN KEY (`ID_album`) REFERENCES `album` (`ID_album`);

--
-- Filtros para la tabla `detallepedido`
--
ALTER TABLE `detallepedido`
  ADD CONSTRAINT `detallepedido_ibfk_1` FOREIGN KEY (`ID_pedido`) REFERENCES `pedido` (`ID_pedido`),
  ADD CONSTRAINT `detallepedido_ibfk_2` FOREIGN KEY (`ID_producto`) REFERENCES `Producto` (`ID_producto`);

--
-- Filtros para la tabla `juego`
--
ALTER TABLE `juego`
  ADD CONSTRAINT `juego_ibfk_1` FOREIGN KEY (`ID_producto`) REFERENCES `Producto` (`ID_producto`);

--
-- Filtros para la tabla `juego_conexion`
--
ALTER TABLE `juego_conexion`
  ADD CONSTRAINT `juego_conexion_ibfk_1` FOREIGN KEY (`ID_juego`) REFERENCES `juego` (`ID_juego`),
  ADD CONSTRAINT `juego_conexion_ibfk_2` FOREIGN KEY (`ID_conexion`) REFERENCES `conexion` (`ID_conexion`);

--
-- Filtros para la tabla `juego_desarrollador`
--
ALTER TABLE `juego_desarrollador`
  ADD CONSTRAINT `juego_desarrollador_ibfk_1` FOREIGN KEY (`ID_juego`) REFERENCES `juego` (`ID_juego`),
  ADD CONSTRAINT `juego_desarrollador_ibfk_2` FOREIGN KEY (`ID_desarrollador`) REFERENCES `desarrollador` (`ID_desarrollador`);

--
-- Filtros para la tabla `juego_generoJ`
--
ALTER TABLE `juego_generoJ`
  ADD CONSTRAINT `juego_generoJ_ibfk_1` FOREIGN KEY (`ID_juego`) REFERENCES `juego` (`ID_juego`),
  ADD CONSTRAINT `juego_generoJ_ibfk_2` FOREIGN KEY (`ID_generoJ`) REFERENCES `generoJ` (`ID_generoJ`);

--
-- Filtros para la tabla `juego_modojuego`
--
ALTER TABLE `juego_modojuego`
  ADD CONSTRAINT `juego_modojuego_ibfk_1` FOREIGN KEY (`ID_juego`) REFERENCES `juego` (`ID_juego`),
  ADD CONSTRAINT `juego_modojuego_ibfk_2` FOREIGN KEY (`ID_modojuego`) REFERENCES `modojuego` (`ID_modojuego`);

--
-- Filtros para la tabla `juego_plataforma`
--
ALTER TABLE `juego_plataforma`
  ADD CONSTRAINT `juego_plataforma_ibfk_1` FOREIGN KEY (`ID_juego`) REFERENCES `juego` (`ID_juego`),
  ADD CONSTRAINT `juego_plataforma_ibfk_2` FOREIGN KEY (`ID_plataforma`) REFERENCES `plataforma` (`ID_plataforma`);

--
-- Filtros para la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `pedido_ibfk_1` FOREIGN KEY (`ID_pago`) REFERENCES `pago` (`ID_pago`),
  ADD CONSTRAINT `pedido_ibfk_2` FOREIGN KEY (`ID_cliente`) REFERENCES `cliente` (`ID_cliente`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
