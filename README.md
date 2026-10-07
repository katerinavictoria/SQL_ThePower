<img width="936" height="591" alt="Captura de pantalla 2026-10-07 a las 15 36 00" src="https://github.com/user-attachments/assets/c80a0ebc-a898-46de-8b99-f97fd0d2cd91" />
###Shakila_films
1. Crea el esquema de la BBDD - View diagram in public folder Shakila right click
   
<img width="853" height="707" alt="Captura de pantalla 2026-10-06 a las 11 09 18" src="https://github.com/user-attachments/assets/c9012669-86be-4fe7-8770-e2cfc8e20225" />


2. Nombres de películas con clasificación por edades de 'R'
Todas las películas tienen la misma release_year 2006 por lo que no se puede ordenar más que como está en orden alfabético. 

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

4. Obtén las películas cuyo idioma coincide con el idioma original.
   <img width="1009" height="437" alt="Captura de pantalla 2026-10-07 a las 15 34 51" src="https://github.com/user-attachments/assets/e89b98e8-701b-4c41-b2f0-8e210580d537" />

6. Ordena las películas por duración de forma ascendente.
7. . Encuentra el nombre y apellido de los actores que tengan ‘Allen’ en su
apellido.
SELECT *
FROM "actor"
WHERE "last_name" = 'Allen';
Result None 
<img width="655" height="398" alt="Captura de pantalla 2026-10-06 a las 11 40 12" src="https://github.com/user-attachments/assets/55661b00-f638-4469-ad8c-4bc9ed7200d7" />

