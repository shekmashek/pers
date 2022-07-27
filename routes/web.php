<?php

use App\Http\Controllers\HomeController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/home', [HomeController::class,'index'])->name('dashboard');

Route::get('/', function () {
    return view('index_accueil');
})->name('accueil_perso');

Route::get('sign_in',function(){
    return view('auth.connexion');
})->name('sign-in');


Route::get('create-compte', function () {
    return view('create_compte.create_compte');
})->name('create-compte');

Route::get('/info_legale', function () {
    return view('/info_legale');
});
Route::get('contact', function () {
    return view('contact');
});
Route::get('contacts', function () {
    return view('contacts');
});

Route::get('/politique_confidentialite', function () {
    return view('/politique_confidentialite');
})->name('politique_confidentialite');

Route::get('/politique_confidentialites', function () {
    return view('/politique_confidentialites');
});
Route::get('/tarifs', function () {
    return view('/tarif');
});

Route::get('condition_ge
+nerale_de_vente', 'ConditionController@index')->name('condition_generale_de_vente');

Route::post('/employe',[HomeController::class,'detail_historique_employe'])->name('historique_employe');

Route::get('/employe.liste',[HomeController::class,'liste_employe'])->name('employe.liste');

Route::post('/ajout_historique_salaire',[HomeController::class,'nouveau_historique_salaire'])->name('new_historique_salaire');

// Route::get('/salaire+employe',[HomeController::class,'salaire_employe'])->name('salaire');

// Route::get('/Carriere+emploi',[HomeController::class,'historique_emploi'])->name('emploi');

Route::get('/detail+personnel',[HomeController::class,'detail_personnel'])->name('detail_employe');

// Route détails personnels
Route::get('/details_pers', [HomeController::class, 'detailsPers'])->name('details_pers');

require __DIR__.'/auth.php';
