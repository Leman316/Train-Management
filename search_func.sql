SET SERVEROUTPUT ON;
declare
  tic_id number;
  train_n number;
  user_id number;
  departure timestamp;
  
  
  cursor cur is select ticket.ticket_id,ticket.booked_user,ticket.train_no,trains.departure_time
				from ticket @site1 join trains @site1 on ticket.train_no=trains.train_no;
 cursor cur2 is select ticket.ticket_id,ticket.booked_user,ticket.train_no,trains.departure_time
				from ticket @site2 join trains @site2 on ticket.train_no=trains.train_no;
	begin
	
    open cur;
	open cur2;
	DBMS_OUTPUT.PUT_LINE('Ticket Id     User Id     Train No.      Departure ');
	loop
		fetch cur into tic_id,user_id,train_n,departure ;
		exit when cur%notfound;
		DBMS_OUTPUT.PUT_LINE(TO_CHAR(tic_id)||'              '||TO_CHAR(user_id)||'              '||TO_CHAR(train_n)||'          '||
		TO_CHAR(departure));
		fetch cur2 into tic_id,user_id,train_n,departure ;
		exit when cur%notfound;
		DBMS_OUTPUT.PUT_LINE(TO_CHAR(tic_id)||'              '||TO_CHAR(user_id)||'              '||TO_CHAR(train_n)||'          '||
		TO_CHAR(departure));
		end loop;
		
    
end ;
/
