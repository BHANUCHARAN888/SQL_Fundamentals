USE company_db;
-- CASE STATEMENTS
-- Example 1: Salary Category
SELECT
name,
salary,
CASE
WHEN salary >= 60000 THEN 'EXCELLENT'
WHEN salary >= 40000 THEN 'GOOD'
WHEN salary >= 25000 THEN 'AVERAGE'
ELSE 'NEED IMPROVEMENT'
END AS salary_grade
FROM employees1;
-- Example 2: Department Codes
SELECT
name,
department,
CASE
WHEN department = 'DATA SCIENCE' THEN 'DS'
WHEN department = 'ELECTRICAL' THEN 'EE'
WHEN department = 'UIUX' THEN 'UX'
ELSE 'OTHERS'
END AS dept_code
FROM employees1;