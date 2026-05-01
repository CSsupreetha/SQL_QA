-- ================================================
-- WINDOW FUNCTIONS
-- ================================================

-- Rank employees by salary within department
SELECT name, department, salary,
    RANK() OVER(
        PARTITION BY department
        ORDER BY salary DESC
    ) AS dept_rank,
    DENSE_RANK() OVER(
        PARTITION BY department
        ORDER BY salary DESC
    ) AS dense_rank,
    ROW_NUMBER() OVER(
        ORDER BY salary DESC
    ) AS row_num
FROM employees;

-- Running total
SELECT name, salary,
    SUM(salary) OVER(ORDER BY name) AS running_total
FROM employees;
