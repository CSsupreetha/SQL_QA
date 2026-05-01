-- ================================================
-- SUBQUERIES
-- ================================================

-- Employees earning more than average salary
SELECT name, salary
FROM employees
WHERE salary > (SELECT AVG(salary) FROM employees);

-- Employees in specific departments
SELECT name FROM employees
WHERE dept_id IN (
    SELECT dept_id FROM departments
    WHERE dept_name IN ('IT', 'HR')
);

-- Correlated subquery
SELECT e1.name, e1.salary, e1.department
FROM employees e1
WHERE e1.salary > (
    SELECT AVG(e2.salary)
    FROM employees e2
    WHERE e2.department = e1.department
);
