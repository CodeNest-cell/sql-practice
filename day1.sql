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

-- Day 1 — Question 2 / 3

-- Write an SQL query to display the name, department, 
-- and salary of all employees whose salary is greater than 55,000.

SELECT name, department, salary
FROM employees
WHERE salary > 55000;

-- Day 1 - Question 4

-- Write an SQL query to display the name and salary of employees who:
-- - Work in the 'IT' department.
-- - Have a salary greater than 65000.

SELECT name, salary
FROM employees
WHERE department = 'IT' and salary > 65000;

-- Day 1 - Question 5

-- Write an SQL query to display the name, department, 
-- and salary of employees who work in either the 'Sales' department 
-- or the 'HR' department.

SELECT name, department, salary
FROM employees
WHERE department = 'Sales' OR department = 'HR';

-- Day 1 - Question 6

-- Write an SQL query to display the name, 
-- department, and salary of all employees, 
-- sorted by salary from highest to lowest.

SELECT name, department, salary
FROM employees
ORDER BY salary DESC;

-- Day 1 - Question 7

-- Write an SQL query to display the name and 
-- salary of the two highest-paid employees in the 'IT' department.

SELECT name, salary
FROM employees
WHERE department = 'IT'
ORDER BY salary DESC
LIMIT 2;

-- Day 1 - Question 8

-- Write an SQL query to display all unique department names from the employees table. 
-- Each department should appear only once.

SELECT DISTINCT department
FROM employees;

-- Day 1 - Question 9

-- Write an SQL query to display the name, department, 
-- and salary of employees whose salary is between 50,000 and 65,000, inclusive. 
-- Sort the results by salary in ascending order.

SELECT name, department, salary
FROM employees
WHERE salary BETWEEN 50000 AND 65000
ORDER BY salary;

-- Day 1 - Question 10
-- Write an SQL query to display the name, department, and salary 
-- of employees who work in either the 'Sales' or 'IT' department. 
-- Sort the results by salary from highest to lowest.

-- Requirements:
-- - Use the IN operator instead of OR.
-- - Use ORDER BY to sort the results.

SELECT name, department, salary
FROM employees
WHERE department IN ('Sales', 'IT')
ORDER BY salary DESC;