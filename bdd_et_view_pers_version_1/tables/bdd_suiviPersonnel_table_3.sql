ALTER TABLE employers DROP COLUMN fonction_emp;
ALTER TABLE employers ADD date_mariage DATE;
ALTER TABLE employers ADD nationalite_id bigint(20) UNSIGNED NOT NULL REFERENCES nationalites(id) ON DELETE CASCADE;
ALTER TABLE employers ADD status_matri_id bigint(20) UNSIGNED NOT NULL REFERENCES pers_status_matrimoniales(id) ON DELETE CASCADE;
ALTER TABLE employers ADD salaire_id bigint(20) UNSIGNED NOT NULL REFERENCES pers_salaires(id) ON DELETE CASCADE;
ALTER TABLE employers ADD fonction_id bigint(20) UNSIGNED NOT NULL REFERENCES fonctions(id) ON DELETE CASCADE;

ALTER TABLE employers ADD statut_emploi_id bigint(20) UNSIGNED NOT NULL REFERENCES pers_statut_emplois(id) ON DELETE CASCADE;
-- ALTER TABLE employers ADD permis_conduire VARCHAR(155) NOT NULL;
-- ALTER TABLE employers ADD numero_permis VARCHAR(155) NOT NULL;
ALTER TABLE employers DROP COLUMN poste_emp;
ALTER TABLE employers ADD categorie_emploi_id bigint(20) UNSIGNED NOT NULL REFERENCES pers_categorie_emplois(id) ON DELETE CASCADE;
