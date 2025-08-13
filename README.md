# SQL
# Online Sales Analysis

## Overview
The **Online Sales** dataset contains transaction records from an e-commerce platform.  
It can be used to analyze revenue trends, order volumes, and customer purchasing patterns over time.

## Dataset
**Table:** `orders`  
**Columns:**
- `order_id` (INT) – Unique identifier for each order  
- `order_date` (DATE) – Date the order was placed  
- `amount` (DECIMAL) – Total value of the order  
- `product_id` (INT) – Identifier for the product purchased  

## Objective
The main goal is to:
- Calculate monthly revenue
- Track order volumes
- Identify sales patterns and peak months

## Example Query
```sql
SELECT
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS total_orders
FROM orders

## Author: Snehah13
GROUP BY YEAR(order_date), MONTH(order_date)
ORDER BY year DESC, month DESC;

## Author
sneha H
GitHub: snehah13
