Set Serveroutput On;
Declare
Nombre Votantes.Nombrecompleto%Type;
Correo Votantes.Email%Type;
Begin

Select Substr(Votantes.Nombrecompleto,1, Instr(Votantes.Nombrecompleto, ' ')), Votantes.Email 
Into Nombre, Correo From Votantes Where Dni='30983712';

Dbms_Output.Put_Line(Nombre||'con correo: '||Correo);
End;
