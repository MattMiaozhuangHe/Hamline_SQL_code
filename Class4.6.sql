USE video_store;

CREATE OR REPLACE VIEW availablemovies
AS SELECT movie_title AS 'Movie Title', COUNT(*) AS 'Inventory', 
CASE WHEN SUM(DVD) THEN 'YES' ELSE 'NO' END AS 'DVD',
CASE WHEN SUM(VHS) THEN 'YES' ELSE 'NO' END AS 'VHS'
FROM
(SELECT *, CASE WHEN media_format='D'
THEN 1
ELSE 0
END AS 'DVD',
CASE WHEN media_format=‘V’
THEN 1
ELSE 0
END AS 'VHS'
FROM movie_copy 
WHERE date_sold IS NULL) z
JOIN movie 
USING(movie_id)
GROUP BY movie_title
ORDER BY movie_title;

