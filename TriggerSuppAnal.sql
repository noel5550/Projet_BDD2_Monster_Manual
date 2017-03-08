SET SERVEROUTPUT ON;
--Trigger qui enleve l analphabetisme des creature qui apprenne un langage
CREATE OR REPLACE TRIGGER unanalpha_aft_ins_upd_lang
       BEFORE INSERT OR UPDATE ON Langage
BEGIN
	IF NOT(:new.langue='analphabete') THEN
		DELETE FROM Langage WHERE idMob=:new.idMob AND langue='analphabete';
	END IF;
END unanalpha_aft_ins_upd_lang;
/
SHOW ERROR;
commit;
