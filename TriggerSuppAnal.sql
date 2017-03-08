SET SERVEROUTPUT ON;
--Trigger qui enleve l analphabetisme des creature qui apprenne un langage
CREATE OR REPLACE TRIGGER unanalpha_aft_ins_upd_lang
       BEFORE INSERT OR UPDATE ON Langage
BEGIN
	--Si la langue que l'on ajoute/modifie n'est pas analphabete (tout le mode peut oublier)
	IF NOT(:new.langue='analphabete') THEN
		--Il n'est plus analphabete car il connait desormais une langue
		DELETE FROM Langage WHERE idMob=:new.idMob AND langue='analphabete';
	END IF;
END unanalpha_aft_ins_upd_lang;
/
SHOW ERROR;
commit;
