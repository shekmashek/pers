ALTER TABLE employers DROP COLUMN fonction_emp;
ALTER TABLE employers ADD date_mariage DATE;
ALTER TABLE employers ADD nationalite_id bigint(20) UNSIGNED NOT NULL REFERENCES nationalites(id) ON DELETE CASCADE;
ALTER TABLE employers ADD status_matri_id bigint(20) UNSIGNED NOT NULL REFERENCES pers_status_matrimoniales(id) ON DELETE CASCADE;
ALTER TABLE employers ADD salaire_id bigint(20) UNSIGNED NOT NULL REFERENCES pers_salaires(id) ON DELETE CASCADE;
ALTER TABLE employers ADD fonction_id bigint(20) UNSIGNED NOT NULL REFERENCES fonctions(id) ON DELETE CASCADE;

ALTER TABLE employers ADD statut_emploi_id bigint(20) UNSIGNED NOT NULL REFERENCES pers_statut_emplois(id) ON DELETE CASCADE;
ALTER TABLE employers DROP COLUMN poste_emp;
ALTER TABLE employers ADD categorie_emploi_id bigint(20) UNSIGNED NOT NULL REFERENCES pers_categorie_emplois(id) ON DELETE CASCADE;

CREATE TABLE pers_historique_fonctions (
    `id` bigint(20) UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `employer_id` bigint(20) UNSIGNED NOT NULL REFERENCES employers(id) ON DELETE CASCADE,
  `fonction_id` bigint(20) UNSIGNED NOT NULL REFERENCES fonctions(id) ON DELETE CASCADE,
  `statut_emploi_id` bigint(20) UNSIGNED NOT NULL REFERENCES pers_statut_emplois(id) ON DELETE CASCADE,
  `categorie_emploi_id` bigint(20) UNSIGNED NOT NULL REFERENCES pers_categorie_emplois(id) ON DELETE CASCADE,
  `evenement_id` bigint(20) UNSIGNED NOT NULL REFERENCES pers_evenements(id) ON DELETE CASCADE,
  `created_at` timestamp NULL DEFAULT  current_timestamp(),
  `updated_at` timestamp NULL DEFAULT  current_timestamp()
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `pers_evenements`( `id`, `description`) VALUES
(1,'Changement du poste'),
(2,'Augmentation de salaire'),
(3,'Contrat initial'),
(4,'Renouvelement de contrat'),
(5,'Promu');
