--Script créant la table XPChallenge correspondant à R5 sur l'UML
--Supprime la table pour pouvoir rappeler le script pour modifications
DROP TABLE XPChallenge CASCADE CONSTRAINT;
--Creation de la table
CREATE TABLE XPChallenge (,
cR number,
exp number,
PRIMARY KEY (cR));
