--Fonction calculant la valeur bonus d attribut
--Ne fonctionne pas
SET serveroutput ON;
CREATE OR REPLACE FUNCTION bonusAtts(idM IN Caracteristique.idMob%TYPE,
       	  	  	     	     chxAtt IN VARCHAR2)
       RETURN number
       IS
       ligne Caracteristique%ROWTYPE;
       res number(2,0);
       mob_inexistant_ERROR EXCEPTION;
       mauvaise_attribut_ERROR EXCEPTION;
BEGIN
	--On verifie que l id est dans la table
	SELECT * INTO ligne
	       FROM Caracteristique
	       WHERE idMob=idM;
	IF ligne.idMob=null THEN
	   RAISE mob_inexistant_ERROR;
	END IF;
	CASE
		WHEN chxAtt='STR' THEN res:=(ligne.attSTR/2)-5;
		WHEN chxAtt='DEX' THEN res:=(ligne.attDEX/2)-5;
		WHEN chxAtt='CON' THEN res:=(ligne.attCON/2)-5;
		WHEN chxAtt='INT' THEN res:=(ligne.attINT/2)-5;
		WHEN chxAtt='WIS' THEN res:=(ligne.attWIS/2)-5;
		WHEN chxAtt='CHA' THEN res:=(ligne.attCHA/2)-5;
		ELSE RAISE mauvaise_attribut_ERROR;
	END CASE;
	RETURN res;
EXCEPTION
	WHEN mob_inexistant_ERROR
	THEN RAISE_APPLICATION_ERROR(-20001,'Le mob n existe pas');
	WHEN mauvaise_attribut_ERROR
	THEN RAISE_APPLICATION_ERROR(-20001,'Cet attribut n existe pas');	
END bonusAtts;
/
SHOW ERROR;
commit;
