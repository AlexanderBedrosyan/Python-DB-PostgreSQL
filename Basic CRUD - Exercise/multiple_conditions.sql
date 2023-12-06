SELECT
    number,
    street
FROM
    addresses
WHERE
    (id >= 50 AND id <= 100) OR number < 1000;