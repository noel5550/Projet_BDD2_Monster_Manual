-- Script créant la table Race correspondant à R3 sur l'UML

-- Supprime la table pour pouvoir rappeler le script pour modifications
DROP TABLE Race CASCADE CONSTRAINT;

-- Creation de la table
CREATE TABLE Race (
	race VARCHAR2(20),
	habitat VARCHAR2 (20) NOT NULL,
	genre VARCHAR2 (20),
	PRIMARY KEY (race)
);
