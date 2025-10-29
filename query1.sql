SELECT name, year FROM movies WHERE year > 2000;

SELECT last_name FROM actors WHERE last_name LIKE '%s';

SELECT name,rankscore, year FROM movies WHERE rankscore >= 5 AND rankscore <= 7 AND year >= 2004 AND year <= 2006;

SELECT count(name) AS movie_rating_6 FROM movies WHERE rankscore = 6