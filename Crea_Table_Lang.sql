--Script créant la table Langage correspondant à R8 sur l'UML
--Supprime la table pour pouvoir rappeler le script pour modifications
DROP TABLE Langage CASCADE CONSTRAINT;
--Creation de la table
CREATE TABLE Langage (
idMob number  REFERENCES Caracteristique(idMob),
langue VARCHAR(20),
PRIMARY KEY (idMob,langue));
