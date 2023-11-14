-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 14, 2023 at 04:36 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sistemacitas`
--

-- --------------------------------------------------------

--
-- Table structure for table `cita`
--

CREATE TABLE `cita` (
  `IDCita` int(11) NOT NULL,
  `Fecha_Cita` date NOT NULL,
  `Hora` time NOT NULL,
  `Estado` varchar(40) NOT NULL,
  `Observaciones` text NOT NULL,
  `IDPaciente` int(11) NOT NULL,
  `ID_Consultorio` int(11) NOT NULL,
  `IDMedico` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Dumping data for table `cita`
--

INSERT INTO `cita` (`IDCita`, `Fecha_Cita`, `Hora`, `Estado`, `Observaciones`, `IDPaciente`, `ID_Consultorio`, `IDMedico`) VALUES
(101, '2023-08-28', '10:00:00', 'Pendiente', 'Consulta de seguimiento', 1, 1, 1),
(102, '2023-09-10', '15:30:00', 'Pendiente', 'Dolor abdominal', 1, 2, 3),
(103, '2023-09-05', '09:15:00', 'Pendiente', 'Dolor de cabeza', 2, 3, 2),
(104, '2023-09-20', '11:45:00', 'Pendiente', 'Examen de rutina', 2, 1, 1),
(105, '2023-09-10', '09:30:00', 'Pendiente', 'Dolor en la espalda', 3, 2, 4),
(106, '2023-09-25', '14:00:00', 'Pendiente', 'Consulta de seguimiento', 3, 3, 5),
(107, '2023-09-15', '11:00:00', 'Pendiente', 'Dolor en la rodilla', 4, 4, 3),
(108, '2023-10-05', '09:30:00', 'Pendiente', 'Examen de rutina', 4, 1, 1),
(109, '2023-09-08', '14:30:00', 'Pendiente', 'Problemas de visión', 5, 2, 5),
(110, '2023-09-25', '16:00:00', 'Pendiente', 'Control de presión arterial', 5, 3, 2),
(111, '2023-09-12', '10:30:00', 'Pendiente', 'Control ginecológico', 6, 4, 4),
(112, '2023-09-28', '12:15:00', 'Pendiente', 'Seguimiento de tratamiento', 6, 1, 5),
(113, '2023-09-18', '14:00:00', 'Pendiente', 'Dolor en la pierna', 7, 2, 1),
(114, '2023-10-08', '11:30:00', 'Pendiente', 'Consulta de seguimiento', 7, 3, 2),
(115, '2023-09-22', '09:00:00', 'Pendiente', 'Control dental', 8, 4, 5),
(116, '2023-10-10', '13:45:00', 'Pendiente', 'Revisión de resultados', 8, 1, 3),
(117, '2023-09-19', '15:30:00', 'Pendiente', 'Control de salud', 9, 2, 2),
(118, '2023-10-12', '10:00:00', 'Pendiente', 'Revisión de resultados', 9, 3, 4),
(119, '2023-09-25', '08:30:00', 'Pendiente', 'Consulta psicológica', 10, 4, 5),
(120, '2023-10-15', '14:45:00', 'Pendiente', 'DOLOR DE CABEZA', 10, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `consultorio`
--

CREATE TABLE `consultorio` (
  `ID_Consultorio` int(11) NOT NULL,
  `Codigo` varchar(10) NOT NULL,
  `Descripcion` text NOT NULL,
  `Sede` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Dumping data for table `consultorio`
--

INSERT INTO `consultorio` (`ID_Consultorio`, `Codigo`, `Descripcion`, `Sede`) VALUES
(1, 'Prueba', 'Consultorio de SENA', 'Sede A'),
(2, 'C102', 'Consultorio de Cardiología', 'Sede B'),
(3, 'C103', 'Consultorio de Dermatología', 'Sede C'),
(4, 'C104', 'Consultorio de Cirugía', 'Sede A'),
(5, 'C105', 'Consultorio de Oftalmología', 'Sede B'),
(6, 'C106', 'Consultorio de Ginecología', 'Sede C'),
(7, 'C107', 'Consultorio de Ortopedia', 'Sede A'),
(8, 'C108', 'Consultorio de Neurología', 'Sede B'),
(9, 'C109', 'Consultorio de Odontología', 'Sede C'),
(10, 'C110', 'Consultorio de Psicología', 'Sede A');

-- --------------------------------------------------------

--
-- Table structure for table `medico`
--

CREATE TABLE `medico` (
  `IDMedico` int(11) NOT NULL,
  `Num_Documento` varchar(20) NOT NULL,
  `Nombre_Med` varchar(40) NOT NULL,
  `Apellido_Med` varchar(40) NOT NULL,
  `Especialidad` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Dumping data for table `medico`
--

INSERT INTO `medico` (`IDMedico`, `Num_Documento`, `Nombre_Med`, `Apellido_Med`, `Especialidad`) VALUES
(1, '12345678', 'Ana', 'García', 'Pediatría'),
(2, '23456789', 'Carlos', 'López', 'Cardiología'),
(3, '34567890', 'Sofía', 'Martínez', 'Dermatología'),
(4, '45678901', 'David', 'Rodríguez', 'Cirugía General'),
(5, '56789012', 'Laura', 'Fernández', 'Oftalmología');

-- --------------------------------------------------------

--
-- Table structure for table `paciente`
--

CREATE TABLE `paciente` (
  `IDPaciente` int(11) NOT NULL,
  `Tipo_Documento` varchar(20) NOT NULL,
  `Num_Documento` varchar(20) NOT NULL,
  `Nombre` varchar(40) NOT NULL,
  `Apellido` varchar(40) NOT NULL,
  `Fecha_Nacimiento` date NOT NULL,
  `RH` varchar(5) NOT NULL,
  `Genero` varchar(20) NOT NULL,
  `Correo` varchar(50) NOT NULL,
  `passwordd` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Dumping data for table `paciente`
--

INSERT INTO `paciente` (`IDPaciente`, `Tipo_Documento`, `Num_Documento`, `Nombre`, `Apellido`, `Fecha_Nacimiento`, `RH`, `Genero`, `Correo`, `passwordd`) VALUES
(1, 'Cédula', '1234567890', 'Juan', 'García', '1985-07-10', 'O+', 'Masculino', '', '0'),
(2, 'Pasaporte', 'AB123456', 'María', 'López', '1992-03-22', 'A-', 'Femenino', '', '0'),
(3, 'Cédula', '3456789012', 'Luis', 'Martínez', '1978-11-05', 'B+', 'Masculino', '', '0'),
(4, 'Cédula', '5678901234', 'Ana', 'Rodríguez', '2000-09-14', 'O-', 'Femenino', '', '0'),
(5, 'Pasaporte', 'CD987654', 'Carlos', 'Fernández', '1989-06-30', 'AB+', 'Masculino', '', '0'),
(6, 'Cédula', '7890123456', 'Laura', 'Pérez', '1998-02-18', 'B-', 'Femenino', '', '0'),
(7, 'Cédula', '9012345678', 'Javier', 'Hernández', '1975-12-09', 'A+', 'Masculino', '', '0'),
(8, 'Pasaporte', 'EF345678', 'Paula', 'Gómez', '1983-04-25', 'O-', 'Femenino', '', '0'),
(9, 'Cédula', '1234567809', 'Pedro', 'Díaz', '1996-08-20', 'AB-', 'Masculino', '', '0'),
(10, 'Cédula', '2345678901', 'Marcela', 'Vargas', '2002-01-07', 'A+', 'Femenino', '', '0');

-- --------------------------------------------------------

--
-- Table structure for table `tratamiento`
--

CREATE TABLE `tratamiento` (
  `ID_Tratamiento` int(11) NOT NULL,
  `Fecha_Asignacion` date NOT NULL,
  `Descripcion_Trata` text NOT NULL,
  `Fecha_Inicio_Trata` date NOT NULL,
  `Fecha_Fin_Trata` date NOT NULL,
  `Observaciones` text NOT NULL,
  `IDCita` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Dumping data for table `tratamiento`
--

INSERT INTO `tratamiento` (`ID_Tratamiento`, `Fecha_Asignacion`, `Descripcion_Trata`, `Fecha_Inicio_Trata`, `Fecha_Fin_Trata`, `Observaciones`, `IDCita`) VALUES
(1, '2023-08-28', 'Medicamento X', '2023-08-28', '2023-08-30', 'Tomar con comida', 101),
(2, '2023-08-28', 'Terapia física', '2023-09-01', '2023-09-15', 'Sesión de 1 hora', 101),
(3, '2023-09-10', 'Medicamento Y', '2023-09-10', '2023-09-14', 'Tomar antes de dormir', 102),
(4, '2023-09-10', 'Descanso recomendado', '2023-09-10', '2023-09-14', 'Evitar ejercicio', 102),
(5, '2023-09-05', 'Descanso recomendado', '2023-09-05', '2023-09-07', 'Evitar ruido fuerte', 103),
(6, '2023-09-05', 'Medicamento Z', '2023-09-05', '2023-09-10', 'Tomar después de comida', 103),
(7, '2023-09-20', 'Análisis de sangre', '2023-09-20', '2023-09-21', '12 horas de ayuno previo', 104),
(8, '2023-09-20', 'Medicamento A', '2023-09-21', '2023-09-28', 'Tomar con agua', 104),
(9, '2023-09-10', 'Terapia de masajes', '2023-09-10', '2023-09-17', 'Sesión de 45 minutos', 105),
(10, '2023-09-10', 'Medicamento B', '2023-09-10', '2023-09-15', 'Tomar con agua', 105),
(11, '2023-09-25', 'Medicamento C', '2023-09-25', '2023-09-28', 'Tomar después de las comidas', 106),
(12, '2023-09-25', 'Descanso recomendado', '2023-09-25', '2023-09-28', 'Evitar actividades extenuantes', 106),
(13, '2023-09-15', 'Terapia de rehabilitación', '2023-09-15', '2023-09-30', 'Sesión de 1 hora', 107),
(14, '2023-09-15', 'Medicamento D', '2023-09-15', '2023-09-20', 'Tomar después de comida', 107),
(15, '2023-10-05', 'Análisis de sangre', '2023-10-05', '2023-10-06', '12 horas de ayuno previo', 108),
(16, '2023-10-05', 'Medicamento A', '2023-10-06', '2023-10-13', 'Tomar con agua', 108),
(17, '2023-09-08', 'Examen ocular', '2023-09-08', '2023-09-09', 'Preparación previa', 109),
(18, '2023-09-08', 'Medicamento E', '2023-09-09', '2023-09-15', 'Seguir indicaciones', 109),
(19, '2023-09-25', 'Monitoreo de presión', '2023-09-25', '2023-09-26', 'Usar el dispositivo', 110),
(20, '2023-09-25', 'Medicamento F', '2023-09-26', '2023-09-30', 'Tomar según las indicaciones', 110),
(21, '2023-09-12', 'Examen pélvico', '2023-09-12', '2023-09-13', 'Preparación previa', 111),
(22, '2023-09-12', 'Medicamento G', '2023-09-13', '2023-09-20', 'Tomar según las indicaciones', 111),
(23, '2023-09-28', 'Revisión de medicación', '2023-09-28', '2023-09-29', 'Traer los registros', 112),
(24, '2023-09-28', 'Medicamento H', '2023-09-29', '2023-10-05', 'Tomar con agua', 112),
(25, '2023-09-18', 'Radiografía de pierna', '2023-09-18', '2023-09-19', 'Preparación previa', 113),
(26, '2023-09-18', 'Medicamento I', '2023-09-19', '2023-09-25', 'Tomar después de comida', 113),
(27, '2023-10-08', 'Revisión de resultados', '2023-10-08', '2023-10-09', 'Traer informes anteriores', 114),
(28, '2023-10-08', 'Medicamento J', '2023-10-09', '2023-10-15', 'Tomar antes de dormir', 114),
(29, '2023-09-22', 'Limpieza dental', '2023-09-22', '2023-09-23', 'Cuidar la higiene oral', 115),
(30, '2023-09-22', 'Medicamento K', '2023-09-23', '2023-09-30', 'Seguir las indicaciones', 115),
(31, '2023-10-10', 'Análisis de sangre', '2023-10-10', '2023-10-11', '12 horas de ayuno previo', 116),
(32, '2023-10-10', 'Medicamento A', '2023-10-11', '2023-10-18', 'Tomar con agua', 116),
(33, '2023-09-19', 'Examen médico general', '2023-09-19', '2023-09-20', 'Traer resultados previos', 117),
(34, '2023-09-19', 'Medicamento L', '2023-09-20', '2023-09-25', 'Tomar según las indicaciones', 117),
(35, '2023-10-12', 'Análisis de sangre', '2023-10-12', '2023-10-13', '12 horas de ayuno previo', 118),
(36, '2023-10-12', 'Medicamento A', '2023-10-13', '2023-10-20', 'Tomar con agua', 118),
(37, '2023-09-25', 'Terapia de apoyo', '2023-09-25', '2023-09-30', 'Sesión de 1 hora', 119),
(38, '2023-09-25', 'Medicamento M', '2023-09-25', '2023-09-30', 'Seguir las indicaciones', 119),
(39, '2023-10-15', 'Revisión de progreso', '2023-10-15', '2023-10-16', 'Traer el diario de avances', 120),
(40, '2023-10-15', 'Medicamento N', '2023-10-16', '2023-10-22', 'Tomar según las indicaciones', 120);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cita`
--
ALTER TABLE `cita`
  ADD PRIMARY KEY (`IDCita`),
  ADD KEY `FK_IDPaciente` (`IDPaciente`),
  ADD KEY `FK_IDMedico` (`IDMedico`),
  ADD KEY `FK_ID_Consultorio` (`ID_Consultorio`);

--
-- Indexes for table `consultorio`
--
ALTER TABLE `consultorio`
  ADD PRIMARY KEY (`ID_Consultorio`);

--
-- Indexes for table `medico`
--
ALTER TABLE `medico`
  ADD PRIMARY KEY (`IDMedico`);

--
-- Indexes for table `paciente`
--
ALTER TABLE `paciente`
  ADD PRIMARY KEY (`IDPaciente`);

--
-- Indexes for table `tratamiento`
--
ALTER TABLE `tratamiento`
  ADD PRIMARY KEY (`ID_Tratamiento`),
  ADD KEY `FK_IDCita` (`IDCita`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cita`
--
ALTER TABLE `cita`
  MODIFY `IDCita` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for table `consultorio`
--
ALTER TABLE `consultorio`
  MODIFY `ID_Consultorio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `medico`
--
ALTER TABLE `medico`
  MODIFY `IDMedico` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `paciente`
--
ALTER TABLE `paciente`
  MODIFY `IDPaciente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `tratamiento`
--
ALTER TABLE `tratamiento`
  MODIFY `ID_Tratamiento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cita`
--
ALTER TABLE `cita`
  ADD CONSTRAINT `FK_IDConsultorio` FOREIGN KEY (`ID_Consultorio`) REFERENCES `consultorio` (`ID_Consultorio`),
  ADD CONSTRAINT `FK_IDMedico` FOREIGN KEY (`IDMedico`) REFERENCES `medico` (`IDMedico`),
  ADD CONSTRAINT `FK_IDPaciente` FOREIGN KEY (`IDPaciente`) REFERENCES `paciente` (`IDPaciente`),
  ADD CONSTRAINT `FK_ID_Consultorio` FOREIGN KEY (`ID_Consultorio`) REFERENCES `consultorio` (`ID_Consultorio`);

--
-- Constraints for table `tratamiento`
--
ALTER TABLE `tratamiento`
  ADD CONSTRAINT `FK_IDCita` FOREIGN KEY (`IDCita`) REFERENCES `cita` (`IDCita`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
