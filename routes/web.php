<?php

use App\Http\Controllers\ContactoController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
use App\Models\tbl_contacto;

Route::get('/home', [HomeController::class, 'home'])->name('contacto.home');

Route::get('/contacto', [ContactoController::class, 'index']);

Route::get('/create',[ContactoController::class, 'create'])->name('contactos.create');
Route::post('/posts',[ContactoController::class, 'store'])->name('posts.store');
Route::get('/editar/{id}/editar', [ContactoController::class, 'editar'])->name('contactos.editar');
Route::put('/actualizar/{id}/actualizar',[ContactoController::class, 'actualizar'])->name('contactos.actualizar');


Route::get('prueba', function(){

//crear registro
    // $post = new tbl_contacto;
    // $post->nombre_cont = 'AnGeLa CeSpEDES';
    // $post->apellido_cont = 'cespedes';
    // $post->carrera1_cont = 'ingenieria de sistemas';
    // $post->carrera2_cont = 'sin carrera';
    // $post->telefono1_cont = '69208750';
    // $post->telefono2_cont = '75478287';
    // $post->propietario_cont='mario';
    // $post->origen_cont = 'formulario';
    // $post->descripcion_cont = 'nuevo';
    // $post->estado_cont = '1';

    // $post->save();
    // return $post;


     $post = tbl_contacto::find(4);
     return $post;
    /* actualizar registro
    $post = tbl_contacto::where('id', '2')->first();

    $post->nombre_cont = 'Vanina';
    $post->apellido_cont = 'Maya Davalos';
    $post->save();
    return $post;*/
    /*
    listar registro
    $post = tbl_contacto::orderBy('nombre_cont', 'asc')
    ->select('id', 'nombre_cont' , 'apellido_cont')
    ->take(2)
    ->get();
    return $post;*/


});


// Route::get('/posts/{id}/{categoria?}',function($id, $categoria = null){
//     if($categoria){
//         return "aqui se muestra los post {$id} de la categoria {$categoria}";
//     }
//     return "aqui se muestra los post {$id}";
// });

