CREATE TABLE `ccdtye` (
  `Ubicacion` int unsigned NOT NULL,
  `Nombre_ccdtye` varchar(45) NOT NULL,
  `Fecha_Apertura` date NOT NULL,
  `Fecha_Cierre` date NOT NULL,
  `IDccdtye` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`IDccdtye`)
);
CREATE TABLE `fuerza` (
  `Nombre_Fuerza` varchar(45) NOT NULL,
  `IDfuerza` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`IDfuerza`)
);
CREATE TABLE `testigo` (
  `DNI_Testigo` int NOT NULL,
  `Nombre_Completo_Testigo` varchar(45) NOT NULL,
  `Testimonio` varchar(500) NOT NULL,
  PRIMARY KEY (`DNI_Testigo`)
);
CREATE TABLE `identificado` (
  `DNI_identificado` int NOT NULL,
  `Nombre_Completo_Identificado` varchar(100) NOT NULL,
  `Lugar_Secuestro` int NOT NULL,
  `Fecha_Ultimo_Avistamiento` date NOT NULL,
  `Biografia_Personal` varchar(500) NOT NULL,
  `MaterialAV` varchar(500) NOT NULL,
  `DNI_TestigoFK` int DEFAULT NULL,
  PRIMARY KEY (`DNI_identificado`),
  KEY `DNI_Testigo_idx` (`DNI_TestigoFK`),
  CONSTRAINT `DNI_TestigoFK` FOREIGN KEY (`DNI_TestigoFK`) REFERENCES `testigo` (`DNI_Testigo`)
);
CREATE TABLE `no_identificado` (
  `Apodo` varchar(45) NOT NULL,
  `Descripcion` varchar(500) NOT NULL,
  `IDno_identificado` int NOT NULL AUTO_INCREMENT,
  `DNI_Testigo` int NOT NULL,
  PRIMARY KEY (`IDno_identificado`),
  KEY `DNI_Testigo_idx` (`DNI_Testigo`),
  CONSTRAINT `DNI_Testigo` FOREIGN KEY (`DNI_Testigo`) REFERENCES `testigo` (`DNI_Testigo`)
);
CREATE TABLE `ccdtye_fuerza` (
  `IDccdtye` int NOT NULL,
  `IDfuerza` int NOT NULL,
  PRIMARY KEY (`IDccdtye`,`IDfuerza`),
  KEY `IDfuerza_idx` (`IDfuerza`),
  CONSTRAINT `IDccdtye` FOREIGN KEY (`IDccdtye`) REFERENCES `ccdtye` (`IDccdtye`),
  CONSTRAINT `IDfuerza` FOREIGN KEY (`IDfuerza`) REFERENCES `fuerza` (`IDfuerza`)
);
CREATE TABLE `ccdtye_identificado` (
  `IDccdtyeFK` int NOT NULL,
  `DNI_identificadoFK` int NOT NULL,
  PRIMARY KEY (`IDccdtyeFK`,`DNI_identificadoFK`),
  KEY `DNI_identificado_idx` (`DNI_identificadoFK`),
  CONSTRAINT `DNI_identificadoFK` FOREIGN KEY (`DNI_identificadoFK`) REFERENCES `identificado` (`DNI_identificado`),
  CONSTRAINT `IDccdtyeFK` FOREIGN KEY (`IDccdtyeFK`) REFERENCES `ccdtye` (`IDccdtye`)
);
CREATE TABLE `ccdtye_no_identificado` (
  `IDccdtyeFKI` int NOT NULL,
  `IDno_identificadoFKI` int NOT NULL,
  PRIMARY KEY (`IDccdtyeFKI`,`IDno_identificadoFKI`),
  KEY `IDno_identificadoFKI_idx` (`IDno_identificadoFKI`),
  CONSTRAINT `IDccdtyeFKI` FOREIGN KEY (`IDccdtyeFKI`) REFERENCES `ccdtye` (`IDccdtye`),
  CONSTRAINT `IDno_identificadoFKI` FOREIGN KEY (`IDno_identificadoFKI`) REFERENCES `no_identificado` (`IDno_identificado`)
);
