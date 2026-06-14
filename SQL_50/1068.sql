-- Sales table -> sale_id, product_id, year, quantity, price
-- Product table -> product_id, product_name
-- Output -> product_name, year, price column
-- I want product_name from Product and year, price from Sales.
-- SELECT Product.product_name, Sales.year, Sales.price
-- How do i know which Product row belongs to which Sales row
-- ON Sales.product_id = Product.product_id
-- Final Query
SELECT
    p.product_name,
    s.year,
    s.price
FROM
    Sales s
    JOIN Product p ON s.product_id = p.product_id;