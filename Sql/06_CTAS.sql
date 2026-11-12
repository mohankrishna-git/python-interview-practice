CREATE DATABASE employee_practice_2;

USE employee_practice_2;

CREATE TABLE employee AS
SELECT *
FROM employee_practice.employee;

SELECT *
FROM employee;

SELECT COUNT(*) AS total_records
FROM employee;

DESCRIBE employee;