select consultas_datos.partido, count(consultas_datos.partido) as conteo from consultas_datos 
group by consultas_datos.partido;
