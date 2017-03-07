--Script créant la table Competences correspondant à R1 sur l'UML
--Supprime la table pour pouvoir rappeler le script pour modifications
DROP TABLE Competences CASCADE CONSTRAINT;
--Creation de la table
CREATE TABLE Competences (
idMob number REFERENCES Caracteristique(idMob),
competence VARCHAR2(20),
valCompetence number,
PRIMARY KEY (idMob, competence));
