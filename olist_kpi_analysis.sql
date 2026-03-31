#Total Revenue
SELECT SUM(revenue) AS total_revenue
FROM master_data;

#Monthly Revenue
SELECT
   DATE_FORMAT(order_date, '%Y-%m') AS month,
   SUM(revenue) AS total_revenue
FROM master_data
GROUP BY month
ORDER BY month;

#Total Orders
SELECT COUNT(DISTINCT order_id) AS total_orders
FROM master_data;

#Total Customers
SELECT COUNT(DISTINCT customer_unique_id) AS total_customers
FROM master_data;

#Average Order Value
SELECT
   SUM(revenue) / COUNT(DISTINCT order_id) AS avg_order_value
FROM master_data;

#MOM GROWTH (WINDOW FUNCTION in MySQL)
SELECT
   month,
   total_revenue,
   LAG(total_revenue) OVER (ORDER BY month) AS prev_month,
   (total_revenue - LAG(total_revenue) OVER (ORDER BY month))
       / LAG(total_revenue) OVER (ORDER BY month) AS growth_rate
FROM (
   SELECT
       DATE_FORMAT(order_date, '%Y-%m-01') AS month,
       SUM(revenue) AS total_revenue
   FROM master_data
   GROUP BY month
) t;

#TOP CUSTOMERS
SELECT
   customer_unique_id,
   SUM(revenue) AS total_spend
FROM master_data
GROUP BY customer_unique_id
ORDER BY total_spend DESC
LIMIT 10;

#REPEAT CUSTOMERS
SELECT
   customer_unique_id,
   COUNT(DISTINCT order_id) AS order_count
FROM master_data
GROUP BY customer_unique_id
HAVING COUNT(DISTINCT order_id) > 1;

#CUSTOMER RANKING (Window Function)
SELECT
   customer_unique_id,
   SUM(revenue) AS total_spend,
   RANK() OVER (ORDER BY SUM(revenue) DESC) AS customer_rank
FROM master_data
GROUP BY customer_unique_id;

#CATEGORY REVENUE
SELECT
   product_category_name,
   SUM(revenue) AS total_revenue
FROM master_data
GROUP BY product_category_name
ORDER BY total_revenue DESC;

#STATE REVENUE
SELECT
   customer_state,
   SUM(revenue) AS total_revenue
FROM master_data
GROUP BY customer_state
ORDER BY total_revenue DESC;




