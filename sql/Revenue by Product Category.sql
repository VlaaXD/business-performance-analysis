-- 2. Revenue by Product Category

SELECT
	p.product_category,
	SUM(o.order_value) AS total_revenue
FROM products p
INNER JOIN orders o
	ON p.product_id = o.product_id
GROUP BY
	p.product_category
ORDER BY total_revenue DESC
