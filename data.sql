-- data.sql
-- Fills the tables with sample data. Run schema.sql first.

INSERT INTO customers (customer_id, first_name, last_name, city, signup_date) VALUES
    (1, 'Maria', 'Lopez', 'Bayamon', '2025-01-10'),
    (2, 'Carlos', 'Rivera', 'San Juan', '2025-01-22'),
    (3, 'Ana', 'Torres', 'Bayamon', '2025-02-03'),
    (4, 'Luis', 'Diaz', 'Carolina', '2025-02-14'),
    (5, 'Sofia', 'Cruz', 'San Juan', '2025-03-01'),
    (6, 'Jose', 'Morales', 'Guaynabo', '2025-03-18'),
    (7, 'Isabel', 'Ortiz', 'Bayamon', '2025-04-05'),
    (8, 'Miguel', 'Santos', 'Carolina', '2025-04-20'),
    (9, 'Camila', 'Vega', 'Guaynabo', '2025-05-09'),
    (10, 'Diego', 'Reyes', 'San Juan', '2025-05-25');

INSERT INTO products (product_id, product_name, category, price) VALUES
    (1, 'Espresso', 'Drink', 2.50),
    (2, 'Latte', 'Drink', 4.25),
    (3, 'Cappuccino', 'Drink', 4.00),
    (4, 'Iced Coffee', 'Drink', 3.75),
    (5, 'Croissant', 'Food', 3.50),
    (6, 'Blueberry Muffin', 'Food', 3.25),
    (7, 'Breakfast Sandwich', 'Food', 6.50),
    (8, 'Coffee Mug', 'Merch', 12.00);

INSERT INTO orders (order_id, customer_id, product_id, quantity, order_date) VALUES
    (1, 2, 1, 3, '2025-06-03'),
    (2, 2, 1, 2, '2025-06-08'),
    (3, 1, 3, 2, '2025-06-08'),
    (4, 3, 6, 1, '2025-06-09'),
    (5, 7, 1, 2, '2025-06-17'),
    (6, 1, 3, 2, '2025-06-19'),
    (7, 2, 6, 1, '2025-06-19'),
    (8, 1, 1, 3, '2025-07-01'),
    (9, 2, 2, 1, '2025-07-03'),
    (10, 3, 2, 2, '2025-07-05'),
    (11, 1, 1, 1, '2025-07-25'),
    (12, 3, 4, 1, '2025-08-01'),
    (13, 8, 2, 3, '2025-08-20'),
    (14, 3, 5, 1, '2025-08-21'),
    (15, 4, 5, 2, '2025-08-23'),
    (16, 8, 6, 2, '2025-08-23'),
    (17, 6, 1, 2, '2025-09-02'),
    (18, 5, 1, 2, '2025-09-06'),
    (19, 4, 4, 1, '2025-09-10'),
    (20, 3, 5, 1, '2025-09-12'),
    (21, 1, 1, 1, '2025-09-22'),
    (22, 2, 5, 2, '2025-09-28'),
    (23, 3, 1, 2, '2025-10-09'),
    (24, 1, 4, 2, '2025-10-11'),
    (25, 4, 5, 2, '2025-10-15'),
    (26, 5, 4, 1, '2025-10-19'),
    (27, 10, 5, 2, '2025-10-21'),
    (28, 4, 2, 1, '2025-10-23'),
    (29, 10, 1, 2, '2025-10-26'),
    (30, 3, 8, 1, '2025-10-28');
