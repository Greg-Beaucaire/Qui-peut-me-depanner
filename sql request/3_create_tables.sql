CREATE TABLE aidants(
   id_aidant SERIAL,
   code VARCHAR(250) NOT NULL,
   email VARCHAR(250) NOT NULL,
   photo VARCHAR(255) NOT NULL,
   prenom VARCHAR(255) NOT NULL,
   age VARCHAR(3) NOT NULL,
   nom VARCHAR(250) NOT NULL,
   adresse VARCHAR(250) NOT NULL,
   CONSTRAINT PK_aidants PRIMARY KEY(id_aidant),
   CONSTRAINT AK_aidants UNIQUE(code),
   CONSTRAINT AK_aidants_1 UNIQUE(email)
);

CREATE TABLE demandeurs(
   id_demandeur SERIAL,
   code VARCHAR(50) NOT NULL,
   email VARCHAR(250) NOT NULL,
   nom VARCHAR(250) NOT NULL,
   adresse VARCHAR(250) NOT NULL,
   CONSTRAINT PK_demandeurs PRIMARY KEY(id_demandeur),
   CONSTRAINT AK_demandeurs UNIQUE(code),
   CONSTRAINT AK_demandeurs_1 UNIQUE(email)
);

CREATE TABLE zone_geo(
   id_zone_geo SERIAL,
   code_commune VARCHAR(50) NOT NULL,
   ville VARCHAR(255) NOT NULL,
   code_postal VARCHAR(50) NOT NULL,
   departement VARCHAR(50) NOT NULL,
   CONSTRAINT PK_zone_geo PRIMARY KEY(id_zone_geo),
   CONSTRAINT AK_zone_geo UNIQUE(code_commune)
);

CREATE TABLE dispo(
   id_dispo SERIAL,
   jour_debut VARCHAR(50) NOT NULL,
   jour_fin VARCHAR(50) NOT NULL,
   debut TIME NOT NULL,
   fin TIME NOT NULL,
   id_aidant INTEGER NOT NULL,
   CONSTRAINT PK_dispo PRIMARY KEY(id_dispo),
   CONSTRAINT AK_dispo_ident UNIQUE(jour_debut, jour_fin, debut, fin),
   CONSTRAINT FK_dispo_aidants FOREIGN KEY(id_aidant) REFERENCES aidants(id_aidant)
);

CREATE TABLE competences(
   id_comp SERIAL,
   nom VARCHAR(50) NOT NULL,
   CONSTRAINT PK_competences PRIMARY KEY(id_comp),
   CONSTRAINT AK_competences UNIQUE(nom)
);

CREATE TABLE reservation(
   id_reservation SERIAL,
   code VARCHAR(50) NOT NULL,
   statut VARCHAR(50) NOT NULL,
   jour DATE NOT NULL,
   debut TIME NOT NULL,
   fin TIME NOT NULL,
   id_comp INTEGER NOT NULL,
   id_demandeur INTEGER NOT NULL,
   id_aidant INTEGER NOT NULL,
   CONSTRAINT PK_reservation PRIMARY KEY(id_reservation),
   CONSTRAINT AK_reservation UNIQUE(code),
   CONSTRAINT FK_reservation_competences FOREIGN KEY(id_comp) REFERENCES competences(id_comp),
   CONSTRAINT FK_reservation_demandeurs FOREIGN KEY(id_demandeur) REFERENCES demandeurs(id_demandeur),
   CONSTRAINT FK_reservation_aidants FOREIGN KEY(id_aidant) REFERENCES aidants(id_aidant)
);

CREATE TABLE agissant(
   id_aidant INTEGER,
   id_zone_geo INTEGER,
   CONSTRAINT PK_agissant PRIMARY KEY(id_aidant, id_zone_geo),
   CONSTRAINT FK_agissant_aidants FOREIGN KEY(id_aidant) REFERENCES aidants(id_aidant),
   CONSTRAINT FK_agissant_zone_geo FOREIGN KEY(id_zone_geo) REFERENCES zone_geo(id_zone_geo)
);

CREATE TABLE pouvant_faire(
   id_aidant INTEGER,
   id_comp INTEGER,
   taux VARCHAR(50) NOT NULL,
   CONSTRAINT PK_pouvant_faire PRIMARY KEY(id_aidant, id_comp),
   CONSTRAINT FK_pouvant_faire_aidants FOREIGN KEY(id_aidant) REFERENCES aidants(id_aidant),
   CONSTRAINT FK_pouvant_faire_competences FOREIGN KEY(id_comp) REFERENCES competences(id_comp)
);
