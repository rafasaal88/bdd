select (localidades.nombre || ' va antes que ' ||ciudaddestino) as Ordenacion
from localidades,
(
    select localidades.nombre as ciudaddestino, (localidades.idlocalidad)-1 as destino
    from localidades
)
where localidades.idlocalidad=destino
;
