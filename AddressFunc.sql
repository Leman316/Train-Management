set verify off
create or replace function addressCount(location in users.address%TYPE) 
return number 
is
total number:=0;

begin
if location = 'Mohammadpur' OR location='Dhanmondi' 
THEN
	select count(*) into total from users @site2 where address = location;
elsif location ='Gulshan' OR location='Banani'  THEN
	select count(*) into total from users @site1 where address = location;
	end if;
return total;

end;
/ 

set serveroutput on;
declare
location varchar2(20):=&location;
c number;
begin

c:= addressCount(location);
dbms_output.put_line('Total users at this location: ' || c);  


end;
/


  