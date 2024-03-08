<h2>Definición de tablas - Desafío evaluado</h2>
<p>Uso de pdAdmin4 para crear una base de datos importando archivos excel.csv que contiene 100 títulos de películas y otro con el reparto de cada una.</p>
<ol>
<li>Crear una base de datos llamada películas</li>
<img src='./img/requerimiento-1.png'>
<figcaption>*Para crear la base de datos llamada DE-Peliculas hice click derecho en la pestaña Databases> Create database. También es posible con Query Tool y en la ventana escribir "CREATE DATABASE DE-Peliculas"</figcaption>
<hr>
<li>Cargar ambos archivos a su tabla correspondiente.</li>
<p>En la tabla "peliculas" el id es el elemento que contiene a la primary key (pelicula_id). Como el programa no permite escribir "año" denominé la columna como "estreno" </p>
<img src='./img/create-table.png'>
<figcaption>* Al crear la primera tabla escribí "reparto" en vez de "Director" y a la columna id la cambié por pelicula_id, ya que el programa lo marcaba como si tratase de una palabra reservada </figcaption>
<img src="./img/requerimiento-2-tabla-peliculas.png">
<figcaption>*Los datos fueron importados adecuadamente desde el archivo peliculas.csv</figcaption>
<img src="./img/requerimiento-2-tabla-reparto.png">
<figcaption>Los datos fueron importados adecuadamente desde el archivo reparto.csv. Son 1050 filas en total</figcaption>
<hr>
<li>Obtener el ID de la película “Titanic”</li>
</ol>