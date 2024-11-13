/*
------------------ Etape3: -------------------
--Nettoyage des donn�es:

-- Ne conserver que les donn�es pertinantes pour la suite
-- Extraction du nom de la chaine
-- Renommer les chaines
-- Cr�er une vue 
*/
CREATE VIEW	vue_youtubers AS
		SELECT 
			CAST(SUBSTRING(NAME, 1, (CHARINDEX('@',NAME))-1) AS varchar(255))  AS nom_de_la_chaine, 
			total_subscribers AS nombre_d_abonn�s ,
			total_videos AS nombre_de_videos ,
			total_views AS nombre_de_vues 
		FROM 
			top_youtubeurs_fran�ais;