<?php

namespace App\Http\Controllers;

use App\Models\Employer;
use App\Models\Genre;
use App\Models\Nationalite;
use App\Models\StatutMatrimoniale;
use App\Models\PersonneACharge;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Gate;
use Illuminate\Support\Facades\DB;

class HomeController extends Controller
{
    public function __construct()
    {

        $this->middleware(['auth']);
        $this->middleware(function ($request, $next) {
            if (Auth::user()->exists == false) return redirect()->route('sign-in');
            return $next($request);
        });
    }

    public function index(){
        return view('responsable.dasboard.home');
    }

    public function liste_employe()
    {
        $user_id = Auth::user()->id;
        if (Gate::allows('isReferent')) {
            $etp_id = Employer::where('user_id',$user_id)->where('prioriter',1)->value('entreprise_id');
            $employes = DB::select('select id,url_photo,matricule,entreprise_id,nom_stagiaire,prenom_stagiaire,fonction_stagiaire,nom_service,
            statut_emploi_stagiaire,nom_departement,nom_branche from v_employe where entreprise_id = ?', [ $etp_id]);

        }
        return view('responsable.employe.liste', compact('employes'));
    }
    public function salaire_employe(){
        return view('responsable.salaire_employe.detail_salaire');
    }

    public function historique_emploi(){
        return view('responsable.job_employe.detail_emplois');
    }

    // Détails personnels
    public function detailsPers() {

        $genres = Genre::all();
        $statutMatris = StatutMatrimoniale::all();
        $nationalites = Nationalite::all();
        $pers_a_charges = PersonneACharge::all();

        return view('responsable.employe.details', compact('genres', 'nationalites', 
        'statutMatris', 'pers_a_charges'));        
    }

}