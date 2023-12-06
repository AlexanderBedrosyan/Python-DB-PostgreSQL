SELECT
    CONCAT_WS(' ', number, street) AS "address",
    city_id
FROM
    addresses
WHERE
    city_id % 2 = 0 and city_id > 0
ORDER BY
    city_id;