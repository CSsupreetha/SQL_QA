-- ================================================
-- CASE STATEMENTS
-- ================================================

-- Categorize by salary
SELECT name, salary,
    CASE
        WHEN salary < 30000 THEN 'Entry Level'
        WHEN salary BETWEEN 30000 AND 60000 THEN 'Mid Level'
        WHEN salary > 60000 THEN 'Senior Level'
        ELSE 'Not Specified'
    END AS salary_category
FROM employees;

-- Grade based on marks
SELECT student_name, marks,
    CASE
        WHEN marks >= 90 THEN 'A+'
        WHEN marks >= 80 THEN 'A'
        WHEN marks >= 70 THEN 'B'
        WHEN marks >= 60 THEN 'C'
        ELSE 'Fail'
    END AS grade
FROM students;
