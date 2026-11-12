-- Create a new database
CREATE DATABASE employee_practice;

-- Select the database
USE employee_practice;

-- Create Employee table
CREATE TABLE employee (
    emp_id INT,
    name VARCHAR(100),
    salary DECIMAL(10,2),
    department VARCHAR(50),
    city VARCHAR(50)
);

INSERT INTO employee
(emp_id, name, salary, department, city)
VALUES
(1001, 'Asha', 95000, 'IT', 'Hyderabad'),
(1002, 'Ravi', 88000, 'IT', 'Bengaluru'),
(1003, 'Neha', 92000, 'Finance', 'Mumbai'),
(1004, 'Kiran', 75000, 'HR', 'Pune'),
(1005, 'Priya', 99000, 'IT', 'Chennai'),
(1006, 'Arjun', 85000, 'Sales', 'Delhi'),
(1007, 'Meera', 78000, 'HR', 'Hyderabad'),
(1008, 'Rahul', 91000, 'Finance', 'Bengaluru'),
(1009, 'Sneha', 82000, 'Sales', 'Mumbai'),
(1010, 'Vikram', 87000, 'IT', 'Pune'),
(1011, 'Pooja', 73000, 'HR', 'Chennai'),
(1012, 'Anil', 96000, 'Finance', 'Hyderabad'),
(1013, 'Kavya', 89000, 'Sales', 'Bengaluru'),
(1014, 'Manoj', 68000, 'Operations', 'Mumbai'),
(1015, 'Divya', 94000, 'IT', 'Delhi'),
(1016, 'Suresh', 80000, 'Operations', 'Pune'),
(1017, 'Isha', 86000, 'Finance', 'Chennai'),
(1018, 'Nikhil', 77000, 'Sales', 'Hyderabad'),
(1007, 'Meera Sharma', 81000, 'HR', 'Hyderabad'),
(1012, 'Anil Kumar', 97000, 'Finance', 'Hyderabad');

-- Display all employee records
SELECT * FROM employee;

SELECT COUNT(*) AS total_records
FROM employee;

DESCRIBE employee;