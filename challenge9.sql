-- Practice Challenge 9
USE company_db;
-- 1. Show employee name, salary and overall average salary using OVER().
SELECT
name,
salary,
AVG(salary) over() as avg_sal
FROM employees1;
-- 2. Assign ROW_NUMBER() based on salary descending.
SELECT 
name,
salary,
row_number() over(
order by salary desc
) as row_num
from employees1;
-- 3. Assign RANK() based on salary descending.
SELECT
name,
salary,
rank() over(
order by salary desc
) as rank_sal
from employees1;
-- 4. Assign DENSE_RANK() based on salary descending.
SELECT 
name,
salary,
dense_rank() OVER(
order by salary desc
) as dense_rank_sal
from employees1;
-- 5. Rank employees inside each department using PARTITION BY.
SELECT 
name,
salary,
department,
rank() over(
partition by department
order by salary desc
) as rank_sal
from employees1;
-- 6. Show the highest-paid employee in each department using RANK().
SELECT *
FROM(
SELECT name, salary, department,
rank() over(
partition by department
order by salary desc
) as rank_sal
from employees1
) as rank_emp
where rank_sal = 1;