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

    //$password = hash('sha512', $password);

    $fecha_nacimiento = $_POST["Fecha_Nacimiento"];

// Convertir el formato de día-mes-año a año-mes-día
    $fecha_nacimiento = date("Y-m-d", strtotime($fecha_nacimiento));

//verificar que si ponga información.

if(empty($nombre) || empty($apellido) || empty($correo) || empty($numero_documento) || empty($password)) {
    echo '
        <script>
            alert("Por favor llene toda su información");
            window.location = "../index.php";
        </script>
    ';
    exit(); // Detiene la ejecución del script si falta información
}

//Verificar que el correo no se repita en la base de datos

    
$verificar_correo = mysqli_query($conexion, "SELECT * FROM paciente WHERE correo = '$correo' ");

    if (mysqli_num_rows($verificar_correo) > 0){
        echo '
            <script>
                alert ("Este correo ya está en uso, por favor regístrese con otro");
                window.location = "../index.php";
            </script>
        ';
        exit ();
    }



//Verificar que el usuario no se repita en la base de datos


$verificar_num_docu = mysqli_query($conexion, "SELECT * FROM paciente WHERE Num_Documento = '$numero_documento' ");

if (mysqli_num_rows($verificar_num_docu) > 0){
    echo '
        <script>
            alert ("Este Número de documento ya está en uso, por favor regístrese con otro");
            window.location = "../index.php";
        </script>
    ';
    exit ();
}


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