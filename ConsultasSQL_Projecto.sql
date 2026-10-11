select *
from "actor"
where "actor_id" between 30 and 40;

SELECT *
FROM "actor"
order by "last_name" desc;


select count (*)
from film;

select * 
from film;

truncate film_actor;

SELECT COUNT(*) FROM actor;

SELECT 
    actor_id,
    first_name,
    last_name
FROM actor
ORDER BY last_name ASC;

truncate film_category;

select * 
from film
order by rental_rate;

select *
from "actor"
where "actor_id" between 30 and 40;

select * 
from film
order by length;

SELECT *
FROM "actor"
WHERE "last_name" = 'Allen';

SELECT title
FROM film
WHERE language_id = original_language_id;


SELECT COUNT(*) FROM film;

select * 
from film;

SELECT rating, COUNT(*) AS total_peliculas
FROM film
GROUP BY rating;

SELECT title
FROM film
WHERE rating = 'PG-13' 
   OR length > 180;

SELECT 
    VARIANCE(replacement_cost) AS varianza_costo_reemplazo,
    STDDEV(replacement_cost) AS desviacion_estandar_costo_reemplazo
FROM film;

SELECT 
    COUNT(*) AS total_peliculas,
    SUM(replacement_cost) AS costo_total,
    AVG(replacement_cost) AS costo_promedio,
    MIN(replacement_cost) AS costo_minimo,
    MAX(replacement_cost) AS costo_maximo
FROM film;


SELECT 
    MIN(length) AS duracion_minima,
    MAX(length) AS duracion_maxima
FROM film;

SELECT title, length
FROM film
WHERE length = (SELECT MIN(length) FROM film)
   OR length = (SELECT MAX(length) FROM film)
ORDER BY length ASC;

SELECT 
    r.rental_id,
    r.rental_date,
    p.amount AS costo_alquiler
FROM rental r
JOIN payment p ON r.rental_id = p.rental_id
ORDER BY r.rental_date DESC
LIMIT 1 OFFSET 2;

ALTER TABLE staff DROP CONSTRAINT staff_store_id_fkey;


ALTER TABLE staff ADD CONSTRAINT staff_store_id_fkey FOREIGN KEY (store_id) REFERENCES store (store_id);




SELECT title
FROM film
WHERE rating NOT IN ('NC-17', 'G');

SELECT 
    rating, 
    AVG(length) AS promedio_duracion
FROM film
GROUP BY rating;

select *
from film 
where length >180;

SELECT SUM(amount) AS total_ingresos
FROM payment;

SELECT *
FROM customer
ORDER BY customer_id DESC
LIMIT 10;


SELECT 
    a.first_name, 
    a.last_name
FROM actor a
JOIN film_actor fa ON a.actor_id = fa.actor_id
JOIN film f ON fa.film_id = f.film_id
WHERE f.title = 'EGG IGBY';

SELECT DISTINCT title
FROM film
ORDER BY title ASC;

SELECT * FROM film;

SELECT 
    f.title
FROM film f
JOIN film_category fc ON f.film_id = fc.film_id
JOIN category c ON fc.category_id = c.category_id
WHERE c.name = 'Comedy'
  AND f.length > 180;

SELECT 
    c.name AS categoria,
    AVG(f.length) AS promedio_duracion
FROM category c
JOIN film_category fc ON c.category_id = fc.category_id
JOIN film f ON fc.film_id = f.film_id
GROUP BY c.name
HAVING AVG(f.length) > 110;

SELECT 
    AVG(return_date - rental_date) AS media_duracion_alquiler
FROM rental;

SELECT 
    CONCAT(first_name, ' ', last_name) AS nombre_completo
FROM actor;

SELECT 
    DATE(rental_date) AS fecha,
    COUNT(*) AS total_alquileres
FROM rental
GROUP BY DATE(rental_date)
ORDER BY total_alquileres DESC;

SELECT 
    title, 
    length
FROM film
WHERE length > (
    SELECT AVG(length) 
    FROM film
)
ORDER BY length DESC;

SELECT 
    DATE(rental_date) AS fecha,
    TO_CHAR(rental_date, 'Day') AS dia_semana,
    COUNT(*) AS total_alquileres
FROM rental
GROUP BY DATE(rental_date), TO_CHAR(rental_date, 'Day')
ORDER BY total_alquileres DESC;

SELECT 
    TO_CHAR(rental_date, 'YYYY-MM') AS mes,
    COUNT(*) AS total_alquileres
FROM rental
GROUP BY TO_CHAR(rental_date, 'YYYY-MM')
ORDER BY mes ASC;

SELECT 
    AVG(amount) AS promedio_pagado,
    STDDEV(amount) AS desviacion_estandar,
    VARIANCE(amount) AS varianza
FROM payment;

SELECT 
    title, 
    rental_rate
FROM film
WHERE rental_rate > (
    SELECT AVG(rental_rate) 
    FROM film
)
ORDER BY rental_rate DESC, title ASC;

SELECT 
    actor_id, 
    COUNT(film_id) AS total_peliculas
FROM film_actor
GROUP BY actor_id
HAVING COUNT(film_id) > 40
ORDER BY total_peliculas DESC;

SELECT 
    a.actor_id,
    a.first_name,
    a.last_name,
    COUNT(fa.film_id) AS total_peliculas
FROM actor a
JOIN film_actor fa ON a.actor_id = fa.actor_id
GROUP BY a.actor_id, a.first_name, a.last_name
HAVING COUNT(fa.film_id) > 40
ORDER BY total_peliculas DESC;


SELECT 
    f.film_id,
    f.title,
    COUNT(i.inventory_id) AS cantidad_disponible
FROM film f
LEFT JOIN inventory i ON f.film_id = i.film_id
GROUP BY f.film_id, f.title
ORDER BY cantidad_disponible DESC, f.title ASC;

SELECT 
    f.film_id,
    f.title,
    COUNT(i.inventory_id) AS total_en_inventario,
    COUNT(i.inventory_id) - COUNT(r.rental_id) AS copias_disponibles_ahora
FROM film f
LEFT JOIN inventory i ON f.film_id = i.film_id
LEFT JOIN rental r ON i.inventory_id = r.inventory_id AND r.return_date IS NULL
GROUP BY f.film_id, f.title
ORDER BY copias_disponibles_ahora DESC, f.title ASC;


SELECT 
    a.actor_id,
    a.first_name || ' ' || a.last_name AS nombre_completo,
    COUNT(fa.film_id) AS total_peliculas
FROM actor a
JOIN film_actor fa ON a.actor_id = fa.actor_id
GROUP BY a.actor_id, a.first_name, a.last_name
ORDER BY total_peliculas DESC;


 SELECT 
    f.film_id,
    f.title,
    a.actor_id,
    a.first_name,
    a.last_name
FROM film f
LEFT JOIN film_actor fa ON f.film_id = fa.film_id
LEFT JOIN actor a ON fa.actor_id = a.actor_id
ORDER BY f.title ASC, a.last_name ASC;

SELECT 
    a.actor_id,
    a.first_name || ' ' || a.last_name AS actor,
    COALESCE(STRING_AGG(f.title, ', '), 'Sin películas registradas') AS peliculas
FROM actor a
LEFT JOIN film_actor fa ON a.actor_id = fa.actor_id
LEFT JOIN film f ON fa.film_id = f.film_id
GROUP BY a.actor_id, a.first_name, a.last_name
ORDER BY a.last_name ASC, a.first_name ASC;

SELECT 
    f.film_id,
    f.title,
    r.rental_id,
    r.rental_date,
    r.return_date,
    r.customer_id
FROM film f
LEFT JOIN inventory i ON f.film_id = i.film_id
LEFT JOIN rental r ON i.inventory_id = r.inventory_id
ORDER BY f.title ASC, r.rental_date DESC;


SELECT 
    c.customer_id,
    c.first_name || ' ' || c.last_name AS cliente,
    SUM(p.amount) AS total_gastado
FROM customer c
JOIN payment p ON c.customer_id = p.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name
ORDER BY total_gastado DESC
LIMIT 5;

SELECT 
    actor_id,
    first_name,
    last_name,
    last_update
FROM actor
WHERE first_name = 'JOHNNY';

SELECT 
    actor_id,
    first_name AS "Nombre",
    last_name AS "Apellido",
    last_update
FROM actor;

SELECT 
    MIN(actor_id) AS id_mas_bajo,
    MAX(actor_id) AS id_mas_alto
FROM actor;

(
    SELECT 
        actor_id, 
        first_name, 
        last_name, 
        'MÁS BAJO' AS tipo
    FROM actor
    ORDER BY actor_id ASC
    LIMIT 1
)
UNION ALL
(
    SELECT 
        actor_id, 
        first_name, 
        last_name, 
        'MÁS ALTO' AS tipo
    FROM actor
    ORDER BY actor_id DESC
    LIMIT 1
);

SELECT 
    first_name AS nombre,
    COUNT(*) AS cantidad_actores
FROM actor
GROUP BY first_name
ORDER BY cantidad_actores DESC, nombre ASC;

SELECT 
    first_name AS nombre_mas_repetido,
    COUNT(*) AS total
FROM actor
GROUP BY first_name
ORDER BY total DESC
LIMIT 3;

SELECT 
    r.rental_id,
    r.rental_date,
    r.return_date,
    c.customer_id,
    c.first_name || ' ' || c.last_name AS cliente
FROM rental r
JOIN customer c ON r.customer_id = c.customer_id
ORDER BY r.rental_date DESC;

SELECT 
    c.customer_id,
    c.first_name || ' ' || c.last_name AS cliente,
    COUNT(r.rental_id) AS total_alquileres
FROM customer c
LEFT JOIN rental r ON c.customer_id = r.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name
ORDER BY total_alquileres ASC, c.customer_id ASC;

SELECT 
    f.film_id,
    f.title,
    c.category_id,
    c.name AS categoria
FROM film f
CROSS JOIN category c
ORDER BY f.film_id, c.category_id;

SELECT DISTINCT
    a.actor_id,
    a.first_name,
    a.last_name
FROM actor a
JOIN film_actor fa ON a.actor_id = fa.actor_id
JOIN film_category fc ON fa.film_id = fc.film_id
JOIN category c ON fc.category_id = c.category_id
WHERE c.name = 'Action'
ORDER BY a.last_name ASC, a.first_name ASC;


SELECT 
    a.actor_id,
    a.first_name,
    a.last_name
FROM actor a
LEFT JOIN film_actor fa ON a.actor_id = fa.actor_id
WHERE fa.actor_id IS NULL;

SELECT 
    a.actor_id,
    a.first_name,
    a.last_name
FROM actor a
WHERE NOT EXISTS (
    SELECT 1 
    FROM film_actor fa 
    WHERE fa.actor_id = a.actor_id
);

SELECT 
    a.actor_id,
    a.first_name || ' ' || a.last_name AS actor,
    COUNT(fa.film_id) AS cantidad_peliculas
FROM actor a
LEFT JOIN film_actor fa ON a.actor_id = fa.actor_id
GROUP BY a.actor_id, a.first_name, a.last_name
ORDER BY cantidad_peliculas DESC, actor ASC;


CREATE VIEW actor_num_peliculas AS
SELECT 
    a.actor_id,
    a.first_name,
    a.last_name,
    a.first_name || ' ' || a.last_name AS actor,
    COUNT(fa.film_id) AS cantidad_peliculas
FROM actor a
LEFT JOIN film_actor fa ON a.actor_id = fa.actor_id
GROUP BY a.actor_id, a.first_name, a.last_name;


-- Obtener todos los registros ordenados por los más populares
SELECT * 
FROM actor_num_peliculas
ORDER BY cantidad_peliculas DESC;

-- Filtrar dentro de la vista (ejemplo: actores con más de 30 películas)
SELECT actor, cantidad_peliculas
FROM actor_num_peliculas
WHERE cantidad_peliculas > 30
ORDER BY cantidad_peliculas DESC;

SELECT 
    c.customer_id,
    c.first_name || ' ' || c.last_name AS cliente,
    c.email,
    COUNT(r.rental_id) AS total_alquileres
FROM customer c
LEFT JOIN rental r ON c.customer_id = r.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name, c.email
ORDER BY total_alquileres DESC, c.customer_id ASC;


SELECT 
    c.name AS categoria,
    SUM(f.length) AS duracion_total_minutos,
    ROUND(SUM(f.length) / 60.0, 2) AS duracion_total_horas
FROM film f
JOIN film_category fc ON f.film_id = fc.film_id
JOIN category c ON fc.category_id = c.category_id
WHERE c.name = 'Action'
GROUP BY c.name;


CREATE TEMP TABLE cliente_rentas_temporal AS
SELECT 
    c.customer_id,
    c.first_name || ' ' || c.last_name AS cliente,
    c.email,
    COUNT(r.rental_id) AS total_alquileres
FROM customer c
LEFT JOIN rental r ON c.customer_id = r.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name, c.email;


-- Consultar la tabla temporal ordenando por los clientes más activos
SELECT * 
FROM cliente_rentas_temporal
ORDER BY total_alquileres DESC;

-- Filtrar clientes específicos
SELECT cliente, total_alquileres
FROM cliente_rentas_temporal
WHERE total_alquileres >= 30
order by cliente asc, total_alquileres desc;

CREATE TEMP TABLE peliculas_alquiladas AS
SELECT 
    f.film_id,
    f.title,
    f.release_year,
    f.rental_rate,
    COUNT(r.rental_id) AS total_alquileres
FROM film f
JOIN inventory i ON f.film_id = i.film_id
JOIN rental r ON i.inventory_id = r.inventory_id
GROUP BY f.film_id, f.title, f.release_year, f.rental_rate
HAVING COUNT(r.rental_id) >= 10;

-- Consultar las películas más alquiladas dentro de la tabla temporal
SELECT * 
FROM peliculas_alquiladas
ORDER BY total_alquileres DESC;

-- Contar cuántas películas cumplieron con el criterio de >= 10 alquileres
SELECT COUNT(*) AS cantidad_peliculas
FROM peliculas_alquiladas;

SELECT 
    f.title AS titulo_pelicula,
    r.rental_date AS fecha_alquiler
FROM customer c
JOIN rental r ON c.customer_id = r.customer_id
JOIN inventory i ON r.inventory_id = i.inventory_id
JOIN film f ON i.film_id = f.film_id
WHERE c.first_name = 'TAMMY'
  AND c.last_name = 'SANDERS'
  AND r.return_date IS NULL
ORDER BY f.title ASC;


SELECT DISTINCT
    a.actor_id,
    a.first_name,
    a.last_name
FROM actor a
JOIN film_actor fa ON a.actor_id = fa.actor_id
JOIN film_category fc ON fa.film_id = fc.film_id
JOIN category c ON fc.category_id = c.category_id
WHERE c.name = 'Sci-Fi'
ORDER BY a.last_name ASC, a.first_name ASC;


SELECT DISTINCT
    a.actor_id,
    a.first_name,
    a.last_name
FROM actor a
JOIN film_actor fa ON a.actor_id = fa.actor_id
JOIN inventory i ON fa.film_id = i.film_id
JOIN rental r ON i.inventory_id = r.inventory_id
WHERE r.rental_date > (
    SELECT MIN(r_sub.rental_date)
    FROM film f_sub
    JOIN inventory i_sub ON f_sub.film_id = i_sub.film_id
    JOIN rental r_sub ON i_sub.inventory_id = r_sub.inventory_id
    WHERE UPPER(f_sub.title) = 'SPARTACUS CHEAPER'
)
ORDER BY a.last_name ASC, a.first_name ASC;

SELECT 
    a.actor_id,
    a.first_name,
    a.last_name
FROM actor a
WHERE a.actor_id NOT IN (
    SELECT DISTINCT fa.actor_id
    FROM film_actor fa
    JOIN film_category fc ON fa.film_id = fc.film_id
    JOIN category c ON fc.category_id = c.category_id
    WHERE c.name = 'Music'
)
ORDER BY a.last_name ASC, a.first_name ASC;

SELECT 
    f.film_id,
    f.title AS titulo_pelicula,
    MAX(r.return_date - r.rental_date) AS duracion_maxima_alquiler
FROM film f
JOIN inventory i ON f.film_id = i.film_id
JOIN rental r ON i.inventory_id = r.inventory_id
WHERE r.return_date IS NOT NULL
GROUP BY f.film_id, f.title
HAVING MAX(r.return_date - r.rental_date) > INTERVAL '8 days'
ORDER BY duracion_maxima_alquiler DESC, f.title ASC;

SELECT 
    f.film_id,
    f.title AS titulo_pelicula,
    c.name AS categoria
FROM film f
JOIN film_category fc ON f.film_id = fc.film_id
JOIN category c ON fc.category_id = c.category_id
WHERE c.name = 'Animation'
ORDER BY f.title ASC;

SELECT 
    f.film_id,
    f.title AS titulo_pelicula
FROM film f
JOIN film_category fc ON f.film_id = fc.film_id
WHERE fc.category_id IN (
    SELECT fc_sub.category_id
    FROM category c_sub
    JOIN film_category fc_sub ON c_sub.category_id = fc_sub.category_id
    WHERE c_sub.name = 'Animation'
)
ORDER BY f.title ASC;


SELECT 
    f.film_id,
    f.title AS titulo_pelicula,
    f.length AS duracion_minutos
FROM film f
WHERE f.length = (
    SELECT length 
    FROM film 
    WHERE UPPER(title) = 'DANCING FEVER'
)
  AND UPPER(f.title) <> 'DANCING FEVER'
ORDER BY f.title ASC;

SELECT 
    c.customer_id,
    c.first_name,
    c.last_name,
    COUNT(DISTINCT i.film_id) AS peliculas_distintas_alquiladas
FROM customer c
JOIN rental r ON c.customer_id = r.customer_id
JOIN inventory i ON r.inventory_id = i.inventory_id
GROUP BY c.customer_id, c.first_name, c.last_name
HAVING COUNT(DISTINCT i.film_id) >= 7
ORDER BY c.last_name ASC, c.first_name ASC;

SELECT 
    c.name AS categoria,
    COUNT(r.rental_id) AS total_alquileres
FROM category c
JOIN film_category fc ON c.category_id = fc.category_id
JOIN inventory i ON fc.film_id = i.film_id
JOIN rental r ON i.inventory_id = r.inventory_id
GROUP BY c.category_id, c.name
ORDER BY total_alquileres DESC;

SELECT 
    c.name AS categoria,
    COUNT(f.film_id) AS total_peliculas
FROM category c
JOIN film_category fc ON c.category_id = fc.category_id
JOIN film f ON fc.film_id = f.film_id
WHERE f.release_year = 2006
GROUP BY c.category_id, c.name
ORDER BY total_peliculas DESC, c.name ASC;


SELECT 
    s.staff_id,
    s.first_name || ' ' || s.last_name AS trabajador,
    st.store_id,
    a.address AS direccion_tienda
FROM staff s
CROSS JOIN store st
JOIN address a ON st.address_id = a.address_id
ORDER BY s.staff_id ASC, st.store_id ASC;

SELECT 
    c.customer_id,
    c.first_name,
    c.last_name,
    COUNT(r.rental_id) AS total_peliculas_alquiladas
FROM customer c
JOIN rental r ON c.customer_id = r.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name
ORDER BY total_peliculas_alquiladas DESC, c.last_name ASC;
