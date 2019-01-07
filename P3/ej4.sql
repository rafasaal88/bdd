select votantes.dni
from votantes
where votantes.fechanacimiento =
(
    select min(filtrado) as segundo
    from
    (
        select votantes.fechanacimiento as filtrado
        from votantes
        where votantes.fechanacimiento !=
        (
            select min(votantes.fechanacimiento) as minimo
            from votantes
        )
    )
);
