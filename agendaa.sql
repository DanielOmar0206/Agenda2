-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-06-2024 a las 20:02:07
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ejemplo2`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `agendaa`
--

CREATE TABLE `agendaa` (
  `Nombre` varchar(60) NOT NULL,
  `Apellidos` varchar(60) NOT NULL,
  `Domicilio` varchar(60) NOT NULL,
  `Telefono_de_Casa` varchar(10) NOT NULL,
  `Celular` varchar(10) NOT NULL,
  `Fecha_de_Nacimiento` varchar(10) NOT NULL,
  `Correo_Electronico` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `agendaa`
--

INSERT INTO `agendaa` (`Nombre`, `Apellidos`, `Domicilio`, `Telefono_de_Casa`, `Celular`, `Fecha_de_Nacimiento`, `Correo_Electronico`) VALUES
('Juan Diego', 'Cortes Luevano', 'Trojes de Alonso calle rosario #122', '4491234567', '4493135411', '11/06/2006', 'juandiegocortes@gmail.com'),
('Jesse Alejandro', 'Jimenez echeverria', 'Norias de oriente calle vallarta #509', '4494689012', '4493979698', '30/07/2006', 'JimenezJesse@gmail.com'),
('Ociel', 'Dueñas Hernandez', 'La Mexico Calle Sinaloa #44', '4495019239', '4491795734', '13/05/2006', 'dueñas@gmail.com'),
('Daniel Homar', 'Palos Santos', 'La rivera calle oxalis #134', '4491025432', '4494015127', '01/02/2006', 'daniel@gmail.com'),
('Mario Alberto', 'Hernandez Medina', 'Alado de la linea #421', '4495891027', '4495119695', '21/11/2006', 'mario@gmail.com'),
('Hugo', 'Lopez Ramos', 'Cañada Onda Calle games orosco #121', '4492902156', '4491793609', '07/06/2\'\'6', 'hugo@gmail.com'),
('David', 'Capetillo Muñoz', 'Loscactus #442', '4494799100', '4495163927', '05/01/2006', 'david@gmail.com'),
('Diego Steve', '', '', '', '', '', ''),
('Diego Steve', 'Castañeda Esparza', 'Pilar bñanco', '4491234568', '3334287080', '17/04/2006', 'steve@gmail.com'),
('sadsda', 'sadaddas', 'daasdasdas', '', '', '', ''),
('sadsda', 'sadaddas', 'daasdasdas', '43534', '', '', ''),
('sadsda', 'sadaddas', 'asdasdd', '123456478', '11/20/2006', 'diego@fsa.', ''),
('gt', '', '', '', '', '', ''),
('gt', '', '', '', '', '', ''),
('gt', '', '', '', '', '', ''),
('Daniel ', 'Santos', '', '', '', '', ''),
('', '', '', '', '', '', ''),
('Daniel', 'Santos', '', '', '', '', ''),
('Daniel', 'Palos Santos', 'Oxalis #174', '4498765421', '01/02/06', 'ds9495294@', ''),
('', 'rgege', '', '', '', '', ''),
('Juan', 'Cortes Luevano', '', '', '', '', ''),
('Ociel', '', '', '', '', '', ''),
('Daniel', 'Santos', '', '8976', '', '', ''),
('', '', 'huggyu', '', '', '', '');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
