# DVD Rental — Top 10 Customers by Total Spend

**Goal:** Return the **top 10 customers** by **total amount spent** (highest → lowest) and include the **total number of payments**.

## Expected columns
- `customer_id` (int4)
- `email` (varchar)
- `payments_count` (int)
- `total_amount` (float)

## Notes & gotchas
- `COUNT()` returns `bigint` in PostgreSQL → cast to `int` to match the kata spec.
- `SUM(amount)` is numeric → cast to `float` (`double precision`) per spec.
- You must **GROUP BY both `customer_id` and `email`** since both are selected and not aggregated.

## Query
See [`solution.sql`](./solution.sql).

## How to run (PostgreSQL)
```bash
psql -d dvd_rental -f solution.sql
