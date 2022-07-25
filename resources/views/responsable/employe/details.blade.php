@extends('layouts.master_page')

<link rel="stylesheet" href="{{ asset('assets/css/personnels/details.css') }}">

@section('content')

<div class="card p-3 text-secondary">
    <h6 class="mb-3">
        Détails Personnels
    </h6>
    <div class="row">
        <div class="col-md-4">
            <div class="mb-3">
                <label for="lastName" class="form-label label_form">
                    Prénom *
                </label>
                <input type="text" id="lastName" class="form-control input_form border-bottom p-0 pb-2" 
                    placeholder="Jaqueline"
                >
            </div>
        </div>
        <div class="col-md-4">
            <div class="mb-3">
                <label for="firstName" class="form-label label_form">
                    Nom *
                </label>
                <input type="text" id="firstName" class="form-control input_form border-bottom p-0 pb-2" 
                    placeholder="Wagner"
                >
            </div>
        </div>
        <div class="col-md-4">
            <div class="mb-3">
                <label for="idEmp" class="form-label label_form">
                    identification de l'employé
                </label>
                <input type="text" id="idEmp" class="form-control input_form border-bottom p-0 pb-2" 
                    placeholder="1020"
                >
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-4">
            <div class="mb-3">
                <label for="genre" class="form-label label_form">
                    Le genre
                </label>
                <select class="form-select input_form mb-4 p-0 text-secondary">
                <option selected class="option">--Selectionner--</option>
                    @foreach ($genres as $genre)
                        <option value="{{ $genre->id }}">{{ $genre->genre }}</option>
                    @endforeach
                </select>
            </div>
        </div>
        <div class="col-md-4">
            <div class="mb-3">
                <label for="naissance" class="form-label label_form">
                    Date de naissance
                </label>
                <input type="date" id="lastName" class="form-control input_form 
                text-secondary border-bottom p-0 pb-2">
            </div>
        </div>
        <div class="col-md-4">
            <div class="mb-3">
                <label for="Etat" class="form-label label_form">
                    Etat civil
                </label>
                <select class="form-select input_form mb-4 p-0 text-secondary">
                    <option selected>--Selectionner--</option>
                    @foreach($statutMatris as $statutMatri)
                        <option value="{{ $statutMatri->id }}">{{ $statutMatri->status }}</option>
                    @endforeach
                </select>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-4">
            <label for="Nationalité" class="form-label label_form">
                Nationalité
            </label>
            <select class="form-select input_form mb-4 p-0 text-secondary">
                <option selected>--Selectionner--</option>
                @foreach($nationalites as $nationalite)
                <option value="{{ $nationalite->id }}">{{ $nationalite->pays }}</option>
                @endforeach
            </select>
        </div>
        <div class="col-md-4">
            <div class="mb-3">
                <label for="numberPermis" class="form-label label_form mb-4"></label>
                <input type="number" id="numberPermis" class="form-control input_form 
                text-secondary border-bottom p-0 pb-2" placeholder="Numéro de permis de conduire">
            </div>
        </div>
        <div class="col-md-4">
            <div class="mb-3">
                <label for="naissance" class="form-label label_form">
                    Date d'expiration de la licence
                </label>
                <input type="date" id="lastName" class="form-control input_form 
                text-secondary border-bottom p-0 pb-2">
            </div>
        </div>
    </div>
    <div class="row mt-4">
        <div class="col-md-4">
            <p>* champ obligatoire</p>
        </div>
        <div class="col-md-4 offset-md-4 text-md-end">
            <button class="btn text-white button-text">
                Sauvegarde
            </button>
        </div>
    </div>
</div>

<div class="card mt-3 p-3 text-secondary">
    <h6 class="mb-3">
        Santé
    </h6>
    <div class="row">
        <div class="col-md-6">
            <label for="Nationalité" class="form-label label_form">
                Allergie *
            </label>
            <br />
            <div class="form-check form-check-inline radio-form">
                <input class="form-check-input" type="radio" name="inlineRadioOptions" 
                id="inlineRadio1" value="option1">
                <label class="form-check-label" for="inlineRadio1">Non</label>
            </div>
            <div class="form-check form-check-inline radio-form">
                <input class="form-check-input" type="radio" name="inlineRadioOptions" 
                id="inlineRadio2" value="option2">
                <label class="form-check-label" for="inlineRadio2">Oui</label>
            </div>
        </div>
        <div class="col-md">
            <label for="Nationalité" class="form-label label_form">
                intolérance
            </label>
            <select class="form-select input_form mb-4 p-0 text-secondary">
                <option selected class="option">--Selectionner--</option>
                <option value="1">intolérance-1</option>
                <option value="1">intolérance-2</option>
                <option value="1">Autres</option>
            </select>
        </div>
    </div>
    <div class="row mt-3">
        <div class="col-md-6">
            <label for="Nationalité" class="form-label label_form">
                Groupe sanguin
            </label>
            <br />
            <div class="form-check radio-form mt-2">
                <input class="form-check-input" type="radio" name="RadioOptions" 
                id="Antigene_A" value="option1">
                <label class="form-check-label" for="inlineRadio1">Antigène A</label>
            </div>
            <div class="form-check radio-form">
                <input class="form-check-input" type="radio" name="RadioOptions" 
                id="Antigene_B" value="option2">
                <label class="form-check-label" for="inlineRadio2">Antigène B</label>
            </div>
            <div class="form-check radio-form">
                <input class="form-check-input" type="radio" name="RadioOptions" 
                id="Globule_R" value="option1">
                <label class="form-check-label" for="inlineRadio1">Globule rouge</label>
            </div>
            <div class="form-check radio-form">
                <input class="form-check-input" type="radio" name="RadioOptions" 
                id="Antigene_AB" value="option2">
                <label class="form-check-label" for="inlineRadio2">Type AB</label>
            </div>
        </div>
        <div class="col-md">
            <label for="Nationalité" class="form-label label_form">
                maladie chronique
            </label>
            <select class="form-select input_form mb-4 p-0 text-secondary">
                <option selected class="option">--Selectionner--</option>
                <option value="1">maladie-chronique-1</option>
                <option value="1">maladie-chronique-2</option>
                <option value="1">Autres</option>
            </select>
        </div>
    </div>
    <div class="row mt-4">
        <div class="col-md-4">
            <p>* champ obligatoire</p>
        </div>
        <div class="col-md-4 offset-md-4 text-md-end">
            <button class="btn text-white button-text">
                Sauvegarde
            </button>
        </div>
    </div>
</div>

@endsection