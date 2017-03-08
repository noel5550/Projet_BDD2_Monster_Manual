DROP TABLE Taille CASCADE CONSTRAINT;
DROP TABLE Race CASCADE CONSTRAINT;
DROP TABLE XPChallenge CASCADE CONSTRAINT;
DROP TABLE Caracteristique CASCADE CONSTRAINT;
DROP TABLE Competences CASCADE CONSTRAINT;
DROP TABLE Deplacement CASCADE CONSTRAINT;
DROP TABLE Langage CASCADE CONSTRAINT;

DROP SEQUENCE seqXP;
DROP SEQUENCE seqIdMob;

CREATE TABLE Taille (
	taille VARCHAR2(20),
	dePV NUMBER NOT NULL,
	PRIMARY KEY (taille)
);

CREATE TABLE Race (
	race VARCHAR2(20),
	habitat VARCHAR2 (20) NOT NULL,
	genre VARCHAR2 (20) NOT NULL,
	PRIMARY KEY (race)
);

CREATE TABLE XPChallenge (
	cR NUMBER CONSTRAINT challengeRate CHECK(note BETWEEN 0 AND 30),
	exp NUMBER NOT NULL,
	PRIMARY KEY (cR)
);

CREATE TABLE Caracteristique (
	idMob NUMBER,
	nom VARCHAR2(50) NOT NULL,
	taille VARCHAR2(20) REFERENCES Taille(taille) NOT NULL,
	race VARCHAR2(20) REFERENCES Race(race) NOT NULL,
	morale VARCHAR2(20) NOT NULL,
	ethique VARCHAR2(20) NOT NULL,
	aC NUMBER NOT NULL,
	multiplePV NUMBER NOT NULL,
	constantePV NUMBER NOT NULL,
	cR NUMBER REFERENCES XPChallenge(cR) NOT NULL,
	attSTR NUMBER CONSTRAINT attSTRC CHECK(note BETWEEN 1 AND 30) NOT NULL,
	attDEX NUMBER CONSTRAINT attDEXC CHECK(note BETWEEN 1 AND 30) NOT NULL,
	attCON NUMBER CONSTRAINT attCONC CHECK(note BETWEEN 1 AND 30) NOT NULL,
	attINT NUMBER CONSTRAINT attINTC CHECK(note BETWEEN 1 AND 30) NOT NULL,
	attWIS NUMBER CONSTRAINT attWISC CHECK(note BETWEEN 1 AND 30) NOT NULL,
	attCHA NUMBER CONSTRAINT attCHAC CHECK(note BETWEEN 1 AND 30) NOT NULL,
	vu BOOLEAN NOT NULL,
	PRIMARY KEY (idMob)
);

CREATE TABLE Competences (
	idMob NUMBER REFERENCES Caracteristique(idMob),
	competence VARCHAR2(20) ,
	valCompetence NUMBER NOT NULL,
	PRIMARY KEY (idMob, competence)
);

CREATE TABLE Deplacement (
	idMob NUMBER  REFERENCES Caracteristique(idMob),
	deplacement VARCHAR(20),
	vitesse NUMBER NOT NULL,
	PRIMARY KEY (idMob,deplacement)
);

CREATE TABLE Langage (
	idMob NUMBER  REFERENCES Caracteristique(idMob),
	langue VARCHAR(20),
	PRIMARY KEY (idMob,langue)
);


CREATE SEQUENCE seqXP
START WITH 0
INCREMENT BY 1
MINVALUE 0;

CREATE SEQUENCE seqIdMob
START WITH 0
INCREMENT BY 1
MINVALUE 0;

INSERT INTO Taille VALUES ('Tiny', 4);
INSERT INTO Taille VALUES ('Small', 6);
INSERT INTO Taille VALUES ('Medium', 8);
INSERT INTO Taille VALUES ('Large', 10);
INSERT INTO Taille VALUES ('Huge', 12);
INSERT INTO Taille VALUES ('Gargantuan', 20);
commit;

INSERT INTO XPChallenge VALUES (seqXP.nextVal, 0);
-- On saute les challenge entre 0 et 1 car on est sur des entiers
INSERT INTO XPChallenge VALUES (seqXP.nextVal, 200);
INSERT INTO XPChallenge VALUES (seqXP.nextVal, 450);
INSERT INTO XPChallenge VALUES (seqXP.nextVal, 700);
INSERT INTO XPChallenge VALUES (seqXP.nextVal, 1100);
INSERT INTO XPChallenge VALUES (seqXP.nextVal, 1800);
INSERT INTO XPChallenge VALUES (seqXP.nextVal, 2300);
INSERT INTO XPChallenge VALUES (seqXP.nextVal, 2900);
INSERT INTO XPChallenge VALUES (seqXP.nextVal, 3900);
INSERT INTO XPChallenge VALUES (seqXP.nextVal, 5000);
INSERT INTO XPChallenge VALUES (seqXP.nextVal, 5900);
INSERT INTO XPChallenge VALUES (seqXP.nextVal, 7200);
INSERT INTO XPChallenge VALUES (seqXP.nextVal, 8400);
INSERT INTO XPChallenge VALUES (seqXP.nextVal, 10000);
INSERT INTO XPChallenge VALUES (seqXP.nextVal, 11500);
INSERT INTO XPChallenge VALUES (seqXP.nextVal, 13000);
INSERT INTO XPChallenge VALUES (seqXP.nextVal, 15000);
INSERT INTO XPChallenge VALUES (seqXP.nextVal, 18000);
INSERT INTO XPChallenge VALUES (seqXP.nextVal, 20000);
INSERT INTO XPChallenge VALUES (seqXP.nextVal, 22000);
INSERT INTO XPChallenge VALUES (seqXP.nextVal, 25000);
INSERT INTO XPChallenge VALUES (seqXP.nextVal, 33000);
INSERT INTO XPChallenge VALUES (seqXP.nextVal, 41000);
INSERT INTO XPChallenge VALUES (seqXP.nextVal, 50000);
INSERT INTO XPChallenge VALUES (seqXP.nextVal, 62000);
INSERT INTO XPChallenge VALUES (seqXP.nextVal, 75000);
INSERT INTO XPChallenge VALUES (seqXP.nextVal, 90000);
INSERT INTO XPChallenge VALUES (seqXP.nextVal, 105000);
INSERT INTO XPChallenge VALUES (seqXP.nextVal, 120000);
INSERT INTO XPChallenge VALUES (seqXP.nextVal, 135000);
INSERT INTO XPChallenge VALUES (seqXP.nextVal, 155000);
commit;
