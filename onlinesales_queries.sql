monthly revenue and order volume QUERIES

mysql> CREATE DATABASE online_sales;
Query OK, 1 row affected (0.01 sec)

mysql> USE online_sales;
Database changed
mysql> CREATE TABLE orders (
    ->     order_id INT AUTO_INCREMENT PRIMARY KEY,
    ->     order_date DATE NOT NULL,
    ->     amount DECIMAL(10,2) NOT NULL,
    ->     product_id INT NOT NULL
    -> );
Query OK, 0 rows affected (0.02 sec)

mysql> INSERT INTO orders (order_date, amount, product_id)
    -> VALUES
    -> ('2024-12-05', 250.50, 101),
    -> ('2024-12-06', 320.00, 102),
    -> ('2024-11-15', 150.75, 103),
    -> ('2024-10-20', 499.99, 101);
Query OK, 4 rows affected (0.00 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM orders;
+----------+------------+--------+------------+
| order_id | order_date | amount | product_id |
+----------+------------+--------+------------+
|        1 | 2024-12-05 | 250.50 |        101 |
|        2 | 2024-12-06 | 320.00 |        102 |
|        3 | 2024-11-15 | 150.75 |        103 |
|        4 | 2024-10-20 | 499.99 |        101 |
+----------+------------+--------+------------+
4 rows in set (0.00 sec)

mysql> SELECT
    ->     YEAR(order_date) AS year,
    ->     MONTH(order_date) AS month,
    ->     SUM(amount) AS total_revenue,
    ->     COUNT(DISTINCT order_id) AS total_orders
    -> FROM orders WHERE order_date BETWEEN '2024-01-01' AND '2024-12-31' GROUP BY YEAR(order_date), MONTH(order_date)
    -> ORDER BY year DESC, month DESC;
+------+-------+---------------+--------------+
| year | month | total_revenue | total_orders |
+------+-------+---------------+--------------+
| 2024 |    12 |        570.50 |            2 |
| 2024 |    11 |        150.75 |            1 |
| 2024 |    10 |        499.99 |            1 |
+------+-------+---------------+--------------+
3 rows in set (0.00 sec)

mysql>















