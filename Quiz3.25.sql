USE video_store;

/* Create a list of all movies (movie titles) that are available for rent, and the number of copies available for each movie.
Create a list of all movies (movie titles) that are available in Spanish.
Create a list of all movies that are available in Spanish, and the number of copies available for each of these movies.
*/

SELECT movie_title, count(copy_number)
FROM movie_rental
	JOIN movie
    USING(movie_id)
WHERE returned_date IS NOT NULL
GROUP BY movie_title;



SELECT movie_title, language_code
FROM movie
	JOIN movie_language
    USING (m
    WHERE language_code = 'es';
    
SELECT movie_title, count(copy_number)
FROM movie
	JOIN movie_rental
    USING (movie_id)
    JOIN movie_language
    USING (movie_id)
    WHERE language_code = 'es' AND returned_date IS NOT NULL
    GROUP BY movie_title;
    
select *
FROM movie_copy;
