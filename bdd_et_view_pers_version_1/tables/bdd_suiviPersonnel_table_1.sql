CREATE TABLE `pers_statut_emplois` (
  `id` bigint(20) UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `statut_emploi` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT  current_timestamp(),
  `updated_at` timestamp NULL DEFAULT  current_timestamp()
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `pers_statut_emplois` (`id`, `statut_emploi`,`created_at`, `updated_at`) VALUES
(1,'Free-lance','2022-05-17 11:56:28', '2022-05-17 11:56:28'),
(2,'Contrat à temps plein','2022-05-17 11:56:28', '2022-05-17 11:56:28'),
(3,'Temps plein permanent','2022-05-17 11:56:28', '2022-05-17 11:56:28'),
(4,'Probation à temps plein','2022-05-17 11:56:28', '2022-05-17 11:56:28'),
(5,'Contrat à temps partiel','2022-05-17 11:56:28', '2022-05-17 11:56:28'),
(6,'Stage à temps partiel','2022-05-17 11:56:28', '2022-05-17 11:56:28'),
(7,'Stage à temps plein','2022-05-17 11:56:28', '2022-05-17 11:56:28');

CREATE TABLE `pers_categorie_emplois` (
  `id` bigint(20) UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `categorie_emploi` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT  current_timestamp(),
  `updated_at` timestamp NULL DEFAULT  current_timestamp()
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `pers_categorie_emplois` (`id`, `categorie_emploi`,`created_at`, `updated_at`) VALUES
(1,'Artisans','2022-05-17 11:56:28', '2022-05-17 11:56:28'),
(2,'Ouvriers et aides','2022-05-17 11:56:28', '2022-05-17 11:56:28'),
(3,'Travailleur de bureau','2022-05-17 11:56:28', '2022-05-17 11:56:28'),
(4,'Officiels et gérants','2022-05-17 11:56:28', '2022-05-17 11:56:28'),
(5,'Agents','2022-05-17 11:56:28', '2022-05-17 11:56:28'),
(6,'Professionnels','2022-05-17 11:56:28', '2022-05-17 11:56:28'),
(7,'Vendeur','2022-05-17 11:56:28', '2022-05-17 11:56:28'),
(8,'Travailleurs de services','2022-05-17 11:56:28', '2022-05-17 11:56:28'),
(9,'Officier technique','2022-05-17 11:56:28', '2022-05-17 11:56:28'),
(10,'Techniciens','2022-05-17 11:56:28', '2022-05-17 11:56:28'),
(11,'Analystes','2022-05-17 11:56:28', '2022-05-17 11:56:28'),
(12,'Concepteurs','2022-05-17 11:56:28', '2022-05-17 11:56:28'),
(13,'Directeur','2022-05-17 11:56:28', '2022-05-17 11:56:28'),
(14,'Formateur','2022-05-17 11:56:28', '2022-05-17 11:56:28'),
(15,'Journaliste','2022-05-17 11:56:28', '2022-05-17 11:56:28'),
(16,'Monteurs et réparateurs','2022-05-17 11:56:28', '2022-05-17 11:56:28'),
(17,'Programmeurs','2022-05-17 11:56:28', '2022-05-17 11:56:28'),
(18,'Représentant','2022-05-17 11:56:28', '2022-05-17 11:56:28'),
(19,'Spécialiste','2022-05-17 11:56:28', '2022-05-17 11:56:28'),
(20,'Chasseurs','2022-05-17 11:56:28', '2022-05-17 11:56:28'),
(21,'Conducteur','2022-05-17 11:56:28', '2022-05-17 11:56:28'),
(22,'Courtiers','2022-05-17 11:56:28', '2022-05-17 11:56:28'),
(23,'Inspecteurs','2022-05-17 11:56:28', '2022-05-17 11:56:28'),
(24,'Instructeurs','2022-05-17 11:56:28', '2022-05-17 11:56:28'),
(25,'Manœuvres','2022-05-17 11:56:28', '2022-05-17 11:56:28'),
(26,'Personnel','2022-05-17 11:56:28', '2022-05-17 11:56:28'),
(27,'Pompiers','2022-05-17 11:56:28', '2022-05-17 11:56:28'),
(28,'Docteur','2022-05-17 11:56:28', '2022-05-17 11:56:28'),
(29,'Agriculteur','2022-05-17 11:56:28', '2022-05-17 11:56:28'),
(30,'Eleveur','2022-05-17 11:56:28', '2022-05-17 11:56:28'),
(31,'Cuisinier','2022-05-17 11:56:28', '2022-05-17 11:56:28'),
(32,'Charcutier','2022-05-17 11:56:28', '2022-05-17 11:56:28'),
(33,'Boulangier','2022-05-17 11:56:28', '2022-05-17 11:56:28'),
(34,'Ingénieur','2022-05-17 11:56:28', '2022-05-17 11:56:28'),
(35,'Fabricant','2022-05-17 11:56:28', '2022-05-17 11:56:28'),
(36,'Commerçants','2022-05-17 11:56:28', '2022-05-17 11:56:28'),
(37,'Magasinier','2022-05-17 11:56:28', '2022-05-17 11:56:28'),
(38,'Encaisseur','2022-05-17 11:56:28', '2022-05-17 11:56:28'),
(39,'Officiers','2022-05-17 11:56:28', '2022-05-17 11:56:28'),
(40,'Réparateurs','2022-05-17 11:56:28', '2022-05-17 11:56:28'),
(41,'Sociologues','2022-05-17 11:56:28', '2022-05-17 11:56:28'),
(42,'Eléctricien','2022-05-17 11:56:28', '2022-05-17 11:56:28'),
(43,'Supérviseurs','2022-05-17 11:56:28', '2022-05-17 11:56:28'),
(44,'Esthiticiens','2022-05-17 11:56:28', '2022-05-17 11:56:28'),
(45,'Avocat','2022-05-17 11:56:28', '2022-05-17 11:56:28'),
(46,'Juges','2022-05-17 11:56:28', '2022-05-17 11:56:28'),
(47,'Juristes','2022-05-17 11:56:28', '2022-05-17 11:56:28'),
(48,'Magistrats','2022-05-17 11:56:28', '2022-05-17 11:56:28'),
(49,'Professeurs','2022-05-17 11:56:28', '2022-05-17 11:56:28'),
(50,'Contrôleurs','2022-05-17 11:56:28', '2022-05-17 11:56:28'),
(51,'Manager','2022-05-17 11:56:28', '2022-05-17 11:56:28'),
(52,'Moniteur','2022-05-17 11:56:28', '2022-05-17 11:56:28'),
(53,'Codeurs','2022-05-17 11:56:28', '2022-05-17 11:56:28'),
(54,'Responsables','2022-05-17 11:56:28', '2022-05-17 11:56:28'),
(55,'Economistes','2022-05-17 11:56:28', '2022-05-17 11:56:28'),
(56,'Dessinateurs','2022-05-17 11:56:28', '2022-05-17 11:56:28'),
(57,'Designers','2022-05-17 11:56:28', '2022-05-17 11:56:28'),
(58,'Charpentiers','2022-05-17 11:56:28', '2022-05-17 11:56:28'),
(59,'Dégustateurs','2022-05-17 11:56:28', '2022-05-17 11:56:28'),
(60,'Emballeurs','2022-05-17 11:56:28', '2022-05-17 11:56:28'),
(61,'Manutentionnaires','2022-05-17 11:56:28', '2022-05-17 11:56:28');

CREATE TABLE `pers_mesure_disciplinaires` (
  `id` bigint(20) UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `nom_discipline` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT  current_timestamp(),
  `updated_at` timestamp NULL DEFAULT  current_timestamp()
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `pers_mesure_disciplinaires` (`id`, `nom_discipline`,`created_at`, `updated_at`) VALUES
(1,'Impolitesse','2022-05-17 11:56:28', '2022-05-17 11:56:28'),
(2,'Propos déplacé','2022-05-17 11:56:28', '2022-05-17 11:56:28'),
(3,'Abscence','2022-05-17 11:56:28', '2022-05-17 11:56:28'),
(4,'Présence injustifié','2022-05-17 11:56:28', '2022-05-17 11:56:28'),
(5,'Vol de temps','2022-05-17 11:56:28', '2022-05-17 11:56:28'),
(6,'Critique injustifié','2022-05-17 11:56:28', '2022-05-17 11:56:28'),
(7,'Vol','2022-05-17 11:56:28', '2022-05-17 11:56:28'),
(8,'Vandalisme','2022-05-17 11:56:28', '2022-05-17 11:56:28'),
(9,'Utilisation inappropriée des biens de l\'employeur','2022-05-17 11:56:28', '2022-05-17 11:56:28'),
(10,'Insubordination','2022-05-17 11:56:28', '2022-05-17 11:56:28'),
(11,'Attitude envers les supérieurs','2022-05-17 11:56:28', '2022-05-17 11:56:28'),
(12,'Réfus d\'excécuter une tâche','2022-05-17 11:56:28', '2022-05-17 11:56:28');

CREATE TABLE `pers_mesure_administratives` (
  `id` bigint(20) UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `descriptions` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT  current_timestamp(),
  `updated_at` timestamp NULL DEFAULT  current_timestamp()
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `pers_mesure_administratives` (`id`, `descriptions`,`created_at`, `updated_at`) VALUES
(1,'Abscence','2022-05-17 11:56:28', '2022-05-17 11:56:28'),
(2,'Dépendances','2022-05-17 11:56:28', '2022-05-17 11:56:28'),
(3,'Incompétence','2022-05-17 11:56:28', '2022-05-17 11:56:28'),
(4,'Incapacité à travailler dans le cadre de l\'entreprise','2022-05-17 11:56:28', '2022-05-17 11:56:28'),
(5,'Incapacité à fournir la prestation de travail','2022-05-17 11:56:28', '2022-05-17 11:56:28'),
(6,'Perte de permis de travail','2022-05-17 11:56:28', '2022-05-17 11:56:28');


CREATE TABLE `pers_sanctions` (
  `id` bigint(20) UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `nom_saction` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT  current_timestamp(),
  `updated_at` timestamp NULL DEFAULT  current_timestamp()
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `pers_sanctions` (`id`, `nom_saction`,`created_at`, `updated_at`) VALUES
(1,'Avis verbal','2022-05-17 11:56:28', '2022-05-17 11:56:28'),
(2,'Avis écrit','2022-05-17 11:56:28', '2022-05-17 11:56:28'),
(3,'Reprimande','2022-05-17 11:56:28', '2022-05-17 11:56:28'),
(4,'Plan de redressement','2022-05-17 11:56:28', '2022-05-17 11:56:28'),
(5,'Suspension sans solde de courte durée(1 à 3 jours)','2022-05-17 11:56:28', '2022-05-17 11:56:28'),
(6,'Suspension sans solde de moyenne durée(5 à 10 jours)','2022-05-17 11:56:28', '2022-05-17 11:56:28'),
(7,'Suspension sans solde de longue durée(plus de 10 jours)','2022-05-17 11:56:28', '2022-05-17 11:56:28'),
(8,'Suspension sans solde de très longue durée(plus de 60 jours)','2022-05-17 11:56:28', '2022-05-17 11:56:28'),
(9,'Suspension sans solde congédiement','2022-05-17 11:56:28', '2022-05-17 11:56:28'),
(10,'Fin d\'emploi','2022-05-17 11:56:28', '2022-05-17 11:56:28'),
(11,'l’avertissement','2022-05-17 11:56:28', '2022-05-17 11:56:28'),
(12,'le blâme','2022-05-17 11:56:28', '2022-05-17 11:56:28'),
(13,'la mise à pied disciplinaire','2022-05-17 11:56:28', '2022-05-17 11:56:28'),
(14,'la mise à pied conservatoire','2022-05-17 11:56:28', '2022-05-17 11:56:28'),
(15,'la rétrogradation','2022-05-17 11:56:28', '2022-05-17 11:56:28'),
(16,'la mutation','2022-05-17 11:56:28', '2022-05-17 11:56:28'),
(17,'le licenciement','2022-05-17 11:56:28', '2022-05-17 11:56:28');

