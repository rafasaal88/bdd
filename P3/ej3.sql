select partidos.siglas
from partidos,
(
    select * from
    (
        select eventos_resultados.partido, count (eventos_resultados.partido) as corte
        from eventos_resultados, partidos
        where eventos_resultados.partido=partidos.idpartido
        group by eventos_resultados.partido
        )
        where corte >=
        (
            select max(numeroeventos) as maximo
            from
            (
                select eventos_resultados.partido, count (eventos_resultados.partido) as numeroeventos
                from eventos_resultados
                group by eventos_resultados.partido
            )
        )
)
where partidos.idpartido=partido
;
