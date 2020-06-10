

create or replace procedure passengerProc(id in  users.user_id%TYPE,
name in  users.user_name%TYPE , phon in users.phone%TYPE,seat in number,train in number)
is

begin

insert into passenger @site1(passenger_id,passenger_name,phone,seat_no,status,train_no)  VALUES (id,name,phon,seat,'Accepted',train);

update trains @site1 set seat_available=seat_available-1 where train_no=train;

insert into passenger @site2(passenger_id,passenger_name,phone,seat_no,status,train_no)  VALUES (id,name,phon,seat,'Accepted',train);

update trains @site2 set seat_available=seat_available-1 where train_no=train;
    
end passengerProc;
/
