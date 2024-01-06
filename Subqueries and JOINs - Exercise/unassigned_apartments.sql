SELECT
    b.booking_id,
    b.apartment_id,
    c.companion_full_name
FROM
    bookings AS b
    JOIN customers as c
    ON b.customer_id = c.customer_id
WHERE
    b.apartment_id IS NULL;