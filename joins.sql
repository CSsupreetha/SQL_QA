-- ================================================
-- JOINS
-- ================================================

-- INNER JOIN - only matching rows
SELECT e.name, e.salary, d.dept_name, d.location
FROM employees e
INNER JOIN departments d ON e.dept_id = d.dept_id;

-- LEFT JOIN - all employees even without department
SELECT e.name, d.dept_name
FROM employees e
LEFT JOIN departments d ON e.dept_id = d.dept_id;

-- Join 3 tables
SELECT e.name, d.dept_name, l.city
FROM employees e
INNER JOIN departments d ON e.dept_id = d.dept_id
INNER JOIN locations l ON d.location_id = l.location_id;
