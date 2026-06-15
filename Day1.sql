CREATE DATABASE student_db;
SHOW DATABASES;
USE student_db;

CREATE TABLE students(
student_id INT PRIMARY KEY,
name VARCHAR(50),
age INT,
city VARCHAR(50)
);
DESCRIBE students;

CREATE TABLE courses(
course_id INT PRIMARY KEY,
course_name VARCHAR(50),
duration FLOAT
);
DESCRIBE courses;

CREATE TABLE employees(
emp_id INT PRIMARY KEY,
emp_name VARCHAR(50),
salary FLOAT,
department CHAR(10)
);
DESCRIBE employees;

SHOW TABLES;

CREATE TABLE books(
si_no INT PRIMARY KEY,
name VARCHAR(40),
author VARCHAR(40)
);
DESCRIBE books;
CREATE TABLE test_table(
si_no INT PRIMARY KEY,
questions VARCHAR(50),
marks VARCHAR(50),
duration VARCHAR(50)
);
SHOW TABLES;
DROP TABLE test_table;
SHOW TABLES;