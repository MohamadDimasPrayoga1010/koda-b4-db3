SELECT
    directors.id,
    directors.first_name,
    directors.last_name,
    COUNT(directors_genres.genre) AS jumlah_genre_direct
FROM directors
JOIN directors_genres ON directors.id = directors_genres.director_id
GROUP BY directors.id, directors.first_name, directors.last_name;


--mendapatkan actors yang memiliki roles lebih dari 5
SELECT
    actors.id AS actor_id,
    actors.first_name,
    actors.last_name,
    COUNT(roles.movie_id) AS role_more_than_5
FROM actors
JOIN roles ON actors.id = roles.actor_id
GROUP BY actors.id, actors.first_name, actors.last_name
HAVING COUNT(roles.movie_id) > 5;