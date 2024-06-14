<?php
    // Conexión a la base de datos
    $servidor = "localhost";
    $usuario = "root";
    $clave = "";
    $bd = "ejemplo2";
    $enlace = mysqli_connect($servidor, $usuario, $clave, $bd);
?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Agenda</title>
    <style>
        /* Estilos CSS */
        body {
            font-family: Arial, sans-serif;
            background-color: #FFFFFF;
            margin: 0;
            padding: 0;
        }
        .container {
            max-width: 800px;
            margin: 100px auto;
            padding: 100px;
            background-color: #A8F5EE;
            border-radius: 8px;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
        }
        input[type="text"],
        input[type="email"],
        input[type="submit"],
        input[type="reset"],
        input[type="button"] {
            width: 48%;
            margin-bottom: 10px;
            padding: 10px;
            font-size: 16px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        input[type="submit"],
        input[type="reset"],
        input[type="button"] {
            background-color: #000000;
            color: #fff;
            cursor: pointer;
        }
        input[type="submit"]:hover,
        input[type="reset"]:hover,
        input[type="button"]:hover {
            background-color: #000000;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Agenda</h2>
        <!-- Formulario para agregar contacto -->
        <form action="#" name="agregarContacto" method="post">
            <input type="text" name="Nombre" placeholder="Nombre">
            <input type="text" name="Apellido" placeholder="Apellido">
            <input type="text" name="Domicilio" placeholder="Domicilio">
            <input type="text" name="Telefono_de_casa" placeholder="Teléfono de casa">
            <input type="text" name="Celular" placeholder="Celular">
            <input type="text" name="Fecha_de_Nacimiento" placeholder="Fecha de Nacimiento">
            <input type="text" name="Correo_Electronico" placeholder="Correo Electrónico">
            <input type="submit" name="registro" value="Registrar">
        </form>

        <!-- Buscador de contactos -->
        <h2>Buscador</h2>
        <form action="#" name="buscarContacto" method="post">
            <input type="text" name="search" placeholder="Buscar por nombre...">
            <input type="submit" name="buscar" value="Buscar">
            <input type="button" name="mostrarTodos" value="Mostrar Todos" onclick="mostrarTodos()">
        </form>

        <!-- Resultados de la búsqueda -->
        <div id="tabla-registros" style="display: <?php echo isset($_POST['buscar']) ? 'block' : 'none'; ?>">
            <h3>Registros:</h3>
            <table border="1">
                <tr>
                    <th>Nombre</th>
                    <th>Apellidos</th>
                    <th>Domicilio</th>
                    <th>Teléfono de Casa</th>
                    <th>Celular</th>
                    <th>Fecha de Nacimiento</th>
                    <th>Correo Electrónico</th>
                </tr>
                <?php
                // Consulta SQL para mostrar los contactos
                if(isset($_POST['buscar'])){
                    $search = $_POST['search'];
                    $query = "SELECT * FROM agendaa WHERE Nombre LIKE '%$search%'";
                } else {
                    $query = "SELECT * FROM agendaa"; // Si no se realiza ninguna búsqueda, selecciona todos los registros
                }
                $resultados = mysqli_query($enlace, $query);
                while($registro = mysqli_fetch_array($resultados)){
                    echo "<tr>";
                    echo "<td>".$registro['Nombre']."</td>";
                    echo "<td>".$registro['Apellidos']."</td>";
                    echo "<td>".$registro['Domicilio']."</td>";
                    echo "<td>".$registro['Telefono_de_Casa']."</td>";
                    echo "<td>".$registro['Celular']."</td>";
                    echo "<td>".$registro['Fecha_de_Nacimiento']."</td>";
                    echo "<td>".$registro['Correo_Electronico']."</td>";
                    echo "</tr>";
                }
                ?>
            </table>
        </div>
    </div>

    <!-- Script JavaScript para mostrar todos los registros -->
    <script>
        function mostrarTodos() {
            document.getElementById('tabla-registros').style.display = 'block';
        }
    </script>
</body>
</html>
