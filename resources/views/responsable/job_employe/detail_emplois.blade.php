@extends('layouts.master_page')
@section('title')

@endsection
@section('content')
    <div class="col-md-12">
        <ul class="nav nav-pills mb-3 col-md-11 m-auto" id="pills-tab" role="tablist">
            <li class="nav-item" role="presentation">
              <span class="nav-link active" id="detail_emploi" data-bs-toggle="pill" data-bs-target="#emploi_details" type="button" role="tab" aria-controls="emploi_details" aria-selected="true">Détail d'emploi</span>
            </li>
            <li class="nav-item" role="presentation">
              <span class="nav-link" id="historique_emploi" data-bs-toggle="pill" data-bs-target="#histo_emploi" type="button" role="tab" aria-controls="histo_emploi" aria-selected="false">Historique d'emploi</span>
            </li>
        </ul>
        <div class="tab-content col-md-11 m-auto" id="pills-tabContent">
            <div class="tab-pane fade show active" id="emploi_details" role="tabpanel" aria-labelledby="detail_emploi">
                <div class="card">

                </div>
            </div>
            <div class="tab-pane fade" id="histo_emploi" role="tabpanel" aria-labelledby="historique_emploi">
                <div class="table-responsive">
                    <table class="table table-hover text-secondary">
                        <thead style="font-size: .9rem;">
                            <tr>
                                <th>Evenement</th>
                                <th>À compter de</th>
                                <th>Champ</th>
                                <th>Changé de</th>
                                <th>Changé en</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
@endsection
