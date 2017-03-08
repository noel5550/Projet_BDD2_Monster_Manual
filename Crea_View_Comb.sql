-- Script créant la vue Combat

DROP VIEW Combat

CREATE VIEW Combat AS
SELECT nom, taille, race, genre, aC, PV
FROM Caracteristique NATURAL JOIN Taille NATURAL JOIN Race NATURAL JOIN XPChallenge
WHERE vu = 1;
