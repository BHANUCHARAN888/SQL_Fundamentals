USE company_db;
-- 1 STRING FUNCTIONS
-- Upper() 
SELECT upper(name)
FROM employees1;
-- Lower()
SELECT lower(name)
FROM employees1;
-- Length()
SELECT name,
length(name) 
FROM employees1;
-- Concat()
SELECT 
concat(name,' works in ',department)
FROM employees1;
-- Substring()
SELECT
substring(name,1,3)
FROM employees1;
-- 2 NUMERIC FUNCTIONS
-- Round()
SELECT 
round(avg(salary),2) as avg_sal
FROM employees1;
-- Ceil() rounds upward
SELECT
ceil(399.2);
-- Floor() rounds downward
SELECT
floor(399.9);
-- 3 DATE FUNCTIONS
-- Current date
SELECT curdate();
-- Current date & time
SELECT now();
-- Difference btw dates
SELECT datediff(
'2026-06-26',
'2026-06-20'
) AS DATEDIFF;