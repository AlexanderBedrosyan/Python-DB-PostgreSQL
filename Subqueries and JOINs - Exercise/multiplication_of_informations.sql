SELECT
    b.booking_id,
    c.first_name AS customer_name
FROM
    bookings AS b
    CROSS JOIN customers as c
ORDER BY
    customer_name