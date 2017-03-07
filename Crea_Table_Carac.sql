--Script créant la table Caracteristique correspondant à R6 sur l'UML
--Supprime la table pour pouvoir rappeler le script pour modifications
DROP TABLE Caracteristique CASCADE CONSTRAINT;
--Creation de la table
CREATE TABLE Caracteristique (
idMob number,
nom VARCHAR2(50),
taille VARCHAR2(20) REFERENCES Taille(taille),
race VARCHAR2(20) REFERENCES Race(race),
morale VARCHAR2(20),
ethique VARCHAR2(20),
aC number,
multiplePV number,
--Attention, dePV n'est pas dans cette table
constantePV number,
cR number REFERENCES XPChallenge(cR),
attSTR number,
attDEX number,
attCON number,
attINT number,
attWIS number,
attCHA number,
PRIMARY KEY (idMob));

DROP SEQUENCE seqIdMob;
CREATE SEQUENCE seqIdMob START WITH 0 INCREMENT BY 1 MINVALUE 0;
