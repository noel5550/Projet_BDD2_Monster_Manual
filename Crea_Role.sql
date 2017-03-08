-- Script créant les différentes rôles des utilisateurs utilisant la base de données

DROP ROLE DnDmaitreJeu;
DROP ROLE DnDmaitreJeuCollaborateur;
DROP ROLE DnDjoueur;

CREATE ROLE DnDmaitreJeu IDENTIFIED BY tgcm;
CREATE ROLE DnDmaitreJeuCollaborateur;
CREATE ROLE DnDjoueur;

GRANT SELECT ON Globale TO DnDjoueur, DnDmaitreJeu, DnDmaitreJeuCollaborateur;
GRANT SELECT ON Sociale TO DnDjoueur, DnDmaitreJeu, DnDmaitreJeuCollaborateur;
GRANT SELECT ON Combat TO DnDjoueur, DnDmaitreJeu, DnDmaitreJeuCollaborateur;
GRANT SELECT ON Taille TO DnDmaitreJeu, DnDmaitreJeuCollaborateur;
GRANT SELECT ON Race TO DnDmaitreJeu, DnDmaitreJeuCollaborateur;
GRANT SELECT ON XPChallenge TO DnDmaitreJeu, DnDmaitreJeuCollaborateur;
GRANT INSERT, UPDATE, SELECT ON Caracteristique TO DnDmaitreJeu, DnDmaitreJeuCollaborateur;
GRANT INSERT, UPDATE, SELECT ON Competence TO DnDmaitreJeu, DnDmaitreJeuCollaborateur;
GRANT INSERT, UPDATE, SELECT ON Deplacement TO DnDmaitreJeu, DnDmaitreJeuCollaborateur;
GRANT INSERT, UPDATE, SELECT ON Langage TO DnDmaitreJeu, DnDmaitreJeuCollaborateur;
GRANT DELETE ON Caracteristique TO DnDmaitreJeu;
GRANT DELETE ON Competence TO DnDmaitreJeu;
GRANT DELETE ON Deplacement TO DnDmaitreJeu;
GRANT DELETE ON Langage TO DnDmaitreJeu;

GRANT DnDmaitreJeu TO L3_28;
GRANT DnDmaitreJeuCollaborateur TO L3_36;
GRANT DnDjoueur TO L3_34;
