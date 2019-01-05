select * from 
(
  select consultas.VOTANTE, count(consultas.votante) as participaciones
  from consultas
  group by consultas.votante
)
order by participaciones desc;
