SET SERVEROUTPUT ON;

create or replace trigger ticketstatus
after insert or update on ticket 
referencing old as o new as n
for each row 

declare

oldd varchar2(20);
neww varchar2(20);

begin

dbms_output.put_line('For user :   '  || :o.booked_user ||',   Old Status: ' || :o.status||',  New Status: ' || :n.status);


END; 
/ 

create or replace trigger ticketstatus1
after insert or update on ticket @site1
referencing old as o new as n
for each row 

declare

oldd varchar2(20);
neww varchar2(20);

begin

dbms_output.put_line('For user :   '  || :o.booked_user ||',   Old Status: ' || :o.status||',  New Status: ' || :n.status);


END; 
/ 

create or replace trigger ticketstatus2
after insert or update on ticket @site2
referencing old as o new as n
for each row 

declare

oldd varchar2(20);
neww varchar2(20);

begin

dbms_output.put_line('For user :   '  || :o.booked_user ||',   Old Status: ' || :o.status||',  New Status: ' || :n.status);


END; 
/ 