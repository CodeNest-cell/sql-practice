-- Day 2 — Question 1 / 3

-- Write a SQL query to:
-- 1. Display each department.
-- 2. Count the number of employees in each department.
-- 3. Name the count column employee_count.

SELECT department, COUNT(*) AS employee_count
FROM employees
GROUP BY department;

-- Day 2 — Question 2 / 3

-- Using the same employees table, write a SQL query to:
-- 1. Display each department.
-- 2. Calculate the average salary for each department.
-- 3. Name the calculated column average_salary.

SELECT department, AVG(salary) AS average_salary
FROM employees
GROUP BY department;

-- Day 2 — Question 3 / 3

-- Using the same employees table, write a SQL query to:
-- 1. Display each department.
-- 2. Calculate the total salary for each department.
-- 3. Name the calculated column total_salary.
-- 4. Sort the results by total salary from highest to lowest.

SELECT department, SUM(salary) AS total_salary
FROM employees
GROUP BY department
ORDER BY total_salary DESC;

-- Day 2 — Question 4

-- Using the same employees table, write a SQL query to:
-- 1. Display each department.
-- 2. Count the number of employees in each department.
-- 3. Name the calculated column employee_count.
-- 4. Show only departments with more than 2 employees.

SELECT department, COUNT(*) AS employee_count
FROM employees
GROUP BY department
HAVING employee_count > 2; 

-- Day 2 — Question 5

-- Using the same employees table, write a SQL query to:
-- 1. Display each department.
-- 2. Calculate the average salary for each department.
-- 3. Name the calculated column average_salary.
-- 4. Show only departments with an average salary greater than 60,000.
-- 5. Sort the results by average salary from highest to lowest.

SELECT department, AVG(salary) AS average_salary
FROM employees
GROUP BY department 
HAVING average_salary > 60000
ORDER BY average_salary DESC;

-- Day 2 — Question 6

-- Using the same employees table, write a SQL query to:
-- 1. Display each department.
-- 2. Count employees earning more than 60,000 in each department.
-- 3. Name the calculated column high_salary_count.
-- 4. Show only departments with at least 2 employees earning more than 60,000.
-- 5. Sort by high_salary_count from highest to lowest.

SELECT department, COUNT(*) AS high_salary_count
FROM employees
WHERE salary > 60000
GROUP BY department
HAVING high_salary_count >= 2
ORDER BY high_salary_count DESC;

-- Day 2 — Question 7

-- Using the same employees table, write a SQL query to:
-- 1. Display each department.
-- 2. Find the highest salary in each department.
-- 3. Name the calculated column highest_salary.
-- 4. Show only departments where the highest salary is greater than 70,000.
-- 5. Sort by highest_salary from highest to lowest.

SELECT department, MAX(salary) AS highest_salary
FROM employees
GROUP BY department
HAVING highest_salary > 70000
ORDER BY highest_salary DESC;

-- Day 2 — Question 8

Using the same employees table, write a SQL query to:
1. Display each department.
2. Calculate the lowest salary in each department.
3. Name the calculated column lowest_salary.
4. Show only departments with at least 2 employees.
5. Sort by lowest_salary from lowest to highest.

SELECT department, MIN(salary) AS lowest_salary
FROM employees
GROUP BY department
HAVING count(*) >= 2 
ORDER BY lowest_salary;

-- Day 2 — Question 9

-- Using the same employees table, write a SQL query to:
-- 1. Display each department.
-- 2. Calculate the total salary for employees earning 
-- at least 50,000 in each department.
-- 3. Name the calculated column total_salary.
-- 4. Show only departments where the total salary is greater than 100,000.
-- 5. Sort by total_salary from highest to lowest.

SELECT department, SUM(salary) AS total_salary
FROM employees
WHERE salary >= 50000
GROUP BY department
HAVING total_salary > 100000
ORDER BY total_salary DESC;

-- Day 2 — Question 9

-- Using the same employees table, write a SQL query to:
-- 1. Display each department.
-- 2. Calculate the average salary for employees earning more than 50,000.
-- 3. Name the calculated column average_salary.
-- 4. Show only departments with at least 2 employees earning more 
-- than 50,000.
-- 5. Sort by average_salary from highest to lowest.

SELECT department, AVG(salary) AS average_salary
FROM employees
WHERE salary > 50000
GROUP BY department
HAVING count(*) >= 2
ORDER BY average_salary DESC;