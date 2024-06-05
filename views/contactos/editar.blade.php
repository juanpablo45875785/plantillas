<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Editar Contacto</title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <meta name="csrf-token" content="{{ csrf_token() }}">
</head>

<body>
    <h1>EDITAR CONTACTO</h1>

    <form id="edit-contact-form">
        @csrf
        @method('PUT')
        <label for="nombre">
            NOMBRE:
            <input type="text" id="nombre" name="nombre_cont" value="{{ $tablas->nombre_cont }}"
                placeholder="Nombre" required>
        </label>
        <br><br>
        <label for="apellido">
            APELLIDO:
            <input type="text" id="apellido" name="apellido_cont" value="{{ $tablas->apellido_cont }}"
                placeholder="Apellido" required>
        </label>
        <br><br>
        <label for="carrera1">
            CARRERA:
            <input type="text" id="carrera1" name="carrera1_cont" value="{{ $tablas->carrera1_cont }}"
                placeholder="Carrera" required>
        </label>
        <br><br>
        <label for="carrera2">
            CARRERA 2:
            <input type="text" id="carrera2" name="carrera2_cont" value="{{ $tablas->carrera2_cont }}"
                placeholder="Carrera 2">
        </label>
        <br><br>
        <label for="telefono1">
            TELEFONO 1:
            <input type="tel" id="telefono1" name="telefono1_cont" value="{{ $tablas->telefono1_cont }}"
                placeholder="Teléfono 1" required>
        </label>
        <br><br>
        <label for="telefono2">
            TELEFONO 2:
            <input type="tel" id="telefono2" name="telefono2_cont" value="{{ $tablas->telefono2_cont }}"
                placeholder="Teléfono 2">
        </label>
        <br><br>
        <label for="propietario">
            PROPIETARIO:
            <input type="text" id="propietario" name="propietario_cont" value="{{ $tablas->propietario_cont }}"
                placeholder="Propietario" required>
        </label>
        <br><br>
        <label for="origen">
            ORIGEN:
            <input type="text" id="origen" name="origen_cont" value="{{ $tablas->origen_cont }}"
                placeholder="Origen" required>
        </label>
        <br><br>
        <label for="estado">
            ESTADO:
            <input type="text" id="estado" name="estado_cont" value="{{ $tablas->estado_cont }}"
                placeholder="Estado" required>
        </label>
        <br><br>
        <button type="submit">Actualizar</button>
    </form>

    <script>
        $(document).ready(function() {
            $('#edit-contact-form').on('submit', function(e) {
                e.preventDefault();

                var formData = {
                    _token: $('meta[name="csrf-token"]').attr('content'),
                    _method: 'PUT',
                    nombre_cont: $('#nombre').val(),
                    apellido_cont: $('#apellido').val(),
                    carrera1_cont: $('#carrera1').val(),
                    carrera2_cont: $('#carrera2').val(),
                    telefono1_cont: $('#telefono1').val(),
                    telefono2_cont: $('#telefono2').val(),
                    propietario_cont: $('#propietario').val(),
                    origen_cont: $('#origen').val(),
                    estado_cont: $('#estado').val()
                };

                $.ajax({
                    url: '{{ route('contactos.actualizar', $tablas->id) }}',
                    type: 'POST',
                    data: formData,
                    success: function(response) {
                        alert('Contacto actualizado correctamente');
                        // Redirigir o actualizar la página si es necesario
                        window.location.href = '{{ route('contacto.home') }}';
                    },
                    error: function(xhr) {
                        console.log(xhr.responseText);
                        alert('Ocurrió un error al actualizar el contacto.');
                    }
                });
            });
        });
    </script>
</body>

</html>
