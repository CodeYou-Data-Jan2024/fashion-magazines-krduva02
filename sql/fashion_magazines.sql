-- Add your sql here

SELECT customer_name,
price_per_month * subscription_length AS total_amount
FROM orders
JOIN customers
    ON orders.customer_id = customers.customer_id
JOIN subscriptions
    ON subscriptions.subscription_id = orders.subscription_id
WHERE order_status = 'unpaid'
AND description = 'Fashion Magazine'
GROUP BY customer_name;