-- Script créant la vue Globale

DROP VIEW Globale;

CREATE VIEW Globale AS
SELECT nom, taille, race, habitat, genre, morale, ethique, aC, PV
FROM Caracteristique NATURAL JOIN Taille NATURAL JOIN Race NATURAL JOIN XPChallenge
WHERE vu = 1;
