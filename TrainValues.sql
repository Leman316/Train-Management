


INSERT INTO USERS VALUES (1,'abc','male',22,'a@ff.com','123',011111111,'South','Mohammadpur');
INSERT INTO USERS VALUES (2,'xyz','female',44,'h@ff.com','456',011111111,'South','Dhanmondi');
INSERT INTO USERS VALUES (3,'sss','male',23,'a@gef.com','789',011111111,'South','Dhanmondi');
INSERT INTO USERS VALUES (4,'ccc','female',15,'as@mail.com','user',011111111,'South','Mohammadpur');
INSERT INTO USERS VALUES (5,'mop','male',36,'sa@ff.com','admin',011111111,'North','Gulshan');
INSERT INTO USERS VALUES (6,'lmn','male',25,'arc@ff.com','741',011111111,'South','Dhanmondi');
INSERT INTO USERS VALUES (7,'aaa','male',66,'n@ff.com','852',011111111,'North','Gulshan');
INSERT INTO USERS VALUES (8,'mmm','female',42,'bew@ff.com','963',011111111,'South','Mohammadpur');
INSERT INTO USERS VALUES (9,'asd','male',22,'a@gm.com','753',011111111,'North','Gulshan');
INSERT INTO USERS VALUES (10,'new','male',22,'w@a.com','951',011111111,'North','Banani');
INSERT INTO USERS VALUES (11,'rah','male',22,'mail@mail.159','user',011111111,'North','Banani');
INSERT INTO USERS VALUES (12,'pww','male',22,'a@f.com','357',011111111,'North','Banani');



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
INSERT INTO TICKET(ticket_id,train_no,booked_user,status) VALUES(2,2,7,'Accepted');
INSERT INTO TICKET(ticket_id,train_no,booked_user,status) VALUES(3,3,6,'Pending');
INSERT INTO TICKET(ticket_id,train_no,booked_user,status) VALUES(4,3,5,'Pending');
INSERT INTO TICKET(ticket_id,train_no,booked_user,status) VALUES(5,2,11,'Accepted');
INSERT INTO TICKET(ticket_id,train_no,booked_user,status) VALUES(6,2,12,'Pending');
INSERT INTO TICKET(ticket_id,train_no,booked_user,status) VALUES(7,3,4,'Accepted');
INSERT INTO TICKET(ticket_id,train_no,booked_user,status) VALUES(8,1,6,'Pending');
INSERT INTO TICKET(ticket_id,train_no,booked_user,status) VALUES(9,2,1,'Accepted');
INSERT INTO TICKET(ticket_id,train_no,booked_user,status) VALUES(10,3,6,'Pending');
INSERT INTO TICKET(ticket_id,train_no,booked_user,status) VALUES(11,1,7,'Accepted');
INSERT INTO TICKET(ticket_id,train_no,booked_user,status) VALUES(12,1,9,'Pending');
INSERT INTO TICKET(ticket_id,train_no,booked_user,status) VALUES(13,2,10,'Accepted');

INSERT INTO STATIONS(station_num,station_name,station_zone)VALUES (1,'Mohammadpur','South');
INSERT INTO STATIONS(station_num,station_name,station_zone)VALUES (2,'Gulshan','North');
INSERT INTO STATIONS(station_num,station_name,station_zone)VALUES (3,'Dhanmondi','South');
INSERT INTO STATIONS(station_num,station_name,station_zone)VALUES (4,'Mogbazar','North');
INSERT INTO STATIONS(station_num,station_name,station_zone)VALUES (5,'Banani','North');
INSERT INTO STATIONS(station_num,station_name,station_zone)VALUES (6,'Tejgaon','South');


INSERT INTO STARTS(train_no,station_num) VALUES (1,1);
INSERT INTO STARTS(train_no,station_num) VALUES (2,2);
INSERT INTO STARTS(train_no,station_num) VALUES (3,4);
INSERT INTO STARTS(train_no,station_num) VALUES (4,1);
INSERT INTO STARTS(train_no,station_num) VALUES (5,1);
INSERT INTO STARTS(train_no,station_num) VALUES (6,6);
INSERT INTO STARTS(train_no,station_num) VALUES (7,6);
INSERT INTO STARTS(train_no,station_num) VALUES (8,6);
INSERT INTO STARTS(train_no,station_num) VALUES (9,3);
INSERT INTO STARTS(train_no,station_num) VALUES (10,3);
INSERT INTO STARTS(train_no,station_num) VALUES (11,3);


INSERT INTO STOPS(train_no,station_num) VALUES (1,2);
INSERT INTO STOPS(train_no,station_num) VALUES (2,5);
INSERT INTO STOPS(train_no,station_num) VALUES (3,1);
INSERT INTO STOPS(train_no,station_num) VALUES (4,4);
INSERT INTO STOPS(train_no,station_num) VALUES (5,5);
INSERT INTO STOPS(train_no,station_num) VALUES (6,1);
INSERT INTO STOPS(train_no,station_num) VALUES (7,5);
INSERT INTO STOPS(train_no,station_num) VALUES (8,3);
INSERT INTO STOPS(train_no,station_num) VALUES (9,2);
INSERT INTO STOPS(train_no,station_num) VALUES (10,1);
INSERT INTO STOPS(train_no,station_num) VALUES (11,6);

commit;
 
