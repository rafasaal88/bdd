select votantes.nombrecompleto, votantes.fechanacimiento
from votantes
where votantes.fechanacimiento >
(
    select partidos.fechacreacion
    from partidos
    where partidos.nombrecompleto like 'Partido Popular'
)
order by votantes.fechanacimiento DESC;
