-- JOINS & RELATIONSHIPS
USE company_db;
DROP TABLE IF EXISTS employees;
-- Primary key: unique, cannot be null, identifies each row
-- Foreign key: a column that references another table's primary key
-- Sample table creation
CREATE TABLE departments(
dept_id INT PRIMARY KEY,
dept_name VARCHAR(50)
);
CREATE TABLE employees(
emp_id INT PRIMARY KEY,
emp_name VARCHAR(50),
dept_id INT,
FOREIGN KEY(dept_id)
REFERENCES departments(dept_id)
);
ALTER TABLE employees
ADD salary int;
DESC departments;
DESC employees;
-- INSERTING DATA INTO TABLES
INSERT INTO departments VALUES
(1,'DATA SCIENCE'),
(2,'AI'),
(3,'CYBER SECURITY'),
(4,'HR'),
(5,'ROBOTICS'),
(6,'MANAGEMENT');
INSERT INTO employees VALUES
(101,'BHANU',1,50000),
(102,'CHARAN',2,60000),
(103,'ANIL',3,30000),
(104,'STEVE',4,40000),
(105,'DUSTIN',5,30000),
(106,'LUCAS',6,40000);
-- INNER JOIN
SELECT *
FROM employees e
INNER JOIN departments d
ON e.dept_id = d.dept_id;
--
SELECT 
e.emp_name,
e.salary,
d.dept_name
FROM employees e
INNER JOIN departments d
ON e.dept_id = d.dept_id;

-- LEFT JOIN
SELECT 
e.emp_name,
d.dept_name
FROM employees e
LEFT JOIN departments d
ON e.dept_id = d.dept_id;
-- RIGHT JOIN
SELECT 
e.emp_name,
d.dept_name
FROM employees e
RIGHT JOIN departments d
ON e.dept_id = d.dept_id;