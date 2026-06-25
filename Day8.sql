USE company_db;
-- Topic 1
SELECT AVG(salary)
FROM employees;
--
SELECT *
FROM employees
WHERE salary > 45000;
--
SELECT *
FROM employees
WHERE salary >
(
    SELECT AVG(salary)
    FROM employees
);
-- Topic 2: Single Value Subquery
SELECT *
FROM employees
WHERE salary =
(
    SELECT MAX(salary)
    FROM employees
);
-- Topic 3: IN with Subquery
SELECT *
FROM employees
WHERE dept_id IN
(
    SELECT dept_id
    FROM departments
    WHERE dept_name = 'AI'
);
-- Topic 4: UNION (REMOVE DUPLICATES)
SELECT emp_name FROM employees
UNION
SELECT name FROM employees1;
-- Topic 5: UNION ALL (KEEP DUPLICATES)
SELECT emp_name FROM employees
UNION ALL
SELECT name FROM employees1;
-- Topic 6: 
-- in union 1cols_table1 + 1cols_table2 (valid)
-- multiple cols t1 + multiple cols t2 (invalid)