SELECT
    COUNT(*)
FROM
    bookings as b
    JOIN customers as c
    ON b.customer_id = c.customer_id
WHERE
    c.last_name = 'Hahn'