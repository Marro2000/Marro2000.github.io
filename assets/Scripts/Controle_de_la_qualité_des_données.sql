/*
------------------ Etape4: -------------------
--Tester la qualité des données:

-- Absence de données manquantes(Nombre d'enregistrements)
-- Type des colonnes
-- Nombre de colonnes
-- Absence de doublons
*/

--1. Nombre de lignes
SELECT COUNT(*) AS nombre_de_lignes
FROM 
	dbo.vue_youtubeurs;


--2. Type de données 
SELECT COLUMN_NAME, DATA_TYPE FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME='vue_youtubeurs'


--3. Nombre de colonnes
SELECT COUNT(*) AS nbr_colonne FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME='vue_youtubeurs'


--4. Absence de doublons
SELECT 
	nom_de_la_chaine, COUNT(nom_de_la_chaine) 
FROM 
	vue_youtubeurs
GROUP BY 
	nom_de_la_chaine
HAVING 
	COUNT(nom_de_la_chaine)>1;
