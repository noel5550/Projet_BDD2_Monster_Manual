-- Script créant la vue Globale

CREATE VIEW Globale AS
SELECT *
FROM Caracteristique NATURAL JOIN Taille NATURAL JOIN Race NATURAL JOIN XPChallenge
WHERE vu = true;