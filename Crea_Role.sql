--Script créant les différentes rôles des utilisateurs utilisant la base de données
CREATE ROLE mj IDENTIFIED BY tgcm
GRANT SELECT, UPDATE ON Caracteristique 