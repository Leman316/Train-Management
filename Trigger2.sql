SET SERVEROUTPUT ON;

create or replace trigger userstatus
after insert or update or delete on users 
referencing old as o new as n
for each row 

declare

begin

dbms_output.put_line('          Id   Name  Email Address  ');

dbms_output.put_line(' OLD '  || :o.user_id ||'  ' || :o.user_name||'   ' || :o.email||'  ' ||:o.address);
dbms_output.put_line(' NEW '  || :n.user_id ||'  ' || :n.user_name||'   ' || :n.email||'  ' ||:n.address);

END; 
/