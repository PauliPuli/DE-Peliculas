--2.Cargar ambos archivos a su tabla correspondiente.
create table peliculas (id int primary key, pelicula varchar not null, estreno int not null, reparto varchar not null);

select * from peliculas;

ALTER TABLE peliculas RENAME COLUMN reparto to Director;
ALTER TABLE peliculas RENAME COLUMN id to pelicula_id;

create table reparto(reparto_id int PRIMARY KEY, actor varchar, FOREIGN KEY(reparto_id) REFERENCES peliculas(pelicula_id));

select * from reparto;

--3. Obtener el ID de la película “Titanic”
select pelicula_id, pelicula from peliculas where pelicula='Titanic';

--4. Listar a todos los actores que aparecen en la película "Titanic".
--Modo 1
select pelicula, actor from peliculas full join 
reparto on peliculas.pelicula_id=reparto.reparto_id where pelicula='Titanic'; 
--Modo 2
SELECT actor FROM reparto FULL JOIN peliculas ON reparto.reparto_id = peliculas.pelicula_id
WHERE peliculas.pelicula = 'Titanic';


--5. Consultar en cuántas películas del top 100 participa Harrison Ford
--modo 1:
select pelicula from peliculas right join reparto 
on peliculas.pelicula_id=reparto.reparto_id where reparto.actor='Harrison Ford';

--Modo 2:
select COUNT(pelicula) from peliculas right join reparto 
on peliculas.pelicula_id=reparto.reparto_id where reparto.actor='Harrison Ford';


--6.Indicar las películas estrenadas entre los años 1990 y 1999 ordenadas por título de manera ascendente
select pelicula, estreno from peliculas where peliculas.estreno between 1990 and  1999 order by pelicula ;

--7.Hacer una consulta SQL que muestre los títulos con su longitud, la longitud debe ser nombrado para la consulta como “longitud_titulo”.
select length(pelicula),pelicula from peliculas order by length(pelicula);

--8.Consultar cual es la longitud más grande entre todos los títulos de las películas
select length(pelicula),pelicula from peliculas order by length(pelicula)desc limit 1;

