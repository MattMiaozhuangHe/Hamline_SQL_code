USE video_store;

SELECT *
FROM movie
	JOIN movie_copy
    USING (movie_id);
