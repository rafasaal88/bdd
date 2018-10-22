select votantes.nombrecompleto, localidades.nombre from votantes, localidades where 
votantes.localidad=localidades.idlocalidad and localidades.numerohabitantes>300000;
