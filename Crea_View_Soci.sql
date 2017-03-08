-- Script créant la vue Sociale

DROP VIEW Sociale

CREATE VIEW Sociale AS
SELECT nom, race, habitat, genre, morale, ethique
FROM Caracteristique NATURAL JOIN Taille NATURAL JOIN Race NATURAL JOIN XPChallenge
WHERE vu = 1;
