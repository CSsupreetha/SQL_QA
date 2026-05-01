-- ================================================
-- DATA VALIDATION QUERIES (QA Focused)
-- ================================================

-- 1. Check NULL values
SELECT * FROM users
WHERE name IS NULL OR email IS NULL;

-- 2. Check duplicate emails
SELECT email, COUNT(*) AS count
FROM users
GROUP BY email
HAVING COUNT(*) > 1;

-- 3. Validate record count after insert
SELECT COUNT(*) AS total_records FROM users;

-- 4. Validate data after update
SELECT * FROM users WHERE id = 1;

-- 5. Validate delete operation
SELECT * FROM users WHERE id = 99;
-- Expected: No rows returned

-- 6. Check invalid salary values
SELECT * FROM employees
WHERE salary <= 0 OR salary IS NULL;

-- 7. Validate date format
SELECT * FROM orders
WHERE order_date > CURDATE();
-- Expected: No future dates

-- 8. Check referential integrity
SELECT e.name, e.dept_id
FROM employees e
LEFT JOIN departments d ON e.dept_id = d.dept_id
WHERE d.dept_id IS NULL;
-- Expected: No orphan records
