-- Script créant la table Caracteristique correspondant à R6 sur l'UML

-- Supprime la table et la séquence pour pouvoir rappeler le script pour modifications
DROP TABLE Caracteristique CASCADE CONSTRAINT;
DROP SEQUENCE seqIdMob;

-- Creation de la table
CREATE TABLE Caracteristique (
	idMob NUMBER,
	nom VARCHAR2(50) NOT NULL,
	taille VARCHAR2(20) REFERENCES Taille(taille) NOT NULL,
	race VARCHAR2(20) REFERENCES Race(race) NOT NULL,
	morale VARCHAR2(20),
	ethique VARCHAR2(20),
	aC NUMBER CONSTRAINT acCheck CHECK(aC BETWEEN 1 AND 30) NOT NULL,
	multiplePV NUMBER NOT NULL,
	constantePV NUMBER NOT NULL,
	PV NUMBER,
	cR NUMBER REFERENCES XPChallenge(cR) NOT NULL,
	attSTR NUMBER CONSTRAINT attSTRCheck CHECK(attSTR BETWEEN 1 AND 30) NOT NULL,
	attDEX NUMBER CONSTRAINT attDEXCheck CHECK(attDEX BETWEEN 1 AND 30) NOT NULL,
	attCON NUMBER CONSTRAINT attCONCheck CHECK(attCON BETWEEN 1 AND 30) NOT NULL,
	attINT NUMBER CONSTRAINT attINTCheck CHECK(attINT BETWEEN 1 AND 30) NOT NULL,
	attWIS NUMBER CONSTRAINT attWISCheck CHECK(attWIS BETWEEN 1 AND 30) NOT NULL,
	attCHA NUMBER CONSTRAINT attCHACheck CHECK(attCHA BETWEEN 1 AND 30) NOT NULL,
	vu NUMBER(1) NOT NULL,
	PRIMARY KEY (idMob)
);

CREATE SEQUENCE seqIdMob
START WITH 0
INCREMENT BY 1
MINVALUE 0;

CREATE INDEX ind_nom ON Caracteristique(nom);
