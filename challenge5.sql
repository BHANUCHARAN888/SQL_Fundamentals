USE company_db;
DESC employees1;
-- PRACTICE CHALLENGE 5
SELECT * FROM employees1;
-- 1. Count total employees.
SELECT COUNT(*) FROM employees1;
-- 2. Count employees with non-NULL departments.
SELECT COUNT(*) 
FROM employees1 
WHERE 
department IS NOT NULL;
-- 3. Find total salary paid.
SELECT SUM(salary) FROM employees1;
-- 4. Find average salary.
SELECT AVG(salary) FROM employees1;
-- 5. Find highest salary. 
SELECT MAX(salary) FROM employees1;
-- 6. Find lowest salary.
SELECT MIN(salary) FROM employees1;
-- 7. Count employees in each department.
SELECT 
department, COUNT(*) 
FROM employees1
GROUP BY department;
-- 8. Find average salary of each department.
SELECT 
department, AVG(salary)
FROM employees1
GROUP BY department; 
-- 9. Find highest salary in each department.
SELECT 
department, MAX(salary)
FROM employees1
GROUP BY department;
-- 10. Show departments having more than 1 employee.
SELECT department
FROM employees1
GROUP BY department
HAVING COUNT(*)>1;
-- 11. Show departments whose average salary is greater than 40000.
SELECT department 
FROM employees1
GROUP BY department
HAVING AVG(salary)>40000;
-- Find the department with the highest average salary
SELECT 
department, AVG(salary) 
FROM employees1 
GROUP BY department
ORDER BY AVG(salary) DESC
LIMIT 1;