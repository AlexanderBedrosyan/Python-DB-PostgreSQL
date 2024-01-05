SELECT
    a.name AS name,
    a.country AS country,
    b.booked_at::DATE AS booked_at
FROM
    apartments AS a
    LEFT JOIN bookings AS b
    ON a.booking_id = b.booking_id
LIMIT 10;