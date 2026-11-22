-- Day 1 — Question 1 / 3

-- Write an SQL query to display the name and salary 
-- of all employees from the employees table.

SELECT name, salary
FROM employees;

-- Day 1 — Question 2 / 3

-- Write an SQL query to display the name and 
-- salary of employees who work in the 'IT' department.

SELECT name, salary
FROM employees
WHERE department = 'IT';