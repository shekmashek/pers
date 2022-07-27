
<link rel="stylesheet" href="{{ asset('assets/css/personnels/details.css') }}">
<ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
    <li class="nav-item" role="presentation">
        <button class="nav-link active" id="pills-home-tab" data-bs-toggle="pill"
        data-bs-target="#pills-home" type="button" role="tab" aria-controls="pills-home"
        aria-selected="true">Détails Personnels</button>
    </li>
    <li class="nav-item" role="presentation">
        <button class="nav-link" id="pills-profile-tab" data-bs-toggle="pill"
        data-bs-target="#pills-profile" type="button" role="tab" aria-controls="pills-profile"
        aria-selected="false">Personnels à charger</button>
    </li>
    <li class="nav-item" role="presentation">
        <button class="nav-link" id="pills-contact-tab" data-bs-toggle="pill"
        data-bs-target="#pills-contact" type="button" role="tab" aria-controls="pills-contact"
        aria-selected="false">Contact urgence</button>
    </li>
</ul>
<div class="tab-content" id="pills-tabContent">
    <div class="tab-pane fade show active" id="pills-home" role="tabpanel"
    aria-labelledby="pills-home-tab">
    <div class="card p-3 text-secondary">
    <div class="row">
        <div class="col-md-4">
            <div class="mb-3">
                <label for="lastName" class="form-label label_form-1">
                    Prénom *
                </label>
                <input type="text" id="lastName" class="form-control input_form border-bottom p-0 pb-2"
                    placeholder="Jaqueline"
                >
            </div>
        </div>
        <div class="col-md-4">
            <div class="mb-3">
                <label for="firstName" class="form-label label_form-1">
                    Nom *
                </label>
                <input type="text" id="firstName" class="form-control input_form border-bottom p-0 pb-2"
                    placeholder="Wagner"
                >
            </div>
        </div>
        <div class="col-md-4">
            <div class="mb-3">
                <label for="idEmp" class="form-label label_form-1">
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
                <label for="genre" class="form-label label_form-1">
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
                <label for="naissance" class="form-label label_form-1">
                    Date de naissance
                </label>
                <input type="date" id="lastName" class="form-control input_form
                text-secondary border-bottom p-0 pb-2">
            </div>
        </div>
        <div class="col-md-4">
            <div class="mb-3">
                <label for="Etat" class="form-label label_form-1">
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
            <label for="Nationalité" class="form-label label_form-1">
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
                <label for="numberPermis" class="form-label label_form-1 mb-4"></label>
                <input type="number" id="numberPermis" class="form-control input_form
                text-secondary border-bottom p-0 pb-2" placeholder="Numéro de permis de conduire">
            </div>
        </div>
        <div class="col-md-4">
            <div class="mb-3">
                <label for="naissance" class="form-label label_form-1">
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
            <label for="Nationalité" class="form-label label_form-1">
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
            <label for="Nationalité" class="form-label label_form-1">
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
            <label for="Nationalité" class="form-label label_form-1">
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
            <label for="Nationalité" class="form-label label_form-1">
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
</div>
    <div class="tab-pane fade" id="pills-profile" role="tabpanel"
    aria-labelledby="pills-profile-tab">
    <div class="col-md-12">
        <button class="btn float-end text-white p-2" type="button"
            style="background:#16B84E; border-radius:50%;" data-bs-toggle="modal" data-bs-target="#Modal_Pers_a_charge">
            <i class='bx bx-plus-medical' style="fill: white;"></i>
        </button>
        <div class="table-responsive pt-2">
            <table class="table table-hover text-secondary" class="img-circle" style="font-size: .8rem;" >
                <thead >
                    <tr>
                        <th>Nom</th>
                        <th>Prénom</th>
                        <th>Date de naissance</th>
                        <th>Relation</th>
                        <th>Date de création</th>
                        <th>Date de modification</th>
                    </tr>
                </thead>
                <tbody >
                    @foreach($pers_a_charges as $pers_a_charge)
                        <tr class='my-5'>
                            <td>
                                {{ $pers_a_charge->nom }}
                            </td>
                            <td>
                                {{ $pers_a_charge->prenom }}
                            </td>
                            <td>
                                {{ $pers_a_charge->Date_naissance }}
                            </td>
                            <td>
                                {{ $pers_a_charge->relation }}
                            </td>
                            <td>
                                {{ $pers_a_charge->created_at }}
                            </td>
                            <td>
                                {{ $pers_a_charge->updated_at }}
                            </td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
    </div>
</div>
    <div class="tab-pane fade" id="pills-contact" role="tabpanel"
    aria-labelledby="pills-contact-tab">

</div>
</div>

{{--
Modale
--}}
<div class="modal text-secondary" id="Modal_Pers_a_charge" tabindex="-1"
    aria-labelledby="exampleModalLabel" aria-hidden="true"
    style="border-radius: 30%;"
    >
    <div class="modal-dialog modal-md modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h6 class="modal-title" id="exampleModalLabel">Ajouter une personne à charge</h6>
                <button type="button" class="btn-close" data-bs-dismiss="modal"
                aria-label="Close"></button>
            </div>
            <form>
                @csrf
                <div class="modal-body mx-2">
                    <div class="mb-3">
                        <label for="firstName" class="form-label label_form-2">
                            Nom *
                        </label>
                        <input type="text" id="firstName" class="form-control
                        input_form border-bottom p-0 pb-2">
                    </div>
                    <div class="mb-3">
                        <label for="firstName" class="form-label label_form-2">
                            Prénom *
                        </label>
                        <input type="text" id="lastName" class="form-control
                        input_form border-bottom p-0 pb-2">
                    </div>
                    <div class="mb-3">
                        <label for="naissance" class="form-label label_form-2">
                            Date de naissance
                        </label>
                        <input type="date" id="naissance" class="form-control
                        input_form border-bottom p-0 pb-2">
                    </div>
                    <div class="mb-3">
                        <label for="Etat" class="form-label label_form-2">
                            Relation *
                        </label>
                        <select class="form-select input_form p-0 text-secondary">
                            <option selected>--Selectionner--</option>
                            <option>Mari(e)</option>
                            <option>Parents</option>
                            <option>Enfants</option>
                            <option>Autres</option>
                        </select>
                    </div>
                </div>
                <div class="modal-footer">
                    <div class="row col-md-12">
                        <p class="text-start col-md-2" style="font-size: 11px;">* Requis</p>
                        <div class="col-md-10 text-end">
                            <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Annuler</button>
                            <button type="button" class="btn text-white" style="background:#16B84E;">Ajouter</button>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>


