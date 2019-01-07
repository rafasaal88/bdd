select localidades.nombre, localidades.numerohabitantes
from localidades
where localidades.idlocalidad =
(
    select votantes.localidad
    from votantes
    where votantes.fechanacimiento =
    (
        select max(votantes.fechanacimiento) as joven
        from votantes
    )
)
;
