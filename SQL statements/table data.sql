INSERT INTO personne
(prenom, nom, sexe, bDay)
VALUES 
('Henri', 'Dupre', 'M', 19700201),
('Sara', 'Tela', 'F', 19820510),
('Choupi', 'Choupa', 'M', 19690126),
('Kapou', 'Aira', 'F', 19810512);

INSERT INTO testsCovid
(testDate, expiration, resultat)
VALUES 
(20210428, 20210601, 1),
(20210429, 20210602, 0),
(20210428, 20210601, 1);

INSERT INTO villes
(codePostal, nom)
VALUES 
(8200, 'Bruges'),
(9000, 'Gand'),
(1000, 'Bruxelles'),
(4000, 'Liège'),
(1348, 'Louvain-La-Neuve');

INSERT INTO allTests
(persId, testId)
VALUES 
(1, 1),
(3, 2),
(4, 3);

INSERT INTO visites
(persId, codePostal, dateVisite)
VALUES 
(1, 8200, 20210312),
(1, 9000, 20210313),
(1, 8200, 20210314),
(1, 1000, 20210320),
(1, 4000, 20210321),
(2, 1348, 20210427),
(2, 1000, 20210428),
(3, 8200, 20210312),
(3, 9000, 20210313),
(3, 8200, 20210314),
(3, 1000, 20210320),
(3, 4000, 20210321),
(4, 8200, 20210312),
(4, 9000, 20210313),
(4, 8200, 20210314),
(4, 1000, 20210320),
(4, 4000, 20210321);