<?php
    session_start();
    include 'conexion_be.php';

    $numero_documento = $_POST['numero_documento'];
    $password = $_POST['passwor'];
//Encriptamiento de contraseña
    //$password = hash('sha512', $password);

    $validar_login = mysqli_query($conexion, "SELECT * FROM paciente WHERE Num_Documento = '$numero_documento' AND passwordd= '$password'");

    if(mysqli_num_rows($validar_login) > 0){

        $_SESSION['paciente'] = $numero_documento;
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