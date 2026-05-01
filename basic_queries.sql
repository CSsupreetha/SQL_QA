-- ================================================
-- BASIC SELECT QUERIES
-- ================================================

-- Get all employees
SELECT * FROM employees;

-- Filter by condition
SELECT name, department, salary
FROM employees
WHERE salary > 50000
ORDER BY salary DESC;

-- Remove duplicates
SELECT DISTINCT department FROM employees;

-- Limit results
SELECT * FROM employees LIMIT 5;
