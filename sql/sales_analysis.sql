* 1. What is the total revenue generated from completed orders?
SELECT
  ROUND(SUM(sale_price), 2) AS total_revenue
FROM `bigquery-public-data.thelook_ecommerce.order_items`
WHERE status = 'Complete';

* 2. Which product categories generate the highest revenue?
SELECT
  p.category,
  ROUND(SUM(oi.sale_price), 2) AS revenue
FROM `bigquery-public-data.thelook_ecommerce.order_items` oi
JOIN `bigquery-public-data.thelook_ecommerce.products` p
  ON oi.product_id = p.id
WHERE oi.status = 'Complete'
GROUP BY p.category
ORDER BY revenue DESC;

* 3. How many unique customers have placed orders?
SELECT
  COUNT(DISTINCT user_id) AS total_customers
FROM `bigquery-public-data.thelook_ecommerce.orders`;

* 4. What is the monthly revenue trend?
SELECT
  FORMAT_DATE('%Y-%m', DATE(created_at)) AS month,
  ROUND(SUM(sale_price), 2) AS revenue
FROM `bigquery-public-data.thelook_ecommerce.order_items`
WHERE status = 'Complete'
GROUP BY month
ORDER BY month;

* 5. What is the average order value (AOV)?
SELECT
  ROUND(SUM(sale_price) / COUNT(DISTINCT order_id), 2) AS avg_order_value
FROM `bigquery-public-data.thelook_ecommerce.order_items`
WHERE status = 'Complete';

* 6. Which products generate the highest revenue?
SELECT
  p.name AS product_name,
  ROUND(SUM(oi.sale_price), 2) AS total_revenue
FROM `bigquery-public-data.thelook_ecommerce.order_items` oi
JOIN `bigquery-public-data.thelook_ecommerce.products` p
  ON oi.product_id = p.id
WHERE oi.status = 'Complete'
GROUP BY product_name
ORDER BY total_revenue DESC
LIMIT 10;

* 7. Who are the top 10 customers by total revenue?
SELECT
  user_id,
  ROUND(SUM(sale_price), 2) AS total_spent
FROM `bigquery-public-data.thelook_ecommerce.order_items`
WHERE status = 'Complete'
GROUP BY user_id
ORDER BY total_spent DESC
LIMIT 10;

* 8. Which product categories have the highest average selling price?
SELECT
  p.category,
  ROUND(AVG(oi.sale_price), 2) AS avg_selling_price
FROM `bigquery-public-data.thelook_ecommerce.order_items` oi
JOIN `bigquery-public-data.thelook_ecommerce.products` p
  ON oi.product_id = p.id
WHERE oi.status = 'Complete'
GROUP BY p.category
ORDER BY avg_selling_price DESC;

* 9. How are orders distributed by order status?
SELECT
  status,
  COUNT(*) AS order_count
FROM `bigquery-public-data.thelook_ecommerce.orders`
GROUP BY status;

* 10. What is the overall order cancellation rate?
SELECT
  ROUND(
    COUNTIF(status = 'Cancelled') * 100.0 / COUNT(*),
    2
  ) AS cancellation_rate
FROM `bigquery-public-data.thelook_ecommerce.orders`;

* 11. Which countries contribute the most revenue?
SELECT
  u.country,
  ROUND(SUM(oi.sale_price), 2) AS revenue
FROM `bigquery-public-data.thelook_ecommerce.order_items` oi
JOIN `bigquery-public-data.thelook_ecommerce.orders` o
  ON oi.order_id = o.order_id
JOIN `bigquery-public-data.thelook_ecommerce.users` u
  ON o.user_id = u.id
WHERE oi.status = 'Complete'
GROUP BY u.country
ORDER BY revenue DESC;

* 12. Rank products by revenue within each category.
SELECT
  category,
  product_name,
  revenue,
  RANK() OVER (PARTITION BY category ORDER BY revenue DESC) AS rank_in_category
FROM (
  SELECT
    p.category,
    p.name AS product_name,
    SUM(oi.sale_price) AS revenue
  FROM `bigquery-public-data.thelook_ecommerce.order_items` oi
  JOIN `bigquery-public-data.thelook_ecommerce.products` p
    ON oi.product_id = p.id
  WHERE oi.status = 'Complete'
  GROUP BY p.category, product_name
);


