<?php

    session_start();
    if (isset($_SESSION['usuario'])){
        header("location: Pprincipal.php");
    }

?> 



<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="assets/css/estilos_login_register.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap" rel="stylesheet">
    <link rel="icon" href="images/icon.ico">
</head>
<body>
    

    <main>

        <div class="contenedor__todo">

            <div class="caja__trasera">

                <div class="caja__trasera-login">
                    <h3>¿Ya tienes cuenta?</h3>
                    <p>Inicia sesión para entrar en la página</p>
                    <button id="btn__iniciar-sesion"> Iniciar sesión </button>
                </div>

                <div class="caja__trasera-register">
                    <h3>¿Aún no tienes cuenta?</h3>
                    <p>Crea una cuenta para entrar en la página</p>
                    <button id="btn__registrarse"> Registrarme </button>
                </div>
            </div>

            <!--Formulario de login y registro-->

            <div class="contenedor__login-registrer">
                <!--Login-->
                <form action="php/login_usuario_be.php" method="POST" class="formulario__login">
                    <h2>Iniciar sesión</h2>
                    <input type="text" placeholder="Número de documento" name="numero_documento">
                    <input type="password" placeholder="Contraseña" name="passwor">
                    <button>Iniciar</button>
                </form>

                <!--registro-->
                <form action="php/registro_usuario_be.php" method="post" class="formulario__register">
                    <h2>Registrarme</h2>
                    <input type="text" placeholder="Nombres " name ="Nombre">

                    <input type="text" placeholder="Apellidos " name ="Apellido">

                    <label for="fecha_nacimiento">Fecha de nacimiento</label>
                        <input type="date" id="fecha_nacimiento" name="Fecha_Nacimiento">

                    <label for="opcion">Tipo de documento</label>
                    <select id="tipo_documento" name="Tipo_Documento">
                        <option value="td1">Cédula de ciudadanía</option>
                        <option value="td2">Tarjeta de identidad</option>
                        <option value="td3">Pasaporte</option>
                    </select>

                    <input type="text" placeholder="Número de documento" name="Num_Documento">
                    <label for="opcion">RH:</label>
                    <select id="rh" name="RH">
                        <option value="rhoption1">A+</option>
                        <option value="rhoption2">A-</option>
                        <option value="rhoption3">B+</option>
                        <option value="rhoption4">B-</option>
                        <option value="rhoption5">AB+</option>
                        <option value="rhoption6">AB-</option>
                        <option value="rhoption7">O+</option>
                        <option value="rhoption8">O-</option>
                    </select>

                    <label for="opcion">Género:</label>
                    <select id="rh" name="Genero">
                        <option value="genreop1">Femenino</option>
                        <option value="genreop2">Masculino</option>

                    <input type="text" placeholder="Correo electrónico" name="Correo">
                    <input type="password" placeholder="Contraseña" name="passwordd">
                    <button>Registrarme</button>
                </form>
            </div>
        </div>
    </main>
    
    <script src="js/script.js"></script>
    
</body>
</html>