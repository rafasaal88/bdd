select votantes.nombrecompleto, provincias.comunidad from votantes, localidades, provincias 
where votantes.localidad=localidades.idlocalidad and 
localidades.provincia=provincias.idprovincia and localidades.numerohabitantes>300000;
