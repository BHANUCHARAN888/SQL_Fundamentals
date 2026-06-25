USE company_db;
-- PRACTICE CHALLENGE 8--
-- 1. Find employees earning more than average salary.
SELECT *
FROM employees
WHERE salary >
(
SELECT AVG(salary)
FROM employees
);
-- 2. Find employees earning less than average salary.
SELECT * 
FROM employees
WHERE salary <
(
SELECT AVG(salary)
FROM employees
);
-- 3. Find employee(s) with highest salary.
SELECT * 
FROM employees
WHERE salary = 
(
SELECT MAX(salary)
FROM employees
);
-- 4. Find employee(s) with lowest salary.
SELECT * 
FROM employees
WHERE salary = 
(
SELECT MIN(salary)
FROM employees
);
-- 5. Find departments whose average salary is above overall average salary.
SELECT 
dept_name,
AVG(salary) as AVG_SALARY
FROM employees e
INNER JOIN departments d 
ON d.dept_id = e.dept_id
GROUP BY dept_name
HAVING AVG(salary) > (
SELECT AVG(salary)
FROM employees
);
-- 
CREATE TABLE interns(
    name VARCHAR(50)
);
CREATE TABLE employees_names(
    name VARCHAR(50)
);
INSERT INTO interns
VALUES 
('BHANU'),
('GUNA'),
('AJAY'),
('POOJA'),
('CHANDU');
INSERT INTO employees_names
VALUES
('BHANU'),
('BASKAR'),
('CHANDU'),
('AJAY');
-- 6. Combine names using UNION.
SELECT name
FROM interns
UNION
SELECT name
FROM employees_names;
-- 7. Combine names using UNION ALL.
SELECT name
FROM interns
UNION ALL
SELECT name
FROM employees_names;
-- 8. Observe the difference when duplicate names exist.
