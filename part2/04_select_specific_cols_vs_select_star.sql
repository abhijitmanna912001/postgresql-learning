-- SELECT FROM products;
-- SELECT
--     name,
--     category,
--     price,
--     stock
-- FROM
--     products;

-- AS creates an alias for the output of that column name
-- makes the col name easier to read

SELECT
    name AS product_name,
    price AS selling_price,
    stock AS available_quantity
FROM
    products;