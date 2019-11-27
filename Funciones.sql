
--Funcion sobre suma de todos las cantidades de ventas
create or replace function sumaEnvios return number 
is 
--- elemento a retornar 
suma number ;

begin 
suma := 0;
select sum(total) into suma from cargo;
return suma;
end;
