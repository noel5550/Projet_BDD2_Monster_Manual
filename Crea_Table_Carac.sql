--Script créant la table Caracteristique correspondant à R6 sur l'UML
--Supprime la table pour pouvoir rappeler le script pour modifications
DROP TABLE Caracteristique CASCADE CONSTRAINT;
--Creation de la table
CREATE TABLE Caracteristique (
nom VARCHAR2(50),
taille VARCHAR2(20) REFERENCES R4(taille),
race VARCHAR2(20) REFERENCES R3(race),
morale VARCHAR2(20),
ethique VARCHAR2(20),
aC number,
multiplePV number,
--Attention, dePV n'est pas dans cette table
constantePV number,
cR number REFERENCES R5(cR),
attSTR number,
attDEX number,
attCON number,
attINT number,
attWIS number,
attCHA number,
PRIMARY KEY (nom));
