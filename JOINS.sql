-- CREATE DATABASE Place;

-- USE place;

CREATE TABLE Project
(
ID int,
Emp_ID int,
NAME CHAR(255),
START_DATE date,
CLIENT_ID int
);

INSERT INTO Project( ID, Emp_ID, NAME, START_DATE, CLIENT_ID) VALUES
(1,1,"A","2021-04-21",3),
(2,2,"B","2021-03-12",1),
(3,3,"C","2021-01-16",5),
(4,4,"D","2021-04-27",2),
(5,5,"E","2021-05-01",4);



CREATE TABLE Employee
( ID int,
FIRST_NAME CHAR(255),
LAST_NAME CHAR(255),
AGE int,
EMAIL_ID CHAR(255),
Phone_NO INT,
CITY CHAR(255)
);

INSERT INTO Employee(ID, FIRST_NAME, LAST_NAME, AGE, EMAIL_ID, Phone_NO, CITY) VALUES
(1,"AMAN","PROTO", 32, "aman@gmail.com",898,"DELHI"),
(2,"YAGYA","NARAYAN", 44, "Yagaya@gmail.com",222,"palam"),
(3,"RAHUL","BD", 22, "rahul@gmail.com",444,"KOLKATA"),
(4,"JATIN","HERMIT", 31, "jatin@gmail.com",666,"RAIPUR"),
(5,"PK","PANDAY", 21, "pk@gmail.com",555,"JAIPUR");

CREATE TABLE Client
( ID int,
FIRST_NAME CHAR(255),
LAST_NAME CHAR(255),
AGE INT,
EMAIL_ID CHAR(255),
Phone_NO INT,
CITY CHAR(255),
Emp_ID int);

INSERT INTO Client (ID, FIRST_NAME, LAST_NAME, AGE, EMAIL_ID, Phone_NO,CITY, Emp_ID) VALUES
(1, "MAC","ROGERS", 47, "mac@gmail.com",333,"KOLKATA",3),
(2, "MAX","PORIOR", 27, "max@gmail.com",222,"KOLKATA",3),
(3, "PETER","JAIN", 24, "peter@gmail.com",111,"DELHI",1),
(4, "SUSHANI","AGGARWAL", 23, "SHUSHAN@gmail.com",454545,"HYDERABAD",5),
(5, "PRATAP","SINGH", 36, "pratap@gmail.com",787458,"MUMBAI",2);

SELECT e.ID, e.FIRST_NAME, e.LAST_NAME, p.ID, P.NAME from Employee as e
INNER JOIN Project as p ON e.ID = p.Emp_id;

SELECT e.ID, e.EMAIL_ID,e.Phone_NO, c.FIRST_NAME, c.LAST_NAME from Employee as e
INNER JOIN Client as c ON e.ID = c.Emp_ID WHERE e.CITY = 'JAIPUR' AND c.CITY = "HYDERBAD";

SELECT * FROM Client;

SELECT * from Employee as e
LEFT JOIN Project as p ON e.ID = p.Emp_ID;

SELECT p.ID, p.NAME, e.FIRST_NAME, e.LAST_NAME, e.EMAIL_ID from Employee as e
RIGHT JOIN Project as p ON e.ID = p.Emp_ID;

SELECT e.FIRST_NAME, e.LAST_NAME, p.ID, p.NAME from Employee as e
CROSS JOIN Project as p;

