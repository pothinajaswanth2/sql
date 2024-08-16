CREATE DATABASE sector;

use sector;

CREATE TABLE DEPT_1
( emp_id int,
name CHAR(255),
role CHAR(255)
);

INSERT INTO DEPT_1(emp_id, name, role) VALUES
(1,"A","ENGINEER"),
(2,"B","SALESMAN"),
(3,"C","MANAGER"),
(4,"D","SALESMAN"),
(5,"E","ENGINEER");

CREATE TABLE DEPT_2
( emp_id int,
name CHAR(255),
role CHAR(255)
);

INSERT INTO DEPT_2(emp_id, name, role) VALUES
(3,"C","MANAGER"),
(6,"F","MARKETING"),
(7,"G","SALESMAN");

SELECT * from DEPT_1
UNION
SELECT * from DEPT_2;

SELECT * from DEPT_1 WHERE role ='SALESMAN'
UNION
SELECT * from DEPT_2 WHERE role='SALESMAN';

SELECT DEPT_1. * from DEPT_1
INNER JOIN DEPT_2 USING (emp_id);

SELECT DEPT_1.* from DEPT_1
LEFT JOIN DEPT_2 using (emp_id)
WHERE DEPT_2.emp_id is NULL;
