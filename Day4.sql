USE company_db;
SHOW TABLES;
DESC employees1;
-- select employees1
SELECT * FROM employees1;
-- insert some data
INSERT INTO employees1
VALUES
(102,"JACK","IT",42000),
(103,"OGGY","IT",45000);
-- without distinct
SELECT department FROM employees1;
-- with distinct
SELECT DISTINCT department FROM employees1;
-- order by
SELECT * FROM employees1
ORDER BY salary ASC;
SELECT * FROM employees1
ORDER BY salary DESC;
SELECT * FROM employees1
ORDER BY department ASC, salary DESC;
-- limit
SELECT * FROM employees1
ORDER BY salary ASC
LIMIT 3;
-- between
SELECT * FROM employees1
WHERE salary BETWEEN
40000 AND 50000;
-- in
SELECT * FROM employees1
WHERE department IN(
'DATA SCIENCE',
'MANAGEMENT'
);
SELECT * FROM employees1
WHERE emp_id IN (101,102,103);
-- not in
SELECT * FROM employees1
WHERE department NOT IN(
"DATA SCIENCE"
);
-- is null
SELECT * FROM employees1 
WHERE department IS NULL;
-- is not null
SELECT * FROM employees1
WHERE name IS NOT NULL;