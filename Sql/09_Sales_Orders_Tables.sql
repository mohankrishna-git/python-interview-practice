USE employee_practice;

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    customer_name VARCHAR(100),
    order_date DATE,
    city VARCHAR(50),
    order_status VARCHAR(30)
);

INSERT INTO orders VALUES
(1001, 501, 'Asha',   '2025-01-05', 'Hyderabad', 'Delivered'),
(1002, 502, 'Ravi',   '2025-01-06', 'Bengaluru', 'Shipped'),
(1003, 503, 'Neha',   '2025-01-07', 'Mumbai',    'Delivered'),
(1004, 504, 'Kiran',  '2025-01-08', 'Pune',      'Pending'),
(1005, 505, 'Priya',  '2025-01-09', 'Chennai',   'Delivered'),
(1006, 506, 'Arjun',  '2025-01-10', 'Delhi',     'Cancelled'),
(1007, 507, 'Meera',  '2025-01-11', 'Hyderabad', 'Shipped'),
(1008, 508, 'Rahul',  '2025-01-12', 'Bengaluru', 'Delivered'),
(1009, 509, 'Sneha',  '2025-01-13', 'Mumbai',    'Pending'),
(1010, 510, 'Vikram', '2025-01-14', 'Pune',      'Delivered'),
(1011, 501, 'Asha',   '2025-01-15', 'Hyderabad', 'Delivered'),
(1012, 502, 'Ravi',   '2025-01-16', 'Bengaluru', 'Shipped'),
(1013, 503, 'Neha',   '2025-01-17', 'Mumbai',    'Delivered'),
(1014, 504, 'Kiran',  '2025-01-18', 'Pune',      NULL),
(1015, 505, 'Priya',  '2025-01-19', NULL,        'Delivered'),
(1016, 506, 'Arjun',  '2025-01-20', 'Delhi',     'Shipped'),
(1017, 507, 'Meera',  '2025-01-21', 'Hyderabad', 'Delivered'),
(1018, 508, 'Rahul',  '2025-01-22', 'Bengaluru', 'Pending'),
(1019, 509, 'Sneha',  '2025-01-23', 'Mumbai',    'Delivered'),
(1020, 510, 'Vikram', '2025-01-24', 'Pune',      'Delivered');

CREATE TABLE sales (
    sale_id INT PRIMARY KEY,
    order_id INT,
    product_name VARCHAR(100),
    quantity INT,
    unit_price DECIMAL(10,2),
    discount DECIMAL(10,2),
    
    CONSTRAINT fk_sales_order
    FOREIGN KEY (order_id)
    REFERENCES orders(order_id)
);

INSERT INTO sales VALUES
(1, 1001, 'Laptop',     1, 55000, 2000),
(2, 1002, 'Mobile',     2, 20000, 1000),
(3, 1003, 'Headphones', 1,  2500,  100),
(4, 1004, 'Keyboard',   2,  1500, NULL),
(5, 1005, 'Monitor',    1, 12000,  500),
(6, 1006, 'Laptop',     1, 60000, 3000),
(7, 1007, 'Mouse',      2,   800, NULL),
(8, 1008, 'Mobile',     1, 25000, 1000),
(9, 1009, 'Printer',    1,  9000,  300),
(10,1010, 'Monitor',    2, 11000, 1000),
(11,1011, 'Laptop',     1, 55000,  NULL),
(12,1012, 'Tablet',     1, 18000,  500),
(13,1013, 'Keyboard',   3,  1500,  100),
(14,1014, 'Mobile',     1, 22000, 1000),
(15,1015, 'Mouse',      1,   800, NULL),
(16,1016, 'Printer',    2,  8500,  500),
(17,1017, 'Headphones', 2,  2500,  200),
(18,1018, 'Laptop',     1, 58000, 2000),
(19,1019, 'Tablet',     2, 17000, 1000),
(20,1020, 'Monitor',    1, 12500, NULL);

SELECT * FROM orders;

SELECT COUNT(*) AS total_orders
FROM orders;

SELECT * FROM sales;

SELECT COUNT(*) AS total_sales
FROM sales;

SELECT *
FROM orders
WHERE city IS NULL
   OR order_status IS NULL;
   
SELECT *
FROM sales
WHERE discount IS NULL;