SELECT
    directors.id,
    directors.first_name,
    directors.last_name,
    COUNT(directors_genres.genre) AS jumlah_genre_direct
FROM directors
JOIN directors_genres ON directors.id = directors_genres.director_id
GROUP BY directors.id, directors.first_name, directors.last_name;
