select partidos.nombrecompleto, count(consultas_datos.partido) from partidos, consultas_datos 
where consultas_datos.partido=partidos.idpartido and consultas_datos.respuesta='Si' and 
consultas_datos.certidumbre>'0,8' group by consultas_datos.partido, partidos.NOMBRECOMPLETO;
