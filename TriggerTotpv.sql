SET SERVEROUTPUT ON;
--Trigger mettant a jour l'attribut PV
CREATE OR REPLACE TRIGGER totPV_bef_ins_cara
       BEFORE INSERT OR UPDATE ON Caracteristique
       FOR EACH ROW
DECLARE
	vie Caracteristique.PV%Type;
	de Taille.dePV%TYPE;
BEGIN
	vie:=0;
	--Recupere la valeur du de
	SELECT dePV INTO de
	       FROM Taille
	       WHERE taille=:new.taille;
	--Lancement des des
	FOR i IN 1..:new.multiplePV LOOP
	    vie := vie+DBMS_RANDOM.VALUE(1,de+1);
	END LOOP;
	--Retour des points de vues avec l ajout de la constante
	:new.PV:= vie + :new.constantePV;	
END totPV_bef_ins_cara;
/
SHOW ERROR;
commit;
