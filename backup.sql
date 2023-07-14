-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: universidad
-- ------------------------------------------------------
-- Server version	8.0.33

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `alumno_se_matricula_asignatura`
--

DROP TABLE IF EXISTS `alumno_se_matricula_asignatura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alumno_se_matricula_asignatura` (
  `id_alumno` int unsigned NOT NULL,
  `id_asignatura` int unsigned NOT NULL,
  `id_curso_escolar` int unsigned NOT NULL,
  PRIMARY KEY (`id_alumno`,`id_asignatura`,`id_curso_escolar`),
  KEY `id_asignatura` (`id_asignatura`),
  KEY `id_curso_escolar` (`id_curso_escolar`),
  CONSTRAINT `alumno_se_matricula_asignatura_ibfk_1` FOREIGN KEY (`id_alumno`) REFERENCES `persona` (`id`),
  CONSTRAINT `alumno_se_matricula_asignatura_ibfk_2` FOREIGN KEY (`id_asignatura`) REFERENCES `asignatura` (`id`),
  CONSTRAINT `alumno_se_matricula_asignatura_ibfk_3` FOREIGN KEY (`id_curso_escolar`) REFERENCES `curso_escolar` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alumno_se_matricula_asignatura`
--

LOCK TABLES `alumno_se_matricula_asignatura` WRITE;
/*!40000 ALTER TABLE `alumno_se_matricula_asignatura` DISABLE KEYS */;
INSERT INTO `alumno_se_matricula_asignatura` VALUES (1,1,1);
INSERT INTO `alumno_se_matricula_asignatura` VALUES (2,1,1);
INSERT INTO `alumno_se_matricula_asignatura` VALUES (4,1,1);
INSERT INTO `alumno_se_matricula_asignatura` VALUES (19,1,5);
INSERT INTO `alumno_se_matricula_asignatura` VALUES (23,1,5);
INSERT INTO `alumno_se_matricula_asignatura` VALUES (24,1,5);
INSERT INTO `alumno_se_matricula_asignatura` VALUES (1,2,1);
INSERT INTO `alumno_se_matricula_asignatura` VALUES (2,2,1);
INSERT INTO `alumno_se_matricula_asignatura` VALUES (4,2,1);
INSERT INTO `alumno_se_matricula_asignatura` VALUES (19,2,5);
INSERT INTO `alumno_se_matricula_asignatura` VALUES (23,2,5);
INSERT INTO `alumno_se_matricula_asignatura` VALUES (24,2,5);
INSERT INTO `alumno_se_matricula_asignatura` VALUES (1,3,1);
INSERT INTO `alumno_se_matricula_asignatura` VALUES (2,3,1);
INSERT INTO `alumno_se_matricula_asignatura` VALUES (4,3,1);
INSERT INTO `alumno_se_matricula_asignatura` VALUES (19,3,5);
INSERT INTO `alumno_se_matricula_asignatura` VALUES (23,3,5);
INSERT INTO `alumno_se_matricula_asignatura` VALUES (24,3,5);
INSERT INTO `alumno_se_matricula_asignatura` VALUES (19,4,5);
INSERT INTO `alumno_se_matricula_asignatura` VALUES (23,4,5);
INSERT INTO `alumno_se_matricula_asignatura` VALUES (24,4,5);
INSERT INTO `alumno_se_matricula_asignatura` VALUES (19,5,5);
INSERT INTO `alumno_se_matricula_asignatura` VALUES (23,5,5);
INSERT INTO `alumno_se_matricula_asignatura` VALUES (24,5,5);
INSERT INTO `alumno_se_matricula_asignatura` VALUES (19,6,5);
INSERT INTO `alumno_se_matricula_asignatura` VALUES (23,6,5);
INSERT INTO `alumno_se_matricula_asignatura` VALUES (24,6,5);
INSERT INTO `alumno_se_matricula_asignatura` VALUES (19,7,5);
INSERT INTO `alumno_se_matricula_asignatura` VALUES (23,7,5);
INSERT INTO `alumno_se_matricula_asignatura` VALUES (24,7,5);
INSERT INTO `alumno_se_matricula_asignatura` VALUES (19,8,5);
INSERT INTO `alumno_se_matricula_asignatura` VALUES (23,8,5);
INSERT INTO `alumno_se_matricula_asignatura` VALUES (24,8,5);
INSERT INTO `alumno_se_matricula_asignatura` VALUES (19,9,5);
INSERT INTO `alumno_se_matricula_asignatura` VALUES (23,9,5);
INSERT INTO `alumno_se_matricula_asignatura` VALUES (24,9,5);
INSERT INTO `alumno_se_matricula_asignatura` VALUES (19,10,5);
INSERT INTO `alumno_se_matricula_asignatura` VALUES (23,10,5);
INSERT INTO `alumno_se_matricula_asignatura` VALUES (24,10,5);
/*!40000 ALTER TABLE `alumno_se_matricula_asignatura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asignatura`
--

DROP TABLE IF EXISTS `asignatura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asignatura` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `creditos` float unsigned NOT NULL,
  `tipo` enum('básica','obligatoria','optativa') NOT NULL,
  `curso` tinyint unsigned NOT NULL,
  `cuatrimestre` tinyint unsigned NOT NULL,
  `id_profesor` int unsigned DEFAULT NULL,
  `id_grado` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_profesor` (`id_profesor`),
  KEY `id_grado` (`id_grado`),
  CONSTRAINT `asignatura_ibfk_1` FOREIGN KEY (`id_profesor`) REFERENCES `profesor` (`id_profesor`),
  CONSTRAINT `asignatura_ibfk_2` FOREIGN KEY (`id_grado`) REFERENCES `grado` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asignatura`
--

LOCK TABLES `asignatura` WRITE;
/*!40000 ALTER TABLE `asignatura` DISABLE KEYS */;
INSERT INTO `asignatura` VALUES (1,'Álgegra lineal y matemática discreta',6,'básica',1,1,3,4);
INSERT INTO `asignatura` VALUES (2,'Cálculo',6,'básica',1,1,14,4);
INSERT INTO `asignatura` VALUES (3,'Física para informática',6,'básica',1,1,3,4);
INSERT INTO `asignatura` VALUES (4,'Introducción a la programación',6,'básica',1,1,14,4);
INSERT INTO `asignatura` VALUES (5,'Organización y gestión de empresas',6,'básica',1,1,3,4);
INSERT INTO `asignatura` VALUES (6,'Estadística',6,'básica',1,2,14,4);
INSERT INTO `asignatura` VALUES (7,'Estructura y tecnología de computadores',6,'básica',1,2,3,4);
INSERT INTO `asignatura` VALUES (8,'Fundamentos de electrónica',6,'básica',1,2,14,4);
INSERT INTO `asignatura` VALUES (9,'Lógica y algorítmica',6,'básica',1,2,3,4);
INSERT INTO `asignatura` VALUES (10,'Metodología de la programación',6,'básica',1,2,14,4);
INSERT INTO `asignatura` VALUES (11,'Arquitectura de Computadores',6,'básica',2,1,3,4);
INSERT INTO `asignatura` VALUES (12,'Estructura de Datos y Algoritmos I',6,'obligatoria',2,1,3,4);
INSERT INTO `asignatura` VALUES (13,'Ingeniería del Software',6,'obligatoria',2,1,14,4);
INSERT INTO `asignatura` VALUES (14,'Sistemas Inteligentes',6,'obligatoria',2,1,3,4);
INSERT INTO `asignatura` VALUES (15,'Sistemas Operativos',6,'obligatoria',2,1,14,4);
INSERT INTO `asignatura` VALUES (16,'Bases de Datos',6,'básica',2,2,14,4);
INSERT INTO `asignatura` VALUES (17,'Estructura de Datos y Algoritmos II',6,'obligatoria',2,2,14,4);
INSERT INTO `asignatura` VALUES (18,'Fundamentos de Redes de Computadores',6,'obligatoria',2,2,3,4);
INSERT INTO `asignatura` VALUES (19,'Planificación y Gestión de Proyectos Informáticos',6,'obligatoria',2,2,3,4);
INSERT INTO `asignatura` VALUES (20,'Programación de Servicios Software',6,'obligatoria',2,2,14,4);
INSERT INTO `asignatura` VALUES (21,'Desarrollo de interfaces de usuario',6,'obligatoria',3,1,14,4);
INSERT INTO `asignatura` VALUES (22,'Ingeniería de Requisitos',6,'optativa',3,1,NULL,4);
INSERT INTO `asignatura` VALUES (23,'Integración de las Tecnologías de la Información en las Organizaciones',6,'optativa',3,1,NULL,4);
INSERT INTO `asignatura` VALUES (24,'Modelado y Diseño del Software 1',6,'optativa',3,1,NULL,4);
INSERT INTO `asignatura` VALUES (25,'Multiprocesadores',6,'optativa',3,1,NULL,4);
INSERT INTO `asignatura` VALUES (26,'Seguridad y cumplimiento normativo',6,'optativa',3,1,NULL,4);
INSERT INTO `asignatura` VALUES (27,'Sistema de Información para las Organizaciones',6,'optativa',3,1,NULL,4);
INSERT INTO `asignatura` VALUES (28,'Tecnologías web',6,'optativa',3,1,NULL,4);
INSERT INTO `asignatura` VALUES (29,'Teoría de códigos y criptografía',6,'optativa',3,1,NULL,4);
INSERT INTO `asignatura` VALUES (30,'Administración de bases de datos',6,'optativa',3,2,NULL,4);
INSERT INTO `asignatura` VALUES (31,'Herramientas y Métodos de Ingeniería del Software',6,'optativa',3,2,NULL,4);
INSERT INTO `asignatura` VALUES (32,'Informática industrial y robótica',6,'optativa',3,2,NULL,4);
INSERT INTO `asignatura` VALUES (33,'Ingeniería de Sistemas de Información',6,'optativa',3,2,NULL,4);
INSERT INTO `asignatura` VALUES (34,'Modelado y Diseño del Software 2',6,'optativa',3,2,NULL,4);
INSERT INTO `asignatura` VALUES (35,'Negocio Electrónico',6,'optativa',3,2,NULL,4);
INSERT INTO `asignatura` VALUES (36,'Periféricos e interfaces',6,'optativa',3,2,NULL,4);
INSERT INTO `asignatura` VALUES (37,'Sistemas de tiempo real',6,'optativa',3,2,NULL,4);
INSERT INTO `asignatura` VALUES (38,'Tecnologías de acceso a red',6,'optativa',3,2,NULL,4);
INSERT INTO `asignatura` VALUES (39,'Tratamiento digital de imágenes',6,'optativa',3,2,NULL,4);
INSERT INTO `asignatura` VALUES (40,'Administración de redes y sistemas operativos',6,'optativa',4,1,NULL,4);
INSERT INTO `asignatura` VALUES (41,'Almacenes de Datos',6,'optativa',4,1,NULL,4);
INSERT INTO `asignatura` VALUES (42,'Fiabilidad y Gestión de Riesgos',6,'optativa',4,1,NULL,4);
INSERT INTO `asignatura` VALUES (43,'Líneas de Productos Software',6,'optativa',4,1,NULL,4);
INSERT INTO `asignatura` VALUES (44,'Procesos de Ingeniería del Software 1',6,'optativa',4,1,NULL,4);
INSERT INTO `asignatura` VALUES (45,'Tecnologías multimedia',6,'optativa',4,1,NULL,4);
INSERT INTO `asignatura` VALUES (46,'Análisis y planificación de las TI',6,'optativa',4,2,NULL,4);
INSERT INTO `asignatura` VALUES (47,'Desarrollo Rápido de Aplicaciones',6,'optativa',4,2,NULL,4);
INSERT INTO `asignatura` VALUES (48,'Gestión de la Calidad y de la Innovación Tecnológica',6,'optativa',4,2,NULL,4);
INSERT INTO `asignatura` VALUES (49,'Inteligencia del Negocio',6,'optativa',4,2,NULL,4);
INSERT INTO `asignatura` VALUES (50,'Procesos de Ingeniería del Software 2',6,'optativa',4,2,NULL,4);
INSERT INTO `asignatura` VALUES (51,'Seguridad Informática',6,'optativa',4,2,NULL,4);
INSERT INTO `asignatura` VALUES (52,'Biologia celular',6,'básica',1,1,NULL,7);
INSERT INTO `asignatura` VALUES (53,'Física',6,'básica',1,1,NULL,7);
INSERT INTO `asignatura` VALUES (54,'Matemáticas I',6,'básica',1,1,NULL,7);
INSERT INTO `asignatura` VALUES (55,'Química general',6,'básica',1,1,NULL,7);
INSERT INTO `asignatura` VALUES (56,'Química orgánica',6,'básica',1,1,NULL,7);
INSERT INTO `asignatura` VALUES (57,'Biología vegetal y animal',6,'básica',1,2,NULL,7);
INSERT INTO `asignatura` VALUES (58,'Bioquímica',6,'básica',1,2,NULL,7);
INSERT INTO `asignatura` VALUES (59,'Genética',6,'básica',1,2,NULL,7);
INSERT INTO `asignatura` VALUES (60,'Matemáticas II',6,'básica',1,2,NULL,7);
INSERT INTO `asignatura` VALUES (61,'Microbiología',6,'básica',1,2,NULL,7);
INSERT INTO `asignatura` VALUES (62,'Botánica agrícola',6,'obligatoria',2,1,NULL,7);
INSERT INTO `asignatura` VALUES (63,'Fisiología vegetal',6,'obligatoria',2,1,NULL,7);
INSERT INTO `asignatura` VALUES (64,'Genética molecular',6,'obligatoria',2,1,NULL,7);
INSERT INTO `asignatura` VALUES (65,'Ingeniería bioquímica',6,'obligatoria',2,1,NULL,7);
INSERT INTO `asignatura` VALUES (66,'Termodinámica y cinética química aplicada',6,'obligatoria',2,1,NULL,7);
INSERT INTO `asignatura` VALUES (67,'Biorreactores',6,'obligatoria',2,2,NULL,7);
INSERT INTO `asignatura` VALUES (68,'Biotecnología microbiana',6,'obligatoria',2,2,NULL,7);
INSERT INTO `asignatura` VALUES (69,'Ingeniería genética',6,'obligatoria',2,2,NULL,7);
INSERT INTO `asignatura` VALUES (70,'Inmunología',6,'obligatoria',2,2,NULL,7);
INSERT INTO `asignatura` VALUES (71,'Virología',6,'obligatoria',2,2,NULL,7);
INSERT INTO `asignatura` VALUES (72,'Bases moleculares del desarrollo vegetal',4.5,'obligatoria',3,1,NULL,7);
INSERT INTO `asignatura` VALUES (73,'Fisiología animal',4.5,'obligatoria',3,1,NULL,7);
INSERT INTO `asignatura` VALUES (74,'Metabolismo y biosíntesis de biomoléculas',6,'obligatoria',3,1,NULL,7);
INSERT INTO `asignatura` VALUES (75,'Operaciones de separación',6,'obligatoria',3,1,NULL,7);
INSERT INTO `asignatura` VALUES (76,'Patología molecular de plantas',4.5,'obligatoria',3,1,NULL,7);
INSERT INTO `asignatura` VALUES (77,'Técnicas instrumentales básicas',4.5,'obligatoria',3,1,NULL,7);
INSERT INTO `asignatura` VALUES (78,'Bioinformática',4.5,'obligatoria',3,2,NULL,7);
INSERT INTO `asignatura` VALUES (79,'Biotecnología de los productos hortofrutículas',4.5,'obligatoria',3,2,NULL,7);
INSERT INTO `asignatura` VALUES (80,'Biotecnología vegetal',6,'obligatoria',3,2,NULL,7);
INSERT INTO `asignatura` VALUES (81,'Genómica y proteómica',4.5,'obligatoria',3,2,NULL,7);
INSERT INTO `asignatura` VALUES (82,'Procesos biotecnológicos',6,'obligatoria',3,2,NULL,7);
INSERT INTO `asignatura` VALUES (83,'Técnicas instrumentales avanzadas',4.5,'obligatoria',3,2,NULL,7);
INSERT INTO `asignatura` VALUES (84,'Fisica Teorica',7,'obligatoria',3,3,NULL,7);
/*!40000 ALTER TABLE `asignatura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `curso_escolar`
--

DROP TABLE IF EXISTS `curso_escolar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `curso_escolar` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `anyo_inicio` year NOT NULL,
  `anyo_fin` year NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curso_escolar`
--

LOCK TABLES `curso_escolar` WRITE;
/*!40000 ALTER TABLE `curso_escolar` DISABLE KEYS */;
INSERT INTO `curso_escolar` VALUES (1,2014,2015);
INSERT INTO `curso_escolar` VALUES (2,2015,2016);
INSERT INTO `curso_escolar` VALUES (3,2016,2017);
INSERT INTO `curso_escolar` VALUES (4,2017,2018);
INSERT INTO `curso_escolar` VALUES (5,2018,2019);
/*!40000 ALTER TABLE `curso_escolar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departamento`
--

DROP TABLE IF EXISTS `departamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departamento` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departamento`
--

LOCK TABLES `departamento` WRITE;
/*!40000 ALTER TABLE `departamento` DISABLE KEYS */;
INSERT INTO `departamento` VALUES (1,'Informática');
INSERT INTO `departamento` VALUES (2,'Matemáticas');
INSERT INTO `departamento` VALUES (3,'Economía y Empresa');
INSERT INTO `departamento` VALUES (4,'Educación');
INSERT INTO `departamento` VALUES (5,'Agronomía');
INSERT INTO `departamento` VALUES (6,'Química y Física');
INSERT INTO `departamento` VALUES (7,'Filología');
INSERT INTO `departamento` VALUES (8,'Derecho');
INSERT INTO `departamento` VALUES (9,'Biología y Geología');
/*!40000 ALTER TABLE `departamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grado`
--

DROP TABLE IF EXISTS `grado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grado` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grado`
--

LOCK TABLES `grado` WRITE;
/*!40000 ALTER TABLE `grado` DISABLE KEYS */;
INSERT INTO `grado` VALUES (1,'Grado en Ingeniería Agrícola (Plan 2015)');
INSERT INTO `grado` VALUES (2,'Grado en Ingeniería Eléctrica (Plan 2014)');
INSERT INTO `grado` VALUES (3,'Grado en Ingeniería Electrónica Industrial (Plan 2010)');
INSERT INTO `grado` VALUES (4,'Grado en Ingeniería Informática (Plan 2015)');
INSERT INTO `grado` VALUES (5,'Grado en Ingeniería Mecánica (Plan 2010)');
INSERT INTO `grado` VALUES (6,'Grado en Ingeniería Química Industrial (Plan 2010)');
INSERT INTO `grado` VALUES (7,'Grado en Biotecnología (Plan 2015)');
INSERT INTO `grado` VALUES (8,'Grado en Ciencias Ambientales (Plan 2009)');
INSERT INTO `grado` VALUES (9,'Grado en Matemáticas (Plan 2010)');
INSERT INTO `grado` VALUES (10,'Grado en Química (Plan 2009)');
/*!40000 ALTER TABLE `grado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persona`
--

DROP TABLE IF EXISTS `persona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `persona` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `nif` varchar(9) DEFAULT NULL,
  `nombre` varchar(25) NOT NULL,
  `apellido1` varchar(50) NOT NULL,
  `apellido2` varchar(50) DEFAULT NULL,
  `ciudad` varchar(25) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `telefono` varchar(9) DEFAULT NULL,
  `fecha_nacimiento` date NOT NULL,
  `sexo` enum('H','M') NOT NULL,
  `tipo` enum('profesor','alumno') NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nif` (`nif`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persona`
--

LOCK TABLES `persona` WRITE;
/*!40000 ALTER TABLE `persona` DISABLE KEYS */;
INSERT INTO `persona` VALUES (1,'26902806M','Salvador','Sánchez','Pérez','Almería','C/ Real del barrio alto','950254837','1991-03-28','H','alumno');
INSERT INTO `persona` VALUES (2,'89542419S','Juan','Saez','Vega','Almería','C/ Mercurio','618253876','1992-08-08','H','alumno');
INSERT INTO `persona` VALUES (3,'11105554G','Zoe','Ramirez','Gea','Almería','C/ Marte','618223876','1979-08-19','M','profesor');
INSERT INTO `persona` VALUES (4,'17105885A','Pedro','Heller','Pagac','Almería','C/ Estrella fugaz',NULL,'2000-10-05','H','alumno');
INSERT INTO `persona` VALUES (5,'38223286T','David','Schmidt','Fisher','Almería','C/ Venus','678516294','1978-01-19','H','profesor');
INSERT INTO `persona` VALUES (6,'04233869Y','José','Koss','Bayer','Almería','C/ Júpiter','628349590','1998-01-28','H','alumno');
INSERT INTO `persona` VALUES (7,'97258166K','Ismael','Strosin','Turcotte','Almería','C/ Neptuno',NULL,'1999-05-24','H','alumno');
INSERT INTO `persona` VALUES (8,'79503962T','Cristina','Lemke','Rutherford','Almería','C/ Saturno','669162534','1977-08-21','M','profesor');
INSERT INTO `persona` VALUES (9,'82842571K','Ramón','Herzog','Tremblay','Almería','C/ Urano','626351429','1996-11-21','H','alumno');
INSERT INTO `persona` VALUES (10,'61142000L','Esther','Spencer','Lakin','Almería','C/ Plutón',NULL,'1977-05-19','M','profesor');
INSERT INTO `persona` VALUES (11,'46900725E','Daniel','Herman','Pacocha','Almería','C/ Andarax','679837625','1997-04-26','H','alumno');
INSERT INTO `persona` VALUES (12,'85366986W','Carmen','Streich','Hirthe','Almería','C/ Almanzora',NULL,'1971-04-29','M','profesor');
INSERT INTO `persona` VALUES (13,'73571384L','Alfredo','Stiedemann','Morissette','Almería','C/ Guadalquivir','950896725','1980-02-01','H','profesor');
INSERT INTO `persona` VALUES (14,'82937751G','Manolo','Hamill','Kozey','Almería','C/ Duero','950263514','1977-01-02','H','profesor');
INSERT INTO `persona` VALUES (15,'80502866Z','Alejandro','Kohler','Schoen','Almería','C/ Tajo','668726354','1980-03-14','H','profesor');
INSERT INTO `persona` VALUES (16,'10485008K','Antonio','Fahey','Considine','Almería','C/ Sierra de los Filabres',NULL,'1982-03-18','H','profesor');
INSERT INTO `persona` VALUES (17,'85869555K','Guillermo','Ruecker','Upton','Almería','C/ Sierra de Gádor',NULL,'1973-05-05','H','profesor');
INSERT INTO `persona` VALUES (18,'04326833G','Micaela','Monahan','Murray','Almería','C/ Veleta','662765413','1976-02-25','H','profesor');
INSERT INTO `persona` VALUES (19,'11578526G','Inma','Lakin','Yundt','Almería','C/ Picos de Europa','678652431','1998-09-01','M','alumno');
INSERT INTO `persona` VALUES (20,'79221403L','Francesca','Schowalter','Muller','Almería','C/ Quinto pino',NULL,'1980-10-31','H','profesor');
INSERT INTO `persona` VALUES (21,'79089577Y','Juan','Gutiérrez','López','Almería','C/ Los pinos','678652431','1998-01-01','H','alumno');
INSERT INTO `persona` VALUES (22,'41491230N','Antonio','Domínguez','Guerrero','Almería','C/ Cabo de Gata','626652498','1999-02-11','H','alumno');
INSERT INTO `persona` VALUES (23,'64753215G','Irene','Hernández','Martínez','Almería','C/ Zapillo','628452384','1996-03-12','M','alumno');
INSERT INTO `persona` VALUES (24,'85135690V','Sonia','Gea','Ruiz','Almería','C/ Mercurio','678812017','1995-04-13','M','alumno');
/*!40000 ALTER TABLE `persona` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profesor`
--

DROP TABLE IF EXISTS `profesor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profesor` (
  `id_profesor` int unsigned NOT NULL,
  `id_departamento` int unsigned NOT NULL,
  PRIMARY KEY (`id_profesor`),
  KEY `id_departamento` (`id_departamento`),
  CONSTRAINT `profesor_ibfk_1` FOREIGN KEY (`id_profesor`) REFERENCES `persona` (`id`),
  CONSTRAINT `profesor_ibfk_2` FOREIGN KEY (`id_departamento`) REFERENCES `departamento` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profesor`
--

LOCK TABLES `profesor` WRITE;
/*!40000 ALTER TABLE `profesor` DISABLE KEYS */;
INSERT INTO `profesor` VALUES (3,1);
INSERT INTO `profesor` VALUES (14,1);
INSERT INTO `profesor` VALUES (5,2);
INSERT INTO `profesor` VALUES (15,2);
INSERT INTO `profesor` VALUES (8,3);
INSERT INTO `profesor` VALUES (16,3);
INSERT INTO `profesor` VALUES (10,4);
INSERT INTO `profesor` VALUES (12,4);
INSERT INTO `profesor` VALUES (17,4);
INSERT INTO `profesor` VALUES (18,5);
INSERT INTO `profesor` VALUES (13,6);
INSERT INTO `profesor` VALUES (20,6);
INSERT INTO `profesor` VALUES (24,6);
/*!40000 ALTER TABLE `profesor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-14 14:33:34
