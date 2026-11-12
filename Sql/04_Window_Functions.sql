USE employee_practice;

SELECT emp_id, name, salary, salary_rank
FROM (
    SELECT
        emp_id,
        name,
        salary,
        DENSE_RANK() OVER (
            ORDER BY salary DESC
        ) AS salary_rank
    FROM employee
) ranked_employees
WHERE salary_rank = 3;