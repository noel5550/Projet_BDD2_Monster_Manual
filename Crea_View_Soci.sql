-- Script créant la vue Sociale

DROP VIEW Sociale;

CREATE VIEW Sociale AS
SELECT nom, race, habitat, genre, morale, ethique, langue
FROM Caracteristique NATURAL JOIN Taille NATURAL JOIN Race NATURAL JOIN XPChallenge NATURAL JOIN Langage
WHERE vu =1;
