select votantes.nombrecompleto
from votantes,
(
    select consultas.votante, count(consultas.votante)
    from consultas
    having count(consultas.votante) >
    (
        select avg(conteo)
        from
        (
            select count(consultas.votante) as conteo
            from consultas
            group by consultas.votante
        )
    )
    group by consultas.votante
) subconsulta
where votantes.dni=subconsulta.votante;
