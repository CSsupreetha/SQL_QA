-- ================================================
-- AGGREGATE FUNCTIONS
-- ================================================

-- Count total employees
SELECT COUNT(*) AS total_employees FROM employees;

-- Total and average salary per department
SELECT department,
       COUNT(*) AS total_employees,
       SUM(salary) AS total_salary,
       ROUND(AVG(salary), 2) AS avg_salary,
       MAX(salary) AS highest_salary,
       MIN(salary) AS lowest_salary
FROM employees
GROUP BY department
HAVING COUNT(*) > 2
ORDER BY avg_salary DESC;
