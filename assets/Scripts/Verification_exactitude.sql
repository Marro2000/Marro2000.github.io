/*
	-- 1. Afficher le top 10 des chaines YouTube Fran�aises avec le plus d'abonn�s
*/

SELECT TOP 10
	nom_de_la_chaine, ROUND(CAST(nombre_d_abonn�s AS float)/1000000,2) AS total_suscribers
FROM 
	vue_youtubeurs
ORDER BY nombre_d_abonn�s DESC;


/*
	--2. Afficher le  top 10 des chaines YouTube Fran�aises avec le plus de vues
*/

SELECT TOP 10
	nom_de_la_chaine, ROUND(CAST(nombre_de_vues AS float)/1000000000,2) AS total_views_Mrd
FROM 
	vue_youtubeurs
ORDER BY nombre_de_vues DESC;

/*
	--3. Afficher le  top 3 des chaines YouTube Fran�aises avec le plus de videos
*/

SELECT TOP 3
	nom_de_la_chaine, nombre_de_videos
FROM 
	vue_youtubeurs
ORDER BY nombre_de_videos DESC;