-- Day 3 — Question 1 / 3

-- Write a query that:
-- 1. Includes only employees earning more than $50,000.
-- 2. Shows department and their average salary as average_salary.
-- 3. Keeps only departments with at least 2 employees after filtering.
-- 4. Sorts by average_salary from highest to lowest.

SELECT department, AVG(salary) AS average_salary
FROM employees
WHERE salary > 50000
GROUP BY department
HAVING COUNT(*) >= 2
ORDER BY average_salary DESC;

-- Day 3 — Question 2 / 3 

-- Write a query using INNER JOIN to show each employee’s name, 
-- department, and office. Include only employees whose department 
-- appears in both tables.

SELECT employees.name, employees.department, departments.office
FROM employees
INNER JOIN departments
    ON employees.department = departments.department;

-- Day 3 — Question 3 / 3

-- Write a SQL query using INNER JOIN to display 
-- the name and office of employees who work in Melbourne.

SELECT employees.name, departments.office
FROM employees
INNER JOIN departments
    ON employees.department = departments.department
WHERE office = "Melbourne";