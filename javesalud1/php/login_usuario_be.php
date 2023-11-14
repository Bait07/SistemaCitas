<?php
    session_start();
    include 'conexion_be.php';

    $correo = $_POST['correo'];
    $password = $_POST['password'];
//Encriptamiento de contraseña
    $password = hash('sha512', $password);

    $validar_login = mysqli_query($conexion, "SELECT * FROM paciente WHERE correo= '$correo' AND password= '$password'");

    if(mysqli_num_rows($validar_login) > 0){

        $_SESSION['usuario'] = $correo;
        header("location: ../Pprincipal.php");
        exit;

    }else {
        echo '
            <script>
                alert ("usuario no registrado, por favor verifique sus datos");
                window.location = "../index.php";
            </script>
        ';
        exit;
    }

?>