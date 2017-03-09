
INSERT INTO L3_23.Race VALUES ('Dragon', 'Lair', 'Dragon');
INSERT INTO L3_23.Race(race, habitat) VALUES ('Elemental', 'Inner Planes');
INSERT INTO L3_23.Race(race, habitat) VALUES ('Undead', 'Haunted Location');
INSERT INTO L3_23.Race VALUES ('Giant', 'Isolated Refuges', 'Giant');
INSERT INTO L3_23.Race(race, habitat) VALUES ('Humanoid', 'Civilisation');
INSERT INTO L3_23.Race(race, habitat) VALUES ('Monstrosity', 'Dungeons');
INSERT INTO L3_23.Race VALUES ('Fey', 'Forest', 'Fey');


INSERT INTO L3_23.Caracteristique(idMob, nom, taille, race, morale, ethique, aC, multiplePV, constantePV, cR, attSTR, attDEX, attCON, attINT, attWIS, attCHA, vu) VALUES (L3_23.seqIdMob.nextval, 'Ancient Black Dragon', 'Gargantuan', 'Dragon', 'Chaotic', 'Evil', 22, 21, 147, 21, 27, 14, 25, 16, 15, 19, 1);
INSERT INTO L3_23.Langage VALUES (1, 'Common');
INSERT INTO L3_23.Langage VALUES (1, 'Draconic');

INSERT INTO L3_23.Deplacement VALUES (1, 'walk', 40);
INSERT INTO L3_23.Deplacement VALUES (1, 'fly', 80);
INSERT INTO L3_23.Deplacement VALUES (1, 'swim', 40);

INSERT INTO L3_23.Competence VALUES (1, 'Perception', 16);
INSERT INTO L3_23.Competence VALUES (1, 'Stealth', 9);

INSERT INTO L3_23.Caracteristique(idMob, nom, taille, race, morale, ethique, aC, multiplePV, constantePV, cR, attSTR, attDEX, attCON, attINT, attWIS, attCHA, vu) VALUES (L3_23.seqIdMob.nextval, 'Adult White Dragon', 'Gargantuan', 'Dragon', 'Chaotic', 'Evil', 22, 21, 147, 21, 27, 14, 25, 16, 15, 19, 1);

INSERT INTO L3_23.Competence VALUES (2, 'Perception', 11);
INSERT INTO L3_23.Competence VALUES (2, 'Stealth', 9);

INSERT INTO L3_23.Deplacement VALUES (2, 'walk', 40);
INSERT INTO L3_23.Deplacement VALUES (2, 'fly', 80);
INSERT INTO L3_23.Deplacement VALUES (2, 'swim', 40);
INSERT INTO L3_23.Deplacement VALUES (2, 'burrow', 30);

INSERT INTO L3_23.Langage VALUES (2, 'Common');
INSERT INTO L3_23.Langage VALUES (2, 'Draconic');

INSERT INTO L3_23.Caracteristique(idMob, nom, taille, race, morale, ethique, aC, multiplePV, constantePV, cR, attSTR, attDEX, attCON, attINT, attWIS, attCHA, vu) VALUES (L3_23.seqIdMob.nextval,'Bronze Dragon Wyrmling', 'Medium', 'Dragon', 'Lawful', 'Good', 17,	5,	10,	2,	17,	10,	15,	12,	11,	15, 1);

INSERT INTO L3_23.Competence VALUES (3, 'Perception', 4);
INSERT INTO L3_23.Competence VALUES (3, 'Stealth', 2);

INSERT INTO L3_23.Deplacement VALUES (3, 'walk', 30);
INSERT INTO L3_23.Deplacement VALUES (3, 'fly', 60);
INSERT INTO L3_23.Deplacement VALUES (3, 'swim', 30);

INSERT INTO L3_23.Langage VALUES (3, 'Draconic');

INSERT INTO L3_23.Caracteristique(idMob, nom, taille, race, morale, ethique, aC, multiplePV, constantePV, cR, attSTR, attDEX, attCON, attINT, attWIS, attCHA, vu) VALUES (L3_23.seqIdMob.nextval,'Ancient Gold Dragon',	'Gargantuan',	'Dragon',	'Lawful',	'Good',	22,	28,	252,	24,	30,	14,	29,	18,	17,	28, 0);

INSERT INTO L3_23.Competence VALUES (4, 'Perception', 17);
INSERT INTO L3_23.Competence VALUES (4, 'Stealth', 9);
INSERT INTO L3_23.Competence VALUES (4, 'Persuasion', 16);
INSERT INTO L3_23.Competence VALUES (4, 'Insight', 10);

INSERT INTO L3_23.Deplacement VALUES (4, 'walk', 40);
INSERT INTO L3_23.Deplacement VALUES (4, 'fly', 80);
INSERT INTO L3_23.Deplacement VALUES (4, 'swim', 40);

INSERT INTO L3_23.Langage VALUES (4, 'Common');
INSERT INTO L3_23.Langage VALUES (4, 'Draconic');


INSERT INTO L3_23.Caracteristique(idMob, nom, taille, race, morale, ethique, aC, multiplePV, constantePV, cR, attSTR, attDEX, attCON, attINT, attWIS, attCHA, vu) VALUES (L3_23.seqIdMob.nextval,'Young Silver Dragon',	'Large',	'Dragon',	'Lawful',	'Good',	18,	16,	80,	9,	23,	10,	21,	14,	11,	19, 1);

INSERT INTO L3_23.Competence VALUES (5, 'Perception', 8);
INSERT INTO L3_23.Competence VALUES (5, 'Stealth', 4);
INSERT INTO L3_23.Competence VALUES (5, 'Arcana', 6);
INSERT INTO L3_23.Competence VALUES (5, 'History', 6);

INSERT INTO L3_23.Deplacement VALUES (5, 'walk', 40);
INSERT INTO L3_23.Deplacement VALUES (5, 'fly', 80);

INSERT INTO L3_23.Langage VALUES (5, 'Common');
INSERT INTO L3_23.Langage VALUES (5, 'Draconic');


INSERT INTO L3_23.Caracteristique(idMob, nom, taille, race, morale, ethique, aC, multiplePV, constantePV, cR, attSTR, attDEX, attCON, attINT, attWIS, attCHA, vu) VALUES (L3_23.seqIdMob.nextval,'Air Elemental',	'Large',	'Elemental',	'Unaligned',	'Neutral',	15,	12,	24,	5,	14,	20,	14,	6,	10,	6, 0);

INSERT INTO L3_23.Deplacement VALUES (6, 'walk', 0);
INSERT INTO L3_23.Deplacement VALUES (6, 'fly', 90);

INSERT INTO L3_23.Langage VALUES (6, 'Auran');

INSERT INTO L3_23.Caracteristique(idMob, nom, taille, race, morale, ethique, aC, multiplePV, constantePV, cR, attSTR, attDEX, attCON, attINT, attWIS, attCHA, vu) VALUES (L3_23.seqIdMob.nextval,'Earth Elemental',	'Large',	'Elemental',	'Unaligned',	'Neutral',	17,	12,	60,	5,	20,	8,	20,	5,	10,	5, 1);

INSERT INTO L3_23.Deplacement VALUES (7, 'walk', 30);
INSERT INTO L3_23.Deplacement VALUES (7, 'burrow', 30);

INSERT INTO L3_23.Langage VALUES (7, 'Terran');


INSERT INTO L3_23.Caracteristique(idMob, nom, taille, race, morale, ethique, aC, multiplePV, constantePV, cR, attSTR, attDEX, attCON, attINT, attWIS, attCHA, vu) VALUES (L3_23.seqIdMob.nextval,'Fire Elemental',	'Large',	'Elemental',	'Unaligned',	'Neutral',	13,	12,	36,	5,	10,	17,	16,	6,	10,	7, 0);

INSERT INTO L3_23.Deplacement VALUES (8, 'walk', 50);

INSERT INTO L3_23.Langage VALUES (8, 'Ignan');

INSERT INTO L3_23.Caracteristique(idMob, nom, taille, race, morale, ethique, aC, multiplePV, constantePV, cR, attSTR, attDEX, attCON, attINT, attWIS, attCHA, vu) VALUES (L3_23.seqIdMob.nextval,'Water Elemental',	'Large',	'Elemental',	'Unaligned',	'Neutral',	14,	12,	48,	5,	18,	14,	18,	5,	10,	8, 0);

INSERT INTO L3_23.Deplacement VALUES (9, 'walk', 30);
INSERT INTO L3_23.Deplacement VALUES (9, 'swim', 60);

INSERT INTO L3_23.Langage VALUES (9, 'Aquan');


INSERT INTO L3_23.Caracteristique(idMob, nom, taille, race, morale, ethique, aC, multiplePV, constantePV, cR, attSTR, attDEX, attCON, attINT, attWIS, attCHA, vu) VALUES (L3_23.seqIdMob.nextval,'Ghost',	'Medium',	'Undead',	'Any',	'Any',	11,	10,	0,	4,	7,	13,	10,	10,	12,	17, 1);

INSERT INTO L3_23.Deplacement VALUES (10, 'walk', 0);
INSERT INTO L3_23.Deplacement VALUES (10, 'fly', 40);


INSERT INTO L3_23.Caracteristique(idMob, nom, taille, race, morale, ethique, aC, multiplePV, constantePV, cR, attSTR, attDEX, attCON, attINT, attWIS, attCHA, vu) VALUES (L3_23.seqIdMob.nextval,'Fire Giant',	'Huge',	'Giant',	'Lawful',	'Evil',	18,	13,	78,	9,	25,	9,	23,	10,	14,	13, 0);

INSERT INTO L3_23.Competence VALUES (11, 'Perception', 6);
INSERT INTO L3_23.Competence VALUES (11, 'Athletics', 11);

INSERT INTO L3_23.Deplacement VALUES (11, 'walk', 30);

INSERT INTO L3_23.Langage VALUES (11, 'Giant');

INSERT INTO L3_23.Caracteristique(idMob, nom, taille, race, morale, ethique, aC, multiplePV, constantePV, cR, attSTR, attDEX, attCON, attINT, attWIS, attCHA, vu) VALUES (L3_23.seqIdMob.nextval,'Storm Giant',	'Huge',	'Giant',	'Chaotic',	'Good',	16,	20,	100,	13,	29,	14,	20,	16,	18,	18, 0);

INSERT INTO L3_23.Competence VALUES (12, 'Perception', 9);
INSERT INTO L3_23.Competence VALUES (12, 'Athletics', 14);
INSERT INTO L3_23.Competence VALUES (12, 'Arcana', 8);
INSERT INTO L3_23.Competence VALUES (12, 'History', 8);

INSERT INTO L3_23.Deplacement VALUES (12, 'walk', 50);
INSERT INTO L3_23.Deplacement VALUES (12, 'swim', 50);

INSERT INTO L3_23.Langage VALUES (11, 'Giant');


INSERT INTO L3_23.Caracteristique(idMob, nom, taille, race, morale, ethique, aC, multiplePV, constantePV, cR, attSTR, attDEX, attCON, attINT, attWIS, attCHA, vu) VALUES (L3_23.seqIdMob.nextval,'Githyanki Warrior',	'Medium',	'Humanoid',	'Lawful',	'Evil',	17,	9,	9,	3,	15,	14,	12,	13,	13,	10, 1);

INSERT INTO L3_23.Deplacement VALUES (13, 'walk', 30);

INSERT INTO L3_23.Langage VALUES (13, 'Gith');


INSERT INTO L3_23.Caracteristique(idMob, nom, taille, race, morale, ethique, aC, multiplePV, constantePV, cR, attSTR, attDEX, attCON, attINT, attWIS, attCHA, vu) VALUES (L3_23.seqIdMob.nextval,'Githyanki Knight',	'Medium',	'Humanoid',	'Lawful',	'Evil',	18,	14,	28,	8,	16,	14,	15,	14,	14,	15, 0);

INSERT INTO L3_23.Deplacement VALUES (14, 'walk', 30);

INSERT INTO L3_23.Langage VALUES (14, 'Gith');



INSERT INTO L3_23.Caracteristique(idMob, nom, taille, race, morale, ethique, aC, multiplePV, constantePV, cR, attSTR, attDEX, attCON, attINT, attWIS, attCHA, vu) VALUES (L3_23.seqIdMob.nextval,'Githzerai Monk',	'Medium',	'Humanoid',	'Lawful',	'Neutral',	14,	7,	7,	2,	12,	15,	12,	13,	14,	10, 0);

INSERT INTO L3_23.Competence VALUES (15, 'Perception', 4);
INSERT INTO L3_23.Competence VALUES (15, 'Insight', 4);

INSERT INTO L3_23.Deplacement VALUES (15, 'walk', 30);

INSERT INTO L3_23.Langage VALUES (15, 'Gith');



INSERT INTO L3_23.Caracteristique(idMob, nom, taille, race, morale, ethique, aC, multiplePV, constantePV, cR, attSTR, attDEX, attCON, attINT, attWIS, attCHA, vu) VALUES (L3_23.seqIdMob.nextval,'Githzerai Zerth',	'Medium',	'Humanoid',	'Lawful',	'Neutral',	17,	13,	26,	6,	13,	18,	15,	16,	17,	12, 0);

INSERT INTO L3_23.Competence VALUES (16, 'Arcana', 6);
INSERT INTO L3_23.Competence VALUES (16, 'Insight', 6);

INSERT INTO L3_23.Deplacement VALUES (16, 'walk', 30);

INSERT INTO L3_23.Langage VALUES (16, 'Gith');



INSERT INTO L3_23.Caracteristique(idMob, nom, taille, race, morale, ethique, aC, multiplePV, constantePV, cR, attSTR, attDEX, attCON, attINT, attWIS, attCHA, vu) VALUES (L3_23.seqIdMob.nextval,'Griffon',	'Large',	'Monstrosity',	'Unaligned',	'Unaligned',	12,	7,	12,	2,	18,	15,	16,	2,	13,	8, 1);

INSERT INTO L3_23.Competence VALUES (17, 'Perception', 5);

INSERT INTO L3_23.Deplacement VALUES (17, 'walk', 30);
INSERT INTO L3_23.Deplacement VALUES (17, 'fly', 80);


INSERT INTO L3_23.Caracteristique(idMob, nom, taille, race, morale, ethique, aC, multiplePV, constantePV, cR, attSTR, attDEX, attCON, attINT, attWIS, attCHA, vu) VALUES (L3_23.seqIdMob.nextval,'Hydra',	'Huge',	'Monstrosity',	'Unaligned',	'Unaligned',	15,	15,	75,	8,	20,	12,	20,	2,	10,	7, 0);

INSERT INTO L3_23.Competence VALUES (18, 'Perception', 6);

INSERT INTO L3_23.Deplacement VALUES (18, 'walk', 30);
INSERT INTO L3_23.Deplacement VALUES (18, 'swim', 30);


INSERT INTO L3_23.Caracteristique(idMob, nom, taille, race, morale, ethique, aC, multiplePV, constantePV, cR, attSTR, attDEX, attCON, attINT, attWIS, attCHA, vu) VALUES (L3_23.seqIdMob.nextval,'Kobold',	'Small',	'Humanoid',	'Lawful',	'Evil',	12,	2,	2,	0.125,	7,	15,	9,	8,	7,	8, 1);

INSERT INTO L3_23.Deplacement VALUES (19, 'walk', 30);

INSERT INTO L3_23.Langage VALUES (19, 'Common');
INSERT INTO L3_23.Langage VALUES (19, 'Draconic');


INSERT INTO L3_23.Caracteristique(idMob, nom, taille, race, morale, ethique, aC, multiplePV, constantePV, cR, attSTR, attDEX, attCON, attINT, attWIS, attCHA, vu) VALUES (L3_23.seqIdMob.nextval,'Kraken',	'Gargantuan',	'Monstrosity',	'Chaotic',	'Evil',	18,	27,	189,	23,	30,	11,	25,	22,	18,	20, 0);

INSERT INTO L3_23.Deplacement VALUES (20, 'walk', 20);
INSERT INTO L3_23.Deplacement VALUES (20, 'swim', 60);

INSERT INTO L3_23.Langage VALUES (20, 'Telepathy');

INSERT INTO L3_23.Caracteristique(idMob, nom, taille, race, morale, ethique, aC, multiplePV, constantePV, cR, attSTR, attDEX, attCON, attINT, attWIS, attCHA, vu) VALUES (L3_23.seqIdMob.nextval,'Lamia',	'Large',	'Monstrosity',	'Chaotic',	'Evil',	13,	13,	26,	4,	16,	13,	15,	14,	15,	16, 1);

INSERT INTO L3_23.Competence VALUES (21, 'Stealth', 3);
INSERT INTO L3_23.Competence VALUES (21, 'Deception', 7);
INSERT INTO L3_23.Competence VALUES (21, 'Insight', 4);

INSERT INTO L3_23.Deplacement VALUES (21, 'walk', 30);

INSERT INTO L3_23.Langage VALUES (21, 'Abyssal');
INSERT INTO L3_23.Langage VALUES (21, 'Common');

INSERT INTO L3_23.Caracteristique(idMob, nom, taille, race, morale, ethique, aC, multiplePV, constantePV, cR, attSTR, attDEX, attCON, attINT, attWIS, attCHA, vu) VALUES (L3_23.seqIdMob.nextval,'Werewolf',	'Medium',	'Humanoid',	'Chaotic',	'Evil',	12,	9,	18,	3,	15,	13,	14,	10,	11,	10, 0);

INSERT INTO L3_23.Competence VALUES (22, 'Stealth', 3);
INSERT INTO L3_23.Competence VALUES (22, 'Perception', 4);

INSERT INTO L3_23.Deplacement VALUES (22, 'walk', 40);

INSERT INTO L3_23.Langage VALUES (22, 'Common');

INSERT INTO L3_23.Caracteristique(idMob, nom, taille, race, morale, ethique, aC, multiplePV, constantePV, cR, attSTR, attDEX, attCON, attINT, attWIS, attCHA, vu) VALUES (L3_23.seqIdMob.nextval,'Medusa',	'Medium',	'Monstrosity',	'Lawful',	'Evil',	15,	17,	51,	6,	10,	15,	16,	12,	13,	15, 0);

INSERT INTO L3_23.Competence VALUES (23, 'Stealth', 5);
INSERT INTO L3_23.Competence VALUES (23, 'Deception', 5);
INSERT INTO L3_23.Competence VALUES (23, 'Insight', 4);
INSERT INTO L3_23.Competence VALUES (23, 'Perception', 4);

INSERT INTO L3_23.Deplacement VALUES (23, 'walk', 30);

INSERT INTO L3_23.Langage VALUES (23, 'Common');

INSERT INTO L3_23.Caracteristique(idMob, nom, taille, race, morale, ethique, aC, multiplePV, constantePV, cR, attSTR, attDEX, attCON, attINT, attWIS, attCHA, vu) VALUES (L3_23.seqIdMob.nextval,'Minotaur',	'Large',	'Monstrosity',	'Chaotic',	'Evil',	14,	9,	27,	3,	18,	11,	16,	6,	16,	9, 0);

INSERT INTO L3_23.Competence VALUES (24, 'Perception', 7);

INSERT INTO L3_23.Deplacement VALUES (24, 'walk', 40);

INSERT INTO L3_23.Langage VALUES (24, 'Abyssal');


INSERT INTO L3_23.Caracteristique(idMob, nom, taille, race, morale, ethique, aC, multiplePV, constantePV, cR, attSTR, attDEX, attCON, attINT, attWIS, attCHA, vu) VALUES (L3_23.seqIdMob.nextval,'Ogre',	'Large',	'Giant',	'Chaotic',	'Evil',	11,	7,	21,	2,	19,	8,	16,	5,	7,	7, 1);

INSERT INTO L3_23.Deplacement VALUES (25, 'walk', 40);

INSERT INTO L3_23.Langage VALUES (25, 'Common');
INSERT INTO L3_23.Langage VALUES (25, 'Giant');


INSERT INTO L3_23.Caracteristique(idMob, nom, taille, race, morale, ethique, aC, multiplePV, constantePV, cR, attSTR, attDEX, attCON, attINT, attWIS, attCHA, vu) VALUES (L3_23.seqIdMob.nextval,'Pixie',	'Tiny',	'Fey',	'Neutral',	'Good',	15,	1,	1,	0.25,	2,	20,	8,	10,	14,	15, 1);

INSERT INTO L3_23.Competence VALUES (26, 'Stealth', 7);
INSERT INTO L3_23.Competence VALUES (26, 'Perception', 4);

INSERT INTO L3_23.Deplacement VALUES (26, 'walk', 10);
INSERT INTO L3_23.Deplacement VALUES (26, 'fly', 30);

INSERT INTO L3_23.Langage VALUES (26, 'Sylvan');


INSERT INTO L3_23.Caracteristique(idMob, nom, taille, race, morale, ethique, aC, multiplePV, constantePV, cR, attSTR, attDEX, attCON, attINT, attWIS, attCHA, vu) VALUES (L3_23.seqIdMob.nextval,'Androsphinx',	'Large',	'Monstrosity',	'Lawful',	'Neutral',	17,	19,	95,	17,	22,	10,	20,	16,	18,	23, 0);

INSERT INTO L3_23.Competence VALUES (27, 'Perception', 10);
INSERT INTO L3_23.Competence VALUES (27, 'Religion', 15);
INSERT INTO L3_23.Competence VALUES (27, 'Arcana', 9);

INSERT INTO L3_23.Deplacement VALUES (27, 'walk', 40);
INSERT INTO L3_23.Deplacement VALUES (27, 'fly', 60);

INSERT INTO L3_23.Langage VALUES (27, 'Common');
INSERT INTO L3_23.Langage VALUES (27, 'Sphinx');

INSERT INTO L3_23.Caracteristique(idMob, nom, taille, race, morale, ethique, aC, multiplePV, constantePV, cR, attSTR, attDEX, attCON, attINT, attWIS, attCHA, vu) VALUES (L3_23.seqIdMob.nextval,'Gynosphinx',	'Large',	'Monstrosity',	'Lawful',	'Neutral',	17,	16,	48,	11,	18,	15,	16,	18,	18,	18, 0);

INSERT INTO L3_23.Competence VALUES (28, 'Perception', 9);
INSERT INTO L3_23.Competence VALUES (28, 'Religion', 9);
INSERT INTO L3_23.Competence VALUES (28, 'Arcana', 14);
INSERT INTO L3_23.Competence VALUES (28, 'History', 14);

INSERT INTO L3_23.Deplacement VALUES (28, 'walk', 40);
INSERT INTO L3_23.Deplacement VALUES (28, 'fly', 60);

INSERT INTO L3_23.Langage VALUES (28, 'Common');
INSERT INTO L3_23.Langage VALUES (28, 'Sphinx');


INSERT INTO L3_23.Caracteristique(idMob, nom, taille, race, morale, ethique, aC, multiplePV, constantePV, cR, attSTR, attDEX, attCON, attINT, attWIS, attCHA, vu) VALUES (L3_23.seqIdMob.nextval,'Tarrasque',	'Gargantuan',	'Monstrosity',	'Unaligned',	'Unaligned',	25,	33,	330,	30,	30,	11,	30,	3,	11,	11, 0);

INSERT INTO L3_23.Deplacement VALUES (29, 'walk', 40);
