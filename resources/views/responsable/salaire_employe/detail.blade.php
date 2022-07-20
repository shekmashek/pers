@extends('layouts.master_page')
@section('title')

@endsection
@section('content')
    <div class="col-md-12">
        <ul class="nav nav-pills mb-3 col-md-11 m-auto" id="pills-tab" role="tablist">
            <li class="nav-item" role="presentation">
              <span class="nav-link active" id="compensation" data-bs-toggle="pill" data-bs-target="#compensation_salaire" type="button" role="tab" aria-controls="compensation_salaire" aria-selected="true">Compensation</span>
            </li>
            <li class="nav-item" role="presentation">
              <span class="nav-link" id="historique_salaire" data-bs-toggle="pill" data-bs-target="#histo_salaire" type="button" role="tab" aria-controls="histo_salaire" aria-selected="false">Historique Salaire</span>
            </li>
        </ul>
        <div class="tab-content col-md-11 m-auto" id="pills-tabContent">
            <div class="tab-pane fade show active" id="compensation_salaire" role="tabpanel" aria-labelledby="compensation">
                <div class="card">

                </div>
            </div>
            <div class="tab-pane fade" id="histo_salaire" role="tabpanel" aria-labelledby="historique_salaire">
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
