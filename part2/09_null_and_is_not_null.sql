-- null - missing/unknown value
-- SELECT
--     name,
--     description
-- FROM
--     products
-- WHERE
--     description IS NULL;
-- SELECT
--     name,
--     description
-- FROM
--     products
-- WHERE
--     description IS NOT NULL;

SELECT
    name,
    category,
    is_active,
    description
FROM
    products
WHERE
    description IS NULL
    AND description IS NULL;