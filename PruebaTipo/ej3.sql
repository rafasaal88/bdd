select localidades.nombre
from localidades
where localidades.numerohabitantes >
(
    select localidades.numerohabitantes as corte
    from localidades
    where localidades.idlocalidad =
    (
        select votantes.localidad as ciudad
        from votantes
        where
        votantes.fechanacimiento =
        (
            select min (filtrados)
            from
            (
                select votantes.fechanacimiento as filtrados
                from votantes
                where votantes.fechanacimiento !=
                (
                    select min(votantes.fechanacimiento) as minimo
                    from votantes
                )
            )
        )
    )
)
order by localidades.nombre ASC
;

