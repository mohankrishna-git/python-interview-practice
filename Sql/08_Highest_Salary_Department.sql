USE employee_practice;

SELECT
    department,
    MAX(salary) AS highest_salary
FROM employee
GROUP BY department
ORDER BY highest_salary DESC;