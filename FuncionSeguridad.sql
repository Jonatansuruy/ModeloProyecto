--Dentro d e WorkSpace creamos una funcion donde estara la alojada la  seguiridad
--de la app cuando se creen usuarios
--si al crear un usuario le colocamos un estado 1 indicara que este
--esta activo por lo que nos dejara  ingresar a ella


FUNCTION AUTENTIC_BD(p_username IN VARCHAR2,p_password IN VARCHAR2)
RETURN BOOLEAN AS FOUND NUMBER :=0;
BEGIN 
SELECT 1 INTO FOUND FROM USER_PROFILE
WHERE UPPER(USER_NAMEPROF)=UPPER(p_username)
and upper(PASSWORD)=upper(p_password)
and ACTIVADO=1;
return true;
exception
when no_data_found then 
return false;
end;