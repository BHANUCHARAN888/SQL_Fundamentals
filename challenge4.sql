-- Day 4 practice problems
USE company_db;
-- 1. Show unique departments.
SELECT DISTINCT department
FROM employees1; 
-- 2. Show employees ordered by salary descending.
SELECT * FROM employees1 
ORDER BY salary DESC;
-- 3. Show top 2 highest paid employees.
SELECT * FROM employees1
ORDER BY salary DESC
LIMIT 2;
-- 4. Show employees with salary between 30000 and 60000.
SELECT * FROM employees1
WHERE salary BETWEEN 
30000 AND 60000;
-- 5. Show employees from DATA SCIENCE and ELECTRICAL departments using IN.
SELECT * FROM employees1
WHERE department IN(
"DATA SCIENCE","ELECTRICAL"
);
-- 6. Show employees not from DATA SCIENCE using NOT IN.
SELECT * FROM employees1
WHERE department NOT IN("DATA SCIENCE");
-- 7. Insert one row with NULL department.
SELECT * FROM employees1;
INSERT INTO employees1 VALUE(108,"TOM","AI",60000);
INSERT INTO employees1 VALUE(109,"DHANUSH",NULL,60000);
-- 8. Find employees whose department is NULL.
SELECT * FROM employees1
WHERE department IS NULL;
-- 9. Find employees whose department is NOT NULL.
SELECT * FROM employees1
WHERE department IS NOT NULL;
-- 10. Show top 3 highest salaries from DATA SCIENCE department.
SELECT * FROM employees1
WHERE department IN
("DATA SCIENCE") 
ORDER BY salary DESC 
LIMIT 3;