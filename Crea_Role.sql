-- Script créant les différentes rôles des utilisateurs utilisant la base de données

CREATE ROLE maitreJeu IDENTIFIED BY tgcm;
CREATE ROLE maitreJeuCollaborateur;
CREATE ROLE joueur;

GRANT INSERT, UPDATE, SELECT ON Caracteristique TO maitreJeu, maitreJeuCollaborateur;

GRANT SELECT ON Globale TO joueur;

-- GRANT mj TO 
GRANT maitreJeuCollaborateur TO L3_36;
-- GRANT joueur TO
