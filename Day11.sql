USE company_db;
-- WINDOW FUNCTIONS
-- OVER() AVG FUNC WORKS AT ALL ROWS
SELECT
name,
salary,
avg(salary) OVER() AS avg_salary
FROM employees1;
-- ROW_NUMBER() ASIGNS A UNIQUE NUMBER
SELECT
name,
salary,
row_number() OVER(
order by salary DESC
) AS row_num
FROM employees1;
-- RANK() SKIPS NUMBERS AFTER TIES
SELECT
name,
salary,
rank() over(
order by salary desc
) as Rank_sal
from employees1;
-- DENSE_RANK() doesnt skip rank num
SELECT
name,
department,
salary,
dense_rank() over(
order by salary desc
) as Rank_sal
from employees1;
-- PARTITION BY (not globally)
SELECT
name,
department,
salary,
RANK() OVER(
PARTITION BY department
ORDER BY salary DESC
) AS dept_rank
FROM employees1;