-- limit -> how many rows you want to return
-- offset -> how many rows we want to skip
-- SELECT
--     name,
--     price
-- FROM
--     products
-- ORDER BY
--     name ASC
-- LIMIT
--     5;

-- page 1 -> offset 0
SELECT
    name,
    price
FROM
    products
ORDER BY
    name ASC
LIMIT
    5 OFFSET 0;

-- page 2 -> offset 5
SELECT
    name,
    price
FROM
    products
ORDER BY
    name ASC
LIMIT
    5 OFFSET 5;