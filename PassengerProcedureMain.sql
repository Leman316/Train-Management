
set serveroutput on
Declare 
	email2 varchar2(50):=&email;
	pass2 varchar2(50):=&pass;
	id number ; 
	phone varchar2(11);
	name varchar2(50);
	seat number;
	train number;
	
begin 
	select user_id,user_name,phone into id,name,phone from users @site1 where email=email2 ;
	seat :=&seat;
  	  train :=&train_no;
	passengerProc(id,name,phone,seat,train);
	 
end; 
/
--'n@ff.com'  '852'

