-- Script créant la table XPChallenge correspondant à R5 sur l'UML

-- Supprime la table et la séquence pour pouvoir rappeler le script pour modifications
DROP TABLE XPChallenge CASCADE CONSTRAINT;
DROP SEQUENCE seqXP;

--Creation de la table
CREATE TABLE XPChallenge (
	cR NUMBER CONSTRAINT challengeRate CHECK(cR BETWEEN 0 AND 30),
	exp NUMBER NOT NULL,
	PRIMARY KEY (cR)
);

CREATE SEQUENCE seqXP
START WITH -1
INCREMENT BY 1
MINVALUE -1;
