

INSERT INTO USERS VALUES (5,'mop','male',36,'sa@ff.com','admin',011111111,'North','Gulshan');
INSERT INTO USERS VALUES (7,'aaa','male',66,'n@ff.com','852',011111111,'North','Gulshan');
INSERT INTO USERS VALUES (9,'asd','male',22,'a@gm.com','753',011111111,'North','Gulshan');
INSERT INTO USERS VALUES (10,'new','male',22,'w@a.com','951',011111111,'North','Banani');
INSERT INTO USERS VALUES (11,'rah','male',22,'mail@mail.com','user',011111111,'North','Banani');
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

INSERT INTO TICKET(ticket_id,train_no,booked_user,status) VALUES(2,2,7,'Accepted');
INSERT INTO TICKET(ticket_id,train_no,booked_user,status) VALUES(4,3,5,'Pending');
INSERT INTO TICKET(ticket_id,train_no,booked_user,status) VALUES(11,1,7,'Accepted');
INSERT INTO TICKET(ticket_id,train_no,booked_user,status) VALUES(12,1,9,'Pending');
INSERT INTO TICKET(ticket_id,train_no,booked_user,status) VALUES(13,2,10,'Accepted');
INSERT INTO TICKET(ticket_id,train_no,booked_user,status) VALUES(14,2,11,'Accepted');
INSERT INTO TICKET(ticket_id,train_no,booked_user,status) VALUES(15,4,11,'Accepted');
INSERT INTO TICKET(ticket_id,train_no,booked_user,status) VALUES(16,3,12,'Accepted');


INSERT INTO STATIONS(station_num,station_name,station_zone)VALUES (1,'Mohammadpur','South');
INSERT INTO STATIONS(station_num,station_name,station_zone)VALUES (3,'Dhanmondi','South');
INSERT INTO STATIONS(station_num,station_name,station_zone)VALUES (6,'Tejgaon','South');



INSERT INTO STARTS(train_no,station_num) VALUES (1,1);
INSERT INTO STARTS(train_no,station_num) VALUES (4,1);
INSERT INTO STARTS(train_no,station_num) VALUES (5,1);
INSERT INTO STARTS(train_no,station_num) VALUES (6,6);
INSERT INTO STARTS(train_no,station_num) VALUES (7,6);
INSERT INTO STARTS(train_no,station_num) VALUES (8,6);
INSERT INTO STARTS(train_no,station_num) VALUES (9,3);
INSERT INTO STARTS(train_no,station_num) VALUES (10,3);
INSERT INTO STARTS(train_no,station_num) VALUES (11,3);




INSERT INTO STOPS(train_no,station_num) VALUES (3,1);
INSERT INTO STOPS(train_no,station_num) VALUES (8,3);
INSERT INTO STOPS(train_no,station_num) VALUES (11,6);


commit;

