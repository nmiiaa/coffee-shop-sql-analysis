-- queries.sql
-- Business questions answered with SQL. Run schema.sql and data.sql first.

-- Q1: Which orders were placed in September 2025?
SELECT order_id, customer_id, product_id, quantity, order_date
FROM orders
WHERE order_date BETWEEN '2025-09-01' AND '2025-09-30'
ORDER BY order_date;

-- Q2: What are the 3 most expensive products?
SELECT product_name, category, price
FROM products
ORDER BY price DESC
LIMIT 3;

-- Q3: How much revenue did each product generate? (best seller first)
SELECT p.product_name,
       SUM(o.quantity) AS units_sold,
       ROUND(SUM(o.quantity * p.price), 2) AS total_revenue
FROM orders o
JOIN products p ON o.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_revenue DESC;

-- Q4: Show every order with the customer's full name and product name.
SELECT o.order_id,
       c.first_name || ' ' || c.last_name AS customer,
       p.product_name,
       o.quantity,
       o.order_date
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
JOIN products p  ON o.product_id  = p.product_id
ORDER BY o.order_date;

-- Q5: Which customers placed more than 3 orders?
SELECT c.first_name || ' ' || c.last_name AS customer,
       COUNT(o.order_id) AS number_of_orders
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id
HAVING COUNT(o.order_id) > 3
ORDER BY number_of_orders DESC;

-- Q6: Which category (Drink, Food, Merch) makes the most money?
SELECT p.category,
       ROUND(SUM(o.quantity * p.price), 2) AS category_revenue
FROM orders o
JOIN products p ON o.product_id = p.product_id
GROUP BY p.category
ORDER BY category_revenue DESC;

-- Q7: Label each customer as 'Frequent' (4+ orders) or 'Occasional'.
SELECT c.first_name || ' ' || c.last_name AS customer,
       COUNT(o.order_id) AS number_of_orders,
       CASE
           WHEN COUNT(o.order_id) >= 4 THEN 'Frequent'
           ELSE 'Occasional'
       END AS customer_type
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id
ORDER BY number_of_orders DESC;

-- Q8: Which customers spent more than the average customer? (subquery)
SELECT c.first_name || ' ' || c.last_name AS customer,
       ROUND(SUM(o.quantity * p.price), 2) AS total_spent
FROM customers c
JOIN orders o   ON c.customer_id = o.customer_id
JOIN products p ON o.product_id  = p.product_id
GROUP BY c.customer_id
HAVING total_spent > (
    SELECT AVG(customer_total) FROM (
        SELECT SUM(o2.quantity * p2.price) AS customer_total
        FROM orders o2
        JOIN products p2 ON o2.product_id = p2.product_id
        GROUP BY o2.customer_id
    )
)
ORDER BY total_spent DESC;
