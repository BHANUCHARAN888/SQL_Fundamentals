USE company_db;
-- PRACTICE CHALLENGE 7
-- 1. Show employee names and salary with alias salary_amount.
SELECT 
emp_name,
salary as salary_amount
FROM employees;
-- 2. Show employees with salary > 30000 AND dept_id = 1.
SELECT
emp_name
FROM employees
WHERE salary > 30000
AND dept_id = 1;
-- 3. Show employees with salary > 50000 OR dept_id = 2.
SELECT
emp_name
FROM employees
WHERE salary > 50000
OR dept_id = 2;
-- 4. Show employees NOT belonging to dept_id = 1.
SELECT *
FROM employees
WHERE NOT dept_id = 1;
-- 5. Show names starting with 'A'.
SELECT
emp_name
FROM employees
WHERE emp_name 
LIKE 'A%';
-- 6. Show names ending with 'n'.
SELECT
emp_name 
FROM employees
WHERE emp_name
LIKE '%N';
-- 7. Show names containing 'ar'.
SELECT
emp_name
FROM employees
WHERE emp_name
LIKE '%AR%';
-- 8. Sort employees by dept_id then salary descending
SELECT 
emp_name,
dept_id,
salary
FROM employees
ORDER BY dept_id, salary DESC;
-- 9. Show top 3 highest-paid employees.
SELECT *
FROM employees
ORDER BY salary DESC
LIMIT 3;
-- 10. Show the 2nd, 3rd and 4th highest-paid employees.
SELECT *
FROM employees
ORDER BY salary DESC
LIMIT 1,3;