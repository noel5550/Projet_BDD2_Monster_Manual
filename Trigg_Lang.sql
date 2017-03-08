CREATE OR REPLACE TRIGGER analphabete_on_insert
AFTER INSERT ON Competence FOR EACH ROW

BEGIN

INSERT INTO Langage VALUES (:new.idMob, 'analphabete');

END;