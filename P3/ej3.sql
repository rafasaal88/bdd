Set Serveroutput On;
Declare

Apellidos Votantes.Nombrecompleto%Type;
Correo Votantes.Email%Type;
Begin

Select Votantes.Email, Substr(Votantes.Nombrecompleto,Instr(Votantes.Nombrecompleto, ' '), length(votantes.nombrecompleto))
Into Correo, Apellidos From Votantes Where Dni='30983712';

Dbms_Output.Put_Line('Pepe'||Apellidos);
End;
