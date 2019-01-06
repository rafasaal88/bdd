select consultas.votante, count(consultas.votante) as participaciones
from consultas
group by votante
order by participaciones desc;
