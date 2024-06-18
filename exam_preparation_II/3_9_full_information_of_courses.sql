SELECT
    a.name,
    CASE
        WHEN TO_CHAR(co.start, 'HH24')::INTEGER BETWEEN 06 AND 20 THEN 'Day'
        ELSE 'Night'
    END day_time,
    co.bill,
    c.full_name,
    ca.make,
    ca.model,
    cat.name AS category_name
FROM
    courses AS co
JOIN
    addresses AS a
ON
    co.from_address_id = a.id
JOIN
    clients AS c
ON
    co.client_id = c.id
JOIN
    cars AS ca
ON
    co.car_id = ca.id
JOIN
    categories AS cat
ON
    ca.category_id = cat.id
ORDER BY
    co.id
;