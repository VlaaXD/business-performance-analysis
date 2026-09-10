-- 1. Top 5 products by revenue

SELECT
    p.product_id,
    p.product_name,
    SUM(o.order_value) AS total_order_value
FROM products p
INNER JOIN orders o
    ON p.product_id = o.product_id
GROUP BY
    p.product_id,
    p.product_name
ORDER BY
    total_order_value DESC
LIMIT 5;