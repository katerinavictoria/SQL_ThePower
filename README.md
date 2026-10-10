
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

