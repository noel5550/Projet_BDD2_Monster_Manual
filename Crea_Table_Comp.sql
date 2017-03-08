-- Script créant la table Competences correspondant à R1 sur l'UML

-- Supprime la table pour pouvoir rappeler le script pour modifications
DROP TABLE Competences CASCADE CONSTRAINT;

-- Creation de la table
CREATE TABLE Competences (
	idMob NUMBER REFERENCES Caracteristique(idMob),
	competence VARCHAR2(20) ,
	valCompetence NUMBER NOT NULL,
	PRIMARY KEY (idMob, competence)
);
