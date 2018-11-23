set serveroutput on;
DECLARE
num number :=0;
CURSOR c IS select nombrecompleto from VOTANTES where dni like 
concat('%',localidad+1);
 

BEGIN FOR num_row IN c LOOP

dbms_output.put_line(num_row.nombrecompleto);

num := num +1;
END LOOP
;

dbms_output.put_line('Hay un total de ' || num || ' votantes');
END;
