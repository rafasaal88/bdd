select partidos.nombrecompleto from partidos, consultas_datos where 
consultas_datos.partido=partidos.idpartido group by consultas_datos.partido, 
partidos.nombrecompleto having count (consultas_datos.partido)>10;
