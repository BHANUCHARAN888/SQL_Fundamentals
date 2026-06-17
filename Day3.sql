USE company_db;
CREATE TABLE employees1(
emp_id INT PRIMARY KEY,
name VARCHAR(50),
department VARCHAR(50),
salary INT
);
-- Insert opertation
INSERT INTO employees1
VALUES(101,"BHANU","DATA SCIENCE",20000);
INSERT INTO employees1
VALUES
(102,"CHARAN","UIUX",20000),
(103,"ANIL","CYBER SECURITY",15000),
(104,"AJAY","MANAGEMENT",10000);
INSERT INTO employees1
VALUES
(105,"SARIKA","DATA SCIENCE",30000),
(106,"TULASI","DATA SCIENCE",35000),
(107,"POOJA","ELECTRICAL",30000);
-- Select operation
SELECT * FROM employees1;
SELECT name,salary FROM employees1;
SELECT * FROM employees1 WHERE department="DATA SCIENCE";
SELECT * FROM employees1 WHERE salary>29000;
SELECT * FROM employees1 WHERE department="UIUX" OR department="ELECTRICAL";
SELECT * FROM employees1 WHERE department="UIUX" AND department="ELECTRICAL";
SELECT * FROM employees1 WHERE department="DATA SCIENCE" AND salary>25000;
SELECT * FROM employees1 WHERE name LIKE 'S%';
SELECT * FROM employees1 ORDER BY salary DESC;
SELECT * FROM employees1 WHERE department="ELECTRICAL";
-- update operation
UPDATE employees1 SET salary=50000 WHERE emp_id=101;
UPDATE employees1 SET salary=40000 WHERE emp_id=104;
UPDATE employees1 SET salary=salary+10000 WHERE emp_id=103;
SET SQL_SAFE_UPDATES = 0;
UPDATE employees1 SET salary=salary+10000 WHERE department="ELECTRICAL";
SET SQL_SAFE_UPDATES = 1;
-- delete operation
DELETE FROM employees1 WHERE emp_id=102;
DELETE FROM employees1 WHERE salary<30000;