USE employee_practice;

SELECT MAX(salary) AS third_highest_salary
FROM employee
WHERE salary < (
    SELECT MAX(salary)
    FROM employee
    WHERE salary < (
        SELECT MAX(salary)
        FROM employee
    )
);

SELECT MAX(salary)
FROM employee;

SELECT MAX(salary)
FROM employee
WHERE salary < 99000;