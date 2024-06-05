<?php

namespace App\Http\Controllers;

use App\Models\tbl_contacto;
use Illuminate\Http\Request;

class ContactoController extends Controller
{
    public function index(){
        $tablas = tbl_contacto::all();
        // return $tablas;
        return view('contactos.index', compact('tablas'));
    }
    public function create(){
        return view('contactos.create');
    }
    public function store(Request $request){
        $tabla = new tbl_contacto;
        $tabla->nombre_cont = $request->nombre_cont;
        $tabla->apellido_cont = $request->apellido_cont;
        $tabla->carrera1_cont = $request->carrera1_cont;
        $tabla->carrera2_cont = $request->carrera2_cont;
        $tabla->telefono1_cont = $request->telefono1_cont;
        $tabla->telefono2_cont = $request->telefono2_cont;
        $tabla->propietario_cont = $request->propietario_cont;
        $tabla->origen_cont = $request->origen_cont;
        $tabla->estado_cont = $request->estado_cont;
        $tabla->save();
        return redirect('/home');

    }
    public function editar($id){
        $tablas = tbl_contacto::find($id);
        return view('contactos.editar',compact('tablas'));
    }
    public function actualizar(Request $request,$id){
        $tablas = tbl_contacto::find($id);
        $tablas->nombre_cont = $request->nombre_cont;
        $tablas->apellido_cont = $request->apellido_cont;
        $tablas->carrera1_cont = $request->carrera1_cont;
        $tablas->carrera2_cont = $request->carrera2_cont;
        $tablas->telefono1_cont = $request->telefono1_cont;
        $tablas->telefono2_cont = $request->telefono2_cont;
        $tablas->propietario_cont = $request->propietario_cont;
        $tablas->origen_cont = $request->origen_cont;
        $tablas->estado_cont = $request->estado_cont;
        $tablas->save();
        return redirect('/home');

    }
}
