--Script créant la table Taille correspondant à R4 sur l'UML
--Supprime la table pour pouvoir rappeler le script pour modifications
DROP TABLE Taille CASCADE CONSTRAINT;
--Creation de la table
CREATE TABLE Taille (
taille VARCHAR2(20),
dePV number,
PRIMARY KEY (taille));
