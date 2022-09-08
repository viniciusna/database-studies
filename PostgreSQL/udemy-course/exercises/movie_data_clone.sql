-- Cópia do database "movie_data"

SELECT UPPER(d.first_name), UPPER(d.last_name), UPPER(m.movie_name)
FROM directors d JOIN movies m USING(director_id)

SELECT DISTINCT INITCAP(ac.first_name), INITCAP(ac.last_name) FROM actors ac
JOIN movie_actors ma USING(actor_id) JOIN movies mo USING(movie_id)
WHERE mo.movie_lang IN ('Chinese', 'Korean')

SELECT REVERSE(first_name), REVERSE(last_name), LEFT(nationality, 3)
FROM directors

SELECT CONCAT(LEFT(first_name, 1), '. ', LEFT(last_name, 1)) AS initials
FROM directors

-- #########################################################################################################################



