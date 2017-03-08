--Combat de monstre parce que
SET serveroutput ON;
--Fonction calculant les points de vie d un monstre
CREATE OR REPLACE FUNCTION totPV(idM IN Caracteristique.idMob%TYPE)
       RETURN number
       IS
       de Taille.dePV%TYPE;
       vie number(4,0);
       mob Caracteristique%ROWTYPE;
       mob_inexistant_ERROR EXCEPTION;
BEGIN
	--Recherche du monstre suivant son id
	SELECT * INTO mob
	       FROM Caracteristique
	       WHERE idMob=idM;
	--On verifie que l id est dans la table
	IF mob.idMob=null THEN
	   RAISE mob_inexistant_ERROR;
	END IF;
	vie:=0;
	--Recupere la valeur du de
	SELECT dePV INTO de
	       FROM Taille
	       WHERE taille=mob.taille;
	--Lancement des des
	FOR i IN 1..mob.multiplePV LOOP
	    vie := vie+DBMS_RANDOM.VALUE(1,de+1);
	END LOOP;
	--Retour des points de vues avec l ajout de la constante
	RETURN vie + mob.constantePV;
EXCEPTION
	WHEN mob_inexistant_ERROR
	THEN RAISE_APPLICATION_ERROR(-20001,'Le mob n existe pas');	
END totPV;
/
SHOW ERROR;
--A tape sur B avec force hit et chance de second coup sndCP
--B a vie point de vie et a chance d'esquive de esq
CREATE OR REPLACE PROCEDURE coup_en_combat(hit IN number,
					   vie IN OUT number,
					   nomA IN Caracteristique.nom%TYPE,
					   nomB IN Caracteristique.nom%TYPE,
					   esq IN Caracteristique.attDEX%TYPE,
					   sndCP IN Caracteristique.attINT%TYPE)
			IS
BEGIN
	--Si B n esquive pas
	IF DBMS_RANDOM.VALUE(1,100)>esq THEN
	     vie:=vie - hit;
	     DBMS_OUTPUT.put_line(nomB||' touche pour ' ||hit||' degat, il lui reste '||vie);
	ELSE
	     DBMS_OUTPUT.put_line(nomA||' a esquive');
	END IF;
	--Si A lance un second coup (non esquivable parce que)
	IF DBMS_RANDOM.VALUE(1,100)>sndCP THEN
	     vie:=vie - hit;
	     DBMS_OUTPUT.put_line(nomA||' tape un second coup pour '||hit||', '||nomB||' a encore '||vie||' point de vie');
	END IF;
END coup_en_combat;
/
SHOW ERROR;

--Lance un combat entre deux monstres reconnus par leurs id
DROP PROCEDURE combat2Monstres;
CREATE PROCEDURE combat2Monstres(
	idA IN Caracteristique.idMob%TYPE,
	idB IN Caracteristique.idMob%TYPE)
       		 IS
	vieA number(4,0);
	vieB number(4,0);
	hit number(4,0);
	atkA boolean;
	mobA Caracteristique%ROWTYPE;
	mobB Caracteristique%ROWTYPE;
	mob_inexistant EXCEPTION;
BEGIN
	--Recuperation attribut des monstres
	SELECT * INTO mobA
	       FROM Caracteristique
	       WHERE idMob=idA;
	SELECT * INTO mobB
	       FROM Caracteristique
	       WHERE idMob=idB;
	IF mobA.idMob=null OR mobB.idMob=null THEN
	   RAISE mob_inexistant;
	END IF;
	--PV totaux du premier monstre
	vieA := totPV(idA);
	DBMS_OUTPUT.put_line('Vie '|| mobA.nom||' : '||vieA);
	--PV totaux du second
	vieB := totPV(idB);
	DBMS_OUTPUT.put_line('Vie '|| mobB.nom||' : '||vieB);
	--Debut combat
	--A tape en premier
	atkA := true;
	WHILE vieA > 0 AND vieB > 0
	LOOP
		--Si c est A qui attaque
		IF atkA THEN
		   hit := mobA.attSTR*((100-mobB.aC)/100); 
		   coup_en_combat(hit,vieB,mobA.nom,mobB.nom,mobB.attDEX,mobA.attINT);
		ELSE
		--Si B attaque
		     hit := mobB.attSTR*((100-mobA.aC)/100);
		     coup_en_combat(hit,vieA,mobB.nom,mobA.nom,mobA.attDEX,mobB.attINT);
		END IF;
		--Changement d'attaquant
		atkA := not atkA;
	END LOOP;
	IF vieA > 0 THEN
	   DBMS_OUTPUT.put_line(mobA.nom ||' a gagne');
	ELSE
	   DBMS_OUTPUT.put_line(mobB.nom ||' a gagne');
	END IF;
EXCEPTION
	WHEN mob_inexistant
	THEN RAISE_APPLICATION_ERROR(-20001,'Un (ou les deux) mob(s) n existe(nt) pas');
END combat2Monstres;
/
SHOW ERROR;
