-- Select database
USE employee_practice;

TRUNCATE TABLE bonus;

-- Create Bonus table
CREATE TABLE bonus (
    emp_id INT,
    name VARCHAR(100),
    bonus DECIMAL(10,2),
    department VARCHAR(50)
);

INSERT INTO bonus
(emp_id, name, bonus, department)
VALUES
(1001, 'Asha', 10000, 'IT'),
(1002, 'Ravi', 8000, 'IT'),
(1003, 'Neha', 9000, 'Finance'),
(1004, 'Kiran', 5000, 'HR'),
(1005, 'Priya', 12000, 'IT'),
(1006, 'Arjun', 7000, 'Sales'),
(1008, 'Rahul', 8500, 'Finance'),
(1010, 'Vikram', 6000, 'IT'),
(1012, 'Anil', 9500, 'Finance'),
(1015, 'Divya', 11000, 'IT');

SELECT * FROM bonus;

SELECT COUNT(*) AS total_bonus_records
FROM bonus;
