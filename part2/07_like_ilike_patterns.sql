-- like - case sensitive pattern match
-- ilike - case insensitive pattern match
-- % - means any sequence of characters
-- _ - means any single character
-- SELECT
--     name,
--     price
-- FROM
--     products
-- WHERE
--     name LIKE 'Wireless%';
SELECT
    name,
    category,
    price
FROM
    products
WHERE
    name ILIKE '%chair%'
    OR description ILIKE '%chair%';