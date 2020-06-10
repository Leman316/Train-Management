SET SERVEROUTPUT ON;
 create or replace function Login_func(email in users.email%type,password in users.password%type)
	return varchar2
	is
	
	
   user_id number;
   user_name varchar2(20);
   email2 varchar2(20);
   password2 varchar2(20);
   msg varchar2(30);
   c number:=0;
  	cursor cur is
	select user_id, user_name,email,password from USERS @site1;
	cursor cur2 is
	select user_id, user_name,email,password from USERS @site2;
	begin
    open cur;
    loop
		fetch cur into user_id, user_name,email2,password2;
		exit when cur%notfound;
    	
   		if ((email2 = email) AND (password2 = password) )
            		then
               			msg:='successful login  ' ;
						
               			exit;
					--else  msg:='UNsuccessful login  ' ;
               			
					
    	end if;  
	
	end loop;
	open cur2;
	loop
	fetch cur2 into user_id, user_name,email2,password2;
		exit when cur2%notfound;
    	
   		if ((email2 = email) AND (password2 = password) )
            		then
               			msg:='successful login  ' ;
						
               			exit;
					--else  msg:='UNsuccessful login  ' ;
               			
					
    	end if;  
	end loop;
	return msg;
	close cur;	
	close cur2;
	
    --commit;
end Login_func;
/

set serveroutput on;

declare
c varchar2(50);
a varchar2(50);
email varchar2(20):=&email;
pass varchar2(15):=&pass;
begin

c:=Login_func(email,pass);
DBMS_OUTPUT.PUT_LINE(c);


end;
/
-- Select Login_func('a@gm.com','753') from users;
