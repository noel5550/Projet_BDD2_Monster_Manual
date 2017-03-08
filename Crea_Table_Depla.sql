-- Script créant la table Deplacement correspondant à R1 sur l'UML

-- Supprime la table pour pouvoir rappeler le script pour modifications
DROP TABLE Deplacement CASCADE CONSTRAINT;

-- Creation de la table
CREATE TABLE Deplacement (
	idMob NUMBER  REFERENCES Caracteristique(idMob),
	deplacement VARCHAR(20),
	vitesse NUMBER NOT NULL,
	PRIMARY KEY (idMob,deplacement)
);
