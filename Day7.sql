USE company_db;
-- Topic 1: As
SELECT AVG(salary) AS avg_salary
FROM employees;
-- Topic 2: Multiple Conditions
SELECT *
FROM employees
WHERE salary > 30000
AND dept_id = 1;
--
SELECT *
FROM employees
WHERE salary > 50000
OR dept_id = 2;
--
SELECT *
FROM employees
WHERE NOT dept_id = 1;
-- Topic 3: Wildcards
-- begin
SELECT *
FROM employees
WHERE emp_name LIKE 'M%';
-- end
SELECT *
FROM employees
WHERE emp_name LIKE '%n';
-- contains
SELECT *
FROM employees
WHERE emp_name LIKE '%ar%';
-- Topic 4: Sorting by multiple columns
SELECT *
FROM employees
ORDER BY dept_id ASC, salary DESC;
-- Topic 5: LIMIT with Offset
SELECT *
FROM employees
LIMIT 3;
-- skip first 2
SELECT *
FROM employees
LIMIT 2,3;