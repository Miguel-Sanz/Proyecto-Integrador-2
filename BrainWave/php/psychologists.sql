SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

-- Tabla de los psicólogos
CREATE TABLE `team` (
  `id` int(11) NOT NULL,
  `img` varchar(46) NOT NULL,
  `name` text NOT NULL,
  `detail` text NOT NULL,
  `number` text NOT NULL,
  `email` text NOT NULL,
  `expert` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Inserción de psicólogos
INSERT INTO `team` (`id`, `img`, `name`, `detail`, `number`, `email`, `expert`) VALUES
(1, '1.png', 'Laura López', 'Saludos, soy laura, y estoy aquí para ayudarte a descubrir y aprovechar tus fortalezas internas. En nuestro viaje terapéutico, exploraremos juntos cómo tu mente única, propia del TDAH, puede ser una fuente de creatividad y talento. Trabajaremos para potenciar esas cualidades y gestionar los aspectos más desafiantes de manera efectiva.', '640 111 111', 'mailto:laura@gmail.com', '• TERAPIA FAMILIAR \\n • PSICOLOGÍA INFANTIL • PSICOLOGÍA DE LA ADOLESCENCIA . PSICOANÁLISIS'),
(2, '2.png', 'Lucas Dutchenberg', '¡Hola! Soy lucas, un psicólogo comprometido con el bienestar de las personas. Mi enfoque para trabajar con el Trastorno por Déficit de Atención e Hiperactividad (TDAH) se centra en la colaboración y la comprensión educativa. Juntos, exploraremos estrategias personalizadas para maximizar tus fortalezas y superar los desafíos asociados con el TDAH.', '640 123 456', 'mailto:lucas@gmail.com', '• TERAPIA FAMILIAR • PSICOLOGÍA INFANTIL • PSICOLOGÍA DE LA ADOLESCENCIA . PSICOANÁLISIS'),
(3, '3.png', 'Cristina Ramirez', 'Bienvenido, soy cristina, una psicóloga comprometida con tu crecimiento personal. En nuestro tiempo juntos, exploraremos las dimensiones únicas de tu personalidad con TDAH. A través de la autoexploración, aprenderemos a gestionar las distracciones y a potenciar tus habilidades para que puedas alcanzar tu máximo potencial.', '640 234 567', 'mailto:cristina@gmail.com', '• TERAPIA FAMILIAR • PSICOLOGÍA INFANTIL • PSICOLOGÍA DE LA ADOLESCENCIA . PSICOANÁLISIS'),
(4, '4.png', 'Ruth Martínez', 'Hola, soy ruth, y estoy aquí para acompañarte en el desarrollo de habilidades de adaptación efectivas frente al TDAH. Trabajaremos en estrategias concretas para lidiar con la impulsividad, la distracción y la hiperactividad, permitiéndote tener un mayor control sobre tu vida y alcanzar tus metas.', '640 345 678', 'mailto:ruth@gmail.com', '• TERAPIA FAMILIAR • PSICOLOGÍA INFANTIL • PSICOLOGÍA DE LA ADOLESCENCIA . PSICOANÁLISIS'),
(5, '5.png', 'Luis Caturla', 'Saludos, soy luis, y estoy comprometido no solo contigo, sino también con tu familia. Juntos, abordaremos el TDAH desde una perspectiva integral, considerando cómo afecta a todos. A través de estrategias familiares y apoyo emocional, trabajaremos para crear un entorno que fomente el crecimiento y la resiliencia.', '640 456 789', 'mailto:luis@gmail.com', '• TERAPIA FAMILIAR • PSICOLOGÍA INFANTIL • PSICOLOGÍA DE LA ADOLESCENCIA . PSICOANÁLISIS'),
(6, '6.png', 'María Lilliput', '¡Hola! Soy maría, y mi enfoque es guiarte hacia el empoderamiento a través de la autoconciencia. Juntos, exploraremos cómo el TDAH impacta tu vida cotidiana y desarrollaremos estrategias personalizadas. Este viaje no solo se trata de gestionar los desafíos, sino de reconocer y potenciar tus capacidades únicas.', '640 567 890', 'mailto:maria@gmail.com', '• TERAPIA FAMILIAR • PSICOLOGÍA INFANTIL • PSICOLOGÍA DE LA ADOLESCENCIA . PSICOANÁLISIS');

-- Indexes for table `team`
ALTER TABLE `team`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `team`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;