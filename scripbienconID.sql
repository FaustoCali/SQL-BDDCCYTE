CREATE TABLE `ccdtye` (
  `Ubicacion` int unsigned NOT NULL,
  `Nombre_ccdtye` varchar(45) NOT NULL,
  `Fecha_Apertura` date NOT NULL,
  `Fecha_Cierre` date NOT NULL,
  `IDccdtye` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`IDccdtye`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
CREATE TABLE `fuerza` (
  `Nombre_Fuerza` varchar(45) NOT NULL,
  `IDfuerza` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`IDfuerza`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
CREATE TABLE `identificado` (
  `DNI_identificado` int NOT NULL,
  `Nombre_Completo_Identificado` varchar(100) NOT NULL,
  `Lugar_Secuestro` int NOT NULL,
  `Fecha_Ultimo_Avistamiento` date NOT NULL,
  `Biografia_Personal` varchar(500) NOT NULL,
  `MaterialAV` varchar(500) NOT NULL,
  PRIMARY KEY (`DNI_identificado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
CREATE TABLE `no_identificado` (
  `Apodo` varchar(45) NOT NULL,
  `Descripcion` varchar(500) NOT NULL,
  `IDno_identificado` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`IDno_identificado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
CREATE TABLE `testigo` (
  `DNI_Testigo` int NOT NULL,
  `Nombre_Completo_Testigo` varchar(45) NOT NULL,
  `Testimonio` varchar(500) NOT NULL,
  PRIMARY KEY (`DNI_Testigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


