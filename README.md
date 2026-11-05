# Coffee Shop Sales Analysis (SQL)

A beginner SQL project that builds a small relational database for a fictional coffee shop and answers business questions about sales and customer behavior.

## Tools
- SQL (SQLite)
- DB Browser for SQLite
- Git / GitHub

## Database Design
Three tables connected by foreign keys:

| Table | Description |
|-------|-------------|
| `customers` | Who the customers are (name, city, signup date) |
| `products`  | What the shop sells (name, category, price) |
| `orders`    | Each purchase, linking a customer to a product |

## How to Run
1. Open DB Browser for SQLite and create a new database.
2. Run `schema.sql` to create the tables.
3. Run `data.sql` to load the sample data.
4. Run any query from `queries.sql`.

## Business Questions Answered
1. Which orders were placed in a given month?
2. What are the most expensive products?
3. How much revenue does each product generate?
4. What does each order look like with customer and product names attached?
5. Which customers order most often?
6. Which product category earns the most?
7. Which customers are "Frequent" vs. "Occasional"?
8. Which customers spend more than average?

## SQL Skills Demonstrated
`SELECT`, `WHERE`, `ORDER BY`, `LIMIT`, `JOIN` (inner and left), `GROUP BY`, `HAVING`, aggregate functions (`SUM`, `COUNT`, `AVG`), `CASE`, subqueries

## Sample Result
Revenue by product (Query 3, top rows):

| product_name | units_sold | total_revenue |
|--------------|-----------:|--------------:|
| Espresso     | 20 | 50.00 |
| Croissant    | 10 | 35.00 |
| Latte        | 7  | 29.75 |

## Key Takeaways
- Drinks bring in the most revenue of the three categories.
- A small group of frequent customers accounts for a large share of orders.
