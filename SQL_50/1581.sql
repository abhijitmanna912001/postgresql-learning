-- Visits -> visit_id, customer_id
-- Transactions -> transaction_id, visit_id, amount
-- Output -> customer_id, count_no_trans
-- How do I identify visits without transactions
-- visit_id NOT IN Transactions
-- or LEFT JOIN ... WHERE transaction_id IS NULL
-- After finding those visits, what should I output?
-- Not visit_id
-- customer_id
-- count_no_trans
-- GROUP BY customer_id
-- COUNT(*)
-- Find customers who visited without making transactions
-- Visits MINUS Transactions
-- Group by customer_id
-- Count remaining_visits
-- Solution 1
SELECT
    customer_id,
    COUNT(*) AS count_no_trans
FROM
    Visits
WHERE
    visit_id NOT IN (
        SELECT
            visit_id
        FROM
            Transactions
    )
GROUP BY
    customer_id;

-- Solution 2 - best
SELECT
    v.customer_id,
    COUNT(*) AS count_no_trans
FROM
    Visits v
    LEFT JOIN Transactions t ON v.visit_id = t.visit_id
WHERE
    t.transaction_id IS NULL
GROUP BY
    v.customer_id;