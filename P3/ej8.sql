select consultas.votante, count(consultas.votante)
from consultas, (
    select votantes.dni
    from votantes
    where votantes.fechanacimiento != 
    (
        select min(votantes.fechanacimiento) as fn2
        from votantes
        where votantes.fechanacimiento != 
        (
            select min(votantes.fechanacimiento) as fn1
            from votantes
        )
    )
    )subconsulta

where consultas.votante=subconsulta.dni
group by consultas.votante
order by count(consultas.votante) desc;
