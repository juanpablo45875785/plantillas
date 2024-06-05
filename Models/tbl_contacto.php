<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Casts\Attribute;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;


class tbl_contacto extends Model
{
    use HasFactory;

    protected $table = 'tbl_contacto';

    protected function nombreCont():Attribute
    {
        return Attribute::make(
            set:function($value){
            return strtolower($value);
        },
        get:function($value){
            return ucfirst($value);
        }
    );
    }
};
