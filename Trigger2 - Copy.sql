SET SERVEROUTPUT ON;



declare
a number;
v varchar(20);

begin

select * into a,v from users where user_id=1;

END; 
/