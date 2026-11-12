USE employee_practice;

SELECT
    emp_id,
    COUNT(*) AS duplicate_count
FROM employee
GROUP BY emp_id
HAVING COUNT(*) > 1;


SELECT *
FROM employee
WHERE emp_id IN (
    SELECT emp_id
    FROM employee
    GROUP BY emp_id
    HAVING COUNT(*) > 1
)
ORDER BY emp_id;