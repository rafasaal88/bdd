select votantes.nombrecompleto, localidades.nombre  from votantes, localidades where 
decode(votantes.LOCALIDAD, '1',9,'2',9,'3',9, votantes.localidad)=localidades.idlocalidad;
