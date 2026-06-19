USE company_db;
-- count()
SELECT COUNT(*)
FROM employees1;
SELECT COUNT(department) 
FROM employees1;
-- sum()
SELECT SUM(salary) 
FROM employees1; 
-- avg()
SELECT AVG(salary) 
FROM employees1;
-- min()
SELECT MIN(salary) 
FROM employees1;
-- max()
SELECT MAX(salary) 
FROM employees1;
-- group()
SELECT department,COUNT(*) 
FROM employees1 
GROUP BY department;
--
SELECT department, 
AVG(salary) 
FROM employees1
GROUP BY department;
-- having
SELECT department,
COUNT(*)
FROM employees1
GROUP BY department
HAVING COUNT(*) > 1;
--
SELECT department,
AVG(salary)
FROM employees1
GROUP BY department
HAVING AVG(salary) > 40000;