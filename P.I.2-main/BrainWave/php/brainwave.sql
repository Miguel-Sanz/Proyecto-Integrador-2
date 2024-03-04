-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-03-2024 a las 21:39:00
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `brainwave`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administradores`
--

CREATE TABLE `administradores` (
  `id_admin` int(11) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `apellidos` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contactos`
--

CREATE TABLE `contactos` (
  `id_contacto` int(11) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `asunto` varchar(255) DEFAULT NULL,
  `mensaje` text DEFAULT NULL,
  `fecha_creacion` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos_psicologos`
--

CREATE TABLE `datos_psicologos` (
  `id_psicologo` int(11) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `apellidos` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eventos_pacientes`
--

CREATE TABLE `eventos_pacientes` (
  `id_relacion` int(11) NOT NULL,
  `id_psycology` int(11) DEFAULT NULL,
  `id_paciente` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eventos_talleres`
--

CREATE TABLE `eventos_talleres` (
  `id_evento` int(11) NOT NULL,
  `nombre_evento` varchar(255) DEFAULT NULL,
  `fecha` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `login`
--

CREATE TABLE `login` (
  `id_login` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `login`
--

INSERT INTO `login` (`id_login`, `username`, `password`) VALUES
(1, 'Paula', 'Paula123'),
(2, 'Miguel', 'Maiky123');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pacientes_login`
--

CREATE TABLE `pacientes_login` (
  `id_relacion` int(11) NOT NULL,
  `id_paciente` int(11) DEFAULT NULL,
  `id_login` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `psicologos_pacientes`
--

CREATE TABLE `psicologos_pacientes` (
  `id_relacion` int(11) NOT NULL,
  `id_psicologo` int(11) DEFAULT NULL,
  `id_paciente` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `psycologists`
--

CREATE TABLE `psycologists` (
  `id` int(11) NOT NULL,
  `img` varchar(46) NOT NULL,
  `name` text NOT NULL,
  `detail` text NOT NULL,
  `number` text NOT NULL,
  `expert` text NOT NULL,
  `modality` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `psycologists`
--

INSERT INTO `psycologists` (`id`, `img`, `name`, `detail`, `number`, `expert`, `modality`) VALUES
(1, 'https://n9.cl/psicology', 'Laura lópez', 'Saludos, soy laura, y estoy aquí para ayudarte a descubrir y aprovechar tus fortalezas internas. En nuestro viaje terapéutico, exploraremos juntos cómo tu mente única, propia del TDAH, puede ser una fuente de creatividad y talento. Trabajaremos para potenciar esas cualidades y gestionar los aspectos más desafiantes de manera efectiva.', '640 111 111', '• TERAPIA FAMILIAR \\n • PSICOLOGÍA INFANTIL • PSICOLOGÍA DE LA ADOLESCENCIA . PSICOANÁLISIS', 'presential'),
(2, 'https://n9.cl/wlgy6', 'lucas dutchenberg', '¡Hola! Soy lucas, un psicólogo comprometido con el bienestar de las personas. Mi enfoque para trabajar con el Trastorno por Déficit de Atención e Hiperactividad (TDAH) se centra en la colaboración y la comprensión educativa. Juntos, exploraremos estrategias personalizadas para maximizar tus fortalezas y superar los desafíos asociados con el TDAH.', '640 123 456', '• TERAPIA FAMILIAR • PSICOLOGÍA INFANTIL • PSICOLOGÍA DE LA ADOLESCENCIA . PSICOANÁLISIS', 'virtual'),
(3, 'https://n9.cl/gkz84', 'cristina ramirez', 'Bienvenido, soy cristina, una psicóloga comprometida con tu crecimiento personal. En nuestro tiempo juntos, exploraremos las dimensiones únicas de tu personalidad con TDAH. A través de la autoexploración, aprenderemos a gestionar las distracciones y a potenciar tus habilidades para que puedas alcanzar tu máximo potencial.', '640 234 567', '• TERAPIA FAMILIAR • PSICOLOGÍA INFANTIL • PSICOLOGÍA DE LA ADOLESCENCIA . PSICOANÁLISIS', 'presential'),
(4, 'https://n9.cl/3ru3y', 'ruth martínez', 'Hola, soy ruth, y estoy aquí para acompañarte en el desarrollo de habilidades de adaptación efectivas frente al TDAH. Trabajaremos en estrategias concretas para lidiar con la impulsividad, la distracción y la hiperactividad, permitiéndote tener un mayor control sobre tu vida y alcanzar tus metas.', '640 345 678', '• TERAPIA FAMILIAR • PSICOLOGÍA INFANTIL • PSICOLOGÍA DE LA ADOLESCENCIA . PSICOANÁLISIS', 'virtual'),
(5, 'https://n9.cl/yr5s', 'luis caturla', 'Saludos, soy luis, y estoy comprometido no solo contigo, sino también con tu familia. Juntos, abordaremos el TDAH desde una perspectiva integral, considerando cómo afecta a todos. A través de estrategias familiares y apoyo emocional, trabajaremos para crear un entorno que fomente el crecimiento y la resiliencia.', '640 456 789', '• TERAPIA FAMILIAR • PSICOLOGÍA INFANTIL • PSICOLOGÍA DE LA ADOLESCENCIA . PSICOANÁLISIS', 'presential'),
(6, 'https://n9.cl/hkgu7', 'maría lilliput', '¡Hola! Soy maría, y mi enfoque es guiarte hacia el empoderamiento a través de la autoconciencia. Juntos, exploraremos cómo el TDAH impacta tu vida cotidiana y desarrollaremos estrategias personalizadas. Este viaje no solo se trata de gestionar los desafíos, sino de reconocer y potenciar tus capacidades únicas.', '640 567 890', '• TERAPIA FAMILIAR • PSICOLOGÍA INFANTIL • PSICOLOGÍA DE LA ADOLESCENCIA . PSICOANÁLISIS', 'virtual');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `quote`
--

CREATE TABLE `quote` (
  `id` int(11) NOT NULL,
  `id_psicology` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `hour` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `quote`
--

INSERT INTO `quote` (`id`, `id_psicology`, `username`, `date`, `hour`) VALUES
(1, 0, '', '', ''),
(2, 6, '\"riqui\"', '2024-03-12', '03:39'),
(3, 5, '\"paula\"', '2024-03-13', '20:49'),
(4, 5, '\"paula\"', '2024-03-13', '20:49'),
(5, 5, '\"paula\"', '2024-03-11', '02:48'),
(6, 3, '\"riqui\"', '2024-03-13', '17:49'),
(7, 3, '\"riqui\"', '2024-03-21', '14:56'),
(8, 3, '\"riqui\"', '2024-03-18', '19:51'),
(9, 2, '\"riqui\"', '2024-03-20', '15:27');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id_paciente` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `apellidos` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` text NOT NULL,
  `date_birth` varchar(255) DEFAULT NULL,
  `descrption` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id_paciente`, `username`, `nombre`, `apellidos`, `email`, `password`, `date_birth`, `descrption`) VALUES
(1, 'riqui', 'javier', 'holguin', 'javier@gmail.com', '$2y$10$dgLx7VXYaO9vVvLN68tCqegj0ymZR3EVhfYEuMj0w7L3vCHNQe9Ya', '2024-03-04', 'riquiiiii'),
(2, 'paula', 'paula', 'more', 'paula@gmail.com', '$2y$10$0B2GCjA4GWUzxT44glqq/OGuQtjL85/s40LnZ2g4KJsJPtplKT12.', '2024-03-20', 'Hola soy paula');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administradores`
--
ALTER TABLE `administradores`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indices de la tabla `contactos`
--
ALTER TABLE `contactos`
  ADD PRIMARY KEY (`id_contacto`);

--
-- Indices de la tabla `datos_psicologos`
--
ALTER TABLE `datos_psicologos`
  ADD PRIMARY KEY (`id_psicologo`);

--
-- Indices de la tabla `eventos_pacientes`
--
ALTER TABLE `eventos_pacientes`
  ADD PRIMARY KEY (`id_relacion`),
  ADD KEY `id_evento` (`id_psycology`),
  ADD KEY `id_paciente` (`id_paciente`);

--
-- Indices de la tabla `eventos_talleres`
--
ALTER TABLE `eventos_talleres`
  ADD PRIMARY KEY (`id_evento`);

--
-- Indices de la tabla `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id_login`);

--
-- Indices de la tabla `pacientes_login`
--
ALTER TABLE `pacientes_login`
  ADD PRIMARY KEY (`id_relacion`),
  ADD KEY `id_paciente` (`id_paciente`),
  ADD KEY `id_login` (`id_login`);

--
-- Indices de la tabla `psicologos_pacientes`
--
ALTER TABLE `psicologos_pacientes`
  ADD PRIMARY KEY (`id_relacion`),
  ADD KEY `id_psicologo` (`id_psicologo`),
  ADD KEY `id_paciente` (`id_paciente`);

--
-- Indices de la tabla `psycologists`
--
ALTER TABLE `psycologists`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `quote`
--
ALTER TABLE `quote`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_paciente`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `administradores`
--
ALTER TABLE `administradores`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `contactos`
--
ALTER TABLE `contactos`
  MODIFY `id_contacto` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `datos_psicologos`
--
ALTER TABLE `datos_psicologos`
  MODIFY `id_psicologo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `eventos_pacientes`
--
ALTER TABLE `eventos_pacientes`
  MODIFY `id_relacion` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `eventos_talleres`
--
ALTER TABLE `eventos_talleres`
  MODIFY `id_evento` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `login`
--
ALTER TABLE `login`
  MODIFY `id_login` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `pacientes_login`
--
ALTER TABLE `pacientes_login`
  MODIFY `id_relacion` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `psicologos_pacientes`
--
ALTER TABLE `psicologos_pacientes`
  MODIFY `id_relacion` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `psycologists`
--
ALTER TABLE `psycologists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `quote`
--
ALTER TABLE `quote`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id_paciente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `eventos_pacientes`
--
ALTER TABLE `eventos_pacientes`
  ADD CONSTRAINT `eventos_pacientes_ibfk_1` FOREIGN KEY (`id_psycology`) REFERENCES `eventos_talleres` (`id_evento`),
  ADD CONSTRAINT `eventos_pacientes_ibfk_2` FOREIGN KEY (`id_paciente`) REFERENCES `users` (`id_paciente`);

--
-- Filtros para la tabla `pacientes_login`
--
ALTER TABLE `pacientes_login`
  ADD CONSTRAINT `pacientes_login_ibfk_1` FOREIGN KEY (`id_paciente`) REFERENCES `users` (`id_paciente`),
  ADD CONSTRAINT `pacientes_login_ibfk_2` FOREIGN KEY (`id_login`) REFERENCES `login` (`id_login`);

--
-- Filtros para la tabla `psicologos_pacientes`
--
ALTER TABLE `psicologos_pacientes`
  ADD CONSTRAINT `psicologos_pacientes_ibfk_1` FOREIGN KEY (`id_psicologo`) REFERENCES `datos_psicologos` (`id_psicologo`),
  ADD CONSTRAINT `psicologos_pacientes_ibfk_2` FOREIGN KEY (`id_paciente`) REFERENCES `users` (`id_paciente`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
