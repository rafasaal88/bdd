select consultas.votante, count(consultas.votante)
from consultas
having count(consultas.votante) >
    (
    select avg(mitad)
    from (
        select count(consultas.votante) as mitad
        from consultas
        group by consultas.votante
        )
    )
group by consultas.votante
order by count(consultas.votante) desc;
