SELECT
    b.apartment_id,
    b.booked_for,
    c.first_name,
    c.country
FROM
    bookings AS b
    INNER JOIN customers as c
    ON b.customer_id = c.customer_id
WHERE
    c.job_type = 'Lead'