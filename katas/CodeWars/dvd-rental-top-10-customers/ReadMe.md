# DVD Rental — Top 10 Customers by Total Spend

**Goal:** Return the **top 10 customers** by **total amount spent** (highest → lowest) and include the **total number of payments**.

## Expected columns
- `customer_id` (int4)
- `email` (varchar)
- `payments_count` (int)
- `total_amount` (float)

## Note
- `SUM(amount)` is numeric → cast to `float` (`double precision`) per spec.

## Query
See [`solution.sql`](./solution.sql).
