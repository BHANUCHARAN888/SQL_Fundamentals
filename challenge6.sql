USE company_db;
desc employees;
desc departments;
insert into departments value
(7, null);
insert into employees value
(107,'Nancy',7,15000);
insert into departments values
(8,'CAD ENG.'),
(9,'UX designer');
SELECT * FROM employees;
SELECT * FROM departments;
-- 1. Show employee name and department name.
SELECT 
e.emp_name,
d.dept_name
FROM employees e
inner join departments d
on e.dept_id = d.dept_id;
-- 2. Show all employees including those without departments.
SELECT *
from employees e
left join departments d
on e.dept_id = d.dept_id;
--
select
e.emp_name,
d.dept_name
from employees e 
left join departments d 
on e.dept_id = d.dept_id;
-- 3. Show all departments including those without employees.
SELECT 
e.emp_name,
d.dept_name
from employees e 
right join departments d 
on e.dept_id = d.dept_id;
-- 4. Show employee name, salary and department name.
SELECT 
e.emp_name,
e.salary,
d.dept_name
from employees e 
inner join departments d 
on e.dept_id = d.dept_id;
-- 5. Show employees belonging to Data Science.
SELECT
e.emp_name
from employees e 
inner join departments d 
on e.dept_id = d.dept_id
where d.dept_name = "DATA SCIENCE";
-- 6. Show employees whose department is NULL.
SELECT
e.emp_name
from employees e 
left join departments d 
on e.dept_id = d.dept_id
where dept_name is null;
-- 7. Count employees in each department.
SELECT
d.dept_name,
count(e.emp_id)
from employees e 
right join departments d 
on e.dept_id = d.dept_id
group by d.dept_name;
-- 8. Average salary department-wise
SELECT 
d.dept_name,
avg(e.salary)
from employees e 
right join departments d 
on e.dept_id = d.dept_id
group by d.dept_name;
-- 9. Department with highest average salary
SELECT 
d.dept_name,
avg(e.salary) as avg_sal
from employees e 
right join departments d 
on e.dept_id = d.dept_id
group by d.dept_name
order by avg_sal desc
limit 1;
-- 10. Departments having more than 1 employee
select 
d.dept_name,
count(e.emp_id)
from employees e 
right join departments d 
on e.dept_id = d.dept_id
group by d.dept_name
having count(e.emp_id)>1;