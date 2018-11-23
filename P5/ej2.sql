set serveroutput on;
DECLARE
num number :=0;
CURSOR c IS select votantes.nombrecompleto, localidades.nombre  from votantes, 
localidades where 
decode(votantes.LOCALIDAD, '1',9,'2',9,'3',9, 
votantes.localidad)=localidades.idlocalidad;

 

BEGIN FOR num_row IN c LOOP

dbms_output.put_line(num_row.nombrecompleto || ' es de ' ||num_row.nombre);

if num_row.nombre = 'Madrid' then
num := num +1;
end if;

END LOOP
;

dbms_output.put_line('Hay un total de ' || num || ' votantes de Madrid');
END;
