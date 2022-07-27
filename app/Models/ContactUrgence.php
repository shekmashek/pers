<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ContactUrgence extends Model
{
    use HasFactory;
    protected $table = "pers_contact_urgences";
    protected $fillable = ["employer_id", "nom", "prenom", "relation", "tel_fixe", "tel_mobile", "tel_travail"];
}
