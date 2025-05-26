-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: db_perfulandia
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.32-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `boletas`
--

DROP TABLE IF EXISTS `boletas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `boletas` (
  `numero_boleta` bigint(20) NOT NULL AUTO_INCREMENT,
  `rut_comprador` varchar(255) DEFAULT NULL,
  `cantidad_productos` int(11) DEFAULT NULL,
  `precio` int(11) DEFAULT NULL,
  `fecha` varchar(255) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`numero_boleta`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `boletas`
--

LOCK TABLES `boletas` WRITE;
/*!40000 ALTER TABLE `boletas` DISABLE KEYS */;
INSERT INTO `boletas` VALUES (1,'12.345.678-9',2,61980,'2025-05-25','perfume Essenza Femme, perfume Aqua Homme'),(2,'9.876.543-2',1,19990,'2025-05-24','perfume Flor de Loto'),(3,'17.654.321-0',3,86970,'2025-05-26','perfume Dulce Tentación, perfume Titan Spirit, perfume Brisa Floral'),(4,'13.987.654-3',1,44990,'2025-05-26','perfume Oceano Azul'),(5,'11.222.333-4',2,67980,'2025-05-23','perfume Bosque Nocturno, perfume Rosa Salvaje'),(6,'10.000.111-5',1,18990,'2025-05-22','perfume Titan Spirit'),(7,'18.321.456-7',2,48980,'2025-05-21','perfume Flor de Loto, perfume Brisa Floral'),(8,'16.888.999-6',1,39990,'2025-05-20','perfume Dulce Tentación'),(9,'15.777.666-5',2,64980,'2025-05-19','perfume Aqua Homme, perfume Black Intense'),(10,'14.666.555-4',3,93970,'2025-05-18','perfume Rosa Salvaje, perfume Brisa Floral, perfume Essenza Femme');
/*!40000 ALTER TABLE `boletas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `precio` int(11) DEFAULT NULL,
  `cantidad` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (1,'Essenza Femme','perfume para mujer 100ML',32990,25),(2,'Aqua Homme','perfume para hombre 100ML',35990,18),(3,'Flor de Loto','perfume para mujer 50ML',19990,30),(4,'Black Intense','perfume para hombre 75ML',28990,12),(5,'Dulce Tentación','perfume para mujer 100ML',39990,20),(6,'Bosque Nocturno','perfume para hombre 100ML',41990,15),(7,'Rosa Salvaje','perfume para mujer 80ML',28990,22),(8,'Titan Spirit','perfume para hombre 50ML',18990,28),(9,'Brisa Floral','perfume para mujer 60ML',24990,35),(10,'Oceano Azul','perfume para hombre 100ML',44990,10);
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `contrasena` varchar(45) DEFAULT NULL,
  `rol` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'Gabriel','g.abriel@gmail.com','1234','Administrador'),(2,'Lucía','lucia.martinez@gmail.com','abc123456PPP','Usuario'),(3,'Carlos','carlos_87@hotmail.com','pass123','Usuario'),(4,'María','maria_24@gmail.com','qwerty','Administrador'),(5,'José','jose.hernandez@gmail.com','admin1','Usuario'),(6,'Ana','ana.lopez@gmail.com','clave123','Usuario'),(7,'Pedro','pedro.garcia@yahoo.com','contraseña','Administrador'),(8,'Laura','laura.mendez@hotmail.com','miPass2024','Usuario'),(9,'Diego','diego.rojas@gmail.com','rojas456','Usuario'),(10,'Valentina','valen.ruiz@gmail.com','valentina1','Administrador'),(11,'Jeremy','jeremy.smith@gmail.com','jeremy2025','Usuario'),(12,'Camila','camila.torres@gmail.com','camipass','Administrador');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-26 17:59:42
