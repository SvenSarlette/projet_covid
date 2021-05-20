CREATE DOMAIN Dsexe char(1) NOT NULL DEFAULT 'F' check(@col in( 'M','F' ) );
CREATE DOMAIN PerId int NOT NULL DEFAULT AUTOINCREMENT;
CREATE DOMAIN TesId int NOT NULL DEFAULT AUTOINCREMENT;


CREATE TABLE personne(
    persId PerId,
    prenom char(50),
    nom char(30),
    sexe Dsexe,
    bDay date,
    CONSTRAINT pk_personne PRIMARY KEY (persId)
);

CREATE TABLE testsCovid(
    testId TesId,
    testDate date,
    expiration date NOT NULL,
    resultat bit,
    CONSTRAINT pk_testsCovid PRIMARY KEY (testId)
);

CREATE TABLE villes(
    codePostal int,
    nom char(50),
    CONSTRAINT pk_villes PRIMARY KEY (codePostal)
);

CREATE TABLE visites(
    persId PerId,
    codePostal int,
    dateVisite date,
    CONSTRAINT fk_vil_visit FOREIGN KEY (codePostal) REFERENCES villes(codePostal),
    CONSTRAINT fk_pers_visit FOREIGN KEY (persId) REFERENCES personne(persId),
    CONSTRAINT pk_visites PRIMARY KEY (persId, codePostal, dateVisite)
);

CREATE TABLE allTests(
    persId PerId,
    testId TesId,
    CONSTRAINT fk_pers_tests FOREIGN KEY (persId) REFERENCES personne(persId),
    CONSTRAINT fk_test_pers FOREIGN KEY (testId) REFERENCES testsCovid(testId),
    CONSTRAINT pk_allTests PRIMARY KEY (persId, testId)
);

