--exec dbms_utility.exec_ddl_statement@db_link('your statment'); 

INSERT INTO USERS VALUES (1,'abc','male',22,'a@ff.com','123',011111111,'South','Mohammadpur');
INSERT INTO USERS VALUES (2,'xyz','female',44,'h@ff.com','456',011111111,'South','Dhanmondi');
INSERT INTO USERS VALUES (3,'sss','male',23,'a@gef.com','789',011111111,'South','Dhanmondi');
INSERT INTO USERS VALUES (4,'ccc','female',15,'as@mail.com','user',011111111,'South','Mohammadpur');
INSERT INTO USERS VALUES (6,'lmn','male',25,'arc@ff.com','741',011111111,'South','Dhanmondi');
INSERT INTO USERS VALUES (8,'mmm','female',42,'bew@ff.com','963',011111111,'South','Mohammadpur');

INSERT INTO TRAINS(train_no,arrival_time,departure_time,seat_available) VALUES 
(1,TO_TIMESTAMP('2019/04/03 11:00:00', 'YYYY/MM/DD hh24:mi:ss'),
TO_TIMESTAMP('2019/04/03 11:40:00', 'YYYY/MM/DD hh24:mi:ss'),150);
INSERT INTO TRAINS(train_no,arrival_time,departure_time,seat_available) VALUES 
(2,TO_TIMESTAMP('2019/04/04 11:00:00', 'YYYY/MM/DD hh24:mi:ss'),
TO_TIMESTAMP('2019/04/04 11:40:00', 'YYYY/MM/DD hh24:mi:ss'),225);
INSERT INTO TRAINS(train_no,arrival_time,departure_time,seat_available) VALUES 
(3,TO_TIMESTAMP('2019/04/03 11:00:00', 'YYYY/MM/DD hh24:mi:ss'),
TO_TIMESTAMP('2019/04/03 11:40:00', 'YYYY/MM/DD hh24:mi:ss'),250);
INSERT INTO TRAINS(train_no,arrival_time,departure_time,seat_available) VALUES 
(4,TO_TIMESTAMP('2019/04/03 11:00:00', 'YYYY/MM/DD hh24:mi:ss'),
TO_TIMESTAMP('2019/04/03 11:40:00', 'YYYY/MM/DD hh24:mi:ss'),200);
INSERT INTO TRAINS(train_no,arrival_time,departure_time,seat_available) VALUES 
(5,TO_TIMESTAMP('2019/04/03 11:00:00', 'YYYY/MM/DD hh24:mi:ss'),
TO_TIMESTAMP('2019/04/03 11:40:00', 'YYYY/MM/DD hh24:mi:ss'),150);
INSERT INTO TRAINS(train_no,arrival_time,departure_time,seat_available) VALUES 
(6,TO_TIMESTAMP('2019/04/03 11:00:00', 'YYYY/MM/DD hh24:mi:ss'),
TO_TIMESTAMP('2019/04/03 11:40:00', 'YYYY/MM/DD hh24:mi:ss'),150);
INSERT INTO TRAINS(train_no,arrival_time,departure_time,seat_available) VALUES 
(7,TO_TIMESTAMP('2019/04/03 11:00:00', 'YYYY/MM/DD hh24:mi:ss'),
TO_TIMESTAMP('2019/04/03 11:40:00', 'YYYY/MM/DD hh24:mi:ss'),225);
INSERT INTO TRAINS(train_no,arrival_time,departure_time,seat_available) VALUES 
(8,TO_TIMESTAMP('2019/04/03 11:00:00', 'YYYY/MM/DD hh24:mi:ss'),
TO_TIMESTAMP('2019/04/03 11:40:00', 'YYYY/MM/DD hh24:mi:ss'),300);
INSERT INTO TRAINS(train_no,arrival_time,departure_time,seat_available) VALUES 
(9,TO_TIMESTAMP('2019/04/03 11:00:00', 'YYYY/MM/DD hh24:mi:ss'),
TO_TIMESTAMP('2019/04/03 11:40:00', 'YYYY/MM/DD hh24:mi:ss'),300);
INSERT INTO TRAINS(train_no,arrival_time,departure_time,seat_available) VALUES 
(10,TO_TIMESTAMP('2019/04/03 11:00:00', 'YYYY/MM/DD hh24:mi:ss'),
TO_TIMESTAMP('2019/04/03 11:40:00', 'YYYY/MM/DD hh24:mi:ss'),150);
INSERT INTO TRAINS(train_no,arrival_time,departure_time,seat_available) VALUES 
(11,TO_TIMESTAMP('2019/04/03 11:00:00', 'YYYY/MM/DD hh24:mi:ss'),
TO_TIMESTAMP('2019/04/03 11:40:00', 'YYYY/MM/DD hh24:mi:ss'),150);

INSERT INTO TICKET(ticket_id,train_no,booked_user,status) VALUES(1,1,2,'Pending');
INSERT INTO TICKET(ticket_id,train_no,booked_user,status) VALUES(3,3,6,'Pending');
INSERT INTO TICKET(ticket_id,train_no,booked_user,status) VALUES(7,3,4,'Accepted');
INSERT INTO TICKET(ticket_id,train_no,booked_user,status) VALUES(8,1,6,'Pending');
INSERT INTO TICKET(ticket_id,train_no,booked_user,status) VALUES(9,2,1,'Accepted');
INSERT INTO TICKET(ticket_id,train_no,booked_user,status) VALUES(10,3,6,'Pending');



INSERT INTO STATIONS(station_num,station_name,station_zone)VALUES (2,'Gulshan','North');
INSERT INTO STATIONS(station_num,station_name,station_zone)VALUES (4,'Mogbazar','North');
INSERT INTO STATIONS(station_num,station_name,station_zone)VALUES (5,'Banani','North');




INSERT INTO STARTS(train_no,station_num) VALUES (2,2);
INSERT INTO STARTS(train_no,station_num) VALUES (3,4);


INSERT INTO STOPS(train_no,station_num) VALUES (1,2);
INSERT INTO STOPS(train_no,station_num) VALUES (2,5);
INSERT INTO STOPS(train_no,station_num) VALUES (4,4);
INSERT INTO STOPS(train_no,station_num) VALUES (5,5);
INSERT INTO STOPS(train_no,station_num) VALUES (7,5);
INSERT INTO STOPS(train_no,station_num) VALUES (9,2);

commit;

