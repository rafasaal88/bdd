set serveroutput on;
DECLARE
nombre votantes.nombrecompleto%type;
correo votantes.email%type;
BEGIN

select votantes.nombrecompleto, votantes.email into nombre, correo from votantes where 
dni='30983712';

DBMS_OUTPUT.PUT_LINE(nombre||': '||correo);
END;
