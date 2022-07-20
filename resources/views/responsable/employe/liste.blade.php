@extends('layouts.master_page')
@section('title')
    <h6 class="text-secondary ms-2">
        Listes employés
    </h6>
@endsection
@section('content')
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
                <tbody >
                    @foreach ($employes as $employe)
                    <tr class="p-1">
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
        <div class="modal-dialog modal-xl modal-dialog-centered">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" id="exampleModalLabel">Ajouter nouveau employé</h5>
              <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form>
                @csrf
                <div class="modal-body">
                    <div class="row col-md-12">
                        <div class="col-md-3"></div>
                        <div class="col-md-9">
                            <div class="mb-3 d-flex">
                                <div class="col-md-6">
                                    <label>Nom employé:</label>
                                    <input type="text" class="form-control" id="recipient-name">
                                </div>
                                <div class="col-md-6">
                                    <label>Prénom employé:</label>
                                    <input type="text" class="form-control" id="recipient-name">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary">Send message</button>
                </div>
            </form>
          </div>
        </div>
      </div>
@endsection
