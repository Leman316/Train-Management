set verify off;
SET SERVEROUTPUT ON;
declare
  tic_id number;
  train_n number;
  user_name varchar2(20);
  source varchar2(20);
  destination varchar2(20);
  address_user varchar2(20);
  x varchar2(20):=&location;
  
  cursor cur is select users.user_name ,ticket.ticket_id,trains.train_no from trains @site1 join ticket @site1 on trains.train_no = ticket.train_no
   join users @site1 on users.user_id = ticket.booked_user where users.user_name in(select users.user_name from users @site1 join ticket @site1 on 
users.user_id= ticket.booked_user where users.address=x);

cursor cur2 is select users.user_name ,ticket.ticket_id,trains.train_no from trains @site2 join ticket @site2 on trains.train_no = ticket.train_no
   join users @site2 on users.user_id = ticket.booked_user where users.user_name in(select users.user_name from users @site2 join ticket @site2 on 
users.user_id= ticket.booked_user where users.address=x);

	begin
	
    open cur;
	open cur2;
	DBMS_OUTPUT.PUT_LINE('Name     Ticket Id     Train No.         ');
	if x='Gulshan' or x ='Banani' THEN
	loop
		fetch cur into user_name,tic_id,train_n;
		exit when cur%notfound;
		DBMS_OUTPUT.PUT_LINE(TO_CHAR(user_name)||'              '||TO_CHAR(tic_id)||'              '||TO_CHAR(train_n)||'          ');
		end loop;
		
	elsif x='Dhanmondi' or x ='Mohammadpur' THEN
	loop
		fetch cur2 into user_name,tic_id,train_n;
		exit when cur2%notfound;
		DBMS_OUTPUT.PUT_LINE(TO_CHAR(user_name)||'              '||TO_CHAR(tic_id)||'              '||TO_CHAR(train_n)||'          ');
		end loop;
		end if;
    
end ;

/
