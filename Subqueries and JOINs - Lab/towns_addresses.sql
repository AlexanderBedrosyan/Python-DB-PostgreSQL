SELECT
    t.town_id,
    t.name as town_name,
    a.address_text
FROM
    addresses AS a
    JOIN towns as t
        ON a.town_id = t.town_id
WHERE
    t.name IN ('San Francisco', 'Sofia', 'Carnation')
ORDER BY
    t.town_id, a.address_id