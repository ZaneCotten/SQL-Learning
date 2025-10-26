-- Kata: DVD Rental — Top 10 Customers by Total Spend
-- Platform: Codewars  |  DB: PostgreSQL (DVD Rental schema)
-- Output: customer_id (int4), email (varchar), payments_count (int), total_amount (float)

SELECT
  c.customer_id,
  c.email,
  COUNT(p.payment_id)::int AS payments_count,
  SUM(p.amount)::float AS total_amount
FROM payment as p
JOIN customer AS c
  ON c.customer_id = p.customer_id    -- inner join is fine; we only count existing payments
GROUP BY
  c.customer_id, c.email              -- include all selected non-aggregates
ORDER BY
  total_amount DESC                   -- highest spend first
LIMIT 10;
