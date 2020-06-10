SET SERVEROUTPUT ON;

drop view view1;
drop view view2;
drop view view3;
drop view view4;
create view view1 as select starts.train_no ,stations.station_name from starts @site1 join stations @site1 on starts.station_num=stations.station_num;
create view view2 as select stops.train_no ,stations.station_name from stops @site1 join stations  @site1 on stops.station_num=stations.station_num;
create view view3 as select starts.train_no ,stations.station_name from starts @site2 join stations @site2 on starts.station_num=stations.station_num;
create view view4 as select stops.train_no ,stations.station_name from stops @site2 join stations  @site2 on stops.station_num=stations.station_num;
declare
train_no number;
S varchar2(20);
D varchar2(20);
cursor cur is select view1.train_no,view1.station_name as Source,view2.station_name as Destination
 from view1 join view2 on view1.train_no=view2.train_no  union select view3.train_no,view3.station_name as Source,view3.station_name as Destination
 from view3 join view4 on view4.train_no=view4.train_no order by train_no;

 begin
 open cur;
 DBMS_OUTPUT.PUT_LINE('Train No'||'      '||'Source'||'                 '||'Destination');
 loop
	fetch cur into train_no,S,D;
	exit when cur%NOTFOUND;
	DBMS_OUTPUT.PUT_LINE(TO_CHAR(train_no)||'              '||TO_CHAR(S)||'              '||TO_CHAR(D));
end loop;

 end;
 /
