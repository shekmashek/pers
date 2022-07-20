CREATE TABLE pers_historique_salaires(
    id BIGINT(20) UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    employe_id BIGINT(20) UNSIGNED NOT NULL REFERENCES employers(id) ON DELETE CASCADE,
    salaire_id BIGINT(20) UNSIGNED NOT NULL REFERENCES paie_detail_salaire_numeraires(id) ON DELETE CASCADE,
    prime_indemnite_id BIGINT(20) UNSIGNED NOT NULL REFERENCES paie_detail_prime_indemnites(id) ON DELETE CASCADE,
    avantage_en_nature_id BIGINT(20) UNSIGNED NOT NULL REFERENCES paie_detail_avantage_en_natures(id) ON DELETE CASCADE
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE paie_fiche_de_paie(
    id BIGINT(20) UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    date_fiche DATE NOT NULL,
    id_employer BIGINT(20) UNSIGNED NOT NULL,
    stat VARCHAR(255),
    FOREIGN KEY(id_employer) REFERENCES employers(id) ON DELETE CASCADE
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE paie_salaire_numeraires(
    id BIGINT(20) UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    code VARCHAR(255),
    designation VARCHAR(255),
    taux BIGINT(20),
    unite VARCHAR(50)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO paie_salaire_numeraires(code,designation,unite)VALUES('1000','Salaire de base(Mensuel)','Ariary');
INSERT INTO paie_salaire_numeraires(code,designation,taux,unite)VALUES('1200','HSNI130%(Heure Supp. Non Imposable 130%)','130','Heure');
INSERT INTO paie_salaire_numeraires(code,designation,taux,unite)VALUES('1201','HSNI150%(Heure Supp. Non Imposable 150%)','150','Heure');
INSERT INTO paie_salaire_numeraires(code,designation,taux,unite)VALUES('1202','HSI130%(Heure Supp. Imposable 130%)','130','Heure');
INSERT INTO paie_salaire_numeraires(code,designation,taux,unite)VALUES('1203','HSI150%(Heure Supp. Imposable 150%)','150','Heure');
INSERT INTO paie_salaire_numeraires(code,designation,taux,unite)VALUES('1204','HNN(Heure de Nuit normale) 30%','30','Heure');
INSERT INTO paie_salaire_numeraires(code,designation,taux,unite)VALUES('1205','HNO(Heure de nuit Occasionnel) 50%','50','Heure');
INSERT INTO paie_salaire_numeraires(code,designation,taux,unite)VALUES('1206','HDIM(Heure de Dimanche) 40%','40','Heure');
INSERT INTO paie_salaire_numeraires(code,designation,taux,unite)VALUES('1207','HF(Heure Jour Ferier) 100%','100','Heure');
INSERT INTO paie_salaire_numeraires(code,designation,unite)VALUES('2000','A compte','Ariary');
INSERT INTO paie_salaire_numeraires(code,designation,unite)VALUES('3000','Allocation congé payé','Jour');
INSERT INTO paie_salaire_numeraires(code,designation,unite)VALUES('3001','Absence et congé','Jour');

CREATE TABLE paie_detail_salaire_numeraires(
    id BIGINT(20) UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    id_fiche_de_paie BIGINT(20) UNSIGNED NOT NULL,
    id_salaire_numeraire BIGINT(20) UNSIGNED NOT NULL,
    nombre DECIMAL(19 , 2),
    base DECIMAL(19 , 2),
    montant_part_salarial DECIMAL(19 , 2),
    taux_part_salarial BIGINT(20),
    type_part_salarial VARCHAR(100),
    FOREIGN KEY(id_salaire_numeraire) REFERENCES paie_salaire_numeraires(id) ON DELETE CASCADE,
    FOREIGN KEY(id_fiche_de_paie) REFERENCES paie_fiche_de_paie(id) ON DELETE CASCADE
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE paie_prime_indemnites(
    id BIGINT(20) UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    code VARCHAR(255),
    designation VARCHAR(255),
    unite VARCHAR(50)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO paie_prime_indemnites(code,designation) VALUES('4000','Acienneté');
INSERT INTO paie_prime_indemnites(code,designation) VALUES('4001','Treisieme mois');
INSERT INTO paie_prime_indemnites(code,designation) VALUES('4002','Performance');

CREATE TABLE paie_detail_prime_indemnites(
    id BIGINT(20) UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    id_fiche_de_paie BIGINT(20) UNSIGNED NOT NULL,
    id_prime_indemnites BIGINT(20) UNSIGNED NOT NULL,
    nombre BIGINT(20),
    base DECIMAL(19 , 2),
    montant_part_salarial DECIMAL(19 , 2),
    taux_part_salarial BIGINT(20),
    type_part_salarial VARCHAR(100),
    FOREIGN KEY(id_prime_indemnites) REFERENCES paie_prime_indemnites(id) ON DELETE CASCADE,
    FOREIGN KEY(id_fiche_de_paie) REFERENCES paie_fiche_de_paie(id) ON DELETE CASCADE
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE paie_avantage_en_natures(
    id BIGINT(20) UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    code VARCHAR(255),
    designation VARCHAR(255),
    unite VARCHAR(50)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO paie_avantage_en_natures(code,designation)VALUES('5000','Logement');
INSERT INTO paie_avantage_en_natures(code,designation)VALUES('5001','Véhicule');
INSERT INTO paie_avantage_en_natures(code,designation)VALUES('5002','Téléphone');


CREATE TABLE paie_detail_avantage_en_natures(
    id BIGINT(20) UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    id_fiche_de_paie BIGINT(20) UNSIGNED NOT NULL,
    id_avantage_en_natures BIGINT(20) UNSIGNED NOT NULL,
    nombre BIGINT(20),
    base DECIMAL(19 , 2),
    montant_part_salarial DECIMAL(19 , 2),
    taux_part_salarial BIGINT(20),
    gain_salarial VARCHAR(100),
    FOREIGN KEY(id_avantage_en_natures) REFERENCES paie_avantage_en_natures(id) ON DELETE CASCADE,
    FOREIGN KEY(id_fiche_de_paie) REFERENCES paie_fiche_de_paie(id) ON DELETE CASCADE
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE paie_cotisations(
    id BIGINT(20) UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    code VARCHAR(255),
    designation VARCHAR(255),
    taux_part_salarial BIGINT(20),
    taux_part_patronal BIGINT(20),
    unite VARCHAR(50)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO paie_cotisations(code,designation,taux_part_salarial,taux_part_patronal)VALUES('5000','Retenu CNAPS',1,13);
INSERT INTO paie_cotisations(code,designation,taux_part_salarial,taux_part_patronal)VALUES('6000','Retenu OSTIE',1,5);
INSERT INTO paie_cotisations(code,designation,taux_part_salarial,taux_part_patronal)VALUES('7000','FMFP',0,1);

CREATE TABLE paie_detail_cotisations(
    id BIGINT(20) UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    id_fiche_de_paie BIGINT(20) UNSIGNED NOT NULL,
    id_cotisations BIGINT(20) UNSIGNED NOT NULL,
    nombre DECIMAL(19 , 2),
    base DECIMAL(19 , 2),
    montant_part_salarial DECIMAL(19 , 2),
    taux_part_salarial BIGINT(20),
    type_salarial VARCHAR(100),
    taux_part_patronal BIGINT(20),
    montant_part_patronal DECIMAL(19 , 2),
    FOREIGN KEY(id_cotisations) REFERENCES paie_cotisations(id) ON DELETE CASCADE,
    FOREIGN KEY(id_fiche_de_paie) REFERENCES paie_fiche_de_paie(id) ON DELETE CASCADE
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE paie_totals(
    id BIGINT(20) UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    id_fiche_de_paie BIGINT(20) UNSIGNED NOT NULL,
    nom_total DECIMAL(19 , 2),
    total_gain_salarial DECIMAL(19 , 2),
    total_retenu_salarial DECIMAL(19 , 2),
    total_gain_patronal DECIMAL(19 , 2),
    total_retenu_patronal DECIMAL(19 , 2),
    FOREIGN KEY(id_fiche_de_paie) REFERENCES paie_fiche_de_paie(id) ON DELETE CASCADE
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


/* Irsa */
CREATE TABLE paie_irsa(
    id BIGINT(20) UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    code VARCHAR(255),
    designation VARCHAR(255)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO paie_irsa(code,designation)VALUES('8000','Retenu Irsa');

CREATE TABLE paie_taux_irsa(
    id BIGINT(20) UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    id_irsa BIGINT(20) UNSIGNED NOT NULL,
    salaire_min BIGINT(20) UNSIGNED NOT NULL,
    salaire_max BIGINT(20) UNSIGNED NOT NULL,
    pourcentage BIGINT(20) UNSIGNED NOT NULL,
    FOREIGN KEY(id_irsa) REFERENCES paie_taux_irsa(id) ON DELETE CASCADE
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO paie_taux_irsa(id_irsa,salaire_min,salaire_max,pourcentage)VALUES(1,0,350000,0);
INSERT INTO paie_taux_irsa(id_irsa,salaire_min,salaire_max,pourcentage)VALUES(1,350001,400000,5);
INSERT INTO paie_taux_irsa(id_irsa,salaire_min,salaire_max,pourcentage)VALUES(1,400001,500000,10);
INSERT INTO paie_taux_irsa(id_irsa,salaire_min,salaire_max,pourcentage)VALUES(1,500001,600000,15);
INSERT INTO paie_taux_irsa(id_irsa,salaire_min,pourcentage)VALUES(1,600001,20);

CREATE TABLE paie_conges(
    id BIGINT(20) UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    code VARCHAR(255),
    designation VARCHAR(255),
    unite VARCHAR(50)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE paie_detail_conges(
    id BIGINT(20) UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    id_fiche_de_paie BIGINT(20) UNSIGNED NOT NULL,
    id_conges BIGINT(20) UNSIGNED NOT NULL,
    nombre BIGINT(20),
    base DECIMAL(19 , 2),
    montant_part_salarial DECIMAL(19 , 2),
    taux_part_salarial BIGINT(20),
    type_part_salarial VARCHAR(100),
    FOREIGN KEY(id_conges) REFERENCES paie_conges(id) ON DELETE CASCADE,
    FOREIGN KEY(id_fiche_de_paie) REFERENCES paie_fiche_de_paie(id) ON DELETE CASCADE
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE paie_heures(
    id BIGINT(20) UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    date_travaille DATE NOT NULL
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
