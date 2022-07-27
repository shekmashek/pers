<div class="col-md-12">
        <ul class="nav nav-pills mb-3 col-md-11 m-auto" id="pills-tab" role="tablist">
            <li class="nav-item" role="presentation">
              <span class="nav-link active" id="compensation" data-bs-toggle="pill" data-bs-target="#compensation_salaire" type="button" role="tab" aria-controls="compensation_salaire" aria-selected="true">Compensation</span>
            </li>
            <li class="nav-item" role="presentation">
              <span class="nav-link" id="historique_salaire" data-bs-toggle="pill" data-bs-target="#histo_salaire" type="button" role="tab" aria-controls="histo_salaire" aria-selected="false">Historique du salaire</span>
            </li>
        </ul>
        <div class="tab-content col-md-11 m-auto" id="pills-tabContent">
            <div class="tab-pane fade show active" id="compensation_salaire" role="tabpanel" aria-labelledby="compensation">
                <div class="row col-md-10 m-auto text-secondary">
                    <div class="col-md-6">
                        <div class="m-4 p-4 justify-content-between card_salaire">
                            <span>Coût pour l'entreprise
                            <span class="float-end">120 000</span>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="m-4 p-4 justify-content-between card_salaire">
                            <span>Total à payer
                            <span class="float-end">120 000</span>
                        </div>
                    </div>
                    <div class="col-md-2"></div>
                </div>
                <div class="row mx-3">
                    <div class="col-md-10 m-auto text-secondary card_salaire m-2">
                        <div class="table-responsive">
                            <table class="table text-secondary">
                                <thead>
                                    <tr>
                                        <th>Revenus</th>
                                        <th class="text-end">Montant</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td></td>
                                        <td class="text-end"></td>
                                    </tr>
                                </tbody>
                                <tfoot>
                                    <tr>
                                        <td>Salaire brut</td>
                                        <td class="text-end">16200000</td>
                                    </tr>
                                </tfoot>
                            </table>
                        </div>

                    </div>
                </div>
            </div>
            <div class="tab-pane fade" id="histo_salaire" role="tabpanel" aria-labelledby="historique_salaire">
                <div class="col-md-12 text-end">
                    <button class="btn text-white" type="button" style="background:#16B84E;" data-bs-toggle="modal" data-bs-target="#ajoutDetailSalaire">Ajouter historique du salaire</button>
                </div>
                <div class="table-responsive">
                    <table class="table table-hover text-secondary">
                        <thead style="font-size: .9rem;">
                            <tr>
                                <th>Evenement</th>
                                <th>À compter de</th>
                                <th>Champ</th>
                                <th>Changé de</th>
                                <th>Changé en</th>
                                <th style="width:12%;">Variation en pourcentage</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td></td>
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
    <div class="modal fade" id="ajoutDetailSalaire" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" id="exampleModalLabel">Salaire - Confirmer les changements</h5>
              <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form id="ajoutHistoriqueSalaire" method="post">
                @csrf
                <div class="modal-body">
                    <div class="col-md-10 m-auto text-secondary">
                        <input type="hidden" name="id" id="employer_id" value="">
                        <div class="mb-3">
                            <label class="form-label">Evénement *:</label>
                            <select class="form-control text-secondary" name="evenement" id="evenenements">
                                <option selected disabled>--- Sélectionnez ---</option>
                                @foreach ($events as $event)
                                    <option value="{{$event->id}}"><span>{{$event->description}}</span></option>
                                @endforeach
                                <option value="autre">Autre</option>
                            </select>
                        </div>
                        <div class="mb-3" id="autreEvent">
                            <label class="form-label">Autre événement *:</label>
                            <input type="text" name="autre_event" id="autre_event" class="form-control">
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Changement à partir de *:</label>
                            <input type="date" name="date_changement" id="date_changement" class="form-control text-center text-secondary">
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Designation *:</label>
                            <input type="text" name="nom_salaire" id="nom_salaire" class="form-control text-secondary" value="Salaire de base" disabled>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Devise *:</label>
                            <select class="form-control text-secondary" name="devise_id">
                                <option selected disabled>--- Sélectionnez ---</option>
                                @foreach ($devises as $devise)
                                    <option value="{{$devise->id}}">{{$devise->description}} ({{$devise->reference}})</option>
                                @endforeach
                            </select>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Changé à*:</label>
                            <input type="number" name="new_montant" id="new_montant" class="form-control">
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
<script>
    $(document).ready(function(){
        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        });

        $('#autreEvent').hide();
        $('#evenenements').on('change',function(e){
            e.preventDefault();
            var valeurEvent = $(this).val();
            if(valeurEvent == "autre"){
                $('#autreEvent').show();
            }
        });
        $('#ajoutHistoriqueSalaire').on('submit',function(e){
            e.preventDefault();
            var employer_id = $('#employer_id').val();
            var evenement = $('#evenenements').val();
            if(evenement=="autre"){
                var newEvent = $('#autre_event').val();
            }
            else{
                var newEvent = evenement;
            }
            var date_changement = $('#date_changement').val();
            var nom_salaire = $('#nom_salaire').val();
            var devise_id = $('#devise_id').val();
            var new_montant = $('#new_montant').val();

            $.post('/ajout_historique_salaire',{employer_id:employer_id,newEvent:newEvent,date_changement:date_changement,nom_salaire:nom_salaire,devise_id:devise_id,new_montant:new_montant},function(data){

            });
        });
    });

</script>
