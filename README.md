<img width="742" height="639" alt="Captura de pantalla 2026-10-11 a las 16 21 12" src="https://github.com/user-attachments/assets/4423dae5-35a6-4583-8c2b-e2f734d5c547" />

###Shakila_films
1. Crea el esquema de la BBDD - View diagram in public folder Shakila right click
   
<img width="853" height="707" alt="Captura de pantalla 2026-10-06 a las 11 09 18" src="https://github.com/user-attachments/assets/c9012669-86be-4fe7-8770-e2cfc8e20225" />


2. Nombres de películas con clasificación por edades de 'R'
Todas las películas tienen la misma release_year 2006 por lo que no se puede ordenar más que como está en orden alfabético.

<img width="936" height="591" alt="Captura de pantalla 2026-10-07 a las 15 36 00" src="https://github.com/user-attachments/assets/c80a0ebc-a898-46de-8b99-f97fd0d2cd91" />

select * 
from film
order by rental_rate;

<img width="1253" height="594" alt="Captura de pantalla 2026-10-07 a las 15 33 14" src="https://github.com/user-attachments/assets/8cb040ea-4ee5-41bb-9945-47cf8669a121" />


3.Nombres actores con actor id entre 30-40:
select *
from "actor"
where "actor_id" between 30 and 40;

30	SANDRA	PECK	2006-02-15 04:34:33.000
31	SISSY	SOBIESKI	2006-02-15 04:34:33.000
32	TIM	HACKMAN	2006-02-15 04:34:33.000
33	MILLA	PECK	2006-02-15 04:34:33.000
34	AUDREY	OLIVIER	2006-02-15 04:34:33.000
35	JUDY	DEAN	2006-02-15 04:34:33.000
36	BURT	DUKAKIS	2006-02-15 04:34:33.000
37	VAL	BOLGER	2006-02-15 04:34:33.000
38	TOM	MCKELLEN	2006-02-15 04:34:33.000
39	GOLDIE	BRODY	2006-02-15 04:34:33.000
40	JOHNNY	CAGE	2006-02-15 04:34:33.000

<img width="1009" height="437" alt="Captura de pantalla 2026-10-07 a las 15 34 51" src="https://github.com/user-attachments/assets/a4886791-aa36-4ec5-a6f1-2ddc1ed54bcd" />


4. Obtén las películas cuyo idioma coincide con el idioma original.

SELECT title
FROM film
WHERE language_id = original_language_id;

<img width="1025" height="673" alt="Captura de pantalla 2026-10-08 a las 15 14 39" src="https://github.com/user-attachments/assets/06c172dc-677e-44c7-9560-004d4da51213" />

Ninguna película cumple esa condición porque no hay dobladas, original language es siempre null   

5. Ordena las películas por duración de forma ascendente.
select * 
from film
order by length; (sin nada es asc, sino usamos desc)

<img width="1356" height="875" alt="Captura de pantalla 2026-10-07 a las 16 39 32" src="https://github.com/user-attachments/assets/2a692273-8629-48a4-a097-9e35289fbc8a" />

   
6. Encuentra el nombre y apellido de los actores que tengan ‘Allen’ en su
apellido.
SELECT *
FROM "actor<img width="1219" height="762" alt="Captura de pantalla 2026-10-08 a las 15 13 58" src="https://github.com/user-attachments/assets/feb51592-fb30-40fc-8bca-22e5facb9b74" />

Result NONE/BLANK


7.Encuentra la cantidad total de películas en cada clasificación de la tabla “film” y muestra la clasificación junto con el recuento.

Total count es 1000 usando SELECT COUNT(*) FROM film; 

Pero para ver por cada clasificación necesitamos usar rating. 
 <img width="994" height="574" alt="Captura de pantalla 2026-10-08 a las 15 23 59" src="https://github.com/user-attachments/assets/371a90f8-fb4e-46b4-b645-96db6017742d" />


8. Encuentra el título de todas las películas que son ‘PG-13’ o tienen una duración mayor a 3 horas en la tabla film.
SELECT title
FROM film
WHERE rating = 'PG-13' 
   OR length > 180;

   <img width="969" height="835" alt="Captura de pantalla 2026-10-08 a las 15 29 29" src="https://github.com/user-attachments/assets/879aa487-7363-4c59-ad6e-65900e699c55" />


AIRPLANE SIERRA
ALABAMA DEVIL
ALTER VICTORY
ANALYZE HOOSIERS
ANTHEM LUKE
APOLLO TEEN
ARACHNOPHOBIA ROLLERCOASTER
ARGONAUTS TOWN
ATTACKS HATE
ATTRACTION NEWTON
BACKLASH UNDEFEATED
BAKED CLEOPATRA
BASIC EASY
BEETHOVEN EXORCIST
BERETS AGENT
BILKO ANONYMOUS
BINGO TALENTED
BLADE POLISH
BLINDNESS GUN
BRAVEHEART HUMAN
BREAKING HOME
BRIGHT ENCOUNTERS
BUTCH PANTHER
CASPER DRAGONFLY
CATCH AMISTAD
CELEBRITY HORN
CHICAGO NORTH
CIRCUS YOUTH
CLEOPATRA DEVIL
CLOCKWORK PARADISE
CLUB GRAFFITI
CLYDE THEORY
COMMAND DARLING
CONFESSIONS MAGUIRE
CONFUSED CANDLES
CONGENIALITY QUEST
CONSPIRACY SPIRIT
CONTACT ANONYMOUS
CONTROL ANTHEM
CORE SUIT
CROOKED FROGMEN
CRYSTAL BREAKING
CURTAIN VIDEOTAPE
DARES PLUTO
DARLING BREAKING
DARN FORRESTER
DAUGHTER MADIGAN
DEEP CRUSADE
DESTINATION JERK
DETECTIVE VISION
DIVIDE MONSTER
DOLLS RAGE
DRIFTER COMMANDMENTS
DRIVER ANNIE
DYNAMITE TARZAN
ELEPHANT TROJAN
ENGLISH BULWORTH
EVOLUTION ALTER
EXPECATIONS NATURAL
EYES DRIVING
FACTORY DRAGON
FALCON VOLUME
FANTASY TROOPERS
FEATHERS METAL
FLAMINGOS CONNECTICUT
FLINTSTONES HAPPINESS
FLOATS GARDEN
FREEDOM CLEOPATRA
FRONTIER CABIN
FURY MURDER
GAMES BOWFINGER
GANDHI KWAI
GANGS PRIDE
GATHERING CALENDAR
GLORY TRACY
GROUNDHOG UNCUT
GUNFIGHTER MUSSOLINI
HALF OUTFIELD
HALLOWEEN NUTS
HARRY IDAHO
HAUNTING PIANIST
HAWK CHILL
HOBBIT ALIEN
HOLIDAY GAMES
HOME PITY
HOMICIDE PEACH
HOTEL HAPPINESS
HUNCHBACK IMPOSSIBLE
HUNTER ALTER
IDAHO LOVE
IDENTITY LOVER
IMAGE PRINCESS
IMPACT ALADDIN
INNOCENT USUAL
INTENTIONS EMPIRE
INTOLERABLE INTENTIONS
INTRIGUE WORST
JACKET FRISCO
JINGLE SAGEBRUSH
JUGGLER HARDLY
KARATE MOON
KICK SAVANNAH
KING EVOLUTION
KISS GLORY
KNOCK WARLOCK
KWAI HOMEWARD
LABYRINTH LEAGUE
LAMBS CINCINATTI
LAWLESS VISION
LEAGUE HELLFIGHTERS
LEATHERNECKS DWARFS
LEBOWSKI SOLDIERS
LORD ARIZONA
LOST BIRD
LOUISIANA HARRY
LOVE SUICIDES
LOVERBOY ATTACKS
LUCKY FLYING
MADNESS ATTACKS
MIRACLE VIRTUAL
MADRE GABLES
MAGNOLIA FORRESTER
MAKER GABLES
MALTESE HOPE
MANNEQUIN WORST
MASKED BUBBLE
MATRIX SNOWMAN
METAL ARMAGEDDON
METROPOLIS COMA
MICROCOSMOS PARADISE
MILLION ACE
MINDS TRUMAN
MINE TITANS
MISSION ZOOLANDER
MIXED DOORS
MONSOON CAUSE
MOONSHINE CABIN
MOONWALKER FOOL
MOULIN WAKE
MUSCLE BRIGHT
NAME DETECTIVE
NASH CHOCOLAT
NATURAL STOCK
NETWORK PEAK
NOTTING SPEAKEASY
OCTOBER SUBMARINE
ORANGE GRAPES
ORDER BETRAYED
OUTLAW HANKY
PACKER MADIGAN
PARADISE SABRINA
PARIS WEEKEND
PARK CITIZEN
PAST SUICIDES
PAYCHECK WAIT
PEACH INNOCENT
PERFECT GROOVE
PERSONAL LADYBUGS
PHILADELPHIA WIFE
PITTSBURGH HUNCHBACK
PLATOON INSTINCT
POND SEATTLE
POSEIDON FOREVER
PREJUDICE OLEANDER
PSYCHO SHRUNK
RAIDERS ANTITRUST
REAP UNFAITHFUL
RECORDS ZORRO
REDS POCUS
REIGN GENTLEMEN
RESERVOIR ADAPTATION
RIDGEMONT SUBMARINE
RIGHT CRANES
RIVER OUTLAW
ROBBERS JOON
ROCKETEER MOTHER
ROCKY WAR
ROLLERCOASTER BRINGING
ROOTS REMEMBER
ROSES TREASURE
RUGRATS SHAKESPEARE
RUNAWAY TENENBAUMS
RUSHMORE MERMAID
SADDLE ANTITRUST
SATURN NAME
SAVANNAH TOWN
SCALAWAG DUCK
SCARFACE BANG
SCHOOL JACKET
SEARCHERS WAIT
SEATTLE EXPECATIONS
SHAKESPEARE SADDLE
SHOCK CABIN
SHOOTIST SUPERFLY
SHOW LORD
SHREK LICENSE
SINNERS ATLANTIS
SISTER FREDDY
SLEEPING SUSPECTS
SLIPPER FIDELITY
SMOKING BARBARELLA
SMOOCHY CONTROL
SNATCHERS MONTEZUMA
SOLDIERS EVOLUTION
SONG HEDWIG
SONS INTERVIEW
SORORITY QUEEN
SPEAKEASY DATE
SPEED SUIT
SPINAL ROCKY
SPIRITED CASUALTIES
SPY MILE
STALLION SUNDANCE
STAR OPERATION
STREAK RIDGEMONT
STRICTLY SCARFACE
SUNRISE LEAGUE
SWARM GOLD
SWEET BROTHERHOOD
TARZAN VIDEOTAPE
TAXI KICK
TELEMARK HEARTBREAKERS
TENENBAUMS COMMAND
THEORY MERMAID
THIEF PELICAN
THIN SAGEBRUSH
TOURIST PELICAN
TRAINSPOTTING STRANGERS
TRANSLATION SUMMER
TREASURE COMMAND
TRIP NEWTON
UNCUT SUICIDES
UNDEFEATED DALMATIONS
USUAL UNTOUCHABLES
VALENTINE VANISHING
VICTORY ACADEMY
VIETNAM SMOOCHY
VILLAIN DESPERATE
VIRGIN DAISY
VISION TORQUE
VOICE PEACH
VOYAGE LEGALLY
WAIT CIDER
WANDA CHAMBER
WHALE BIKINI
WHISPERER GIANT
WIFE TURN
WILD APOLLO
WORLD LEATHERNECKS
WORST BANGER
WRONG BEHAVIOR
WYOMING STORM
YOUNG LANGUAGE

9. Encuentra la variabilidad de lo que costaría reemplazar las películas.
SELECT 
    VARIANCE(replacement_cost) AS varianza_costo_reemplazo,
    STDDEV(replacement_cost) AS desviacion_estandar_costo_reemplazo
FROM film;
<img width="1011" height="572" alt="Captura de pantalla 2026-10-08 a las 15 44 40" src="https://github.com/user-attachments/assets/ccaa73b4-e5da-4e3e-a9ed-5b27759da1c8" />

<img width="956" height="309" alt="Captura de pantalla 2026-10-08 a las 15 47 56" src="https://github.com/user-attachments/assets/72a02ee7-3fb5-4626-9126-43a458aca175" />

10. Encuentra la mayor y menor duración de una película de nuestra BBDD.

SELECT 
    MIN(length) AS duracion_minima,
    MAX(length) AS duracion_maxima
FROM film;

Duración minima 46, max 185

<img width="996" height="758" alt="Captura de pantalla 2026-10-08 a las 15 50 32" src="https://github.com/user-attachments/assets/991b3927-d334-48b0-985a-96431f845edf" />

11. Encuentra lo que costó el antepenúltimo alquiler ordenado por día.<img width="1091" height="464" alt="Captura de pantalla 2026-10-09 a las 15 06 43" src="https://github.com/user-attachments/assets/64b30bc7-4368-48e8-8346-310a40d65556" />


12. Encuentra el título de las películas en la tabla “film” que no sean ni ‘NC17’ ni ‘G’ en cuanto a su clasificación.
SELECT title
FROM film
WHERE rating NOT IN ('NC-17', 'G');

<img width="1086" height="430" alt="Captura de pantalla 2026-10-09 a las 15 24 41" src="https://github.com/user-attachments/assets/1df8d28b-0705-40ae-bef1-17e2a388bf22" />


13.Encuentra el promedio de duración de las películas para cada clasificación de la tabla film y muestra la clasificación junto con el promedio de duración. 
SELECT 
    rating, 
    AVG(length) AS promedio_duracion
FROM film
GROUP BY rating;

<img width="1015" height="374" alt="Captura de pantalla 2026-10-09 a las 15 48 41" src="https://github.com/user-attachments/assets/3d6f2052-0f3a-4a58-a6fb-1374293c9a66" />


14. Encuentra el título de todas las películas que tengan una duración mayor a 180 minutos.\

select *
from film 
where length >180;

<img width="956" height="514" alt="Captura de pantalla 2026-10-09 a las 16 02 41" src="https://github.com/user-attachments/assets/8a137573-fcdb-449c-999a-04c2778eb50d" />

15. ¿Cuánto dinero ha generado en total la empresa?

<img width="796" height="484" alt="Captura de pantalla 2026-10-09 a las 16 31 25" src="https://github.com/user-attachments/assets/69aa9562-fe9a-4cde-9396-ad5ddab76a5e" />


16. Muestra los 10 clientes con mayor valor de id.

SELECT *
FROM customer
ORDER BY customer_id DESC
LIMIT 10;

<img width="1269" height="445" alt="Captura de pantalla 2026-10-09 a las 16 33 49" src="https://github.com/user-attachments/assets/5af7f777-3f1e-42ae-aa0d-0414f182a87c" />


17. Encuentra el nombre y apellido de los actores que aparecen en la película con título ‘Egg Igby’.

SELECT 
    a.first_name, 
    a.last_name
FROM actor a
JOIN film_actor fa ON a.actor_id = fa.actor_id
JOIN film f ON fa.film_id = f.film_id
WHERE f.title = 'EGG IGBY';
<img width="1104" height="459" alt="Captura de pantalla 2026-10-09 a las 17 13 10" src="https://github.com/user-attachments/assets/e0200a85-8ad3-43f8-88f7-40c59617a21c" />

18.  Selecciona todos los nombres de las películas únicos.

19.  SELECT DISTINCT title
FROM film
ORDER BY title ASC; (Opcional) Total 1000 son todas únicas en la lista. SELECT COUNT(*) FROM film; muestra 1000 como el fin de listado 

<img width="612" height="652" alt="Captura de pantalla 2026-10-10 a las 12 47 53" src="https://github.com/user-attachments/assets/01eef27f-d5f4-4c03-bb7c-ea7c3788314a" />

19. Encuentra el título de las películas que son comedias y tienen una duración mayor a 180 minutos en la tabla “film”.

<img width="540" height="457" alt="Captura de pantalla 2026-10-10 a las 12 59 53" src="https://github.com/user-attachments/assets/ca644959-e0eb-4014-862f-4051c26e2bc2" />

20.Encuentra las categorías de películas que tienen un promedio de duración superior a 110 minutos y muestra el nombre de la categoría junto con el promedio de duración.
   SELECT 
    c.name AS categoria,
    AVG(f.length) AS promedio_duracion
FROM category c
JOIN film_category fc ON c.category_id = fc.category_id
JOIN film f ON fc.film_id = f.film_id
GROUP BY c.name
HAVING AVG(f.length) > 110;

 <img width="628" height="565" alt="Captura de pantalla 2026-10-10 a las 13 58 17" src="https://github.com/user-attachments/assets/0e46c369-271c-424e-bf65-53165840f541" />


21. ¿Cuál es la media de duración del alquiler de las películas?

SELECT 
    AVG(return_date - rental_date) AS media_duracion_alquiler
FROM rental;
<img width="942" height="346" alt="Captura de pantalla 2026-10-10 a las 14 01 38" src="https://github.com/user-attachments/assets/cc28a629-58e2-4dfb-ae75-4572933f88b2" />

22. Crea una columna con el nombre y apellidos de todos los actores y actrices.
SELECT 
    CONCAT(first_name, ' ', last_name) AS nombre_completo
FROM actor;    
<img width="1002" height="641" alt="Captura de pantalla 2026-10-10 a las 14 18 41" src="https://github.com/user-attachments/assets/b55680f1-503c-4a93-bd0e-0fa9ae3db7c4" />
    
23. Números de alquiler por día, ordenados por cantidad de alquiler de forma descendente.
SELECT 
    DATE(rental_date) AS fecha,
    COUNT(*) AS total_alquileres
FROM rental
GROUP BY DATE(rental_date)
ORDER BY total_alquileres DESC;

Día de la semana 

SELECT 
    DATE(rental_date) AS fecha,
    TO_CHAR(rental_date, 'Day') AS dia_semana,
    COUNT(*) AS total_alquileres
FROM rental
GROUP BY DATE(rental_date), TO_CHAR(rental_date, 'Day')
ORDER BY total_alquileres DESC;

2005-07-31	679
2005-08-01	671
2005-08-21	659
2005-07-27	649
2005-08-02	643
2005-07-29	641
2005-07-30	634
2005-08-19	628
2005-08-22	626
2005-08-20	624
2005-08-18	621
2005-07-28	620
2005-08-23	598
2005-08-17	593
2005-07-09	513
2005-07-08	512
2005-07-06	504
2005-07-12	495
2005-07-10	480
2005-07-07	461
2005-07-11	461
2005-06-19	348
2005-06-15	348
2005-06-18	344
2005-06-20	331
2005-06-17	325
2005-06-16	324
2005-06-21	275
2005-05-28	196
2006-02-14	182
2005-05-26	174
2005-05-27	166
2005-05-31	163
2005-05-30	158
2005-05-29	154
2005-05-25	137
2005-07-26	33
2005-07-05	27
2005-08-16	23
2005-06-14	16
2005-05-24	8




<img width="640" height="624" alt="Captura de pantalla 2026-10-10 a las 14 24 29" src="https://github.com/user-attachments/assets/ca25ae62-83f3-4441-a852-132f6036c804" />

    
24.Encuentra las películas con una duración superior al promedio.

SELECT 
    title, 
    length
FROM film
WHERE length > (
    SELECT AVG(length) 
    FROM film
)
ORDER BY length DESC;
   
  <img width="659" height="723" alt="Captura de pantalla 2026-10-10 a las 14 27 54" src="https://github.com/user-attachments/assets/e01fab0d-3671-4b42-acc6-325539b1a85a" />

    
    
25. Averigua el número de alquileres registrados por mes.

SELECT 
    TO_CHAR(rental_date, 'YYYY-MM') AS mes,
    COUNT(*) AS total_alquileres
FROM rental
GROUP BY TO_CHAR(rental_date, 'YYYY-MM')
ORDER BY mes ASC;

<img width="1143" height="795" alt="Captura de pantalla 2026-10-10 a las 16 05 50" src="https://github.com/user-attachments/assets/f491a1b8-0582-43ba-b45b-13667e1df421" />

    
26. Encuentra el promedio, la desviación estándar y varianza del total pagado.

SELECT 
    AVG(amount) AS promedio_pagado,
    STDDEV(amount) AS desviacion_estandar,
    VARIANCE(amount) AS varianza
FROM payment;

<img width="912" height="658" alt="Captura de pantalla 2026-10-10 a las 16 14 50" src="https://github.com/user-attachments/assets/b1836fdf-7c4f-4475-be7e-ee7748424ba0" />
    
¿Qué representa cada función?
AVG(amount): Calcula la media aritmética del monto total pagado por transacción.

STDDEV(amount): Mide qué tan dispersos están los pagos respecto al promedio (desviación estándar muestral).

VARIANCE(amount): Mide la variabilidad en unidades cuadradas (el cuadrado de la desviación estándar).

27.  ¿Qué películas se alquilan por encima del precio medio?

SELECT 
    title, 
    rental_rate
FROM film
WHERE rental_rate > (
    SELECT AVG(rental_rate) 
    FROM film
)
ORDER BY rental_rate DESC, title ASC;

<img width="1143" height="501" alt="Captura de pantalla 2026-10-10 a las 16 18 27" src="https://github.com/user-attachments/assets/9ce7a8d0-c381-4574-bada-74ccfc1314e6" />

Subconsulta (SELECT AVG(rental_rate) FROM film): Calcula primero la tarifa de alquiler promedio de toda la tabla film (en la base de datos Sakila/Pagila suele ser aproximadamente $2.98).

Filtro principal: Compara cada película y selecciona solo aquellas donde rental_rate sea mayor a ese promedio (por ejemplo, las de $4.99).

ORDER BY: Ordena los resultados de mayor a menor precio y luego alfabéticamente por título.

28.  Muestra el id de los actores que hayan participado en más de 40 películas.

Agrupo por actor_id en la tabla film_actor, contar el número de películas (COUNT(film_id)) y filtrar el grupo utilizando la cláusula HAVING

<img width="535" height="466" alt="Captura de pantalla 2026-10-10 a las 16 22 17" src="https://github.com/user-attachments/assets/adea3d61-f97b-4f40-835f-a22391dac61b" />

SELECT 
    actor_id, 
    COUNT(film_id) AS total_peliculas
FROM film_actor
GROUP BY actor_id
HAVING COUNT(film_id) > 40
ORDER BY total_peliculas DESC;

Si quiero saber el nombre también 

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

**107	GINA	DEGENERES	42
102	WALTER	TORN	41

29. Obtener todas las películas y, si están disponibles en el inventario, mostrar la cantidad disponible.

SELECT 
    f.film_id,
    f.title,
    COUNT(i.inventory_id) AS cantidad_disponible
FROM film f
LEFT JOIN inventory i ON f.film_id = i.film_id
GROUP BY f.film_id, f.title
ORDER BY cantidad_disponible DESC, f.title ASC;

<img width="654" height="730" alt="Captura de pantalla 2026-10-10 a las 16 27 20" src="https://github.com/user-attachments/assets/4b13bb09-2bcd-4606-9e27-9483e56b17d2" />

LEFT JOIN inventory: Garantiza que se muestren todas las películas de la tabla film, incluso si no tienen ningún registro o copia asociada en la tabla inventory.

COUNT(i.inventory_id): Cuenta únicamente las copias presentes en el inventario. Para las películas sin inventario, devolverá 0.

GROUP BY f.film_id, f.title: Agrupa el conteo por cada película individual.


Considerando las que están alquiladas fuera de tienda. Inventario físico vs. Disponible en tienda

<img width="892" height="731" alt="Captura de pantalla 2026-10-10 a las 16 29 12" src="https://github.com/user-attachments/assets/56ffa583-214d-4948-a839-1c8698dce260" />


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


30. Obtener los actores y el número de películas en las que ha actuado. Uno con Join o left join tabla actor y la tabla intermedia film_actor, agrupar por el ID del actor y aplicar la función COUNT()

SELECT 
    a.actor_id,
    a.first_name || ' ' || a.last_name AS nombre_completo,
    COUNT(fa.film_id) AS total_peliculas
FROM actor a
JOIN film_actor fa ON a.actor_id = fa.actor_id
GROUP BY a.actor_id, a.first_name, a.last_name
ORDER BY total_peliculas DESC;

<img width="755" height="684" alt="Captura de pantalla 2026-10-10 a las 16 33 37" src="https://github.com/user-attachments/assets/45cc037c-b097-4a9f-a142-106cb6aa687e" />



31. Obtener todas las películas y mostrar los actores que han actuado en ellas, incluso si algunas películas no tienen actores asociados.

Uso LEFT JOIN: Garantiza que se muestren todas las filas de la tabla de la izquierda (film), independientemente de si existen coincidencias en film_actor o actor.

COALESCE(): Si una película no tiene actores, reemplaza el valor nulo (NULL) resultante por el texto 'Sin actores asignados'.

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

<img width="1053" height="652" alt="Captura de pantalla 2026-10-10 a las 16 38 43" src="https://github.com/user-attachments/assets/c8e19ea5-ced5-4d20-ae3b-e8b257e0f40b" />


32. Obtener todos los actores y mostrar las películas en las que han actuado, incluso si algunos actores no han actuado en ninguna película.

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

LEFT JOIN: Garantiza que se traigan todos los registros de la tabla de la izquierda actor aunque no haya coincidencias en film_actor ni en film.

<img width="796" height="649" alt="Captura de pantalla 2026-10-10 a las 16 59 36" src="https://github.com/user-attachments/assets/d7021fc6-c166-4a0a-bc74-0b3c10b7b165" />

33. Obtener todas las películas que tenemos y todos los registros de  alquiler.
film: Contiene la información principal de la película (title, film_id)
inventory: Es la tabla intermedia que mapea las copias físicas de las películas (inventory_id)
rental: Guarda cada transacción de alquiler asociada a un inventory_id específico.

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

<img width="882" height="613" alt="Captura de pantalla 2026-10-10 a las 17 07 21" src="https://github.com/user-attachments/assets/1e9b78ec-17d5-4f02-afd6-9aeff2b0bddc" />



34. Encuentra los 5 clientes que más dinero se hayan gastado con nosotros.

Sumo la columna amount de la tabla payment, agrupar por cada cliente (customer_id) y relacionarlo con la tabla customer para obtener su nombre y apellido. Finalmente, ordenas de forma descendente y limitas el resultado a 5 con LIMIT 5
Se puede incluso hacer un redondedo de Sum con ROUND(SUM(p.amount)::numeric, 2) AS total_gastado

<img width="736" height="665" alt="Captura de pantalla 2026-10-10 a las 17 10 07" src="https://github.com/user-attachments/assets/07431a6f-b0c8-4f4a-bc49-840165e1e468" />

SELECT 
    c.customer_id,
    c.first_name || ' ' || c.last_name AS cliente,
    SUM(p.amount) AS total_gastado
FROM customer c
JOIN payment p ON c.customer_id = p.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name
ORDER BY total_gastado DESC
LIMIT 5;

    
35. Selecciona todos los actores cuyo primer nombre es 'Johnny'. Como los nombres de película y actor están en mayúsculas debo escribir exactamente como en las tablas sino opción es usar ILIKE * WHERE first_name ILIKE 'johnny';
    SELECT 
    actor_id,
    first_name,
    last_name,
    last_update
FROM actor
WHERE first_name = 'JOHNNY';

<img width="708" height="577" alt="Captura de pantalla 2026-10-10 a las 17 12 41" src="https://github.com/user-attachments/assets/0da9c845-2cf3-4447-a72c-bc8f0e3822ea" />


36. Renombra la columna “first_name” como Nombre y “last_name” como Apellido.

SELECT 
    actor_id,
    first_name AS "Nombre",
    last_name AS "Apellido",
    last_update
FROM actor;

<img width="674" height="696" alt="Captura de pantalla 2026-10-10 a las 17 15 00" src="https://github.com/user-attachments/assets/8db7022a-0d06-42bf-b158-e8145c1de33c" />

37. Encuentra el ID del actor más bajo y más alto en la tabla actor. Función de agregación con minimo y maximo.

Pero para ver el nombre de esos actores y su id conviene hacer una unión y renombrar creando una nueva columna con los tipos mencionados. 

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

<img width="1143" height="725" alt="Captura de pantalla 2026-10-11 a las 15 20 00" src="https://github.com/user-attachments/assets/d2e1f6d3-711a-49ff-9cbe-2dbcaf810048" />


        
38. Cuenta cuántos actores hay en la tabla “actor”.

<img width="517" height="216" alt="Captura de pantalla 2026-10-11 a las 15 21 10" src="https://github.com/user-attachments/assets/066b0f99-df8e-48c7-8408-af26333810ae" />
SELECT COUNT(*) FROM actor;

39. Selecciona todos los actores y ordénalos por apellido en orden ascendente.

SELECT 
    actor_id,
    first_name,
    last_name
FROM actor
ORDER BY last_name ASC;

<img width="616" height="520" alt="Captura de pantalla 2026-10-11 a las 15 25 07" src="https://github.com/user-attachments/assets/367d0e21-049c-42d7-bf5f-5868389a0c36" />

40. Selecciona las primeras 5 películas de la tabla “film”. Selecciono las columnas que necesito o quiero ver ejemplo título, id, descripción, release date y rental, agrego orden y limito a las 5 mencionadas.
41. SELECT 
    film_id,
    title,
    description,
    release_year,
    rental_rate
FROM film
ORDER BY film_id ASC
LIMIT 5;

<img width="1169" height="697" alt="Captura de pantalla 2026-10-11 a las 15 44 00" src="https://github.com/user-attachments/assets/c0d073a3-fee9-41f3-ac7d-728813eeb259" />



41. Agrupa los actores por su nombre y cuenta cuántos actores tienen el mismo nombre. ¿Cuál es el nombre más repetido? Agrupo por nombre de mayor a menor es decir ascendente y pongo en orden para ver los números más repetidos. Coinciden en 4 veces 
Los nombres más repetidos son Julia, Kenneth y Penelope.

<img width="793" height="689" alt="Captura de pantalla 2026-10-11 a las 15 47 57" src="https://github.com/user-attachments/assets/052db6b7-e4cb-4c2d-a0da-ef5e242f4240" />


SELECT 
    first_name AS nombre,
    COUNT(*) AS cantidad_actores
FROM actor
GROUP BY first_name
ORDER BY cantidad_actores DESC, nombre ASC;

42. Encuentra todos los alquileres y los nombres de los clientes que los realizaron.

Unimos Rental table con JOIN Customer c ON r.customer_id = c.customer_id: Conecta cada transacción de alquiler con los datos del cliente que lo efectuó. Añado los nombres 

c.first_name || ' ' || c.last_name: Concatena el nombre y el apellido del cliente en una única columna con el alias cliente.

Y ordeno por rental date ORDER BY r.rental_date DESC: Ordena el historial de alquileres desde el más reciente hasta el más antiguo.

SELECT 
    r.rental_id,
    r.rental_date,
    r.return_date,
    c.customer_id,
    c.first_name || ' ' || c.last_name AS cliente
FROM rental r
JOIN customer c ON r.customer_id = c.customer_id
ORDER BY r.rental_date DESC;

<img width="984" height="698" alt="Captura de pantalla 2026-10-11 a las 15 58 59" src="https://github.com/user-attachments/assets/17eaac06-351a-43a7-866b-fc4fd3ba7e56" />

   
43. Muestra todos los clientes y sus alquileres si existen, incluyendo aquellos que no tienen alquileres.
SELECT 
    c.customer_id,
    c.first_name || ' ' || c.last_name AS cliente,
    COUNT(r.rental_id) AS total_alquileres
FROM customer c
LEFT JOIN rental r ON c.customer_id = r.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name
ORDER BY total_alquileres ASC, c.customer_id ASC;

<img width="883" height="660" alt="Captura de pantalla 2026-10-11 a las 16 21 54" src="https://github.com/user-attachments/assets/49e7259a-7dad-4032-9ea3-1142da992c06" />

    
44. Realiza un CROSS JOIN entre las tablas film y category. ¿Aporta valor esta consulta? ¿Por qué? Deja después de la consulta la contestación.
   Un Cross Join combina cada fila de la primera tabla con cada fila de la segunda tabla, sin evaluar ninguna condición de relación relevante, son demasiados datos y filas. No veo que aporte valor porque no nos dice nada práctico gestinando los datos de esa manera. 
   
   <img width="664" height="598" alt="Captura de pantalla 2026-10-11 a las 16 24 38" src="https://github.com/user-attachments/assets/0276bab0-be75-4de9-9b9c-2de8860c2388" />


45.Encuentra los actores que han participado en películas de la categoría 'Action'. Seleccionamos actor id que combina tabla film actor con film category, nombre de los actores y la condición donde la categoría es solo películas de acción. 

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

<img width="638" height="699" alt="Captura de pantalla 2026-10-11 a las 16 26 50" src="https://github.com/user-attachments/assets/5d9475a4-00c6-44f1-92f4-7702121f93ca" />

   
46. Encuentra todos los actores que no han participado en películas.
Tenemos dos opciones para realizar esta query con Not exists o con un join combinando film actor y actor usando el ID. En ambos casos es igual a 0. Todos los actores en la base de datos han participado en alguna película.
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

<img width="944" height="718" alt="Captura de pantalla 2026-10-11 a las 16 30 42" src="https://github.com/user-attachments/assets/782d1cb0-b433-48ae-b8e7-b42220c40849" />



47.Selecciona el nombre de los actores y la cantidad de películas en las que han participado.
  <img width="659" height="772" alt="Captura de pantalla 2026-10-11 a las 16 34 09" src="https://github.com/user-attachments/assets/ba2c6de7-da8b-4bbf-8a65-5ec23bf1048d" />

SELECT 
    a.actor_id,
    a.first_name || ' ' || a.last_name AS actor,
    COUNT(fa.film_id) AS cantidad_peliculas
FROM actor a
LEFT JOIN film_actor fa ON a.actor_id = fa.actor_id
GROUP BY a.actor_id, a.first_name, a.last_name
ORDER BY cantidad_peliculas DESC, actor ASC;

Concatenar nombre y apellido y combino la tabla actor con film_actor por id, Agrupa el conteo por cada actor individual y ordeno columnas ascendente para actor y descendente para cantidad de películas.  

48.Crea una vista llamada “actor_num_peliculas” que muestre los nombres de los actores y el número de películas en las que han participado.
 <img width="752" height="556" alt="Captura de pantalla 2026-10-11 a las 16 59 25" src="https://github.com/user-attachments/assets/24d945b3-b792-4239-9b62-e8dd8e8cae9e" />

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

49. Calcula el número total de alquileres realizados por cada cliente.

Primero uno nombre y apellidos concatenados. LEFT JOIN rental r: Asegura la inclusión de todos los clientes de la base de datos, hayan alquilado o no y hacemos el Count de los mismos  creando columna total alquileres agrupando por id de película, alquileres y nombre y finalmente dar Orden descendente de muestra primero a los clientes más activos (con mayor volumen de alquileres).

SELECT 
    c.customer_id,
    c.first_name || ' ' || c.last_name AS cliente,
    c.email,
    COUNT(r.rental_id) AS total_alquileres
FROM customer c
LEFT JOIN rental r ON c.customer_id = r.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name, c.email
ORDER BY total_alquileres DESC, c.customer_id ASC;

<img width="931" height="728" alt="Captura de pantalla 2026-10-11 a las 17 29 23" src="https://github.com/user-attachments/assets/3262b562-0afb-471e-8a3a-2afb92700b12" />

    
50. Calcula la duración total de las películas en la categoría 'Action'.

Para calcular la duración total (en minutos) de todas las películas que pertenecen a la categoría 'Action', se realiza un JOIN entre las tablas film, film_category y category, sumando la columna length mediante la función de agregación SUM()

SELECT 
    c.name AS categoria,
    SUM(f.length) AS duracion_total_minutos,
    ROUND(SUM(f.length) / 60.0, 2) AS duracion_total_horas
FROM film f
JOIN film_category fc ON f.film_id = fc.film_id
JOIN category c ON fc.category_id = c.category_id
WHERE c.name = 'Action'
GROUP BY c.name;

<img width="671" height="447" alt="Captura de pantalla 2026-10-11 a las 17 30 40" src="https://github.com/user-attachments/assets/e2ae1536-5ba9-4de6-8b8f-8a349a8b8a38" />



53. Crea una tabla temporal llamada “cliente_rentas_temporal” para almacenar el total de alquileres por cliente.

<img width="766" height="530" alt="Captura de pantalla 2026-10-11 a las 17 31 56" src="https://github.com/user-attachments/assets/cf530fc9-a9ad-4fcf-97e2-9e5cfe642895" />


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
WHERE total_alquileres >= 30;


<img width="691" height="635" alt="Captura de pantalla 2026-10-11 a las 17 33 45" src="https://github.com/user-attachments/assets/892ea066-e3ff-4cc7-b3fe-b7a33b221db9" />

54.Crea una tabla temporal llamada “peliculas_alquiladas” que almacene las películas que han sido alquiladas al menos 10 veces.

   <img width="725" height="605" alt="Captura de pantalla 2026-10-11 a las 17 35 45" src="https://github.com/user-attachments/assets/289e6ce7-97ca-4e90-9af1-6c490d6ed70c" />

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

<img width="858" height="741" alt="Captura de pantalla 2026-10-11 a las 17 52 57" src="https://github.com/user-attachments/assets/27103475-b662-4eec-a3e3-b33976f1939f" />

55. Encuentra el título de las películas que han sido alquiladas por el cliente con el nombre ‘Tammy Sanders’ y que aún no se han devuelto. Ordenalos resultados alfabéticamente por título de película.

<img width="670" height="628" alt="Captura de pantalla 2026-10-11 a las 17 57 41" src="https://github.com/user-attachments/assets/1ef2f726-7ce4-4871-a977-fdcd3864f6e7" />

Uso de  nombre es el cliente mencionado, WHERE c.first_name = 'TAMMY' AND c.last_name = 'SANDERS' en mayúscula para evitar errores. 

AND r.return_date IS NULL: Identifica las películas que aún están prestadas y no han sido devueltas a la tienda.

JOIN inventory i con film f: Conecta la transacción de alquiler (rental) con el ítem en tienda (inventory) para llegar al título de la película (film).

ORDER BY f.title ASC: Ordena los títulos resultantes alfabéticamente de la A a la Z.
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

56. Encuentra los nombres de los actores que han actuado en al menos una película que pertenece a la categoría ‘Sci-Fi’. Ordena los resultados alfabéticamente por apellido.

Tengo que vincular las tablas actor, film_actor, film_category y category. Se utiliza DISTINCT para evitar duplicados en caso de que un actor haya participado en varias películas de ciencia ficción.

<img width="558" height="777" alt="Captura de pantalla 2026-10-11 a las 18 01 43" src="https://github.com/user-attachments/assets/4e93d656-3f08-46c0-942e-8bd4b5b3b18e" />


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

57. Encuentra el nombre y apellido de los actores que han actuado en películas que se alquilaron después de que la película ‘Spartacus Cheaper’ se alquilara por primera vez. Ordena los resultados alfabéticamente por apellido.

Para obtener los actores que han participado en películas alquiladas después de la primera fecha de alquiler de la película 'Spartacus Cheaper', se utiliza una subconsulta escalar para calcular dicha fecha mínima y luego se vinculan las tablas correspondientes (actor, film_actor, inventory, rental). Subconsulta (SELECT MIN(r_sub.rental_date) ...): Busca la fecha exacta y hora del primer alquiler registrado para la película 'Spartacus Cheaper'.

Agregamos filtro WHERE r.rental_date > (...): Selecciona únicamente las transacciones de alquiler de la base de datos que ocurrieron estrictamente después de esa primera fecha.

DISTINCT: Garantiza que cada actor aparezca una sola vez en el resultado, sin importar cuántas películas o alquileres cumplan la condición. Por último ordenamos primero alfabéticamente  apellido luego nombre ORDER BY a.last_name ASC, a.first_name ASC:

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

<img width="828" height="731" alt="Captura de pantalla 2026-10-11 a las 18 07 31" src="https://github.com/user-attachments/assets/1f9b556b-e479-4f2d-b1df-47d34d81b60c" />



58. Encuentra el nombre y apellido de los actores que no han actuado en ninguna película de la categoría ‘Music’. Podemos usar NOT EXISTS o NOT IN

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


<img width="629" height="759" alt="Captura de pantalla 2026-10-11 a las 18 08 59" src="https://github.com/user-attachments/assets/aa556fc8-ac41-47de-80dc-352f3ccee1c9" />


59. Encuentra el título de todas las películas que fueron alquiladas por más de 8 días.

Desde la tabla film unimos inventory y rental por film_id e inventory_id, donde el return date no sea Null ya que antes vimos que hay muchas películas que no sabemos si se han devuelto con NUll category. Y para resultado desde 8 días de alquiler usamos Having MAX INTERVAL 8 Días de la resta de return_date - rental_date

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


<img width="726" height="775" alt="Captura de pantalla 2026-10-11 a las 18 12 20" src="https://github.com/user-attachments/assets/02de9dd7-089f-4142-8b6f-508ad1d06862" />


61. Encuentra el título de todas las películas que son de la misma categoría que ‘Animation’.

62. Encuentra los nombres de las películas que tienen la misma duración que la película con el título ‘Dancing Fever’. Ordena los resultados alfabéticamente por título de película.

63. Encuentra los nombres de los clientes que han alquilado al menos 7 películas distintas. Ordena los resultados alfabéticamente por apellido.

64. Encuentra la cantidad total de películas alquiladas por categoría y muestra el nombre de la categoría junto con el recuento de alquileres.


65. Encuentra el número de películas por categoría estrenadas en 2006.

66. Obtén todas las combinaciones posibles de trabajadores con las tiendas que tenemos.

67. Encuentra la cantidad total de películas alquiladas por cada cliente y muestra el ID del cliente, su nombre y apellido junto con la cantidad de películas alquiladas.
