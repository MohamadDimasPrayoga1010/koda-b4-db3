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

--mendapatkan directors paling produktif sepanjang masa
SELECT
    directors.id AS directors_id,
    directors.first_name,
    directors.last_name,
    COUNT(movies_directors.movie_id) AS produktif
FROM directors
JOIN movies_directors ON directors.id = movies_directors.director_id
GROUP BY directors.id, directors.first_name, directors.last_name
ORDER BY produktif DESC
LIMIT 1;

--mendapatkan tahun tersibuk sepanjang masa
SELECT
    movies.year AS tahun,
    COUNT(movies.id) AS number_of_films
FROM movies
GROUP BY movies.year
ORDER BY number_of_films DESC
LIMIT 1;

--mendapatkan movies dengan genres yang di buatkan menjadi 1 column(value dipisahkan dengan comma) dengan menggunakan string_agg. 
SELECT 
    movies.id,
    movies.name,
    string_agg(movies_genres.genre, ', ') AS genre_movie
FROM movies
JOIN movies_genres ON movies.id = movies_genres.movie_id
GROUP BY movies.id, movies.name;