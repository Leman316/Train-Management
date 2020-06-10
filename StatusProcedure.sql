
create or replace procedure changeStatus(id in  ticket.ticket_id%TYPE,
stat in  ticket.status%TYPE )

is

begin

update ticket @site1 set status=stat where ticket_id=id;
update ticket @site2 set status=stat where ticket_id=id;
		
    
end changeStatus;
/
