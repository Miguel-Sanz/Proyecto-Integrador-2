<?php
require_once 'conecta.php';

// Manejar el envío del formulario de contacto
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $nombre = $_POST["nombre"];
    $email = $_POST["email"];
    $asunto = $_POST["asunto"];
    $mensaje = $_POST["mensaje"];

    // Conexión a la base de datos
    $conexion = getConexion();

    // Insertar datos en la tabla contactos
    $consulta = "INSERT INTO contactos (nombre, email, asunto, mensaje) VALUES (?, ?, ?, ?)";
    $stmt = mysqli_prepare($conexion, $consulta);
    mysqli_stmt_bind_param($stmt, 'ssss', $nombre, $email, $asunto, $mensaje);

    if (mysqli_stmt_execute($stmt)) {
        echo "Mensaje enviado correctamente.";
    } else {
        echo "Error al enviar el mensaje: " . mysqli_error($conexion);
    }

    // Cerrar la conexión
    mysqli_close($conexion);
    exit;
}
?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>BrainWave</title>
    <link rel="stylesheet" href="../css/aboutUs.css" />
    <link rel="stylesheet" href="../css/style.css" />
    <style>
        .error {
            color: orange;
        }
    </style>
</head>
<body>
    <div class="about-us">
        <div class="div">
        <header class="header">
                <div class="overlap-group">
                    <div class="navbar">
                        <a href="home.php"><img class="IMG" src="../img/logo-transp.png" /></a>
                        <div class="boton-primario"><a href="login.php"><button class="button">LOGIN</button></a></div>
                        <div class="nosotros2"><a href="aboutUs.php">NOSOTROS</a></div>
                        <div class="recursos"><a href="2Recursos.php">RECURSOS</a></div>
                        <div class="servicios2"><a href="index.php">PSICÓLOGOS</a></div>
                    </div>
                    <div class="text-wrapper">ABOUT US</div>
                </div>
            </header>
            <div class="overlap">
                <div class="team-block">
                    <h2>Contactanos</h2>
                    <form action="<?php echo $_SERVER['PHP_SELF']; ?>" method="post" id="contactForm">
                        <label for="nombre">Nombre:</label>
                        <input type="text" name="nombre" id="nombre" required>
                        <span class="error" id="error_nombre"></span><br>

                        <label for="email">Correo electrónico:</label>
                        <input type="email" name="email" id="email" required>
                        <span class="error" id="error_email"></span><br>

                        <label for="asunto">Asunto:</label>
                        <input type="text" name="asunto" id="asunto" required>
                        <span class="error" id="error_asunto"></span><br>

                        <label for="mensaje">Mensaje:</label>
                        <textarea name="mensaje" id="mensaje" required></textarea>
                        <span class="error" id="error_mensaje"></span><br>

                        <input type="submit" value="Enviar" id="submit-btn" disabled>
                    </form>
                    <script>
                        // Funciones para validar el formulario de contacto
                        function validateContactForm() {
                            const nombreInput = document.getElementById('nombre');
                            const emailInput = document.getElementById('email');
                            const asuntoInput = document.getElementById('asunto');
                            const mensajeInput = document.getElementById('mensaje');
                            const submitButton = document.getElementById('submit-btn');

                            let valid = true;

                            if (nombreInput.value.trim() === '') {
                                showError(nombreInput, 'Por favor ingrese su nombre.', 'error_nombre');
                                valid = false;
                            } else {
                                hideError(nombreInput, 'error_nombre');
                            }

                            if (emailInput.value.trim() === '') {
                                showError(emailInput, 'Por favor ingrese su correo electrónico.', 'error_email');
                                valid = false;
                            } else if (!validateEmail(emailInput.value.trim())) {
                                showError(emailInput, 'Ingrese una dirección de correo electrónico válida.', 'error_email');
                                valid = false;
                            } else {
                                hideError(emailInput, 'error_email');
                            }

                            if (asuntoInput.value.trim() === '') {
                                showError(asuntoInput, 'Por favor ingrese un asunto.', 'error_asunto');
                                valid = false;
                            } else {
                                hideError(asuntoInput, 'error_asunto');
                            }

                            if (mensajeInput.value.trim() === '') {
                                showError(mensajeInput, 'Por favor ingrese su mensaje.', 'error_mensaje');
                                valid = false;
                            } else {
                                hideError(mensajeInput, 'error_mensaje');
                            }

                            submitButton.disabled = !valid;

                            return valid;
                        }

                        // Función para validar el formato del correo electrónico
                        function validateEmail(email) {
                            const regex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
                            return regex.test(email);
                        }

                        // Event listener para validar el formulario en el envío
                        document.getElementById('contactForm').addEventListener('submit', function(event) {
                            if (!validateContactForm()) {
                                event.preventDefault();
                            }
                        });

                        // Event listeners para validar el formulario en cada cambio de entrada
                        document.getElementById('nombre').addEventListener('input', function() {
                            validateContactForm();
                        });
                        document.getElementById('email').addEventListener('input', function() {
                            validateContactForm();
                        });
                        document.getElementById('asunto').addEventListener('input', function() {
                            validateContactForm();
                        });
                        document.getElementById('mensaje').addEventListener('input', function() {
                            validateContactForm();
                        });

                        // Función para mostrar mensajes de error
                        function showError(element, msj, errorId) {
                            const errorDiv = document.getElementById(errorId);
                            errorDiv.textContent = msj;
                            errorDiv.style.display = 'block';
                        }

                        // Función para ocultar mensajes de error
                        function hideError(element, errorId) {
                            const errorDiv = document.getElementById(errorId);
                            errorDiv.textContent = '';
                            errorDiv.style.display = 'none';
                        }
                    </script>
                </div>
                <footer class="footer">
                    <div class="overlap-4">
                        <div class="text-wrapper-footer">BRAINWAVE</div>
                        <div class="rectangle-19"></div>
                        <div class="contacto">
                            <div class="subscribe-wrapper">
                                <div class="subscribe">SUBSCRIBE</div>
                            </div>
                            <div class="text-wrapper-6"><img src="../img/map-icon.png" alt="Map Icon"></div>
                            <div class="text-wrapper-5"><img src="../img/gmail-icon.png" alt="Mail Icon"></div>
                        </div>
                        <div class="footer-2">
                            <img class="rectangle-20" src="../img/instagram.png" />
                            <img class="rectangle-21" src="../img/Twitter.png" />
                            <img class="rectangle-22" src="../img/facebook.png" />
                            <div class="botn-contacto">
                                <div class="contactanos-wrapper">
                                    <div class="contactanos">CONTÁCTANOS</div>
                                </div>
                            </div>
                            <div class="redes-sociales">REDES SOCIALES</div>
                            <div class="politica-de">POLITICA DE PRIVACIDAD</div>
                            <div class="disclamer">DISCLAMER</div>
                            <div class="terminos-de-uso">TERMINOS DE USO</div>
                        </div>
                        <p class="element-calle-de-la">123 CALLE DE LA SERENIDAD, DISTRITO CREATIVO</p>
                        <div class="brain-wave-us-gmail">BRAIN.WAVE.US@GMAIL.COM</div>
                        <p class="brainwave-copyright">BRAINWAVE COPYRIGHT - OWN ELEMENTS</p>
                    </div>
                </footer>
            </div>
            <div class="overlap-5">
                <div class="overlap-6">
                    <img class="rectangle-23" src="../img/philosophy.png" />
                </div>
                <div class="proyectos-brain-wave">PROYECTOS BRAIN WAVE</div>

                <div class="boton-primario-about">
                    <a href="register.php"><div class="i-nscribete">Descubre Más!</div></a>
                </div>
                <p class="bienvenido-a-la">
                    Mediante la colaboración estrecha, el robusto apoyo comunitario y una metodología ajustada a las necesidades individuales, BrainWave se esfuerza por convertirse en un faro de esperanza y una fuente inagotable de innovación para aquellos dentro de la comunidad del TDAH.<br><br>
                    Nos proponemos crear un entorno inclusivo y empoderador donde todos, desde las personas directamente afectadas por este trastorno hasta aquellos que desean contribuir a nuestra causa, puedan encontrar su lugar y sumarse a este emocionante viaje. Nuestro objetivo es trascender las barreras tradicionales, fomentando un espacio donde la diversidad mental no solo se acepte, sino que se celebre como la fuerza poderosa que es, permitiendo a cada individuo alcanzar su máximo potencial.<br><br>
                    Invitamos a todos a ser parte de esta aventura transformadora, en la cual juntos, paso a paso, construiremos un futuro más comprensivo, inclusivo y lleno de posibilidades para la comunidad del TDAH.
                </p>
            </div>
            <div class="right-column-2"></div>
            <div class="rectangle-26"></div>
            <div class="frame">
                <div class="ttulo">
                    <div class="con-cenos">CONÓCENOS</div>
                </div>
                <div class="overlap-10">
                    <div class="equipo-wrapper">
                        <div class="equipo">EQUIPO</div>
                    </div>
                    <img class="persona" src="../img/user.png" />
                </div>
                <div class="overlap-11">
                    <div class="ttulo-2">
                        <div class="trayectoria">TRAYECTORIA</div>
                        <div class="proyectos-wrapper">
                            <div class="proyectos">PROYECTOS</div>
                        </div>
                    </div>
                    <img class="persona-2" src="../img/Reloj.png" />
                    <img class="persona-3" src="../img/computer.png" />
                </div>
                <p class="bienvenido-a">Bienvenidos a BrainWave, donde la innovación abraza la tranquilidad en un ambiente único y transformador.<br><br>
                    En BrainWave, nos embarcamos en una misión con corazón y dedicación, enfocados en reimaginar y enriquecer la vida de aquellos que navegan el día a día con el Trastorno por Déficit de Atención e Hiperactividad (TDAH).<br><br>
                    Este proyecto nace de la visión y el compromiso de Miguel Sanz y Paula Moure, quienes, con un profundo entendimiento de las necesidades y desafíos asociados al TDAH, buscan trascender las convenciones y las limitaciones ordinarias.
                </p>
            </div>
            <div class="background-6"></div>
            <div class="quote-block">
                <div class="icon-box">
                    <div class="content-icon-box">
                        <div><img class="phone-img" src="../img/phone-contact.png" /></div>
                        <div class="ll-manos">LLÁMANOS HOY!</div>
                        <p class="p">( +34 ) 123 456 789</p>
                    </div>
                </div>
                <p class="brainwave-desatando">
                    <span class="text-wrapper-9">B</span>
                    <span class="text-wrapper-7">rain</span>
                    <span class="text-wrapper-9">W</span>
                    <span class="text-wrapper-7">ave: desatando tu </span>
                    <span class="text-wrapper-8">potencial</span>
                    <span class="text-wrapper-7"><br />Transformando <br />tu </span>
                    <span class="text-wrapper-8">mundo</span>
                </p>
            </div>
            <img class="atomo" src="../img/Us.png" />
        </div>
    </div>
</body>

</html>
