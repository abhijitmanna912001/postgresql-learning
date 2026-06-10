-- IN -> value must match one item from the list
-- NOT IN -> value must not match any item from the list
-- BETWEEN -> value must be inside a range 
-- SELECT
--     name,
--     category,
--     price
-- FROM
--     products
-- WHERE
--     category NOT IN ('electronics', 'furniture');
SELECT
    name,
    price
FROM
    products
WHERE
    price BETWEEN 100
    AND 2000;