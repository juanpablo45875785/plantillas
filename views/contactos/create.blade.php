<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Crear</title>
</head>

<body>
    <h1>FORMULARIO PARA CREAR UN NUEVO REGISTRO</h1>

    <form action="{{ route('posts.store') }}" method="POST">
        @csrf
        <label for="">
            NOMBRE:
            <input type="text" name="nombre_cont" placeholder="Nombre">
        </label>
        <br>
        <br>
        <label for="">
            APELLIDO:
            <input type="text" name="apellido_cont" placeholder="Apellido">
        </label>
        <br><br>
        <label for="">
            CARRERA:
            <input type="text" name="carrera1_cont" placeholder="carrera">
        </label>
        <br>
        <br>
        <label for="">
            CARRERA 2:
            <input type="text" name="carrera2_cont" placeholder="carrera 2">
        </label>
        <br>
        <br>
        <label for="">
            telefono 1:
            <input type="text" name="telefono1_cont" placeholder="telefono">
        </label>
        <br>
        <br>
        <label for="">
            telefono 2:
            <input type="text" name="telefono2_cont" placeholder="telfono 2">
        </label>
        <br>
        <br>
        <label for="">
            PROPIETARIO:
            <input type="text" name="propietario_cont" placeholder="propieatrio">
        </label>
        <br>
        <br>
        <label for="">
            ORIGEN:
            <input type="text" name="origen_cont" placeholder="origen">
        </label>
        <br>
        <br>
        <label for="">
            ESTADO:
            <input type="text" name="estado_cont" placeholder="estado">
        </label>

        <button type="submit">Registrar</button>
    </form>
</body>

</html>
