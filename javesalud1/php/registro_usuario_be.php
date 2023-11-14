<?php

    include 'conexion_be.php';

    $nombre= $_POST["Nombre"];
    $apellido= $_POST["Apellido"];
    $fecha_nacimiento= $_POST["Fecha_Nacimiento"];
    $tipo_documento= $_POST["Tipo_Documento"];
    $numero_documento = $_POST["Num_Documento"];
    $rh= $_POST["RH"];
    $genero= $_POST["Genero"];
    $correo = $_POST["Correo"];
    $password = $_POST["passwordd"];

//Encriptamiento de contraseña

    $password = hash('sha512', $password);

    $fecha_nacimiento = $_POST["Fecha_Nacimiento"];

    // Convertir el formato de día-mes-año a año-mes-día
    $fecha_nacimiento = date("Y-m-d", strtotime($fecha_nacimiento));


    $query = "INSERT INTO paciente (Nombre, Apellido, Correo, Num_Documento, passwordd) 
            VALUES ('$nombre','$apellido', '$correo', '$numero_documento', '$password')";







    $ejecutar = mysqli_query($conexion, $query);

    if($ejecutar){
        echo '
            <script>
                alert ("Registro exitoso");
                window.location = "../index.php";
            </script>
        ';
    }else{
        echo '
            <script>
                alert ("No se logró registrar, inténtalo de nuevo");
                window.location = "../index.php";
            </script>
        ';

    }

    mysqli_close($conexion);



?>