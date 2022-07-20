<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Fonction extends Model
{
    use HasFactory;
    protected $table = "fonctions";
    protected $fillable = ["secteur_id","nom_fonction"];


    public function employe(){
        return $this->hasMany('App\Employer');
    }

    public function secteur(){
        return $this->belongsTo('App\Secteur');
    }
}
