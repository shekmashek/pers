@extends('layouts.master_page')
@section('title')
<div class="text_header text-secondary">Liste d'employés</div>
@endsection
@section('content')
    <div class="contenu">
        <div class="col-md-12">
            <button class="btn float-end text-white" type="button" style="background:#16B84E;" data-bs-toggle="modal" data-bs-target="#exampleModal"><i class='bx bx-plus-medical'></i></button>
            <div class="table-responsive pt-2">
                <table class="table table-hover text-secondary" class="img-circle" style="font-size: .8rem;" >
                    <thead >
                        <tr>
                            <th></th>
                            <th>Matricule</th>
                            <th>Nom et prénom</th>
                            <th>Titre d'emploi</th>
                            <th>Statut d'emploi</th>
                            <th>Emplacement</th>
                            <th>Service</th>
                            <th>Département</th>
                        </tr>
                    </thead>
                    <tbody id="liste_employes">
                        @foreach ($employes as $employe)
                        <tr class="p-1 detail_employes" id="{{$employe->id}}">
                            <td>
                                @if ($employe->url_photo)
                                    <img src="{{$employe->url_photo}}" alt="">
                                @else
                                    <span class="border p-2" style="border-radius: 100%;">
                                        {{substr($employe->nom_stagiaire, 0, 1)}}{{substr($employe->prenom_stagiaire,0,1)}}
                                    </span>
                                @endif
                            </td>
                            <td>{{$employe->matricule}}</td>
                            <td>{{$employe->nom_stagiaire}} {{$employe->prenom_stagiaire}}</td>
                            <td>
                                @if ($employe->fonction_stagiaire)
                                    {{$employe->fonction_stagiaire}}
                                @else
                                    ---
                                @endif
                            </td>
                            <td>
                                @if ($employe->statut_emploi_stagiaire)
                                    {{$employe->statut_emploi_stagiaire}}
                                @else
                                    ---
                                @endif
                            </td>
                            <td>
                                @if ($employe->nom_branche)
                                    {{$employe->nom_branche}}
                                @else
                                    ---
                                @endif
                            </td>
                            <td>
                                @if ($employe->nom_service)
                                    {{$employe->nom_service}}
                                @else
                                    ---
                                @endif
                            </td>
                            <td>
                                @if ($employe->nom_departement)
                                    {{$employe->nom_departement}}
                                @else
                                    ---
                                @endif
                            </td>
                        </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>

        <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg modal-dialog-centered">
                <div class="modal-content">
                    <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Ajouter nouveau employé</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <form>
                        @csrf
                        <div class="modal-body">
                            <div class="row col-md-11 m-auto">
                                <div class="col-md-3 text-center">
                                    <img src="{{asset('img/userDefault.png')}}" alt="" style="border-radius:100%;">
                                </div>
                                <div class="col-md-8">
                                    <div class="mb-3">
                                        <input type="text" class="form-control" name="nom_employe" id="nom_employe" placeholder="Nom d'employé">
                                    </div>
                                    <div class="mb-3">
                                        <input type="text" class="form-control" name="prenom_employe" id="prenom_employe" placeholder="Prénom d'employé">
                                    </div>
                                    <div class="mb-3">
                                        <input type="text" name="matricule_employe" id="matricule_employe" class="form-control" placeholder="Matricule d'employé">
                                    </div>
                                    <div class="mb-3">
                                        <select class="form-control">
                                            <option selected>Sélectionnez une branche</option>
                                            <option value="1">One</option>
                                            <option value="2">Two</option>
                                            <option value="3">Three</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Annuler</button>
                            <button type="button" class="btn text-white" style="background:#16B84E;">Enregistrer</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <script>
        $(document).ready(function(){
            $('.detail_employes').on('click',function(){
                var employer_id = $(this).attr('id');
                alert(employer_id);
            });
        });
    </script>

@endsection


