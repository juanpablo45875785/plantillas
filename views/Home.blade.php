@extends('plantillas.app')
@section('title', 'home')
@section('content')
    <div class="max-w-4xl mx-auto p-4">
        {{-- <h1>BIENVENIDOS ALA PAGINA PRINCIPAL</h1> --}}
        {{-- <x-alert type='success'>
            <x-slot name="title">
                alerta 1
            </x-slot>
            Contenido de alerta
        </x-alert> --}}

        <div>
            <a href="{{ Route('contactos.create') }}">Agregar</a>
            <table>
                <thead>
                    <tr>
                        <th scope="col">id</th>
                        <th scope="col">nombre</th>
                        <th scope="col">apellido</th>
                        <th scope="col">carrera</th>
                        <th scope="col">editar</th>
                    </tr>
                </thead>
                @foreach ($tablas as $tabla)
                    <tbody>
                        <tr>
                            <th scope="row">{{ $tabla->id }}</th>
                            <td>{{ $tabla->nombre_cont }}</td>
                            <td>{{ $tabla->apellido_cont }}</td>
                            <td>{{ $tabla->carrera1_cont }}</td>
                            <td><a href="{{ route('contactos.editar', $tabla->id) }}">Editar</a></td>
                        </tr>

                    </tbody>
                @endforeach

            </table>
        </div>

    </div>
@endsection
