CREATE TABLE pers_historique_salaires(
    `id` bigint(20) UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `employer_id` bigint(20) UNSIGNED NOT NULL REFERENCES employers(id) ON DELETE CASCADE,
  `montant` DECIMAL(19,2),
  `devise_id` bigint(20) UNSIGNED NOT NULL REFERENCES devises(id) ON DELETE CASCADE,
  `evenement_id` bigint(20) UNSIGNED NOT NULL REFERENCES pers_evenements(id) ON DELETE CASCADE,
  `created_at` timestamp NULL DEFAULT  current_timestamp(),
  `updated_at` timestamp NULL DEFAULT  current_timestamp()
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE pers_salaire_bases(
    `id` bigint(20) UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `employer_id` bigint(20) UNSIGNED NOT NULL REFERENCES employers(id) ON DELETE CASCADE,
  `montant` DECIMAL(19,2),
  `devise_id` bigint(20) UNSIGNED NOT NULL REFERENCES devises(id) ON DELETE CASCADE,
  `created_at` timestamp NULL DEFAULT  current_timestamp(),
  `updated_at` timestamp NULL DEFAULT  current_timestamp()
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
