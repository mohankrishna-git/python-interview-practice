USE employee_practice;

WITH RankedEmployees AS (
    SELECT
        emp_id,
        name,
        salary,
        DENSE_RANK() OVER (
            ORDER BY salary DESC
        ) AS salary_rank
    FROM employee
)
SELECT
    emp_id,
    name,
    salary
FROM RankedEmployees
WHERE salary_rank = 3;