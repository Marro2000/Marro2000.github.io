/*
------------------ Etape3: -------------------
--Nettoyage des données:

-- Ne conserver que les données pertinantes pour la suite
-- Extraction du nom de la chaine
-- Renommer les chaines
-- Créer une vue 
*/
CREATE VIEW	vue_youtubers AS
		SELECT 
			CAST(SUBSTRING(NAME, 1, (CHARINDEX('@',NAME))-1) AS varchar(255))  AS nom_de_la_chaine, 
			total_subscribers AS nombre_d_abonnés ,
			total_videos AS nombre_de_videos ,
			total_views AS nombre_de_vues 
		FROM 
			top_youtubeurs_français;