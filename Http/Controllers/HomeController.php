<?php

namespace App\Http\Controllers;

use App\Models\tbl_contacto;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function home(){
        $tablas = tbl_contacto::all();
        return view('Home',compact('tablas'));
    }
}
