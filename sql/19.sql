/*
 * For each payment, show the customer's total amount paid overall.
 *
 * HINT:
 * Use a window function with a PARTITION BY (but no ORDER BY).
 */
SELECT customer.customer_id, first_name, last_name, payment_id, amount, SUM(amount) OVER (PARTITION BY customer.customer_id) AS customer_total
FROM payment
JOIN customer on payment.customer_id = customer.customer_id
ORDER BY customer.customer_id, payment_id;
