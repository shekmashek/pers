CREATE TABLE `pers_contact_urgences` (
  `id` bigint(20) UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `employer_id` bigint(20) UNSIGNED NOT NULL REFERENCES employers(id) ON DELETE CASCADE,
  `nom` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prenom` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `relation` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tel_fixe` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tel_mobile` varchar(191) COLLATE utf8mb4_unicode_ci,
  `tel_travail` varchar(191) COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT  current_timestamp(),
  `updated_at` timestamp NULL DEFAULT  current_timestamp()
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `pers_personne_a_charges` (
    `id` bigint(20) UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `employer_id` bigint(20) UNSIGNED NOT NULL REFERENCES employers(id) ON DELETE CASCADE,
    `nom` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
    `prenom` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
    `date_naissance` DATE NOT NULL,
    `relation` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
    `created_at` timestamp NULL DEFAULT  current_timestamp(),
  `updated_at` timestamp NULL DEFAULT  current_timestamp()
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `pers_evenements`
(
    `id` bigint(20) UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `description` VARCHAR(191) COLLATE utf8mb4_unicode_ci NOT NULL
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE TABLE `pers_status_matrimoniales`
(
    `id` bigint(20) UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `status` VARCHAR(191) COLLATE utf8mb4_unicode_ci NOT NULL
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE utf8mb4_unicode_ci;

INSERT INTO `pers_status_matrimoniales` (`id`, `status`) VALUES
(1, 'Célibataire'),
(2, 'Marié(e)'),
(3, 'Divorcé(e)'),
(4,'Veuf(ve)');

CREATE TABLE `pers_groupe_sanguins`
(
    `id` bigint(20) UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `groupe_sang` VARCHAR(191) COLLATE utf8mb4_unicode_ci NOT NULL
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE TABLE `pers_allergies`
(
    `id` bigint(20) UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `nom_allergie` VARCHAR(191) COLLATE utf8mb4_unicode_ci NOT NULL
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE TABLE `pers_maladie_chroniques`
(
    `id` bigint(20) UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `nom_maladie` VARCHAR(191) COLLATE utf8mb4_unicode_ci NOT NULL
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE TABLE `pers_intolerances`
(
    `id` bigint(20) UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `nom_intolérance` VARCHAR(191) COLLATE utf8mb4_unicode_ci NOT NULL
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE utf8mb4_unicode_ci;


CREATE TABLE `pers_historique_employers`
(
    `ìd` bigint(20) UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `employer_id` bigint(20) UNSIGNED NOT NULL REFERENCES employers(id) ON DELETE CASCADE,
    `evenement_id` bigint(20) UNSIGNED NOT NULL REFERENCES pers_evenements(id) ON DELETE CASCADE,
    `sanction_id` bigint(20) UNSIGNED NOT NULL REFERENCES pers_sanctions(id) ON DELETE CASCADE,
    `pers_charger_id` bigint(20) UNSIGNED NOT NULL REFERENCES pers_personne_a_charges(id) ON DELETE CASCADE,
    `date_adhesion` date NOT NULL,
    `date_fin_probation` date NOT NULL,
    `date_permanence` date NOT NULL,
    `mesure_disciplinaire_id` bigint(20) UNSIGNED NOT NULL REFERENCES pers_mesure_disciplinaires(id) ON DELETE CASCADE,
    `mesure_administrative_id` bigint(20) UNSIGNED NOT NULL REFERENCES pers_mesure_administratives(id) ON DELETE CASCADE
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE TABLE `pers_information_sanitaires` (
  `id` bigint(20) UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `employer_id` bigint(20) UNSIGNED NOT NULL REFERENCES employers(id) ON DELETE CASCADE,
  `groupe_sanguin_id`  bigint(20) UNSIGNED NOT NULL REFERENCES pers_groupe_sanguins(id) ON DELETE CASCADE,
  `allergie_id`  bigint(20) UNSIGNED NOT NULL REFERENCES pers_allergies(id) ON DELETE CASCADE,
  `intolerance_id`  bigint(20) UNSIGNED NOT NULL REFERENCES pers_intolerances(id) ON DELETE CASCADE,
  `maladie_id` bigint(20) UNSIGNED NOT NULL REFERENCES maladie_chroniques(id) ON DELETE CASCADE,
  `created_at` timestamp NULL DEFAULT  current_timestamp(),
  `updated_at` timestamp NULL DEFAULT  current_timestamp()
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `nationalites`(
    `id` bigint(20) UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `pays` VARCHAR(191) COLLATE utf8mb4_unicode_ci NOT NULL,
    `nationalite` VARCHAR(191) COLLATE utf8mb4_unicode_ci NOT NULL
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO `nationalites` (`id`,`pays`,`nationalite`) VALUES
(1,'Afghanistan','afghan'),
(2,'Albanie','albanais'),
(3,'Algérie','Algérien'),
(4,'Andorre','Andorran'),
(5,'Angola','Angolais'),
(6,'Antigua-et-Barbuda','Antiguan ou Barbudan'),
(7,'Argentine','Argentin'),
(8,'Arménie','arménien'),
(9,'Australie','Australien'),
(10,'Autriche','Autrichien'),
(11,'Azerbaïdjan','Azerbaïdjanaisou Azéri'),
(12,'Les Bahamas','Bahamien'),
(13,'Bahreïn','Bahreïn'),
(14,'Bangladesh','bengali'),
(15,'Barbade','Barbadien'),
(16,'Biélorussie','Biélorusse'),
(17,'Belgique','Belge'),
(18,'Belize','Belize'),
(19,'Bénin','Béninois'),
(20,'Bhoutan','Bhoutanais'),
(21,'Bolivie','bolivien'),
(22,'Bosnie Herzégovine','Bosnie-Herzégovine'),
(23,'Botswana','Motswana ou Botswanan'),
(24,'Brésil','Brésilien'),
(25,'Brunei','Bruneian'),
(26,'Bulgarie','Bulgare'),
(27,'Burkina Faso','Burkinabé'),
(28,'Birmanie','birman'),
(29,'Burundi','Burundi'),
(30,'Cabo Verde','Cabo Verdean'),
(31,'Cambodge','Cambodgien'),
(32,'Cameroun','Camerounais'),
(33,'Canada','canadienne'),
(34,'République centrafricaine','Afrique centrale'),
(35,'Tchad'	,'Tchadien'),
(36,'Chili','Chilien'),
(37,'Chine','République populaire de Chinois'),
(38,'Colombie','colombien'),
(39,'Comores','Comoran ou Comorien'),
(40,'Congo','République démocratique du congolais'),
(41,'Congo','République du congolais'),
(42,'Costa Rica','Costaricain'),
(43,'Côte d\'Ivoire','Ivoirien'),
(44,'Croatie','croate'),
(45,'Cuba','cubain'),
(46,'Chypre','Chypriote'),
(47,'République tchèque','Tchèque'),
(48,'Danemark','Danois'),
(49,'Djibouti','Djiboutien'),
(50,'Dominique','dominicain'),
(51,'République Dominicaine','dominicain'),
(52,'Timor oriental','Timorais'),
(53,'Équateur','Équatorien'),
(54,'Égypte','Égyptien'),
(55,'El Salvador','Salvadorien'),
(56,'Guinée Équatoriale','Équato-guinéenne ou équato-guinéenne'),
(57,'Érythrée','Érythrée'),
(58,'Estonie','estonien'),
(59,'Éthiopie','Éthiopien'),
(60,'Fidji','Fidjien'),
(61,'Finlande','Finlandais'),
(62,'France','Français'),
(63,'Gabon','gabonais'),
(64,'Gambie','Le gambien'),
(65,'Géorgie','géorgien'),
(66,'Allemagne','Allemand'),
(67,'Ghana','ghanéen'),
(68,'Gibraltar','Gibraltar'),
(69,'Grèce','Grec ou hellénique'),
(70,'Grenade','Grenadian'),
(71,'Guatemala','guatémaltèque'),
(72,'Guinée','Guinéenne'),
(73,'Guinée-Bissau','Bissau-Guinéen'),
(74,'Guyane','guyanais'),
(75,'Haïti','Haïtien'),
(76,'Honduras','Honduras'),
(77,'Hongrie','Hongrois ou magyar'),
(78,'Islande','Islandais'),
(79,'Inde','Indien'),
(80,'Indonésie','Indonesian'),
(81,'Iran','Iranien ou Persan'),
(82,'Irak','irakien'),
(83,'Irlande','irlandais'),
(84,'Israël','israélien'),
(85,'Italie','Italien'),
(86,'Côte d\'Ivoire','Ivoirien'),
(87,'Jamaïque','jamaïquain'),
(88,'Japon','Japonais'),
(89,'Jordanie','jordanien'),
(90,'Kazakhstan','Kazakhstani ou Kazakh'),
(91,'Kenya','Kényen'),
(92,'Kiribati','I-Kiribati'),
(93,'Corée du Nord','Nord coréen'),
(94,'Corée du Sud','Corée du Sud'),
(95,'Koweit','koweïtien'),
(96,'Kirghizistan', 'Kirghize ou Kirghiz'),
(97,'Laos','Lao ou laotien'),
(98,'Lettonie','Letton ou Letton'),
(99,'Liban','libanais'),
(100,'Lesotho','Basotho'),
(101,'Libéria','Libérienne'),
(102,'Libye','Libye'),
(103,'Liechtenstein','Liechtenstein'),
(104,'Lituanie','lituanien'),
(105,'Luxembourg','luxembourgeois'),
(106,'Macédoine', 'République de macédonien'),
(107,'Madagascar','malgache'),
(108,'Malawi','Malawite'),
(109,'Malaisie','Malaisie'),
(110,'Maldives','Maldives'),
(111,'Mali','Malien ou malinais'),
(112,'Malte','maltais'),
(113,'Iles Marshall','Marshall'),
(114,'Martinique','Martiniquais ou Martinican'),
(115,'Mauritanie','Mauritanien'),
(116,'Ile Maurice','Mauricien'),
(117,'Mexique','Mexicain'),
(118,'Micronésie','Micronésiens'),
(119,'Moldavie','Moldave'),
(120,'Monaco','Monégasque ou Monacan'),
(121,'Mongolie','mongol'),
(122,'Monténégro','monténégrin'),
(123,'Maroc','Marocain'),
(124,'Mozambique','Mozambique'),
(125,'Namibie','Namibie'),
(126,'nauru','nauruan'),
(127,'Népal','Népalais'),
(128,'Pays-Bas', 'Néerlandais'),
(129,'Nouvelle-Zélande', 'Zelanian'),
(130,'Nicaragua','nicaraguayen'),
(131,'Niger','Nigerien'),
(132,'Nigeria','Nigeria'),
(133,'Îles Mariannes du Nord','Marianan du Nord'),
(134,'Norvège','Norvégien'),
(135,'Oman','Oman'),
(136,'Pakistan','Pakistanais'),
(137,'Palau','Palauan'),
(138,'La Palestine','palestinien'),
(139,'Panama','panaméen'),
(140,'Papouasie-Nouvelle-Guinée','Papouasie'),
(141,'Paraguay','Paraguayen'),
(142,'Pérou','péruvien'),
(143,'Philippines','philippin'),
(144,'Pologne','Polonais'),
(145,'Portugal','Portugais'),
(146,'Porto Rico','portoricain'),
(147,'Qatar','Qatari'),
(148,'Roumanie','roumain'),
(149,'Russie','Russe'),
(150,'Rwanda','Rwandais'),
(151,'Saint-Christophe-et-Niévès','Kittitien ou Nevisien'),
(152,'Sainte-Lucie','Saint Lucian'),
(153,'Saint-Vincent-et-les-Grenadines','Saint Vincentien'),
(154,'Samoa','samoan'),
(155,'Saint Marin','Saint-Marin'),
(156,'São Tomé et Príncipe','São Toméan'),
(157,'Arabie Saoudite','Arabie saoudite'),
(158,'Sénégal','Sénégalais'),
(159,'la Serbie','serbe'),
(160,'les Seychelles','Seychellois'),
(161,'Sierra Leone','Sierra Leone'),
(162,'Singapour','Singapourien'),
(163,'Slovaquie','Slovaque'),
(164,'Slovénie', 'Slovène'),
(165,'Les îles Salomon','Îles Salomon'),
(166,'Somalie','somali'),
(167,'Afrique du Sud', 'Sud africain'),
(168,'Soudan du sud','Soudan du Sud'),
(169,'Espagne','Espagnol'),
(170,'Sri Lanka','Sri lankais'),
(171,'Soudan','soudanais'),
(172,'Suriname','Surinamais'),
(173,'Swaziland','Swazi'),
(174,'Suède','Suédois'),
(175,'Suisse','Suisse'),
(176,'Syrie','syrien'),
(177,'Tadjikistan','Tadjikistan'),
(178,'Tanzanie','tanzanien'),
(179,'Thaïlande','Thai'),
(180,'Timor-Leste','Timorais'),
(181,'Togo','Togolais'),
(182,'Tokelau','Tokélaouan'),
(183,'tonga','Tongan'),
(184,'Trinité-et-Tobago','Trinite-et-Tobago'),
(185,'Tunisie','Tunisien'),
(186,'Turquie','turc'),
(187,'Turkménistan','Turkmène'),
(188,'tuvalu','Tuvaluan'),
(189,'Ouganda','Ougandais'),
(190,'Ukraine','ukrainien'),
(191,'Emirats Arabes Unis','Emirati ou Emirian ou Emiri'),
(192,'Royaume-Uni de Grande-Bretagne et d\'Irlande du Nord','UK ou britannique'),
(193,'États-Unis','américain'),
(194,'Uruguay','uruguayen'),
(195,'Ouzbékistan','Ouzbékistan ou ouzbek'),
(196,'vanuatu','Vanuatuan'),
(197,'Cité du Vatican','Vatican'),
(198,'Venezuela','vénézuélien'),
(199,'Vietnam','vietnamien'),
(200,'Yémen','Yéménite'),
(201,'Zambie','Zambien'),
(202,'Zimbabwe','zimbabwéen');



