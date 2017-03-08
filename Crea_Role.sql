-- Script créant les différentes rôles des utilisateurs utilisant la base de données

CREATE ROLE admin IDENTIFIED BY sysadm;
CREATE ROLE mj IDENTIFIED BY tgcm;
CREATE ROLE mjc;
CREATE ROLE joueur;

GRANT INSERT, UPDATE, SELECT ON Caracteristique TO admin; mj, mjc;
GRANT SELECT ON Globale TO joueur;

-- GRANT admin TO 
-- GRANT mj TO
-- GRANT mjc TO
-- GRANT joueur TO