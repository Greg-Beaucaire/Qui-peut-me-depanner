-- On crée dans un premier temps les données liées aux demandeurs
INSERT INTO
  public.demandeurs (code, email, nom, adresse)
VALUES 
  ('GCKA767612JAZ', 'greg.beaucaire@gmail.com', 'Beaucaire', '1 rue de la gare 30100 Alès'),
  ('GCKA767612JAI', 'greg.pasbeaucaire@gmail.com', 'Feaucaire', '2 rue de la gare 30100 Alès'),
  ('GCKA767612JUY', 'greg.pseudobeaucaire@gmail.com', 'Deaucaire', '3 rue de la gare 30100 Alès'),
  ('GCKA767612JDJ', 'greg.almostbeaucaire@gmail.com', 'Reaucaire', '4 rue de la gare 30100 Alès'),
  ('GCKA767612JKO', 'greg.amoitiebeaucaire@gmail.com', 'Zeaucaire', '5 rue de la gare 30100 Alès'),
  ('GCKA767612JOK', 'greg.demibeaucaire@gmail.com', 'Teaucaire', '6 rue de la gare 30100 Alès'),
  ('GCKA767612JPL', 'greg.fauxbeaucaire@gmail.com', 'Peaucaire', '7 rue de la gare 30100 Alès'),
  ('GCKA767612JLP', 'greg.vraibeaucaire@gmail.com', 'Leaucaire', '8 rue de la gare 30100 Alès'),
  ('GCKA767612JMP', 'greg.truebeaucaire@gmail.com', 'Keaucaire', '9 rue de la gare 30100 Alès'),
  ('GCKA767612JPM', 'greg.falsebeaucaire@gmail.com', 'Meaucaire', '10 rue de la gare 30100 Alès'),
  ('GCKA767612JDC', 'greg.pipoubeaucaire@gmail.com', 'Veaucaire', '11 rue de la gare 30100 Alès'),
  ('GCKA767612JCD', 'greg.klucbeaucaire@gmail.com', 'Neaucaire', '12 rue de la gare 30100 Alès'),
  ('GCKA767612JFV', 'greg.flibitibeaucaire@gmail.com', 'Reaucraire', '13 rue de la gare 30100 Alès'),
  ('GCKA767612JVF', 'greg.titouanbeaucaire@gmail.com', 'Jeaucaire', '14 rue de la gare 30100 Alès'),
  ('GCKA767612JWQ', 'greg.tatouinebeaucaire@gmail.com', 'Veausaire', '15 rue de la gare 30100 Alès');

-- Ensuite on crée les données liées aux aidants
INSERT INTO
  public.aidants(code, email, photo, prenom, age, nom, adresse)
VALUES 
  ('GCKA767612JAZ', 'greg.beaucaire@gmail.com', 'moi.png', 'Grégoire', '28', 'Beaucaire', '1 rue de la gare 30100 Alès'),
  ('GCKA767612JAI', 'greg.pasbeaucaire@gmail.com', 'moi1.png', 'Grégoire', '28', 'Feaucaire', '2 rue de la gare 30100 Alès'),
  ('GCKA767612JUY', 'greg.pseudobeaucaire@gmail.com', 'moi2.png', 'Grégoire', '28', 'Deaucaire', '3 rue de la gare 30100 Alès'),
  ('GCKA767612JDJ', 'greg.almostbeaucaire@gmail.com', 'moi3.png', 'Grégoire', '28', 'Reaucaire', '4 rue de la gare 30100 Alès'),
  ('GCKA767612JKO', 'greg.amoitiebeaucaire@gmail.com', 'moi4.png', 'Grégoire', '28', 'Zeaucaire', '5 rue de la gare 30100 Alès'),
  ('GCKA767612JOK', 'greg.demibeaucaire@gmail.com', 'moi5.png', 'Grégoire', '28', 'Teaucaire', '6 rue de la gare 30100 Alès'),
  ('GCKA767612JPL', 'greg.fauxbeaucaire@gmail.com', 'moi12.png', 'Grégoire', '28', 'Peaucaire', '7 rue de la gare 30100 Alès'),
  ('GCKA767612JLP', 'greg.vraibeaucaire@gmail.com', 'moi13.png', 'Grégoire', '28', 'Leaucaire', '8 rue de la gare 30100 Alès'),
  ('GCKA767612JMP', 'greg.truebeaucaire@gmail.com', 'moi11.png', 'Grégoire', '28', 'Keaucaire', '9 rue de la gare 30100 Alès'),
  ('GCKA767612JPM', 'greg.falsebeaucaire@gmail.com', 'moi14.png', 'Grégoire', '28', 'Meaucaire', '10 rue de la gare 30100 Alès'),
  ('GCKA767612JDC', 'greg.pipoubeaucaire@gmail.com', 'moi15.png', 'Grégoire', '28', 'Veaucaire', '11 rue de la gare 30100 Alès'),
  ('GCKA767612JCD', 'greg.klucbeaucaire@gmail.com', 'moi21.png', 'Grégoire', '28', 'Neaucaire', '12 rue de la gare 30100 Alès'),
  ('GCKA767612JFV', 'greg.flibitibeaucaire@gmail.com', 'moi22.png', 'Grégoire', '28', 'Reaucraire', '13 rue de la gare 30100 Alès'),
  ('GCKA767612JVF', 'greg.titouanbeaucaire@gmail.com', 'moi23.png', 'Grégoire', '28', 'Jeaucaire', '14 rue de la gare 30100 Alès'),
  ('GCKA767612JWQ', 'greg.tatouinebeaucaire@gmail.com', 'moi24.png', 'Grégoire', '28', 'Veausaire', '15 rue de la gare 30100 Alès');

-- Ensuite on crée les données liées aux compétences
INSERT INTO
  public.competences(nom)
VALUES
  ('Jardinage'),
  ('Bricolage'),
  ('Dépanage informatique'),
  ('Anglais'),
  ('Mathématique'),
  ('Japonais');

-- Ensuite on crée les données liées aux zones géographiques
INSERT INTO
  public.zone_geo(code_commune, ville, code_postal, departement)
VALUES
  ('30007', 'Alès', '30100', 'Gard'),
  ('30189', 'Nîmes', '30000', 'Gard'),
  ('30334', 'Uzès', '30700', 'Gard'),
  ('30259', 'St-Hilaire-de-Brethmas', '30560', 'Gard');

-- Ensuite on crée les données liées aux disponibilités
INSERT INTO
  public.dispo(id_aidant, jour_debut, jour_fin, debut, fin)
VALUES
  (1, '23/01/2022', '23/01/2022', '12:00:00', '14:00:00'),
  (2, '24/01/2022', '24/01/2022', '12:00:00', '14:00:00'),
  (3, '23/01/2022', '23/01/2022', '11:00:00', '12:30:00'),
  (4, '23/02/2022', '24/02/2022', '12:00:00', '20:00:00'),
  (5, '25/01/2022', '25/01/2022', '17:00:00', '18:00:00'),
  (6, '28/01/2022', '29/01/2022', '08:00:00', '09:00:00'),
  (7, '23/01/2022', '24/01/2022', '20:00:00', '04:00:00'),
  (8, '30/01/2022', '30/01/2022', '12:00:00', '14:00:00'),
  (9, '26/01/2022', '27/01/2022', '20:00:00', '07:00:00'),
  (10, '10/02/2022', '10/02/2022', '04:00:00', '10:00:00'),
  (11, '21/01/2022', '22/01/2022', '18:00:00', '19:00:00'),
  (12, '23/03/2022', '23/03/2022', '12:00:00', '14:00:00'),
  (13, '23/04/2022', '23/04/2022', '12:00:00', '14:00:00'),
  (14, '23/05/2022', '23/05/2022', '12:00:00', '14:00:00'),
  (15, '23/06/2022', '23/06/2022', '12:00:00', '14:00:00');

-- Ensuite on crée les données dans la table relationnel agir qui lie les aidants et leurs zones géographiques d'activité
INSERT INTO 
  public.agissant(id_aidant, id_zone_geo)
VALUES
  (1, 1),
  (2, 1),
  (3, 1),
  (4, 1),
  (5, 1),
  (6, 2),
  (7, 2),
  (8, 2),
  (9, 2),
  (10, 3),
  (11, 3),
  (12, 3),
  (13, 4),
  (14, 4),
  (15, 4);

-- Ensuite on crée les données dans la table relationnel pouvoir_faire qui lie les aidants et leurs compétences
INSERT INTO 
  public.pouvant_faire(id_aidant, id_comp, taux)
VALUES
  (1, 1, '9.5'),
  (2, 1, '8'),
  (3, 2, '11'),
  (4, 2, '12.5'),
  (5, 3, '10'),
  (6, 3, '10'),
  (7, 4, '15'),
  (8, 4, '16'),
  (9, 5, '22'),
  (10, 5, '24'),
  (11, 5, '23.5'),
  (12, 5, '20'),
  (13, 6, '40'),
  (14, 6, '15'),
  (15, 6, '23');

-- Ensuite on crée les données dans la table reservation
INSERT INTO
  public.reservation(id_demandeur, id_aidant, id_comp, code, statut, jour, debut, fin)
VALUES
  (1, 4, 3,'SGLUBUFLUK420', 'en attente', '28-JAN-2022', '12:00:00', '14:00:00'),
  (2, 5, 2,'EORZEA90AZEP', 'refusée', '15-JAN-2022', '02:00:00', '04:00:00'),
  (3, 6, 5,'ZQSD098AZERTY', 'acceptée', '22-JAN-2022', '16:00:00', '17:00:00');