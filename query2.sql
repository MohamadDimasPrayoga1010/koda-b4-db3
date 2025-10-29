SELECT 
    movies.id,
    movies.name, 
    movies.year,
    movies.rankscore,
    directors.first_name,
    directors.last_name,
    movies_genres.genre
FROM movies
JOIN directors ON movies.id = directors.id
JOIN movies_genres ON movies.id = movies_genres.movie_id
LIMIT 50;



SELECT * FROM actors
LEFT JOIN roles ON roles.actor_id = actors.id
LEFT JOIN movies ON roles.movie_id = movies.id;

