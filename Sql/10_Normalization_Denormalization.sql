USE employee_practice;

SELECT
    o.order_id,
    o.customer_id,
    o.customer_name,
    o.order_date,
    o.city,
    o.order_status,
    s.product_name,
    s.quantity,
    s.unit_price,
    COALESCE(s.discount, 0) AS discount,
    (s.quantity * s.unit_price) - COALESCE(s.discount, 0)
        AS total_amount
FROM orders o
INNER JOIN sales s
    ON o.order_id = s.order_id;