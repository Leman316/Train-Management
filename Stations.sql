create or replace function address(location in users.address%TYPE)
return varchar2
is 
snum number;
sname varchar2(20);
tnum number;
tdest varchar2(25);
result varchar2(1000);
cursor cur is select stations.station_num,stations.station_name,trains.train_no 
from stations @site1 join starts @site1 on stations.station_num=starts.station_num join trains @site1
on starts.train_no=trains.train_no where stations.station_name=location;

cursor cur2 is select station_name from stations @site1 where station_num = tnum;

cursor cur3 is select stations.station_num,stations.station_name,trains.train_no 
from stations @site2 join starts @site2 on stations.station_num=starts.station_num join trains @site2
on starts.train_no=trains.train_no where stations.station_name=location;

cursor cur4 is select station_name from stations @site2 where station_num = tnum;

begin
open cur;
open cur2;
if location = 'Mohammadpur' or location = 'Dhanmondi' THEN
loop

	fetch cur into snum,sname,tnum;
	exit when cur%notfound;
	result:= result||TO_CHAR(sname)||'     '||TO_CHAR(tnum)||'            ';
	select station_name into tdest from stations @site1 where station_num = tnum;
	result:=result||to_CHAR(tdest)||'
	';	
	
end loop;
open cur3;
else 
loop

	fetch cur3 into snum,sname,tnum;
	exit when cur3%notfound;
	result:= result||TO_CHAR(sname)||'     '||TO_CHAR(tnum)||'            ';
	select station_name into tdest from stations @site2 where station_num = tnum;
	result:=result||to_CHAR(tdest)||'
	';
	
	
	
end loop;
end if;
return result;


close cur;
close cur2;
close cur3;

end address;
/

set serveroutput on
declare
location varchar2(20):=&location;
c varchar2(1000);
begin

dbms_output.put_line('station_name     train_no          destination');
c:=address(location);
dbms_output.put_line(c);  


end;
/
