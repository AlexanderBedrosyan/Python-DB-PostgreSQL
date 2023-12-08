SELECT
    title,
    CAST(ROUND(cost, 3) AS DECIMAL(10, 3)) AS "modified_price"
FROM
    books
ORDER BY
    id;