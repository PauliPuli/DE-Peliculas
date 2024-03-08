create table peliculas (id int primary key, pelicula varchar not null, estreno int not null, reparto varchar not null);

select * from peliculas;

ALTER TABLE peliculas RENAME COLUMN reparto to Director;
ALTER TABLE peliculas RENAME COLUMN id to pelicula_id;

create table reparto(reparto_id int PRIMARY KEY, actor varchar, FOREIGN KEY(reparto_id) REFERENCES peliculas(pelicula_id));

select * from reparto;