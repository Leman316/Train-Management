
set serveroutput on
Declare 
	t_id number:=&ticket_id; 
	status varchar2(20) :=&status; 
	
begin 
	changeStatus(t_id,status); 
	 
end; 
/
