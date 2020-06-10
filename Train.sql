clear screen;

DROP TABLE USERS CASCADE CONSTRAINTS;
DROP TABLE PASSENGER CASCADE CONSTRAINTS;
DROP TABLE TRAINS CASCADE CONSTRAINTS;
DROP TABLE STATIONS CASCADE CONSTRAINTS;
DROP TABLE TICKET CASCADE CONSTRAINTS;
DROP TABLE STARTS CASCADE CONSTRAINTS;
DROP TABLE STOPS CASCADE CONSTRAINTS;
DROP TABLE BOOK CASCADE CONSTRAINTS;

CREATE TABLE USERS (
	user_id int, 
	user_name varchar2(20),
	gender varchar2(6),
	age int,
	email varchar2(20),
	password varchar2(20),
	phone varchar2(11),
	area varchar2(20),
	address varchar2(20),
        PRIMARY KEY(user_id)); 




CREATE TABLE TRAINS (
	train_no int, 
	--source varchar2(30),
	--destination varchar2(30),
	arrival_time timestamp,
	departure_time timestamp,
	train_name varchar2(20),
	seat_available int,
	PRIMARY KEY(train_no));
	
	
CREATE TABLE PASSENGER(
	Passenger_id int, 
	passenger_name varchar2(30), 
	phone varchar2(11),
	seat_no int,
	status varchar2(10),
	train_no int,
	PRIMARY KEY(Passenger_id),
	FOREIGN KEY(train_no) REFERENCES TRAINS(train_no) );


 
CREATE TABLE STATIONS(
	station_num int, 
	station_name varchar2(25),
	station_zone varchar2(5),
	train_no int,
	--arrival_time varchar2(30),
	PRIMARY KEY(station_num),
	FOREIGN KEY(train_no) REFERENCES TRAINS(train_no));
	
CREATE TABLE TICKET(
	ticket_id int, 
	train_no int,
	booked_user int,
	status varchar2(30),
	PRIMARY KEY(ticket_id),
	FOREIGN KEY(booked_user) REFERENCES USERS(user_id),
	FOREIGN KEY(train_no) REFERENCES TRAINS(train_no));
	
CREATE TABLE STARTS(
	train_no int,
	station_num int,
	PRIMARY KEY(train_no),
	FOREIGN KEY (train_no) REFERENCES TRAINS(train_no),
	FOREIGN KEY(station_num) REFERENCES STATIONS(station_num));


CREATE TABLE STOPS(
train_no int,
station_num int,
PRIMARY KEY(train_no),
FOREIGN KEY (train_no) REFERENCES TRAINS(train_no),
FOREIGN KEY(station_num) REFERENCES STATIONS(station_num));







commit;
 
