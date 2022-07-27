<header class="header row align-items-center g-0" id="header">
    <div class="col-3 d-flex flex-row padding_logo">
        <span><img src="{{asset('img/logos_all/iconPersonel.webp')}}" alt="" class="img-fluid menu_logo me-3"></span>
        @yield('title')
    </div>
    <div class="col-5 align-items-center justify-content-start d-flex flex-row ">
        <div class="row">
            <div class="searchBoxMod d-flex flex-row py-2">
                <div class="btn_racourcis me-4 Dossiers">
                    <a href="#" class="text-center" role="button">
                        <span class="d-flex flex-column">
                            <i class='bx bxs-user-detail mb-2 mt-1'></i>
                            <span class="text_racourcis">Dossiers</span>
                        </span>
                    </a>
                </div>
                <div class="btn_racourcis me-4 Emploi">
                    <a href="#" class="text-center" role="button">
                        <span class="d-flex flex-column">
                            <i class='bx bx-briefcase-alt-2 mb-2 mt-1'></i>
                            <span class="text_racourcis">Emploi</span>
                        </span>
                    </a>
                </div>
                <div class="btn_racourcis me-4 Salaire">
                    <a href="#"  class="text-center" role="button">
                        <span class="d-flex flex-column">
                            <i class='bx bx-money mb-2 mt-1'></i>
                            <span class="text_racourcis">Salaire</span>
                        </span>
                    </a>
                </div>
                <div class="btn_racourcis me-4 Sanction">
                    <a href="#" class="text-center" role="button">
                        <span class="d-flex flex-column">
                            <i class='bx bx-line-chart mb-2 mt-1'></i>
                            <span class="text_racourcis">Sanction</span>
                        </span>
                    </a>
                </div>


            </div>
        </div>
    </div>
    <div class="col-4 header-right align-items-center d-flex flex-row">
        <div class="col-4 d-flex flex-row justify-content-center apprendCreer pb-3">

        </div>
        <div class="col-8">
            <div class="row justify-content-end">
                <div class="col-12 text-end icones_header">
                    <a class="dropdown-toggle p-1" id="dropdownMenuSuite" data-bs-toggle="dropdown" aria-expanded="false" aria-haspopup="true"><i class='bx bx-grid-alt bx-burst-hover icon_creer_admin'></i></a>
                    <div class="dropdown-menu" aria-labelledby="dropdownMenuSuite">
                        <div class="card card_suite">
                            <div class="card-body py-3">
                                <div class="row">
                                    <div class="col-4 logo_suite">
                                            <a href="" class="text-center justify-content-center d-flex flex-column"><i class='bx bxs-user-circle icone_compte '></i><span class="mt-1">compte</span></a>

                                    </div>
                                    <div class="col-4 px-0 logo_suite">
                                        <a href="#" class="text-center justify-content-center d-flex flex-column"><img src="{{asset('img/logos_all/iconFormation.webp')}}" alt="logo formation" width="35px" height="35px" class="img-responsive mb-2"><span>formation</span></a>
                                    </div>
                                    <div class="col-4 px-0 logo_suite">
                                        <a href="#" class="text-center justify-content-center d-flex flex-column"><img src="{{asset('img/logos_all/iconPaie.webp')}}" alt="logo formation" width="35px" height="35px" class="img-responsive mb-2"><span>paie</span></a>
                                    </div>
                                </div>
                                <div class="row mt-4">
                                    <div class="col-4 px-0 logo_suite">
                                        <a href="#" class="text-center justify-content-center d-flex flex-column"><img src="{{asset('img/logos_all/iconConge.webp')}}" alt="logo formation" width="35px" height="35px" class="img-responsive mb-2"><span>congé</span></a>
                                    </div>
                                    <div class="col-4 px-0 logo_suite">
                                        <a href="#" class="text-center justify-content-center d-flex flex-column"><img src="{{asset('img/logos_all/iconPersonel.webp')}}" alt="logo formation" width="35px" height="35px" class="img-responsive mb-2"><span>personel</span></a>
                                    </div>
                                    <div class="col-4 px-0 logo_suite">
                                        <a href="http://127.0.0.1:8001/" target="_blank" class="text-center justify-content-center d-flex flex-column"><img src="{{asset('img/logos_all/iconRecrutement.webp')}}" alt="logo formation" width="35px" height="35px" class="img-responsive mb-2"><span>recrutement</span></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <a class="dropdown-toggle p-1" id="dropdownMenuProfil" data-bs-toggle="dropdown" aria-expanded="false" aria-haspopup="true"><i class='bx bx-user-circle icon_creer_admin'></i></a>
                    <div class="dropdown-menu p-0" aria-labelledby="dropdownMenuProfil">
                        <div class="card card_profile pt-3">
                            <div class="card-title">
                                <div class="row px-3 mt-2">
                                    <div class="col-7">
                                        <span class="titre_card_profil"><img src="{{asset('img/logos_all/iconFormation.webp')}}" alt="logo_mini" title="logo formation.mg" width="30px" height="30px">Formation.mg</span>
                                    </div>
                                    <div class="col-5 text-center">
                                        <div class="logout">
                                            <a href="{{ route('logout') }}" onclick="event.preventDefault(); document.getElementById('logout-form').submit();"></a>
                                            <a href="{{ route('logout') }}" onclick="event.preventDefault(); document.getElementById('logout-form').submit();" class=" text-center">Se déconnecter</a>
                                            <form action="{{ route('logout') }}" id="logout-form" method="POST" class="d-none">
                                                @csrf
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="card-body p-0">
                                <div class="row ps-4">
                                    <div class="col-2 ps-4">
                                        <span>
                                            <div style="display: grid; place-content: center">
                                                <div class='randomColor photo_users' style="color:white; font-size: 20px; border: none; border-radius: 100%; height: 65px; width: 65px ; display: grid; place-content: center">
                                                </div>
                                            </div>
                                        </span>
                                    </div>
                                    <div class="col-10 ps-4">
                                        <h6 class="mb-0 "></h6>
                                        <h6 class="mb-0 text-muted text_mail"></h6>
                                        <p id="nom_etp" class="mt-2"></p>
                                    </div>
                                </div>
                                <div class="row role_liste mt-2">
                                    <div class="col-12">
                                        <div class="row">
                                            <div class="col">
                                                <input type="text" value="" id="id_user" hidden>
                                                <span class="text-muted p-0 test_font">Connécté en tant que :</span>
                                            </div>
                                            <div class="col p-0">
                                                <ul id="liste_role" class="d-flex flex-column"></ul>
                                            </div>
                                        </div>
                                        <div class="row mt-5">
                                            <div class="d-flex flex-row py-0 justify-content-center">
                                                <a href="{{url('politique_confidentialite')}}" target="_blank">
                                                    <p class="m-0 test_font2">Politique de confidentialité</p>
                                                </a>
                                                &nbsp;-&nbsp;
                                                <a href="{{route('condition_generale_de_vente')}}" target="_blank">
                                                    <p class="m-0 test_font2">Conditions d'utilisation</p>
                                                </a>
                                            </div>
                                            <div class="d-flex flex-row py-0 justify-content-center">
                                                <a href="{{url('contacts')}}" target="_blank">
                                                    <p class="m-0 test_font2">Contactez-nous</p>
                                                </a>
                                                &nbsp;-&nbsp;
                                                <a href="{{url('info_legale')}}" target="_blank">
                                                    <p class="m-0 test_font2">Informations légales</p>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>

</header>
